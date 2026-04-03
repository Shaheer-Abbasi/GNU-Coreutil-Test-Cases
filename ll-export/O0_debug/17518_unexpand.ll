; ModuleID = 'src/unexpand.bc'
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
%struct.mbbuf_t = type { i8*, %struct._IO_FILE*, i64, i64, i64 }
%struct.mcel_t = type { i32, i8, i8 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"  -a, --all\0A         convert all blanks, instead of just initial blanks\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"      --first-only\0A         convert only leading sequences of blanks (overrides -a)\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart instead of 8 (enables -a)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !31
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
@.str.53 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@unexpand.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !40
@.str.58 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@convert_entire_line = dso_local global i8 0, align 1, !dbg !60
@exit_status = dso_local global i32 0, align 4, !dbg !90
@first_free_tab = internal global i64 0, align 8, !dbg !158
@tab_list = internal global i64* null, align 8, !dbg !160
@n_tabs_allocated = internal global i64 0, align 8, !dbg !168
@.str.60 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.1.61 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.2.62 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.63 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.64 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@extend_size = internal global i64 0, align 8, !dbg !170
@increment_size = internal global i64 0, align 8, !dbg !172
@max_column_width = dso_local global i64 0, align 8, !dbg !153
@tab_size = internal global i64 0, align 8, !dbg !174
@.str.5.74 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@have_read_stdin = internal global i8 0, align 1, !dbg !176
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.77, i32 0, i32 0), i8* null], align 8, !dbg !178
@file_list = internal global i8** null, align 8, !dbg !183
@next_file.prev_file = internal global i8* null, align 8, !dbg !92
@.str.6.77 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.8.81 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.86 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1
@.str.11.9 = private unnamed_addr constant [23 x i8] c"tabs are too far apart\00", align 1
@.str.12.66 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.13.65 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.14.69 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.15.70 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.16.71 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@oputs_.help_no_sgr.89 = internal global i32 -1, align 4, !dbg !186
@.str.17.90 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18.91 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19.92 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20.93 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21.94 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22.106 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23.95 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24.105 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25.96 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26.97 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27.104 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28.98 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29.99 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30.100 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31.101 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32.102 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33.103 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34.107 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35.108 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36.109 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37.110 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38.111 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39.112 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40.113 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41.114 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42.115 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43.116 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), align 8, !dbg !189
@file_name = internal global i8* null, align 8, !dbg !194
@ignore_EPIPE = internal global i8 0, align 1, !dbg !199
@.str.128 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.129 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.130 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !201
@stderr = external global %struct._IO_FILE*, align 8
@.str.132 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !230
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !207
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !226
@.str.1.138 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.139 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.140 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !228
@.str.4.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.134 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.135 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !233
@.str.167 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.168 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !239
@.str.171 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.172 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.173 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.174 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.175 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.176 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.177 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.178 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.179 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.180 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.172, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.173, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.174, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.176, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.177, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.178, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.180, i32 0, i32 0), i8* null], align 8, !dbg !248
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !260
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !278
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !293
@nslots = internal global i32 1, align 4, !dbg !300
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !280
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !302
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !266
@.str.10.181 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.182 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.183 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.184 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !285
@.str.193 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.194 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.195 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.196 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.197 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.198 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.199 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.200 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.201 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.202 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.203 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.204 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.205 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.206 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.207 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.208 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.209 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.214 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.215 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.216 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.217 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.218 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.219 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.220 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !308
@exit_failure = dso_local global i32 1, align 4, !dbg !316
@.str.237 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.235 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.236 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.254 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !322
@.str.265 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.266 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !444 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = load i32, i32* %2, align 4, !dbg !449
  %4 = icmp ne i32 %3, 0, !dbg !451
  br i1 %4, label %5, label %12, !dbg !452

5:                                                ; preds = %1
  br label %6, !dbg !453

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !454
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !454
  %9 = load i8*, i8** @program_name, align 8, !dbg !454
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !454
  br label %11, !dbg !454

11:                                               ; preds = %6
  br label %24, !dbg !454

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !456
  %14 = load i8*, i8** @program_name, align 8, !dbg !458
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !459
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !460
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !460
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !460
  call void @emit_stdin_note(), !dbg !461
  call void @emit_mandatory_arg_note(), !dbg !462
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !463
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !463
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !464
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !464
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !465
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !465
  call void @emit_tab_list_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !466
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !467
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !467
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !468
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !468
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !469
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4, !dbg !470
  call void @exit(i32 noundef %25) #19, !dbg !471
  unreachable, !dbg !471
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #4 !dbg !472 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !473
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !473
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !475 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !476
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !476
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !476
  ret void, !dbg !477
}

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !478, metadata !DIExpression()), !dbg !479
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !480, metadata !DIExpression()), !dbg !481
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !482
  %15 = icmp eq i32 %14, -1, !dbg !484
  br i1 %15, label %16, label %30, !dbg !485

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !486, metadata !DIExpression()), !dbg !488
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !489
  store i8* %17, i8** %5, align 8, !dbg !488
  %18 = load i8*, i8** %5, align 8, !dbg !490
  %19 = icmp ne i8* %18, null, !dbg !490
  br i1 %19, label %20, label %27, !dbg !491

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !492
  %22 = load i8, i8* %21, align 1, !dbg !493
  %23 = icmp ne i8 %22, 0, !dbg !493
  br i1 %23, label %24, label %27, !dbg !494

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !495
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)), !dbg !496
  br label %27, !dbg !494

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !494
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !497
  br label %30, !dbg !498

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !499
  %32 = icmp ne i32 %31, 0, !dbg !499
  br i1 %32, label %33, label %37, !dbg !501

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !502
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !502
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !502
  br label %274, !dbg !504

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !505, metadata !DIExpression()), !dbg !506
  store i8 1, i8* %6, align 1, !dbg !506
  call void @llvm.dbg.declare(metadata i8** %7, metadata !507, metadata !DIExpression()), !dbg !508
  %38 = load i8*, i8** %4, align 8, !dbg !509
  %39 = load i8*, i8** %4, align 8, !dbg !510
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !511
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !512
  store i8* %41, i8** %7, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata i8** %8, metadata !513, metadata !DIExpression()), !dbg !514
  %42 = load i8*, i8** %4, align 8, !dbg !515
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !516
  store i8* %43, i8** %8, align 8, !dbg !514
  %44 = load i8*, i8** %8, align 8, !dbg !517
  %45 = icmp ne i8* %44, null, !dbg !517
  br i1 %45, label %48, label %46, !dbg !519

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !520
  store i8* %47, i8** %8, align 8, !dbg !522
  store i8 0, i8* %6, align 1, !dbg !523
  br label %89, !dbg !524

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !525
  %50 = load i8*, i8** %7, align 8, !dbg !527
  %51 = icmp ne i8* %49, %50, !dbg !528
  br i1 %51, label %52, label %88, !dbg !529

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !530, metadata !DIExpression()), !dbg !532
  %53 = load i8*, i8** %7, align 8, !dbg !533
  store i8* %53, i8** %9, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %10, metadata !534, metadata !DIExpression()), !dbg !535
  store i64 0, i64* %10, align 8, !dbg !535
  br label %54, !dbg !536

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !537
  %56 = load i8*, i8** %8, align 8, !dbg !538
  %57 = icmp ult i8* %55, %56, !dbg !539
  br i1 %57, label %58, label %61, !dbg !540

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !541
  %60 = icmp ult i64 %59, 2, !dbg !542
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !543
  br i1 %62, label %63, label %82, !dbg !536

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !544
  %65 = load i16*, i16** %64, align 8, !dbg !544
  %66 = load i8*, i8** %9, align 8, !dbg !544
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !544
  store i8* %67, i8** %9, align 8, !dbg !544
  %68 = load i8, i8* %66, align 1, !dbg !544
  %69 = zext i8 %68 to i32, !dbg !544
  %70 = sext i32 %69 to i64, !dbg !544
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !544
  %72 = load i16, i16* %71, align 2, !dbg !544
  %73 = zext i16 %72 to i32, !dbg !544
  %74 = and i32 %73, 8192, !dbg !544
  %75 = icmp ne i32 %74, 0, !dbg !545
  %76 = xor i1 %75, true, !dbg !545
  %77 = xor i1 %76, true, !dbg !546
  %78 = zext i1 %77 to i32, !dbg !546
  %79 = sext i32 %78 to i64, !dbg !546
  %80 = load i64, i64* %10, align 8, !dbg !547
  %81 = add i64 %80, %79, !dbg !547
  store i64 %81, i64* %10, align 8, !dbg !547
  br label %54, !dbg !536, !llvm.loop !548

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !550
  %84 = icmp eq i64 %83, 2, !dbg !552
  br i1 %84, label %85, label %87, !dbg !553

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !554
  store i8* %86, i8** %8, align 8, !dbg !556
  store i8 0, i8* %6, align 1, !dbg !557
  br label %87, !dbg !558

87:                                               ; preds = %85, %82
  br label %88, !dbg !559

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !560, metadata !DIExpression()), !dbg !561
  %90 = load i8*, i8** %8, align 8, !dbg !562
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #20, !dbg !563
  store i64 %91, i64* %11, align 8, !dbg !561
  call void @llvm.dbg.declare(metadata i8** %12, metadata !564, metadata !DIExpression()), !dbg !565
  %92 = load i8*, i8** %8, align 8, !dbg !566
  %93 = load i64, i64* %11, align 8, !dbg !567
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !568
  store i8* %94, i8** %12, align 8, !dbg !565
  br label %95, !dbg !569

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !570
  %97 = load i8, i8* %96, align 1, !dbg !571
  %98 = zext i8 %97 to i32, !dbg !571
  %99 = icmp ne i32 %98, 0, !dbg !571
  br i1 %99, label %100, label %105, !dbg !572

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !573
  %102 = load i8, i8* %101, align 1, !dbg !574
  %103 = zext i8 %102 to i32, !dbg !574
  %104 = icmp ne i32 %103, 10, !dbg !575
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !576
  br i1 %106, label %107, label %164, !dbg !569

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !577
  %109 = load i8, i8* %108, align 1, !dbg !580
  %110 = zext i8 %109 to i32, !dbg !580
  %111 = icmp eq i32 %110, 45, !dbg !581
  br i1 %111, label %112, label %119, !dbg !582

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !583
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !584
  %115 = load i8, i8* %114, align 1, !dbg !585
  %116 = zext i8 %115 to i32, !dbg !585
  %117 = icmp eq i32 %116, 45, !dbg !586
  br i1 %117, label %118, label %119, !dbg !587

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !588
  br label %119, !dbg !589

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !590
  %121 = load i16*, i16** %120, align 8, !dbg !590
  %122 = load i8*, i8** %12, align 8, !dbg !590
  %123 = load i8, i8* %122, align 1, !dbg !590
  %124 = zext i8 %123 to i32, !dbg !590
  %125 = sext i32 %124 to i64, !dbg !590
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !590
  %127 = load i16, i16* %126, align 2, !dbg !590
  %128 = zext i16 %127 to i32, !dbg !590
  %129 = and i32 %128, 8192, !dbg !590
  %130 = icmp ne i32 %129, 0, !dbg !590
  br i1 %130, label %131, label %161, !dbg !592

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !593
  %133 = load i8, i8* %132, align 1, !dbg !596
  %134 = zext i8 %133 to i32, !dbg !596
  %135 = icmp eq i32 %134, 9, !dbg !597
  br i1 %135, label %149, label %136, !dbg !598

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !599
  %138 = load i16*, i16** %137, align 8, !dbg !599
  %139 = load i8*, i8** %12, align 8, !dbg !599
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !599
  %141 = load i8, i8* %140, align 1, !dbg !599
  %142 = zext i8 %141 to i32, !dbg !599
  %143 = sext i32 %142 to i64, !dbg !599
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !599
  %145 = load i16, i16* %144, align 2, !dbg !599
  %146 = zext i16 %145 to i32, !dbg !599
  %147 = and i32 %146, 8192, !dbg !599
  %148 = icmp ne i32 %147, 0, !dbg !599
  br i1 %148, label %149, label %150, !dbg !600

149:                                              ; preds = %136, %131
  br label %164, !dbg !601

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !602
  %152 = trunc i8 %151 to i1, !dbg !602
  br i1 %152, label %160, label %153, !dbg !604

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !605
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !606
  %156 = load i8, i8* %155, align 1, !dbg !607
  %157 = zext i8 %156 to i32, !dbg !607
  %158 = icmp ne i32 %157, 45, !dbg !608
  br i1 %158, label %159, label %160, !dbg !609

159:                                              ; preds = %153
  br label %164, !dbg !610

160:                                              ; preds = %153, %150
  br label %161, !dbg !611

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !612
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !612
  store i8* %163, i8** %12, align 8, !dbg !612
  br label %95, !dbg !569, !llvm.loop !613

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !615
  %166 = load i8*, i8** %7, align 8, !dbg !615
  %167 = load i8*, i8** %4, align 8, !dbg !615
  %168 = ptrtoint i8* %166 to i64, !dbg !615
  %169 = ptrtoint i8* %167 to i64, !dbg !615
  %170 = sub i64 %168, %169, !dbg !615
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !615
  call void @llvm.dbg.declare(metadata i8** %13, metadata !616, metadata !DIExpression()), !dbg !617
  %173 = load i8*, i8** %3, align 8, !dbg !618
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !619
  br i1 %174, label %175, label %176, !dbg !619

175:                                              ; preds = %164
  br label %232, !dbg !619

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !620
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)), !dbg !621
  br i1 %178, label %179, label %180, !dbg !621

179:                                              ; preds = %176
  br label %230, !dbg !621

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !622
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)), !dbg !623
  br i1 %182, label %183, label %184, !dbg !623

183:                                              ; preds = %180
  br label %228, !dbg !623

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !624
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)), !dbg !625
  br i1 %186, label %187, label %188, !dbg !625

187:                                              ; preds = %184
  br label %226, !dbg !625

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !626
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)), !dbg !627
  br i1 %190, label %191, label %192, !dbg !627

191:                                              ; preds = %188
  br label %224, !dbg !627

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !628
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)), !dbg !629
  br i1 %194, label %195, label %196, !dbg !629

195:                                              ; preds = %192
  br label %222, !dbg !629

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !630
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !631
  br i1 %198, label %199, label %200, !dbg !631

199:                                              ; preds = %196
  br label %220, !dbg !631

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !632
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !633
  br i1 %202, label %203, label %204, !dbg !633

203:                                              ; preds = %200
  br label %218, !dbg !633

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !634
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !635
  br i1 %206, label %207, label %208, !dbg !635

207:                                              ; preds = %204
  br label %216, !dbg !635

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !636
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !637
  br i1 %210, label %211, label %212, !dbg !637

211:                                              ; preds = %208
  br label %214, !dbg !637

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !638
  br label %214, !dbg !637

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !637
  br label %216, !dbg !635

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !635
  br label %218, !dbg !633

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !633
  br label %220, !dbg !631

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !631
  br label %222, !dbg !629

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !629
  br label %224, !dbg !627

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !627
  br label %226, !dbg !625

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !625
  br label %228, !dbg !623

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !623
  br label %230, !dbg !621

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !621
  br label %232, !dbg !619

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !619
  store i8* %233, i8** %13, align 8, !dbg !617
  %234 = load i8*, i8** %8, align 8, !dbg !639
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #20, !dbg !639
  %236 = icmp eq i32 %235, 0, !dbg !639
  br i1 %236, label %241, label %237, !dbg !641

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !642
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #20, !dbg !642
  %240 = icmp eq i32 %239, 0, !dbg !642
  br i1 %240, label %241, label %248, !dbg !643

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !644
  %243 = load i8*, i8** %13, align 8, !dbg !646
  %244 = load i64, i64* %11, align 8, !dbg !647
  %245 = trunc i64 %244 to i32, !dbg !648
  %246 = load i8*, i8** %8, align 8, !dbg !649
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !650
  br label %254, !dbg !651

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !652
  %250 = load i64, i64* %11, align 8, !dbg !654
  %251 = trunc i64 %250 to i32, !dbg !655
  %252 = load i8*, i8** %8, align 8, !dbg !656
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !657
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !658
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !659
  %259 = load i8*, i8** %7, align 8, !dbg !660
  %260 = load i8*, i8** %12, align 8, !dbg !660
  %261 = load i8*, i8** %7, align 8, !dbg !660
  %262 = ptrtoint i8* %260 to i64, !dbg !660
  %263 = ptrtoint i8* %261 to i64, !dbg !660
  %264 = sub i64 %262, %263, !dbg !660
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !660
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !661
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !662
  %271 = load i8*, i8** %12, align 8, !dbg !663
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !663
  br label %274, !dbg !664

274:                                              ; preds = %254, %33
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !665 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !670, metadata !DIExpression()), !dbg !679
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !679
  call void @llvm.dbg.declare(metadata i8** %4, metadata !680, metadata !DIExpression()), !dbg !681
  %9 = load i8*, i8** %2, align 8, !dbg !682
  store i8* %9, i8** %4, align 8, !dbg !681
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !683, metadata !DIExpression()), !dbg !685
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !686
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !685
  br label %11, !dbg !687

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !688
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !689
  %14 = load i8*, i8** %13, align 8, !dbg !689
  %15 = icmp ne i8* %14, null, !dbg !688
  br i1 %15, label %16, label %23, !dbg !690

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !691
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !692
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !693
  %20 = load i8*, i8** %19, align 8, !dbg !693
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !694
  %22 = xor i1 %21, true, !dbg !695
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !696
  br i1 %24, label %25, label %28, !dbg !687

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !697
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !697
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !697
  br label %11, !dbg !687, !llvm.loop !698

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !699
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !701
  %31 = load i8*, i8** %30, align 8, !dbg !701
  %32 = icmp ne i8* %31, null, !dbg !699
  br i1 %32, label %33, label %37, !dbg !702

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !703
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !704
  %36 = load i8*, i8** %35, align 8, !dbg !704
  store i8* %36, i8** %4, align 8, !dbg !705
  br label %37, !dbg !706

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !707
  call void @llvm.dbg.declare(metadata i8** %6, metadata !708, metadata !DIExpression()), !dbg !709
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !710
  store i8* %38, i8** %6, align 8, !dbg !709
  %39 = load i8*, i8** %6, align 8, !dbg !711
  %40 = icmp ne i8* %39, null, !dbg !711
  br i1 %40, label %41, label %49, !dbg !713

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !714
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #20, !dbg !714
  %44 = icmp ne i32 %43, 0, !dbg !714
  br i1 %44, label %45, label %49, !dbg !715

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !716
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !716
  br label %49, !dbg !718

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !719, metadata !DIExpression()), !dbg !720
  %50 = load i8*, i8** %2, align 8, !dbg !721
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !722
  br i1 %51, label %52, label %53, !dbg !722

52:                                               ; preds = %49
  br label %55, !dbg !722

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !723
  br label %55, !dbg !722

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !722
  store i8* %56, i8** %7, align 8, !dbg !720
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !724
  %58 = load i8*, i8** %7, align 8, !dbg !725
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %58), !dbg !726
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !727
  %61 = load i8*, i8** %4, align 8, !dbg !728
  %62 = load i8*, i8** %4, align 8, !dbg !729
  %63 = load i8*, i8** %2, align 8, !dbg !730
  %64 = icmp eq i8* %62, %63, !dbg !731
  %65 = zext i1 %64 to i64, !dbg !729
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !729
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !732
  ret void, !dbg !733
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !734 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !737, metadata !DIExpression()), !dbg !738
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata i8* %6, metadata !741, metadata !DIExpression()), !dbg !742
  store i8 0, i8* %6, align 1, !dbg !742
  call void @llvm.dbg.declare(metadata i64* %7, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %8, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i8* %9, metadata !747, metadata !DIExpression()), !dbg !748
  store i8 0, i8* %9, align 1, !dbg !748
  %10 = load i8**, i8*** %5, align 8, !dbg !749
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !749
  %12 = load i8*, i8** %11, align 8, !dbg !749
  call void @set_program_name(i8* noundef %12), !dbg !750
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !751
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !752
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !753
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !754
  br label %17, !dbg !755

17:                                               ; preds = %110, %2
  %18 = load i32, i32* %4, align 4, !dbg !756
  %19 = load i8**, i8*** %5, align 8, !dbg !757
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !758
  store i32 %20, i32* %8, align 4, !dbg !759
  %21 = icmp ne i32 %20, -1, !dbg !760
  br i1 %21, label %22, label %111, !dbg !755

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4, !dbg !761
  switch i32 %23, label %40 [
    i32 63, label %24
    i32 97, label %25
    i32 116, label %26
    i32 256, label %28
    i32 44, label %29
    i32 -2, label %35
    i32 -3, label %36
  ], !dbg !763

24:                                               ; preds = %22
  call void @usage(i32 noundef 1) #22, !dbg !764
  unreachable, !dbg !764

25:                                               ; preds = %22
  store i8 1, i8* @convert_entire_line, align 1, !dbg !766
  br label %110, !dbg !767

26:                                               ; preds = %22
  store i8 1, i8* @convert_entire_line, align 1, !dbg !768
  %27 = load i8*, i8** @optarg, align 8, !dbg !769
  call void @parse_tab_stops(i8* noundef %27), !dbg !770
  br label %110, !dbg !771

28:                                               ; preds = %22
  store i8 1, i8* %9, align 1, !dbg !772
  br label %110, !dbg !773

29:                                               ; preds = %22
  %30 = load i8, i8* %6, align 1, !dbg !774
  %31 = trunc i8 %30 to i1, !dbg !774
  br i1 %31, label %32, label %34, !dbg !776

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8, !dbg !777
  call void @add_tab_stop(i64 noundef %33), !dbg !778
  br label %34, !dbg !778

34:                                               ; preds = %32, %29
  store i8 0, i8* %6, align 1, !dbg !779
  br label %110, !dbg !780

35:                                               ; preds = %22
  call void @usage(i32 noundef 0) #22, !dbg !781
  unreachable, !dbg !781

36:                                               ; preds = %22
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782
  %38 = load i8*, i8** @Version, align 8, !dbg !782
  %39 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)), !dbg !782
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %38, i8* noundef %39, i8* noundef null), !dbg !782
  call void @exit(i32 noundef 0) #19, !dbg !782
  unreachable, !dbg !782

40:                                               ; preds = %22
  %41 = load i8, i8* %6, align 1, !dbg !783
  %42 = trunc i8 %41 to i1, !dbg !783
  br i1 %42, label %44, label %43, !dbg !785

43:                                               ; preds = %40
  store i64 0, i64* %7, align 8, !dbg !786
  store i8 1, i8* %6, align 1, !dbg !788
  br label %44, !dbg !789

44:                                               ; preds = %43, %40
  br i1 false, label %45, label %72, !dbg !790

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8, !dbg !790
  %47 = icmp slt i64 %46, 0, !dbg !790
  br i1 %47, label %48, label %56, !dbg !790

48:                                               ; preds = %45
  br i1 true, label %49, label %52, !dbg !790

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8, !dbg !790
  %51 = icmp slt i64 %50, 922337203685477580, !dbg !790
  br i1 %51, label %90, label %93, !dbg !790

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8, !dbg !790
  %54 = sub nsw i64 -1, %53, !dbg !790
  %55 = icmp sle i64 -922337203685477580, %54, !dbg !790
  br i1 %55, label %90, label %93, !dbg !790

56:                                               ; preds = %45
  br i1 false, label %57, label %69, !dbg !790

57:                                               ; preds = %56
  br i1 true, label %58, label %62, !dbg !790

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8, !dbg !790
  %60 = add nsw i64 %59, -9223372036854775808, !dbg !790
  %61 = icmp slt i64 0, %60, !dbg !790
  br i1 %61, label %90, label %93, !dbg !790

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8, !dbg !790
  %64 = icmp slt i64 0, %63, !dbg !790
  br i1 %64, label %65, label %93, !dbg !790

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8, !dbg !790
  %67 = sub nsw i64 %66, 1, !dbg !790
  %68 = icmp slt i64 9223372036854775807, %67, !dbg !790
  br i1 %68, label %90, label %93, !dbg !790

69:                                               ; preds = %56
  %70 = load i64, i64* %7, align 8, !dbg !790
  %71 = icmp slt i64 -922337203685477580, %70, !dbg !790
  br i1 %71, label %90, label %93, !dbg !790

72:                                               ; preds = %44
  br i1 false, label %73, label %74, !dbg !790

73:                                               ; preds = %72
  br i1 false, label %90, label %93, !dbg !790

74:                                               ; preds = %72
  %75 = load i64, i64* %7, align 8, !dbg !790
  %76 = icmp slt i64 %75, 0, !dbg !790
  br i1 %76, label %77, label %87, !dbg !790

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8, !dbg !790
  %79 = icmp eq i64 %78, -1, !dbg !790
  br i1 %79, label %80, label %83, !dbg !790

80:                                               ; preds = %77
  br i1 true, label %81, label %82, !dbg !790

81:                                               ; preds = %80
  br i1 false, label %90, label %93, !dbg !790

82:                                               ; preds = %80
  br i1 false, label %90, label %93, !dbg !790

83:                                               ; preds = %77
  %84 = load i64, i64* %7, align 8, !dbg !790
  %85 = sdiv i64 -9223372036854775808, %84, !dbg !790
  %86 = icmp slt i64 %85, 10, !dbg !790
  br i1 %86, label %90, label %93, !dbg !790

87:                                               ; preds = %74
  %88 = load i64, i64* %7, align 8, !dbg !790
  %89 = icmp slt i64 922337203685477580, %88, !dbg !790
  br i1 %89, label %90, label %93, !dbg !790

90:                                               ; preds = %87, %83, %82, %81, %73, %69, %65, %58, %52, %49
  %91 = load i64, i64* %7, align 8, !dbg !790
  %92 = mul i64 %91, 10, !dbg !790
  store i64 %92, i64* %7, align 8, !dbg !790
  br label %96, !dbg !790

93:                                               ; preds = %87, %83, %82, %81, %73, %69, %65, %62, %58, %52, %49
  %94 = load i64, i64* %7, align 8, !dbg !790
  %95 = mul i64 %94, 10, !dbg !790
  store i64 %95, i64* %7, align 8, !dbg !790
  br label %96, !dbg !790

96:                                               ; preds = %93, %90
  %97 = phi i32 [ 1, %90 ], [ 0, %93 ], !dbg !790
  %98 = icmp ne i32 %97, 0, !dbg !790
  br i1 %98, label %107, label %99, !dbg !790

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8, !dbg !790
  %101 = load i32, i32* %8, align 4, !dbg !790
  %102 = sub nsw i32 %101, 48, !dbg !790
  %103 = sext i32 %102 to i64, !dbg !790
  %104 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %100, i64 %103), !dbg !790
  %105 = extractvalue { i64, i1 } %104, 1, !dbg !790
  %106 = extractvalue { i64, i1 } %104, 0, !dbg !790
  store i64 %106, i64* %7, align 8, !dbg !790
  br i1 %105, label %107, label %109, !dbg !792

107:                                              ; preds = %99, %96
  %108 = call i8* @gettext(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !793
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %108), !dbg !793
  unreachable, !dbg !793

109:                                              ; preds = %99
  br label %110, !dbg !794

110:                                              ; preds = %109, %34, %28, %26, %25
  br label %17, !dbg !755, !llvm.loop !795

111:                                              ; preds = %17
  %112 = load i8, i8* %9, align 1, !dbg !797
  %113 = trunc i8 %112 to i1, !dbg !797
  br i1 %113, label %114, label %115, !dbg !799

114:                                              ; preds = %111
  store i8 0, i8* @convert_entire_line, align 1, !dbg !800
  br label %115, !dbg !801

115:                                              ; preds = %114, %111
  %116 = load i8, i8* %6, align 1, !dbg !802
  %117 = trunc i8 %116 to i1, !dbg !802
  br i1 %117, label %118, label %120, !dbg !804

118:                                              ; preds = %115
  %119 = load i64, i64* %7, align 8, !dbg !805
  call void @add_tab_stop(i64 noundef %119), !dbg !806
  br label %120, !dbg !806

120:                                              ; preds = %118, %115
  call void @finalize_tab_stops(), !dbg !807
  %121 = load i32, i32* @optind, align 4, !dbg !808
  %122 = load i32, i32* %4, align 4, !dbg !809
  %123 = icmp slt i32 %121, %122, !dbg !810
  br i1 %123, label %124, label %129, !dbg !811

124:                                              ; preds = %120
  %125 = load i8**, i8*** %5, align 8, !dbg !812
  %126 = load i32, i32* @optind, align 4, !dbg !813
  %127 = sext i32 %126 to i64, !dbg !812
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127, !dbg !812
  br label %130, !dbg !811

129:                                              ; preds = %120
  br label %130, !dbg !811

130:                                              ; preds = %129, %124
  %131 = phi i8** [ %128, %124 ], [ null, %129 ], !dbg !811
  call void @set_file_list(i8** noundef %131), !dbg !814
  call void @unexpand(), !dbg !815
  call void @cleanup_file_list_stdin(), !dbg !816
  %132 = load i32, i32* @exit_status, align 4, !dbg !817
  ret i32 %132, !dbg !818
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unexpand() #4 !dbg !42 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mbbuf_t, align 8
  %4 = alloca %struct.mcel_t, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcel_t, align 4
  %13 = alloca %struct.mcel_t, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %1, metadata !819, metadata !DIExpression()), !dbg !854
  %17 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef null), !dbg !855
  store %struct._IO_FILE* %17, %struct._IO_FILE** %1, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata i8** %2, metadata !856, metadata !DIExpression()), !dbg !857
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !858
  %19 = icmp ne %struct._IO_FILE* %18, null, !dbg !858
  br i1 %19, label %21, label %20, !dbg !860

20:                                               ; preds = %0
  br label %231, !dbg !861

21:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t* %3, metadata !862, metadata !DIExpression()), !dbg !872
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !873
  call void @mbbuf_init(%struct.mbbuf_t* noundef %3, i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), i64 noundef 262144, %struct._IO_FILE* noundef %22), !dbg !874
  %23 = load i64, i64* @max_column_width, align 8, !dbg !875
  %24 = mul i64 %23, 1, !dbg !876
  %25 = mul i64 %24, 16, !dbg !877
  %26 = call noalias nonnull i8* @ximalloc(i64 noundef %25) #23, !dbg !878
  store i8* %26, i8** %2, align 8, !dbg !879
  br label %27, !dbg !880

27:                                               ; preds = %21, %230
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !881, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.declare(metadata i8* %5, metadata !894, metadata !DIExpression()), !dbg !895
  store i8 1, i8* %5, align 1, !dbg !895
  call void @llvm.dbg.declare(metadata i64* %6, metadata !896, metadata !DIExpression()), !dbg !897
  store i64 0, i64* %6, align 8, !dbg !897
  call void @llvm.dbg.declare(metadata i64* %7, metadata !898, metadata !DIExpression()), !dbg !899
  store i64 0, i64* %7, align 8, !dbg !899
  call void @llvm.dbg.declare(metadata i64* %8, metadata !900, metadata !DIExpression()), !dbg !901
  store i64 0, i64* %8, align 8, !dbg !901
  call void @llvm.dbg.declare(metadata i8* %9, metadata !902, metadata !DIExpression()), !dbg !903
  store i8 0, i8* %9, align 1, !dbg !903
  call void @llvm.dbg.declare(metadata i8* %10, metadata !904, metadata !DIExpression()), !dbg !905
  store i8 1, i8* %10, align 1, !dbg !905
  call void @llvm.dbg.declare(metadata i64* %11, metadata !906, metadata !DIExpression()), !dbg !907
  store i64 0, i64* %11, align 8, !dbg !907
  br label %28, !dbg !908

28:                                               ; preds = %226, %27
  br label %29, !dbg !909

29:                                               ; preds = %45, %28
  %30 = call i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %3), !dbg !911
  %31 = bitcast %struct.mcel_t* %13 to i64*, !dbg !911
  store i64 %30, i64* %31, align 4, !dbg !911
  %32 = bitcast %struct.mcel_t* %4 to i8*, !dbg !911
  %33 = bitcast %struct.mcel_t* %13 to i8*, !dbg !911
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false), !dbg !911
  %34 = bitcast %struct.mcel_t* %12 to i8*, !dbg !912
  %35 = bitcast %struct.mcel_t* %4 to i8*, !dbg !912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false), !dbg !912
  %36 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %12, i32 0, i32 0, !dbg !913
  %37 = load i32, i32* %36, align 4, !dbg !913
  %38 = icmp eq i32 %37, -1, !dbg !914
  br i1 %38, label %39, label %43, !dbg !915

39:                                               ; preds = %29
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !916
  %41 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %40), !dbg !917
  store %struct._IO_FILE* %41, %struct._IO_FILE** %1, align 8, !dbg !918
  %42 = icmp ne %struct._IO_FILE* %41, null, !dbg !915
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi i1 [ false, %29 ], [ %42, %39 ], !dbg !919
  br i1 %44, label %45, label %47, !dbg !909

45:                                               ; preds = %43
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !920
  call void @mbbuf_init(%struct.mbbuf_t* noundef %3, i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), i64 noundef 262144, %struct._IO_FILE* noundef %46), !dbg !921
  br label %29, !dbg !909, !llvm.loop !922

47:                                               ; preds = %43
  %48 = load i8, i8* %5, align 1, !dbg !924
  %49 = trunc i8 %48 to i1, !dbg !924
  br i1 %49, label %50, label %206, !dbg !926

50:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata i8* %14, metadata !927, metadata !DIExpression()), !dbg !929
  %51 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !930
  %52 = load i32, i32* %51, align 4, !dbg !930
  %53 = call i1 @c32issep(i32 noundef %52) #20, !dbg !931
  %54 = zext i1 %53 to i8, !dbg !929
  store i8 %54, i8* %14, align 1, !dbg !929
  %55 = load i8, i8* %14, align 1, !dbg !932
  %56 = trunc i8 %55 to i1, !dbg !932
  br i1 %56, label %57, label %125, !dbg !934

57:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata i8* %15, metadata !935, metadata !DIExpression()), !dbg !937
  %58 = load i64, i64* %6, align 8, !dbg !938
  %59 = call i64 @get_next_tab_column(i64 noundef %58, i64* noundef %8, i8* noundef %15), !dbg !939
  store i64 %59, i64* %7, align 8, !dbg !940
  %60 = load i8, i8* %15, align 1, !dbg !941
  %61 = trunc i8 %60 to i1, !dbg !941
  br i1 %61, label %62, label %63, !dbg !943

62:                                               ; preds = %57
  store i8 0, i8* %5, align 1, !dbg !944
  br label %63, !dbg !945

63:                                               ; preds = %62, %57
  %64 = load i8, i8* %5, align 1, !dbg !946
  %65 = trunc i8 %64 to i1, !dbg !946
  br i1 %65, label %66, label %124, !dbg !948

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !949
  %68 = load i32, i32* %67, align 4, !dbg !949
  %69 = icmp eq i32 %68, 9, !dbg !952
  br i1 %69, label %70, label %78, !dbg !953

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8, !dbg !954
  store i64 %71, i64* %6, align 8, !dbg !956
  %72 = load i64, i64* %11, align 8, !dbg !957
  %73 = icmp ne i64 %72, 0, !dbg !957
  br i1 %73, label %74, label %77, !dbg !959

74:                                               ; preds = %70
  %75 = load i8*, i8** %2, align 8, !dbg !960
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !960
  store i8 9, i8* %76, align 1, !dbg !961
  br label %77, !dbg !960

77:                                               ; preds = %74, %70
  br label %120, !dbg !962

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !963
  %80 = load i32, i32* %79, align 4, !dbg !963
  %81 = call i32 @c32width(i32 noundef %80), !dbg !965
  %82 = sext i32 %81 to i64, !dbg !965
  %83 = load i64, i64* %6, align 8, !dbg !966
  %84 = add nsw i64 %83, %82, !dbg !966
  store i64 %84, i64* %6, align 8, !dbg !966
  %85 = load i8, i8* %10, align 1, !dbg !967
  %86 = trunc i8 %85 to i1, !dbg !967
  br i1 %86, label %87, label %91, !dbg !969

87:                                               ; preds = %78
  %88 = load i64, i64* %6, align 8, !dbg !970
  %89 = load i64, i64* %7, align 8, !dbg !971
  %90 = icmp eq i64 %88, %89, !dbg !972
  br i1 %90, label %111, label %91, !dbg !973

91:                                               ; preds = %87, %78
  %92 = load i64, i64* %6, align 8, !dbg !974
  %93 = load i64, i64* %7, align 8, !dbg !977
  %94 = icmp eq i64 %92, %93, !dbg !978
  br i1 %94, label %95, label %96, !dbg !979

95:                                               ; preds = %91
  store i8 1, i8* %9, align 1, !dbg !980
  br label %96, !dbg !981

96:                                               ; preds = %95, %91
  %97 = load i8*, i8** %2, align 8, !dbg !982
  %98 = load i64, i64* %11, align 8, !dbg !983
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !984
  %100 = bitcast %struct.mcel_t* %4 to i64*, !dbg !985
  %101 = load i64, i64* %100, align 4, !dbg !985
  %102 = call i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %3, i64 %101), !dbg !985
  %103 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 2, !dbg !986
  %104 = load i8, i8* %103, align 1, !dbg !986
  %105 = zext i8 %104 to i64, !dbg !987
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %102, i64 %105, i1 false), !dbg !988
  %106 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 2, !dbg !989
  %107 = load i8, i8* %106, align 1, !dbg !989
  %108 = zext i8 %107 to i64, !dbg !990
  %109 = load i64, i64* %11, align 8, !dbg !991
  %110 = add nsw i64 %109, %108, !dbg !991
  store i64 %110, i64* %11, align 8, !dbg !991
  store i8 1, i8* %10, align 1, !dbg !992
  br label %226, !dbg !993

111:                                              ; preds = %87
  %112 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 2, !dbg !994
  store i8 0, i8* %112, align 1, !dbg !995
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !996
  %114 = call i32 @putc_unlocked(i32 noundef 9, %struct._IO_FILE* noundef %113), !dbg !996
  %115 = icmp slt i32 %114, 0, !dbg !998
  br i1 %115, label %116, label %117, !dbg !999

116:                                              ; preds = %111
  call void @write_error(), !dbg !1000
  br label %117, !dbg !1000

117:                                              ; preds = %116, %111
  %118 = load i8*, i8** %2, align 8, !dbg !1001
  %119 = getelementptr inbounds i8, i8* %118, i64 0, !dbg !1001
  store i8 9, i8* %119, align 1, !dbg !1002
  br label %120

120:                                              ; preds = %117, %77
  %121 = load i8, i8* %9, align 1, !dbg !1003
  %122 = trunc i8 %121 to i1, !dbg !1003
  %123 = zext i1 %122 to i64, !dbg !1003
  store i64 %123, i64* %11, align 8, !dbg !1004
  br label %124, !dbg !1005

124:                                              ; preds = %120, %63
  br label %167, !dbg !1006

125:                                              ; preds = %50
  %126 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !1007
  %127 = load i32, i32* %126, align 4, !dbg !1007
  %128 = icmp eq i32 %127, 8, !dbg !1009
  br i1 %128, label %129, label %147, !dbg !1010

129:                                              ; preds = %125
  %130 = load i64, i64* %6, align 8, !dbg !1011
  %131 = icmp ne i64 %130, 0, !dbg !1013
  %132 = xor i1 %131, true, !dbg !1013
  %133 = xor i1 %132, true, !dbg !1014
  %134 = zext i1 %133 to i32, !dbg !1014
  %135 = sext i32 %134 to i64, !dbg !1014
  %136 = load i64, i64* %6, align 8, !dbg !1015
  %137 = sub nsw i64 %136, %135, !dbg !1015
  store i64 %137, i64* %6, align 8, !dbg !1015
  %138 = load i64, i64* %6, align 8, !dbg !1016
  store i64 %138, i64* %7, align 8, !dbg !1017
  %139 = load i64, i64* %8, align 8, !dbg !1018
  %140 = icmp ne i64 %139, 0, !dbg !1019
  %141 = xor i1 %140, true, !dbg !1019
  %142 = xor i1 %141, true, !dbg !1020
  %143 = zext i1 %142 to i32, !dbg !1020
  %144 = sext i32 %143 to i64, !dbg !1020
  %145 = load i64, i64* %8, align 8, !dbg !1021
  %146 = sub nsw i64 %145, %144, !dbg !1021
  store i64 %146, i64* %8, align 8, !dbg !1021
  br label %166, !dbg !1022

147:                                              ; preds = %125
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1023, metadata !DIExpression()), !dbg !1025
  %148 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !1026
  %149 = load i32, i32* %148, align 4, !dbg !1026
  %150 = call i32 @c32width(i32 noundef %149), !dbg !1027
  store i32 %150, i32* %16, align 4, !dbg !1025
  %151 = load i64, i64* %6, align 8, !dbg !1028
  %152 = load i32, i32* %16, align 4, !dbg !1028
  %153 = icmp slt i32 %152, 0, !dbg !1028
  br i1 %153, label %154, label %155, !dbg !1028

154:                                              ; preds = %147
  br label %157, !dbg !1028

155:                                              ; preds = %147
  %156 = load i32, i32* %16, align 4, !dbg !1028
  br label %157, !dbg !1028

157:                                              ; preds = %155, %154
  %158 = phi i32 [ 1, %154 ], [ %156, %155 ], !dbg !1028
  %159 = sext i32 %158 to i64, !dbg !1028
  %160 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %151, i64 %159), !dbg !1028
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !1028
  %162 = extractvalue { i64, i1 } %160, 0, !dbg !1028
  store i64 %162, i64* %6, align 8, !dbg !1028
  br i1 %161, label %163, label %165, !dbg !1030

163:                                              ; preds = %157
  %164 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i64 0, i64 0)) #18, !dbg !1031
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %164), !dbg !1031
  unreachable, !dbg !1031

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %129
  br label %167

167:                                              ; preds = %166, %124
  %168 = load i64, i64* %11, align 8, !dbg !1032
  %169 = icmp ne i64 %168, 0, !dbg !1032
  br i1 %169, label %170, label %188, !dbg !1034

170:                                              ; preds = %167
  %171 = load i64, i64* %11, align 8, !dbg !1035
  %172 = icmp sgt i64 %171, 1, !dbg !1038
  br i1 %172, label %173, label %179, !dbg !1039

173:                                              ; preds = %170
  %174 = load i8, i8* %9, align 1, !dbg !1040
  %175 = trunc i8 %174 to i1, !dbg !1040
  br i1 %175, label %176, label %179, !dbg !1041

176:                                              ; preds = %173
  %177 = load i8*, i8** %2, align 8, !dbg !1042
  %178 = getelementptr inbounds i8, i8* %177, i64 0, !dbg !1042
  store i8 9, i8* %178, align 1, !dbg !1043
  br label %179, !dbg !1042

179:                                              ; preds = %176, %173, %170
  %180 = load i8*, i8** %2, align 8, !dbg !1044
  %181 = load i64, i64* %11, align 8, !dbg !1044
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1044
  %183 = call i64 @fwrite_unlocked(i8* noundef %180, i64 noundef 1, i64 noundef %181, %struct._IO_FILE* noundef %182), !dbg !1044
  %184 = load i64, i64* %11, align 8, !dbg !1046
  %185 = icmp ne i64 %183, %184, !dbg !1047
  br i1 %185, label %186, label %187, !dbg !1048

186:                                              ; preds = %179
  call void @write_error(), !dbg !1049
  br label %187, !dbg !1049

187:                                              ; preds = %186, %179
  store i64 0, i64* %11, align 8, !dbg !1050
  store i8 0, i8* %9, align 1, !dbg !1051
  br label %188, !dbg !1052

188:                                              ; preds = %187, %167
  %189 = load i8, i8* %14, align 1, !dbg !1053
  %190 = trunc i8 %189 to i1, !dbg !1053
  %191 = zext i1 %190 to i8, !dbg !1054
  store i8 %191, i8* %10, align 1, !dbg !1054
  %192 = load i8, i8* @convert_entire_line, align 1, !dbg !1055
  %193 = trunc i8 %192 to i1, !dbg !1055
  br i1 %193, label %197, label %194, !dbg !1056

194:                                              ; preds = %188
  %195 = load i8, i8* %14, align 1, !dbg !1057
  %196 = trunc i8 %195 to i1, !dbg !1057
  br label %197, !dbg !1056

197:                                              ; preds = %194, %188
  %198 = phi i1 [ true, %188 ], [ %196, %194 ]
  %199 = zext i1 %198 to i32, !dbg !1056
  %200 = load i8, i8* %5, align 1, !dbg !1058
  %201 = trunc i8 %200 to i1, !dbg !1058
  %202 = zext i1 %201 to i32, !dbg !1058
  %203 = and i32 %202, %199, !dbg !1058
  %204 = icmp ne i32 %203, 0, !dbg !1058
  %205 = zext i1 %204 to i8, !dbg !1058
  store i8 %205, i8* %5, align 1, !dbg !1058
  br label %206, !dbg !1059

206:                                              ; preds = %197, %47
  %207 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !1060
  %208 = load i32, i32* %207, align 4, !dbg !1060
  %209 = icmp eq i32 %208, -1, !dbg !1062
  br i1 %209, label %210, label %212, !dbg !1063

210:                                              ; preds = %206
  %211 = load i8*, i8** %2, align 8, !dbg !1064
  call void @free(i8* noundef %211) #18, !dbg !1066
  br label %231, !dbg !1067

212:                                              ; preds = %206
  %213 = bitcast %struct.mcel_t* %4 to i64*, !dbg !1068
  %214 = load i64, i64* %213, align 4, !dbg !1068
  %215 = call i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %3, i64 %214), !dbg !1068
  %216 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 2, !dbg !1068
  %217 = load i8, i8* %216, align 1, !dbg !1068
  %218 = zext i8 %217 to i64, !dbg !1068
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1068
  %220 = call i64 @fwrite_unlocked(i8* noundef %215, i64 noundef 1, i64 noundef %218, %struct._IO_FILE* noundef %219), !dbg !1068
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069
  %222 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %221) #18, !dbg !1069
  %223 = icmp ne i32 %222, 0, !dbg !1069
  br i1 %223, label %224, label %225, !dbg !1071

224:                                              ; preds = %212
  call void @write_error(), !dbg !1072
  br label %225, !dbg !1072

225:                                              ; preds = %224, %212
  br label %226, !dbg !1073

226:                                              ; preds = %225, %96
  %227 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !1074
  %228 = load i32, i32* %227, align 4, !dbg !1074
  %229 = icmp ne i32 %228, 10, !dbg !1075
  br i1 %229, label %28, label %230, !dbg !1073, !llvm.loop !1076

230:                                              ; preds = %226
  br label %27, !dbg !880, !llvm.loop !1078

231:                                              ; preds = %210, %20
  ret void, !dbg !1080
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i1 @c32issep(i32 noundef %0) #9 !dbg !1081 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1084, metadata !DIExpression()), !dbg !1085
  %3 = load i32, i32* %2, align 4, !dbg !1086
  %4 = call i32 @c32isblank(i32 noundef %3), !dbg !1087
  %5 = icmp ne i32 %4, 0, !dbg !1088
  %6 = xor i1 %5, true, !dbg !1088
  %7 = xor i1 %6, true, !dbg !1089
  ret i1 %7, !dbg !1090
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #4 !dbg !1091 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1092, metadata !DIExpression()), !dbg !1093
  %2 = call i32* @__errno_location() #21, !dbg !1094
  %3 = load i32, i32* %2, align 4, !dbg !1094
  store i32 %3, i32* %1, align 4, !dbg !1093
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1095
  %5 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4), !dbg !1095
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1096
  %7 = call i32 @fpurge(%struct._IO_FILE* noundef %6), !dbg !1097
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1098
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %8) #18, !dbg !1098
  %9 = load i32, i32* %1, align 4, !dbg !1099
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0)) #18, !dbg !1099
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %10), !dbg !1099
  unreachable, !dbg !1099
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_tab_stop(i64 noundef %0) #4 !dbg !1100 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1105, metadata !DIExpression()), !dbg !1106
  %5 = load i64, i64* @first_free_tab, align 8, !dbg !1107
  %6 = icmp ne i64 %5, 0, !dbg !1107
  br i1 %6, label %7, label %13, !dbg !1107

7:                                                ; preds = %1
  %8 = load i64*, i64** @tab_list, align 8, !dbg !1108
  %9 = load i64, i64* @first_free_tab, align 8, !dbg !1109
  %10 = sub nsw i64 %9, 1, !dbg !1110
  %11 = getelementptr inbounds i64, i64* %8, i64 %10, !dbg !1108
  %12 = load i64, i64* %11, align 8, !dbg !1108
  br label %14, !dbg !1107

13:                                               ; preds = %1
  br label %14, !dbg !1107

14:                                               ; preds = %13, %7
  %15 = phi i64 [ %12, %7 ], [ 0, %13 ], !dbg !1107
  store i64 %15, i64* %3, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1111, metadata !DIExpression()), !dbg !1112
  %16 = load i64, i64* %3, align 8, !dbg !1113
  %17 = load i64, i64* %2, align 8, !dbg !1114
  %18 = icmp sle i64 %16, %17, !dbg !1115
  br i1 %18, label %19, label %23, !dbg !1113

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8, !dbg !1116
  %21 = load i64, i64* %3, align 8, !dbg !1117
  %22 = sub nsw i64 %20, %21, !dbg !1118
  br label %24, !dbg !1113

23:                                               ; preds = %14
  br label %24, !dbg !1113

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ], !dbg !1113
  store i64 %25, i64* %4, align 8, !dbg !1112
  %26 = load i64, i64* @first_free_tab, align 8, !dbg !1119
  %27 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1121
  %28 = icmp eq i64 %26, %27, !dbg !1122
  br i1 %28, label %29, label %34, !dbg !1123

29:                                               ; preds = %24
  %30 = load i64*, i64** @tab_list, align 8, !dbg !1124
  %31 = bitcast i64* %30 to i8*, !dbg !1124
  %32 = call nonnull i8* @xpalloc(i8* noundef %31, i64* noundef @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8), !dbg !1125
  %33 = bitcast i8* %32 to i64*, !dbg !1125
  store i64* %33, i64** @tab_list, align 8, !dbg !1126
  br label %34, !dbg !1127

34:                                               ; preds = %29, %24
  %35 = load i64, i64* %2, align 8, !dbg !1128
  %36 = load i64*, i64** @tab_list, align 8, !dbg !1129
  %37 = load i64, i64* @first_free_tab, align 8, !dbg !1130
  %38 = add nsw i64 %37, 1, !dbg !1130
  store i64 %38, i64* @first_free_tab, align 8, !dbg !1130
  %39 = getelementptr inbounds i64, i64* %36, i64 %37, !dbg !1129
  store i64 %35, i64* %39, align 8, !dbg !1131
  %40 = load i64, i64* %4, align 8, !dbg !1132
  call void @set_max_column_width(i64 noundef %40), !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_max_column_width(i64 noundef %0) #4 !dbg !1135 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1136, metadata !DIExpression()), !dbg !1137
  %3 = load i64, i64* @max_column_width, align 8, !dbg !1138
  %4 = load i64, i64* %2, align 8, !dbg !1140
  %5 = icmp slt i64 %3, %4, !dbg !1141
  br i1 %5, label %6, label %14, !dbg !1142

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !1143
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 0), !dbg !1143
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !1143
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !1143
  store i64 %10, i64* @max_column_width, align 8, !dbg !1143
  br i1 %9, label %11, label %13, !dbg !1146

11:                                               ; preds = %6
  %12 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.9, i64 0, i64 0)) #18, !dbg !1147
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %12), !dbg !1147
  unreachable, !dbg !1147

13:                                               ; preds = %6
  br label %14, !dbg !1148

14:                                               ; preds = %13, %1
  ret void, !dbg !1149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_tab_stops(i8* noundef nonnull %0) #4 !dbg !1150 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1153, metadata !DIExpression()), !dbg !1154
  store i8 0, i8* %3, align 1, !dbg !1154
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1155, metadata !DIExpression()), !dbg !1156
  store i64 0, i64* %4, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1157, metadata !DIExpression()), !dbg !1158
  store i8 0, i8* %5, align 1, !dbg !1158
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1159, metadata !DIExpression()), !dbg !1160
  store i8 0, i8* %6, align 1, !dbg !1160
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1161, metadata !DIExpression()), !dbg !1162
  store i8* null, i8** %7, align 8, !dbg !1162
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1163, metadata !DIExpression()), !dbg !1164
  store i8 1, i8* %8, align 1, !dbg !1164
  br label %11, !dbg !1165

11:                                               ; preds = %181, %1
  %12 = load i8*, i8** %2, align 8, !dbg !1166
  %13 = load i8, i8* %12, align 1, !dbg !1169
  %14 = icmp ne i8 %13, 0, !dbg !1170
  br i1 %14, label %15, label %184, !dbg !1170

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8, !dbg !1171
  %17 = load i8, i8* %16, align 1, !dbg !1174
  %18 = zext i8 %17 to i32, !dbg !1174
  %19 = icmp eq i32 %18, 44, !dbg !1175
  br i1 %19, label %33, label %20, !dbg !1176

20:                                               ; preds = %15
  %21 = call i16** @__ctype_b_loc() #21, !dbg !1177
  %22 = load i16*, i16** %21, align 8, !dbg !1177
  %23 = load i8*, i8** %2, align 8, !dbg !1177
  %24 = load i8, i8* %23, align 1, !dbg !1177
  %25 = call i8 @to_uchar(i8 noundef %24), !dbg !1177
  %26 = zext i8 %25 to i32, !dbg !1177
  %27 = sext i32 %26 to i64, !dbg !1177
  %28 = getelementptr inbounds i16, i16* %22, i64 %27, !dbg !1177
  %29 = load i16, i16* %28, align 2, !dbg !1177
  %30 = zext i16 %29 to i32, !dbg !1177
  %31 = and i32 %30, 1, !dbg !1177
  %32 = icmp ne i32 %31, 0, !dbg !1177
  br i1 %32, label %33, label %57, !dbg !1178

33:                                               ; preds = %20, %15
  %34 = load i8, i8* %3, align 1, !dbg !1179
  %35 = trunc i8 %34 to i1, !dbg !1179
  br i1 %35, label %36, label %56, !dbg !1182

36:                                               ; preds = %33
  %37 = load i8, i8* %5, align 1, !dbg !1183
  %38 = trunc i8 %37 to i1, !dbg !1183
  br i1 %38, label %39, label %44, !dbg !1186

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8, !dbg !1187
  %41 = call i1 @set_extend_size(i64 noundef %40), !dbg !1190
  br i1 %41, label %43, label %42, !dbg !1191

42:                                               ; preds = %39
  store i8 0, i8* %8, align 1, !dbg !1192
  br label %184, !dbg !1194

43:                                               ; preds = %39
  br label %55, !dbg !1195

44:                                               ; preds = %36
  %45 = load i8, i8* %6, align 1, !dbg !1196
  %46 = trunc i8 %45 to i1, !dbg !1196
  br i1 %46, label %47, label %52, !dbg !1198

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8, !dbg !1199
  %49 = call i1 @set_increment_size(i64 noundef %48), !dbg !1202
  br i1 %49, label %51, label %50, !dbg !1203

50:                                               ; preds = %47
  store i8 0, i8* %8, align 1, !dbg !1204
  br label %184, !dbg !1206

51:                                               ; preds = %47
  br label %54, !dbg !1207

52:                                               ; preds = %44
  %53 = load i64, i64* %4, align 8, !dbg !1208
  call void @add_tab_stop(i64 noundef %53), !dbg !1209
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %43
  br label %56, !dbg !1210

56:                                               ; preds = %55, %33
  store i8 0, i8* %3, align 1, !dbg !1211
  br label %180, !dbg !1212

57:                                               ; preds = %20
  %58 = load i8*, i8** %2, align 8, !dbg !1213
  %59 = load i8, i8* %58, align 1, !dbg !1215
  %60 = zext i8 %59 to i32, !dbg !1215
  %61 = icmp eq i32 %60, 47, !dbg !1216
  br i1 %61, label %62, label %70, !dbg !1217

62:                                               ; preds = %57
  %63 = load i8, i8* %3, align 1, !dbg !1218
  %64 = trunc i8 %63 to i1, !dbg !1218
  br i1 %64, label %65, label %69, !dbg !1221

65:                                               ; preds = %62
  %66 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0)) #18, !dbg !1222
  %67 = load i8*, i8** %2, align 8, !dbg !1222
  %68 = call i8* @quote(i8* noundef %67), !dbg !1222
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %66, i8* noundef %68), !dbg !1222
  store i8 0, i8* %8, align 1, !dbg !1224
  br label %69, !dbg !1225

69:                                               ; preds = %65, %62
  store i8 1, i8* %5, align 1, !dbg !1226
  store i8 0, i8* %6, align 1, !dbg !1227
  br label %179, !dbg !1228

70:                                               ; preds = %57
  %71 = load i8*, i8** %2, align 8, !dbg !1229
  %72 = load i8, i8* %71, align 1, !dbg !1231
  %73 = zext i8 %72 to i32, !dbg !1231
  %74 = icmp eq i32 %73, 43, !dbg !1232
  br i1 %74, label %75, label %83, !dbg !1233

75:                                               ; preds = %70
  %76 = load i8, i8* %3, align 1, !dbg !1234
  %77 = trunc i8 %76 to i1, !dbg !1234
  br i1 %77, label %78, label %82, !dbg !1237

78:                                               ; preds = %75
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.61, i64 0, i64 0)) #18, !dbg !1238
  %80 = load i8*, i8** %2, align 8, !dbg !1238
  %81 = call i8* @quote(i8* noundef %80), !dbg !1238
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %79, i8* noundef %81), !dbg !1238
  store i8 0, i8* %8, align 1, !dbg !1240
  br label %82, !dbg !1241

82:                                               ; preds = %78, %75
  store i8 1, i8* %6, align 1, !dbg !1242
  store i8 0, i8* %5, align 1, !dbg !1243
  br label %178, !dbg !1244

83:                                               ; preds = %70
  %84 = load i8*, i8** %2, align 8, !dbg !1245
  %85 = load i8, i8* %84, align 1, !dbg !1247
  %86 = zext i8 %85 to i32, !dbg !1247
  %87 = call i1 @c_isdigit(i32 noundef %86), !dbg !1248
  br i1 %87, label %88, label %173, !dbg !1249

88:                                               ; preds = %83
  %89 = load i8, i8* %3, align 1, !dbg !1250
  %90 = trunc i8 %89 to i1, !dbg !1250
  br i1 %90, label %93, label %91, !dbg !1253

91:                                               ; preds = %88
  store i64 0, i64* %4, align 8, !dbg !1254
  store i8 1, i8* %3, align 1, !dbg !1256
  %92 = load i8*, i8** %2, align 8, !dbg !1257
  store i8* %92, i8** %7, align 8, !dbg !1258
  br label %93, !dbg !1259

93:                                               ; preds = %91, %88
  br i1 false, label %94, label %121, !dbg !1260

94:                                               ; preds = %93
  %95 = load i64, i64* %4, align 8, !dbg !1260
  %96 = icmp slt i64 %95, 0, !dbg !1260
  br i1 %96, label %97, label %105, !dbg !1260

97:                                               ; preds = %94
  br i1 true, label %98, label %101, !dbg !1260

98:                                               ; preds = %97
  %99 = load i64, i64* %4, align 8, !dbg !1260
  %100 = icmp slt i64 %99, 922337203685477580, !dbg !1260
  br i1 %100, label %139, label %142, !dbg !1260

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8, !dbg !1260
  %103 = sub nsw i64 -1, %102, !dbg !1260
  %104 = icmp sle i64 -922337203685477580, %103, !dbg !1260
  br i1 %104, label %139, label %142, !dbg !1260

105:                                              ; preds = %94
  br i1 false, label %106, label %118, !dbg !1260

106:                                              ; preds = %105
  br i1 true, label %107, label %111, !dbg !1260

107:                                              ; preds = %106
  %108 = load i64, i64* %4, align 8, !dbg !1260
  %109 = add nsw i64 %108, -9223372036854775808, !dbg !1260
  %110 = icmp slt i64 0, %109, !dbg !1260
  br i1 %110, label %139, label %142, !dbg !1260

111:                                              ; preds = %106
  %112 = load i64, i64* %4, align 8, !dbg !1260
  %113 = icmp slt i64 0, %112, !dbg !1260
  br i1 %113, label %114, label %142, !dbg !1260

114:                                              ; preds = %111
  %115 = load i64, i64* %4, align 8, !dbg !1260
  %116 = sub nsw i64 %115, 1, !dbg !1260
  %117 = icmp slt i64 9223372036854775807, %116, !dbg !1260
  br i1 %117, label %139, label %142, !dbg !1260

118:                                              ; preds = %105
  %119 = load i64, i64* %4, align 8, !dbg !1260
  %120 = icmp slt i64 -922337203685477580, %119, !dbg !1260
  br i1 %120, label %139, label %142, !dbg !1260

121:                                              ; preds = %93
  br i1 false, label %122, label %123, !dbg !1260

122:                                              ; preds = %121
  br i1 false, label %139, label %142, !dbg !1260

123:                                              ; preds = %121
  %124 = load i64, i64* %4, align 8, !dbg !1260
  %125 = icmp slt i64 %124, 0, !dbg !1260
  br i1 %125, label %126, label %136, !dbg !1260

126:                                              ; preds = %123
  %127 = load i64, i64* %4, align 8, !dbg !1260
  %128 = icmp eq i64 %127, -1, !dbg !1260
  br i1 %128, label %129, label %132, !dbg !1260

129:                                              ; preds = %126
  br i1 true, label %130, label %131, !dbg !1260

130:                                              ; preds = %129
  br i1 false, label %139, label %142, !dbg !1260

131:                                              ; preds = %129
  br i1 false, label %139, label %142, !dbg !1260

132:                                              ; preds = %126
  %133 = load i64, i64* %4, align 8, !dbg !1260
  %134 = sdiv i64 -9223372036854775808, %133, !dbg !1260
  %135 = icmp slt i64 %134, 10, !dbg !1260
  br i1 %135, label %139, label %142, !dbg !1260

136:                                              ; preds = %123
  %137 = load i64, i64* %4, align 8, !dbg !1260
  %138 = icmp slt i64 922337203685477580, %137, !dbg !1260
  br i1 %138, label %139, label %142, !dbg !1260

139:                                              ; preds = %136, %132, %131, %130, %122, %118, %114, %107, %101, %98
  %140 = load i64, i64* %4, align 8, !dbg !1260
  %141 = mul i64 %140, 10, !dbg !1260
  store i64 %141, i64* %4, align 8, !dbg !1260
  br label %145, !dbg !1260

142:                                              ; preds = %136, %132, %131, %130, %122, %118, %114, %111, %107, %101, %98
  %143 = load i64, i64* %4, align 8, !dbg !1260
  %144 = mul i64 %143, 10, !dbg !1260
  store i64 %144, i64* %4, align 8, !dbg !1260
  br label %145, !dbg !1260

145:                                              ; preds = %142, %139
  %146 = phi i32 [ 1, %139 ], [ 0, %142 ], !dbg !1260
  %147 = icmp ne i32 %146, 0, !dbg !1260
  br i1 %147, label %158, label %148, !dbg !1260

148:                                              ; preds = %145
  %149 = load i64, i64* %4, align 8, !dbg !1260
  %150 = load i8*, i8** %2, align 8, !dbg !1260
  %151 = load i8, i8* %150, align 1, !dbg !1260
  %152 = zext i8 %151 to i32, !dbg !1260
  %153 = sub nsw i32 %152, 48, !dbg !1260
  %154 = sext i32 %153 to i64, !dbg !1260
  %155 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %149, i64 %154), !dbg !1260
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !1260
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !1260
  store i64 %157, i64* %4, align 8, !dbg !1260
  br i1 %156, label %158, label %172, !dbg !1262

158:                                              ; preds = %148, %145
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1263, metadata !DIExpression()), !dbg !1265
  %159 = load i8*, i8** %7, align 8, !dbg !1266
  %160 = call i64 @strspn(i8* noundef %159, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.62, i64 0, i64 0)) #20, !dbg !1267
  store i64 %160, i64* %9, align 8, !dbg !1265
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1268, metadata !DIExpression()), !dbg !1269
  %161 = load i8*, i8** %7, align 8, !dbg !1270
  %162 = load i64, i64* %9, align 8, !dbg !1271
  %163 = call noalias nonnull i8* @ximemdup0(i8* noundef %161, i64 noundef %162), !dbg !1272
  store i8* %163, i8** %10, align 8, !dbg !1269
  %164 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.63, i64 0, i64 0)) #18, !dbg !1273
  %165 = load i8*, i8** %10, align 8, !dbg !1273
  %166 = call i8* @quote(i8* noundef %165), !dbg !1273
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %164, i8* noundef %166), !dbg !1273
  %167 = load i8*, i8** %10, align 8, !dbg !1274
  call void @free(i8* noundef %167) #18, !dbg !1275
  store i8 0, i8* %8, align 1, !dbg !1276
  %168 = load i8*, i8** %7, align 8, !dbg !1277
  %169 = load i64, i64* %9, align 8, !dbg !1278
  %170 = getelementptr inbounds i8, i8* %168, i64 %169, !dbg !1279
  %171 = getelementptr inbounds i8, i8* %170, i64 -1, !dbg !1280
  store i8* %171, i8** %2, align 8, !dbg !1281
  br label %172, !dbg !1282

172:                                              ; preds = %158, %148
  br label %177, !dbg !1283

173:                                              ; preds = %83
  %174 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.64, i64 0, i64 0)) #18, !dbg !1284
  %175 = load i8*, i8** %2, align 8, !dbg !1284
  %176 = call i8* @quote(i8* noundef %175), !dbg !1284
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %174, i8* noundef %176), !dbg !1284
  store i8 0, i8* %8, align 1, !dbg !1286
  br label %184, !dbg !1287

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %82
  br label %179

179:                                              ; preds = %178, %69
  br label %180

180:                                              ; preds = %179, %56
  br label %181, !dbg !1288

181:                                              ; preds = %180
  %182 = load i8*, i8** %2, align 8, !dbg !1289
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !1289
  store i8* %183, i8** %2, align 8, !dbg !1289
  br label %11, !dbg !1290, !llvm.loop !1291

184:                                              ; preds = %173, %50, %42, %11
  %185 = load i8, i8* %8, align 1, !dbg !1293
  %186 = trunc i8 %185 to i1, !dbg !1293
  br i1 %186, label %187, label %220, !dbg !1295

187:                                              ; preds = %184
  %188 = load i8, i8* %3, align 1, !dbg !1296
  %189 = trunc i8 %188 to i1, !dbg !1296
  br i1 %189, label %190, label %220, !dbg !1297

190:                                              ; preds = %187
  %191 = load i8, i8* %5, align 1, !dbg !1298
  %192 = trunc i8 %191 to i1, !dbg !1298
  br i1 %192, label %193, label %203, !dbg !1301

193:                                              ; preds = %190
  %194 = load i64, i64* %4, align 8, !dbg !1302
  %195 = call i1 @set_extend_size(i64 noundef %194), !dbg !1303
  %196 = zext i1 %195 to i32, !dbg !1303
  %197 = load i8, i8* %8, align 1, !dbg !1304
  %198 = trunc i8 %197 to i1, !dbg !1304
  %199 = zext i1 %198 to i32, !dbg !1304
  %200 = and i32 %199, %196, !dbg !1304
  %201 = icmp ne i32 %200, 0, !dbg !1304
  %202 = zext i1 %201 to i8, !dbg !1304
  store i8 %202, i8* %8, align 1, !dbg !1304
  br label %219, !dbg !1305

203:                                              ; preds = %190
  %204 = load i8, i8* %6, align 1, !dbg !1306
  %205 = trunc i8 %204 to i1, !dbg !1306
  br i1 %205, label %206, label %216, !dbg !1308

206:                                              ; preds = %203
  %207 = load i64, i64* %4, align 8, !dbg !1309
  %208 = call i1 @set_increment_size(i64 noundef %207), !dbg !1310
  %209 = zext i1 %208 to i32, !dbg !1310
  %210 = load i8, i8* %8, align 1, !dbg !1311
  %211 = trunc i8 %210 to i1, !dbg !1311
  %212 = zext i1 %211 to i32, !dbg !1311
  %213 = and i32 %212, %209, !dbg !1311
  %214 = icmp ne i32 %213, 0, !dbg !1311
  %215 = zext i1 %214 to i8, !dbg !1311
  store i8 %215, i8* %8, align 1, !dbg !1311
  br label %218, !dbg !1312

216:                                              ; preds = %203
  %217 = load i64, i64* %4, align 8, !dbg !1313
  call void @add_tab_stop(i64 noundef %217), !dbg !1314
  br label %218

218:                                              ; preds = %216, %206
  br label %219

219:                                              ; preds = %218, %193
  br label %220, !dbg !1315

220:                                              ; preds = %219, %187, %184
  %221 = load i8, i8* %8, align 1, !dbg !1316
  %222 = trunc i8 %221 to i1, !dbg !1316
  br i1 %222, label %224, label %223, !dbg !1318

223:                                              ; preds = %220
  call void @exit(i32 noundef 1) #19, !dbg !1319
  unreachable, !dbg !1319

224:                                              ; preds = %220
  ret void, !dbg !1320
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8 @to_uchar(i8 noundef %0) #4 !dbg !1321 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1324, metadata !DIExpression()), !dbg !1325
  %3 = load i8, i8* %2, align 1, !dbg !1326
  ret i8 %3, !dbg !1327
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @set_extend_size(i64 noundef %0) #4 !dbg !1328 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1333, metadata !DIExpression()), !dbg !1334
  store i8 1, i8* %3, align 1, !dbg !1334
  %4 = load i64, i64* @extend_size, align 8, !dbg !1335
  %5 = icmp ne i64 %4, 0, !dbg !1335
  br i1 %5, label %6, label %8, !dbg !1337

6:                                                ; preds = %1
  %7 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.66, i64 0, i64 0)) #18, !dbg !1338
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %7), !dbg !1338
  store i8 0, i8* %3, align 1, !dbg !1340
  br label %8, !dbg !1341

8:                                                ; preds = %6, %1
  %9 = load i64, i64* %2, align 8, !dbg !1342
  store i64 %9, i64* @extend_size, align 8, !dbg !1343
  %10 = load i64, i64* @extend_size, align 8, !dbg !1344
  call void @set_max_column_width(i64 noundef %10), !dbg !1345
  %11 = load i8, i8* %3, align 1, !dbg !1346
  %12 = trunc i8 %11 to i1, !dbg !1346
  ret i1 %12, !dbg !1347
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @set_increment_size(i64 noundef %0) #4 !dbg !1348 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i8 1, i8* %3, align 1, !dbg !1352
  %4 = load i64, i64* @increment_size, align 8, !dbg !1353
  %5 = icmp ne i64 %4, 0, !dbg !1353
  br i1 %5, label %6, label %8, !dbg !1355

6:                                                ; preds = %1
  %7 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.65, i64 0, i64 0)) #18, !dbg !1356
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %7), !dbg !1356
  store i8 0, i8* %3, align 1, !dbg !1358
  br label %8, !dbg !1359

8:                                                ; preds = %6, %1
  %9 = load i64, i64* %2, align 8, !dbg !1360
  store i64 %9, i64* @increment_size, align 8, !dbg !1361
  %10 = load i64, i64* @increment_size, align 8, !dbg !1362
  call void @set_max_column_width(i64 noundef %10), !dbg !1363
  %11 = load i8, i8* %3, align 1, !dbg !1364
  %12 = trunc i8 %11 to i1, !dbg !1364
  ret i1 %12, !dbg !1365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_tab_stops() #4 !dbg !1366 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1367
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1368
  call void @validate_tab_stops(i64* noundef %1, i64 noundef %2), !dbg !1369
  %3 = load i64, i64* @first_free_tab, align 8, !dbg !1370
  %4 = icmp eq i64 %3, 0, !dbg !1372
  br i1 %4, label %5, label %20, !dbg !1373

5:                                                ; preds = %0
  %6 = load i64, i64* @extend_size, align 8, !dbg !1374
  %7 = icmp ne i64 %6, 0, !dbg !1374
  br i1 %7, label %8, label %10, !dbg !1374

8:                                                ; preds = %5
  %9 = load i64, i64* @extend_size, align 8, !dbg !1375
  br label %18, !dbg !1374

10:                                               ; preds = %5
  %11 = load i64, i64* @increment_size, align 8, !dbg !1376
  %12 = icmp ne i64 %11, 0, !dbg !1376
  br i1 %12, label %13, label %15, !dbg !1376

13:                                               ; preds = %10
  %14 = load i64, i64* @increment_size, align 8, !dbg !1377
  br label %16, !dbg !1376

15:                                               ; preds = %10
  br label %16, !dbg !1376

16:                                               ; preds = %15, %13
  %17 = phi i64 [ %14, %13 ], [ 8, %15 ], !dbg !1376
  br label %18, !dbg !1374

18:                                               ; preds = %16, %8
  %19 = phi i64 [ %9, %8 ], [ %17, %16 ], !dbg !1374
  store i64 %19, i64* @max_column_width, align 8, !dbg !1378
  store i64 %19, i64* @tab_size, align 8, !dbg !1379
  br label %35, !dbg !1380

20:                                               ; preds = %0
  %21 = load i64, i64* @first_free_tab, align 8, !dbg !1381
  %22 = icmp eq i64 %21, 1, !dbg !1383
  br i1 %22, label %23, label %33, !dbg !1384

23:                                               ; preds = %20
  %24 = load i64, i64* @extend_size, align 8, !dbg !1385
  %25 = icmp ne i64 %24, 0, !dbg !1385
  br i1 %25, label %33, label %26, !dbg !1386

26:                                               ; preds = %23
  %27 = load i64, i64* @increment_size, align 8, !dbg !1387
  %28 = icmp ne i64 %27, 0, !dbg !1387
  br i1 %28, label %33, label %29, !dbg !1388

29:                                               ; preds = %26
  %30 = load i64*, i64** @tab_list, align 8, !dbg !1389
  %31 = getelementptr inbounds i64, i64* %30, i64 0, !dbg !1389
  %32 = load i64, i64* %31, align 8, !dbg !1389
  store i64 %32, i64* @tab_size, align 8, !dbg !1390
  br label %34, !dbg !1391

33:                                               ; preds = %26, %23, %20
  store i64 0, i64* @tab_size, align 8, !dbg !1392
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %18
  ret void, !dbg !1393
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_tab_stops(i64* noundef %0, i64 noundef %1) #4 !dbg !1394 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1401, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i64 0, i64* %5, align 8, !dbg !1404
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1405, metadata !DIExpression()), !dbg !1407
  store i64 0, i64* %6, align 8, !dbg !1407
  br label %7, !dbg !1408

7:                                                ; preds = %33, %2
  %8 = load i64, i64* %6, align 8, !dbg !1409
  %9 = load i64, i64* %4, align 8, !dbg !1411
  %10 = icmp slt i64 %8, %9, !dbg !1412
  br i1 %10, label %11, label %36, !dbg !1413

11:                                               ; preds = %7
  %12 = load i64*, i64** %3, align 8, !dbg !1414
  %13 = load i64, i64* %6, align 8, !dbg !1417
  %14 = getelementptr inbounds i64, i64* %12, i64 %13, !dbg !1414
  %15 = load i64, i64* %14, align 8, !dbg !1414
  %16 = icmp eq i64 %15, 0, !dbg !1418
  br i1 %16, label %17, label %19, !dbg !1419

17:                                               ; preds = %11
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.69, i64 0, i64 0)) #18, !dbg !1420
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %18), !dbg !1420
  unreachable, !dbg !1420

19:                                               ; preds = %11
  %20 = load i64*, i64** %3, align 8, !dbg !1421
  %21 = load i64, i64* %6, align 8, !dbg !1423
  %22 = getelementptr inbounds i64, i64* %20, i64 %21, !dbg !1421
  %23 = load i64, i64* %22, align 8, !dbg !1421
  %24 = load i64, i64* %5, align 8, !dbg !1424
  %25 = icmp sle i64 %23, %24, !dbg !1425
  br i1 %25, label %26, label %28, !dbg !1426

26:                                               ; preds = %19
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15.70, i64 0, i64 0)) #18, !dbg !1427
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %27), !dbg !1427
  unreachable, !dbg !1427

28:                                               ; preds = %19
  %29 = load i64*, i64** %3, align 8, !dbg !1428
  %30 = load i64, i64* %6, align 8, !dbg !1429
  %31 = getelementptr inbounds i64, i64* %29, i64 %30, !dbg !1428
  %32 = load i64, i64* %31, align 8, !dbg !1428
  store i64 %32, i64* %5, align 8, !dbg !1430
  br label %33, !dbg !1431

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8, !dbg !1432
  %35 = add nsw i64 %34, 1, !dbg !1432
  store i64 %35, i64* %6, align 8, !dbg !1432
  br label %7, !dbg !1433, !llvm.loop !1434

36:                                               ; preds = %7
  %37 = load i64, i64* @increment_size, align 8, !dbg !1436
  %38 = icmp ne i64 %37, 0, !dbg !1436
  br i1 %38, label %39, label %44, !dbg !1438

39:                                               ; preds = %36
  %40 = load i64, i64* @extend_size, align 8, !dbg !1439
  %41 = icmp ne i64 %40, 0, !dbg !1439
  br i1 %41, label %42, label %44, !dbg !1440

42:                                               ; preds = %39
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16.71, i64 0, i64 0)) #18, !dbg !1441
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %43), !dbg !1441
  unreachable, !dbg !1441

44:                                               ; preds = %39, %36
  ret void, !dbg !1442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, i64* noundef %1, i8* noundef nonnull %2) #4 !dbg !1443 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1449, metadata !DIExpression()), !dbg !1450
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1451, metadata !DIExpression()), !dbg !1452
  %12 = load i8*, i8** %7, align 8, !dbg !1453
  store i8 0, i8* %12, align 1, !dbg !1454
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1455, metadata !DIExpression()), !dbg !1456
  %13 = load i64, i64* @tab_size, align 8, !dbg !1457
  %14 = icmp ne i64 %13, 0, !dbg !1457
  br i1 %14, label %15, label %21, !dbg !1459

15:                                               ; preds = %3
  %16 = load i64, i64* @tab_size, align 8, !dbg !1460
  %17 = load i64, i64* %5, align 8, !dbg !1461
  %18 = load i64, i64* @tab_size, align 8, !dbg !1462
  %19 = srem i64 %17, %18, !dbg !1463
  %20 = sub nsw i64 %16, %19, !dbg !1464
  store i64 %20, i64* %8, align 8, !dbg !1465
  br label %72, !dbg !1466

21:                                               ; preds = %3
  br label %22, !dbg !1467

22:                                               ; preds = %39, %21
  %23 = load i64*, i64** %6, align 8, !dbg !1469
  %24 = load i64, i64* %23, align 8, !dbg !1472
  %25 = load i64, i64* @first_free_tab, align 8, !dbg !1473
  %26 = icmp slt i64 %24, %25, !dbg !1474
  br i1 %26, label %27, label %43, !dbg !1475

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1476, metadata !DIExpression()), !dbg !1478
  %28 = load i64*, i64** @tab_list, align 8, !dbg !1479
  %29 = load i64*, i64** %6, align 8, !dbg !1480
  %30 = load i64, i64* %29, align 8, !dbg !1481
  %31 = getelementptr inbounds i64, i64* %28, i64 %30, !dbg !1479
  %32 = load i64, i64* %31, align 8, !dbg !1479
  store i64 %32, i64* %9, align 8, !dbg !1478
  %33 = load i64, i64* %5, align 8, !dbg !1482
  %34 = load i64, i64* %9, align 8, !dbg !1484
  %35 = icmp slt i64 %33, %34, !dbg !1485
  br i1 %35, label %36, label %38, !dbg !1486

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8, !dbg !1487
  store i64 %37, i64* %4, align 8, !dbg !1488
  br label %82, !dbg !1488

38:                                               ; preds = %27
  br label %39, !dbg !1489

39:                                               ; preds = %38
  %40 = load i64*, i64** %6, align 8, !dbg !1490
  %41 = load i64, i64* %40, align 8, !dbg !1491
  %42 = add nsw i64 %41, 1, !dbg !1491
  store i64 %42, i64* %40, align 8, !dbg !1491
  br label %22, !dbg !1492, !llvm.loop !1493

43:                                               ; preds = %22
  %44 = load i64, i64* @extend_size, align 8, !dbg !1495
  %45 = icmp ne i64 %44, 0, !dbg !1495
  br i1 %45, label %46, label %52, !dbg !1497

46:                                               ; preds = %43
  %47 = load i64, i64* @extend_size, align 8, !dbg !1498
  %48 = load i64, i64* %5, align 8, !dbg !1499
  %49 = load i64, i64* @extend_size, align 8, !dbg !1500
  %50 = srem i64 %48, %49, !dbg !1501
  %51 = sub nsw i64 %47, %50, !dbg !1502
  store i64 %51, i64* %8, align 8, !dbg !1503
  br label %71, !dbg !1504

52:                                               ; preds = %43
  %53 = load i64, i64* @increment_size, align 8, !dbg !1505
  %54 = icmp ne i64 %53, 0, !dbg !1505
  br i1 %54, label %55, label %68, !dbg !1507

55:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1508, metadata !DIExpression()), !dbg !1510
  %56 = load i64*, i64** @tab_list, align 8, !dbg !1511
  %57 = load i64, i64* @first_free_tab, align 8, !dbg !1512
  %58 = sub nsw i64 %57, 1, !dbg !1513
  %59 = getelementptr inbounds i64, i64* %56, i64 %58, !dbg !1511
  %60 = load i64, i64* %59, align 8, !dbg !1511
  store i64 %60, i64* %10, align 8, !dbg !1510
  %61 = load i64, i64* @increment_size, align 8, !dbg !1514
  %62 = load i64, i64* %5, align 8, !dbg !1515
  %63 = load i64, i64* %10, align 8, !dbg !1516
  %64 = sub nsw i64 %62, %63, !dbg !1517
  %65 = load i64, i64* @increment_size, align 8, !dbg !1518
  %66 = srem i64 %64, %65, !dbg !1519
  %67 = sub nsw i64 %61, %66, !dbg !1520
  store i64 %67, i64* %8, align 8, !dbg !1521
  br label %70, !dbg !1522

68:                                               ; preds = %52
  %69 = load i8*, i8** %7, align 8, !dbg !1523
  store i8 1, i8* %69, align 1, !dbg !1525
  store i64 1, i64* %8, align 8, !dbg !1526
  br label %70

70:                                               ; preds = %68, %55
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %15
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1527, metadata !DIExpression()), !dbg !1528
  %73 = load i64, i64* %5, align 8, !dbg !1529
  %74 = load i64, i64* %8, align 8, !dbg !1529
  %75 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %73, i64 %74), !dbg !1529
  %76 = extractvalue { i64, i1 } %75, 1, !dbg !1529
  %77 = extractvalue { i64, i1 } %75, 0, !dbg !1529
  store i64 %77, i64* %11, align 8, !dbg !1529
  br i1 %76, label %78, label %80, !dbg !1531

78:                                               ; preds = %72
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0)) #18, !dbg !1532
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %79), !dbg !1532
  unreachable, !dbg !1532

80:                                               ; preds = %72
  %81 = load i64, i64* %11, align 8, !dbg !1533
  store i64 %81, i64* %4, align 8, !dbg !1534
  br label %82, !dbg !1534

82:                                               ; preds = %80, %36
  %83 = load i64, i64* %4, align 8, !dbg !1535
  ret i64 %83, !dbg !1535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_file_list(i8** noundef %0) #4 !dbg !1536 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i8 0, i8* @have_read_stdin, align 1, !dbg !1541
  %3 = load i8**, i8*** %2, align 8, !dbg !1542
  %4 = icmp ne i8** %3, null, !dbg !1542
  br i1 %4, label %6, label %5, !dbg !1544

5:                                                ; preds = %1
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8*** @file_list, align 8, !dbg !1545
  br label %8, !dbg !1546

6:                                                ; preds = %1
  %7 = load i8**, i8*** %2, align 8, !dbg !1547
  store i8** %7, i8*** @file_list, align 8, !dbg !1548
  br label %8

8:                                                ; preds = %6, %5
  ret void, !dbg !1549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %0) #4 !dbg !94 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1550, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1552, metadata !DIExpression()), !dbg !1553
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1554
  %7 = icmp ne %struct._IO_FILE* %6, null, !dbg !1554
  br i1 %7, label %8, label %36, !dbg !1556

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1557, metadata !DIExpression()), !dbg !1559
  %9 = call i32* @__errno_location() #21, !dbg !1560
  %10 = load i32, i32* %9, align 4, !dbg !1560
  store i32 %10, i32* %5, align 4, !dbg !1559
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1561
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !1561
  %13 = icmp ne i32 %12, 0, !dbg !1561
  br i1 %13, label %15, label %14, !dbg !1563

14:                                               ; preds = %8
  store i32 0, i32* %5, align 4, !dbg !1564
  br label %15, !dbg !1565

15:                                               ; preds = %14, %8
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1566
  %17 = call i1 @streq(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.77, i64 0, i64 0)), !dbg !1568
  br i1 %17, label %18, label %20, !dbg !1569

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1570
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %19) #18, !dbg !1570
  br label %28, !dbg !1570

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1571
  %22 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %21), !dbg !1573
  %23 = icmp ne i32 %22, 0, !dbg !1574
  br i1 %23, label %24, label %27, !dbg !1575

24:                                               ; preds = %20
  %25 = call i32* @__errno_location() #21, !dbg !1576
  %26 = load i32, i32* %25, align 4, !dbg !1576
  store i32 %26, i32* %5, align 4, !dbg !1577
  br label %27, !dbg !1578

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %5, align 4, !dbg !1579
  %30 = icmp ne i32 %29, 0, !dbg !1579
  br i1 %30, label %31, label %35, !dbg !1581

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !1582
  %33 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1582
  %34 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %33), !dbg !1582
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.80, i64 0, i64 0), i8* noundef %34), !dbg !1582
  store i32 1, i32* @exit_status, align 4, !dbg !1584
  br label %35, !dbg !1585

35:                                               ; preds = %31, %28
  br label %36, !dbg !1586

36:                                               ; preds = %35, %1
  br label %37, !dbg !1587

37:                                               ; preds = %57, %36
  %38 = load i8**, i8*** @file_list, align 8, !dbg !1588
  %39 = getelementptr inbounds i8*, i8** %38, i32 1, !dbg !1588
  store i8** %39, i8*** @file_list, align 8, !dbg !1588
  %40 = load i8*, i8** %38, align 8, !dbg !1589
  store i8* %40, i8** %4, align 8, !dbg !1590
  %41 = icmp ne i8* %40, null, !dbg !1591
  br i1 %41, label %42, label %62, !dbg !1587

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8, !dbg !1592
  %44 = call i1 @streq(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.77, i64 0, i64 0)), !dbg !1595
  br i1 %44, label %45, label %47, !dbg !1596

45:                                               ; preds = %42
  store i8 1, i8* @have_read_stdin, align 1, !dbg !1597
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1599
  store %struct._IO_FILE* %46, %struct._IO_FILE** %3, align 8, !dbg !1600
  br label %50, !dbg !1601

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8, !dbg !1602
  %49 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.81, i64 0, i64 0)), !dbg !1603
  store %struct._IO_FILE* %49, %struct._IO_FILE** %3, align 8, !dbg !1604
  br label %50

50:                                               ; preds = %47, %45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1605
  %52 = icmp ne %struct._IO_FILE* %51, null, !dbg !1605
  br i1 %52, label %53, label %57, !dbg !1607

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8, !dbg !1608
  store i8* %54, i8** @next_file.prev_file, align 8, !dbg !1610
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1611
  call void @fadvise(%struct._IO_FILE* noundef %55, i32 noundef 2), !dbg !1612
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1613
  store %struct._IO_FILE* %56, %struct._IO_FILE** %2, align 8, !dbg !1614
  br label %63, !dbg !1614

57:                                               ; preds = %50
  %58 = call i32* @__errno_location() #21, !dbg !1615
  %59 = load i32, i32* %58, align 4, !dbg !1615
  %60 = load i8*, i8** %4, align 8, !dbg !1615
  %61 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %60), !dbg !1615
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.80, i64 0, i64 0), i8* noundef %61), !dbg !1615
  store i32 1, i32* @exit_status, align 4, !dbg !1616
  br label %37, !dbg !1587, !llvm.loop !1617

62:                                               ; preds = %37
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1619
  br label %63, !dbg !1619

63:                                               ; preds = %62, %53
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1620
  ret %struct._IO_FILE* %64, !dbg !1620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_file_list_stdin() #4 !dbg !1621 {
  %1 = load i8, i8* @have_read_stdin, align 1, !dbg !1622
  %2 = trunc i8 %1 to i1, !dbg !1622
  br i1 %2, label %3, label %10, !dbg !1624

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1625
  %5 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %4), !dbg !1626
  %6 = icmp ne i32 %5, 0, !dbg !1627
  br i1 %6, label %7, label %10, !dbg !1628

7:                                                ; preds = %3
  %8 = call i32* @__errno_location() #21, !dbg !1629
  %9 = load i32, i32* %8, align 4, !dbg !1629
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.77, i64 0, i64 0)), !dbg !1629
  unreachable, !dbg !1629

10:                                               ; preds = %3, %0
  ret void, !dbg !1630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_tab_list_info(i8* noundef %0) #4 !dbg !1631 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1632, metadata !DIExpression()), !dbg !1633
  %3 = load i8*, i8** %2, align 8, !dbg !1634
  %4 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9.86, i64 0, i64 0)) #18, !dbg !1635
  call void @oputs_.87(i8* noundef %3, i8* noundef %4), !dbg !1636
  %5 = call i8* @gettext(i8* noundef getelementptr inbounds ([305 x i8], [305 x i8]* @.str.10.88, i64 0, i64 0)) #18, !dbg !1637
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1637
  %7 = call i32 @fputs_unlocked(i8* noundef %5, %struct._IO_FILE* noundef %6), !dbg !1637
  ret void, !dbg !1638
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_.87(i8* noundef %0, i8* noundef %1) #4 !dbg !188 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1641, metadata !DIExpression()), !dbg !1642
  %14 = load i32, i32* @oputs_.help_no_sgr.89, align 4, !dbg !1643
  %15 = icmp eq i32 %14, -1, !dbg !1645
  br i1 %15, label %16, label %30, !dbg !1646

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1647, metadata !DIExpression()), !dbg !1649
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.90, i64 0, i64 0)) #18, !dbg !1650
  store i8* %17, i8** %5, align 8, !dbg !1649
  %18 = load i8*, i8** %5, align 8, !dbg !1651
  %19 = icmp ne i8* %18, null, !dbg !1651
  br i1 %19, label %20, label %27, !dbg !1652

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !1653
  %22 = load i8, i8* %21, align 1, !dbg !1654
  %23 = icmp ne i8 %22, 0, !dbg !1654
  br i1 %23, label %24, label %27, !dbg !1655

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !1656
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.91, i64 0, i64 0)), !dbg !1657
  br label %27, !dbg !1655

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !1655
  store i32 %29, i32* @oputs_.help_no_sgr.89, align 4, !dbg !1658
  br label %30, !dbg !1659

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr.89, align 4, !dbg !1660
  %32 = icmp ne i32 %31, 0, !dbg !1660
  br i1 %32, label %33, label %37, !dbg !1662

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !1663
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1663
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !1663
  br label %274, !dbg !1665

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1666, metadata !DIExpression()), !dbg !1667
  store i8 1, i8* %6, align 1, !dbg !1667
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1668, metadata !DIExpression()), !dbg !1669
  %38 = load i8*, i8** %4, align 8, !dbg !1670
  %39 = load i8*, i8** %4, align 8, !dbg !1671
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19.92, i64 0, i64 0)) #20, !dbg !1672
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !1673
  store i8* %41, i8** %7, align 8, !dbg !1669
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1674, metadata !DIExpression()), !dbg !1675
  %42 = load i8*, i8** %4, align 8, !dbg !1676
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !1677
  store i8* %43, i8** %8, align 8, !dbg !1675
  %44 = load i8*, i8** %8, align 8, !dbg !1678
  %45 = icmp ne i8* %44, null, !dbg !1678
  br i1 %45, label %48, label %46, !dbg !1680

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !1681
  store i8* %47, i8** %8, align 8, !dbg !1683
  store i8 0, i8* %6, align 1, !dbg !1684
  br label %89, !dbg !1685

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !1686
  %50 = load i8*, i8** %7, align 8, !dbg !1688
  %51 = icmp ne i8* %49, %50, !dbg !1689
  br i1 %51, label %52, label %88, !dbg !1690

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1691, metadata !DIExpression()), !dbg !1693
  %53 = load i8*, i8** %7, align 8, !dbg !1694
  store i8* %53, i8** %9, align 8, !dbg !1693
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1695, metadata !DIExpression()), !dbg !1696
  store i64 0, i64* %10, align 8, !dbg !1696
  br label %54, !dbg !1697

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !1698
  %56 = load i8*, i8** %8, align 8, !dbg !1699
  %57 = icmp ult i8* %55, %56, !dbg !1700
  br i1 %57, label %58, label %61, !dbg !1701

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !1702
  %60 = icmp ult i64 %59, 2, !dbg !1703
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !1704
  br i1 %62, label %63, label %82, !dbg !1697

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !1705
  %65 = load i16*, i16** %64, align 8, !dbg !1705
  %66 = load i8*, i8** %9, align 8, !dbg !1705
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !1705
  store i8* %67, i8** %9, align 8, !dbg !1705
  %68 = load i8, i8* %66, align 1, !dbg !1705
  %69 = zext i8 %68 to i32, !dbg !1705
  %70 = sext i32 %69 to i64, !dbg !1705
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !1705
  %72 = load i16, i16* %71, align 2, !dbg !1705
  %73 = zext i16 %72 to i32, !dbg !1705
  %74 = and i32 %73, 8192, !dbg !1705
  %75 = icmp ne i32 %74, 0, !dbg !1706
  %76 = xor i1 %75, true, !dbg !1706
  %77 = xor i1 %76, true, !dbg !1707
  %78 = zext i1 %77 to i32, !dbg !1707
  %79 = sext i32 %78 to i64, !dbg !1707
  %80 = load i64, i64* %10, align 8, !dbg !1708
  %81 = add i64 %80, %79, !dbg !1708
  store i64 %81, i64* %10, align 8, !dbg !1708
  br label %54, !dbg !1697, !llvm.loop !1709

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !1710
  %84 = icmp eq i64 %83, 2, !dbg !1712
  br i1 %84, label %85, label %87, !dbg !1713

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !1714
  store i8* %86, i8** %8, align 8, !dbg !1716
  store i8 0, i8* %6, align 1, !dbg !1717
  br label %87, !dbg !1718

87:                                               ; preds = %85, %82
  br label %88, !dbg !1719

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1720, metadata !DIExpression()), !dbg !1721
  %90 = load i8*, i8** %8, align 8, !dbg !1722
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.93, i64 0, i64 0)) #20, !dbg !1723
  store i64 %91, i64* %11, align 8, !dbg !1721
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1724, metadata !DIExpression()), !dbg !1725
  %92 = load i8*, i8** %8, align 8, !dbg !1726
  %93 = load i64, i64* %11, align 8, !dbg !1727
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1728
  store i8* %94, i8** %12, align 8, !dbg !1725
  br label %95, !dbg !1729

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !1730
  %97 = load i8, i8* %96, align 1, !dbg !1731
  %98 = zext i8 %97 to i32, !dbg !1731
  %99 = icmp ne i32 %98, 0, !dbg !1731
  br i1 %99, label %100, label %105, !dbg !1732

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !1733
  %102 = load i8, i8* %101, align 1, !dbg !1734
  %103 = zext i8 %102 to i32, !dbg !1734
  %104 = icmp ne i32 %103, 10, !dbg !1735
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !1736
  br i1 %106, label %107, label %164, !dbg !1729

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !1737
  %109 = load i8, i8* %108, align 1, !dbg !1740
  %110 = zext i8 %109 to i32, !dbg !1740
  %111 = icmp eq i32 %110, 45, !dbg !1741
  br i1 %111, label %112, label %119, !dbg !1742

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !1743
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !1744
  %115 = load i8, i8* %114, align 1, !dbg !1745
  %116 = zext i8 %115 to i32, !dbg !1745
  %117 = icmp eq i32 %116, 45, !dbg !1746
  br i1 %117, label %118, label %119, !dbg !1747

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !1748
  br label %119, !dbg !1749

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !1750
  %121 = load i16*, i16** %120, align 8, !dbg !1750
  %122 = load i8*, i8** %12, align 8, !dbg !1750
  %123 = load i8, i8* %122, align 1, !dbg !1750
  %124 = zext i8 %123 to i32, !dbg !1750
  %125 = sext i32 %124 to i64, !dbg !1750
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !1750
  %127 = load i16, i16* %126, align 2, !dbg !1750
  %128 = zext i16 %127 to i32, !dbg !1750
  %129 = and i32 %128, 8192, !dbg !1750
  %130 = icmp ne i32 %129, 0, !dbg !1750
  br i1 %130, label %131, label %161, !dbg !1752

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !1753
  %133 = load i8, i8* %132, align 1, !dbg !1756
  %134 = zext i8 %133 to i32, !dbg !1756
  %135 = icmp eq i32 %134, 9, !dbg !1757
  br i1 %135, label %149, label %136, !dbg !1758

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !1759
  %138 = load i16*, i16** %137, align 8, !dbg !1759
  %139 = load i8*, i8** %12, align 8, !dbg !1759
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1759
  %141 = load i8, i8* %140, align 1, !dbg !1759
  %142 = zext i8 %141 to i32, !dbg !1759
  %143 = sext i32 %142 to i64, !dbg !1759
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !1759
  %145 = load i16, i16* %144, align 2, !dbg !1759
  %146 = zext i16 %145 to i32, !dbg !1759
  %147 = and i32 %146, 8192, !dbg !1759
  %148 = icmp ne i32 %147, 0, !dbg !1759
  br i1 %148, label %149, label %150, !dbg !1760

149:                                              ; preds = %136, %131
  br label %164, !dbg !1761

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !1762
  %152 = trunc i8 %151 to i1, !dbg !1762
  br i1 %152, label %160, label %153, !dbg !1764

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !1765
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1766
  %156 = load i8, i8* %155, align 1, !dbg !1767
  %157 = zext i8 %156 to i32, !dbg !1767
  %158 = icmp ne i32 %157, 45, !dbg !1768
  br i1 %158, label %159, label %160, !dbg !1769

159:                                              ; preds = %153
  br label %164, !dbg !1770

160:                                              ; preds = %153, %150
  br label %161, !dbg !1771

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !1772
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !1772
  store i8* %163, i8** %12, align 8, !dbg !1772
  br label %95, !dbg !1729, !llvm.loop !1773

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !1775
  %166 = load i8*, i8** %7, align 8, !dbg !1775
  %167 = load i8*, i8** %4, align 8, !dbg !1775
  %168 = ptrtoint i8* %166 to i64, !dbg !1775
  %169 = ptrtoint i8* %167 to i64, !dbg !1775
  %170 = sub i64 %168, %169, !dbg !1775
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1775
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !1775
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1776, metadata !DIExpression()), !dbg !1777
  %173 = load i8*, i8** %3, align 8, !dbg !1778
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.94, i64 0, i64 0)), !dbg !1779
  br i1 %174, label %175, label %176, !dbg !1779

175:                                              ; preds = %164
  br label %232, !dbg !1779

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !1780
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23.95, i64 0, i64 0)), !dbg !1781
  br i1 %178, label %179, label %180, !dbg !1781

179:                                              ; preds = %176
  br label %230, !dbg !1781

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !1782
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.96, i64 0, i64 0)), !dbg !1783
  br i1 %182, label %183, label %184, !dbg !1783

183:                                              ; preds = %180
  br label %228, !dbg !1783

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !1784
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26.97, i64 0, i64 0)), !dbg !1785
  br i1 %186, label %187, label %188, !dbg !1785

187:                                              ; preds = %184
  br label %226, !dbg !1785

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !1786
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28.98, i64 0, i64 0)), !dbg !1787
  br i1 %190, label %191, label %192, !dbg !1787

191:                                              ; preds = %188
  br label %224, !dbg !1787

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !1788
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.99, i64 0, i64 0)), !dbg !1789
  br i1 %194, label %195, label %196, !dbg !1789

195:                                              ; preds = %192
  br label %222, !dbg !1789

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !1790
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30.100, i64 0, i64 0)), !dbg !1791
  br i1 %198, label %199, label %200, !dbg !1791

199:                                              ; preds = %196
  br label %220, !dbg !1791

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !1792
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.101, i64 0, i64 0)), !dbg !1793
  br i1 %202, label %203, label %204, !dbg !1793

203:                                              ; preds = %200
  br label %218, !dbg !1793

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !1794
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.102, i64 0, i64 0)), !dbg !1795
  br i1 %206, label %207, label %208, !dbg !1795

207:                                              ; preds = %204
  br label %216, !dbg !1795

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !1796
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.103, i64 0, i64 0)), !dbg !1797
  br i1 %210, label %211, label %212, !dbg !1797

211:                                              ; preds = %208
  br label %214, !dbg !1797

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !1798
  br label %214, !dbg !1797

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !1797
  br label %216, !dbg !1795

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !1795
  br label %218, !dbg !1793

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !1793
  br label %220, !dbg !1791

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !1791
  br label %222, !dbg !1789

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !1789
  br label %224, !dbg !1787

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !1787
  br label %226, !dbg !1785

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.104, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !1785
  br label %228, !dbg !1783

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.105, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !1783
  br label %230, !dbg !1781

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.105, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !1781
  br label %232, !dbg !1779

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.106, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !1779
  store i8* %233, i8** %13, align 8, !dbg !1777
  %234 = load i8*, i8** %8, align 8, !dbg !1799
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34.107, i64 0, i64 0), i64 noundef 6) #20, !dbg !1799
  %236 = icmp eq i32 %235, 0, !dbg !1799
  br i1 %236, label %241, label %237, !dbg !1801

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !1802
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35.108, i64 0, i64 0), i64 noundef 9) #20, !dbg !1802
  %240 = icmp eq i32 %239, 0, !dbg !1802
  br i1 %240, label %241, label %248, !dbg !1803

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !1804
  %243 = load i8*, i8** %13, align 8, !dbg !1806
  %244 = load i64, i64* %11, align 8, !dbg !1807
  %245 = trunc i64 %244 to i32, !dbg !1808
  %246 = load i8*, i8** %8, align 8, !dbg !1809
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37.110, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !1810
  br label %254, !dbg !1811

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !1812
  %250 = load i64, i64* %11, align 8, !dbg !1814
  %251 = trunc i64 %250 to i32, !dbg !1815
  %252 = load i8*, i8** %8, align 8, !dbg !1816
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39.112, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !1817
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1818
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40.113, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !1818
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1819
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.114, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !1819
  %259 = load i8*, i8** %7, align 8, !dbg !1820
  %260 = load i8*, i8** %12, align 8, !dbg !1820
  %261 = load i8*, i8** %7, align 8, !dbg !1820
  %262 = ptrtoint i8* %260 to i64, !dbg !1820
  %263 = ptrtoint i8* %261 to i64, !dbg !1820
  %264 = sub i64 %262, %263, !dbg !1820
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1820
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !1820
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1821
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42.115, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !1821
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1822
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.116, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !1822
  %271 = load i8*, i8** %12, align 8, !dbg !1823
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1823
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !1823
  br label %274, !dbg !1824

274:                                              ; preds = %254, %33
  ret void, !dbg !1824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #4 !dbg !1825 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1829, metadata !DIExpression()), !dbg !1830
  %4 = load i32, i32* %3, align 4, !dbg !1831
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1832

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1833
  br label %7, !dbg !1833

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1835
  br label %7, !dbg !1835

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1836
  ret i1 %8, !dbg !1836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 !dbg !1837 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1838, metadata !DIExpression()), !dbg !1839
  %4 = load i32, i32* %3, align 4, !dbg !1840
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1841

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1842
  br label %7, !dbg !1842

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1844
  br label %7, !dbg !1844

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1845
  ret i1 %8, !dbg !1845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 !dbg !1846 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1847, metadata !DIExpression()), !dbg !1848
  %4 = load i32, i32* %3, align 4, !dbg !1849
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1850

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1851
  br label %7, !dbg !1851

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1853
  br label %7, !dbg !1853

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1854
  ret i1 %8, !dbg !1854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 !dbg !1855 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1856, metadata !DIExpression()), !dbg !1857
  %3 = load i32, i32* %2, align 4, !dbg !1858
  %4 = icmp eq i32 %3, 32, !dbg !1859
  br i1 %4, label %8, label %5, !dbg !1860

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1861
  %7 = icmp eq i32 %6, 9, !dbg !1862
  br label %8, !dbg !1860

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !1863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 !dbg !1864 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1865, metadata !DIExpression()), !dbg !1866
  %4 = load i32, i32* %3, align 4, !dbg !1867
  switch i32 %4, label %6 [
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
  ], !dbg !1868

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1869
  br label %7, !dbg !1869

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1871
  br label %7, !dbg !1871

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1872
  ret i1 %8, !dbg !1872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 !dbg !1873 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1874, metadata !DIExpression()), !dbg !1875
  %4 = load i32, i32* %3, align 4, !dbg !1876
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
  ], !dbg !1877

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1878
  br label %7, !dbg !1878

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1880
  br label %7, !dbg !1880

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1881
  ret i1 %8, !dbg !1881
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 !dbg !1882 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1883, metadata !DIExpression()), !dbg !1884
  %4 = load i32, i32* %3, align 4, !dbg !1885
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1886

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1887
  br label %7, !dbg !1887

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1889
  br label %7, !dbg !1889

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1890
  ret i1 %8, !dbg !1890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 !dbg !1891 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1892, metadata !DIExpression()), !dbg !1893
  %4 = load i32, i32* %3, align 4, !dbg !1894
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !1895

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1896
  br label %7, !dbg !1896

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1898
  br label %7, !dbg !1898

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1899
  ret i1 %8, !dbg !1899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 !dbg !1900 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1901, metadata !DIExpression()), !dbg !1902
  %4 = load i32, i32* %3, align 4, !dbg !1903
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1904

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1905
  br label %7, !dbg !1905

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1907
  br label %7, !dbg !1907

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1908
  ret i1 %8, !dbg !1908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 !dbg !1909 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1910, metadata !DIExpression()), !dbg !1911
  %4 = load i32, i32* %3, align 4, !dbg !1912
  switch i32 %4, label %6 [
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
  ], !dbg !1913

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1914
  br label %7, !dbg !1914

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1916
  br label %7, !dbg !1916

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1917
  ret i1 %8, !dbg !1917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 !dbg !1918 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1919, metadata !DIExpression()), !dbg !1920
  %4 = load i32, i32* %3, align 4, !dbg !1921
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !1922

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1923
  br label %7, !dbg !1923

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1925
  br label %7, !dbg !1925

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1926
  ret i1 %8, !dbg !1926
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 !dbg !1927 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1928, metadata !DIExpression()), !dbg !1929
  %4 = load i32, i32* %3, align 4, !dbg !1930
  switch i32 %4, label %6 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1931

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1932
  br label %7, !dbg !1932

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1934
  br label %7, !dbg !1934

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1935
  ret i1 %8, !dbg !1935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 !dbg !1936 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1937, metadata !DIExpression()), !dbg !1938
  %4 = load i32, i32* %3, align 4, !dbg !1939
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
  ], !dbg !1940

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1941
  br label %7, !dbg !1941

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1943
  br label %7, !dbg !1943

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1944
  ret i1 %8, !dbg !1944
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 !dbg !1945 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1948, metadata !DIExpression()), !dbg !1949
  %4 = load i32, i32* %3, align 4, !dbg !1950
  switch i32 %4, label %9 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !1951

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1952
  %7 = sub nsw i32 %6, 65, !dbg !1954
  %8 = add nsw i32 %7, 97, !dbg !1955
  store i32 %8, i32* %2, align 4, !dbg !1956
  br label %11, !dbg !1956

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1957
  store i32 %10, i32* %2, align 4, !dbg !1958
  br label %11, !dbg !1958

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1959
  ret i32 %12, !dbg !1959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 !dbg !1960 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1961, metadata !DIExpression()), !dbg !1962
  %4 = load i32, i32* %3, align 4, !dbg !1963
  switch i32 %4, label %9 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !1964

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1965
  %7 = sub nsw i32 %6, 97, !dbg !1967
  %8 = add nsw i32 %7, 65, !dbg !1968
  store i32 %8, i32* %2, align 4, !dbg !1969
  br label %11, !dbg !1969

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1970
  store i32 %10, i32* %2, align 4, !dbg !1971
  br label %11, !dbg !1971

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1972
  ret i32 %12, !dbg !1972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isblank(i32 noundef %0) #4 !dbg !1973 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1979, metadata !DIExpression()), !dbg !1980
  %3 = load i32, i32* %2, align 4, !dbg !1981
  %4 = call i32 @iswblank(i32 noundef %3) #18, !dbg !1982
  ret i32 %4, !dbg !1983
}

; Function Attrs: nounwind
declare i32 @iswblank(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32width(i32 noundef %0) #4 !dbg !1984 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1987, metadata !DIExpression()), !dbg !1988
  %3 = load i32, i32* %2, align 4, !dbg !1989
  %4 = call i32 @wcwidth(i32 noundef %3) #18, !dbg !1990
  ret i32 %4, !dbg !1991
}

; Function Attrs: nounwind
declare i32 @wcwidth(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1992 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1993, metadata !DIExpression()), !dbg !1994
  %3 = load i8*, i8** %2, align 8, !dbg !1995
  store i8* %3, i8** @file_name, align 8, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1998 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2001, metadata !DIExpression()), !dbg !2002
  %4 = load i8, i8* %2, align 1, !dbg !2003
  %5 = trunc i8 %4 to i1, !dbg !2003
  %6 = zext i1 %5 to i8, !dbg !2004
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !2004
  ret void, !dbg !2005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !2006 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2007
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !2009
  %4 = icmp ne i32 %3, 0, !dbg !2010
  br i1 %4, label %5, label %28, !dbg !2011

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2012
  %7 = trunc i8 %6 to i1, !dbg !2012
  br i1 %7, label %8, label %12, !dbg !2013

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !2014
  %10 = load i32, i32* %9, align 4, !dbg !2014
  %11 = icmp eq i32 %10, 32, !dbg !2015
  br i1 %11, label %28, label %12, !dbg !2016

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2017, metadata !DIExpression()), !dbg !2019
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.129, i64 0, i64 0)) #18, !dbg !2020
  store i8* %13, i8** %1, align 8, !dbg !2019
  %14 = load i8*, i8** @file_name, align 8, !dbg !2021
  %15 = icmp ne i8* %14, null, !dbg !2021
  br i1 %15, label %16, label %22, !dbg !2023

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !2024
  %18 = load i32, i32* %17, align 4, !dbg !2024
  %19 = load i8*, i8** @file_name, align 8, !dbg !2024
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !2024
  %21 = load i8*, i8** %1, align 8, !dbg !2024
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !2024
  br label %26, !dbg !2024

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !2025
  %24 = load i32, i32* %23, align 4, !dbg !2025
  %25 = load i8*, i8** %1, align 8, !dbg !2025
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.131, i64 0, i64 0), i8* noundef %25), !dbg !2025
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2026
  call void @_exit(i32 noundef %27) #22, !dbg !2027
  unreachable, !dbg !2027

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2028
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !2030
  %31 = icmp ne i32 %30, 0, !dbg !2031
  br i1 %31, label %32, label %34, !dbg !2032

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !2033
  call void @_exit(i32 noundef %33) #22, !dbg !2034
  unreachable, !dbg !2034

34:                                               ; preds = %28
  ret void, !dbg !2035
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !2036 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2039, metadata !DIExpression()), !dbg !2040
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2041, metadata !DIExpression()), !dbg !2040
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2042, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !2043, metadata !DIExpression()), !dbg !2040
  call void @flush_stdout(), !dbg !2044
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2045
  %10 = icmp ne void ()* %9, null, !dbg !2045
  br i1 %10, label %11, label %13, !dbg !2047

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2048
  call void %12(), !dbg !2049
  br label %17, !dbg !2049

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2050
  %15 = call i8* @getprogname() #20, !dbg !2052
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i8* noundef %15), !dbg !2053
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !2054
  %19 = load i32, i32* %6, align 4, !dbg !2054
  %20 = load i8*, i8** %7, align 8, !dbg !2054
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2054
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !2054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !2054
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !2054
  ret void, !dbg !2055
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !2056 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2057, metadata !DIExpression()), !dbg !2058
  store i32 1, i32* %1, align 4, !dbg !2059
  %2 = load i32, i32* %1, align 4, !dbg !2060
  %3 = icmp sle i32 0, %2, !dbg !2062
  br i1 %3, label %4, label %11, !dbg !2063

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !2064
  %6 = call i32 @is_open(i32 noundef %5), !dbg !2065
  %7 = icmp ne i32 %6, 0, !dbg !2065
  br i1 %7, label %8, label %11, !dbg !2066

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2067
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !2067
  br label %11, !dbg !2067

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !2068
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !2069 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2072, metadata !DIExpression()), !dbg !2071
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2073, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !2074, metadata !DIExpression()), !dbg !2071
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2075
  %10 = load i8*, i8** %7, align 8, !dbg !2076
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2077
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !2077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !2077
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !2077
  %14 = load i32, i32* @error_message_count, align 4, !dbg !2078
  %15 = add i32 %14, 1, !dbg !2078
  store i32 %15, i32* @error_message_count, align 4, !dbg !2078
  %16 = load i32, i32* %6, align 4, !dbg !2079
  %17 = icmp ne i32 %16, 0, !dbg !2079
  br i1 %17, label %18, label %20, !dbg !2081

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !2082
  call void @print_errno_message(i32 noundef %19), !dbg !2083
  br label %20, !dbg !2083

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2084
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !2084
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2085
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !2085
  %25 = load i32, i32* %5, align 4, !dbg !2086
  %26 = icmp ne i32 %25, 0, !dbg !2086
  br i1 %26, label %27, label %29, !dbg !2088

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !2089
  call void @exit(i32 noundef %28) #19, !dbg !2090
  unreachable, !dbg !2090

29:                                               ; preds = %20
  ret void, !dbg !2091
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !2092 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !2097, metadata !DIExpression()), !dbg !2101
  %5 = load i32, i32* %2, align 4, !dbg !2102
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !2103
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !2104
  store i8* %7, i8** %3, align 8, !dbg !2105
  %8 = load i8*, i8** %3, align 8, !dbg !2106
  %9 = icmp ne i8* %8, null, !dbg !2106
  br i1 %9, label %12, label %10, !dbg !2108

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.134, i64 0, i64 0)) #18, !dbg !2109
  store i8* %11, i8** %3, align 8, !dbg !2110
  br label %12, !dbg !2111

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2112
  %14 = load i8*, i8** %3, align 8, !dbg !2113
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.135, i64 0, i64 0), i8* noundef %14), !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !2116 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2117, metadata !DIExpression()), !dbg !2118
  %3 = load i32, i32* %2, align 4, !dbg !2119
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !2120
  %5 = icmp sle i32 0, %4, !dbg !2121
  %6 = zext i1 %5 to i32, !dbg !2121
  ret i32 %6, !dbg !2122
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !2123 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !2132, metadata !DIExpression()), !dbg !2133
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2134
  call void @llvm.va_start(i8* %9), !dbg !2134
  %10 = load i32, i32* %4, align 4, !dbg !2135
  %11 = load i32, i32* %5, align 4, !dbg !2135
  %12 = load i8*, i8** %6, align 8, !dbg !2135
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2135
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !2135
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !2135
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2136
  call void @llvm.va_end(i8* %15), !dbg !2136
  ret void, !dbg !2137
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !209 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2140, metadata !DIExpression()), !dbg !2139
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2141, metadata !DIExpression()), !dbg !2139
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2142, metadata !DIExpression()), !dbg !2139
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2143, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2144, metadata !DIExpression()), !dbg !2139
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !2145
  %14 = icmp ne i32 %13, 0, !dbg !2145
  br i1 %14, label %15, label %38, !dbg !2147

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2148
  %17 = load i32, i32* %10, align 4, !dbg !2151
  %18 = icmp eq i32 %16, %17, !dbg !2152
  br i1 %18, label %19, label %35, !dbg !2153

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !2154
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2155
  %22 = icmp eq i8* %20, %21, !dbg !2156
  br i1 %22, label %34, label %23, !dbg !2157

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2158
  %25 = icmp ne i8* %24, null, !dbg !2159
  br i1 %25, label %26, label %35, !dbg !2160

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !2161
  %28 = icmp ne i8* %27, null, !dbg !2162
  br i1 %28, label %29, label %35, !dbg !2163

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2164
  %31 = load i8*, i8** %9, align 8, !dbg !2165
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !2166
  %33 = icmp eq i32 %32, 0, !dbg !2167
  br i1 %33, label %34, label %35, !dbg !2168

34:                                               ; preds = %29, %19
  br label %61, !dbg !2169

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !2170
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !2171
  %37 = load i32, i32* %10, align 4, !dbg !2172
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !2173
  br label %38, !dbg !2174

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !2175
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2176
  %40 = icmp ne void ()* %39, null, !dbg !2176
  br i1 %40, label %41, label %43, !dbg !2178

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2179
  call void %42(), !dbg !2180
  br label %47, !dbg !2180

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2181
  %45 = call i8* @getprogname() #20, !dbg !2183
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.138, i64 0, i64 0), i8* noundef %45), !dbg !2184
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2185
  %49 = load i8*, i8** %9, align 8, !dbg !2186
  %50 = icmp ne i8* %49, null, !dbg !2187
  %51 = zext i1 %50 to i64, !dbg !2186
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.139, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.140, i64 0, i64 0), !dbg !2186
  %53 = load i8*, i8** %9, align 8, !dbg !2188
  %54 = load i32, i32* %10, align 4, !dbg !2189
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !2190
  %56 = load i32, i32* %7, align 4, !dbg !2191
  %57 = load i32, i32* %8, align 4, !dbg !2191
  %58 = load i8*, i8** %11, align 8, !dbg !2191
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !2191
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !2191
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !2191
  br label %61, !dbg !2192

61:                                               ; preds = %47, %34
  ret void, !dbg !2192
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !2193 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2196, metadata !DIExpression()), !dbg !2197
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2200, metadata !DIExpression()), !dbg !2201
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !2206, metadata !DIExpression()), !dbg !2207
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2208
  call void @llvm.va_start(i8* %13), !dbg !2208
  %14 = load i32, i32* %6, align 4, !dbg !2209
  %15 = load i32, i32* %7, align 4, !dbg !2209
  %16 = load i8*, i8** %8, align 8, !dbg !2209
  %17 = load i32, i32* %9, align 4, !dbg !2209
  %18 = load i8*, i8** %10, align 8, !dbg !2209
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !2209
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !2209
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !2209
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2210
  call void @llvm.va_end(i8* %21), !dbg !2210
  ret void, !dbg !2211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 !dbg !2212 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2217, metadata !DIExpression()), !dbg !2218
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2223, metadata !DIExpression()), !dbg !2224
  %9 = load i32, i32* %5, align 4, !dbg !2225
  %10 = load i64, i64* %6, align 8, !dbg !2225
  %11 = load i64, i64* %7, align 8, !dbg !2225
  %12 = load i32, i32* %8, align 4, !dbg !2225
  %13 = call i32 @posix_fadvise(i32 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12) #18, !dbg !2225
  ret void, !dbg !2226
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) #4 !dbg !2227 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2266, metadata !DIExpression()), !dbg !2267
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2268
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !2268
  br i1 %6, label %7, label %11, !dbg !2270

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2271
  %9 = call i32 @fileno(%struct._IO_FILE* noundef %8) #18, !dbg !2272
  %10 = load i32, i32* %4, align 4, !dbg !2273
  call void @fdadvise(i32 noundef %9, i64 noundef 0, i64 noundef 0, i32 noundef %10), !dbg !2274
  br label %11, !dbg !2274

11:                                               ; preds = %7, %2
  ret void, !dbg !2275
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !2276 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2313, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2315, metadata !DIExpression()), !dbg !2316
  store i32 0, i32* %4, align 4, !dbg !2316
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2317, metadata !DIExpression()), !dbg !2318
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2319
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !2320
  store i32 %8, i32* %5, align 4, !dbg !2318
  %9 = load i32, i32* %5, align 4, !dbg !2321
  %10 = icmp slt i32 %9, 0, !dbg !2323
  br i1 %10, label %11, label %14, !dbg !2324

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2325
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !2326
  store i32 %13, i32* %2, align 4, !dbg !2327
  br label %40, !dbg !2327

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2328
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !2328
  %17 = icmp ne i32 %16, 0, !dbg !2328
  br i1 %17, label %18, label %23, !dbg !2330

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2331
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !2332
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !2333
  %22 = icmp ne i64 %21, -1, !dbg !2334
  br i1 %22, label %23, label %30, !dbg !2335

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2336
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !2337
  %26 = icmp ne i32 %25, 0, !dbg !2337
  br i1 %26, label %27, label %30, !dbg !2338

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !2339
  %29 = load i32, i32* %28, align 4, !dbg !2339
  store i32 %29, i32* %4, align 4, !dbg !2340
  br label %30, !dbg !2341

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2342, metadata !DIExpression()), !dbg !2343
  store i32 0, i32* %6, align 4, !dbg !2343
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2344
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !2345
  store i32 %32, i32* %6, align 4, !dbg !2346
  %33 = load i32, i32* %4, align 4, !dbg !2347
  %34 = icmp ne i32 %33, 0, !dbg !2349
  br i1 %34, label %35, label %38, !dbg !2350

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !2351
  %37 = call i32* @__errno_location() #21, !dbg !2353
  store i32 %36, i32* %37, align 4, !dbg !2354
  store i32 -1, i32* %6, align 4, !dbg !2355
  br label %38, !dbg !2356

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !2357
  store i32 %39, i32* %2, align 4, !dbg !2358
  br label %40, !dbg !2358

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !2359
  ret i32 %41, !dbg !2359
}

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !2360 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2397, metadata !DIExpression()), !dbg !2398
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2399
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2401
  br i1 %5, label %10, label %6, !dbg !2402

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2403
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !2403
  %9 = icmp ne i32 %8, 0, !dbg !2403
  br i1 %9, label %13, label %10, !dbg !2404

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2405
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !2406
  store i32 %12, i32* %2, align 4, !dbg !2407
  br label %17, !dbg !2407

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2408
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !2409
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2410
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !2411
  store i32 %16, i32* %2, align 4, !dbg !2412
  br label %17, !dbg !2412

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !2413
  ret i32 %18, !dbg !2413
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !2414 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2417, metadata !DIExpression()), !dbg !2418
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2419
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !2421
  %5 = load i32, i32* %4, align 8, !dbg !2421
  %6 = and i32 %5, 256, !dbg !2422
  %7 = icmp ne i32 %6, 0, !dbg !2422
  br i1 %7, label %8, label %11, !dbg !2423

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2424
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !2425
  br label %11, !dbg !2425

11:                                               ; preds = %8, %1
  ret void, !dbg !2426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !2427 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2464, metadata !DIExpression()), !dbg !2465
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2466
  call void @__fpurge(%struct._IO_FILE* noundef %3) #18, !dbg !2467
  ret i32 0, !dbg !2468
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !2469 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2510, metadata !DIExpression()), !dbg !2511
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2512
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !2514
  %11 = load i8*, i8** %10, align 8, !dbg !2514
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2515
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !2516
  %14 = load i8*, i8** %13, align 8, !dbg !2516
  %15 = icmp eq i8* %11, %14, !dbg !2517
  br i1 %15, label %16, label %46, !dbg !2518

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2519
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !2520
  %19 = load i8*, i8** %18, align 8, !dbg !2520
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2521
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !2522
  %22 = load i8*, i8** %21, align 8, !dbg !2522
  %23 = icmp eq i8* %19, %22, !dbg !2523
  br i1 %23, label %24, label %46, !dbg !2524

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2525
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !2526
  %27 = load i8*, i8** %26, align 8, !dbg !2526
  %28 = icmp eq i8* %27, null, !dbg !2527
  br i1 %28, label %29, label %46, !dbg !2528

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2529, metadata !DIExpression()), !dbg !2531
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2532
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !2533
  %32 = load i64, i64* %6, align 8, !dbg !2534
  %33 = load i32, i32* %7, align 4, !dbg !2535
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !2536
  store i64 %34, i64* %8, align 8, !dbg !2531
  %35 = load i64, i64* %8, align 8, !dbg !2537
  %36 = icmp eq i64 %35, -1, !dbg !2539
  br i1 %36, label %37, label %38, !dbg !2540

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !2541
  br label %51, !dbg !2541

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2543
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !2544
  %41 = load i32, i32* %40, align 8, !dbg !2545
  %42 = and i32 %41, -17, !dbg !2545
  store i32 %42, i32* %40, align 8, !dbg !2545
  %43 = load i64, i64* %8, align 8, !dbg !2546
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2547
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !2548
  store i64 %43, i64* %45, align 8, !dbg !2549
  store i32 0, i32* %4, align 4, !dbg !2550
  br label %51, !dbg !2550

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2551
  %48 = load i64, i64* %6, align 8, !dbg !2552
  %49 = load i32, i32* %7, align 4, !dbg !2553
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !2554
  store i32 %50, i32* %4, align 4, !dbg !2555
  br label %51, !dbg !2555

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !2556
  ret i32 %52, !dbg !2556
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 !dbg !2557 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2560
  ret i8* %1, !dbg !2561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbbuf_init(%struct.mbbuf_t* noundef %0, i8* noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3) #4 !dbg !2562 {
  %5 = alloca %struct.mbbuf_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %5, metadata !2608, metadata !DIExpression()), !dbg !2609
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2612, metadata !DIExpression()), !dbg !2613
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !2614, metadata !DIExpression()), !dbg !2615
  %9 = load i64, i64* %7, align 8, !dbg !2616
  %10 = icmp slt i64 %9, 4, !dbg !2618
  br i1 %10, label %11, label %12, !dbg !2619

11:                                               ; preds = %4
  unreachable, !dbg !2620

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !2621
  %14 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2622
  %15 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %14, i32 0, i32 0, !dbg !2623
  store i8* %13, i8** %15, align 8, !dbg !2624
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !2625
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2626
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !2627
  store %struct._IO_FILE* %16, %struct._IO_FILE** %18, align 8, !dbg !2628
  %19 = load i64, i64* %7, align 8, !dbg !2629
  %20 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2630
  %21 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %20, i32 0, i32 2, !dbg !2631
  store i64 %19, i64* %21, align 8, !dbg !2632
  %22 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2633
  %23 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %22, i32 0, i32 3, !dbg !2634
  store i64 0, i64* %23, align 8, !dbg !2635
  %24 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2636
  %25 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %24, i32 0, i32 4, !dbg !2637
  store i64 0, i64* %25, align 8, !dbg !2638
  ret void, !dbg !2639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %0) #4 !dbg !2640 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca %struct.mbbuf_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mcel_t, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %3, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2651, metadata !DIExpression()), !dbg !2652
  %7 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2653
  %8 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %7, i32 0, i32 3, !dbg !2654
  %9 = load i64, i64* %8, align 8, !dbg !2654
  %10 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2655
  %11 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %10, i32 0, i32 4, !dbg !2656
  %12 = load i64, i64* %11, align 8, !dbg !2656
  %13 = sub nsw i64 %9, %12, !dbg !2657
  store i64 %13, i64* %4, align 8, !dbg !2652
  %14 = load i64, i64* %4, align 8, !dbg !2658
  %15 = icmp slt i64 %14, 4, !dbg !2660
  br i1 %15, label %16, label %67, !dbg !2661

16:                                               ; preds = %1
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2662
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !2663
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8, !dbg !2663
  %20 = call i32 @feof(%struct._IO_FILE* noundef %19) #18, !dbg !2664
  %21 = icmp ne i32 %20, 0, !dbg !2664
  br i1 %21, label %67, label %22, !dbg !2665

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2666, metadata !DIExpression()), !dbg !2668
  %23 = load i64, i64* %4, align 8, !dbg !2669
  %24 = icmp slt i64 0, %23, !dbg !2671
  br i1 %24, label %26, label %25, !dbg !2672

25:                                               ; preds = %22
  store i64 0, i64* %5, align 8, !dbg !2673
  br label %39, !dbg !2674

26:                                               ; preds = %22
  %27 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2675
  %28 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %27, i32 0, i32 0, !dbg !2677
  %29 = load i8*, i8** %28, align 8, !dbg !2677
  %30 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2678
  %31 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %30, i32 0, i32 0, !dbg !2679
  %32 = load i8*, i8** %31, align 8, !dbg !2679
  %33 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2680
  %34 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %33, i32 0, i32 4, !dbg !2681
  %35 = load i64, i64* %34, align 8, !dbg !2681
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !2682
  %37 = load i64, i64* %4, align 8, !dbg !2683
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %36, i64 %37, i1 false), !dbg !2684
  %38 = load i64, i64* %4, align 8, !dbg !2685
  store i64 %38, i64* %5, align 8, !dbg !2686
  br label %39

39:                                               ; preds = %26, %25
  %40 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2687
  %41 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %40, i32 0, i32 0, !dbg !2688
  %42 = load i8*, i8** %41, align 8, !dbg !2688
  %43 = load i64, i64* %5, align 8, !dbg !2689
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !2690
  %45 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2691
  %46 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %45, i32 0, i32 2, !dbg !2692
  %47 = load i64, i64* %46, align 8, !dbg !2692
  %48 = load i64, i64* %5, align 8, !dbg !2693
  %49 = sub nsw i64 %47, %48, !dbg !2694
  %50 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2695
  %51 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %50, i32 0, i32 1, !dbg !2696
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %51, align 8, !dbg !2696
  %53 = call i64 @fread(i8* noundef %44, i64 noundef 1, i64 noundef %49, %struct._IO_FILE* noundef %52), !dbg !2697
  %54 = load i64, i64* %5, align 8, !dbg !2698
  %55 = add i64 %53, %54, !dbg !2699
  %56 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2700
  %57 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %56, i32 0, i32 3, !dbg !2701
  store i64 %55, i64* %57, align 8, !dbg !2702
  %58 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2703
  %59 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %58, i32 0, i32 4, !dbg !2704
  store i64 0, i64* %59, align 8, !dbg !2705
  %60 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2706
  %61 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %60, i32 0, i32 3, !dbg !2707
  %62 = load i64, i64* %61, align 8, !dbg !2707
  %63 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2708
  %64 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %63, i32 0, i32 4, !dbg !2709
  %65 = load i64, i64* %64, align 8, !dbg !2709
  %66 = sub nsw i64 %62, %65, !dbg !2710
  store i64 %66, i64* %4, align 8, !dbg !2711
  br label %67, !dbg !2712

67:                                               ; preds = %39, %16, %1
  %68 = load i64, i64* %4, align 8, !dbg !2713
  %69 = icmp sle i64 %68, 0, !dbg !2715
  br i1 %69, label %70, label %74, !dbg !2716

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !2717
  store i32 -1, i32* %71, align 4, !dbg !2717
  %72 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !2717
  store i8 0, i8* %72, align 4, !dbg !2717
  %73 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !2717
  store i8 0, i8* %73, align 1, !dbg !2717
  br label %117, !dbg !2718

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !2719, metadata !DIExpression()), !dbg !2720
  %75 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2721
  %76 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %75, i32 0, i32 0, !dbg !2722
  %77 = load i8*, i8** %76, align 8, !dbg !2722
  %78 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2723
  %79 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %78, i32 0, i32 4, !dbg !2724
  %80 = load i64, i64* %79, align 8, !dbg !2724
  %81 = getelementptr inbounds i8, i8* %77, i64 %80, !dbg !2725
  %82 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2726
  %83 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %82, i32 0, i32 0, !dbg !2727
  %84 = load i8*, i8** %83, align 8, !dbg !2727
  %85 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2728
  %86 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %85, i32 0, i32 3, !dbg !2729
  %87 = load i64, i64* %86, align 8, !dbg !2729
  %88 = getelementptr inbounds i8, i8* %84, i64 %87, !dbg !2730
  %89 = call i64 @mcel_scan(i8* noundef %81, i8* noundef %88), !dbg !2731
  %90 = bitcast %struct.mcel_t* %6 to i64*, !dbg !2731
  store i64 %89, i64* %90, align 4, !dbg !2731
  %91 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !2732
  %92 = load i8, i8* %91, align 4, !dbg !2732
  %93 = icmp ne i8 %92, 0, !dbg !2734
  br i1 %93, label %102, label %94, !dbg !2735

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 2, !dbg !2736
  %96 = load i8, i8* %95, align 1, !dbg !2736
  %97 = zext i8 %96 to i64, !dbg !2737
  %98 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2738
  %99 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %98, i32 0, i32 4, !dbg !2739
  %100 = load i64, i64* %99, align 8, !dbg !2740
  %101 = add nsw i64 %100, %97, !dbg !2740
  store i64 %101, i64* %99, align 8, !dbg !2740
  br label %114, !dbg !2738

102:                                              ; preds = %74
  %103 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2741
  %104 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %103, i32 0, i32 0, !dbg !2743
  %105 = load i8*, i8** %104, align 8, !dbg !2743
  %106 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2744
  %107 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %106, i32 0, i32 4, !dbg !2745
  %108 = load i64, i64* %107, align 8, !dbg !2746
  %109 = add nsw i64 %108, 1, !dbg !2746
  store i64 %109, i64* %107, align 8, !dbg !2746
  %110 = getelementptr inbounds i8, i8* %105, i64 %108, !dbg !2741
  %111 = load i8, i8* %110, align 1, !dbg !2741
  %112 = zext i8 %111 to i32, !dbg !2747
  %113 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !2748
  store i32 %112, i32* %113, align 4, !dbg !2749
  br label %114

114:                                              ; preds = %102, %94
  %115 = bitcast %struct.mcel_t* %2 to i8*, !dbg !2750
  %116 = bitcast %struct.mcel_t* %6 to i8*, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false), !dbg !2750
  br label %117, !dbg !2751

117:                                              ; preds = %114, %70
  %118 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2752
  %119 = load i64, i64* %118, align 4, !dbg !2752
  ret i64 %119, !dbg !2752
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %0, i64 %1) #4 !dbg !2753 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mbbuf_t*, align 8
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %4, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2758, metadata !DIExpression()), !dbg !2759
  %6 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2760
  %7 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %6, i32 0, i32 4, !dbg !2762
  %8 = load i64, i64* %7, align 8, !dbg !2762
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2763
  %10 = load i8, i8* %9, align 1, !dbg !2763
  %11 = zext i8 %10 to i64, !dbg !2764
  %12 = icmp slt i64 %8, %11, !dbg !2765
  br i1 %12, label %13, label %14, !dbg !2766

13:                                               ; preds = %2
  unreachable, !dbg !2767

14:                                               ; preds = %2
  %15 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2768
  %16 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %15, i32 0, i32 0, !dbg !2769
  %17 = load i8*, i8** %16, align 8, !dbg !2769
  %18 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2770
  %19 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %18, i32 0, i32 4, !dbg !2771
  %20 = load i64, i64* %19, align 8, !dbg !2771
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2772
  %22 = load i8, i8* %21, align 1, !dbg !2772
  %23 = zext i8 %22 to i64, !dbg !2773
  %24 = sub nsw i64 %20, %23, !dbg !2774
  %25 = getelementptr inbounds i8, i8* %17, i64 %24, !dbg !2775
  ret i8* %25, !dbg !2776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_ch(i32 noundef %0, i64 noundef %1) #4 !dbg !2777 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2788, metadata !DIExpression()), !dbg !2789
  %6 = load i64, i64* %5, align 8, !dbg !2790
  %7 = icmp ult i64 0, %6, !dbg !2790
  br i1 %7, label %8, label %9, !dbg !2790

8:                                                ; preds = %2
  br label %11, !dbg !2790

9:                                                ; preds = %2
  unreachable, !dbg !2790

10:                                               ; No predecessors!
  br label %11, !dbg !2790

11:                                               ; preds = %10, %8
  %12 = load i64, i64* %5, align 8, !dbg !2791
  %13 = icmp ule i64 %12, 4, !dbg !2791
  br i1 %13, label %14, label %15, !dbg !2791

14:                                               ; preds = %11
  br label %17, !dbg !2791

15:                                               ; preds = %11
  unreachable, !dbg !2791

16:                                               ; No predecessors!
  br label %17, !dbg !2791

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %4, align 4, !dbg !2792
  %19 = icmp ule i32 %18, 1114111, !dbg !2792
  br i1 %19, label %20, label %21, !dbg !2792

20:                                               ; preds = %17
  br label %23, !dbg !2792

21:                                               ; preds = %17
  unreachable, !dbg !2792

22:                                               ; No predecessors!
  br label %23, !dbg !2792

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2793
  %25 = load i32, i32* %4, align 4, !dbg !2794
  store i32 %25, i32* %24, align 4, !dbg !2793
  %26 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2793
  store i8 0, i8* %26, align 4, !dbg !2793
  %27 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2793
  %28 = load i64, i64* %5, align 8, !dbg !2795
  %29 = trunc i64 %28 to i8, !dbg !2795
  store i8 %29, i8* %27, align 1, !dbg !2793
  %30 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2796
  %31 = load i64, i64* %30, align 4, !dbg !2796
  ret i64 %31, !dbg !2796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_err(i8 noundef %0) #4 !dbg !2797 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2800, metadata !DIExpression()), !dbg !2801
  %4 = load i8, i8* %3, align 1, !dbg !2802
  %5 = zext i8 %4 to i32, !dbg !2802
  %6 = icmp sle i32 128, %5, !dbg !2802
  br i1 %6, label %7, label %8, !dbg !2802

7:                                                ; preds = %1
  br label %10, !dbg !2802

8:                                                ; preds = %1
  unreachable, !dbg !2802

9:                                                ; No predecessors!
  br label %10, !dbg !2802

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !2803
  store i32 0, i32* %11, align 4, !dbg !2803
  %12 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !2803
  %13 = load i8, i8* %3, align 1, !dbg !2804
  store i8 %13, i8* %12, align 4, !dbg !2803
  %14 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !2803
  store i8 1, i8* %14, align 1, !dbg !2803
  %15 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2805
  %16 = load i64, i64* %15, align 4, !dbg !2805
  ret i64 %16, !dbg !2805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_cmp(i64 %0, i64 %1) #4 !dbg !2806 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %8, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2813, metadata !DIExpression()), !dbg !2814
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2815
  %10 = load i32, i32* %9, align 4, !dbg !2815
  store i32 %10, i32* %5, align 4, !dbg !2814
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2816, metadata !DIExpression()), !dbg !2817
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !2818
  %12 = load i32, i32* %11, align 4, !dbg !2818
  store i32 %12, i32* %6, align 4, !dbg !2817
  %13 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2819
  %14 = load i8, i8* %13, align 4, !dbg !2819
  %15 = zext i8 %14 to i32, !dbg !2820
  %16 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 1, !dbg !2821
  %17 = load i8, i8* %16, align 4, !dbg !2821
  %18 = zext i8 %17 to i32, !dbg !2822
  %19 = sub nsw i32 %15, %18, !dbg !2823
  %20 = mul nsw i32 %19, 16384, !dbg !2824
  %21 = load i32, i32* %5, align 4, !dbg !2825
  %22 = load i32, i32* %6, align 4, !dbg !2826
  %23 = sub nsw i32 %21, %22, !dbg !2827
  %24 = add nsw i32 %20, %23, !dbg !2828
  ret i32 %24, !dbg !2829
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_eq(i64 %0, i64 %1) #4 !dbg !2830 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %6, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2833, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2835, metadata !DIExpression()), !dbg !2836
  %7 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2837
  %8 = load i64, i64* %7, align 4, !dbg !2837
  %9 = bitcast %struct.mcel_t* %4 to i64*, !dbg !2837
  %10 = load i64, i64* %9, align 4, !dbg !2837
  %11 = call i32 @mcel_cmp(i64 %8, i64 %10), !dbg !2837
  %12 = icmp ne i32 %11, 0, !dbg !2838
  %13 = xor i1 %12, true, !dbg !2838
  ret i1 %13, !dbg !2839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_tocmp(i32 (i32)* noundef %0, i64 %1, i64 %2) #4 !dbg !2840 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcel_t, align 4
  %6 = alloca %struct.mcel_t, align 4
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.mcel_t* %5 to i64*
  store i64 %1, i64* %11, align 4
  %12 = bitcast %struct.mcel_t* %6 to i64*
  store i64 %2, i64* %12, align 4
  store i32 (i32)* %0, i32 (i32)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %5, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2852, metadata !DIExpression()), !dbg !2853
  %13 = bitcast %struct.mcel_t* %5 to i64*, !dbg !2854
  %14 = load i64, i64* %13, align 4, !dbg !2854
  %15 = bitcast %struct.mcel_t* %6 to i64*, !dbg !2854
  %16 = load i64, i64* %15, align 4, !dbg !2854
  %17 = call i32 @mcel_cmp(i64 %14, i64 %16), !dbg !2854
  store i32 %17, i32* %8, align 4, !dbg !2853
  %18 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 1, !dbg !2855
  %19 = load i8, i8* %18, align 4, !dbg !2855
  %20 = zext i8 %19 to i32, !dbg !2855
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !2855
  %22 = load i8, i8* %21, align 4, !dbg !2855
  %23 = zext i8 %22 to i32, !dbg !2855
  %24 = sub nsw i32 %20, %23, !dbg !2855
  %25 = load i32, i32* %8, align 4, !dbg !2855
  %26 = icmp ne i32 %25, 0, !dbg !2855
  %27 = xor i1 %26, true, !dbg !2855
  %28 = zext i1 %27 to i32, !dbg !2855
  %29 = or i32 %24, %28, !dbg !2855
  %30 = sext i32 %29 to i64, !dbg !2855
  %31 = icmp ne i64 %30, 0, !dbg !2855
  br i1 %31, label %32, label %34, !dbg !2857

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4, !dbg !2858
  store i32 %33, i32* %4, align 4, !dbg !2859
  br label %46, !dbg !2859

34:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2860, metadata !DIExpression()), !dbg !2861
  %35 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2862
  %36 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 0, !dbg !2863
  %37 = load i32, i32* %36, align 4, !dbg !2863
  %38 = call i32 %35(i32 noundef %37), !dbg !2862
  store i32 %38, i32* %9, align 4, !dbg !2861
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2864, metadata !DIExpression()), !dbg !2865
  %39 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2866
  %40 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !2867
  %41 = load i32, i32* %40, align 4, !dbg !2867
  %42 = call i32 %39(i32 noundef %41), !dbg !2866
  store i32 %42, i32* %10, align 4, !dbg !2865
  %43 = load i32, i32* %9, align 4, !dbg !2868
  %44 = load i32, i32* %10, align 4, !dbg !2869
  %45 = sub nsw i32 %43, %44, !dbg !2870
  store i32 %45, i32* %4, align 4, !dbg !2871
  br label %46, !dbg !2871

46:                                               ; preds = %34, %32
  %47 = load i32, i32* %4, align 4, !dbg !2872
  ret i32 %47, !dbg !2872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_isbasic(i8 noundef %0) #4 !dbg !2873 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2877
  %3 = load i8, i8* %2, align 1, !dbg !2878
  %4 = zext i8 %3 to i32, !dbg !2878
  %5 = icmp sle i32 0, %4, !dbg !2878
  br i1 %5, label %6, label %10, !dbg !2878

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !2878
  %8 = zext i8 %7 to i32, !dbg !2878
  %9 = icmp slt i32 %8, 128, !dbg !2878
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !2879
  %12 = zext i1 %11 to i32, !dbg !2878
  %13 = sext i32 %12 to i64, !dbg !2878
  %14 = icmp ne i64 %13, 0, !dbg !2878
  ret i1 %14, !dbg !2880
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scan(i8* noundef %0, i8* noundef %1) #4 !dbg !2881 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2884, metadata !DIExpression()), !dbg !2885
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2888, metadata !DIExpression()), !dbg !2889
  %10 = load i8*, i8** %4, align 8, !dbg !2890
  %11 = load i8, i8* %10, align 1, !dbg !2891
  store i8 %11, i8* %6, align 1, !dbg !2889
  %12 = load i8, i8* %6, align 1, !dbg !2892
  %13 = call i1 @mcel_isbasic(i8 noundef %12), !dbg !2894
  br i1 %13, label %14, label %19, !dbg !2895

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1, !dbg !2896
  %16 = zext i8 %15 to i32, !dbg !2896
  %17 = call i64 @mcel_ch(i32 noundef %16, i64 noundef 1), !dbg !2897
  %18 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2897
  store i64 %17, i64* %18, align 4, !dbg !2897
  br label %42, !dbg !2898

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !2899, metadata !DIExpression()), !dbg !2910
  %20 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %7, i32 0, i32 0, !dbg !2911
  store i32 0, i32* %20, align 4, !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2913, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2915, metadata !DIExpression()), !dbg !2916
  %21 = load i8*, i8** %4, align 8, !dbg !2917
  %22 = load i8*, i8** %5, align 8, !dbg !2918
  %23 = load i8*, i8** %4, align 8, !dbg !2919
  %24 = ptrtoint i8* %22 to i64, !dbg !2920
  %25 = ptrtoint i8* %23 to i64, !dbg !2920
  %26 = sub i64 %24, %25, !dbg !2920
  %27 = call i64 @mbrtoc32(i32* noundef %8, i8* noundef %21, i64 noundef %26, %struct.__mbstate_t* noundef %7) #18, !dbg !2921
  store i64 %27, i64* %9, align 8, !dbg !2916
  %28 = load i64, i64* %9, align 8, !dbg !2922
  %29 = icmp ult i64 9223372036854775807, %28, !dbg !2922
  %30 = zext i1 %29 to i32, !dbg !2922
  %31 = sext i32 %30 to i64, !dbg !2922
  %32 = icmp ne i64 %31, 0, !dbg !2922
  br i1 %32, label %33, label %37, !dbg !2924

33:                                               ; preds = %19
  %34 = load i8, i8* %6, align 1, !dbg !2925
  %35 = call i64 @mcel_err(i8 noundef %34), !dbg !2926
  %36 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2926
  store i64 %35, i64* %36, align 4, !dbg !2926
  br label %42, !dbg !2927

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4, !dbg !2928
  %39 = load i64, i64* %9, align 8, !dbg !2929
  %40 = call i64 @mcel_ch(i32 noundef %38, i64 noundef %39), !dbg !2930
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2930
  store i64 %40, i64* %41, align 4, !dbg !2930
  br label %42, !dbg !2931

42:                                               ; preds = %37, %33, %14
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2932
  %44 = load i64, i64* %43, align 4, !dbg !2932
  ret i64 %44, !dbg !2932
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scant(i8* noundef %0, i8 noundef %1) #4 !dbg !2933 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2936, metadata !DIExpression()), !dbg !2937
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2938, metadata !DIExpression()), !dbg !2939
  %8 = load i8*, i8** %4, align 8, !dbg !2940
  %9 = load i8, i8* %8, align 1, !dbg !2942
  %10 = call i1 @mcel_isbasic(i8 noundef %9), !dbg !2943
  br i1 %10, label %11, label %17, !dbg !2944

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !2945
  %13 = load i8, i8* %12, align 1, !dbg !2946
  %14 = zext i8 %13 to i32, !dbg !2946
  %15 = call i64 @mcel_ch(i32 noundef %14, i64 noundef 1), !dbg !2947
  %16 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2947
  store i64 %15, i64* %16, align 4, !dbg !2947
  br label %42, !dbg !2948

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2949, metadata !DIExpression()), !dbg !2950
  %18 = load i8*, i8** %4, align 8, !dbg !2951
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !2952
  store i8* %19, i8** %6, align 8, !dbg !2950
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2953, metadata !DIExpression()), !dbg !2955
  store i32 0, i32* %7, align 4, !dbg !2955
  br label %20, !dbg !2956

20:                                               ; preds = %34, %17
  %21 = load i32, i32* %7, align 4, !dbg !2957
  %22 = icmp slt i32 %21, 3, !dbg !2959
  br i1 %22, label %23, label %37, !dbg !2960

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8, !dbg !2961
  %25 = load i8, i8* %24, align 1, !dbg !2962
  %26 = zext i8 %25 to i32, !dbg !2962
  %27 = load i8, i8* %5, align 1, !dbg !2963
  %28 = zext i8 %27 to i32, !dbg !2963
  %29 = icmp ne i32 %26, %28, !dbg !2964
  %30 = zext i1 %29 to i32, !dbg !2964
  %31 = load i8*, i8** %6, align 8, !dbg !2965
  %32 = sext i32 %30 to i64, !dbg !2965
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !2965
  store i8* %33, i8** %6, align 8, !dbg !2965
  br label %34, !dbg !2966

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4, !dbg !2967
  %36 = add nsw i32 %35, 1, !dbg !2967
  store i32 %36, i32* %7, align 4, !dbg !2967
  br label %20, !dbg !2968, !llvm.loop !2969

37:                                               ; preds = %20
  %38 = load i8*, i8** %4, align 8, !dbg !2971
  %39 = load i8*, i8** %6, align 8, !dbg !2972
  %40 = call i64 @mcel_scan(i8* noundef %38, i8* noundef %39), !dbg !2973
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2973
  store i64 %40, i64* %41, align 4, !dbg !2973
  br label %42, !dbg !2974

42:                                               ; preds = %37, %11
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2975
  %44 = load i64, i64* %43, align 4, !dbg !2975
  ret i64 %44, !dbg !2975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scanz(i8* noundef %0) #4 !dbg !2976 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2979, metadata !DIExpression()), !dbg !2980
  %4 = load i8*, i8** %3, align 8, !dbg !2981
  %5 = call i64 @mcel_scant(i8* noundef %4, i8 noundef 0), !dbg !2982
  %6 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2982
  store i64 %5, i64* %6, align 4, !dbg !2982
  %7 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2983
  %8 = load i64, i64* %7, align 4, !dbg !2983
  ret i64 %8, !dbg !2983
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !2984 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2987, metadata !DIExpression()), !dbg !2988
  %5 = load i8*, i8** %2, align 8, !dbg !2989
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !2990
  store i8* %6, i8** %3, align 8, !dbg !2988
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2991, metadata !DIExpression()), !dbg !2992
  %7 = load i8*, i8** %3, align 8, !dbg !2993
  %8 = icmp ne i8* %7, null, !dbg !2993
  br i1 %8, label %9, label %12, !dbg !2993

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !2994
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !2995
  br label %14, !dbg !2993

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !2996
  br label %14, !dbg !2993

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !2993
  store i8* %15, i8** %4, align 8, !dbg !2992
  %16 = load i8*, i8** %4, align 8, !dbg !2997
  %17 = load i8*, i8** %2, align 8, !dbg !2999
  %18 = ptrtoint i8* %16 to i64, !dbg !3000
  %19 = ptrtoint i8* %17 to i64, !dbg !3000
  %20 = sub i64 %18, %19, !dbg !3000
  %21 = icmp sle i64 7, %20, !dbg !3001
  br i1 %21, label %22, label %36, !dbg !3002

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !3003
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !3004
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.167, i64 0, i64 0), i64 noundef 7), !dbg !3005
  br i1 %25, label %26, label %36, !dbg !3006

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !3007
  store i8* %27, i8** %2, align 8, !dbg !3009
  %28 = load i8*, i8** %4, align 8, !dbg !3010
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.168, i64 0, i64 0), i64 noundef 3) #20, !dbg !3012
  %30 = icmp eq i32 %29, 0, !dbg !3013
  br i1 %30, label %31, label %35, !dbg !3014

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !3015
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !3015
  store i8* %33, i8** %4, align 8, !dbg !3015
  %34 = load i8*, i8** %4, align 8, !dbg !3017
  store i8* %34, i8** %2, align 8, !dbg !3018
  br label %35, !dbg !3019

35:                                               ; preds = %31, %26
  br label %36, !dbg !3020

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !3021
  store i8* %37, i8** @program_name, align 8, !dbg !3022
  %38 = load i8*, i8** %2, align 8, !dbg !3023
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !3024
  %39 = load i8*, i8** %4, align 8, !dbg !3025
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !3026
  ret void, !dbg !3027
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !241 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3028, metadata !DIExpression()), !dbg !3029
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3032, metadata !DIExpression()), !dbg !3033
  %9 = load i8*, i8** %4, align 8, !dbg !3034
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !3035
  store i8* %10, i8** %6, align 8, !dbg !3033
  %11 = load i8*, i8** %6, align 8, !dbg !3036
  %12 = load i8*, i8** %4, align 8, !dbg !3038
  %13 = icmp ne i8* %11, %12, !dbg !3039
  br i1 %13, label %14, label %16, !dbg !3040

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !3041
  store i8* %15, i8** %3, align 8, !dbg !3042
  br label %26, !dbg !3042

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !3045, metadata !DIExpression()), !dbg !3056
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !3057
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !3058
  %18 = icmp eq i64 %17, 2, !dbg !3060
  br i1 %18, label %19, label %24, !dbg !3061

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !3062
  %21 = icmp eq i32 %20, 2047, !dbg !3063
  br i1 %21, label %22, label %24, !dbg !3064

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !3065
  store i8* %23, i8** %3, align 8, !dbg !3066
  br label %26, !dbg !3066

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !3067
  store i8* %25, i8** %3, align 8, !dbg !3068
  br label %26, !dbg !3068

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !3069
  ret i8* %27, !dbg !3069
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !3070 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3076, metadata !DIExpression()), !dbg !3077
  %5 = call i32* @__errno_location() #21, !dbg !3078
  %6 = load i32, i32* %5, align 4, !dbg !3078
  store i32 %6, i32* %3, align 4, !dbg !3077
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !3079, metadata !DIExpression()), !dbg !3080
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !3081
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !3081
  br i1 %8, label %9, label %11, !dbg !3081

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !3082
  br label %12, !dbg !3081

11:                                               ; preds = %1
  br label %12, !dbg !3081

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !3081
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !3081
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !3083
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !3083
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !3080
  %17 = load i32, i32* %3, align 4, !dbg !3084
  %18 = call i32* @__errno_location() #21, !dbg !3085
  store i32 %17, i32* %18, align 4, !dbg !3086
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3087
  ret %struct.quoting_options* %19, !dbg !3088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !3089 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !3094, metadata !DIExpression()), !dbg !3095
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !3096
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !3096
  br i1 %4, label %5, label %7, !dbg !3096

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !3097
  br label %8, !dbg !3096

7:                                                ; preds = %1
  br label %8, !dbg !3096

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !3096
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !3098
  %11 = load i32, i32* %10, align 8, !dbg !3098
  ret i32 %11, !dbg !3099
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !3100 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !3103, metadata !DIExpression()), !dbg !3104
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3105, metadata !DIExpression()), !dbg !3106
  %5 = load i32, i32* %4, align 4, !dbg !3107
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3108
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !3108
  br i1 %7, label %8, label %10, !dbg !3108

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3109
  br label %11, !dbg !3108

10:                                               ; preds = %2
  br label %11, !dbg !3108

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !3108
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !3110
  store i32 %5, i32* %13, align 8, !dbg !3111
  ret void, !dbg !3112
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !3113 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !3116, metadata !DIExpression()), !dbg !3117
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3122, metadata !DIExpression()), !dbg !3123
  %11 = load i8, i8* %5, align 1, !dbg !3124
  store i8 %11, i8* %7, align 1, !dbg !3123
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3125, metadata !DIExpression()), !dbg !3127
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3128
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !3128
  br i1 %13, label %14, label %16, !dbg !3128

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3129
  br label %17, !dbg !3128

16:                                               ; preds = %3
  br label %17, !dbg !3128

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !3128
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !3130
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !3131
  %21 = load i8, i8* %7, align 1, !dbg !3132
  %22 = zext i8 %21 to i64, !dbg !3132
  %23 = udiv i64 %22, 32, !dbg !3133
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !3134
  store i32* %24, i32** %8, align 8, !dbg !3127
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3135, metadata !DIExpression()), !dbg !3136
  %25 = load i8, i8* %7, align 1, !dbg !3137
  %26 = zext i8 %25 to i64, !dbg !3137
  %27 = urem i64 %26, 32, !dbg !3138
  %28 = trunc i64 %27 to i32, !dbg !3137
  store i32 %28, i32* %9, align 4, !dbg !3136
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3139, metadata !DIExpression()), !dbg !3140
  %29 = load i32*, i32** %8, align 8, !dbg !3141
  %30 = load i32, i32* %29, align 4, !dbg !3142
  %31 = load i32, i32* %9, align 4, !dbg !3143
  %32 = lshr i32 %30, %31, !dbg !3144
  %33 = and i32 %32, 1, !dbg !3145
  store i32 %33, i32* %10, align 4, !dbg !3140
  %34 = load i32, i32* %6, align 4, !dbg !3146
  %35 = and i32 %34, 1, !dbg !3147
  %36 = load i32, i32* %10, align 4, !dbg !3148
  %37 = xor i32 %35, %36, !dbg !3149
  %38 = load i32, i32* %9, align 4, !dbg !3150
  %39 = shl i32 %37, %38, !dbg !3151
  %40 = load i32*, i32** %8, align 8, !dbg !3152
  %41 = load i32, i32* %40, align 4, !dbg !3153
  %42 = xor i32 %41, %39, !dbg !3153
  store i32 %42, i32* %40, align 4, !dbg !3153
  %43 = load i32, i32* %10, align 4, !dbg !3154
  ret i32 %43, !dbg !3155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !3156 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3161, metadata !DIExpression()), !dbg !3162
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3163
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !3163
  br i1 %7, label %9, label %8, !dbg !3165

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !3166
  br label %9, !dbg !3167

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3168, metadata !DIExpression()), !dbg !3169
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3170
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !3171
  %12 = load i32, i32* %11, align 4, !dbg !3171
  store i32 %12, i32* %5, align 4, !dbg !3169
  %13 = load i32, i32* %4, align 4, !dbg !3172
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3173
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !3174
  store i32 %13, i32* %15, align 4, !dbg !3175
  %16 = load i32, i32* %5, align 4, !dbg !3176
  ret i32 %16, !dbg !3177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3178 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3185, metadata !DIExpression()), !dbg !3186
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3187
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !3187
  br i1 %8, label %10, label %9, !dbg !3189

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !3190
  br label %10, !dbg !3191

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3192
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !3193
  store i32 10, i32* %12, align 8, !dbg !3194
  %13 = load i8*, i8** %5, align 8, !dbg !3195
  %14 = icmp ne i8* %13, null, !dbg !3195
  br i1 %14, label %15, label %18, !dbg !3197

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !3198
  %17 = icmp ne i8* %16, null, !dbg !3198
  br i1 %17, label %19, label %18, !dbg !3199

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !3200
  unreachable, !dbg !3200

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !3201
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3202
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !3203
  store i8* %20, i8** %22, align 8, !dbg !3204
  %23 = load i8*, i8** %6, align 8, !dbg !3205
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3206
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !3207
  store i8* %23, i8** %25, align 8, !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !3210 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3219, metadata !DIExpression()), !dbg !3220
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !3223, metadata !DIExpression()), !dbg !3224
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !3225
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3225
  br i1 %15, label %16, label %18, !dbg !3225

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !3226
  br label %19, !dbg !3225

18:                                               ; preds = %5
  br label %19, !dbg !3225

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3225
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !3224
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3227, metadata !DIExpression()), !dbg !3228
  %21 = call i32* @__errno_location() #21, !dbg !3229
  %22 = load i32, i32* %21, align 4, !dbg !3229
  store i32 %22, i32* %12, align 4, !dbg !3228
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3230, metadata !DIExpression()), !dbg !3231
  %23 = load i8*, i8** %6, align 8, !dbg !3232
  %24 = load i64, i64* %7, align 8, !dbg !3233
  %25 = load i8*, i8** %8, align 8, !dbg !3234
  %26 = load i64, i64* %9, align 8, !dbg !3235
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3236
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !3237
  %29 = load i32, i32* %28, align 8, !dbg !3237
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3238
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !3239
  %32 = load i32, i32* %31, align 4, !dbg !3239
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3240
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !3241
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !3240
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3242
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !3243
  %38 = load i8*, i8** %37, align 8, !dbg !3243
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3244
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !3245
  %41 = load i8*, i8** %40, align 8, !dbg !3245
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !3246
  store i64 %42, i64* %13, align 8, !dbg !3231
  %43 = load i32, i32* %12, align 4, !dbg !3247
  %44 = call i32* @__errno_location() #21, !dbg !3248
  store i32 %43, i32* %44, align 4, !dbg !3249
  %45 = load i64, i64* %13, align 8, !dbg !3250
  ret i64 %45, !dbg !3251
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !3252 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3261, metadata !DIExpression()), !dbg !3262
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3263, metadata !DIExpression()), !dbg !3264
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3267, metadata !DIExpression()), !dbg !3268
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !3269, metadata !DIExpression()), !dbg !3270
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3271, metadata !DIExpression()), !dbg !3272
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3275, metadata !DIExpression()), !dbg !3276
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !3277
  %45 = icmp eq i64 %44, 1, !dbg !3278
  %46 = zext i1 %45 to i8, !dbg !3276
  store i8 %46, i8* %20, align 1, !dbg !3276
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3279, metadata !DIExpression()), !dbg !3280
  store i64 0, i64* %21, align 8, !dbg !3280
  call void @llvm.dbg.declare(metadata i64* %22, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i64 0, i64* %22, align 8, !dbg !3282
  call void @llvm.dbg.declare(metadata i8** %23, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i8* null, i8** %23, align 8, !dbg !3284
  call void @llvm.dbg.declare(metadata i64* %24, metadata !3285, metadata !DIExpression()), !dbg !3286
  store i64 0, i64* %24, align 8, !dbg !3286
  call void @llvm.dbg.declare(metadata i8* %25, metadata !3287, metadata !DIExpression()), !dbg !3288
  store i8 0, i8* %25, align 1, !dbg !3288
  call void @llvm.dbg.declare(metadata i8* %26, metadata !3289, metadata !DIExpression()), !dbg !3290
  %47 = load i32, i32* %16, align 4, !dbg !3291
  %48 = and i32 %47, 2, !dbg !3292
  %49 = icmp ne i32 %48, 0, !dbg !3293
  %50 = zext i1 %49 to i8, !dbg !3290
  store i8 %50, i8* %26, align 1, !dbg !3290
  call void @llvm.dbg.declare(metadata i8* %27, metadata !3294, metadata !DIExpression()), !dbg !3295
  store i8 0, i8* %27, align 1, !dbg !3295
  call void @llvm.dbg.declare(metadata i8* %28, metadata !3296, metadata !DIExpression()), !dbg !3297
  store i8 1, i8* %28, align 1, !dbg !3297
  br label %51, !dbg !3298

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !3299), !dbg !3300
  call void @llvm.dbg.declare(metadata i8* %29, metadata !3301, metadata !DIExpression()), !dbg !3302
  store i8 0, i8* %29, align 1, !dbg !3302
  %52 = load i32, i32* %15, align 4, !dbg !3303
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
  ], !dbg !3304

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !3305
  store i8 1, i8* %26, align 1, !dbg !3307
  br label %54, !dbg !3308

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !3309
  %56 = trunc i8 %55 to i1, !dbg !3309
  br i1 %56, label %70, label %57, !dbg !3311

57:                                               ; preds = %54
  br label %58, !dbg !3312

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !3313
  %60 = load i64, i64* %12, align 8, !dbg !3313
  %61 = icmp ult i64 %59, %60, !dbg !3313
  br i1 %61, label %62, label %66, !dbg !3316

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !3313
  %64 = load i64, i64* %21, align 8, !dbg !3313
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !3313
  store i8 34, i8* %65, align 1, !dbg !3313
  br label %66, !dbg !3313

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !3316
  %68 = add i64 %67, 1, !dbg !3316
  store i64 %68, i64* %21, align 8, !dbg !3316
  br label %69, !dbg !3316

69:                                               ; preds = %66
  br label %70, !dbg !3316

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !3317
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.181, i64 0, i64 0), i8** %23, align 8, !dbg !3318
  store i64 1, i64* %24, align 8, !dbg !3319
  br label %138, !dbg !3320

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !3321
  store i8 0, i8* %26, align 1, !dbg !3322
  br label %138, !dbg !3323

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !3324
  %74 = icmp ne i32 %73, 10, !dbg !3327
  br i1 %74, label %75, label %80, !dbg !3328

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !3329
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.182, i64 0, i64 0), i32 noundef %76), !dbg !3331
  store i8* %77, i8** %18, align 8, !dbg !3332
  %78 = load i32, i32* %15, align 4, !dbg !3333
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), i32 noundef %78), !dbg !3334
  store i8* %79, i8** %19, align 8, !dbg !3335
  br label %80, !dbg !3336

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !3337
  %82 = trunc i8 %81 to i1, !dbg !3337
  br i1 %82, label %108, label %83, !dbg !3339

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !3340, metadata !DIExpression()), !dbg !3342
  %84 = load i8*, i8** %18, align 8, !dbg !3343
  store i8* %84, i8** %30, align 8, !dbg !3342
  br label %85, !dbg !3344

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !3345
  %87 = load i8, i8* %86, align 1, !dbg !3347
  %88 = icmp ne i8 %87, 0, !dbg !3348
  br i1 %88, label %89, label %107, !dbg !3348

89:                                               ; preds = %85
  br label %90, !dbg !3349

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !3350
  %92 = load i64, i64* %12, align 8, !dbg !3350
  %93 = icmp ult i64 %91, %92, !dbg !3350
  br i1 %93, label %94, label %100, !dbg !3353

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !3350
  %96 = load i8, i8* %95, align 1, !dbg !3350
  %97 = load i8*, i8** %11, align 8, !dbg !3350
  %98 = load i64, i64* %21, align 8, !dbg !3350
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3350
  store i8 %96, i8* %99, align 1, !dbg !3350
  br label %100, !dbg !3350

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !3353
  %102 = add i64 %101, 1, !dbg !3353
  store i64 %102, i64* %21, align 8, !dbg !3353
  br label %103, !dbg !3353

103:                                              ; preds = %100
  br label %104, !dbg !3353

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !3354
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !3354
  store i8* %106, i8** %30, align 8, !dbg !3354
  br label %85, !dbg !3355, !llvm.loop !3356

107:                                              ; preds = %85
  br label %108, !dbg !3357

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !3358
  %109 = load i8*, i8** %19, align 8, !dbg !3359
  store i8* %109, i8** %23, align 8, !dbg !3360
  %110 = load i8*, i8** %23, align 8, !dbg !3361
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !3362
  store i64 %111, i64* %24, align 8, !dbg !3363
  br label %138, !dbg !3364

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !3365
  br label %113, !dbg !3366

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !3367
  br label %114, !dbg !3368

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !3369
  %116 = trunc i8 %115 to i1, !dbg !3369
  br i1 %116, label %118, label %117, !dbg !3371

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !3372
  br label %118, !dbg !3373

118:                                              ; preds = %117, %114
  br label %119, !dbg !3369

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !3374
  %120 = load i8, i8* %26, align 1, !dbg !3375
  %121 = trunc i8 %120 to i1, !dbg !3375
  br i1 %121, label %135, label %122, !dbg !3377

122:                                              ; preds = %119
  br label %123, !dbg !3378

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !3379
  %125 = load i64, i64* %12, align 8, !dbg !3379
  %126 = icmp ult i64 %124, %125, !dbg !3379
  br i1 %126, label %127, label %131, !dbg !3382

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !3379
  %129 = load i64, i64* %21, align 8, !dbg !3379
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !3379
  store i8 39, i8* %130, align 1, !dbg !3379
  br label %131, !dbg !3379

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !3382
  %133 = add i64 %132, 1, !dbg !3382
  store i64 %133, i64* %21, align 8, !dbg !3382
  br label %134, !dbg !3382

134:                                              ; preds = %131
  br label %135, !dbg !3382

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), i8** %23, align 8, !dbg !3383
  store i64 1, i64* %24, align 8, !dbg !3384
  br label %138, !dbg !3385

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !3386
  br label %138, !dbg !3387

137:                                              ; preds = %51
  call void @abort() #19, !dbg !3388
  unreachable, !dbg !3388

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !3389, metadata !DIExpression()), !dbg !3391
  store i64 0, i64* %31, align 8, !dbg !3391
  br label %139, !dbg !3392

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !3393
  %141 = icmp eq i64 %140, -1, !dbg !3395
  br i1 %141, label %142, label %150, !dbg !3393

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !3396
  %144 = load i64, i64* %31, align 8, !dbg !3397
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !3396
  %146 = load i8, i8* %145, align 1, !dbg !3396
  %147 = zext i8 %146 to i32, !dbg !3396
  %148 = icmp eq i32 %147, 0, !dbg !3398
  %149 = zext i1 %148 to i32, !dbg !3398
  br label %155, !dbg !3393

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !3399
  %152 = load i64, i64* %14, align 8, !dbg !3400
  %153 = icmp eq i64 %151, %152, !dbg !3401
  %154 = zext i1 %153 to i32, !dbg !3401
  br label %155, !dbg !3393

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !3393
  %157 = icmp ne i32 %156, 0, !dbg !3402
  %158 = xor i1 %157, true, !dbg !3402
  br i1 %158, label %159, label %996, !dbg !3403

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !3404, metadata !DIExpression()), !dbg !3406
  store i8 0, i8* %32, align 1, !dbg !3406
  call void @llvm.dbg.declare(metadata i8* %33, metadata !3407, metadata !DIExpression()), !dbg !3408
  store i8 0, i8* %33, align 1, !dbg !3408
  call void @llvm.dbg.declare(metadata i8* %34, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i8 0, i8* %34, align 1, !dbg !3410
  %160 = load i8, i8* %25, align 1, !dbg !3411
  %161 = trunc i8 %160 to i1, !dbg !3411
  br i1 %161, label %162, label %197, !dbg !3413

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !3414
  %164 = icmp ne i32 %163, 2, !dbg !3415
  br i1 %164, label %165, label %197, !dbg !3416

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !3417
  %167 = icmp ne i64 %166, 0, !dbg !3417
  br i1 %167, label %168, label %197, !dbg !3418

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !3419
  %170 = load i64, i64* %24, align 8, !dbg !3420
  %171 = add i64 %169, %170, !dbg !3421
  %172 = load i64, i64* %14, align 8, !dbg !3422
  %173 = icmp eq i64 %172, -1, !dbg !3423
  br i1 %173, label %174, label %180, !dbg !3424

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !3425
  %176 = icmp ult i64 1, %175, !dbg !3426
  br i1 %176, label %177, label %180, !dbg !3422

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !3427
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !3428
  store i64 %179, i64* %14, align 8, !dbg !3429
  br label %182, !dbg !3422

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !3430
  br label %182, !dbg !3422

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !3422
  %184 = icmp ule i64 %171, %183, !dbg !3431
  br i1 %184, label %185, label %197, !dbg !3432

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !3433
  %187 = load i64, i64* %31, align 8, !dbg !3434
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !3435
  %189 = load i8*, i8** %23, align 8, !dbg !3436
  %190 = load i64, i64* %24, align 8, !dbg !3437
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !3438
  br i1 %191, label %192, label %197, !dbg !3439

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !3440
  %194 = trunc i8 %193 to i1, !dbg !3440
  br i1 %194, label %195, label %196, !dbg !3443

195:                                              ; preds = %192
  br label %1078, !dbg !3444

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !3445
  br label %197, !dbg !3446

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !3447, metadata !DIExpression()), !dbg !3448
  %198 = load i8*, i8** %13, align 8, !dbg !3449
  %199 = load i64, i64* %31, align 8, !dbg !3450
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !3449
  %201 = load i8, i8* %200, align 1, !dbg !3449
  store i8 %201, i8* %35, align 1, !dbg !3448
  %202 = load i8, i8* %35, align 1, !dbg !3451
  %203 = zext i8 %202 to i32, !dbg !3451
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
  ], !dbg !3452

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !3453
  %206 = trunc i8 %205 to i1, !dbg !3453
  br i1 %206, label %207, label %318, !dbg !3456

207:                                              ; preds = %204
  br label %208, !dbg !3457

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !3459
  %210 = trunc i8 %209 to i1, !dbg !3459
  br i1 %210, label %211, label %212, !dbg !3462

211:                                              ; preds = %208
  br label %1078, !dbg !3459

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !3462
  %213 = load i32, i32* %15, align 4, !dbg !3463
  %214 = icmp eq i32 %213, 2, !dbg !3463
  br i1 %214, label %215, label %255, !dbg !3463

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !3463
  %217 = trunc i8 %216 to i1, !dbg !3463
  br i1 %217, label %255, label %218, !dbg !3462

218:                                              ; preds = %215
  br label %219, !dbg !3465

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !3467
  %221 = load i64, i64* %12, align 8, !dbg !3467
  %222 = icmp ult i64 %220, %221, !dbg !3467
  br i1 %222, label %223, label %227, !dbg !3470

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !3467
  %225 = load i64, i64* %21, align 8, !dbg !3467
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !3467
  store i8 39, i8* %226, align 1, !dbg !3467
  br label %227, !dbg !3467

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !3470
  %229 = add i64 %228, 1, !dbg !3470
  store i64 %229, i64* %21, align 8, !dbg !3470
  br label %230, !dbg !3470

230:                                              ; preds = %227
  br label %231, !dbg !3465

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !3471
  %233 = load i64, i64* %12, align 8, !dbg !3471
  %234 = icmp ult i64 %232, %233, !dbg !3471
  br i1 %234, label %235, label %239, !dbg !3474

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !3471
  %237 = load i64, i64* %21, align 8, !dbg !3471
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !3471
  store i8 36, i8* %238, align 1, !dbg !3471
  br label %239, !dbg !3471

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !3474
  %241 = add i64 %240, 1, !dbg !3474
  store i64 %241, i64* %21, align 8, !dbg !3474
  br label %242, !dbg !3474

242:                                              ; preds = %239
  br label %243, !dbg !3465

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !3475
  %245 = load i64, i64* %12, align 8, !dbg !3475
  %246 = icmp ult i64 %244, %245, !dbg !3475
  br i1 %246, label %247, label %251, !dbg !3478

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !3475
  %249 = load i64, i64* %21, align 8, !dbg !3475
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !3475
  store i8 39, i8* %250, align 1, !dbg !3475
  br label %251, !dbg !3475

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !3478
  %253 = add i64 %252, 1, !dbg !3478
  store i64 %253, i64* %21, align 8, !dbg !3478
  br label %254, !dbg !3478

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !3465
  br label %255, !dbg !3465

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !3462

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !3479
  %258 = load i64, i64* %12, align 8, !dbg !3479
  %259 = icmp ult i64 %257, %258, !dbg !3479
  br i1 %259, label %260, label %264, !dbg !3482

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !3479
  %262 = load i64, i64* %21, align 8, !dbg !3479
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !3479
  store i8 92, i8* %263, align 1, !dbg !3479
  br label %264, !dbg !3479

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !3482
  %266 = add i64 %265, 1, !dbg !3482
  store i64 %266, i64* %21, align 8, !dbg !3482
  br label %267, !dbg !3482

267:                                              ; preds = %264
  br label %268, !dbg !3462

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !3483
  %270 = icmp ne i32 %269, 2, !dbg !3485
  br i1 %270, label %271, label %317, !dbg !3486

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !3487
  %273 = add i64 %272, 1, !dbg !3488
  %274 = load i64, i64* %14, align 8, !dbg !3489
  %275 = icmp ult i64 %273, %274, !dbg !3490
  br i1 %275, label %276, label %317, !dbg !3491

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !3492
  %278 = load i64, i64* %31, align 8, !dbg !3493
  %279 = add i64 %278, 1, !dbg !3494
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !3492
  %281 = load i8, i8* %280, align 1, !dbg !3492
  %282 = zext i8 %281 to i32, !dbg !3492
  %283 = icmp sle i32 48, %282, !dbg !3495
  br i1 %283, label %284, label %317, !dbg !3496

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !3497
  %286 = load i64, i64* %31, align 8, !dbg !3498
  %287 = add i64 %286, 1, !dbg !3499
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !3497
  %289 = load i8, i8* %288, align 1, !dbg !3497
  %290 = zext i8 %289 to i32, !dbg !3497
  %291 = icmp sle i32 %290, 57, !dbg !3500
  br i1 %291, label %292, label %317, !dbg !3501

292:                                              ; preds = %284
  br label %293, !dbg !3502

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !3504
  %295 = load i64, i64* %12, align 8, !dbg !3504
  %296 = icmp ult i64 %294, %295, !dbg !3504
  br i1 %296, label %297, label %301, !dbg !3507

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !3504
  %299 = load i64, i64* %21, align 8, !dbg !3504
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !3504
  store i8 48, i8* %300, align 1, !dbg !3504
  br label %301, !dbg !3504

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !3507
  %303 = add i64 %302, 1, !dbg !3507
  store i64 %303, i64* %21, align 8, !dbg !3507
  br label %304, !dbg !3507

304:                                              ; preds = %301
  br label %305, !dbg !3508

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !3509
  %307 = load i64, i64* %12, align 8, !dbg !3509
  %308 = icmp ult i64 %306, %307, !dbg !3509
  br i1 %308, label %309, label %313, !dbg !3512

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !3509
  %311 = load i64, i64* %21, align 8, !dbg !3509
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !3509
  store i8 48, i8* %312, align 1, !dbg !3509
  br label %313, !dbg !3509

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !3512
  %315 = add i64 %314, 1, !dbg !3512
  store i64 %315, i64* %21, align 8, !dbg !3512
  br label %316, !dbg !3512

316:                                              ; preds = %313
  br label %317, !dbg !3513

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !3514
  br label %324, !dbg !3515

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !3516
  %320 = and i32 %319, 1, !dbg !3518
  %321 = icmp ne i32 %320, 0, !dbg !3518
  br i1 %321, label %322, label %323, !dbg !3519

322:                                              ; preds = %318
  br label %993, !dbg !3520

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !3521

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !3522
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !3523

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !3524
  %329 = trunc i8 %328 to i1, !dbg !3524
  br i1 %329, label %330, label %331, !dbg !3527

330:                                              ; preds = %327
  br label %1078, !dbg !3528

331:                                              ; preds = %327
  br label %418, !dbg !3529

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !3530
  %334 = and i32 %333, 4, !dbg !3532
  %335 = icmp ne i32 %334, 0, !dbg !3532
  br i1 %335, label %336, label %417, !dbg !3533

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !3534
  %338 = add i64 %337, 2, !dbg !3535
  %339 = load i64, i64* %14, align 8, !dbg !3536
  %340 = icmp ult i64 %338, %339, !dbg !3537
  br i1 %340, label %341, label %417, !dbg !3538

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !3539
  %343 = load i64, i64* %31, align 8, !dbg !3540
  %344 = add i64 %343, 1, !dbg !3541
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !3539
  %346 = load i8, i8* %345, align 1, !dbg !3539
  %347 = zext i8 %346 to i32, !dbg !3539
  %348 = icmp eq i32 %347, 63, !dbg !3542
  br i1 %348, label %349, label %417, !dbg !3543

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !3544
  %351 = load i64, i64* %31, align 8, !dbg !3545
  %352 = add i64 %351, 2, !dbg !3546
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !3544
  %354 = load i8, i8* %353, align 1, !dbg !3544
  %355 = zext i8 %354 to i32, !dbg !3544
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
  ], !dbg !3547

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !3548
  %358 = trunc i8 %357 to i1, !dbg !3548
  br i1 %358, label %359, label %360, !dbg !3551

359:                                              ; preds = %356
  br label %1078, !dbg !3552

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !3553
  %362 = load i64, i64* %31, align 8, !dbg !3554
  %363 = add i64 %362, 2, !dbg !3555
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !3553
  %365 = load i8, i8* %364, align 1, !dbg !3553
  store i8 %365, i8* %35, align 1, !dbg !3556
  %366 = load i64, i64* %31, align 8, !dbg !3557
  %367 = add i64 %366, 2, !dbg !3557
  store i64 %367, i64* %31, align 8, !dbg !3557
  br label %368, !dbg !3558

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !3559
  %370 = load i64, i64* %12, align 8, !dbg !3559
  %371 = icmp ult i64 %369, %370, !dbg !3559
  br i1 %371, label %372, label %376, !dbg !3562

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !3559
  %374 = load i64, i64* %21, align 8, !dbg !3559
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !3559
  store i8 63, i8* %375, align 1, !dbg !3559
  br label %376, !dbg !3559

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !3562
  %378 = add i64 %377, 1, !dbg !3562
  store i64 %378, i64* %21, align 8, !dbg !3562
  br label %379, !dbg !3562

379:                                              ; preds = %376
  br label %380, !dbg !3563

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !3564
  %382 = load i64, i64* %12, align 8, !dbg !3564
  %383 = icmp ult i64 %381, %382, !dbg !3564
  br i1 %383, label %384, label %388, !dbg !3567

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !3564
  %386 = load i64, i64* %21, align 8, !dbg !3564
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !3564
  store i8 34, i8* %387, align 1, !dbg !3564
  br label %388, !dbg !3564

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !3567
  %390 = add i64 %389, 1, !dbg !3567
  store i64 %390, i64* %21, align 8, !dbg !3567
  br label %391, !dbg !3567

391:                                              ; preds = %388
  br label %392, !dbg !3568

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !3569
  %394 = load i64, i64* %12, align 8, !dbg !3569
  %395 = icmp ult i64 %393, %394, !dbg !3569
  br i1 %395, label %396, label %400, !dbg !3572

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !3569
  %398 = load i64, i64* %21, align 8, !dbg !3569
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !3569
  store i8 34, i8* %399, align 1, !dbg !3569
  br label %400, !dbg !3569

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !3572
  %402 = add i64 %401, 1, !dbg !3572
  store i64 %402, i64* %21, align 8, !dbg !3572
  br label %403, !dbg !3572

403:                                              ; preds = %400
  br label %404, !dbg !3573

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !3574
  %406 = load i64, i64* %12, align 8, !dbg !3574
  %407 = icmp ult i64 %405, %406, !dbg !3574
  br i1 %407, label %408, label %412, !dbg !3577

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !3574
  %410 = load i64, i64* %21, align 8, !dbg !3574
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !3574
  store i8 63, i8* %411, align 1, !dbg !3574
  br label %412, !dbg !3574

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !3577
  %414 = add i64 %413, 1, !dbg !3577
  store i64 %414, i64* %21, align 8, !dbg !3577
  br label %415, !dbg !3577

415:                                              ; preds = %412
  br label %416, !dbg !3578

416:                                              ; preds = %349, %415
  br label %417, !dbg !3579

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !3580

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !3581

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !3582
  br label %454, !dbg !3584

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !3585
  br label %454, !dbg !3586

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !3587
  br label %454, !dbg !3588

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !3589
  br label %446, !dbg !3590

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !3591
  br label %446, !dbg !3592

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !3593
  br label %446, !dbg !3594

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !3595
  br label %454, !dbg !3596

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !3597
  store i8 %427, i8* %36, align 1, !dbg !3598
  %428 = load i32, i32* %15, align 4, !dbg !3599
  %429 = icmp eq i32 %428, 2, !dbg !3601
  br i1 %429, label %430, label %435, !dbg !3602

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !3603
  %432 = trunc i8 %431 to i1, !dbg !3603
  br i1 %432, label %433, label %434, !dbg !3606

433:                                              ; preds = %430
  br label %1078, !dbg !3607

434:                                              ; preds = %430
  br label %942, !dbg !3608

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !3609
  %437 = trunc i8 %436 to i1, !dbg !3609
  br i1 %437, label %438, label %445, !dbg !3611

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !3612
  %440 = trunc i8 %439 to i1, !dbg !3612
  br i1 %440, label %441, label %445, !dbg !3613

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !3614
  %443 = icmp ne i64 %442, 0, !dbg !3614
  br i1 %443, label %444, label %445, !dbg !3615

444:                                              ; preds = %441
  br label %942, !dbg !3616

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !3614

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !3617), !dbg !3618
  %447 = load i32, i32* %15, align 4, !dbg !3619
  %448 = icmp eq i32 %447, 2, !dbg !3621
  br i1 %448, label %449, label %453, !dbg !3622

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !3623
  %451 = trunc i8 %450 to i1, !dbg !3623
  br i1 %451, label %452, label %453, !dbg !3624

452:                                              ; preds = %449
  br label %1078, !dbg !3625

453:                                              ; preds = %449, %446
  br label %454, !dbg !3623

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !3626), !dbg !3627
  %455 = load i8, i8* %25, align 1, !dbg !3628
  %456 = trunc i8 %455 to i1, !dbg !3628
  br i1 %456, label %457, label %459, !dbg !3630

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !3631
  store i8 %458, i8* %35, align 1, !dbg !3633
  br label %880, !dbg !3634

459:                                              ; preds = %454
  br label %849, !dbg !3635

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !3636
  %462 = icmp eq i64 %461, -1, !dbg !3638
  br i1 %462, label %463, label %469, !dbg !3639

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !3640
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !3640
  %466 = load i8, i8* %465, align 1, !dbg !3640
  %467 = zext i8 %466 to i32, !dbg !3640
  %468 = icmp eq i32 %467, 0, !dbg !3641
  br i1 %468, label %473, label %472, !dbg !3636

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !3642
  %471 = icmp eq i64 %470, 1, !dbg !3643
  br i1 %471, label %473, label %472, !dbg !3639

472:                                              ; preds = %469, %463
  br label %849, !dbg !3644

473:                                              ; preds = %469, %463
  br label %474, !dbg !3645

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !3646
  %476 = icmp ne i64 %475, 0, !dbg !3648
  br i1 %476, label %477, label %478, !dbg !3649

477:                                              ; preds = %474
  br label %849, !dbg !3650

478:                                              ; preds = %474
  br label %479, !dbg !3651

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !3652
  br label %480, !dbg !3653

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !3654
  %482 = icmp eq i32 %481, 2, !dbg !3656
  br i1 %482, label %483, label %487, !dbg !3657

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !3658
  %485 = trunc i8 %484 to i1, !dbg !3658
  br i1 %485, label %486, label %487, !dbg !3659

486:                                              ; preds = %483
  br label %1078, !dbg !3660

487:                                              ; preds = %483, %480
  br label %849, !dbg !3661

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !3662
  store i8 1, i8* %34, align 1, !dbg !3663
  %489 = load i32, i32* %15, align 4, !dbg !3664
  %490 = icmp eq i32 %489, 2, !dbg !3666
  br i1 %490, label %491, label %540, !dbg !3667

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !3668
  %493 = trunc i8 %492 to i1, !dbg !3668
  br i1 %493, label %494, label %495, !dbg !3671

494:                                              ; preds = %491
  br label %1078, !dbg !3672

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !3673
  %497 = icmp ne i64 %496, 0, !dbg !3673
  br i1 %497, label %498, label %503, !dbg !3675

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !3676
  %500 = icmp ne i64 %499, 0, !dbg !3676
  br i1 %500, label %503, label %501, !dbg !3677

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !3678
  store i64 %502, i64* %22, align 8, !dbg !3680
  store i64 0, i64* %12, align 8, !dbg !3681
  br label %503, !dbg !3682

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !3683

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !3684
  %506 = load i64, i64* %12, align 8, !dbg !3684
  %507 = icmp ult i64 %505, %506, !dbg !3684
  br i1 %507, label %508, label %512, !dbg !3687

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !3684
  %510 = load i64, i64* %21, align 8, !dbg !3684
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !3684
  store i8 39, i8* %511, align 1, !dbg !3684
  br label %512, !dbg !3684

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !3687
  %514 = add i64 %513, 1, !dbg !3687
  store i64 %514, i64* %21, align 8, !dbg !3687
  br label %515, !dbg !3687

515:                                              ; preds = %512
  br label %516, !dbg !3688

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !3689
  %518 = load i64, i64* %12, align 8, !dbg !3689
  %519 = icmp ult i64 %517, %518, !dbg !3689
  br i1 %519, label %520, label %524, !dbg !3692

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !3689
  %522 = load i64, i64* %21, align 8, !dbg !3689
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !3689
  store i8 92, i8* %523, align 1, !dbg !3689
  br label %524, !dbg !3689

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !3692
  %526 = add i64 %525, 1, !dbg !3692
  store i64 %526, i64* %21, align 8, !dbg !3692
  br label %527, !dbg !3692

527:                                              ; preds = %524
  br label %528, !dbg !3693

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !3694
  %530 = load i64, i64* %12, align 8, !dbg !3694
  %531 = icmp ult i64 %529, %530, !dbg !3694
  br i1 %531, label %532, label %536, !dbg !3697

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !3694
  %534 = load i64, i64* %21, align 8, !dbg !3694
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !3694
  store i8 39, i8* %535, align 1, !dbg !3694
  br label %536, !dbg !3694

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !3697
  %538 = add i64 %537, 1, !dbg !3697
  store i64 %538, i64* %21, align 8, !dbg !3697
  br label %539, !dbg !3697

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !3698
  br label %540, !dbg !3699

540:                                              ; preds = %539, %488
  br label %849, !dbg !3700

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !3701
  br label %849, !dbg !3702

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !3703, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.declare(metadata i8* %38, metadata !3706, metadata !DIExpression()), !dbg !3707
  %543 = load i8, i8* %20, align 1, !dbg !3708
  %544 = trunc i8 %543 to i1, !dbg !3708
  br i1 %544, label %545, label %557, !dbg !3710

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !3711
  %546 = call i16** @__ctype_b_loc() #21, !dbg !3713
  %547 = load i16*, i16** %546, align 8, !dbg !3713
  %548 = load i8, i8* %35, align 1, !dbg !3713
  %549 = zext i8 %548 to i32, !dbg !3713
  %550 = sext i32 %549 to i64, !dbg !3713
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !3713
  %552 = load i16, i16* %551, align 2, !dbg !3713
  %553 = zext i16 %552 to i32, !dbg !3713
  %554 = and i32 %553, 16384, !dbg !3713
  %555 = icmp ne i32 %554, 0, !dbg !3714
  %556 = zext i1 %555 to i8, !dbg !3715
  store i8 %556, i8* %38, align 1, !dbg !3715
  br label %648, !dbg !3716

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !3717, metadata !DIExpression()), !dbg !3729
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !3730
  store i64 0, i64* %37, align 8, !dbg !3731
  store i8 1, i8* %38, align 1, !dbg !3732
  %558 = load i64, i64* %14, align 8, !dbg !3733
  %559 = icmp eq i64 %558, -1, !dbg !3735
  br i1 %559, label %560, label %563, !dbg !3736

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !3737
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !3738
  store i64 %562, i64* %14, align 8, !dbg !3739
  br label %563, !dbg !3740

563:                                              ; preds = %560, %557
  br label %564, !dbg !3741

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3742, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.declare(metadata i64* %41, metadata !3747, metadata !DIExpression()), !dbg !3748
  %565 = load i8*, i8** %13, align 8, !dbg !3749
  %566 = load i64, i64* %31, align 8, !dbg !3750
  %567 = load i64, i64* %37, align 8, !dbg !3751
  %568 = add i64 %566, %567, !dbg !3752
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !3749
  %570 = load i64, i64* %14, align 8, !dbg !3753
  %571 = load i64, i64* %31, align 8, !dbg !3754
  %572 = load i64, i64* %37, align 8, !dbg !3755
  %573 = add i64 %571, %572, !dbg !3756
  %574 = sub i64 %570, %573, !dbg !3757
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !3758
  store i64 %575, i64* %41, align 8, !dbg !3748
  %576 = load i64, i64* %41, align 8, !dbg !3759
  %577 = icmp eq i64 %576, 0, !dbg !3761
  br i1 %577, label %578, label %579, !dbg !3762

578:                                              ; preds = %564
  br label %647, !dbg !3763

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !3764
  %581 = icmp eq i64 %580, -1, !dbg !3766
  br i1 %581, label %582, label %583, !dbg !3767

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !3768
  br label %647, !dbg !3770

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !3771
  %585 = icmp eq i64 %584, -2, !dbg !3773
  br i1 %585, label %586, label %608, !dbg !3774

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !3775
  br label %587, !dbg !3777

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !3778
  %589 = load i64, i64* %37, align 8, !dbg !3779
  %590 = add i64 %588, %589, !dbg !3780
  %591 = load i64, i64* %14, align 8, !dbg !3781
  %592 = icmp ult i64 %590, %591, !dbg !3782
  br i1 %592, label %593, label %602, !dbg !3783

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !3784
  %595 = load i64, i64* %31, align 8, !dbg !3785
  %596 = load i64, i64* %37, align 8, !dbg !3786
  %597 = add i64 %595, %596, !dbg !3787
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !3784
  %599 = load i8, i8* %598, align 1, !dbg !3784
  %600 = zext i8 %599 to i32, !dbg !3784
  %601 = icmp ne i32 %600, 0, !dbg !3783
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !3788
  br i1 %603, label %604, label %607, !dbg !3777

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !3789
  %606 = add i64 %605, 1, !dbg !3789
  store i64 %606, i64* %37, align 8, !dbg !3789
  br label %587, !dbg !3777, !llvm.loop !3790

607:                                              ; preds = %602
  br label %647, !dbg !3791

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !3792
  %610 = trunc i8 %609 to i1, !dbg !3792
  br i1 %610, label %611, label %635, !dbg !3795

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !3796
  %613 = icmp eq i32 %612, 2, !dbg !3797
  br i1 %613, label %614, label %635, !dbg !3798

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !3799, metadata !DIExpression()), !dbg !3802
  store i64 1, i64* %42, align 8, !dbg !3802
  br label %615, !dbg !3803

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !3804
  %617 = load i64, i64* %41, align 8, !dbg !3806
  %618 = icmp ult i64 %616, %617, !dbg !3807
  br i1 %618, label %619, label %634, !dbg !3808

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !3809
  %621 = load i64, i64* %31, align 8, !dbg !3810
  %622 = load i64, i64* %37, align 8, !dbg !3811
  %623 = add i64 %621, %622, !dbg !3812
  %624 = load i64, i64* %42, align 8, !dbg !3813
  %625 = add i64 %623, %624, !dbg !3814
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !3809
  %627 = load i8, i8* %626, align 1, !dbg !3809
  %628 = zext i8 %627 to i32, !dbg !3809
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !3815

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !3816

630:                                              ; preds = %619
  br label %631, !dbg !3818

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !3819
  %633 = add i64 %632, 1, !dbg !3819
  store i64 %633, i64* %42, align 8, !dbg !3819
  br label %615, !dbg !3820, !llvm.loop !3821

634:                                              ; preds = %615
  br label %635, !dbg !3823

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !3824
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !3826
  %638 = icmp ne i32 %637, 0, !dbg !3826
  br i1 %638, label %640, label %639, !dbg !3827

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !3828
  br label %640, !dbg !3829

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !3830
  %642 = load i64, i64* %37, align 8, !dbg !3831
  %643 = add i64 %642, %641, !dbg !3831
  store i64 %643, i64* %37, align 8, !dbg !3831
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !3832

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !3833
  %650 = trunc i8 %649 to i1, !dbg !3833
  %651 = zext i1 %650 to i8, !dbg !3834
  store i8 %651, i8* %34, align 1, !dbg !3834
  %652 = load i64, i64* %37, align 8, !dbg !3835
  %653 = icmp ult i64 1, %652, !dbg !3837
  br i1 %653, label %660, label %654, !dbg !3838

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !3839
  %656 = trunc i8 %655 to i1, !dbg !3839
  br i1 %656, label %657, label %848, !dbg !3840

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !3841
  %659 = trunc i8 %658 to i1, !dbg !3841
  br i1 %659, label %848, label %660, !dbg !3842

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !3843, metadata !DIExpression()), !dbg !3845
  %661 = load i64, i64* %31, align 8, !dbg !3846
  %662 = load i64, i64* %37, align 8, !dbg !3847
  %663 = add i64 %661, %662, !dbg !3848
  store i64 %663, i64* %43, align 8, !dbg !3845
  br label %664, !dbg !3849

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !3850
  %666 = trunc i8 %665 to i1, !dbg !3850
  br i1 %666, label %667, label %772, !dbg !3855

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !3856
  %669 = trunc i8 %668 to i1, !dbg !3856
  br i1 %669, label %772, label %670, !dbg !3857

670:                                              ; preds = %667
  br label %671, !dbg !3858

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !3860
  %673 = trunc i8 %672 to i1, !dbg !3860
  br i1 %673, label %674, label %675, !dbg !3863

674:                                              ; preds = %671
  br label %1078, !dbg !3860

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !3863
  %676 = load i32, i32* %15, align 4, !dbg !3864
  %677 = icmp eq i32 %676, 2, !dbg !3864
  br i1 %677, label %678, label %718, !dbg !3864

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !3864
  %680 = trunc i8 %679 to i1, !dbg !3864
  br i1 %680, label %718, label %681, !dbg !3863

681:                                              ; preds = %678
  br label %682, !dbg !3866

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !3868
  %684 = load i64, i64* %12, align 8, !dbg !3868
  %685 = icmp ult i64 %683, %684, !dbg !3868
  br i1 %685, label %686, label %690, !dbg !3871

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !3868
  %688 = load i64, i64* %21, align 8, !dbg !3868
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !3868
  store i8 39, i8* %689, align 1, !dbg !3868
  br label %690, !dbg !3868

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !3871
  %692 = add i64 %691, 1, !dbg !3871
  store i64 %692, i64* %21, align 8, !dbg !3871
  br label %693, !dbg !3871

693:                                              ; preds = %690
  br label %694, !dbg !3866

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !3872
  %696 = load i64, i64* %12, align 8, !dbg !3872
  %697 = icmp ult i64 %695, %696, !dbg !3872
  br i1 %697, label %698, label %702, !dbg !3875

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !3872
  %700 = load i64, i64* %21, align 8, !dbg !3872
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !3872
  store i8 36, i8* %701, align 1, !dbg !3872
  br label %702, !dbg !3872

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !3875
  %704 = add i64 %703, 1, !dbg !3875
  store i64 %704, i64* %21, align 8, !dbg !3875
  br label %705, !dbg !3875

705:                                              ; preds = %702
  br label %706, !dbg !3866

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !3876
  %708 = load i64, i64* %12, align 8, !dbg !3876
  %709 = icmp ult i64 %707, %708, !dbg !3876
  br i1 %709, label %710, label %714, !dbg !3879

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !3876
  %712 = load i64, i64* %21, align 8, !dbg !3876
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !3876
  store i8 39, i8* %713, align 1, !dbg !3876
  br label %714, !dbg !3876

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !3879
  %716 = add i64 %715, 1, !dbg !3879
  store i64 %716, i64* %21, align 8, !dbg !3879
  br label %717, !dbg !3879

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !3866
  br label %718, !dbg !3866

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !3863

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !3880
  %721 = load i64, i64* %12, align 8, !dbg !3880
  %722 = icmp ult i64 %720, %721, !dbg !3880
  br i1 %722, label %723, label %727, !dbg !3883

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !3880
  %725 = load i64, i64* %21, align 8, !dbg !3880
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !3880
  store i8 92, i8* %726, align 1, !dbg !3880
  br label %727, !dbg !3880

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !3883
  %729 = add i64 %728, 1, !dbg !3883
  store i64 %729, i64* %21, align 8, !dbg !3883
  br label %730, !dbg !3883

730:                                              ; preds = %727
  br label %731, !dbg !3863

731:                                              ; preds = %730
  br label %732, !dbg !3884

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !3885
  %734 = load i64, i64* %12, align 8, !dbg !3885
  %735 = icmp ult i64 %733, %734, !dbg !3885
  br i1 %735, label %736, label %745, !dbg !3888

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !3885
  %738 = zext i8 %737 to i32, !dbg !3885
  %739 = ashr i32 %738, 6, !dbg !3885
  %740 = add nsw i32 48, %739, !dbg !3885
  %741 = trunc i32 %740 to i8, !dbg !3885
  %742 = load i8*, i8** %11, align 8, !dbg !3885
  %743 = load i64, i64* %21, align 8, !dbg !3885
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !3885
  store i8 %741, i8* %744, align 1, !dbg !3885
  br label %745, !dbg !3885

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !3888
  %747 = add i64 %746, 1, !dbg !3888
  store i64 %747, i64* %21, align 8, !dbg !3888
  br label %748, !dbg !3888

748:                                              ; preds = %745
  br label %749, !dbg !3889

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !3890
  %751 = load i64, i64* %12, align 8, !dbg !3890
  %752 = icmp ult i64 %750, %751, !dbg !3890
  br i1 %752, label %753, label %763, !dbg !3893

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !3890
  %755 = zext i8 %754 to i32, !dbg !3890
  %756 = ashr i32 %755, 3, !dbg !3890
  %757 = and i32 %756, 7, !dbg !3890
  %758 = add nsw i32 48, %757, !dbg !3890
  %759 = trunc i32 %758 to i8, !dbg !3890
  %760 = load i8*, i8** %11, align 8, !dbg !3890
  %761 = load i64, i64* %21, align 8, !dbg !3890
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !3890
  store i8 %759, i8* %762, align 1, !dbg !3890
  br label %763, !dbg !3890

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !3893
  %765 = add i64 %764, 1, !dbg !3893
  store i64 %765, i64* %21, align 8, !dbg !3893
  br label %766, !dbg !3893

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !3894
  %768 = zext i8 %767 to i32, !dbg !3894
  %769 = and i32 %768, 7, !dbg !3895
  %770 = add nsw i32 48, %769, !dbg !3896
  %771 = trunc i32 %770 to i8, !dbg !3897
  store i8 %771, i8* %35, align 1, !dbg !3898
  br label %789, !dbg !3899

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !3900
  %774 = trunc i8 %773 to i1, !dbg !3900
  br i1 %774, label %775, label %788, !dbg !3902

775:                                              ; preds = %772
  br label %776, !dbg !3903

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !3905
  %778 = load i64, i64* %12, align 8, !dbg !3905
  %779 = icmp ult i64 %777, %778, !dbg !3905
  br i1 %779, label %780, label %784, !dbg !3908

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !3905
  %782 = load i64, i64* %21, align 8, !dbg !3905
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !3905
  store i8 92, i8* %783, align 1, !dbg !3905
  br label %784, !dbg !3905

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !3908
  %786 = add i64 %785, 1, !dbg !3908
  store i64 %786, i64* %21, align 8, !dbg !3908
  br label %787, !dbg !3908

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !3909
  br label %788, !dbg !3910

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !3911
  %791 = load i64, i64* %31, align 8, !dbg !3913
  %792 = add i64 %791, 1, !dbg !3914
  %793 = icmp ule i64 %790, %792, !dbg !3915
  br i1 %793, label %794, label %795, !dbg !3916

794:                                              ; preds = %789
  br label %847, !dbg !3917

795:                                              ; preds = %789
  br label %796, !dbg !3918

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !3919
  %798 = trunc i8 %797 to i1, !dbg !3919
  br i1 %798, label %799, label %827, !dbg !3919

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !3919
  %801 = trunc i8 %800 to i1, !dbg !3919
  br i1 %801, label %827, label %802, !dbg !3922

802:                                              ; preds = %799
  br label %803, !dbg !3923

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !3925
  %805 = load i64, i64* %12, align 8, !dbg !3925
  %806 = icmp ult i64 %804, %805, !dbg !3925
  br i1 %806, label %807, label %811, !dbg !3928

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !3925
  %809 = load i64, i64* %21, align 8, !dbg !3925
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !3925
  store i8 39, i8* %810, align 1, !dbg !3925
  br label %811, !dbg !3925

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !3928
  %813 = add i64 %812, 1, !dbg !3928
  store i64 %813, i64* %21, align 8, !dbg !3928
  br label %814, !dbg !3928

814:                                              ; preds = %811
  br label %815, !dbg !3923

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !3929
  %817 = load i64, i64* %12, align 8, !dbg !3929
  %818 = icmp ult i64 %816, %817, !dbg !3929
  br i1 %818, label %819, label %823, !dbg !3932

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !3929
  %821 = load i64, i64* %21, align 8, !dbg !3929
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !3929
  store i8 39, i8* %822, align 1, !dbg !3929
  br label %823, !dbg !3929

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !3932
  %825 = add i64 %824, 1, !dbg !3932
  store i64 %825, i64* %21, align 8, !dbg !3932
  br label %826, !dbg !3932

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !3923
  br label %827, !dbg !3923

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !3922

828:                                              ; preds = %827
  br label %829, !dbg !3933

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !3934
  %831 = load i64, i64* %12, align 8, !dbg !3934
  %832 = icmp ult i64 %830, %831, !dbg !3934
  br i1 %832, label %833, label %838, !dbg !3937

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !3934
  %835 = load i8*, i8** %11, align 8, !dbg !3934
  %836 = load i64, i64* %21, align 8, !dbg !3934
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !3934
  store i8 %834, i8* %837, align 1, !dbg !3934
  br label %838, !dbg !3934

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !3937
  %840 = add i64 %839, 1, !dbg !3937
  store i64 %840, i64* %21, align 8, !dbg !3937
  br label %841, !dbg !3937

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !3938
  %843 = load i64, i64* %31, align 8, !dbg !3939
  %844 = add i64 %843, 1, !dbg !3939
  store i64 %844, i64* %31, align 8, !dbg !3939
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !3938
  %846 = load i8, i8* %845, align 1, !dbg !3938
  store i8 %846, i8* %35, align 1, !dbg !3940
  br label %664, !dbg !3941, !llvm.loop !3942

847:                                              ; preds = %794
  br label %942, !dbg !3945

848:                                              ; preds = %657, %654
  br label %849, !dbg !3946

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !3947
  %851 = trunc i8 %850 to i1, !dbg !3947
  br i1 %851, label %852, label %855, !dbg !3949

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !3950
  %854 = icmp ne i32 %853, 2, !dbg !3951
  br i1 %854, label %858, label %855, !dbg !3952

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !3953
  %857 = trunc i8 %856 to i1, !dbg !3953
  br i1 %857, label %858, label %875, !dbg !3954

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !3955
  %860 = icmp ne i32* %859, null, !dbg !3955
  br i1 %860, label %861, label %875, !dbg !3956

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !3957
  %863 = load i8, i8* %35, align 1, !dbg !3958
  %864 = zext i8 %863 to i64, !dbg !3958
  %865 = udiv i64 %864, 32, !dbg !3959
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !3957
  %867 = load i32, i32* %866, align 4, !dbg !3957
  %868 = load i8, i8* %35, align 1, !dbg !3960
  %869 = zext i8 %868 to i64, !dbg !3960
  %870 = urem i64 %869, 32, !dbg !3961
  %871 = trunc i64 %870 to i32, !dbg !3962
  %872 = lshr i32 %867, %871, !dbg !3962
  %873 = and i32 %872, 1, !dbg !3963
  %874 = icmp ne i32 %873, 0, !dbg !3963
  br i1 %874, label %879, label %875, !dbg !3964

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !3965
  %877 = trunc i8 %876 to i1, !dbg !3965
  br i1 %877, label %879, label %878, !dbg !3966

878:                                              ; preds = %875
  br label %942, !dbg !3967

879:                                              ; preds = %875, %861
  br label %880, !dbg !3965

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !3968), !dbg !3969
  br label %881, !dbg !3970

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !3971
  %883 = trunc i8 %882 to i1, !dbg !3971
  br i1 %883, label %884, label %885, !dbg !3974

884:                                              ; preds = %881
  br label %1078, !dbg !3971

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !3974
  %886 = load i32, i32* %15, align 4, !dbg !3975
  %887 = icmp eq i32 %886, 2, !dbg !3975
  br i1 %887, label %888, label %928, !dbg !3975

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !3975
  %890 = trunc i8 %889 to i1, !dbg !3975
  br i1 %890, label %928, label %891, !dbg !3974

891:                                              ; preds = %888
  br label %892, !dbg !3977

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !3979
  %894 = load i64, i64* %12, align 8, !dbg !3979
  %895 = icmp ult i64 %893, %894, !dbg !3979
  br i1 %895, label %896, label %900, !dbg !3982

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !3979
  %898 = load i64, i64* %21, align 8, !dbg !3979
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !3979
  store i8 39, i8* %899, align 1, !dbg !3979
  br label %900, !dbg !3979

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !3982
  %902 = add i64 %901, 1, !dbg !3982
  store i64 %902, i64* %21, align 8, !dbg !3982
  br label %903, !dbg !3982

903:                                              ; preds = %900
  br label %904, !dbg !3977

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !3983
  %906 = load i64, i64* %12, align 8, !dbg !3983
  %907 = icmp ult i64 %905, %906, !dbg !3983
  br i1 %907, label %908, label %912, !dbg !3986

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !3983
  %910 = load i64, i64* %21, align 8, !dbg !3983
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !3983
  store i8 36, i8* %911, align 1, !dbg !3983
  br label %912, !dbg !3983

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !3986
  %914 = add i64 %913, 1, !dbg !3986
  store i64 %914, i64* %21, align 8, !dbg !3986
  br label %915, !dbg !3986

915:                                              ; preds = %912
  br label %916, !dbg !3977

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !3987
  %918 = load i64, i64* %12, align 8, !dbg !3987
  %919 = icmp ult i64 %917, %918, !dbg !3987
  br i1 %919, label %920, label %924, !dbg !3990

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !3987
  %922 = load i64, i64* %21, align 8, !dbg !3987
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !3987
  store i8 39, i8* %923, align 1, !dbg !3987
  br label %924, !dbg !3987

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !3990
  %926 = add i64 %925, 1, !dbg !3990
  store i64 %926, i64* %21, align 8, !dbg !3990
  br label %927, !dbg !3990

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !3977
  br label %928, !dbg !3977

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !3974

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !3991
  %931 = load i64, i64* %12, align 8, !dbg !3991
  %932 = icmp ult i64 %930, %931, !dbg !3991
  br i1 %932, label %933, label %937, !dbg !3994

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !3991
  %935 = load i64, i64* %21, align 8, !dbg !3991
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !3991
  store i8 92, i8* %936, align 1, !dbg !3991
  br label %937, !dbg !3991

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !3994
  %939 = add i64 %938, 1, !dbg !3994
  store i64 %939, i64* %21, align 8, !dbg !3994
  br label %940, !dbg !3994

940:                                              ; preds = %937
  br label %941, !dbg !3974

941:                                              ; preds = %940
  br label %942, !dbg !3974

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !3995), !dbg !3996
  br label %943, !dbg !3997

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !3998
  %945 = trunc i8 %944 to i1, !dbg !3998
  br i1 %945, label %946, label %974, !dbg !3998

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !3998
  %948 = trunc i8 %947 to i1, !dbg !3998
  br i1 %948, label %974, label %949, !dbg !4001

949:                                              ; preds = %946
  br label %950, !dbg !4002

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !4004
  %952 = load i64, i64* %12, align 8, !dbg !4004
  %953 = icmp ult i64 %951, %952, !dbg !4004
  br i1 %953, label %954, label %958, !dbg !4007

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !4004
  %956 = load i64, i64* %21, align 8, !dbg !4004
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !4004
  store i8 39, i8* %957, align 1, !dbg !4004
  br label %958, !dbg !4004

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !4007
  %960 = add i64 %959, 1, !dbg !4007
  store i64 %960, i64* %21, align 8, !dbg !4007
  br label %961, !dbg !4007

961:                                              ; preds = %958
  br label %962, !dbg !4002

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !4008
  %964 = load i64, i64* %12, align 8, !dbg !4008
  %965 = icmp ult i64 %963, %964, !dbg !4008
  br i1 %965, label %966, label %970, !dbg !4011

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !4008
  %968 = load i64, i64* %21, align 8, !dbg !4008
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !4008
  store i8 39, i8* %969, align 1, !dbg !4008
  br label %970, !dbg !4008

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !4011
  %972 = add i64 %971, 1, !dbg !4011
  store i64 %972, i64* %21, align 8, !dbg !4011
  br label %973, !dbg !4011

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !4002
  br label %974, !dbg !4002

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !4001

975:                                              ; preds = %974
  br label %976, !dbg !4012

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !4013
  %978 = load i64, i64* %12, align 8, !dbg !4013
  %979 = icmp ult i64 %977, %978, !dbg !4013
  br i1 %979, label %980, label %985, !dbg !4016

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !4013
  %982 = load i8*, i8** %11, align 8, !dbg !4013
  %983 = load i64, i64* %21, align 8, !dbg !4013
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !4013
  store i8 %981, i8* %984, align 1, !dbg !4013
  br label %985, !dbg !4013

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !4016
  %987 = add i64 %986, 1, !dbg !4016
  store i64 %987, i64* %21, align 8, !dbg !4016
  br label %988, !dbg !4016

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !4017
  %990 = trunc i8 %989 to i1, !dbg !4017
  br i1 %990, label %992, label %991, !dbg !4019

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !4020
  br label %992, !dbg !4021

992:                                              ; preds = %991, %988
  br label %993, !dbg !4022

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !4023
  %995 = add i64 %994, 1, !dbg !4023
  store i64 %995, i64* %31, align 8, !dbg !4023
  br label %139, !dbg !4024, !llvm.loop !4025

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !4027
  %998 = icmp eq i64 %997, 0, !dbg !4029
  br i1 %998, label %999, label %1006, !dbg !4030

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !4031
  %1001 = icmp eq i32 %1000, 2, !dbg !4032
  br i1 %1001, label %1002, label %1006, !dbg !4033

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !4034
  %1004 = trunc i8 %1003 to i1, !dbg !4034
  br i1 %1004, label %1005, label %1006, !dbg !4035

1005:                                             ; preds = %1002
  br label %1078, !dbg !4036

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !4037
  %1008 = icmp eq i32 %1007, 2, !dbg !4039
  br i1 %1008, label %1009, label %1038, !dbg !4040

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !4041
  %1011 = trunc i8 %1010 to i1, !dbg !4041
  br i1 %1011, label %1038, label %1012, !dbg !4042

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !4043
  %1014 = trunc i8 %1013 to i1, !dbg !4043
  br i1 %1014, label %1015, label %1038, !dbg !4044

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !4045
  %1017 = trunc i8 %1016 to i1, !dbg !4045
  br i1 %1017, label %1018, label %1028, !dbg !4048

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !4049
  %1020 = load i64, i64* %22, align 8, !dbg !4050
  %1021 = load i8*, i8** %13, align 8, !dbg !4051
  %1022 = load i64, i64* %14, align 8, !dbg !4052
  %1023 = load i32, i32* %16, align 4, !dbg !4053
  %1024 = load i32*, i32** %17, align 8, !dbg !4054
  %1025 = load i8*, i8** %18, align 8, !dbg !4055
  %1026 = load i8*, i8** %19, align 8, !dbg !4056
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !4057
  store i64 %1027, i64* %10, align 8, !dbg !4058
  br label %1096, !dbg !4058

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !4059
  %1030 = icmp ne i64 %1029, 0, !dbg !4059
  br i1 %1030, label %1036, label %1031, !dbg !4061

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !4062
  %1033 = icmp ne i64 %1032, 0, !dbg !4062
  br i1 %1033, label %1034, label %1036, !dbg !4063

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !4064
  store i64 %1035, i64* %12, align 8, !dbg !4066
  store i64 0, i64* %21, align 8, !dbg !4067
  br label %51, !dbg !4068

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !4069

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !4070
  %1040 = icmp ne i8* %1039, null, !dbg !4070
  br i1 %1040, label %1041, label %1068, !dbg !4072

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !4073
  %1043 = trunc i8 %1042 to i1, !dbg !4073
  br i1 %1043, label %1068, label %1044, !dbg !4074

1044:                                             ; preds = %1041
  br label %1045, !dbg !4075

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !4076
  %1047 = load i8, i8* %1046, align 1, !dbg !4079
  %1048 = icmp ne i8 %1047, 0, !dbg !4080
  br i1 %1048, label %1049, label %1067, !dbg !4080

1049:                                             ; preds = %1045
  br label %1050, !dbg !4081

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !4082
  %1052 = load i64, i64* %12, align 8, !dbg !4082
  %1053 = icmp ult i64 %1051, %1052, !dbg !4082
  br i1 %1053, label %1054, label %1060, !dbg !4085

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !4082
  %1056 = load i8, i8* %1055, align 1, !dbg !4082
  %1057 = load i8*, i8** %11, align 8, !dbg !4082
  %1058 = load i64, i64* %21, align 8, !dbg !4082
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !4082
  store i8 %1056, i8* %1059, align 1, !dbg !4082
  br label %1060, !dbg !4082

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !4085
  %1062 = add i64 %1061, 1, !dbg !4085
  store i64 %1062, i64* %21, align 8, !dbg !4085
  br label %1063, !dbg !4085

1063:                                             ; preds = %1060
  br label %1064, !dbg !4085

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !4086
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !4086
  store i8* %1066, i8** %23, align 8, !dbg !4086
  br label %1045, !dbg !4087, !llvm.loop !4088

1067:                                             ; preds = %1045
  br label %1068, !dbg !4089

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !4090
  %1070 = load i64, i64* %12, align 8, !dbg !4092
  %1071 = icmp ult i64 %1069, %1070, !dbg !4093
  br i1 %1071, label %1072, label %1076, !dbg !4094

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !4095
  %1074 = load i64, i64* %21, align 8, !dbg !4096
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !4095
  store i8 0, i8* %1075, align 1, !dbg !4097
  br label %1076, !dbg !4095

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !4098
  store i64 %1077, i64* %10, align 8, !dbg !4099
  br label %1096, !dbg !4099

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !4100), !dbg !4101
  %1079 = load i32, i32* %15, align 4, !dbg !4102
  %1080 = icmp eq i32 %1079, 2, !dbg !4104
  br i1 %1080, label %1081, label %1085, !dbg !4105

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !4106
  %1083 = trunc i8 %1082 to i1, !dbg !4106
  br i1 %1083, label %1084, label %1085, !dbg !4107

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !4108
  br label %1085, !dbg !4109

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !4110
  %1087 = load i64, i64* %12, align 8, !dbg !4111
  %1088 = load i8*, i8** %13, align 8, !dbg !4112
  %1089 = load i64, i64* %14, align 8, !dbg !4113
  %1090 = load i32, i32* %15, align 4, !dbg !4114
  %1091 = load i32, i32* %16, align 4, !dbg !4115
  %1092 = and i32 %1091, -3, !dbg !4116
  %1093 = load i8*, i8** %18, align 8, !dbg !4117
  %1094 = load i8*, i8** %19, align 8, !dbg !4118
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !4119
  store i64 %1095, i64* %10, align 8, !dbg !4120
  br label %1096, !dbg !4120

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !4121
  ret i64 %1097, !dbg !4121
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !287 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4126, metadata !DIExpression()), !dbg !4127
  %9 = load i8*, i8** %4, align 8, !dbg !4128
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.184, i64 0, i64 0), i8* noundef %9) #18, !dbg !4128
  store i8* %10, i8** %6, align 8, !dbg !4127
  %11 = load i8*, i8** %6, align 8, !dbg !4129
  %12 = load i8*, i8** %4, align 8, !dbg !4131
  %13 = icmp ne i8* %11, %12, !dbg !4132
  br i1 %13, label %14, label %16, !dbg !4133

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !4134
  store i8* %15, i8** %3, align 8, !dbg !4135
  br label %37, !dbg !4135

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !4138, metadata !DIExpression()), !dbg !4139
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !4140
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !4141
  %18 = icmp eq i64 %17, 3, !dbg !4143
  br i1 %18, label %19, label %32, !dbg !4144

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !4145
  %21 = icmp eq i32 %20, 8216, !dbg !4146
  br i1 %21, label %22, label %32, !dbg !4147

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !4148
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !4148
  %25 = load i8, i8* %24, align 1, !dbg !4148
  %26 = zext i8 %25 to i32, !dbg !4148
  %27 = icmp eq i32 %26, 39, !dbg !4149
  %28 = zext i1 %27 to i32, !dbg !4149
  %29 = sext i32 %28 to i64, !dbg !4150
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !4150
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !4150
  store i8* %31, i8** %3, align 8, !dbg !4151
  br label %37, !dbg !4151

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !4152
  %34 = icmp eq i32 %33, 9, !dbg !4153
  %35 = zext i1 %34 to i64, !dbg !4152
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.181, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.183, i64 0, i64 0), !dbg !4152
  store i8* %36, i8** %3, align 8, !dbg !4154
  br label %37, !dbg !4154

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !4155
  ret i8* %38, !dbg !4155
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !4156 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4159, metadata !DIExpression()), !dbg !4160
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4161, metadata !DIExpression()), !dbg !4162
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !4163, metadata !DIExpression()), !dbg !4164
  %7 = load i8*, i8** %4, align 8, !dbg !4165
  %8 = load i64, i64* %5, align 8, !dbg !4166
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !4167
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !4168
  ret i8* %10, !dbg !4169
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !4170 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4173, metadata !DIExpression()), !dbg !4174
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4177, metadata !DIExpression()), !dbg !4178
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !4181, metadata !DIExpression()), !dbg !4182
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4183
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !4183
  br i1 %15, label %16, label %18, !dbg !4183

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4184
  br label %19, !dbg !4183

18:                                               ; preds = %4
  br label %19, !dbg !4183

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !4183
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !4182
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4185, metadata !DIExpression()), !dbg !4186
  %21 = call i32* @__errno_location() #21, !dbg !4187
  %22 = load i32, i32* %21, align 4, !dbg !4187
  store i32 %22, i32* %10, align 4, !dbg !4186
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4188, metadata !DIExpression()), !dbg !4189
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4190
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !4191
  %25 = load i32, i32* %24, align 4, !dbg !4191
  %26 = load i64*, i64** %7, align 8, !dbg !4192
  %27 = icmp ne i64* %26, null, !dbg !4192
  %28 = zext i1 %27 to i64, !dbg !4192
  %29 = select i1 %27, i32 0, i32 1, !dbg !4192
  %30 = or i32 %25, %29, !dbg !4193
  store i32 %30, i32* %11, align 4, !dbg !4189
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4194, metadata !DIExpression()), !dbg !4195
  %31 = load i8*, i8** %5, align 8, !dbg !4196
  %32 = load i64, i64* %6, align 8, !dbg !4197
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4198
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !4199
  %35 = load i32, i32* %34, align 8, !dbg !4199
  %36 = load i32, i32* %11, align 4, !dbg !4200
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4201
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !4202
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !4201
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4203
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !4204
  %42 = load i8*, i8** %41, align 8, !dbg !4204
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4205
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !4206
  %45 = load i8*, i8** %44, align 8, !dbg !4206
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !4207
  %47 = add i64 %46, 1, !dbg !4208
  store i64 %47, i64* %12, align 8, !dbg !4195
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4209, metadata !DIExpression()), !dbg !4210
  %48 = load i64, i64* %12, align 8, !dbg !4211
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #23, !dbg !4212
  store i8* %49, i8** %13, align 8, !dbg !4210
  %50 = load i8*, i8** %13, align 8, !dbg !4213
  %51 = load i64, i64* %12, align 8, !dbg !4214
  %52 = load i8*, i8** %5, align 8, !dbg !4215
  %53 = load i64, i64* %6, align 8, !dbg !4216
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4217
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !4218
  %56 = load i32, i32* %55, align 8, !dbg !4218
  %57 = load i32, i32* %11, align 4, !dbg !4219
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4220
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !4221
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !4220
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4222
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !4223
  %63 = load i8*, i8** %62, align 8, !dbg !4223
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4224
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !4225
  %66 = load i8*, i8** %65, align 8, !dbg !4225
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !4226
  %68 = load i32, i32* %10, align 4, !dbg !4227
  %69 = call i32* @__errno_location() #21, !dbg !4228
  store i32 %68, i32* %69, align 4, !dbg !4229
  %70 = load i64*, i64** %7, align 8, !dbg !4230
  %71 = icmp ne i64* %70, null, !dbg !4230
  br i1 %71, label %72, label %76, !dbg !4232

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !4233
  %74 = sub i64 %73, 1, !dbg !4234
  %75 = load i64*, i64** %7, align 8, !dbg !4235
  store i64 %74, i64* %75, align 8, !dbg !4236
  br label %76, !dbg !4237

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !4238
  ret i8* %77, !dbg !4239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !4240 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !4241, metadata !DIExpression()), !dbg !4242
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4243
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !4242
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4244, metadata !DIExpression()), !dbg !4246
  store i32 1, i32* %2, align 4, !dbg !4246
  br label %4, !dbg !4247

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !4248
  %6 = load i32, i32* @nslots, align 4, !dbg !4250
  %7 = icmp slt i32 %5, %6, !dbg !4251
  br i1 %7, label %8, label %18, !dbg !4252

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4253
  %10 = load i32, i32* %2, align 4, !dbg !4254
  %11 = sext i32 %10 to i64, !dbg !4253
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !4253
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !4255
  %14 = load i8*, i8** %13, align 8, !dbg !4255
  call void @free(i8* noundef %14) #18, !dbg !4256
  br label %15, !dbg !4256

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !4257
  %17 = add nsw i32 %16, 1, !dbg !4257
  store i32 %17, i32* %2, align 4, !dbg !4257
  br label %4, !dbg !4258, !llvm.loop !4259

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4261
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !4261
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !4263
  %22 = load i8*, i8** %21, align 8, !dbg !4263
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4264
  br i1 %23, label %24, label %29, !dbg !4265

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4266
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !4266
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !4268
  %28 = load i8*, i8** %27, align 8, !dbg !4268
  call void @free(i8* noundef %28) #18, !dbg !4269
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !4270
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !4271
  br label %29, !dbg !4272

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4273
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !4275
  br i1 %31, label %32, label %35, !dbg !4276

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4277
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !4277
  call void @free(i8* noundef %34) #18, !dbg !4279
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4280
  br label %35, !dbg !4281

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !4282
  ret void, !dbg !4283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !4284 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4289, metadata !DIExpression()), !dbg !4290
  %5 = load i32, i32* %3, align 4, !dbg !4291
  %6 = load i8*, i8** %4, align 8, !dbg !4292
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !4293
  ret i8* %7, !dbg !4294
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !4295 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4302, metadata !DIExpression()), !dbg !4303
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !4304, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4306, metadata !DIExpression()), !dbg !4307
  %18 = call i32* @__errno_location() #21, !dbg !4308
  %19 = load i32, i32* %18, align 4, !dbg !4308
  store i32 %19, i32* %9, align 4, !dbg !4307
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !4309, metadata !DIExpression()), !dbg !4310
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4311
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !4310
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4312, metadata !DIExpression()), !dbg !4313
  store i32 2147483647, i32* %11, align 4, !dbg !4313
  %21 = load i32, i32* %5, align 4, !dbg !4314
  %22 = icmp sle i32 0, %21, !dbg !4316
  br i1 %22, label %23, label %27, !dbg !4317

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !4318
  %25 = load i32, i32* %11, align 4, !dbg !4319
  %26 = icmp slt i32 %24, %25, !dbg !4320
  br i1 %26, label %28, label %27, !dbg !4321

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !4322
  unreachable, !dbg !4322

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !4323
  %30 = load i32, i32* %5, align 4, !dbg !4325
  %31 = icmp sle i32 %29, %30, !dbg !4326
  br i1 %31, label %32, label %73, !dbg !4327

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !4328, metadata !DIExpression()), !dbg !4330
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4331
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !4332
  %35 = zext i1 %34 to i8, !dbg !4330
  store i8 %35, i8* %12, align 1, !dbg !4330
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4333, metadata !DIExpression()), !dbg !4334
  %36 = load i32, i32* @nslots, align 4, !dbg !4335
  %37 = sext i32 %36 to i64, !dbg !4335
  store i64 %37, i64* %13, align 8, !dbg !4334
  %38 = load i8, i8* %12, align 1, !dbg !4336
  %39 = trunc i8 %38 to i1, !dbg !4336
  br i1 %39, label %40, label %41, !dbg !4336

40:                                               ; preds = %32
  br label %43, !dbg !4336

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4337
  br label %43, !dbg !4336

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !4336
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !4336
  %46 = load i32, i32* %5, align 4, !dbg !4338
  %47 = load i32, i32* @nslots, align 4, !dbg !4339
  %48 = sub nsw i32 %46, %47, !dbg !4340
  %49 = add nsw i32 %48, 1, !dbg !4341
  %50 = sext i32 %49 to i64, !dbg !4338
  %51 = load i32, i32* %11, align 4, !dbg !4342
  %52 = sext i32 %51 to i64, !dbg !4342
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !4343
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !4343
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !4344
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !4345
  %55 = load i8, i8* %12, align 1, !dbg !4346
  %56 = trunc i8 %55 to i1, !dbg !4346
  br i1 %56, label %57, label %60, !dbg !4348

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4349
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !4350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4350
  br label %60, !dbg !4351

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4352
  %62 = load i32, i32* @nslots, align 4, !dbg !4353
  %63 = sext i32 %62 to i64, !dbg !4354
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !4354
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !4355
  %66 = load i64, i64* %13, align 8, !dbg !4356
  %67 = load i32, i32* @nslots, align 4, !dbg !4357
  %68 = sext i32 %67 to i64, !dbg !4357
  %69 = sub nsw i64 %66, %68, !dbg !4358
  %70 = mul i64 %69, 16, !dbg !4359
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !4355
  %71 = load i64, i64* %13, align 8, !dbg !4360
  %72 = trunc i64 %71 to i32, !dbg !4360
  store i32 %72, i32* @nslots, align 4, !dbg !4361
  br label %73, !dbg !4362

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4363, metadata !DIExpression()), !dbg !4365
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4366
  %75 = load i32, i32* %5, align 4, !dbg !4367
  %76 = sext i32 %75 to i64, !dbg !4366
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !4366
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !4368
  %79 = load i64, i64* %78, align 8, !dbg !4368
  store i64 %79, i64* %14, align 8, !dbg !4365
  call void @llvm.dbg.declare(metadata i8** %15, metadata !4369, metadata !DIExpression()), !dbg !4370
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4371
  %81 = load i32, i32* %5, align 4, !dbg !4372
  %82 = sext i32 %81 to i64, !dbg !4371
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !4371
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !4373
  %85 = load i8*, i8** %84, align 8, !dbg !4373
  store i8* %85, i8** %15, align 8, !dbg !4370
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4374, metadata !DIExpression()), !dbg !4375
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4376
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !4377
  %88 = load i32, i32* %87, align 4, !dbg !4377
  %89 = or i32 %88, 1, !dbg !4378
  store i32 %89, i32* %16, align 4, !dbg !4375
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4379, metadata !DIExpression()), !dbg !4380
  %90 = load i8*, i8** %15, align 8, !dbg !4381
  %91 = load i64, i64* %14, align 8, !dbg !4382
  %92 = load i8*, i8** %6, align 8, !dbg !4383
  %93 = load i64, i64* %7, align 8, !dbg !4384
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4385
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !4386
  %96 = load i32, i32* %95, align 8, !dbg !4386
  %97 = load i32, i32* %16, align 4, !dbg !4387
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4388
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !4389
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !4388
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4390
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !4391
  %103 = load i8*, i8** %102, align 8, !dbg !4391
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4392
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !4393
  %106 = load i8*, i8** %105, align 8, !dbg !4393
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !4394
  store i64 %107, i64* %17, align 8, !dbg !4380
  %108 = load i64, i64* %14, align 8, !dbg !4395
  %109 = load i64, i64* %17, align 8, !dbg !4397
  %110 = icmp ule i64 %108, %109, !dbg !4398
  br i1 %110, label %111, label %149, !dbg !4399

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !4400
  %113 = add i64 %112, 1, !dbg !4402
  store i64 %113, i64* %14, align 8, !dbg !4403
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4404
  %115 = load i32, i32* %5, align 4, !dbg !4405
  %116 = sext i32 %115 to i64, !dbg !4404
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !4404
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !4406
  store i64 %113, i64* %118, align 8, !dbg !4407
  %119 = load i8*, i8** %15, align 8, !dbg !4408
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4410
  br i1 %120, label %121, label %123, !dbg !4411

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !4412
  call void @free(i8* noundef %122) #18, !dbg !4413
  br label %123, !dbg !4413

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !4414
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #23, !dbg !4415
  store i8* %125, i8** %15, align 8, !dbg !4416
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4417
  %127 = load i32, i32* %5, align 4, !dbg !4418
  %128 = sext i32 %127 to i64, !dbg !4417
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !4417
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !4419
  store i8* %125, i8** %130, align 8, !dbg !4420
  %131 = load i8*, i8** %15, align 8, !dbg !4421
  %132 = load i64, i64* %14, align 8, !dbg !4422
  %133 = load i8*, i8** %6, align 8, !dbg !4423
  %134 = load i64, i64* %7, align 8, !dbg !4424
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4425
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !4426
  %137 = load i32, i32* %136, align 8, !dbg !4426
  %138 = load i32, i32* %16, align 4, !dbg !4427
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4428
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !4429
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !4428
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4430
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !4431
  %144 = load i8*, i8** %143, align 8, !dbg !4431
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4432
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !4433
  %147 = load i8*, i8** %146, align 8, !dbg !4433
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !4434
  br label %149, !dbg !4435

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !4436
  %151 = call i32* @__errno_location() #21, !dbg !4437
  store i32 %150, i32* %151, align 4, !dbg !4438
  %152 = load i8*, i8** %15, align 8, !dbg !4439
  ret i8* %152, !dbg !4440
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4441 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4444, metadata !DIExpression()), !dbg !4445
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4448, metadata !DIExpression()), !dbg !4449
  %7 = load i32, i32* %4, align 4, !dbg !4450
  %8 = load i8*, i8** %5, align 8, !dbg !4451
  %9 = load i64, i64* %6, align 8, !dbg !4452
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !4453
  ret i8* %10, !dbg !4454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !4455 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4458, metadata !DIExpression()), !dbg !4459
  %3 = load i8*, i8** %2, align 8, !dbg !4460
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !4461
  ret i8* %4, !dbg !4462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4463 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4466, metadata !DIExpression()), !dbg !4467
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4468, metadata !DIExpression()), !dbg !4469
  %5 = load i8*, i8** %3, align 8, !dbg !4470
  %6 = load i64, i64* %4, align 8, !dbg !4471
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !4472
  ret i8* %7, !dbg !4473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !4474 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4479, metadata !DIExpression()), !dbg !4480
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4483, metadata !DIExpression()), !dbg !4484
  %8 = load i32, i32* %5, align 4, !dbg !4485
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !4486
  %9 = load i32, i32* %4, align 4, !dbg !4487
  %10 = load i8*, i8** %6, align 8, !dbg !4488
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !4489
  ret i8* %11, !dbg !4490
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !4491 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4494, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !4496, metadata !DIExpression()), !dbg !4497
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !4497
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !4497
  %5 = load i32, i32* %3, align 4, !dbg !4498
  %6 = icmp eq i32 %5, 10, !dbg !4500
  br i1 %6, label %7, label %8, !dbg !4501

7:                                                ; preds = %2
  call void @abort() #19, !dbg !4502
  unreachable, !dbg !4502

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !4503
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !4504
  store i32 %9, i32* %10, align 8, !dbg !4505
  ret void, !dbg !4506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !4507 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4510, metadata !DIExpression()), !dbg !4511
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4512, metadata !DIExpression()), !dbg !4513
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4514, metadata !DIExpression()), !dbg !4515
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !4518, metadata !DIExpression()), !dbg !4519
  %10 = load i32, i32* %6, align 4, !dbg !4520
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !4521
  %11 = load i32, i32* %5, align 4, !dbg !4522
  %12 = load i8*, i8** %7, align 8, !dbg !4523
  %13 = load i64, i64* %8, align 8, !dbg !4524
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !4525
  ret i8* %14, !dbg !4526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !4527 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4532, metadata !DIExpression()), !dbg !4533
  %5 = load i32, i32* %3, align 4, !dbg !4534
  %6 = load i8*, i8** %4, align 8, !dbg !4535
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !4536
  ret i8* %7, !dbg !4537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4538 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4541, metadata !DIExpression()), !dbg !4542
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4543, metadata !DIExpression()), !dbg !4544
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4545, metadata !DIExpression()), !dbg !4546
  %7 = load i32, i32* %4, align 4, !dbg !4547
  %8 = load i8*, i8** %5, align 8, !dbg !4548
  %9 = load i64, i64* %6, align 8, !dbg !4549
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4550
  ret i8* %10, !dbg !4551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !4552 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4557, metadata !DIExpression()), !dbg !4558
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !4563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4563
  %9 = load i8, i8* %6, align 1, !dbg !4564
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !4565
  %11 = load i8*, i8** %4, align 8, !dbg !4566
  %12 = load i64, i64* %5, align 8, !dbg !4567
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !4568
  ret i8* %13, !dbg !4569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !4570 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4573, metadata !DIExpression()), !dbg !4574
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4575, metadata !DIExpression()), !dbg !4576
  %5 = load i8*, i8** %3, align 8, !dbg !4577
  %6 = load i8, i8* %4, align 1, !dbg !4578
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !4579
  ret i8* %7, !dbg !4580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !4581 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4582, metadata !DIExpression()), !dbg !4583
  %3 = load i8*, i8** %2, align 8, !dbg !4584
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !4585
  ret i8* %4, !dbg !4586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4587 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4590, metadata !DIExpression()), !dbg !4591
  %5 = load i8*, i8** %3, align 8, !dbg !4592
  %6 = load i64, i64* %4, align 8, !dbg !4593
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !4594
  ret i8* %7, !dbg !4595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !4596 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4597, metadata !DIExpression()), !dbg !4598
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4599, metadata !DIExpression()), !dbg !4600
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4601, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4603, metadata !DIExpression()), !dbg !4604
  %9 = load i32, i32* %5, align 4, !dbg !4605
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !4606
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !4606
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !4606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !4606
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !4607
  %13 = load i32, i32* %4, align 4, !dbg !4608
  %14 = load i8*, i8** %6, align 8, !dbg !4609
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !4610
  ret i8* %15, !dbg !4611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !4612 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4615, metadata !DIExpression()), !dbg !4616
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4619, metadata !DIExpression()), !dbg !4620
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4621, metadata !DIExpression()), !dbg !4622
  %9 = load i32, i32* %5, align 4, !dbg !4623
  %10 = load i8*, i8** %6, align 8, !dbg !4624
  %11 = load i8*, i8** %7, align 8, !dbg !4625
  %12 = load i8*, i8** %8, align 8, !dbg !4626
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !4627
  ret i8* %13, !dbg !4628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !4629 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4638, metadata !DIExpression()), !dbg !4639
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4640, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !4642, metadata !DIExpression()), !dbg !4643
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !4644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4644
  %13 = load i8*, i8** %7, align 8, !dbg !4645
  %14 = load i8*, i8** %8, align 8, !dbg !4646
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !4647
  %15 = load i32, i32* %6, align 4, !dbg !4648
  %16 = load i8*, i8** %9, align 8, !dbg !4649
  %17 = load i64, i64* %10, align 8, !dbg !4650
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !4651
  ret i8* %18, !dbg !4652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !4653 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4656, metadata !DIExpression()), !dbg !4657
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4658, metadata !DIExpression()), !dbg !4659
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4660, metadata !DIExpression()), !dbg !4661
  %7 = load i8*, i8** %4, align 8, !dbg !4662
  %8 = load i8*, i8** %5, align 8, !dbg !4663
  %9 = load i8*, i8** %6, align 8, !dbg !4664
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !4665
  ret i8* %10, !dbg !4666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !4667 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4670, metadata !DIExpression()), !dbg !4671
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4672, metadata !DIExpression()), !dbg !4673
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4676, metadata !DIExpression()), !dbg !4677
  %9 = load i8*, i8** %5, align 8, !dbg !4678
  %10 = load i8*, i8** %6, align 8, !dbg !4679
  %11 = load i8*, i8** %7, align 8, !dbg !4680
  %12 = load i64, i64* %8, align 8, !dbg !4681
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !4682
  ret i8* %13, !dbg !4683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4684 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4691, metadata !DIExpression()), !dbg !4692
  %7 = load i32, i32* %4, align 4, !dbg !4693
  %8 = load i8*, i8** %5, align 8, !dbg !4694
  %9 = load i64, i64* %6, align 8, !dbg !4695
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !4696
  ret i8* %10, !dbg !4697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4698 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4701, metadata !DIExpression()), !dbg !4702
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4703, metadata !DIExpression()), !dbg !4704
  %5 = load i8*, i8** %3, align 8, !dbg !4705
  %6 = load i64, i64* %4, align 8, !dbg !4706
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !4707
  ret i8* %7, !dbg !4708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !4709 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4712, metadata !DIExpression()), !dbg !4713
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4714, metadata !DIExpression()), !dbg !4715
  %5 = load i32, i32* %3, align 4, !dbg !4716
  %6 = load i8*, i8** %4, align 8, !dbg !4717
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !4718
  ret i8* %7, !dbg !4719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !4720 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4723, metadata !DIExpression()), !dbg !4724
  %3 = load i8*, i8** %2, align 8, !dbg !4725
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !4726
  ret i8* %4, !dbg !4727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !4728 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4734, metadata !DIExpression()), !dbg !4735
  %5 = load i8*, i8** %3, align 8, !dbg !4736
  %6 = load i8*, i8** %4, align 8, !dbg !4737
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !4738
  %8 = icmp ne i32 %7, 0, !dbg !4739
  %9 = xor i1 %8, true, !dbg !4739
  ret i1 %9, !dbg !4740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !4741 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4779, metadata !DIExpression()), !dbg !4780
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4781, metadata !DIExpression()), !dbg !4782
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4783, metadata !DIExpression()), !dbg !4784
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4787, metadata !DIExpression()), !dbg !4788
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4789, metadata !DIExpression()), !dbg !4790
  %13 = load i8*, i8** %8, align 8, !dbg !4791
  %14 = icmp ne i8* %13, null, !dbg !4791
  br i1 %14, label %15, label %21, !dbg !4793

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4794
  %17 = load i8*, i8** %8, align 8, !dbg !4795
  %18 = load i8*, i8** %9, align 8, !dbg !4796
  %19 = load i8*, i8** %10, align 8, !dbg !4797
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.193, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !4798
  br label %26, !dbg !4798

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4799
  %23 = load i8*, i8** %9, align 8, !dbg !4800
  %24 = load i8*, i8** %10, align 8, !dbg !4801
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.194, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !4802
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4803
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.196, i64 0, i64 0)) #18, !dbg !4804
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !4805
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4806
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.197, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !4806
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4807
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.198, i64 0, i64 0)) #18, !dbg !4808
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.199, i64 0, i64 0)), !dbg !4809
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4810
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.197, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !4810
  %37 = load i64, i64* %12, align 8, !dbg !4811
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
  ], !dbg !4812

38:                                               ; preds = %26
  br label %241, !dbg !4813

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4815
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.200, i64 0, i64 0)) #18, !dbg !4816
  %42 = load i8**, i8*** %11, align 8, !dbg !4817
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !4817
  %44 = load i8*, i8** %43, align 8, !dbg !4817
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !4818
  br label %241, !dbg !4819

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4820
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.201, i64 0, i64 0)) #18, !dbg !4821
  %49 = load i8**, i8*** %11, align 8, !dbg !4822
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !4822
  %51 = load i8*, i8** %50, align 8, !dbg !4822
  %52 = load i8**, i8*** %11, align 8, !dbg !4823
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !4823
  %54 = load i8*, i8** %53, align 8, !dbg !4823
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !4824
  br label %241, !dbg !4825

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4826
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.202, i64 0, i64 0)) #18, !dbg !4827
  %59 = load i8**, i8*** %11, align 8, !dbg !4828
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !4828
  %61 = load i8*, i8** %60, align 8, !dbg !4828
  %62 = load i8**, i8*** %11, align 8, !dbg !4829
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !4829
  %64 = load i8*, i8** %63, align 8, !dbg !4829
  %65 = load i8**, i8*** %11, align 8, !dbg !4830
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !4830
  %67 = load i8*, i8** %66, align 8, !dbg !4830
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !4831
  br label %241, !dbg !4832

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4833
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.203, i64 0, i64 0)) #18, !dbg !4834
  %72 = load i8**, i8*** %11, align 8, !dbg !4835
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !4835
  %74 = load i8*, i8** %73, align 8, !dbg !4835
  %75 = load i8**, i8*** %11, align 8, !dbg !4836
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !4836
  %77 = load i8*, i8** %76, align 8, !dbg !4836
  %78 = load i8**, i8*** %11, align 8, !dbg !4837
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !4837
  %80 = load i8*, i8** %79, align 8, !dbg !4837
  %81 = load i8**, i8*** %11, align 8, !dbg !4838
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !4838
  %83 = load i8*, i8** %82, align 8, !dbg !4838
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !4839
  br label %241, !dbg !4840

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4841
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.204, i64 0, i64 0)) #18, !dbg !4842
  %88 = load i8**, i8*** %11, align 8, !dbg !4843
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !4843
  %90 = load i8*, i8** %89, align 8, !dbg !4843
  %91 = load i8**, i8*** %11, align 8, !dbg !4844
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !4844
  %93 = load i8*, i8** %92, align 8, !dbg !4844
  %94 = load i8**, i8*** %11, align 8, !dbg !4845
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !4845
  %96 = load i8*, i8** %95, align 8, !dbg !4845
  %97 = load i8**, i8*** %11, align 8, !dbg !4846
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !4846
  %99 = load i8*, i8** %98, align 8, !dbg !4846
  %100 = load i8**, i8*** %11, align 8, !dbg !4847
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !4847
  %102 = load i8*, i8** %101, align 8, !dbg !4847
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !4848
  br label %241, !dbg !4849

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4850
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.205, i64 0, i64 0)) #18, !dbg !4851
  %107 = load i8**, i8*** %11, align 8, !dbg !4852
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !4852
  %109 = load i8*, i8** %108, align 8, !dbg !4852
  %110 = load i8**, i8*** %11, align 8, !dbg !4853
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !4853
  %112 = load i8*, i8** %111, align 8, !dbg !4853
  %113 = load i8**, i8*** %11, align 8, !dbg !4854
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !4854
  %115 = load i8*, i8** %114, align 8, !dbg !4854
  %116 = load i8**, i8*** %11, align 8, !dbg !4855
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !4855
  %118 = load i8*, i8** %117, align 8, !dbg !4855
  %119 = load i8**, i8*** %11, align 8, !dbg !4856
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !4856
  %121 = load i8*, i8** %120, align 8, !dbg !4856
  %122 = load i8**, i8*** %11, align 8, !dbg !4857
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !4857
  %124 = load i8*, i8** %123, align 8, !dbg !4857
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !4858
  br label %241, !dbg !4859

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4860
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.206, i64 0, i64 0)) #18, !dbg !4861
  %129 = load i8**, i8*** %11, align 8, !dbg !4862
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !4862
  %131 = load i8*, i8** %130, align 8, !dbg !4862
  %132 = load i8**, i8*** %11, align 8, !dbg !4863
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !4863
  %134 = load i8*, i8** %133, align 8, !dbg !4863
  %135 = load i8**, i8*** %11, align 8, !dbg !4864
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !4864
  %137 = load i8*, i8** %136, align 8, !dbg !4864
  %138 = load i8**, i8*** %11, align 8, !dbg !4865
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !4865
  %140 = load i8*, i8** %139, align 8, !dbg !4865
  %141 = load i8**, i8*** %11, align 8, !dbg !4866
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !4866
  %143 = load i8*, i8** %142, align 8, !dbg !4866
  %144 = load i8**, i8*** %11, align 8, !dbg !4867
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !4867
  %146 = load i8*, i8** %145, align 8, !dbg !4867
  %147 = load i8**, i8*** %11, align 8, !dbg !4868
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !4868
  %149 = load i8*, i8** %148, align 8, !dbg !4868
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !4869
  br label %241, !dbg !4870

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4871
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.207, i64 0, i64 0)) #18, !dbg !4872
  %154 = load i8**, i8*** %11, align 8, !dbg !4873
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4873
  %156 = load i8*, i8** %155, align 8, !dbg !4873
  %157 = load i8**, i8*** %11, align 8, !dbg !4874
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !4874
  %159 = load i8*, i8** %158, align 8, !dbg !4874
  %160 = load i8**, i8*** %11, align 8, !dbg !4875
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !4875
  %162 = load i8*, i8** %161, align 8, !dbg !4875
  %163 = load i8**, i8*** %11, align 8, !dbg !4876
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !4876
  %165 = load i8*, i8** %164, align 8, !dbg !4876
  %166 = load i8**, i8*** %11, align 8, !dbg !4877
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !4877
  %168 = load i8*, i8** %167, align 8, !dbg !4877
  %169 = load i8**, i8*** %11, align 8, !dbg !4878
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !4878
  %171 = load i8*, i8** %170, align 8, !dbg !4878
  %172 = load i8**, i8*** %11, align 8, !dbg !4879
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !4879
  %174 = load i8*, i8** %173, align 8, !dbg !4879
  %175 = load i8**, i8*** %11, align 8, !dbg !4880
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !4880
  %177 = load i8*, i8** %176, align 8, !dbg !4880
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !4881
  br label %241, !dbg !4882

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4883
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.208, i64 0, i64 0)) #18, !dbg !4884
  %182 = load i8**, i8*** %11, align 8, !dbg !4885
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !4885
  %184 = load i8*, i8** %183, align 8, !dbg !4885
  %185 = load i8**, i8*** %11, align 8, !dbg !4886
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !4886
  %187 = load i8*, i8** %186, align 8, !dbg !4886
  %188 = load i8**, i8*** %11, align 8, !dbg !4887
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !4887
  %190 = load i8*, i8** %189, align 8, !dbg !4887
  %191 = load i8**, i8*** %11, align 8, !dbg !4888
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !4888
  %193 = load i8*, i8** %192, align 8, !dbg !4888
  %194 = load i8**, i8*** %11, align 8, !dbg !4889
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !4889
  %196 = load i8*, i8** %195, align 8, !dbg !4889
  %197 = load i8**, i8*** %11, align 8, !dbg !4890
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4890
  %199 = load i8*, i8** %198, align 8, !dbg !4890
  %200 = load i8**, i8*** %11, align 8, !dbg !4891
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4891
  %202 = load i8*, i8** %201, align 8, !dbg !4891
  %203 = load i8**, i8*** %11, align 8, !dbg !4892
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4892
  %205 = load i8*, i8** %204, align 8, !dbg !4892
  %206 = load i8**, i8*** %11, align 8, !dbg !4893
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4893
  %208 = load i8*, i8** %207, align 8, !dbg !4893
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4894
  br label %241, !dbg !4895

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4896
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.209, i64 0, i64 0)) #18, !dbg !4897
  %213 = load i8**, i8*** %11, align 8, !dbg !4898
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4898
  %215 = load i8*, i8** %214, align 8, !dbg !4898
  %216 = load i8**, i8*** %11, align 8, !dbg !4899
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4899
  %218 = load i8*, i8** %217, align 8, !dbg !4899
  %219 = load i8**, i8*** %11, align 8, !dbg !4900
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4900
  %221 = load i8*, i8** %220, align 8, !dbg !4900
  %222 = load i8**, i8*** %11, align 8, !dbg !4901
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4901
  %224 = load i8*, i8** %223, align 8, !dbg !4901
  %225 = load i8**, i8*** %11, align 8, !dbg !4902
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4902
  %227 = load i8*, i8** %226, align 8, !dbg !4902
  %228 = load i8**, i8*** %11, align 8, !dbg !4903
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4903
  %230 = load i8*, i8** %229, align 8, !dbg !4903
  %231 = load i8**, i8*** %11, align 8, !dbg !4904
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4904
  %233 = load i8*, i8** %232, align 8, !dbg !4904
  %234 = load i8**, i8*** %11, align 8, !dbg !4905
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4905
  %236 = load i8*, i8** %235, align 8, !dbg !4905
  %237 = load i8**, i8*** %11, align 8, !dbg !4906
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4906
  %239 = load i8*, i8** %238, align 8, !dbg !4906
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4907
  br label %241, !dbg !4908

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4909
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4910 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4915, metadata !DIExpression()), !dbg !4916
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4917, metadata !DIExpression()), !dbg !4918
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4921, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4923, metadata !DIExpression()), !dbg !4924
  store i64 0, i64* %11, align 8, !dbg !4925
  br label %12, !dbg !4927

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4928
  %14 = load i64, i64* %11, align 8, !dbg !4930
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4928
  %16 = load i8*, i8** %15, align 8, !dbg !4928
  %17 = icmp ne i8* %16, null, !dbg !4931
  br i1 %17, label %18, label %22, !dbg !4931

18:                                               ; preds = %12
  br label %19, !dbg !4931

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4932
  %21 = add i64 %20, 1, !dbg !4932
  store i64 %21, i64* %11, align 8, !dbg !4932
  br label %12, !dbg !4933, !llvm.loop !4934

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4936
  %24 = load i8*, i8** %7, align 8, !dbg !4937
  %25 = load i8*, i8** %8, align 8, !dbg !4938
  %26 = load i8*, i8** %9, align 8, !dbg !4939
  %27 = load i8**, i8*** %10, align 8, !dbg !4940
  %28 = load i64, i64* %11, align 8, !dbg !4941
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4942
  ret void, !dbg !4943
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4944 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4958, metadata !DIExpression()), !dbg !4959
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4960, metadata !DIExpression()), !dbg !4961
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4962, metadata !DIExpression()), !dbg !4963
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4964, metadata !DIExpression()), !dbg !4965
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4966, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4968, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4970, metadata !DIExpression()), !dbg !4972
  store i64 0, i64* %10, align 8, !dbg !4973
  br label %12, !dbg !4975

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4976
  %14 = icmp ult i64 %13, 10, !dbg !4978
  br i1 %14, label %15, label %38, !dbg !4979

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4980
  %17 = load i32, i32* %16, align 8, !dbg !4980
  %18 = icmp sge i32 %17, 0, !dbg !4980
  br i1 %18, label %27, label %19, !dbg !4980

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4980
  store i32 %20, i32* %16, align 8, !dbg !4980
  %21 = icmp sle i32 %20, 0, !dbg !4980
  br i1 %21, label %22, label %27, !dbg !4980

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4980
  %24 = load i8*, i8** %23, align 8, !dbg !4980
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4980
  %26 = bitcast i8* %25 to i8**, !dbg !4980
  br label %32, !dbg !4980

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4980
  %29 = load i8*, i8** %28, align 8, !dbg !4980
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4980
  store i8* %30, i8** %28, align 8, !dbg !4980
  %31 = bitcast i8* %29 to i8**, !dbg !4980
  br label %32, !dbg !4980

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4980
  %34 = load i8*, i8** %33, align 8, !dbg !4980
  %35 = load i64, i64* %10, align 8, !dbg !4981
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4982
  store i8* %34, i8** %36, align 8, !dbg !4983
  %37 = icmp ne i8* %34, null, !dbg !4984
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4985
  br i1 %39, label %40, label %44, !dbg !4986

40:                                               ; preds = %38
  br label %41, !dbg !4986

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4987
  %43 = add i64 %42, 1, !dbg !4987
  store i64 %43, i64* %10, align 8, !dbg !4987
  br label %12, !dbg !4988, !llvm.loop !4989

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4991
  %46 = load i8*, i8** %7, align 8, !dbg !4992
  %47 = load i8*, i8** %8, align 8, !dbg !4993
  %48 = load i8*, i8** %9, align 8, !dbg !4994
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4995
  %50 = load i64, i64* %10, align 8, !dbg !4996
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4997
  ret void, !dbg !4998
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4999 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !5010, metadata !DIExpression()), !dbg !5011
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !5012
  call void @llvm.va_start(i8* %11), !dbg !5012
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5013
  %13 = load i8*, i8** %6, align 8, !dbg !5014
  %14 = load i8*, i8** %7, align 8, !dbg !5015
  %15 = load i8*, i8** %8, align 8, !dbg !5016
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !5017
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !5017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !5017
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !5017
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !5018
  call void @llvm.va_end(i8* %18), !dbg !5018
  ret void, !dbg !5019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !5020 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5021
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.197, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !5021
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.214, i64 0, i64 0)) #18, !dbg !5022
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.215, i64 0, i64 0)), !dbg !5023
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.216, i64 0, i64 0)) #18, !dbg !5024
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.217, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.218, i64 0, i64 0)), !dbg !5025
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.219, i64 0, i64 0)) #18, !dbg !5026
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.220, i64 0, i64 0)), !dbg !5027
  ret void, !dbg !5028
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !5029 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5033, metadata !DIExpression()), !dbg !5034
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5035, metadata !DIExpression()), !dbg !5036
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5037, metadata !DIExpression()), !dbg !5038
  %7 = load i8*, i8** %4, align 8, !dbg !5039
  %8 = load i64, i64* %5, align 8, !dbg !5040
  %9 = load i64, i64* %6, align 8, !dbg !5041
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !5042
  ret i8* %10, !dbg !5043
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !5044 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5045, metadata !DIExpression()), !dbg !5046
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5047, metadata !DIExpression()), !dbg !5048
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5049, metadata !DIExpression()), !dbg !5050
  %7 = load i8*, i8** %4, align 8, !dbg !5051
  %8 = load i64, i64* %5, align 8, !dbg !5052
  %9 = load i64, i64* %6, align 8, !dbg !5053
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !5054
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !5055
  ret i8* %11, !dbg !5056
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !5057 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5060, metadata !DIExpression()), !dbg !5061
  %3 = load i8*, i8** %2, align 8, !dbg !5062
  %4 = icmp ne i8* %3, null, !dbg !5062
  br i1 %4, label %6, label %5, !dbg !5064

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !5065
  unreachable, !dbg !5065

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !5066
  ret i8* %7, !dbg !5067
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !5068 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5071, metadata !DIExpression()), !dbg !5072
  %3 = load i64, i64* %2, align 8, !dbg !5073
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !5074
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !5075
  ret i8* %5, !dbg !5076
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !5077 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5080, metadata !DIExpression()), !dbg !5081
  %3 = load i64, i64* %2, align 8, !dbg !5082
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !5083
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !5084
  ret i8* %5, !dbg !5085
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !5086 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5089, metadata !DIExpression()), !dbg !5090
  %3 = load i64, i64* %2, align 8, !dbg !5091
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #23, !dbg !5091
  ret i8* %4, !dbg !5092
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !5093 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5098, metadata !DIExpression()), !dbg !5099
  %5 = load i8*, i8** %3, align 8, !dbg !5100
  %6 = load i64, i64* %4, align 8, !dbg !5101
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !5102
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5103
  ret i8* %8, !dbg !5104
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !5105 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5110, metadata !DIExpression()), !dbg !5111
  %5 = load i8*, i8** %3, align 8, !dbg !5112
  %6 = load i64, i64* %4, align 8, !dbg !5113
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !5114
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5115
  ret i8* %8, !dbg !5116
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !5117 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5120, metadata !DIExpression()), !dbg !5121
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5124, metadata !DIExpression()), !dbg !5125
  %7 = load i8*, i8** %4, align 8, !dbg !5126
  %8 = load i64, i64* %5, align 8, !dbg !5127
  %9 = load i64, i64* %6, align 8, !dbg !5128
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !5129
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !5130
  ret i8* %11, !dbg !5131
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5132 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5137, metadata !DIExpression()), !dbg !5138
  %5 = load i64, i64* %3, align 8, !dbg !5139
  %6 = load i64, i64* %4, align 8, !dbg !5140
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !5141
  ret i8* %7, !dbg !5142
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5143 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5146, metadata !DIExpression()), !dbg !5147
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5148, metadata !DIExpression()), !dbg !5149
  %5 = load i64, i64* %3, align 8, !dbg !5150
  %6 = load i64, i64* %4, align 8, !dbg !5151
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !5152
  ret i8* %7, !dbg !5153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !5154 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5157, metadata !DIExpression()), !dbg !5158
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !5159, metadata !DIExpression()), !dbg !5160
  %5 = load i8*, i8** %3, align 8, !dbg !5161
  %6 = load i64*, i64** %4, align 8, !dbg !5162
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !5163
  ret i8* %7, !dbg !5164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !395 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5165, metadata !DIExpression()), !dbg !5166
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5169, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5171, metadata !DIExpression()), !dbg !5172
  %8 = load i64*, i64** %5, align 8, !dbg !5173
  %9 = load i64, i64* %8, align 8, !dbg !5174
  store i64 %9, i64* %7, align 8, !dbg !5172
  %10 = load i8*, i8** %4, align 8, !dbg !5175
  %11 = icmp ne i8* %10, null, !dbg !5175
  br i1 %11, label %26, label %12, !dbg !5177

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !5178
  %14 = icmp ne i64 %13, 0, !dbg !5178
  br i1 %14, label %25, label %15, !dbg !5181

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !5182
  %17 = udiv i64 128, %16, !dbg !5184
  store i64 %17, i64* %7, align 8, !dbg !5185
  %18 = load i64, i64* %7, align 8, !dbg !5186
  %19 = icmp ne i64 %18, 0, !dbg !5187
  %20 = xor i1 %19, true, !dbg !5187
  %21 = zext i1 %20 to i32, !dbg !5187
  %22 = sext i32 %21 to i64, !dbg !5187
  %23 = load i64, i64* %7, align 8, !dbg !5188
  %24 = add i64 %23, %22, !dbg !5188
  store i64 %24, i64* %7, align 8, !dbg !5188
  br label %25, !dbg !5189

25:                                               ; preds = %15, %12
  br label %36, !dbg !5190

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !5191
  %28 = load i64, i64* %7, align 8, !dbg !5191
  %29 = lshr i64 %28, 1, !dbg !5191
  %30 = add i64 %29, 1, !dbg !5191
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !5191
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !5191
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !5191
  store i64 %33, i64* %7, align 8, !dbg !5191
  br i1 %32, label %34, label %35, !dbg !5194

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !5195
  unreachable, !dbg !5195

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !5196
  %38 = load i64, i64* %7, align 8, !dbg !5197
  %39 = load i64, i64* %6, align 8, !dbg !5198
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !5199
  store i8* %40, i8** %4, align 8, !dbg !5200
  %41 = load i64, i64* %7, align 8, !dbg !5201
  %42 = load i64*, i64** %5, align 8, !dbg !5202
  store i64 %41, i64* %42, align 8, !dbg !5203
  %43 = load i8*, i8** %4, align 8, !dbg !5204
  ret i8* %43, !dbg !5205
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !402 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5212, metadata !DIExpression()), !dbg !5213
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5216, metadata !DIExpression()), !dbg !5217
  %15 = load i64*, i64** %7, align 8, !dbg !5218
  %16 = load i64, i64* %15, align 8, !dbg !5219
  store i64 %16, i64* %11, align 8, !dbg !5217
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5220, metadata !DIExpression()), !dbg !5221
  %17 = load i64, i64* %11, align 8, !dbg !5222
  %18 = load i64, i64* %11, align 8, !dbg !5222
  %19 = ashr i64 %18, 1, !dbg !5222
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !5222
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !5222
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !5222
  store i64 %22, i64* %12, align 8, !dbg !5222
  br i1 %21, label %23, label %24, !dbg !5224

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !5225
  br label %24, !dbg !5226

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !5227
  %26 = icmp sle i64 0, %25, !dbg !5229
  br i1 %26, label %27, label %33, !dbg !5230

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !5231
  %29 = load i64, i64* %12, align 8, !dbg !5232
  %30 = icmp slt i64 %28, %29, !dbg !5233
  br i1 %30, label %31, label %33, !dbg !5234

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !5235
  store i64 %32, i64* %12, align 8, !dbg !5236
  br label %33, !dbg !5237

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !5238, metadata !DIExpression()), !dbg !5239
  call void @llvm.dbg.declare(metadata i64* %14, metadata !5240, metadata !DIExpression()), !dbg !5241
  %34 = load i64, i64* %10, align 8, !dbg !5242
  %35 = icmp slt i64 %34, 0, !dbg !5242
  br i1 %35, label %36, label %82, !dbg !5242

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !5242
  %38 = icmp slt i64 %37, 0, !dbg !5242
  br i1 %38, label %39, label %62, !dbg !5242

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !5242

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !5242
  %42 = load i64, i64* %10, align 8, !dbg !5242
  %43 = sdiv i64 9223372036854775807, %42, !dbg !5242
  %44 = icmp slt i64 %41, %43, !dbg !5242
  br i1 %44, label %111, label %115, !dbg !5242

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !5242

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !5242
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !5242
  br i1 %48, label %52, label %53, !dbg !5242

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !5242
  %51 = icmp slt i64 0, %50, !dbg !5242
  br i1 %51, label %52, label %53, !dbg !5242

52:                                               ; preds = %49, %46
  br label %57, !dbg !5242

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !5242
  %55 = sub nsw i64 0, %54, !dbg !5242
  %56 = sdiv i64 9223372036854775807, %55, !dbg !5242
  br label %57, !dbg !5242

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !5242
  %59 = load i64, i64* %12, align 8, !dbg !5242
  %60 = sub nsw i64 -1, %59, !dbg !5242
  %61 = icmp sle i64 %58, %60, !dbg !5242
  br i1 %61, label %111, label %115, !dbg !5242

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !5242
  %64 = icmp eq i64 %63, -1, !dbg !5242
  br i1 %64, label %65, label %77, !dbg !5242

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !5242

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !5242
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !5242
  %69 = icmp slt i64 0, %68, !dbg !5242
  br i1 %69, label %111, label %115, !dbg !5242

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !5242
  %72 = icmp slt i64 0, %71, !dbg !5242
  br i1 %72, label %73, label %115, !dbg !5242

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !5242
  %75 = sub nsw i64 %74, 1, !dbg !5242
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !5242
  br i1 %76, label %111, label %115, !dbg !5242

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !5242
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !5242
  %80 = load i64, i64* %12, align 8, !dbg !5242
  %81 = icmp slt i64 %79, %80, !dbg !5242
  br i1 %81, label %111, label %115, !dbg !5242

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !5242
  %84 = icmp eq i64 %83, 0, !dbg !5242
  br i1 %84, label %85, label %86, !dbg !5242

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !5242

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !5242
  %88 = icmp slt i64 %87, 0, !dbg !5242
  br i1 %88, label %89, label %106, !dbg !5242

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !5242
  %91 = icmp eq i64 %90, -1, !dbg !5242
  br i1 %91, label %92, label %101, !dbg !5242

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !5242

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !5242
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !5242
  %96 = icmp slt i64 0, %95, !dbg !5242
  br i1 %96, label %111, label %115, !dbg !5242

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !5242
  %99 = sub nsw i64 %98, 1, !dbg !5242
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !5242
  br i1 %100, label %111, label %115, !dbg !5242

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !5242
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !5242
  %104 = load i64, i64* %10, align 8, !dbg !5242
  %105 = icmp slt i64 %103, %104, !dbg !5242
  br i1 %105, label %111, label %115, !dbg !5242

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !5242
  %108 = sdiv i64 9223372036854775807, %107, !dbg !5242
  %109 = load i64, i64* %12, align 8, !dbg !5242
  %110 = icmp slt i64 %108, %109, !dbg !5242
  br i1 %110, label %111, label %115, !dbg !5242

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !5242
  %113 = load i64, i64* %10, align 8, !dbg !5242
  %114 = mul i64 %112, %113, !dbg !5242
  store i64 %114, i64* %13, align 8, !dbg !5242
  br label %119, !dbg !5242

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !5242
  %117 = load i64, i64* %10, align 8, !dbg !5242
  %118 = mul i64 %116, %117, !dbg !5242
  store i64 %118, i64* %13, align 8, !dbg !5242
  br label %119, !dbg !5242

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !5242
  %121 = icmp ne i32 %120, 0, !dbg !5242
  br i1 %121, label %122, label %123, !dbg !5242

122:                                              ; preds = %119
  br label %129, !dbg !5242

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !5243
  %125 = icmp slt i64 %124, 128, !dbg !5244
  %126 = zext i1 %125 to i64, !dbg !5243
  %127 = select i1 %125, i32 128, i32 0, !dbg !5243
  %128 = sext i32 %127 to i64, !dbg !5243
  br label %129, !dbg !5242

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !5242
  store i64 %130, i64* %14, align 8, !dbg !5241
  %131 = load i64, i64* %14, align 8, !dbg !5245
  %132 = icmp ne i64 %131, 0, !dbg !5245
  br i1 %132, label %133, label %142, !dbg !5247

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !5248
  %135 = load i64, i64* %10, align 8, !dbg !5250
  %136 = sdiv i64 %134, %135, !dbg !5251
  store i64 %136, i64* %12, align 8, !dbg !5252
  %137 = load i64, i64* %14, align 8, !dbg !5253
  %138 = load i64, i64* %14, align 8, !dbg !5254
  %139 = load i64, i64* %10, align 8, !dbg !5255
  %140 = srem i64 %138, %139, !dbg !5256
  %141 = sub nsw i64 %137, %140, !dbg !5257
  store i64 %141, i64* %13, align 8, !dbg !5258
  br label %142, !dbg !5259

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !5260
  %144 = icmp ne i8* %143, null, !dbg !5260
  br i1 %144, label %147, label %145, !dbg !5262

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !5263
  store i64 0, i64* %146, align 8, !dbg !5264
  br label %147, !dbg !5265

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !5266
  %149 = load i64, i64* %11, align 8, !dbg !5268
  %150 = sub nsw i64 %148, %149, !dbg !5269
  %151 = load i64, i64* %8, align 8, !dbg !5270
  %152 = icmp slt i64 %150, %151, !dbg !5271
  br i1 %152, label %153, label %256, !dbg !5272

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !5273
  %155 = load i64, i64* %8, align 8, !dbg !5273
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !5273
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !5273
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !5273
  store i64 %158, i64* %12, align 8, !dbg !5273
  br i1 %157, label %255, label %159, !dbg !5274

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !5275
  %161 = icmp sle i64 0, %160, !dbg !5276
  br i1 %161, label %162, label %166, !dbg !5277

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !5278
  %164 = load i64, i64* %12, align 8, !dbg !5279
  %165 = icmp slt i64 %163, %164, !dbg !5280
  br i1 %165, label %255, label %166, !dbg !5281

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !5282
  %168 = icmp slt i64 %167, 0, !dbg !5282
  br i1 %168, label %169, label %215, !dbg !5282

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !5282
  %171 = icmp slt i64 %170, 0, !dbg !5282
  br i1 %171, label %172, label %195, !dbg !5282

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !5282

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !5282
  %175 = load i64, i64* %10, align 8, !dbg !5282
  %176 = sdiv i64 9223372036854775807, %175, !dbg !5282
  %177 = icmp slt i64 %174, %176, !dbg !5282
  br i1 %177, label %244, label %248, !dbg !5282

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !5282

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !5282
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !5282
  br i1 %181, label %185, label %186, !dbg !5282

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !5282
  %184 = icmp slt i64 0, %183, !dbg !5282
  br i1 %184, label %185, label %186, !dbg !5282

185:                                              ; preds = %182, %179
  br label %190, !dbg !5282

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !5282
  %188 = sub nsw i64 0, %187, !dbg !5282
  %189 = sdiv i64 9223372036854775807, %188, !dbg !5282
  br label %190, !dbg !5282

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !5282
  %192 = load i64, i64* %12, align 8, !dbg !5282
  %193 = sub nsw i64 -1, %192, !dbg !5282
  %194 = icmp sle i64 %191, %193, !dbg !5282
  br i1 %194, label %244, label %248, !dbg !5282

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !5282
  %197 = icmp eq i64 %196, -1, !dbg !5282
  br i1 %197, label %198, label %210, !dbg !5282

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !5282

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !5282
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !5282
  %202 = icmp slt i64 0, %201, !dbg !5282
  br i1 %202, label %244, label %248, !dbg !5282

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !5282
  %205 = icmp slt i64 0, %204, !dbg !5282
  br i1 %205, label %206, label %248, !dbg !5282

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !5282
  %208 = sub nsw i64 %207, 1, !dbg !5282
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !5282
  br i1 %209, label %244, label %248, !dbg !5282

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !5282
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !5282
  %213 = load i64, i64* %12, align 8, !dbg !5282
  %214 = icmp slt i64 %212, %213, !dbg !5282
  br i1 %214, label %244, label %248, !dbg !5282

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !5282
  %217 = icmp eq i64 %216, 0, !dbg !5282
  br i1 %217, label %218, label %219, !dbg !5282

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !5282

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !5282
  %221 = icmp slt i64 %220, 0, !dbg !5282
  br i1 %221, label %222, label %239, !dbg !5282

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !5282
  %224 = icmp eq i64 %223, -1, !dbg !5282
  br i1 %224, label %225, label %234, !dbg !5282

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !5282

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !5282
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !5282
  %229 = icmp slt i64 0, %228, !dbg !5282
  br i1 %229, label %244, label %248, !dbg !5282

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !5282
  %232 = sub nsw i64 %231, 1, !dbg !5282
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !5282
  br i1 %233, label %244, label %248, !dbg !5282

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !5282
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !5282
  %237 = load i64, i64* %10, align 8, !dbg !5282
  %238 = icmp slt i64 %236, %237, !dbg !5282
  br i1 %238, label %244, label %248, !dbg !5282

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !5282
  %241 = sdiv i64 9223372036854775807, %240, !dbg !5282
  %242 = load i64, i64* %12, align 8, !dbg !5282
  %243 = icmp slt i64 %241, %242, !dbg !5282
  br i1 %243, label %244, label %248, !dbg !5282

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !5282
  %246 = load i64, i64* %10, align 8, !dbg !5282
  %247 = mul i64 %245, %246, !dbg !5282
  store i64 %247, i64* %13, align 8, !dbg !5282
  br label %252, !dbg !5282

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !5282
  %250 = load i64, i64* %10, align 8, !dbg !5282
  %251 = mul i64 %249, %250, !dbg !5282
  store i64 %251, i64* %13, align 8, !dbg !5282
  br label %252, !dbg !5282

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !5282
  %254 = icmp ne i32 %253, 0, !dbg !5282
  br i1 %254, label %255, label %256, !dbg !5283

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !5284
  unreachable, !dbg !5284

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !5285
  %258 = load i64, i64* %13, align 8, !dbg !5286
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !5287
  store i8* %259, i8** %6, align 8, !dbg !5288
  %260 = load i64, i64* %12, align 8, !dbg !5289
  %261 = load i64*, i64** %7, align 8, !dbg !5290
  store i64 %260, i64* %261, align 8, !dbg !5291
  %262 = load i8*, i8** %6, align 8, !dbg !5292
  ret i8* %262, !dbg !5293
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !5294 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5295, metadata !DIExpression()), !dbg !5296
  %3 = load i64, i64* %2, align 8, !dbg !5297
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !5298
  ret i8* %4, !dbg !5299
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5300 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5301, metadata !DIExpression()), !dbg !5302
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5303, metadata !DIExpression()), !dbg !5304
  %5 = load i64, i64* %3, align 8, !dbg !5305
  %6 = load i64, i64* %4, align 8, !dbg !5306
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !5307
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5308
  ret i8* %8, !dbg !5309
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !5310 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5311, metadata !DIExpression()), !dbg !5312
  %3 = load i64, i64* %2, align 8, !dbg !5313
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !5314
  ret i8* %4, !dbg !5315
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5316 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5319, metadata !DIExpression()), !dbg !5320
  %5 = load i64, i64* %3, align 8, !dbg !5321
  %6 = load i64, i64* %4, align 8, !dbg !5322
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !5323
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5324
  ret i8* %8, !dbg !5325
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !5326 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5333, metadata !DIExpression()), !dbg !5334
  %5 = load i64, i64* %4, align 8, !dbg !5335
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #23, !dbg !5336
  %7 = load i8*, i8** %3, align 8, !dbg !5337
  %8 = load i64, i64* %4, align 8, !dbg !5338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !5339
  ret i8* %6, !dbg !5340
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !5341 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5344, metadata !DIExpression()), !dbg !5345
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5346, metadata !DIExpression()), !dbg !5347
  %5 = load i64, i64* %4, align 8, !dbg !5348
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #23, !dbg !5349
  %7 = load i8*, i8** %3, align 8, !dbg !5350
  %8 = load i64, i64* %4, align 8, !dbg !5351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !5352
  ret i8* %6, !dbg !5353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !5354 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5359, metadata !DIExpression()), !dbg !5360
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5361, metadata !DIExpression()), !dbg !5362
  %6 = load i64, i64* %4, align 8, !dbg !5363
  %7 = add nsw i64 %6, 1, !dbg !5364
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #23, !dbg !5365
  store i8* %8, i8** %5, align 8, !dbg !5362
  %9 = load i8*, i8** %5, align 8, !dbg !5366
  %10 = load i64, i64* %4, align 8, !dbg !5367
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !5366
  store i8 0, i8* %11, align 1, !dbg !5368
  %12 = load i8*, i8** %5, align 8, !dbg !5369
  %13 = load i8*, i8** %3, align 8, !dbg !5370
  %14 = load i64, i64* %4, align 8, !dbg !5371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !5372
  ret i8* %12, !dbg !5373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !5374 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5375, metadata !DIExpression()), !dbg !5376
  %3 = load i8*, i8** %2, align 8, !dbg !5377
  %4 = load i8*, i8** %2, align 8, !dbg !5378
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !5379
  %6 = add i64 %5, 1, !dbg !5380
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !5381
  ret i8* %7, !dbg !5382
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !5383 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !5384, metadata !DIExpression()), !dbg !5387
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !5387
  store i32 %2, i32* %1, align 4, !dbg !5387
  %3 = load i32, i32* %1, align 4, !dbg !5387
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.236, i64 0, i64 0)) #18, !dbg !5387
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.237, i64 0, i64 0), i8* noundef %4), !dbg !5387
  %5 = load i32, i32* %1, align 4, !dbg !5387
  %6 = icmp ne i32 %5, 0, !dbg !5387
  br i1 %6, label %7, label %9, !dbg !5387

7:                                                ; preds = %0
  unreachable, !dbg !5387

8:                                                ; No predecessors!
  br label %10, !dbg !5387

9:                                                ; preds = %0
  br label %10, !dbg !5387

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !5388
  unreachable, !dbg !5388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #4 !dbg !5389 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [81 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5426, metadata !DIExpression()), !dbg !5427
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 0, i32* %6, align 4, !dbg !5431
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5432, metadata !DIExpression()), !dbg !5433
  store i32 0, i32* %7, align 4, !dbg !5433
  call void @llvm.dbg.declare(metadata i8* %8, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i8 0, i8* %8, align 1, !dbg !5435
  call void @llvm.dbg.declare(metadata [81 x i8]* %9, metadata !5436, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5441, metadata !DIExpression()), !dbg !5443
  %16 = load i8*, i8** %5, align 8, !dbg !5444
  store i8* %16, i8** %10, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5445, metadata !DIExpression()), !dbg !5446
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5447
  store i8* %17, i8** %11, align 8, !dbg !5446
  br label %18, !dbg !5448

18:                                               ; preds = %120, %2
  %19 = load i8*, i8** %10, align 8, !dbg !5449
  %20 = load i8, i8* %19, align 1, !dbg !5452
  %21 = zext i8 %20 to i32, !dbg !5452
  %22 = icmp ne i32 %21, 0, !dbg !5453
  br i1 %22, label %23, label %123, !dbg !5454

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !5455
  %25 = load i8, i8* %24, align 1, !dbg !5457
  %26 = zext i8 %25 to i32, !dbg !5457
  switch i32 %26, label %94 [
    i32 114, label %27
    i32 119, label %38
    i32 97, label %51
    i32 98, label %64
    i32 43, label %77
    i32 120, label %88
    i32 101, label %91
  ], !dbg !5458

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !5459
  %28 = load i8*, i8** %11, align 8, !dbg !5461
  %29 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5463
  %30 = getelementptr inbounds i8, i8* %29, i64 80, !dbg !5464
  %31 = icmp ult i8* %28, %30, !dbg !5465
  br i1 %31, label %32, label %37, !dbg !5466

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !5467
  %34 = load i8, i8* %33, align 1, !dbg !5468
  %35 = load i8*, i8** %11, align 8, !dbg !5469
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !5469
  store i8* %36, i8** %11, align 8, !dbg !5469
  store i8 %34, i8* %35, align 1, !dbg !5470
  br label %37, !dbg !5471

37:                                               ; preds = %32, %27
  br label %120, !dbg !5472

38:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5473
  %39 = load i32, i32* %7, align 4, !dbg !5474
  %40 = or i32 %39, 576, !dbg !5474
  store i32 %40, i32* %7, align 4, !dbg !5474
  %41 = load i8*, i8** %11, align 8, !dbg !5475
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5477
  %43 = getelementptr inbounds i8, i8* %42, i64 80, !dbg !5478
  %44 = icmp ult i8* %41, %43, !dbg !5479
  br i1 %44, label %45, label %50, !dbg !5480

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8, !dbg !5481
  %47 = load i8, i8* %46, align 1, !dbg !5482
  %48 = load i8*, i8** %11, align 8, !dbg !5483
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !5483
  store i8* %49, i8** %11, align 8, !dbg !5483
  store i8 %47, i8* %48, align 1, !dbg !5484
  br label %50, !dbg !5485

50:                                               ; preds = %45, %38
  br label %120, !dbg !5486

51:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5487
  %52 = load i32, i32* %7, align 4, !dbg !5488
  %53 = or i32 %52, 1088, !dbg !5488
  store i32 %53, i32* %7, align 4, !dbg !5488
  %54 = load i8*, i8** %11, align 8, !dbg !5489
  %55 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5491
  %56 = getelementptr inbounds i8, i8* %55, i64 80, !dbg !5492
  %57 = icmp ult i8* %54, %56, !dbg !5493
  br i1 %57, label %58, label %63, !dbg !5494

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8, !dbg !5495
  %60 = load i8, i8* %59, align 1, !dbg !5496
  %61 = load i8*, i8** %11, align 8, !dbg !5497
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !5497
  store i8* %62, i8** %11, align 8, !dbg !5497
  store i8 %60, i8* %61, align 1, !dbg !5498
  br label %63, !dbg !5499

63:                                               ; preds = %58, %51
  br label %120, !dbg !5500

64:                                               ; preds = %23
  %65 = load i32, i32* %7, align 4, !dbg !5501
  %66 = or i32 %65, 0, !dbg !5501
  store i32 %66, i32* %7, align 4, !dbg !5501
  %67 = load i8*, i8** %11, align 8, !dbg !5502
  %68 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5504
  %69 = getelementptr inbounds i8, i8* %68, i64 80, !dbg !5505
  %70 = icmp ult i8* %67, %69, !dbg !5506
  br i1 %70, label %71, label %76, !dbg !5507

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8, !dbg !5508
  %73 = load i8, i8* %72, align 1, !dbg !5509
  %74 = load i8*, i8** %11, align 8, !dbg !5510
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !5510
  store i8* %75, i8** %11, align 8, !dbg !5510
  store i8 %73, i8* %74, align 1, !dbg !5511
  br label %76, !dbg !5512

76:                                               ; preds = %71, %64
  br label %120, !dbg !5513

77:                                               ; preds = %23
  store i32 2, i32* %6, align 4, !dbg !5514
  %78 = load i8*, i8** %11, align 8, !dbg !5515
  %79 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5517
  %80 = getelementptr inbounds i8, i8* %79, i64 80, !dbg !5518
  %81 = icmp ult i8* %78, %80, !dbg !5519
  br i1 %81, label %82, label %87, !dbg !5520

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !5521
  %84 = load i8, i8* %83, align 1, !dbg !5522
  %85 = load i8*, i8** %11, align 8, !dbg !5523
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !5523
  store i8* %86, i8** %11, align 8, !dbg !5523
  store i8 %84, i8* %85, align 1, !dbg !5524
  br label %87, !dbg !5525

87:                                               ; preds = %82, %77
  br label %120, !dbg !5526

88:                                               ; preds = %23
  %89 = load i32, i32* %7, align 4, !dbg !5527
  %90 = or i32 %89, 128, !dbg !5527
  store i32 %90, i32* %7, align 4, !dbg !5527
  store i8 1, i8* %8, align 1, !dbg !5528
  br label %120, !dbg !5529

91:                                               ; preds = %23
  %92 = load i32, i32* %7, align 4, !dbg !5530
  %93 = or i32 %92, 524288, !dbg !5530
  store i32 %93, i32* %7, align 4, !dbg !5530
  store i8 1, i8* %8, align 1, !dbg !5531
  br label %120, !dbg !5532

94:                                               ; preds = %23
  br label %95, !dbg !5533

95:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5534, metadata !DIExpression()), !dbg !5536
  %96 = load i8*, i8** %10, align 8, !dbg !5537
  %97 = call i64 @strlen(i8* noundef %96) #20, !dbg !5538
  store i64 %97, i64* %12, align 8, !dbg !5536
  %98 = load i64, i64* %12, align 8, !dbg !5539
  %99 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5541
  %100 = getelementptr inbounds i8, i8* %99, i64 80, !dbg !5542
  %101 = load i8*, i8** %11, align 8, !dbg !5543
  %102 = ptrtoint i8* %100 to i64, !dbg !5544
  %103 = ptrtoint i8* %101 to i64, !dbg !5544
  %104 = sub i64 %102, %103, !dbg !5544
  %105 = icmp ugt i64 %98, %104, !dbg !5545
  br i1 %105, label %106, label %113, !dbg !5546

106:                                              ; preds = %95
  %107 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5547
  %108 = getelementptr inbounds i8, i8* %107, i64 80, !dbg !5548
  %109 = load i8*, i8** %11, align 8, !dbg !5549
  %110 = ptrtoint i8* %108 to i64, !dbg !5550
  %111 = ptrtoint i8* %109 to i64, !dbg !5550
  %112 = sub i64 %110, %111, !dbg !5550
  store i64 %112, i64* %12, align 8, !dbg !5551
  br label %113, !dbg !5552

113:                                              ; preds = %106, %95
  %114 = load i8*, i8** %11, align 8, !dbg !5553
  %115 = load i8*, i8** %10, align 8, !dbg !5554
  %116 = load i64, i64* %12, align 8, !dbg !5555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %115, i64 %116, i1 false), !dbg !5556
  %117 = load i64, i64* %12, align 8, !dbg !5557
  %118 = load i8*, i8** %11, align 8, !dbg !5558
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5558
  store i8* %119, i8** %11, align 8, !dbg !5558
  br label %123, !dbg !5559

120:                                              ; preds = %91, %88, %87, %76, %63, %50, %37
  %121 = load i8*, i8** %10, align 8, !dbg !5560
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !5560
  store i8* %122, i8** %10, align 8, !dbg !5560
  br label %18, !dbg !5561, !llvm.loop !5562

123:                                              ; preds = %113, %18
  %124 = load i8*, i8** %11, align 8, !dbg !5564
  store i8 0, i8* %124, align 1, !dbg !5565
  %125 = load i8, i8* %8, align 1, !dbg !5566
  %126 = trunc i8 %125 to i1, !dbg !5566
  br i1 %126, label %127, label %151, !dbg !5568

127:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5569, metadata !DIExpression()), !dbg !5571
  %128 = load i8*, i8** %4, align 8, !dbg !5572
  %129 = load i32, i32* %6, align 4, !dbg !5573
  %130 = load i32, i32* %7, align 4, !dbg !5574
  %131 = or i32 %129, %130, !dbg !5575
  %132 = call i32 (i8*, i32, ...) @open(i8* noundef %128, i32 noundef %131, i32 noundef 438), !dbg !5576
  store i32 %132, i32* %13, align 4, !dbg !5571
  %133 = load i32, i32* %13, align 4, !dbg !5577
  %134 = icmp slt i32 %133, 0, !dbg !5579
  br i1 %134, label %135, label %136, !dbg !5580

135:                                              ; preds = %127
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !5581
  br label %156, !dbg !5581

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !5582, metadata !DIExpression()), !dbg !5583
  %137 = load i32, i32* %13, align 4, !dbg !5584
  %138 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5585
  %139 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %137, i8* noundef %138) #18, !dbg !5586
  store %struct._IO_FILE* %139, %struct._IO_FILE** %14, align 8, !dbg !5583
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5587
  %141 = icmp eq %struct._IO_FILE* %140, null, !dbg !5589
  br i1 %141, label %142, label %149, !dbg !5590

142:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5591, metadata !DIExpression()), !dbg !5593
  %143 = call i32* @__errno_location() #21, !dbg !5594
  %144 = load i32, i32* %143, align 4, !dbg !5594
  store i32 %144, i32* %15, align 4, !dbg !5593
  %145 = load i32, i32* %13, align 4, !dbg !5595
  %146 = call i32 @close(i32 noundef %145), !dbg !5596
  %147 = load i32, i32* %15, align 4, !dbg !5597
  %148 = call i32* @__errno_location() #21, !dbg !5598
  store i32 %147, i32* %148, align 4, !dbg !5599
  br label %149, !dbg !5600

149:                                              ; preds = %142, %136
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5601
  store %struct._IO_FILE* %150, %struct._IO_FILE** %3, align 8, !dbg !5602
  br label %156, !dbg !5602

151:                                              ; preds = %123
  %152 = load i32, i32* %6, align 4, !dbg !5603
  %153 = load i8*, i8** %4, align 8, !dbg !5604
  %154 = load i8*, i8** %5, align 8, !dbg !5605
  %155 = call %struct._IO_FILE* @orig_fopen(i8* noundef %153, i8* noundef %154), !dbg !5606
  store %struct._IO_FILE* %155, %struct._IO_FILE** %3, align 8, !dbg !5607
  br label %156, !dbg !5607

156:                                              ; preds = %151, %149, %135
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5608
  ret %struct._IO_FILE* %157, !dbg !5608
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @orig_fopen(i8* noundef %0, i8* noundef %1) #4 !dbg !5609 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5610, metadata !DIExpression()), !dbg !5611
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5612, metadata !DIExpression()), !dbg !5613
  %5 = load i8*, i8** %3, align 8, !dbg !5614
  %6 = load i8*, i8** %4, align 8, !dbg !5615
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef %6), !dbg !5616
  ret %struct._IO_FILE* %7, !dbg !5617
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !5618 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5619, metadata !DIExpression()), !dbg !5620
  %3 = load i32, i32* %2, align 4, !dbg !5621
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !5622
  ret i32 %4, !dbg !5623
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !5624 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5661, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5663, metadata !DIExpression()), !dbg !5665
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5666
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !5667
  %9 = icmp ne i64 %8, 0, !dbg !5668
  %10 = zext i1 %9 to i8, !dbg !5665
  store i8 %10, i8* %4, align 1, !dbg !5665
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5669, metadata !DIExpression()), !dbg !5670
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5671
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !5671
  %13 = icmp ne i32 %12, 0, !dbg !5672
  %14 = zext i1 %13 to i8, !dbg !5670
  store i8 %14, i8* %5, align 1, !dbg !5670
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5673, metadata !DIExpression()), !dbg !5674
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5675
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !5676
  %17 = icmp ne i32 %16, 0, !dbg !5677
  %18 = zext i1 %17 to i8, !dbg !5674
  store i8 %18, i8* %6, align 1, !dbg !5674
  %19 = load i8, i8* %5, align 1, !dbg !5678
  %20 = trunc i8 %19 to i1, !dbg !5678
  br i1 %20, label %31, label %21, !dbg !5680

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5681
  %23 = trunc i8 %22 to i1, !dbg !5681
  br i1 %23, label %24, label %37, !dbg !5682

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5683
  %26 = trunc i8 %25 to i1, !dbg !5683
  br i1 %26, label %31, label %27, !dbg !5684

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !5685
  %29 = load i32, i32* %28, align 4, !dbg !5685
  %30 = icmp ne i32 %29, 9, !dbg !5686
  br i1 %30, label %31, label %37, !dbg !5687

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5688
  %33 = trunc i8 %32 to i1, !dbg !5688
  br i1 %33, label %36, label %34, !dbg !5691

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !5692
  store i32 0, i32* %35, align 4, !dbg !5693
  br label %36, !dbg !5692

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5694
  br label %38, !dbg !5694

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5695
  br label %38, !dbg !5695

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5696
  ret i32 %39, !dbg !5696
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !5697 {
  %1 = call i32* @__errno_location() #21, !dbg !5700
  store i32 12, i32* %1, align 4, !dbg !5701
  ret i8* null, !dbg !5702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5703 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5704, metadata !DIExpression()), !dbg !5705
  %3 = load i64, i64* %2, align 8, !dbg !5706
  %4 = icmp ule i64 %3, -1, !dbg !5707
  br i1 %4, label %5, label %8, !dbg !5706

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5708
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !5709
  br label %10, !dbg !5706

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !5710
  br label %10, !dbg !5706

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5706
  ret i8* %11, !dbg !5711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5712 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5713, metadata !DIExpression()), !dbg !5714
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5715, metadata !DIExpression()), !dbg !5716
  %5 = load i64, i64* %4, align 8, !dbg !5717
  %6 = icmp ule i64 %5, -1, !dbg !5718
  br i1 %6, label %7, label %11, !dbg !5717

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5719
  %9 = load i64, i64* %4, align 8, !dbg !5720
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5721
  br label %13, !dbg !5717

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5722
  br label %13, !dbg !5717

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5717
  ret i8* %14, !dbg !5723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5724 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5725, metadata !DIExpression()), !dbg !5726
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5727, metadata !DIExpression()), !dbg !5728
  %6 = load i64, i64* %4, align 8, !dbg !5729
  %7 = icmp ult i64 -1, %6, !dbg !5731
  br i1 %7, label %8, label %14, !dbg !5732

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5733
  %10 = icmp ne i64 %9, 0, !dbg !5736
  br i1 %10, label %11, label %13, !dbg !5737

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5738
  store i8* %12, i8** %3, align 8, !dbg !5739
  br label %27, !dbg !5739

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5740
  br label %14, !dbg !5741

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5742
  %16 = icmp ult i64 -1, %15, !dbg !5744
  br i1 %16, label %17, label %23, !dbg !5745

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5746
  %19 = icmp ne i64 %18, 0, !dbg !5749
  br i1 %19, label %20, label %22, !dbg !5750

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !5751
  store i8* %21, i8** %3, align 8, !dbg !5752
  br label %27, !dbg !5752

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5753
  br label %23, !dbg !5754

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5755
  %25 = load i64, i64* %5, align 8, !dbg !5756
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !5757
  store i8* %26, i8** %3, align 8, !dbg !5758
  br label %27, !dbg !5758

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5759
  ret i8* %28, !dbg !5759
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5760 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5761, metadata !DIExpression()), !dbg !5762
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5763, metadata !DIExpression()), !dbg !5764
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5765, metadata !DIExpression()), !dbg !5766
  %7 = load i64, i64* %5, align 8, !dbg !5767
  %8 = icmp ule i64 %7, -1, !dbg !5768
  br i1 %8, label %9, label %17, !dbg !5769

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5770
  %11 = icmp ule i64 %10, -1, !dbg !5771
  br i1 %11, label %12, label %17, !dbg !5767

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5772
  %14 = load i64, i64* %5, align 8, !dbg !5773
  %15 = load i64, i64* %6, align 8, !dbg !5774
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5775
  br label %19, !dbg !5767

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !5776
  br label %19, !dbg !5767

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5767
  ret i8* %20, !dbg !5777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5778 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5783, metadata !DIExpression()), !dbg !5784
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5785, metadata !DIExpression()), !dbg !5786
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5787, metadata !DIExpression()), !dbg !5788
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5789, metadata !DIExpression()), !dbg !5790
  %11 = load i8*, i8** %7, align 8, !dbg !5791
  %12 = icmp eq i8* %11, null, !dbg !5793
  br i1 %12, label %13, label %14, !dbg !5794

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5795
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.254, i64 0, i64 0), i8** %7, align 8, !dbg !5797
  store i64 1, i64* %8, align 8, !dbg !5798
  br label %14, !dbg !5799

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5800
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5802
  br i1 %16, label %17, label %18, !dbg !5803

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5804
  br label %18, !dbg !5805

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5806, metadata !DIExpression()), !dbg !5807
  %19 = load i32*, i32** %6, align 8, !dbg !5808
  %20 = load i8*, i8** %7, align 8, !dbg !5809
  %21 = load i64, i64* %8, align 8, !dbg !5810
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5811
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !5812
  store i64 %23, i64* %10, align 8, !dbg !5807
  %24 = load i64, i64* %10, align 8, !dbg !5813
  %25 = icmp ult i64 %24, -3, !dbg !5815
  br i1 %25, label %26, label %32, !dbg !5816

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5817
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !5818
  %29 = icmp ne i32 %28, 0, !dbg !5818
  br i1 %29, label %32, label %30, !dbg !5819

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5820
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5821
  br label %32, !dbg !5821

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5822
  %34 = icmp eq i64 %33, -3, !dbg !5824
  br i1 %34, label %35, label %36, !dbg !5825

35:                                               ; preds = %32
  call void @abort() #19, !dbg !5826
  unreachable, !dbg !5826

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5827
  %38 = icmp ule i64 -2, %37, !dbg !5829
  br i1 %38, label %39, label %53, !dbg !5830

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5831
  %41 = icmp ne i64 %40, 0, !dbg !5832
  br i1 %41, label %42, label %53, !dbg !5833

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5834
  br i1 %43, label %53, label %44, !dbg !5835

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5836
  %46 = icmp ne i32* %45, null, !dbg !5839
  br i1 %46, label %47, label %52, !dbg !5840

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5841
  %49 = load i8, i8* %48, align 1, !dbg !5842
  %50 = zext i8 %49 to i32, !dbg !5843
  %51 = load i32*, i32** %6, align 8, !dbg !5844
  store i32 %50, i32* %51, align 4, !dbg !5845
  br label %52, !dbg !5846

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5847
  br label %55, !dbg !5847

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5848
  store i64 %54, i64* %5, align 8, !dbg !5849
  br label %55, !dbg !5849

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5850
  ret i64 %56, !dbg !5850
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5851 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5866, metadata !DIExpression()), !dbg !5867
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5868
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5869
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5869
  ret void, !dbg !5870
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5871 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5874, metadata !DIExpression()), !dbg !5875
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5876, metadata !DIExpression()), !dbg !5877
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5878, metadata !DIExpression()), !dbg !5879
  %7 = load i8*, i8** %4, align 8, !dbg !5880
  %8 = load i8*, i8** %5, align 8, !dbg !5881
  %9 = load i64, i64* %6, align 8, !dbg !5882
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !5883
  %11 = icmp ne i32 %10, 0, !dbg !5884
  %12 = xor i1 %11, true, !dbg !5884
  ret i1 %12, !dbg !5885
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5886 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5890, metadata !DIExpression()), !dbg !5891
  %5 = load i8*, i8** %3, align 8, !dbg !5892
  %6 = load i64, i64* %4, align 8, !dbg !5893
  %7 = icmp ne i64 %6, 0, !dbg !5893
  br i1 %7, label %8, label %10, !dbg !5893

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5894
  br label %11, !dbg !5893

10:                                               ; preds = %2
  br label %11, !dbg !5893

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5893
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !5895
  ret i8* %13, !dbg !5896
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5897 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5898, metadata !DIExpression()), !dbg !5899
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5902, metadata !DIExpression()), !dbg !5903
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5904, metadata !DIExpression()), !dbg !5905
  %9 = load i64, i64* %7, align 8, !dbg !5906
  %10 = icmp ult i64 %9, 0, !dbg !5906
  br i1 %10, label %11, label %60, !dbg !5906

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5906
  %13 = icmp ult i64 %12, 0, !dbg !5906
  br i1 %13, label %14, label %37, !dbg !5906

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5906

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5906
  %17 = load i64, i64* %7, align 8, !dbg !5906
  %18 = udiv i64 -1, %17, !dbg !5906
  %19 = icmp ult i64 %16, %18, !dbg !5906
  br i1 %19, label %92, label %96, !dbg !5906

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5906

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5906
  %23 = icmp ult i64 %22, 1, !dbg !5906
  br i1 %23, label %27, label %28, !dbg !5906

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5906
  %26 = icmp ult i64 0, %25, !dbg !5906
  br i1 %26, label %27, label %28, !dbg !5906

27:                                               ; preds = %24, %21
  br label %32, !dbg !5906

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5906
  %30 = sub i64 0, %29, !dbg !5906
  %31 = udiv i64 -1, %30, !dbg !5906
  br label %32, !dbg !5906

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5906
  %34 = load i64, i64* %6, align 8, !dbg !5906
  %35 = sub i64 -1, %34, !dbg !5906
  %36 = icmp ule i64 %33, %35, !dbg !5906
  br i1 %36, label %92, label %96, !dbg !5906

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5906

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5906

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5906

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5906
  %42 = icmp eq i64 %41, -1, !dbg !5906
  br i1 %42, label %43, label %55, !dbg !5906

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5906

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5906
  %46 = add i64 %45, 0, !dbg !5906
  %47 = icmp ult i64 0, %46, !dbg !5906
  br i1 %47, label %92, label %96, !dbg !5906

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5906
  %50 = icmp ult i64 0, %49, !dbg !5906
  br i1 %50, label %51, label %96, !dbg !5906

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5906
  %53 = sub i64 %52, 1, !dbg !5906
  %54 = icmp ult i64 -1, %53, !dbg !5906
  br i1 %54, label %92, label %96, !dbg !5906

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5906
  %57 = udiv i64 0, %56, !dbg !5906
  %58 = load i64, i64* %6, align 8, !dbg !5906
  %59 = icmp ult i64 %57, %58, !dbg !5906
  br i1 %59, label %92, label %96, !dbg !5906

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5906
  %62 = icmp eq i64 %61, 0, !dbg !5906
  br i1 %62, label %63, label %64, !dbg !5906

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5906

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5906
  %66 = icmp ult i64 %65, 0, !dbg !5906
  br i1 %66, label %67, label %87, !dbg !5906

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5906

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5906

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5906

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5906
  %72 = icmp eq i64 %71, -1, !dbg !5906
  br i1 %72, label %73, label %82, !dbg !5906

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5906

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5906
  %76 = add i64 %75, 0, !dbg !5906
  %77 = icmp ult i64 0, %76, !dbg !5906
  br i1 %77, label %92, label %96, !dbg !5906

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5906
  %80 = sub i64 %79, 1, !dbg !5906
  %81 = icmp ult i64 -1, %80, !dbg !5906
  br i1 %81, label %92, label %96, !dbg !5906

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5906
  %84 = udiv i64 0, %83, !dbg !5906
  %85 = load i64, i64* %7, align 8, !dbg !5906
  %86 = icmp ult i64 %84, %85, !dbg !5906
  br i1 %86, label %92, label %96, !dbg !5906

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5906
  %89 = udiv i64 -1, %88, !dbg !5906
  %90 = load i64, i64* %6, align 8, !dbg !5906
  %91 = icmp ult i64 %89, %90, !dbg !5906
  br i1 %91, label %92, label %96, !dbg !5906

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5906
  %94 = load i64, i64* %7, align 8, !dbg !5906
  %95 = mul i64 %93, %94, !dbg !5906
  store i64 %95, i64* %8, align 8, !dbg !5906
  br label %100, !dbg !5906

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5906
  %98 = load i64, i64* %7, align 8, !dbg !5906
  %99 = mul i64 %97, %98, !dbg !5906
  store i64 %99, i64* %8, align 8, !dbg !5906
  br label %100, !dbg !5906

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5906
  %102 = icmp ne i32 %101, 0, !dbg !5906
  br i1 %102, label %103, label %105, !dbg !5908

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !5909
  store i32 12, i32* %104, align 4, !dbg !5911
  store i8* null, i8** %4, align 8, !dbg !5912
  br label %109, !dbg !5912

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5913
  %107 = load i64, i64* %8, align 8, !dbg !5914
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5915
  store i8* %108, i8** %4, align 8, !dbg !5916
  br label %109, !dbg !5916

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5917
  ret i8* %110, !dbg !5917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5918 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5919, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5921, metadata !DIExpression()), !dbg !5925
  %5 = load i32, i32* %3, align 4, !dbg !5926
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5928
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5929
  %8 = icmp ne i32 %7, 0, !dbg !5929
  br i1 %8, label %9, label %10, !dbg !5930

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5931
  br label %18, !dbg !5931

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5932
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.265, i64 0, i64 0)), !dbg !5934
  br i1 %12, label %17, label %13, !dbg !5935

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5936
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.266, i64 0, i64 0)), !dbg !5937
  br i1 %15, label %17, label %16, !dbg !5938

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5939
  br label %18, !dbg !5939

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5940
  br label %18, !dbg !5940

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5941
  ret i1 %19, !dbg !5941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5942 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5945, metadata !DIExpression()), !dbg !5946
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5947, metadata !DIExpression()), !dbg !5948
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5949, metadata !DIExpression()), !dbg !5950
  %7 = load i32, i32* %4, align 4, !dbg !5951
  %8 = load i8*, i8** %5, align 8, !dbg !5952
  %9 = load i64, i64* %6, align 8, !dbg !5953
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5954
  ret i32 %10, !dbg !5955
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5956 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5959, metadata !DIExpression()), !dbg !5960
  %3 = load i32, i32* %2, align 4, !dbg !5961
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5962
  ret i8* %4, !dbg !5963
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5964 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5965, metadata !DIExpression()), !dbg !5966
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5967, metadata !DIExpression()), !dbg !5968
  %4 = load i32, i32* %2, align 4, !dbg !5969
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !5970
  store i8* %5, i8** %3, align 8, !dbg !5968
  %6 = load i8*, i8** %3, align 8, !dbg !5971
  ret i8* %6, !dbg !5972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5973 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5974, metadata !DIExpression()), !dbg !5975
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5976, metadata !DIExpression()), !dbg !5977
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5978, metadata !DIExpression()), !dbg !5979
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5980, metadata !DIExpression()), !dbg !5981
  %10 = load i32, i32* %5, align 4, !dbg !5982
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5983
  store i8* %11, i8** %8, align 8, !dbg !5981
  %12 = load i8*, i8** %8, align 8, !dbg !5984
  %13 = icmp eq i8* %12, null, !dbg !5986
  br i1 %13, label %14, label %21, !dbg !5987

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5988
  %16 = icmp ugt i64 %15, 0, !dbg !5991
  br i1 %16, label %17, label %20, !dbg !5992

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5993
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5993
  store i8 0, i8* %19, align 1, !dbg !5994
  br label %20, !dbg !5993

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5995
  br label %45, !dbg !5995

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5996, metadata !DIExpression()), !dbg !5998
  %22 = load i8*, i8** %8, align 8, !dbg !5999
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !6000
  store i64 %23, i64* %9, align 8, !dbg !5998
  %24 = load i64, i64* %9, align 8, !dbg !6001
  %25 = load i64, i64* %7, align 8, !dbg !6003
  %26 = icmp ult i64 %24, %25, !dbg !6004
  br i1 %26, label %27, label %32, !dbg !6005

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !6006
  %29 = load i8*, i8** %8, align 8, !dbg !6008
  %30 = load i64, i64* %9, align 8, !dbg !6009
  %31 = add i64 %30, 1, !dbg !6010
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !6011
  store i32 0, i32* %4, align 4, !dbg !6012
  br label %45, !dbg !6012

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !6013
  %34 = icmp ugt i64 %33, 0, !dbg !6016
  br i1 %34, label %35, label %44, !dbg !6017

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !6018
  %37 = load i8*, i8** %8, align 8, !dbg !6020
  %38 = load i64, i64* %7, align 8, !dbg !6021
  %39 = sub i64 %38, 1, !dbg !6022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !6023
  %40 = load i8*, i8** %6, align 8, !dbg !6024
  %41 = load i64, i64* %7, align 8, !dbg !6025
  %42 = sub i64 %41, 1, !dbg !6026
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !6024
  store i8 0, i8* %43, align 1, !dbg !6027
  br label %44, !dbg !6028

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !6029
  br label %45, !dbg !6029

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !6030
  ret i32 %46, !dbg !6030
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
attributes #23 = { allocsize(0) }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !62, !191, !343, !345, !347, !196, !203, !318, !349, !352, !354, !356, !358, !360, !362, !370, !235, !245, !250, !383, !385, !310, !391, !407, !409, !411, !413, !415, !324, !417, !419, !421, !423, !426, !428, !430}
!llvm.ident = !{!432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432}
!llvm.module.flags = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 62, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2f40f86ff2e1751a61c8225ac9d0fd19")
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
!21 = !{!22, !24, !25, !26, !27, !28, !29}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!26 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !0, !40}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !33, file: !34, line: 575, type: !28, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "oputs_", scope: !34, file: !34, line: 573, type: !35, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!34 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!39 = !{}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "line_in", scope: !42, file: !3, line: 127, type: !45, isLocal: true, isDefinition: true)
!42 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 114, type: !43, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!43 = !DISubroutineType(types: !44)
!44 = !{null}
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2097152, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 262144)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1536, elements: !58)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !51, line: 50, size: 256, elements: !52)
!51 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!52 = !{!53, !54, !55, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !51, line: 52, baseType: !37, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !50, file: !51, line: 55, baseType: !28, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !50, file: !51, line: 56, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !50, file: !51, line: 57, baseType: !28, size: 32, offset: 192)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !62, file: !63, line: 30, type: !25, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !64, retainedTypes: !88, globals: !89, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!64 = !{!5, !65, !79}
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !66, line: 42, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!68 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!69 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!70 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!71 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!72 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!73 = !DIEnumerator(name: "c_quoting_style", value: 5)
!74 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!75 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!76 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!77 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!78 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 44, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!83 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!84 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!85 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!86 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!87 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!88 = !{!28, !29, !25, !26, !27, !24}
!89 = !{!60, !90, !92, !153, !158, !160, !168, !170, !172, !174, !176, !178, !183, !186}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "exit_status", scope: !62, file: !63, line: 69, type: !28, isLocal: false, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "prev_file", scope: !94, file: !63, line: 351, type: !22, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "next_file", scope: !63, file: !63, line: 349, type: !95, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !100)
!99 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !102)
!101 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !118, !120, !121, !122, !125, !126, !128, !132, !135, !137, !140, !143, !144, !145, !148, !149}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !100, file: !101, line: 51, baseType: !28, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !100, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !100, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !100, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !100, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !100, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !100, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !100, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !100, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !100, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !100, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !100, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !100, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !101, line: 36, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !100, file: !101, line: 70, baseType: !119, size: 64, offset: 832)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !100, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !100, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !100, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !124, line: 152, baseType: !26)
!124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !100, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !100, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!127 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !100, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !100, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !101, line: 43, baseType: null)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !100, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !124, line: 153, baseType: !26)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !100, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !101, line: 37, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !100, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !101, line: 38, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !100, file: !101, line: 93, baseType: !119, size: 64, offset: 1344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !100, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !100, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !27)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !100, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !100, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 20)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "max_column_width", scope: !62, file: !63, line: 42, type: !155, isLocal: false, isDefinition: true)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !156, line: 130, baseType: !157)
!156 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !147, line: 35, baseType: !26)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !62, file: !63, line: 54, type: !155, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "tab_list", scope: !62, file: !63, line: 47, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !164, line: 20, baseType: !165)
!164 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !166, line: 101, baseType: !167)
!166 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !124, line: 72, baseType: !26)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !62, file: !63, line: 50, type: !155, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "extend_size", scope: !62, file: !63, line: 36, type: !163, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "increment_size", scope: !62, file: !63, line: 39, type: !163, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "tab_size", scope: !62, file: !63, line: 33, type: !163, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !62, file: !63, line: 66, type: !25, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !62, file: !63, line: 60, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 2)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "file_list", scope: !62, file: !63, line: 57, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !188, file: !34, line: 575, type: !28, isLocal: true, isDefinition: true)
!188 = distinct !DISubprogram(name: "oputs_", scope: !34, file: !34, line: 573, type: !35, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "Version", scope: !191, file: !192, line: 3, type: !37, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !193, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!193 = !{!189}
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "file_name", scope: !196, file: !197, line: 45, type: !37, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !198, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!198 = !{!194, !199}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !196, file: !197, line: 55, type: !25, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !203, file: !204, line: 66, type: !232, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, globals: !206, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!205 = !{!24}
!206 = !{!207, !226, !201, !228, !230}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "old_file_name", scope: !209, file: !204, line: 304, type: !37, isLocal: true, isDefinition: true)
!209 = distinct !DISubprogram(name: "verror_at_line", scope: !204, file: !204, line: 298, type: !210, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !203, retainedNodes: !39)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !28, !28, !37, !7, !37, !212}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !213, line: 52, baseType: !214)
!213 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !215, line: 32, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !217, baseType: !218)
!217 = !DIFile(filename: "lib/error.c", directory: "/src")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !219, size: 256, elements: !220)
!219 = !DINamespace(name: "std", scope: null)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !218, file: !217, baseType: !24, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !218, file: !217, baseType: !24, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !218, file: !217, baseType: !24, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !218, file: !217, baseType: !28, size: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !218, file: !217, baseType: !28, size: 32, offset: 224)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "old_line_number", scope: !209, file: !204, line: 305, type: !7, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "error_message_count", scope: !203, file: !204, line: 69, type: !7, isLocal: false, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !203, file: !204, line: 295, type: !28, isLocal: false, isDefinition: true)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "program_name", scope: !235, file: !236, line: 31, type: !37, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !237, globals: !238, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!237 = !{!22}
!238 = !{!233}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "utf07FF", scope: !241, file: !242, line: 46, type: !247, isLocal: true, isDefinition: true)
!241 = distinct !DISubprogram(name: "proper_name_lite", scope: !242, file: !242, line: 38, type: !243, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !245, retainedNodes: !39)
!242 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!243 = !DISubroutineType(types: !244)
!244 = !{!37, !37, !37}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !246, splitDebugInlining: false, nameTableKind: None)
!246 = !{!239}
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !181)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !250, file: !251, line: 76, type: !304, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !258, globals: !259, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!252 = !{!65, !253, !5}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !66, line: 254, baseType: !7, size: 32, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!256 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!257 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!258 = !{!28, !29, !146}
!259 = !{!248, !260, !266, !278, !280, !285, !293, !300, !302}
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !250, file: !251, line: 92, type: !262, isLocal: false, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 320, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!264 = !{!265}
!265 = !DISubrange(count: 10)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !250, file: !251, line: 1040, type: !268, isLocal: false, isDefinition: true)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !251, line: 56, size: 448, elements: !269)
!269 = !{!270, !271, !272, !276, !277}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !268, file: !251, line: 59, baseType: !65, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !251, line: 62, baseType: !28, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !268, file: !251, line: 66, baseType: !273, size: 256, offset: 64)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !268, file: !251, line: 69, baseType: !37, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !268, file: !251, line: 72, baseType: !37, size: 64, offset: 384)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !250, file: !251, line: 107, type: !268, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "slot0", scope: !250, file: !251, line: 831, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 256)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "quote", scope: !287, file: !251, line: 228, type: !290, isLocal: true, isDefinition: true)
!287 = distinct !DISubprogram(name: "gettext_quote", scope: !251, file: !251, line: 197, type: !288, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !250, retainedNodes: !39)
!288 = !DISubroutineType(types: !289)
!289 = !{!37, !37, !65}
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !291)
!291 = !{!182, !292}
!292 = !DISubrange(count: 4)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "slotvec", scope: !250, file: !251, line: 834, type: !295, isLocal: true, isDefinition: true)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !251, line: 823, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !296, file: !251, line: 825, baseType: !146, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !251, line: 826, baseType: !22, size: 64, offset: 64)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "nslots", scope: !250, file: !251, line: 832, type: !28, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "slotvec0", scope: !250, file: !251, line: 833, type: !296, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 704, elements: !306)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!306 = !{!307}
!307 = !DISubrange(count: 11)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !310, file: !311, line: 26, type: !313, isLocal: false, isDefinition: true)
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !312, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!312 = !{!308}
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 47)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "exit_failure", scope: !318, file: !319, line: 24, type: !321, isLocal: false, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !320, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!320 = !{!316}
!321 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "internal_state", scope: !324, file: !325, line: 97, type: !329, isLocal: true, isDefinition: true)
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !326, globals: !328, splitDebugInlining: false, nameTableKind: None)
!325 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!326 = !{!24, !146, !327}
!327 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!328 = !{!322}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !331)
!330 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !333)
!332 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !333, file: !332, line: 15, baseType: !28, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !333, file: !332, line: 20, baseType: !337, size: 32, offset: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !332, line: 16, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !337, file: !332, line: 18, baseType: !7, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !337, file: !332, line: 19, baseType: !341, size: 32)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !342)
!342 = !{!292}
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/c32isblank.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fdc50bdf98dbcb7b574dd3202ecd546c")
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "lib/c32width.c", directory: "/src", checksumkind: CSK_MD5, checksum: "85b2c5ee6f572eb09c0f075561e000ef")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !351, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!351 = !{!79}
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !364, retainedTypes: !369, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/mbbuf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b7bac851fa0e451a46f67e401f301ae1")
!364 = !{!365}
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !366, line: 127, baseType: !7, size: 32, elements: !367)
!366 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!367 = !{!368}
!368 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!369 = !{!327}
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !372, retainedTypes: !382, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/mcel.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4bc577b690b70e5442e17a02996a7034")
!372 = !{!365, !373, !376, !379}
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !366, line: 130, baseType: !7, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !366, line: 131, baseType: !7, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !366, line: 150, baseType: !7, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIEnumerator(name: "MCEL_ERR_SHIFT", value: 14)
!382 = !{!146}
!383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !384, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!384 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !387, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!387 = !{!388}
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 40, baseType: !7, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !393, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!393 = !{!394, !401}
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !395, file: !392, line: 188, baseType: !7, size: 32, elements: !399)
!395 = distinct !DISubprogram(name: "x2nrealloc", scope: !392, file: !392, line: 176, type: !396, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!396 = !DISubroutineType(types: !397)
!397 = !{!24, !24, !398, !146}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!399 = !{!400}
!400 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!401 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !402, file: !392, line: 228, baseType: !7, size: 32, elements: !399)
!402 = distinct !DISubprogram(name: "xpalloc", scope: !392, file: !392, line: 223, type: !403, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!403 = !DISubroutineType(types: !404)
!404 = !{!24, !24, !405, !155, !157, !155}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!406 = !{!22, !24, !25, !26, !27}
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !418, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!425 = !{!25, !27, !24}
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !205, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!432 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!433 = !{i32 7, !"Dwarf Version", i32 5}
!434 = !{i32 2, !"Debug Info Version", i32 3}
!435 = !{i32 1, !"wchar_size", i32 4}
!436 = !{i32 1, !"branch-target-enforcement", i32 0}
!437 = !{i32 1, !"sign-return-address", i32 0}
!438 = !{i32 1, !"sign-return-address-all", i32 0}
!439 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"PIC Level", i32 2}
!441 = !{i32 7, !"PIE Level", i32 2}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 1}
!444 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 73, type: !445, scopeLine: 74, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !28}
!447 = !DILocalVariable(name: "status", arg: 1, scope: !444, file: !3, line: 73, type: !28)
!448 = !DILocation(line: 73, column: 12, scope: !444)
!449 = !DILocation(line: 75, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !3, line: 75, column: 7)
!451 = !DILocation(line: 75, column: 14, scope: !450)
!452 = !DILocation(line: 75, column: 7, scope: !444)
!453 = !DILocation(line: 76, column: 5, scope: !450)
!454 = !DILocation(line: 76, column: 5, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 76, column: 5)
!456 = !DILocation(line: 79, column: 15, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !3, line: 78, column: 5)
!458 = !DILocation(line: 82, column: 15, scope: !457)
!459 = !DILocation(line: 79, column: 7, scope: !457)
!460 = !DILocation(line: 83, column: 7, scope: !457)
!461 = !DILocation(line: 87, column: 7, scope: !457)
!462 = !DILocation(line: 88, column: 7, scope: !457)
!463 = !DILocation(line: 90, column: 7, scope: !457)
!464 = !DILocation(line: 94, column: 7, scope: !457)
!465 = !DILocation(line: 98, column: 7, scope: !457)
!466 = !DILocation(line: 102, column: 7, scope: !457)
!467 = !DILocation(line: 103, column: 7, scope: !457)
!468 = !DILocation(line: 104, column: 7, scope: !457)
!469 = !DILocation(line: 105, column: 7, scope: !457)
!470 = !DILocation(line: 107, column: 9, scope: !444)
!471 = !DILocation(line: 107, column: 3, scope: !444)
!472 = distinct !DISubprogram(name: "emit_stdin_note", scope: !34, file: !34, line: 727, type: !43, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!473 = !DILocation(line: 729, column: 3, scope: !472)
!474 = !DILocation(line: 732, column: 1, scope: !472)
!475 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !34, file: !34, line: 734, type: !43, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!476 = !DILocation(line: 736, column: 3, scope: !475)
!477 = !DILocation(line: 739, column: 1, scope: !475)
!478 = !DILocalVariable(name: "program", arg: 1, scope: !33, file: !34, line: 573, type: !37)
!479 = !DILocation(line: 573, column: 34, scope: !33)
!480 = !DILocalVariable(name: "option", arg: 2, scope: !33, file: !34, line: 573, type: !37)
!481 = !DILocation(line: 573, column: 55, scope: !33)
!482 = !DILocation(line: 581, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !33, file: !34, line: 581, column: 7)
!484 = !DILocation(line: 581, column: 19, scope: !483)
!485 = !DILocation(line: 581, column: 7, scope: !33)
!486 = !DILocalVariable(name: "term", scope: !487, file: !34, line: 585, type: !37)
!487 = distinct !DILexicalBlock(scope: !483, file: !34, line: 582, column: 5)
!488 = !DILocation(line: 585, column: 19, scope: !487)
!489 = !DILocation(line: 585, column: 26, scope: !487)
!490 = !DILocation(line: 586, column: 23, scope: !487)
!491 = !DILocation(line: 586, column: 28, scope: !487)
!492 = !DILocation(line: 586, column: 33, scope: !487)
!493 = !DILocation(line: 586, column: 32, scope: !487)
!494 = !DILocation(line: 586, column: 38, scope: !487)
!495 = !DILocation(line: 586, column: 48, scope: !487)
!496 = !DILocation(line: 586, column: 41, scope: !487)
!497 = !DILocation(line: 586, column: 19, scope: !487)
!498 = !DILocation(line: 587, column: 5, scope: !487)
!499 = !DILocation(line: 588, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !33, file: !34, line: 588, column: 7)
!501 = !DILocation(line: 588, column: 7, scope: !33)
!502 = !DILocation(line: 590, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !34, line: 589, column: 5)
!504 = !DILocation(line: 591, column: 7, scope: !503)
!505 = !DILocalVariable(name: "double_space", scope: !33, file: !34, line: 594, type: !25)
!506 = !DILocation(line: 594, column: 8, scope: !33)
!507 = !DILocalVariable(name: "first_word", scope: !33, file: !34, line: 595, type: !37)
!508 = !DILocation(line: 595, column: 15, scope: !33)
!509 = !DILocation(line: 595, column: 28, scope: !33)
!510 = !DILocation(line: 595, column: 45, scope: !33)
!511 = !DILocation(line: 595, column: 37, scope: !33)
!512 = !DILocation(line: 595, column: 35, scope: !33)
!513 = !DILocalVariable(name: "option_text", scope: !33, file: !34, line: 596, type: !37)
!514 = !DILocation(line: 596, column: 15, scope: !33)
!515 = !DILocation(line: 596, column: 37, scope: !33)
!516 = !DILocation(line: 596, column: 29, scope: !33)
!517 = !DILocation(line: 597, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !33, file: !34, line: 597, column: 7)
!519 = !DILocation(line: 597, column: 7, scope: !33)
!520 = !DILocation(line: 599, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !34, line: 598, column: 5)
!522 = !DILocation(line: 599, column: 19, scope: !521)
!523 = !DILocation(line: 602, column: 20, scope: !521)
!524 = !DILocation(line: 603, column: 5, scope: !521)
!525 = !DILocation(line: 604, column: 12, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !34, line: 604, column: 12)
!527 = !DILocation(line: 604, column: 27, scope: !526)
!528 = !DILocation(line: 604, column: 24, scope: !526)
!529 = !DILocation(line: 604, column: 12, scope: !518)
!530 = !DILocalVariable(name: "s", scope: !531, file: !34, line: 608, type: !37)
!531 = distinct !DILexicalBlock(scope: !526, file: !34, line: 605, column: 5)
!532 = !DILocation(line: 608, column: 19, scope: !531)
!533 = !DILocation(line: 608, column: 23, scope: !531)
!534 = !DILocalVariable(name: "spaces", scope: !531, file: !34, line: 609, type: !146)
!535 = !DILocation(line: 609, column: 14, scope: !531)
!536 = !DILocation(line: 610, column: 7, scope: !531)
!537 = !DILocation(line: 610, column: 14, scope: !531)
!538 = !DILocation(line: 610, column: 18, scope: !531)
!539 = !DILocation(line: 610, column: 16, scope: !531)
!540 = !DILocation(line: 610, column: 30, scope: !531)
!541 = !DILocation(line: 610, column: 33, scope: !531)
!542 = !DILocation(line: 610, column: 40, scope: !531)
!543 = !DILocation(line: 0, scope: !531)
!544 = !DILocation(line: 611, column: 21, scope: !531)
!545 = !DILocation(line: 611, column: 20, scope: !531)
!546 = !DILocation(line: 611, column: 19, scope: !531)
!547 = !DILocation(line: 611, column: 16, scope: !531)
!548 = distinct !{!548, !536, !544, !549}
!549 = !{!"llvm.loop.mustprogress"}
!550 = !DILocation(line: 612, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !531, file: !34, line: 612, column: 11)
!552 = !DILocation(line: 612, column: 18, scope: !551)
!553 = !DILocation(line: 612, column: 11, scope: !531)
!554 = !DILocation(line: 615, column: 25, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !34, line: 613, column: 9)
!556 = !DILocation(line: 615, column: 23, scope: !555)
!557 = !DILocation(line: 616, column: 24, scope: !555)
!558 = !DILocation(line: 617, column: 9, scope: !555)
!559 = !DILocation(line: 618, column: 5, scope: !531)
!560 = !DILocalVariable(name: "anchor_len", scope: !33, file: !34, line: 620, type: !146)
!561 = !DILocation(line: 620, column: 10, scope: !33)
!562 = !DILocation(line: 620, column: 32, scope: !33)
!563 = !DILocation(line: 620, column: 23, scope: !33)
!564 = !DILocalVariable(name: "desc_text", scope: !33, file: !34, line: 625, type: !37)
!565 = !DILocation(line: 625, column: 15, scope: !33)
!566 = !DILocation(line: 625, column: 27, scope: !33)
!567 = !DILocation(line: 625, column: 41, scope: !33)
!568 = !DILocation(line: 625, column: 39, scope: !33)
!569 = !DILocation(line: 626, column: 3, scope: !33)
!570 = !DILocation(line: 626, column: 11, scope: !33)
!571 = !DILocation(line: 626, column: 10, scope: !33)
!572 = !DILocation(line: 626, column: 21, scope: !33)
!573 = !DILocation(line: 626, column: 25, scope: !33)
!574 = !DILocation(line: 626, column: 24, scope: !33)
!575 = !DILocation(line: 626, column: 35, scope: !33)
!576 = !DILocation(line: 0, scope: !33)
!577 = !DILocation(line: 628, column: 12, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !34, line: 628, column: 11)
!579 = distinct !DILexicalBlock(scope: !33, file: !34, line: 627, column: 5)
!580 = !DILocation(line: 628, column: 11, scope: !578)
!581 = !DILocation(line: 628, column: 22, scope: !578)
!582 = !DILocation(line: 628, column: 29, scope: !578)
!583 = !DILocation(line: 628, column: 34, scope: !578)
!584 = !DILocation(line: 628, column: 44, scope: !578)
!585 = !DILocation(line: 628, column: 32, scope: !578)
!586 = !DILocation(line: 628, column: 49, scope: !578)
!587 = !DILocation(line: 628, column: 11, scope: !579)
!588 = !DILocation(line: 629, column: 22, scope: !578)
!589 = !DILocation(line: 629, column: 9, scope: !578)
!590 = !DILocation(line: 630, column: 11, scope: !591)
!591 = distinct !DILexicalBlock(scope: !579, file: !34, line: 630, column: 11)
!592 = !DILocation(line: 630, column: 11, scope: !579)
!593 = !DILocation(line: 632, column: 16, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !34, line: 632, column: 15)
!595 = distinct !DILexicalBlock(scope: !591, file: !34, line: 631, column: 9)
!596 = !DILocation(line: 632, column: 15, scope: !594)
!597 = !DILocation(line: 632, column: 26, scope: !594)
!598 = !DILocation(line: 632, column: 34, scope: !594)
!599 = !DILocation(line: 632, column: 37, scope: !594)
!600 = !DILocation(line: 632, column: 15, scope: !595)
!601 = !DILocation(line: 633, column: 13, scope: !594)
!602 = !DILocation(line: 636, column: 16, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !34, line: 636, column: 15)
!604 = !DILocation(line: 636, column: 29, scope: !603)
!605 = !DILocation(line: 636, column: 34, scope: !603)
!606 = !DILocation(line: 636, column: 44, scope: !603)
!607 = !DILocation(line: 636, column: 32, scope: !603)
!608 = !DILocation(line: 636, column: 49, scope: !603)
!609 = !DILocation(line: 636, column: 15, scope: !595)
!610 = !DILocation(line: 637, column: 13, scope: !603)
!611 = !DILocation(line: 638, column: 9, scope: !595)
!612 = !DILocation(line: 640, column: 16, scope: !579)
!613 = distinct !{!613, !569, !614, !549}
!614 = !DILocation(line: 641, column: 5, scope: !33)
!615 = !DILocation(line: 644, column: 3, scope: !33)
!616 = !DILocalVariable(name: "url_program", scope: !33, file: !34, line: 648, type: !37)
!617 = !DILocation(line: 648, column: 15, scope: !33)
!618 = !DILocation(line: 648, column: 38, scope: !33)
!619 = !DILocation(line: 648, column: 31, scope: !33)
!620 = !DILocation(line: 649, column: 38, scope: !33)
!621 = !DILocation(line: 649, column: 31, scope: !33)
!622 = !DILocation(line: 650, column: 38, scope: !33)
!623 = !DILocation(line: 650, column: 31, scope: !33)
!624 = !DILocation(line: 651, column: 38, scope: !33)
!625 = !DILocation(line: 651, column: 31, scope: !33)
!626 = !DILocation(line: 652, column: 38, scope: !33)
!627 = !DILocation(line: 652, column: 31, scope: !33)
!628 = !DILocation(line: 653, column: 38, scope: !33)
!629 = !DILocation(line: 653, column: 31, scope: !33)
!630 = !DILocation(line: 654, column: 38, scope: !33)
!631 = !DILocation(line: 654, column: 31, scope: !33)
!632 = !DILocation(line: 655, column: 38, scope: !33)
!633 = !DILocation(line: 655, column: 31, scope: !33)
!634 = !DILocation(line: 656, column: 38, scope: !33)
!635 = !DILocation(line: 656, column: 31, scope: !33)
!636 = !DILocation(line: 657, column: 38, scope: !33)
!637 = !DILocation(line: 657, column: 31, scope: !33)
!638 = !DILocation(line: 658, column: 31, scope: !33)
!639 = !DILocation(line: 663, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !33, file: !34, line: 663, column: 7)
!641 = !DILocation(line: 664, column: 7, scope: !640)
!642 = !DILocation(line: 664, column: 10, scope: !640)
!643 = !DILocation(line: 663, column: 7, scope: !33)
!644 = !DILocation(line: 670, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !34, line: 665, column: 5)
!646 = !DILocation(line: 670, column: 28, scope: !645)
!647 = !DILocation(line: 670, column: 47, scope: !645)
!648 = !DILocation(line: 670, column: 41, scope: !645)
!649 = !DILocation(line: 670, column: 59, scope: !645)
!650 = !DILocation(line: 669, column: 7, scope: !645)
!651 = !DILocation(line: 671, column: 5, scope: !645)
!652 = !DILocation(line: 676, column: 48, scope: !653)
!653 = distinct !DILexicalBlock(scope: !640, file: !34, line: 673, column: 5)
!654 = !DILocation(line: 677, column: 21, scope: !653)
!655 = !DILocation(line: 677, column: 15, scope: !653)
!656 = !DILocation(line: 677, column: 33, scope: !653)
!657 = !DILocation(line: 676, column: 7, scope: !653)
!658 = !DILocation(line: 679, column: 3, scope: !33)
!659 = !DILocation(line: 683, column: 3, scope: !33)
!660 = !DILocation(line: 686, column: 3, scope: !33)
!661 = !DILocation(line: 688, column: 3, scope: !33)
!662 = !DILocation(line: 691, column: 3, scope: !33)
!663 = !DILocation(line: 695, column: 3, scope: !33)
!664 = !DILocation(line: 696, column: 1, scope: !33)
!665 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !34, file: !34, line: 836, type: !666, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !37}
!668 = !DILocalVariable(name: "program", arg: 1, scope: !665, file: !34, line: 836, type: !37)
!669 = !DILocation(line: 836, column: 34, scope: !665)
!670 = !DILocalVariable(name: "infomap", scope: !665, file: !34, line: 838, type: !671)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 896, elements: !677)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !665, file: !34, line: 838, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !673, file: !34, line: 838, baseType: !37, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !34, line: 838, baseType: !37, size: 64, offset: 64)
!677 = !{!678}
!678 = !DISubrange(count: 7)
!679 = !DILocation(line: 838, column: 67, scope: !665)
!680 = !DILocalVariable(name: "node", scope: !665, file: !34, line: 848, type: !37)
!681 = !DILocation(line: 848, column: 15, scope: !665)
!682 = !DILocation(line: 848, column: 22, scope: !665)
!683 = !DILocalVariable(name: "map_prog", scope: !665, file: !34, line: 849, type: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!685 = !DILocation(line: 849, column: 25, scope: !665)
!686 = !DILocation(line: 849, column: 36, scope: !665)
!687 = !DILocation(line: 851, column: 3, scope: !665)
!688 = !DILocation(line: 851, column: 10, scope: !665)
!689 = !DILocation(line: 851, column: 20, scope: !665)
!690 = !DILocation(line: 851, column: 28, scope: !665)
!691 = !DILocation(line: 851, column: 40, scope: !665)
!692 = !DILocation(line: 851, column: 49, scope: !665)
!693 = !DILocation(line: 851, column: 59, scope: !665)
!694 = !DILocation(line: 851, column: 33, scope: !665)
!695 = !DILocation(line: 851, column: 31, scope: !665)
!696 = !DILocation(line: 0, scope: !665)
!697 = !DILocation(line: 852, column: 13, scope: !665)
!698 = distinct !{!698, !687, !697, !549}
!699 = !DILocation(line: 854, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !665, file: !34, line: 854, column: 7)
!701 = !DILocation(line: 854, column: 17, scope: !700)
!702 = !DILocation(line: 854, column: 7, scope: !665)
!703 = !DILocation(line: 855, column: 12, scope: !700)
!704 = !DILocation(line: 855, column: 22, scope: !700)
!705 = !DILocation(line: 855, column: 10, scope: !700)
!706 = !DILocation(line: 855, column: 5, scope: !700)
!707 = !DILocation(line: 857, column: 3, scope: !665)
!708 = !DILocalVariable(name: "lc_messages", scope: !665, file: !34, line: 861, type: !37)
!709 = !DILocation(line: 861, column: 15, scope: !665)
!710 = !DILocation(line: 861, column: 29, scope: !665)
!711 = !DILocation(line: 862, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !665, file: !34, line: 862, column: 7)
!713 = !DILocation(line: 862, column: 19, scope: !712)
!714 = !DILocation(line: 862, column: 22, scope: !712)
!715 = !DILocation(line: 862, column: 7, scope: !665)
!716 = !DILocation(line: 868, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !34, line: 863, column: 5)
!718 = !DILocation(line: 870, column: 5, scope: !717)
!719 = !DILocalVariable(name: "url_program", scope: !665, file: !34, line: 874, type: !37)
!720 = !DILocation(line: 874, column: 15, scope: !665)
!721 = !DILocation(line: 874, column: 36, scope: !665)
!722 = !DILocation(line: 874, column: 29, scope: !665)
!723 = !DILocation(line: 874, column: 61, scope: !665)
!724 = !DILocation(line: 875, column: 11, scope: !665)
!725 = !DILocation(line: 876, column: 24, scope: !665)
!726 = !DILocation(line: 875, column: 3, scope: !665)
!727 = !DILocation(line: 877, column: 11, scope: !665)
!728 = !DILocation(line: 878, column: 11, scope: !665)
!729 = !DILocation(line: 878, column: 17, scope: !665)
!730 = !DILocation(line: 878, column: 25, scope: !665)
!731 = !DILocation(line: 878, column: 22, scope: !665)
!732 = !DILocation(line: 877, column: 3, scope: !665)
!733 = !DILocation(line: 879, column: 1, scope: !665)
!734 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 273, type: !735, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!735 = !DISubroutineType(types: !736)
!736 = !{!28, !28, !185}
!737 = !DILocalVariable(name: "argc", arg: 1, scope: !734, file: !3, line: 273, type: !28)
!738 = !DILocation(line: 273, column: 11, scope: !734)
!739 = !DILocalVariable(name: "argv", arg: 2, scope: !734, file: !3, line: 273, type: !185)
!740 = !DILocation(line: 273, column: 24, scope: !734)
!741 = !DILocalVariable(name: "have_tabval", scope: !734, file: !3, line: 275, type: !25)
!742 = !DILocation(line: 275, column: 8, scope: !734)
!743 = !DILocalVariable(name: "tabval", scope: !734, file: !3, line: 276, type: !163)
!744 = !DILocation(line: 276, column: 9, scope: !734)
!745 = !DILocalVariable(name: "c", scope: !734, file: !3, line: 277, type: !28)
!746 = !DILocation(line: 277, column: 7, scope: !734)
!747 = !DILocalVariable(name: "convert_first_only", scope: !734, file: !3, line: 281, type: !25)
!748 = !DILocation(line: 281, column: 8, scope: !734)
!749 = !DILocation(line: 284, column: 21, scope: !734)
!750 = !DILocation(line: 284, column: 3, scope: !734)
!751 = !DILocation(line: 285, column: 3, scope: !734)
!752 = !DILocation(line: 286, column: 3, scope: !734)
!753 = !DILocation(line: 287, column: 3, scope: !734)
!754 = !DILocation(line: 289, column: 3, scope: !734)
!755 = !DILocation(line: 291, column: 3, scope: !734)
!756 = !DILocation(line: 291, column: 28, scope: !734)
!757 = !DILocation(line: 291, column: 34, scope: !734)
!758 = !DILocation(line: 291, column: 15, scope: !734)
!759 = !DILocation(line: 291, column: 13, scope: !734)
!760 = !DILocation(line: 292, column: 10, scope: !734)
!761 = !DILocation(line: 294, column: 15, scope: !762)
!762 = distinct !DILexicalBlock(scope: !734, file: !3, line: 293, column: 5)
!763 = !DILocation(line: 294, column: 7, scope: !762)
!764 = !DILocation(line: 297, column: 11, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !3, line: 295, column: 9)
!766 = !DILocation(line: 299, column: 31, scope: !765)
!767 = !DILocation(line: 300, column: 11, scope: !765)
!768 = !DILocation(line: 302, column: 31, scope: !765)
!769 = !DILocation(line: 303, column: 28, scope: !765)
!770 = !DILocation(line: 303, column: 11, scope: !765)
!771 = !DILocation(line: 304, column: 11, scope: !765)
!772 = !DILocation(line: 306, column: 30, scope: !765)
!773 = !DILocation(line: 307, column: 11, scope: !765)
!774 = !DILocation(line: 309, column: 15, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !3, line: 309, column: 15)
!776 = !DILocation(line: 309, column: 15, scope: !765)
!777 = !DILocation(line: 310, column: 27, scope: !775)
!778 = !DILocation(line: 310, column: 13, scope: !775)
!779 = !DILocation(line: 311, column: 23, scope: !765)
!780 = !DILocation(line: 312, column: 11, scope: !765)
!781 = !DILocation(line: 313, column: 9, scope: !765)
!782 = !DILocation(line: 314, column: 9, scope: !765)
!783 = !DILocation(line: 316, column: 16, scope: !784)
!784 = distinct !DILexicalBlock(scope: !765, file: !3, line: 316, column: 15)
!785 = !DILocation(line: 316, column: 15, scope: !765)
!786 = !DILocation(line: 318, column: 22, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 317, column: 13)
!788 = !DILocation(line: 319, column: 27, scope: !787)
!789 = !DILocation(line: 320, column: 13, scope: !787)
!790 = !DILocation(line: 321, column: 16, scope: !791)
!791 = distinct !DILexicalBlock(scope: !765, file: !3, line: 321, column: 15)
!792 = !DILocation(line: 321, column: 15, scope: !765)
!793 = !DILocation(line: 322, column: 13, scope: !791)
!794 = !DILocation(line: 323, column: 11, scope: !765)
!795 = distinct !{!795, !755, !796, !549}
!796 = !DILocation(line: 325, column: 5, scope: !734)
!797 = !DILocation(line: 327, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !734, file: !3, line: 327, column: 7)
!799 = !DILocation(line: 327, column: 7, scope: !734)
!800 = !DILocation(line: 328, column: 25, scope: !798)
!801 = !DILocation(line: 328, column: 5, scope: !798)
!802 = !DILocation(line: 330, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !734, file: !3, line: 330, column: 7)
!804 = !DILocation(line: 330, column: 7, scope: !734)
!805 = !DILocation(line: 331, column: 19, scope: !803)
!806 = !DILocation(line: 331, column: 5, scope: !803)
!807 = !DILocation(line: 333, column: 3, scope: !734)
!808 = !DILocation(line: 335, column: 19, scope: !734)
!809 = !DILocation(line: 335, column: 28, scope: !734)
!810 = !DILocation(line: 335, column: 26, scope: !734)
!811 = !DILocation(line: 335, column: 18, scope: !734)
!812 = !DILocation(line: 335, column: 37, scope: !734)
!813 = !DILocation(line: 335, column: 42, scope: !734)
!814 = !DILocation(line: 335, column: 3, scope: !734)
!815 = !DILocation(line: 337, column: 3, scope: !734)
!816 = !DILocation(line: 339, column: 3, scope: !734)
!817 = !DILocation(line: 341, column: 10, scope: !734)
!818 = !DILocation(line: 341, column: 3, scope: !734)
!819 = !DILocalVariable(name: "fp", scope: !42, file: !3, line: 117, type: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !822, file: !101, line: 51, baseType: !28, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !822, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !822, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !822, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !822, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !822, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !822, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !822, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !822, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !822, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !822, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !822, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !822, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !822, file: !101, line: 70, baseType: !838, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !822, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !822, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !822, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !822, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !822, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !822, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !822, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !822, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !822, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !822, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !822, file: !101, line: 93, baseType: !838, size: 64, offset: 1344)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !822, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !822, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !822, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !822, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!854 = !DILocation(line: 117, column: 9, scope: !42)
!855 = !DILocation(line: 117, column: 14, scope: !42)
!856 = !DILocalVariable(name: "pending_blank", scope: !42, file: !3, line: 122, type: !22)
!857 = !DILocation(line: 122, column: 9, scope: !42)
!858 = !DILocation(line: 124, column: 8, scope: !859)
!859 = distinct !DILexicalBlock(scope: !42, file: !3, line: 124, column: 7)
!860 = !DILocation(line: 124, column: 7, scope: !42)
!861 = !DILocation(line: 125, column: 5, scope: !859)
!862 = !DILocalVariable(name: "mbbuf", scope: !42, file: !3, line: 128, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !864, line: 50, baseType: !865)
!864 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !864, line: 43, size: 320, elements: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !865, file: !864, line: 45, baseType: !22, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !865, file: !864, line: 46, baseType: !820, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !865, file: !864, line: 47, baseType: !155, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !865, file: !864, line: 48, baseType: !155, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !865, file: !864, line: 49, baseType: !155, size: 64, offset: 256)
!872 = !DILocation(line: 128, column: 11, scope: !42)
!873 = !DILocation(line: 129, column: 48, scope: !42)
!874 = !DILocation(line: 129, column: 3, scope: !42)
!875 = !DILocation(line: 134, column: 29, scope: !42)
!876 = !DILocation(line: 134, column: 46, scope: !42)
!877 = !DILocation(line: 134, column: 62, scope: !42)
!878 = !DILocation(line: 134, column: 19, scope: !42)
!879 = !DILocation(line: 134, column: 17, scope: !42)
!880 = !DILocation(line: 136, column: 3, scope: !42)
!881 = !DILocalVariable(name: "g", scope: !882, file: !3, line: 139, type: !883)
!882 = distinct !DILexicalBlock(scope: !42, file: !3, line: 137, column: 5)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !366, line: 143, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 138, size: 64, elements: !885)
!885 = !{!886, !891, !892}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !884, file: !366, line: 140, baseType: !887, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !888, line: 37, baseType: !889)
!888 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !124, line: 57, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !124, line: 42, baseType: !7)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !884, file: !366, line: 141, baseType: !327, size: 8, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !884, file: !366, line: 142, baseType: !327, size: 8, offset: 40)
!893 = !DILocation(line: 139, column: 14, scope: !882)
!894 = !DILocalVariable(name: "convert", scope: !882, file: !3, line: 142, type: !25)
!895 = !DILocation(line: 142, column: 12, scope: !882)
!896 = !DILocalVariable(name: "column", scope: !882, file: !3, line: 149, type: !163)
!897 = !DILocation(line: 149, column: 13, scope: !882)
!898 = !DILocalVariable(name: "next_tab_column", scope: !882, file: !3, line: 152, type: !163)
!899 = !DILocation(line: 152, column: 13, scope: !882)
!900 = !DILocalVariable(name: "tab_index", scope: !882, file: !3, line: 155, type: !155)
!901 = !DILocation(line: 155, column: 13, scope: !882)
!902 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !882, file: !3, line: 158, type: !25)
!903 = !DILocation(line: 158, column: 12, scope: !882)
!904 = !DILocalVariable(name: "prev_blank", scope: !882, file: !3, line: 163, type: !25)
!905 = !DILocation(line: 163, column: 12, scope: !882)
!906 = !DILocalVariable(name: "pending", scope: !882, file: !3, line: 166, type: !155)
!907 = !DILocation(line: 166, column: 13, scope: !882)
!908 = !DILocation(line: 171, column: 7, scope: !882)
!909 = !DILocation(line: 173, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !882, file: !3, line: 172, column: 9)
!911 = !DILocation(line: 173, column: 23, scope: !910)
!912 = !DILocation(line: 173, column: 21, scope: !910)
!913 = !DILocation(line: 173, column: 48, scope: !910)
!914 = !DILocation(line: 173, column: 51, scope: !910)
!915 = !DILocation(line: 174, column: 18, scope: !910)
!916 = !DILocation(line: 174, column: 38, scope: !910)
!917 = !DILocation(line: 174, column: 27, scope: !910)
!918 = !DILocation(line: 174, column: 25, scope: !910)
!919 = !DILocation(line: 0, scope: !910)
!920 = !DILocation(line: 175, column: 58, scope: !910)
!921 = !DILocation(line: 175, column: 13, scope: !910)
!922 = distinct !{!922, !909, !923, !549}
!923 = !DILocation(line: 175, column: 60, scope: !910)
!924 = !DILocation(line: 177, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !910, file: !3, line: 177, column: 15)
!926 = !DILocation(line: 177, column: 15, scope: !910)
!927 = !DILocalVariable(name: "blank", scope: !928, file: !3, line: 179, type: !25)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 178, column: 13)
!929 = !DILocation(line: 179, column: 20, scope: !928)
!930 = !DILocation(line: 179, column: 40, scope: !928)
!931 = !DILocation(line: 179, column: 28, scope: !928)
!932 = !DILocation(line: 181, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 181, column: 19)
!934 = !DILocation(line: 181, column: 19, scope: !928)
!935 = !DILocalVariable(name: "last_tab", scope: !936, file: !3, line: 183, type: !25)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 182, column: 17)
!937 = !DILocation(line: 183, column: 24, scope: !936)
!938 = !DILocation(line: 185, column: 58, scope: !936)
!939 = !DILocation(line: 185, column: 37, scope: !936)
!940 = !DILocation(line: 185, column: 35, scope: !936)
!941 = !DILocation(line: 188, column: 23, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !3, line: 188, column: 23)
!943 = !DILocation(line: 188, column: 23, scope: !936)
!944 = !DILocation(line: 189, column: 29, scope: !942)
!945 = !DILocation(line: 189, column: 21, scope: !942)
!946 = !DILocation(line: 191, column: 23, scope: !947)
!947 = distinct !DILexicalBlock(scope: !936, file: !3, line: 191, column: 23)
!948 = !DILocation(line: 191, column: 23, scope: !936)
!949 = !DILocation(line: 193, column: 29, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 193, column: 27)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 192, column: 21)
!952 = !DILocation(line: 193, column: 32, scope: !950)
!953 = !DILocation(line: 193, column: 27, scope: !951)
!954 = !DILocation(line: 195, column: 36, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !3, line: 194, column: 25)
!956 = !DILocation(line: 195, column: 34, scope: !955)
!957 = !DILocation(line: 197, column: 31, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 197, column: 31)
!959 = !DILocation(line: 197, column: 31, scope: !955)
!960 = !DILocation(line: 198, column: 29, scope: !958)
!961 = !DILocation(line: 198, column: 46, scope: !958)
!962 = !DILocation(line: 199, column: 25, scope: !955)
!963 = !DILocation(line: 202, column: 49, scope: !964)
!964 = distinct !DILexicalBlock(scope: !950, file: !3, line: 201, column: 25)
!965 = !DILocation(line: 202, column: 37, scope: !964)
!966 = !DILocation(line: 202, column: 34, scope: !964)
!967 = !DILocation(line: 204, column: 34, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !3, line: 204, column: 31)
!969 = !DILocation(line: 204, column: 45, scope: !968)
!970 = !DILocation(line: 204, column: 48, scope: !968)
!971 = !DILocation(line: 204, column: 58, scope: !968)
!972 = !DILocation(line: 204, column: 55, scope: !968)
!973 = !DILocation(line: 204, column: 31, scope: !964)
!974 = !DILocation(line: 208, column: 35, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 208, column: 35)
!976 = distinct !DILexicalBlock(scope: !968, file: !3, line: 205, column: 29)
!977 = !DILocation(line: 208, column: 45, scope: !975)
!978 = !DILocation(line: 208, column: 42, scope: !975)
!979 = !DILocation(line: 208, column: 35, scope: !976)
!980 = !DILocation(line: 209, column: 59, scope: !975)
!981 = !DILocation(line: 209, column: 33, scope: !975)
!982 = !DILocation(line: 210, column: 39, scope: !976)
!983 = !DILocation(line: 210, column: 55, scope: !976)
!984 = !DILocation(line: 210, column: 53, scope: !976)
!985 = !DILocation(line: 211, column: 39, scope: !976)
!986 = !DILocation(line: 211, column: 72, scope: !976)
!987 = !DILocation(line: 211, column: 70, scope: !976)
!988 = !DILocation(line: 210, column: 31, scope: !976)
!989 = !DILocation(line: 212, column: 44, scope: !976)
!990 = !DILocation(line: 212, column: 42, scope: !976)
!991 = !DILocation(line: 212, column: 39, scope: !976)
!992 = !DILocation(line: 213, column: 42, scope: !976)
!993 = !DILocation(line: 214, column: 31, scope: !976)
!994 = !DILocation(line: 218, column: 29, scope: !964)
!995 = !DILocation(line: 218, column: 33, scope: !964)
!996 = !DILocation(line: 219, column: 31, scope: !997)
!997 = distinct !DILexicalBlock(scope: !964, file: !3, line: 219, column: 31)
!998 = !DILocation(line: 219, column: 51, scope: !997)
!999 = !DILocation(line: 219, column: 31, scope: !964)
!1000 = !DILocation(line: 220, column: 29, scope: !997)
!1001 = !DILocation(line: 221, column: 27, scope: !964)
!1002 = !DILocation(line: 221, column: 44, scope: !964)
!1003 = !DILocation(line: 226, column: 33, scope: !951)
!1004 = !DILocation(line: 226, column: 31, scope: !951)
!1005 = !DILocation(line: 227, column: 21, scope: !951)
!1006 = !DILocation(line: 228, column: 17, scope: !936)
!1007 = !DILocation(line: 229, column: 26, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !933, file: !3, line: 229, column: 24)
!1009 = !DILocation(line: 229, column: 29, scope: !1008)
!1010 = !DILocation(line: 229, column: 24, scope: !933)
!1011 = !DILocation(line: 233, column: 31, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 230, column: 17)
!1013 = !DILocation(line: 233, column: 30, scope: !1012)
!1014 = !DILocation(line: 233, column: 29, scope: !1012)
!1015 = !DILocation(line: 233, column: 26, scope: !1012)
!1016 = !DILocation(line: 234, column: 37, scope: !1012)
!1017 = !DILocation(line: 234, column: 35, scope: !1012)
!1018 = !DILocation(line: 235, column: 34, scope: !1012)
!1019 = !DILocation(line: 235, column: 33, scope: !1012)
!1020 = !DILocation(line: 235, column: 32, scope: !1012)
!1021 = !DILocation(line: 235, column: 29, scope: !1012)
!1022 = !DILocation(line: 236, column: 17, scope: !1012)
!1023 = !DILocalVariable(name: "width", scope: !1024, file: !3, line: 239, type: !28)
!1024 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 238, column: 17)
!1025 = !DILocation(line: 239, column: 23, scope: !1024)
!1026 = !DILocation(line: 239, column: 43, scope: !1024)
!1027 = !DILocation(line: 239, column: 31, scope: !1024)
!1028 = !DILocation(line: 240, column: 23, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 240, column: 23)
!1030 = !DILocation(line: 240, column: 23, scope: !1024)
!1031 = !DILocation(line: 241, column: 21, scope: !1029)
!1032 = !DILocation(line: 244, column: 19, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !928, file: !3, line: 244, column: 19)
!1034 = !DILocation(line: 244, column: 19, scope: !928)
!1035 = !DILocation(line: 246, column: 23, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 246, column: 23)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 245, column: 17)
!1038 = !DILocation(line: 246, column: 31, scope: !1036)
!1039 = !DILocation(line: 246, column: 35, scope: !1036)
!1040 = !DILocation(line: 246, column: 38, scope: !1036)
!1041 = !DILocation(line: 246, column: 23, scope: !1037)
!1042 = !DILocation(line: 247, column: 21, scope: !1036)
!1043 = !DILocation(line: 247, column: 38, scope: !1036)
!1044 = !DILocation(line: 248, column: 23, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 248, column: 23)
!1046 = !DILocation(line: 248, column: 69, scope: !1045)
!1047 = !DILocation(line: 248, column: 66, scope: !1045)
!1048 = !DILocation(line: 248, column: 23, scope: !1037)
!1049 = !DILocation(line: 249, column: 21, scope: !1045)
!1050 = !DILocation(line: 250, column: 27, scope: !1037)
!1051 = !DILocation(line: 251, column: 45, scope: !1037)
!1052 = !DILocation(line: 252, column: 17, scope: !1037)
!1053 = !DILocation(line: 254, column: 28, scope: !928)
!1054 = !DILocation(line: 254, column: 26, scope: !928)
!1055 = !DILocation(line: 255, column: 26, scope: !928)
!1056 = !DILocation(line: 255, column: 46, scope: !928)
!1057 = !DILocation(line: 255, column: 49, scope: !928)
!1058 = !DILocation(line: 255, column: 23, scope: !928)
!1059 = !DILocation(line: 256, column: 13, scope: !928)
!1060 = !DILocation(line: 258, column: 17, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !910, file: !3, line: 258, column: 15)
!1062 = !DILocation(line: 258, column: 20, scope: !1061)
!1063 = !DILocation(line: 258, column: 15, scope: !910)
!1064 = !DILocation(line: 260, column: 21, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 259, column: 13)
!1066 = !DILocation(line: 260, column: 15, scope: !1065)
!1067 = !DILocation(line: 261, column: 15, scope: !1065)
!1068 = !DILocation(line: 264, column: 11, scope: !910)
!1069 = !DILocation(line: 265, column: 15, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !910, file: !3, line: 265, column: 15)
!1071 = !DILocation(line: 265, column: 15, scope: !910)
!1072 = !DILocation(line: 266, column: 13, scope: !1070)
!1073 = !DILocation(line: 267, column: 9, scope: !910)
!1074 = !DILocation(line: 268, column: 16, scope: !882)
!1075 = !DILocation(line: 268, column: 19, scope: !882)
!1076 = distinct !{!1076, !908, !1077, !549}
!1077 = !DILocation(line: 268, column: 26, scope: !882)
!1078 = distinct !{!1078, !880, !1079}
!1079 = !DILocation(line: 269, column: 5, scope: !42)
!1080 = !DILocation(line: 270, column: 1, scope: !42)
!1081 = distinct !DISubprogram(name: "c32issep", scope: !34, file: !34, line: 178, type: !1082, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!25, !887}
!1084 = !DILocalVariable(name: "wc", arg: 1, scope: !1081, file: !34, line: 178, type: !887)
!1085 = !DILocation(line: 178, column: 20, scope: !1081)
!1086 = !DILocation(line: 181, column: 25, scope: !1081)
!1087 = !DILocation(line: 181, column: 13, scope: !1081)
!1088 = !DILocation(line: 181, column: 11, scope: !1081)
!1089 = !DILocation(line: 181, column: 10, scope: !1081)
!1090 = !DILocation(line: 181, column: 3, scope: !1081)
!1091 = distinct !DISubprogram(name: "write_error", scope: !34, file: !34, line: 946, type: !43, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!1092 = !DILocalVariable(name: "saved_errno", scope: !1091, file: !34, line: 948, type: !28)
!1093 = !DILocation(line: 948, column: 7, scope: !1091)
!1094 = !DILocation(line: 948, column: 21, scope: !1091)
!1095 = !DILocation(line: 949, column: 3, scope: !1091)
!1096 = !DILocation(line: 950, column: 11, scope: !1091)
!1097 = !DILocation(line: 950, column: 3, scope: !1091)
!1098 = !DILocation(line: 951, column: 3, scope: !1091)
!1099 = !DILocation(line: 952, column: 3, scope: !1091)
!1100 = distinct !DISubprogram(name: "add_tab_stop", scope: !63, file: !63, line: 84, type: !1101, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !163}
!1103 = !DILocalVariable(name: "tabval", arg: 1, scope: !1100, file: !63, line: 84, type: !163)
!1104 = !DILocation(line: 84, column: 21, scope: !1100)
!1105 = !DILocalVariable(name: "prev_column", scope: !1100, file: !63, line: 86, type: !163)
!1106 = !DILocation(line: 86, column: 9, scope: !1100)
!1107 = !DILocation(line: 86, column: 23, scope: !1100)
!1108 = !DILocation(line: 86, column: 40, scope: !1100)
!1109 = !DILocation(line: 86, column: 49, scope: !1100)
!1110 = !DILocation(line: 86, column: 64, scope: !1100)
!1111 = !DILocalVariable(name: "column_width", scope: !1100, file: !63, line: 87, type: !163)
!1112 = !DILocation(line: 87, column: 9, scope: !1100)
!1113 = !DILocation(line: 87, column: 24, scope: !1100)
!1114 = !DILocation(line: 87, column: 39, scope: !1100)
!1115 = !DILocation(line: 87, column: 36, scope: !1100)
!1116 = !DILocation(line: 87, column: 48, scope: !1100)
!1117 = !DILocation(line: 87, column: 57, scope: !1100)
!1118 = !DILocation(line: 87, column: 55, scope: !1100)
!1119 = !DILocation(line: 89, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1100, file: !63, line: 89, column: 7)
!1121 = !DILocation(line: 89, column: 25, scope: !1120)
!1122 = !DILocation(line: 89, column: 22, scope: !1120)
!1123 = !DILocation(line: 89, column: 7, scope: !1100)
!1124 = !DILocation(line: 90, column: 25, scope: !1120)
!1125 = !DILocation(line: 90, column: 16, scope: !1120)
!1126 = !DILocation(line: 90, column: 14, scope: !1120)
!1127 = !DILocation(line: 90, column: 5, scope: !1120)
!1128 = !DILocation(line: 91, column: 32, scope: !1100)
!1129 = !DILocation(line: 91, column: 3, scope: !1100)
!1130 = !DILocation(line: 91, column: 26, scope: !1100)
!1131 = !DILocation(line: 91, column: 30, scope: !1100)
!1132 = !DILocation(line: 93, column: 25, scope: !1100)
!1133 = !DILocation(line: 93, column: 3, scope: !1100)
!1134 = !DILocation(line: 94, column: 1, scope: !1100)
!1135 = distinct !DISubprogram(name: "set_max_column_width", scope: !63, file: !63, line: 73, type: !1101, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1136 = !DILocalVariable(name: "width", arg: 1, scope: !1135, file: !63, line: 73, type: !163)
!1137 = !DILocation(line: 73, column: 29, scope: !1135)
!1138 = !DILocation(line: 75, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !63, line: 75, column: 7)
!1140 = !DILocation(line: 75, column: 26, scope: !1139)
!1141 = !DILocation(line: 75, column: 24, scope: !1139)
!1142 = !DILocation(line: 75, column: 7, scope: !1135)
!1143 = !DILocation(line: 77, column: 11, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !63, line: 77, column: 11)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !63, line: 76, column: 5)
!1146 = !DILocation(line: 77, column: 11, scope: !1145)
!1147 = !DILocation(line: 78, column: 9, scope: !1144)
!1148 = !DILocation(line: 79, column: 5, scope: !1145)
!1149 = !DILocation(line: 80, column: 1, scope: !1135)
!1150 = distinct !DISubprogram(name: "parse_tab_stops", scope: !63, file: !63, line: 137, type: !666, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1151 = !DILocalVariable(name: "stops", arg: 1, scope: !1150, file: !63, line: 137, type: !37)
!1152 = !DILocation(line: 137, column: 30, scope: !1150)
!1153 = !DILocalVariable(name: "have_tabval", scope: !1150, file: !63, line: 139, type: !25)
!1154 = !DILocation(line: 139, column: 8, scope: !1150)
!1155 = !DILocalVariable(name: "tabval", scope: !1150, file: !63, line: 140, type: !163)
!1156 = !DILocation(line: 140, column: 9, scope: !1150)
!1157 = !DILocalVariable(name: "extend_tabval", scope: !1150, file: !63, line: 141, type: !25)
!1158 = !DILocation(line: 141, column: 8, scope: !1150)
!1159 = !DILocalVariable(name: "increment_tabval", scope: !1150, file: !63, line: 142, type: !25)
!1160 = !DILocation(line: 142, column: 8, scope: !1150)
!1161 = !DILocalVariable(name: "num_start", scope: !1150, file: !63, line: 143, type: !37)
!1162 = !DILocation(line: 143, column: 15, scope: !1150)
!1163 = !DILocalVariable(name: "ok", scope: !1150, file: !63, line: 144, type: !25)
!1164 = !DILocation(line: 144, column: 8, scope: !1150)
!1165 = !DILocation(line: 146, column: 3, scope: !1150)
!1166 = !DILocation(line: 146, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !63, line: 146, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1150, file: !63, line: 146, column: 3)
!1169 = !DILocation(line: 146, column: 10, scope: !1167)
!1170 = !DILocation(line: 146, column: 3, scope: !1168)
!1171 = !DILocation(line: 148, column: 12, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !63, line: 148, column: 11)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !63, line: 147, column: 5)
!1174 = !DILocation(line: 148, column: 11, scope: !1172)
!1175 = !DILocation(line: 148, column: 18, scope: !1172)
!1176 = !DILocation(line: 148, column: 25, scope: !1172)
!1177 = !DILocation(line: 148, column: 28, scope: !1172)
!1178 = !DILocation(line: 148, column: 11, scope: !1173)
!1179 = !DILocation(line: 150, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !63, line: 150, column: 15)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !63, line: 149, column: 9)
!1182 = !DILocation(line: 150, column: 15, scope: !1181)
!1183 = !DILocation(line: 152, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !63, line: 152, column: 19)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !63, line: 151, column: 13)
!1186 = !DILocation(line: 152, column: 19, scope: !1185)
!1187 = !DILocation(line: 154, column: 42, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !63, line: 154, column: 23)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !63, line: 153, column: 17)
!1190 = !DILocation(line: 154, column: 25, scope: !1188)
!1191 = !DILocation(line: 154, column: 23, scope: !1189)
!1192 = !DILocation(line: 156, column: 26, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !63, line: 155, column: 21)
!1194 = !DILocation(line: 157, column: 23, scope: !1193)
!1195 = !DILocation(line: 159, column: 17, scope: !1189)
!1196 = !DILocation(line: 160, column: 24, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1184, file: !63, line: 160, column: 24)
!1198 = !DILocation(line: 160, column: 24, scope: !1184)
!1199 = !DILocation(line: 162, column: 45, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !63, line: 162, column: 23)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !63, line: 161, column: 17)
!1202 = !DILocation(line: 162, column: 25, scope: !1200)
!1203 = !DILocation(line: 162, column: 23, scope: !1201)
!1204 = !DILocation(line: 164, column: 26, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !63, line: 163, column: 21)
!1206 = !DILocation(line: 165, column: 23, scope: !1205)
!1207 = !DILocation(line: 167, column: 17, scope: !1201)
!1208 = !DILocation(line: 169, column: 31, scope: !1197)
!1209 = !DILocation(line: 169, column: 17, scope: !1197)
!1210 = !DILocation(line: 170, column: 13, scope: !1185)
!1211 = !DILocation(line: 171, column: 23, scope: !1181)
!1212 = !DILocation(line: 172, column: 9, scope: !1181)
!1213 = !DILocation(line: 173, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1172, file: !63, line: 173, column: 16)
!1215 = !DILocation(line: 173, column: 16, scope: !1214)
!1216 = !DILocation(line: 173, column: 23, scope: !1214)
!1217 = !DILocation(line: 173, column: 16, scope: !1172)
!1218 = !DILocation(line: 175, column: 15, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !63, line: 175, column: 15)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !63, line: 174, column: 9)
!1221 = !DILocation(line: 175, column: 15, scope: !1220)
!1222 = !DILocation(line: 177, column: 15, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !63, line: 176, column: 13)
!1224 = !DILocation(line: 179, column: 18, scope: !1223)
!1225 = !DILocation(line: 180, column: 13, scope: !1223)
!1226 = !DILocation(line: 181, column: 25, scope: !1220)
!1227 = !DILocation(line: 182, column: 28, scope: !1220)
!1228 = !DILocation(line: 183, column: 9, scope: !1220)
!1229 = !DILocation(line: 184, column: 17, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1214, file: !63, line: 184, column: 16)
!1231 = !DILocation(line: 184, column: 16, scope: !1230)
!1232 = !DILocation(line: 184, column: 23, scope: !1230)
!1233 = !DILocation(line: 184, column: 16, scope: !1214)
!1234 = !DILocation(line: 186, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !63, line: 186, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !63, line: 185, column: 9)
!1237 = !DILocation(line: 186, column: 15, scope: !1236)
!1238 = !DILocation(line: 188, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !63, line: 187, column: 13)
!1240 = !DILocation(line: 190, column: 18, scope: !1239)
!1241 = !DILocation(line: 191, column: 13, scope: !1239)
!1242 = !DILocation(line: 192, column: 28, scope: !1236)
!1243 = !DILocation(line: 193, column: 25, scope: !1236)
!1244 = !DILocation(line: 194, column: 9, scope: !1236)
!1245 = !DILocation(line: 195, column: 28, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1230, file: !63, line: 195, column: 16)
!1247 = !DILocation(line: 195, column: 27, scope: !1246)
!1248 = !DILocation(line: 195, column: 16, scope: !1246)
!1249 = !DILocation(line: 195, column: 16, scope: !1230)
!1250 = !DILocation(line: 197, column: 16, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !63, line: 197, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 196, column: 9)
!1253 = !DILocation(line: 197, column: 15, scope: !1252)
!1254 = !DILocation(line: 199, column: 22, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !63, line: 198, column: 13)
!1256 = !DILocation(line: 200, column: 27, scope: !1255)
!1257 = !DILocation(line: 201, column: 27, scope: !1255)
!1258 = !DILocation(line: 201, column: 25, scope: !1255)
!1259 = !DILocation(line: 202, column: 13, scope: !1255)
!1260 = !DILocation(line: 205, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !63, line: 205, column: 15)
!1262 = !DILocation(line: 205, column: 15, scope: !1252)
!1263 = !DILocalVariable(name: "len", scope: !1264, file: !63, line: 207, type: !155)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !63, line: 206, column: 13)
!1265 = !DILocation(line: 207, column: 21, scope: !1264)
!1266 = !DILocation(line: 207, column: 35, scope: !1264)
!1267 = !DILocation(line: 207, column: 27, scope: !1264)
!1268 = !DILocalVariable(name: "bad_num", scope: !1264, file: !63, line: 208, type: !22)
!1269 = !DILocation(line: 208, column: 21, scope: !1264)
!1270 = !DILocation(line: 208, column: 42, scope: !1264)
!1271 = !DILocation(line: 208, column: 53, scope: !1264)
!1272 = !DILocation(line: 208, column: 31, scope: !1264)
!1273 = !DILocation(line: 209, column: 15, scope: !1264)
!1274 = !DILocation(line: 210, column: 21, scope: !1264)
!1275 = !DILocation(line: 210, column: 15, scope: !1264)
!1276 = !DILocation(line: 211, column: 18, scope: !1264)
!1277 = !DILocation(line: 212, column: 23, scope: !1264)
!1278 = !DILocation(line: 212, column: 35, scope: !1264)
!1279 = !DILocation(line: 212, column: 33, scope: !1264)
!1280 = !DILocation(line: 212, column: 39, scope: !1264)
!1281 = !DILocation(line: 212, column: 21, scope: !1264)
!1282 = !DILocation(line: 213, column: 13, scope: !1264)
!1283 = !DILocation(line: 214, column: 9, scope: !1252)
!1284 = !DILocation(line: 217, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 216, column: 9)
!1286 = !DILocation(line: 219, column: 14, scope: !1285)
!1287 = !DILocation(line: 220, column: 11, scope: !1285)
!1288 = !DILocation(line: 222, column: 5, scope: !1173)
!1289 = !DILocation(line: 146, column: 23, scope: !1167)
!1290 = !DILocation(line: 146, column: 3, scope: !1167)
!1291 = distinct !{!1291, !1170, !1292, !549}
!1292 = !DILocation(line: 222, column: 5, scope: !1168)
!1293 = !DILocation(line: 224, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1150, file: !63, line: 224, column: 7)
!1295 = !DILocation(line: 224, column: 10, scope: !1294)
!1296 = !DILocation(line: 224, column: 13, scope: !1294)
!1297 = !DILocation(line: 224, column: 7, scope: !1150)
!1298 = !DILocation(line: 226, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !63, line: 226, column: 11)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !63, line: 225, column: 5)
!1301 = !DILocation(line: 226, column: 11, scope: !1300)
!1302 = !DILocation(line: 227, column: 32, scope: !1299)
!1303 = !DILocation(line: 227, column: 15, scope: !1299)
!1304 = !DILocation(line: 227, column: 12, scope: !1299)
!1305 = !DILocation(line: 227, column: 9, scope: !1299)
!1306 = !DILocation(line: 228, column: 16, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !63, line: 228, column: 16)
!1308 = !DILocation(line: 228, column: 16, scope: !1299)
!1309 = !DILocation(line: 229, column: 35, scope: !1307)
!1310 = !DILocation(line: 229, column: 15, scope: !1307)
!1311 = !DILocation(line: 229, column: 12, scope: !1307)
!1312 = !DILocation(line: 229, column: 9, scope: !1307)
!1313 = !DILocation(line: 231, column: 23, scope: !1307)
!1314 = !DILocation(line: 231, column: 9, scope: !1307)
!1315 = !DILocation(line: 232, column: 5, scope: !1300)
!1316 = !DILocation(line: 234, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1150, file: !63, line: 234, column: 7)
!1318 = !DILocation(line: 234, column: 7, scope: !1150)
!1319 = !DILocation(line: 235, column: 5, scope: !1317)
!1320 = !DILocation(line: 236, column: 1, scope: !1150)
!1321 = distinct !DISubprogram(name: "to_uchar", scope: !34, file: !34, line: 153, type: !1322, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!327, !23}
!1324 = !DILocalVariable(name: "ch", arg: 1, scope: !1321, file: !34, line: 153, type: !23)
!1325 = !DILocation(line: 153, column: 44, scope: !1321)
!1326 = !DILocation(line: 153, column: 57, scope: !1321)
!1327 = !DILocation(line: 153, column: 50, scope: !1321)
!1328 = distinct !DISubprogram(name: "set_extend_size", scope: !63, file: !63, line: 97, type: !1329, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!25, !163}
!1331 = !DILocalVariable(name: "tabval", arg: 1, scope: !1328, file: !63, line: 97, type: !163)
!1332 = !DILocation(line: 97, column: 24, scope: !1328)
!1333 = !DILocalVariable(name: "ok", scope: !1328, file: !63, line: 99, type: !25)
!1334 = !DILocation(line: 99, column: 8, scope: !1328)
!1335 = !DILocation(line: 101, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !63, line: 101, column: 7)
!1337 = !DILocation(line: 101, column: 7, scope: !1328)
!1338 = !DILocation(line: 103, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !63, line: 102, column: 5)
!1340 = !DILocation(line: 106, column: 10, scope: !1339)
!1341 = !DILocation(line: 107, column: 5, scope: !1339)
!1342 = !DILocation(line: 108, column: 17, scope: !1328)
!1343 = !DILocation(line: 108, column: 15, scope: !1328)
!1344 = !DILocation(line: 110, column: 25, scope: !1328)
!1345 = !DILocation(line: 110, column: 3, scope: !1328)
!1346 = !DILocation(line: 112, column: 10, scope: !1328)
!1347 = !DILocation(line: 112, column: 3, scope: !1328)
!1348 = distinct !DISubprogram(name: "set_increment_size", scope: !63, file: !63, line: 116, type: !1329, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1349 = !DILocalVariable(name: "tabval", arg: 1, scope: !1348, file: !63, line: 116, type: !163)
!1350 = !DILocation(line: 116, column: 27, scope: !1348)
!1351 = !DILocalVariable(name: "ok", scope: !1348, file: !63, line: 118, type: !25)
!1352 = !DILocation(line: 118, column: 8, scope: !1348)
!1353 = !DILocation(line: 120, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !63, line: 120, column: 7)
!1355 = !DILocation(line: 120, column: 7, scope: !1348)
!1356 = !DILocation(line: 122, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !63, line: 121, column: 5)
!1358 = !DILocation(line: 125, column: 10, scope: !1357)
!1359 = !DILocation(line: 126, column: 5, scope: !1357)
!1360 = !DILocation(line: 127, column: 20, scope: !1348)
!1361 = !DILocation(line: 127, column: 18, scope: !1348)
!1362 = !DILocation(line: 129, column: 25, scope: !1348)
!1363 = !DILocation(line: 129, column: 3, scope: !1348)
!1364 = !DILocation(line: 131, column: 10, scope: !1348)
!1365 = !DILocation(line: 131, column: 3, scope: !1348)
!1366 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !63, file: !63, line: 268, type: !43, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1367 = !DILocation(line: 270, column: 23, scope: !1366)
!1368 = !DILocation(line: 270, column: 33, scope: !1366)
!1369 = !DILocation(line: 270, column: 3, scope: !1366)
!1370 = !DILocation(line: 272, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !63, line: 272, column: 7)
!1372 = !DILocation(line: 272, column: 22, scope: !1371)
!1373 = !DILocation(line: 272, column: 7, scope: !1366)
!1374 = !DILocation(line: 273, column: 35, scope: !1371)
!1375 = !DILocation(line: 274, column: 37, scope: !1371)
!1376 = !DILocation(line: 274, column: 51, scope: !1371)
!1377 = !DILocation(line: 275, column: 53, scope: !1371)
!1378 = !DILocation(line: 273, column: 33, scope: !1371)
!1379 = !DILocation(line: 273, column: 14, scope: !1371)
!1380 = !DILocation(line: 273, column: 5, scope: !1371)
!1381 = !DILocation(line: 276, column: 12, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !63, line: 276, column: 12)
!1383 = !DILocation(line: 276, column: 27, scope: !1382)
!1384 = !DILocation(line: 276, column: 32, scope: !1382)
!1385 = !DILocation(line: 276, column: 37, scope: !1382)
!1386 = !DILocation(line: 276, column: 49, scope: !1382)
!1387 = !DILocation(line: 276, column: 54, scope: !1382)
!1388 = !DILocation(line: 276, column: 12, scope: !1371)
!1389 = !DILocation(line: 277, column: 16, scope: !1382)
!1390 = !DILocation(line: 277, column: 14, scope: !1382)
!1391 = !DILocation(line: 277, column: 5, scope: !1382)
!1392 = !DILocation(line: 279, column: 14, scope: !1382)
!1393 = !DILocation(line: 280, column: 1, scope: !1366)
!1394 = distinct !DISubprogram(name: "validate_tab_stops", scope: !63, file: !63, line: 242, type: !1395, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1397, !155}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!1399 = !DILocalVariable(name: "tabs", arg: 1, scope: !1394, file: !63, line: 242, type: !1397)
!1400 = !DILocation(line: 242, column: 34, scope: !1394)
!1401 = !DILocalVariable(name: "entries", arg: 2, scope: !1394, file: !63, line: 242, type: !155)
!1402 = !DILocation(line: 242, column: 46, scope: !1394)
!1403 = !DILocalVariable(name: "prev_tab", scope: !1394, file: !63, line: 244, type: !163)
!1404 = !DILocation(line: 244, column: 9, scope: !1394)
!1405 = !DILocalVariable(name: "i", scope: !1406, file: !63, line: 246, type: !155)
!1406 = distinct !DILexicalBlock(scope: !1394, file: !63, line: 246, column: 3)
!1407 = !DILocation(line: 246, column: 14, scope: !1406)
!1408 = !DILocation(line: 246, column: 8, scope: !1406)
!1409 = !DILocation(line: 246, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !63, line: 246, column: 3)
!1411 = !DILocation(line: 246, column: 25, scope: !1410)
!1412 = !DILocation(line: 246, column: 23, scope: !1410)
!1413 = !DILocation(line: 246, column: 3, scope: !1406)
!1414 = !DILocation(line: 248, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !63, line: 248, column: 11)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !63, line: 247, column: 5)
!1417 = !DILocation(line: 248, column: 16, scope: !1415)
!1418 = !DILocation(line: 248, column: 19, scope: !1415)
!1419 = !DILocation(line: 248, column: 11, scope: !1416)
!1420 = !DILocation(line: 249, column: 9, scope: !1415)
!1421 = !DILocation(line: 250, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !63, line: 250, column: 11)
!1423 = !DILocation(line: 250, column: 16, scope: !1422)
!1424 = !DILocation(line: 250, column: 22, scope: !1422)
!1425 = !DILocation(line: 250, column: 19, scope: !1422)
!1426 = !DILocation(line: 250, column: 11, scope: !1416)
!1427 = !DILocation(line: 251, column: 9, scope: !1422)
!1428 = !DILocation(line: 252, column: 18, scope: !1416)
!1429 = !DILocation(line: 252, column: 23, scope: !1416)
!1430 = !DILocation(line: 252, column: 16, scope: !1416)
!1431 = !DILocation(line: 253, column: 5, scope: !1416)
!1432 = !DILocation(line: 246, column: 35, scope: !1410)
!1433 = !DILocation(line: 246, column: 3, scope: !1410)
!1434 = distinct !{!1434, !1413, !1435, !549}
!1435 = !DILocation(line: 253, column: 5, scope: !1406)
!1436 = !DILocation(line: 255, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1394, file: !63, line: 255, column: 7)
!1438 = !DILocation(line: 255, column: 22, scope: !1437)
!1439 = !DILocation(line: 255, column: 25, scope: !1437)
!1440 = !DILocation(line: 255, column: 7, scope: !1394)
!1441 = !DILocation(line: 256, column: 5, scope: !1437)
!1442 = !DILocation(line: 257, column: 1, scope: !1394)
!1443 = distinct !DISubprogram(name: "get_next_tab_column", scope: !63, file: !63, line: 288, type: !1444, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!163, !163, !405, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1447 = !DILocalVariable(name: "column", arg: 1, scope: !1443, file: !63, line: 288, type: !163)
!1448 = !DILocation(line: 288, column: 28, scope: !1443)
!1449 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1443, file: !63, line: 288, type: !405)
!1450 = !DILocation(line: 288, column: 43, scope: !1443)
!1451 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1443, file: !63, line: 288, type: !1446)
!1452 = !DILocation(line: 288, column: 60, scope: !1443)
!1453 = !DILocation(line: 290, column: 4, scope: !1443)
!1454 = !DILocation(line: 290, column: 13, scope: !1443)
!1455 = !DILocalVariable(name: "tab_distance", scope: !1443, file: !63, line: 291, type: !163)
!1456 = !DILocation(line: 291, column: 9, scope: !1443)
!1457 = !DILocation(line: 294, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1443, file: !63, line: 294, column: 7)
!1459 = !DILocation(line: 294, column: 7, scope: !1443)
!1460 = !DILocation(line: 295, column: 20, scope: !1458)
!1461 = !DILocation(line: 295, column: 31, scope: !1458)
!1462 = !DILocation(line: 295, column: 40, scope: !1458)
!1463 = !DILocation(line: 295, column: 38, scope: !1458)
!1464 = !DILocation(line: 295, column: 29, scope: !1458)
!1465 = !DILocation(line: 295, column: 18, scope: !1458)
!1466 = !DILocation(line: 295, column: 5, scope: !1458)
!1467 = !DILocation(line: 300, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !63, line: 297, column: 5)
!1469 = !DILocation(line: 300, column: 16, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !63, line: 300, column: 7)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !63, line: 300, column: 7)
!1472 = !DILocation(line: 300, column: 15, scope: !1470)
!1473 = !DILocation(line: 300, column: 28, scope: !1470)
!1474 = !DILocation(line: 300, column: 26, scope: !1470)
!1475 = !DILocation(line: 300, column: 7, scope: !1471)
!1476 = !DILocalVariable(name: "tab", scope: !1477, file: !63, line: 302, type: !163)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !63, line: 301, column: 9)
!1478 = !DILocation(line: 302, column: 17, scope: !1477)
!1479 = !DILocation(line: 302, column: 23, scope: !1477)
!1480 = !DILocation(line: 302, column: 33, scope: !1477)
!1481 = !DILocation(line: 302, column: 32, scope: !1477)
!1482 = !DILocation(line: 303, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !63, line: 303, column: 15)
!1484 = !DILocation(line: 303, column: 24, scope: !1483)
!1485 = !DILocation(line: 303, column: 22, scope: !1483)
!1486 = !DILocation(line: 303, column: 15, scope: !1477)
!1487 = !DILocation(line: 304, column: 20, scope: !1483)
!1488 = !DILocation(line: 304, column: 13, scope: !1483)
!1489 = !DILocation(line: 305, column: 9, scope: !1477)
!1490 = !DILocation(line: 300, column: 47, scope: !1470)
!1491 = !DILocation(line: 300, column: 57, scope: !1470)
!1492 = !DILocation(line: 300, column: 7, scope: !1470)
!1493 = distinct !{!1493, !1475, !1494, !549}
!1494 = !DILocation(line: 305, column: 9, scope: !1471)
!1495 = !DILocation(line: 308, column: 11, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1468, file: !63, line: 308, column: 11)
!1497 = !DILocation(line: 308, column: 11, scope: !1468)
!1498 = !DILocation(line: 309, column: 24, scope: !1496)
!1499 = !DILocation(line: 309, column: 38, scope: !1496)
!1500 = !DILocation(line: 309, column: 47, scope: !1496)
!1501 = !DILocation(line: 309, column: 45, scope: !1496)
!1502 = !DILocation(line: 309, column: 36, scope: !1496)
!1503 = !DILocation(line: 309, column: 22, scope: !1496)
!1504 = !DILocation(line: 309, column: 9, scope: !1496)
!1505 = !DILocation(line: 310, column: 16, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1496, file: !63, line: 310, column: 16)
!1507 = !DILocation(line: 310, column: 16, scope: !1496)
!1508 = !DILocalVariable(name: "end_tab", scope: !1509, file: !63, line: 314, type: !163)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !63, line: 311, column: 9)
!1510 = !DILocation(line: 314, column: 17, scope: !1509)
!1511 = !DILocation(line: 314, column: 27, scope: !1509)
!1512 = !DILocation(line: 314, column: 36, scope: !1509)
!1513 = !DILocation(line: 314, column: 51, scope: !1509)
!1514 = !DILocation(line: 315, column: 26, scope: !1509)
!1515 = !DILocation(line: 315, column: 45, scope: !1509)
!1516 = !DILocation(line: 315, column: 54, scope: !1509)
!1517 = !DILocation(line: 315, column: 52, scope: !1509)
!1518 = !DILocation(line: 315, column: 65, scope: !1509)
!1519 = !DILocation(line: 315, column: 63, scope: !1509)
!1520 = !DILocation(line: 315, column: 41, scope: !1509)
!1521 = !DILocation(line: 315, column: 24, scope: !1509)
!1522 = !DILocation(line: 316, column: 9, scope: !1509)
!1523 = !DILocation(line: 319, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1506, file: !63, line: 318, column: 9)
!1525 = !DILocation(line: 319, column: 21, scope: !1524)
!1526 = !DILocation(line: 320, column: 24, scope: !1524)
!1527 = !DILocalVariable(name: "tab_stop", scope: !1443, file: !63, line: 324, type: !163)
!1528 = !DILocation(line: 324, column: 9, scope: !1443)
!1529 = !DILocation(line: 325, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1443, file: !63, line: 325, column: 7)
!1531 = !DILocation(line: 325, column: 7, scope: !1443)
!1532 = !DILocation(line: 326, column: 5, scope: !1530)
!1533 = !DILocation(line: 327, column: 10, scope: !1443)
!1534 = !DILocation(line: 327, column: 3, scope: !1443)
!1535 = !DILocation(line: 328, column: 1, scope: !1443)
!1536 = distinct !DISubprogram(name: "set_file_list", scope: !63, file: !63, line: 333, type: !1537, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !185}
!1539 = !DILocalVariable(name: "list", arg: 1, scope: !1536, file: !63, line: 333, type: !185)
!1540 = !DILocation(line: 333, column: 23, scope: !1536)
!1541 = !DILocation(line: 335, column: 19, scope: !1536)
!1542 = !DILocation(line: 337, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !63, line: 337, column: 7)
!1544 = !DILocation(line: 337, column: 7, scope: !1536)
!1545 = !DILocation(line: 338, column: 15, scope: !1543)
!1546 = !DILocation(line: 338, column: 5, scope: !1543)
!1547 = !DILocation(line: 340, column: 17, scope: !1543)
!1548 = !DILocation(line: 340, column: 15, scope: !1543)
!1549 = !DILocation(line: 341, column: 1, scope: !1536)
!1550 = !DILocalVariable(name: "fp", arg: 1, scope: !94, file: !63, line: 349, type: !97)
!1551 = !DILocation(line: 349, column: 18, scope: !94)
!1552 = !DILocalVariable(name: "file", scope: !94, file: !63, line: 352, type: !22)
!1553 = !DILocation(line: 352, column: 9, scope: !94)
!1554 = !DILocation(line: 354, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !94, file: !63, line: 354, column: 7)
!1556 = !DILocation(line: 354, column: 7, scope: !94)
!1557 = !DILocalVariable(name: "err", scope: !1558, file: !63, line: 356, type: !28)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !63, line: 355, column: 5)
!1559 = !DILocation(line: 356, column: 11, scope: !1558)
!1560 = !DILocation(line: 356, column: 17, scope: !1558)
!1561 = !DILocation(line: 357, column: 12, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !63, line: 357, column: 11)
!1563 = !DILocation(line: 357, column: 11, scope: !1558)
!1564 = !DILocation(line: 358, column: 13, scope: !1562)
!1565 = !DILocation(line: 358, column: 9, scope: !1562)
!1566 = !DILocation(line: 359, column: 18, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1558, file: !63, line: 359, column: 11)
!1568 = !DILocation(line: 359, column: 11, scope: !1567)
!1569 = !DILocation(line: 359, column: 11, scope: !1558)
!1570 = !DILocation(line: 360, column: 9, scope: !1567)
!1571 = !DILocation(line: 361, column: 24, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !63, line: 361, column: 16)
!1573 = !DILocation(line: 361, column: 16, scope: !1572)
!1574 = !DILocation(line: 361, column: 28, scope: !1572)
!1575 = !DILocation(line: 361, column: 16, scope: !1567)
!1576 = !DILocation(line: 362, column: 15, scope: !1572)
!1577 = !DILocation(line: 362, column: 13, scope: !1572)
!1578 = !DILocation(line: 362, column: 9, scope: !1572)
!1579 = !DILocation(line: 363, column: 11, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1558, file: !63, line: 363, column: 11)
!1581 = !DILocation(line: 363, column: 11, scope: !1558)
!1582 = !DILocation(line: 365, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !63, line: 364, column: 9)
!1584 = !DILocation(line: 366, column: 23, scope: !1583)
!1585 = !DILocation(line: 367, column: 9, scope: !1583)
!1586 = !DILocation(line: 368, column: 5, scope: !1558)
!1587 = !DILocation(line: 370, column: 3, scope: !94)
!1588 = !DILocation(line: 370, column: 28, scope: !94)
!1589 = !DILocation(line: 370, column: 18, scope: !94)
!1590 = !DILocation(line: 370, column: 16, scope: !94)
!1591 = !DILocation(line: 370, column: 32, scope: !94)
!1592 = !DILocation(line: 372, column: 18, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !63, line: 372, column: 11)
!1594 = distinct !DILexicalBlock(scope: !94, file: !63, line: 371, column: 5)
!1595 = !DILocation(line: 372, column: 11, scope: !1593)
!1596 = !DILocation(line: 372, column: 11, scope: !1594)
!1597 = !DILocation(line: 374, column: 27, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !63, line: 373, column: 9)
!1599 = !DILocation(line: 375, column: 16, scope: !1598)
!1600 = !DILocation(line: 375, column: 14, scope: !1598)
!1601 = !DILocation(line: 376, column: 9, scope: !1598)
!1602 = !DILocation(line: 378, column: 21, scope: !1593)
!1603 = !DILocation(line: 378, column: 14, scope: !1593)
!1604 = !DILocation(line: 378, column: 12, scope: !1593)
!1605 = !DILocation(line: 379, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1594, file: !63, line: 379, column: 11)
!1607 = !DILocation(line: 379, column: 11, scope: !1594)
!1608 = !DILocation(line: 381, column: 23, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !63, line: 380, column: 9)
!1610 = !DILocation(line: 381, column: 21, scope: !1609)
!1611 = !DILocation(line: 382, column: 20, scope: !1609)
!1612 = !DILocation(line: 382, column: 11, scope: !1609)
!1613 = !DILocation(line: 383, column: 18, scope: !1609)
!1614 = !DILocation(line: 383, column: 11, scope: !1609)
!1615 = !DILocation(line: 385, column: 7, scope: !1594)
!1616 = !DILocation(line: 386, column: 19, scope: !1594)
!1617 = distinct !{!1617, !1587, !1618, !549}
!1618 = !DILocation(line: 387, column: 5, scope: !94)
!1619 = !DILocation(line: 388, column: 3, scope: !94)
!1620 = !DILocation(line: 389, column: 1, scope: !94)
!1621 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !63, file: !63, line: 393, type: !43, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1622 = !DILocation(line: 395, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !63, line: 395, column: 9)
!1624 = !DILocation(line: 395, column: 25, scope: !1623)
!1625 = !DILocation(line: 395, column: 36, scope: !1623)
!1626 = !DILocation(line: 395, column: 28, scope: !1623)
!1627 = !DILocation(line: 395, column: 43, scope: !1623)
!1628 = !DILocation(line: 395, column: 9, scope: !1621)
!1629 = !DILocation(line: 396, column: 7, scope: !1623)
!1630 = !DILocation(line: 397, column: 1, scope: !1621)
!1631 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !63, file: !63, line: 402, type: !666, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !39)
!1632 = !DILocalVariable(name: "program", arg: 1, scope: !1631, file: !63, line: 402, type: !37)
!1633 = !DILocation(line: 402, column: 33, scope: !1631)
!1634 = !DILocation(line: 405, column: 11, scope: !1631)
!1635 = !DILocation(line: 405, column: 20, scope: !1631)
!1636 = !DILocation(line: 405, column: 3, scope: !1631)
!1637 = !DILocation(line: 409, column: 3, scope: !1631)
!1638 = !DILocation(line: 416, column: 1, scope: !1631)
!1639 = !DILocalVariable(name: "program", arg: 1, scope: !188, file: !34, line: 573, type: !37)
!1640 = !DILocation(line: 573, column: 34, scope: !188)
!1641 = !DILocalVariable(name: "option", arg: 2, scope: !188, file: !34, line: 573, type: !37)
!1642 = !DILocation(line: 573, column: 55, scope: !188)
!1643 = !DILocation(line: 581, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !188, file: !34, line: 581, column: 7)
!1645 = !DILocation(line: 581, column: 19, scope: !1644)
!1646 = !DILocation(line: 581, column: 7, scope: !188)
!1647 = !DILocalVariable(name: "term", scope: !1648, file: !34, line: 585, type: !37)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !34, line: 582, column: 5)
!1649 = !DILocation(line: 585, column: 19, scope: !1648)
!1650 = !DILocation(line: 585, column: 26, scope: !1648)
!1651 = !DILocation(line: 586, column: 23, scope: !1648)
!1652 = !DILocation(line: 586, column: 28, scope: !1648)
!1653 = !DILocation(line: 586, column: 33, scope: !1648)
!1654 = !DILocation(line: 586, column: 32, scope: !1648)
!1655 = !DILocation(line: 586, column: 38, scope: !1648)
!1656 = !DILocation(line: 586, column: 48, scope: !1648)
!1657 = !DILocation(line: 586, column: 41, scope: !1648)
!1658 = !DILocation(line: 586, column: 19, scope: !1648)
!1659 = !DILocation(line: 587, column: 5, scope: !1648)
!1660 = !DILocation(line: 588, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !188, file: !34, line: 588, column: 7)
!1662 = !DILocation(line: 588, column: 7, scope: !188)
!1663 = !DILocation(line: 590, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !34, line: 589, column: 5)
!1665 = !DILocation(line: 591, column: 7, scope: !1664)
!1666 = !DILocalVariable(name: "double_space", scope: !188, file: !34, line: 594, type: !25)
!1667 = !DILocation(line: 594, column: 8, scope: !188)
!1668 = !DILocalVariable(name: "first_word", scope: !188, file: !34, line: 595, type: !37)
!1669 = !DILocation(line: 595, column: 15, scope: !188)
!1670 = !DILocation(line: 595, column: 28, scope: !188)
!1671 = !DILocation(line: 595, column: 45, scope: !188)
!1672 = !DILocation(line: 595, column: 37, scope: !188)
!1673 = !DILocation(line: 595, column: 35, scope: !188)
!1674 = !DILocalVariable(name: "option_text", scope: !188, file: !34, line: 596, type: !37)
!1675 = !DILocation(line: 596, column: 15, scope: !188)
!1676 = !DILocation(line: 596, column: 37, scope: !188)
!1677 = !DILocation(line: 596, column: 29, scope: !188)
!1678 = !DILocation(line: 597, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !188, file: !34, line: 597, column: 7)
!1680 = !DILocation(line: 597, column: 7, scope: !188)
!1681 = !DILocation(line: 599, column: 21, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !34, line: 598, column: 5)
!1683 = !DILocation(line: 599, column: 19, scope: !1682)
!1684 = !DILocation(line: 602, column: 20, scope: !1682)
!1685 = !DILocation(line: 603, column: 5, scope: !1682)
!1686 = !DILocation(line: 604, column: 12, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1679, file: !34, line: 604, column: 12)
!1688 = !DILocation(line: 604, column: 27, scope: !1687)
!1689 = !DILocation(line: 604, column: 24, scope: !1687)
!1690 = !DILocation(line: 604, column: 12, scope: !1679)
!1691 = !DILocalVariable(name: "s", scope: !1692, file: !34, line: 608, type: !37)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !34, line: 605, column: 5)
!1693 = !DILocation(line: 608, column: 19, scope: !1692)
!1694 = !DILocation(line: 608, column: 23, scope: !1692)
!1695 = !DILocalVariable(name: "spaces", scope: !1692, file: !34, line: 609, type: !146)
!1696 = !DILocation(line: 609, column: 14, scope: !1692)
!1697 = !DILocation(line: 610, column: 7, scope: !1692)
!1698 = !DILocation(line: 610, column: 14, scope: !1692)
!1699 = !DILocation(line: 610, column: 18, scope: !1692)
!1700 = !DILocation(line: 610, column: 16, scope: !1692)
!1701 = !DILocation(line: 610, column: 30, scope: !1692)
!1702 = !DILocation(line: 610, column: 33, scope: !1692)
!1703 = !DILocation(line: 610, column: 40, scope: !1692)
!1704 = !DILocation(line: 0, scope: !1692)
!1705 = !DILocation(line: 611, column: 21, scope: !1692)
!1706 = !DILocation(line: 611, column: 20, scope: !1692)
!1707 = !DILocation(line: 611, column: 19, scope: !1692)
!1708 = !DILocation(line: 611, column: 16, scope: !1692)
!1709 = distinct !{!1709, !1697, !1705, !549}
!1710 = !DILocation(line: 612, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1692, file: !34, line: 612, column: 11)
!1712 = !DILocation(line: 612, column: 18, scope: !1711)
!1713 = !DILocation(line: 612, column: 11, scope: !1692)
!1714 = !DILocation(line: 615, column: 25, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !34, line: 613, column: 9)
!1716 = !DILocation(line: 615, column: 23, scope: !1715)
!1717 = !DILocation(line: 616, column: 24, scope: !1715)
!1718 = !DILocation(line: 617, column: 9, scope: !1715)
!1719 = !DILocation(line: 618, column: 5, scope: !1692)
!1720 = !DILocalVariable(name: "anchor_len", scope: !188, file: !34, line: 620, type: !146)
!1721 = !DILocation(line: 620, column: 10, scope: !188)
!1722 = !DILocation(line: 620, column: 32, scope: !188)
!1723 = !DILocation(line: 620, column: 23, scope: !188)
!1724 = !DILocalVariable(name: "desc_text", scope: !188, file: !34, line: 625, type: !37)
!1725 = !DILocation(line: 625, column: 15, scope: !188)
!1726 = !DILocation(line: 625, column: 27, scope: !188)
!1727 = !DILocation(line: 625, column: 41, scope: !188)
!1728 = !DILocation(line: 625, column: 39, scope: !188)
!1729 = !DILocation(line: 626, column: 3, scope: !188)
!1730 = !DILocation(line: 626, column: 11, scope: !188)
!1731 = !DILocation(line: 626, column: 10, scope: !188)
!1732 = !DILocation(line: 626, column: 21, scope: !188)
!1733 = !DILocation(line: 626, column: 25, scope: !188)
!1734 = !DILocation(line: 626, column: 24, scope: !188)
!1735 = !DILocation(line: 626, column: 35, scope: !188)
!1736 = !DILocation(line: 0, scope: !188)
!1737 = !DILocation(line: 628, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !34, line: 628, column: 11)
!1739 = distinct !DILexicalBlock(scope: !188, file: !34, line: 627, column: 5)
!1740 = !DILocation(line: 628, column: 11, scope: !1738)
!1741 = !DILocation(line: 628, column: 22, scope: !1738)
!1742 = !DILocation(line: 628, column: 29, scope: !1738)
!1743 = !DILocation(line: 628, column: 34, scope: !1738)
!1744 = !DILocation(line: 628, column: 44, scope: !1738)
!1745 = !DILocation(line: 628, column: 32, scope: !1738)
!1746 = !DILocation(line: 628, column: 49, scope: !1738)
!1747 = !DILocation(line: 628, column: 11, scope: !1739)
!1748 = !DILocation(line: 629, column: 22, scope: !1738)
!1749 = !DILocation(line: 629, column: 9, scope: !1738)
!1750 = !DILocation(line: 630, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !34, line: 630, column: 11)
!1752 = !DILocation(line: 630, column: 11, scope: !1739)
!1753 = !DILocation(line: 632, column: 16, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !34, line: 632, column: 15)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !34, line: 631, column: 9)
!1756 = !DILocation(line: 632, column: 15, scope: !1754)
!1757 = !DILocation(line: 632, column: 26, scope: !1754)
!1758 = !DILocation(line: 632, column: 34, scope: !1754)
!1759 = !DILocation(line: 632, column: 37, scope: !1754)
!1760 = !DILocation(line: 632, column: 15, scope: !1755)
!1761 = !DILocation(line: 633, column: 13, scope: !1754)
!1762 = !DILocation(line: 636, column: 16, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1755, file: !34, line: 636, column: 15)
!1764 = !DILocation(line: 636, column: 29, scope: !1763)
!1765 = !DILocation(line: 636, column: 34, scope: !1763)
!1766 = !DILocation(line: 636, column: 44, scope: !1763)
!1767 = !DILocation(line: 636, column: 32, scope: !1763)
!1768 = !DILocation(line: 636, column: 49, scope: !1763)
!1769 = !DILocation(line: 636, column: 15, scope: !1755)
!1770 = !DILocation(line: 637, column: 13, scope: !1763)
!1771 = !DILocation(line: 638, column: 9, scope: !1755)
!1772 = !DILocation(line: 640, column: 16, scope: !1739)
!1773 = distinct !{!1773, !1729, !1774, !549}
!1774 = !DILocation(line: 641, column: 5, scope: !188)
!1775 = !DILocation(line: 644, column: 3, scope: !188)
!1776 = !DILocalVariable(name: "url_program", scope: !188, file: !34, line: 648, type: !37)
!1777 = !DILocation(line: 648, column: 15, scope: !188)
!1778 = !DILocation(line: 648, column: 38, scope: !188)
!1779 = !DILocation(line: 648, column: 31, scope: !188)
!1780 = !DILocation(line: 649, column: 38, scope: !188)
!1781 = !DILocation(line: 649, column: 31, scope: !188)
!1782 = !DILocation(line: 650, column: 38, scope: !188)
!1783 = !DILocation(line: 650, column: 31, scope: !188)
!1784 = !DILocation(line: 651, column: 38, scope: !188)
!1785 = !DILocation(line: 651, column: 31, scope: !188)
!1786 = !DILocation(line: 652, column: 38, scope: !188)
!1787 = !DILocation(line: 652, column: 31, scope: !188)
!1788 = !DILocation(line: 653, column: 38, scope: !188)
!1789 = !DILocation(line: 653, column: 31, scope: !188)
!1790 = !DILocation(line: 654, column: 38, scope: !188)
!1791 = !DILocation(line: 654, column: 31, scope: !188)
!1792 = !DILocation(line: 655, column: 38, scope: !188)
!1793 = !DILocation(line: 655, column: 31, scope: !188)
!1794 = !DILocation(line: 656, column: 38, scope: !188)
!1795 = !DILocation(line: 656, column: 31, scope: !188)
!1796 = !DILocation(line: 657, column: 38, scope: !188)
!1797 = !DILocation(line: 657, column: 31, scope: !188)
!1798 = !DILocation(line: 658, column: 31, scope: !188)
!1799 = !DILocation(line: 663, column: 7, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !188, file: !34, line: 663, column: 7)
!1801 = !DILocation(line: 664, column: 7, scope: !1800)
!1802 = !DILocation(line: 664, column: 10, scope: !1800)
!1803 = !DILocation(line: 663, column: 7, scope: !188)
!1804 = !DILocation(line: 670, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !34, line: 665, column: 5)
!1806 = !DILocation(line: 670, column: 28, scope: !1805)
!1807 = !DILocation(line: 670, column: 47, scope: !1805)
!1808 = !DILocation(line: 670, column: 41, scope: !1805)
!1809 = !DILocation(line: 670, column: 59, scope: !1805)
!1810 = !DILocation(line: 669, column: 7, scope: !1805)
!1811 = !DILocation(line: 671, column: 5, scope: !1805)
!1812 = !DILocation(line: 676, column: 48, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1800, file: !34, line: 673, column: 5)
!1814 = !DILocation(line: 677, column: 21, scope: !1813)
!1815 = !DILocation(line: 677, column: 15, scope: !1813)
!1816 = !DILocation(line: 677, column: 33, scope: !1813)
!1817 = !DILocation(line: 676, column: 7, scope: !1813)
!1818 = !DILocation(line: 679, column: 3, scope: !188)
!1819 = !DILocation(line: 683, column: 3, scope: !188)
!1820 = !DILocation(line: 686, column: 3, scope: !188)
!1821 = !DILocation(line: 688, column: 3, scope: !188)
!1822 = !DILocation(line: 691, column: 3, scope: !188)
!1823 = !DILocation(line: 695, column: 3, scope: !188)
!1824 = !DILocation(line: 696, column: 1, scope: !188)
!1825 = distinct !DISubprogram(name: "c_isalnum", scope: !1826, file: !1826, line: 169, type: !1827, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1826 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!25, !28}
!1829 = !DILocalVariable(name: "c", arg: 1, scope: !1825, file: !1826, line: 169, type: !28)
!1830 = !DILocation(line: 169, column: 16, scope: !1825)
!1831 = !DILocation(line: 171, column: 11, scope: !1825)
!1832 = !DILocation(line: 171, column: 3, scope: !1825)
!1833 = !DILocation(line: 176, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1825, file: !1826, line: 172, column: 5)
!1835 = !DILocation(line: 178, column: 7, scope: !1834)
!1836 = !DILocation(line: 180, column: 1, scope: !1825)
!1837 = distinct !DISubprogram(name: "c_isalpha", scope: !1826, file: !1826, line: 183, type: !1827, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1838 = !DILocalVariable(name: "c", arg: 1, scope: !1837, file: !1826, line: 183, type: !28)
!1839 = !DILocation(line: 183, column: 16, scope: !1837)
!1840 = !DILocation(line: 185, column: 11, scope: !1837)
!1841 = !DILocation(line: 185, column: 3, scope: !1837)
!1842 = !DILocation(line: 189, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !1826, line: 186, column: 5)
!1844 = !DILocation(line: 191, column: 7, scope: !1843)
!1845 = !DILocation(line: 193, column: 1, scope: !1837)
!1846 = distinct !DISubprogram(name: "c_isascii", scope: !1826, file: !1826, line: 198, type: !1827, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1847 = !DILocalVariable(name: "c", arg: 1, scope: !1846, file: !1826, line: 198, type: !28)
!1848 = !DILocation(line: 198, column: 16, scope: !1846)
!1849 = !DILocation(line: 200, column: 11, scope: !1846)
!1850 = !DILocation(line: 200, column: 3, scope: !1846)
!1851 = !DILocation(line: 208, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !1826, line: 201, column: 5)
!1853 = !DILocation(line: 210, column: 7, scope: !1852)
!1854 = !DILocation(line: 212, column: 1, scope: !1846)
!1855 = distinct !DISubprogram(name: "c_isblank", scope: !1826, file: !1826, line: 215, type: !1827, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1856 = !DILocalVariable(name: "c", arg: 1, scope: !1855, file: !1826, line: 215, type: !28)
!1857 = !DILocation(line: 215, column: 16, scope: !1855)
!1858 = !DILocation(line: 217, column: 10, scope: !1855)
!1859 = !DILocation(line: 217, column: 12, scope: !1855)
!1860 = !DILocation(line: 217, column: 19, scope: !1855)
!1861 = !DILocation(line: 217, column: 22, scope: !1855)
!1862 = !DILocation(line: 217, column: 24, scope: !1855)
!1863 = !DILocation(line: 217, column: 3, scope: !1855)
!1864 = distinct !DISubprogram(name: "c_iscntrl", scope: !1826, file: !1826, line: 221, type: !1827, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1865 = !DILocalVariable(name: "c", arg: 1, scope: !1864, file: !1826, line: 221, type: !28)
!1866 = !DILocation(line: 221, column: 16, scope: !1864)
!1867 = !DILocation(line: 223, column: 11, scope: !1864)
!1868 = !DILocation(line: 223, column: 3, scope: !1864)
!1869 = !DILocation(line: 226, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !1826, line: 224, column: 5)
!1871 = !DILocation(line: 228, column: 7, scope: !1870)
!1872 = !DILocation(line: 230, column: 1, scope: !1864)
!1873 = distinct !DISubprogram(name: "c_isdigit", scope: !1826, file: !1826, line: 233, type: !1827, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1874 = !DILocalVariable(name: "c", arg: 1, scope: !1873, file: !1826, line: 233, type: !28)
!1875 = !DILocation(line: 233, column: 16, scope: !1873)
!1876 = !DILocation(line: 235, column: 11, scope: !1873)
!1877 = !DILocation(line: 235, column: 3, scope: !1873)
!1878 = !DILocation(line: 238, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !1826, line: 236, column: 5)
!1880 = !DILocation(line: 240, column: 7, scope: !1879)
!1881 = !DILocation(line: 242, column: 1, scope: !1873)
!1882 = distinct !DISubprogram(name: "c_isgraph", scope: !1826, file: !1826, line: 245, type: !1827, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1883 = !DILocalVariable(name: "c", arg: 1, scope: !1882, file: !1826, line: 245, type: !28)
!1884 = !DILocation(line: 245, column: 16, scope: !1882)
!1885 = !DILocation(line: 247, column: 11, scope: !1882)
!1886 = !DILocation(line: 247, column: 3, scope: !1882)
!1887 = !DILocation(line: 253, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !1826, line: 248, column: 5)
!1889 = !DILocation(line: 255, column: 7, scope: !1888)
!1890 = !DILocation(line: 257, column: 1, scope: !1882)
!1891 = distinct !DISubprogram(name: "c_islower", scope: !1826, file: !1826, line: 260, type: !1827, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1892 = !DILocalVariable(name: "c", arg: 1, scope: !1891, file: !1826, line: 260, type: !28)
!1893 = !DILocation(line: 260, column: 16, scope: !1891)
!1894 = !DILocation(line: 262, column: 11, scope: !1891)
!1895 = !DILocation(line: 262, column: 3, scope: !1891)
!1896 = !DILocation(line: 265, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !1826, line: 263, column: 5)
!1898 = !DILocation(line: 267, column: 7, scope: !1897)
!1899 = !DILocation(line: 269, column: 1, scope: !1891)
!1900 = distinct !DISubprogram(name: "c_isprint", scope: !1826, file: !1826, line: 272, type: !1827, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1901 = !DILocalVariable(name: "c", arg: 1, scope: !1900, file: !1826, line: 272, type: !28)
!1902 = !DILocation(line: 272, column: 16, scope: !1900)
!1903 = !DILocation(line: 274, column: 11, scope: !1900)
!1904 = !DILocation(line: 274, column: 3, scope: !1900)
!1905 = !DILocation(line: 281, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1900, file: !1826, line: 275, column: 5)
!1907 = !DILocation(line: 283, column: 7, scope: !1906)
!1908 = !DILocation(line: 285, column: 1, scope: !1900)
!1909 = distinct !DISubprogram(name: "c_ispunct", scope: !1826, file: !1826, line: 288, type: !1827, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1910 = !DILocalVariable(name: "c", arg: 1, scope: !1909, file: !1826, line: 288, type: !28)
!1911 = !DILocation(line: 288, column: 16, scope: !1909)
!1912 = !DILocation(line: 290, column: 11, scope: !1909)
!1913 = !DILocation(line: 290, column: 3, scope: !1909)
!1914 = !DILocation(line: 293, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !1826, line: 291, column: 5)
!1916 = !DILocation(line: 295, column: 7, scope: !1915)
!1917 = !DILocation(line: 297, column: 1, scope: !1909)
!1918 = distinct !DISubprogram(name: "c_isspace", scope: !1826, file: !1826, line: 300, type: !1827, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1919 = !DILocalVariable(name: "c", arg: 1, scope: !1918, file: !1826, line: 300, type: !28)
!1920 = !DILocation(line: 300, column: 16, scope: !1918)
!1921 = !DILocation(line: 302, column: 11, scope: !1918)
!1922 = !DILocation(line: 302, column: 3, scope: !1918)
!1923 = !DILocation(line: 305, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !1826, line: 303, column: 5)
!1925 = !DILocation(line: 307, column: 7, scope: !1924)
!1926 = !DILocation(line: 309, column: 1, scope: !1918)
!1927 = distinct !DISubprogram(name: "c_isupper", scope: !1826, file: !1826, line: 312, type: !1827, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1928 = !DILocalVariable(name: "c", arg: 1, scope: !1927, file: !1826, line: 312, type: !28)
!1929 = !DILocation(line: 312, column: 16, scope: !1927)
!1930 = !DILocation(line: 314, column: 11, scope: !1927)
!1931 = !DILocation(line: 314, column: 3, scope: !1927)
!1932 = !DILocation(line: 317, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !1826, line: 315, column: 5)
!1934 = !DILocation(line: 319, column: 7, scope: !1933)
!1935 = !DILocation(line: 321, column: 1, scope: !1927)
!1936 = distinct !DISubprogram(name: "c_isxdigit", scope: !1826, file: !1826, line: 324, type: !1827, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1937 = !DILocalVariable(name: "c", arg: 1, scope: !1936, file: !1826, line: 324, type: !28)
!1938 = !DILocation(line: 324, column: 17, scope: !1936)
!1939 = !DILocation(line: 326, column: 11, scope: !1936)
!1940 = !DILocation(line: 326, column: 3, scope: !1936)
!1941 = !DILocation(line: 330, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !1826, line: 327, column: 5)
!1943 = !DILocation(line: 332, column: 7, scope: !1942)
!1944 = !DILocation(line: 334, column: 1, scope: !1936)
!1945 = distinct !DISubprogram(name: "c_tolower", scope: !1826, file: !1826, line: 337, type: !1946, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!28, !28}
!1948 = !DILocalVariable(name: "c", arg: 1, scope: !1945, file: !1826, line: 337, type: !28)
!1949 = !DILocation(line: 337, column: 16, scope: !1945)
!1950 = !DILocation(line: 339, column: 11, scope: !1945)
!1951 = !DILocation(line: 339, column: 3, scope: !1945)
!1952 = !DILocation(line: 342, column: 14, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !1826, line: 340, column: 5)
!1954 = !DILocation(line: 342, column: 16, scope: !1953)
!1955 = !DILocation(line: 342, column: 22, scope: !1953)
!1956 = !DILocation(line: 342, column: 7, scope: !1953)
!1957 = !DILocation(line: 344, column: 14, scope: !1953)
!1958 = !DILocation(line: 344, column: 7, scope: !1953)
!1959 = !DILocation(line: 346, column: 1, scope: !1945)
!1960 = distinct !DISubprogram(name: "c_toupper", scope: !1826, file: !1826, line: 349, type: !1946, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !343, retainedNodes: !39)
!1961 = !DILocalVariable(name: "c", arg: 1, scope: !1960, file: !1826, line: 349, type: !28)
!1962 = !DILocation(line: 349, column: 16, scope: !1960)
!1963 = !DILocation(line: 351, column: 11, scope: !1960)
!1964 = !DILocation(line: 351, column: 3, scope: !1960)
!1965 = !DILocation(line: 354, column: 14, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !1826, line: 352, column: 5)
!1967 = !DILocation(line: 354, column: 16, scope: !1966)
!1968 = !DILocation(line: 354, column: 22, scope: !1966)
!1969 = !DILocation(line: 354, column: 7, scope: !1966)
!1970 = !DILocation(line: 356, column: 14, scope: !1966)
!1971 = !DILocation(line: 356, column: 7, scope: !1966)
!1972 = !DILocation(line: 358, column: 1, scope: !1960)
!1973 = distinct !DISubprogram(name: "c32isblank", scope: !1974, file: !1974, line: 41, type: !1975, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !345, retainedNodes: !39)
!1974 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!28, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1978, line: 20, baseType: !7)
!1978 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1979 = !DILocalVariable(name: "wc", arg: 1, scope: !1973, file: !1974, line: 41, type: !1977)
!1980 = !DILocation(line: 41, column: 14, scope: !1973)
!1981 = !DILocation(line: 66, column: 22, scope: !1973)
!1982 = !DILocation(line: 66, column: 10, scope: !1973)
!1983 = !DILocation(line: 66, column: 3, scope: !1973)
!1984 = distinct !DISubprogram(name: "c32width", scope: !348, file: !348, line: 47, type: !1985, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !347, retainedNodes: !39)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!28, !887}
!1987 = !DILocalVariable(name: "wc", arg: 1, scope: !1984, file: !348, line: 47, type: !887)
!1988 = !DILocation(line: 47, column: 20, scope: !1984)
!1989 = !DILocation(line: 67, column: 19, scope: !1984)
!1990 = !DILocation(line: 67, column: 10, scope: !1984)
!1991 = !DILocation(line: 67, column: 3, scope: !1984)
!1992 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !197, file: !197, line: 50, type: !666, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !39)
!1993 = !DILocalVariable(name: "file", arg: 1, scope: !1992, file: !197, line: 50, type: !37)
!1994 = !DILocation(line: 50, column: 41, scope: !1992)
!1995 = !DILocation(line: 52, column: 15, scope: !1992)
!1996 = !DILocation(line: 52, column: 13, scope: !1992)
!1997 = !DILocation(line: 53, column: 1, scope: !1992)
!1998 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !197, file: !197, line: 87, type: !1999, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !39)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !25}
!2001 = !DILocalVariable(name: "ignore", arg: 1, scope: !1998, file: !197, line: 87, type: !25)
!2002 = !DILocation(line: 87, column: 37, scope: !1998)
!2003 = !DILocation(line: 89, column: 18, scope: !1998)
!2004 = !DILocation(line: 89, column: 16, scope: !1998)
!2005 = !DILocation(line: 90, column: 1, scope: !1998)
!2006 = distinct !DISubprogram(name: "close_stdout", scope: !197, file: !197, line: 116, type: !43, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !39)
!2007 = !DILocation(line: 118, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2006, file: !197, line: 118, column: 7)
!2009 = !DILocation(line: 118, column: 7, scope: !2008)
!2010 = !DILocation(line: 118, column: 29, scope: !2008)
!2011 = !DILocation(line: 119, column: 7, scope: !2008)
!2012 = !DILocation(line: 119, column: 12, scope: !2008)
!2013 = !DILocation(line: 119, column: 25, scope: !2008)
!2014 = !DILocation(line: 119, column: 28, scope: !2008)
!2015 = !DILocation(line: 119, column: 34, scope: !2008)
!2016 = !DILocation(line: 118, column: 7, scope: !2006)
!2017 = !DILocalVariable(name: "write_error", scope: !2018, file: !197, line: 121, type: !37)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !197, line: 120, column: 5)
!2019 = !DILocation(line: 121, column: 19, scope: !2018)
!2020 = !DILocation(line: 121, column: 33, scope: !2018)
!2021 = !DILocation(line: 122, column: 11, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !197, line: 122, column: 11)
!2023 = !DILocation(line: 122, column: 11, scope: !2018)
!2024 = !DILocation(line: 123, column: 9, scope: !2022)
!2025 = !DILocation(line: 126, column: 9, scope: !2022)
!2026 = !DILocation(line: 128, column: 14, scope: !2018)
!2027 = !DILocation(line: 128, column: 7, scope: !2018)
!2028 = !DILocation(line: 133, column: 42, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2006, file: !197, line: 133, column: 7)
!2030 = !DILocation(line: 133, column: 28, scope: !2029)
!2031 = !DILocation(line: 133, column: 50, scope: !2029)
!2032 = !DILocation(line: 133, column: 7, scope: !2006)
!2033 = !DILocation(line: 134, column: 12, scope: !2029)
!2034 = !DILocation(line: 134, column: 5, scope: !2029)
!2035 = !DILocation(line: 135, column: 1, scope: !2006)
!2036 = distinct !DISubprogram(name: "verror", scope: !204, file: !204, line: 251, type: !2037, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !28, !28, !37, !212}
!2039 = !DILocalVariable(name: "status", arg: 1, scope: !2036, file: !204, line: 251, type: !28)
!2040 = !DILocation(line: 251, column: 1, scope: !2036)
!2041 = !DILocalVariable(name: "errnum", arg: 2, scope: !2036, file: !204, line: 251, type: !28)
!2042 = !DILocalVariable(name: "message", arg: 3, scope: !2036, file: !204, line: 251, type: !37)
!2043 = !DILocalVariable(name: "args", arg: 4, scope: !2036, file: !204, line: 251, type: !212)
!2044 = !DILocation(line: 261, column: 3, scope: !2036)
!2045 = !DILocation(line: 265, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2036, file: !204, line: 265, column: 7)
!2047 = !DILocation(line: 265, column: 7, scope: !2036)
!2048 = !DILocation(line: 266, column: 7, scope: !2046)
!2049 = !DILocation(line: 266, column: 5, scope: !2046)
!2050 = !DILocation(line: 272, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !204, line: 268, column: 5)
!2052 = !DILocation(line: 272, column: 32, scope: !2051)
!2053 = !DILocation(line: 272, column: 7, scope: !2051)
!2054 = !DILocation(line: 276, column: 3, scope: !2036)
!2055 = !DILocation(line: 282, column: 1, scope: !2036)
!2056 = distinct !DISubprogram(name: "flush_stdout", scope: !204, file: !204, line: 163, type: !43, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2057 = !DILocalVariable(name: "stdout_fd", scope: !2056, file: !204, line: 166, type: !28)
!2058 = !DILocation(line: 166, column: 7, scope: !2056)
!2059 = !DILocation(line: 172, column: 13, scope: !2056)
!2060 = !DILocation(line: 182, column: 12, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !204, line: 182, column: 7)
!2062 = !DILocation(line: 182, column: 9, scope: !2061)
!2063 = !DILocation(line: 182, column: 22, scope: !2061)
!2064 = !DILocation(line: 182, column: 34, scope: !2061)
!2065 = !DILocation(line: 182, column: 25, scope: !2061)
!2066 = !DILocation(line: 182, column: 7, scope: !2056)
!2067 = !DILocation(line: 184, column: 5, scope: !2061)
!2068 = !DILocation(line: 185, column: 1, scope: !2056)
!2069 = distinct !DISubprogram(name: "error_tail", scope: !204, file: !204, line: 219, type: !2037, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2070 = !DILocalVariable(name: "status", arg: 1, scope: !2069, file: !204, line: 219, type: !28)
!2071 = !DILocation(line: 219, column: 1, scope: !2069)
!2072 = !DILocalVariable(name: "errnum", arg: 2, scope: !2069, file: !204, line: 219, type: !28)
!2073 = !DILocalVariable(name: "message", arg: 3, scope: !2069, file: !204, line: 219, type: !37)
!2074 = !DILocalVariable(name: "args", arg: 4, scope: !2069, file: !204, line: 219, type: !212)
!2075 = !DILocation(line: 229, column: 13, scope: !2069)
!2076 = !DILocation(line: 229, column: 21, scope: !2069)
!2077 = !DILocation(line: 229, column: 3, scope: !2069)
!2078 = !DILocation(line: 232, column: 3, scope: !2069)
!2079 = !DILocation(line: 233, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2069, file: !204, line: 233, column: 7)
!2081 = !DILocation(line: 233, column: 7, scope: !2069)
!2082 = !DILocation(line: 234, column: 26, scope: !2080)
!2083 = !DILocation(line: 234, column: 5, scope: !2080)
!2084 = !DILocation(line: 238, column: 3, scope: !2069)
!2085 = !DILocation(line: 240, column: 3, scope: !2069)
!2086 = !DILocation(line: 241, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2069, file: !204, line: 241, column: 7)
!2088 = !DILocation(line: 241, column: 7, scope: !2069)
!2089 = !DILocation(line: 242, column: 11, scope: !2087)
!2090 = !DILocation(line: 242, column: 5, scope: !2087)
!2091 = !DILocation(line: 243, column: 1, scope: !2069)
!2092 = distinct !DISubprogram(name: "print_errno_message", scope: !204, file: !204, line: 188, type: !445, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2093 = !DILocalVariable(name: "errnum", arg: 1, scope: !2092, file: !204, line: 188, type: !28)
!2094 = !DILocation(line: 188, column: 26, scope: !2092)
!2095 = !DILocalVariable(name: "s", scope: !2092, file: !204, line: 190, type: !37)
!2096 = !DILocation(line: 190, column: 15, scope: !2092)
!2097 = !DILocalVariable(name: "errbuf", scope: !2092, file: !204, line: 193, type: !2098)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !2099)
!2099 = !{!2100}
!2100 = !DISubrange(count: 1024)
!2101 = !DILocation(line: 193, column: 8, scope: !2092)
!2102 = !DILocation(line: 195, column: 21, scope: !2092)
!2103 = !DILocation(line: 195, column: 29, scope: !2092)
!2104 = !DILocation(line: 195, column: 7, scope: !2092)
!2105 = !DILocation(line: 195, column: 5, scope: !2092)
!2106 = !DILocation(line: 207, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2092, file: !204, line: 207, column: 7)
!2108 = !DILocation(line: 207, column: 7, scope: !2092)
!2109 = !DILocation(line: 208, column: 9, scope: !2107)
!2110 = !DILocation(line: 208, column: 7, scope: !2107)
!2111 = !DILocation(line: 208, column: 5, scope: !2107)
!2112 = !DILocation(line: 214, column: 12, scope: !2092)
!2113 = !DILocation(line: 214, column: 28, scope: !2092)
!2114 = !DILocation(line: 214, column: 3, scope: !2092)
!2115 = !DILocation(line: 216, column: 1, scope: !2092)
!2116 = distinct !DISubprogram(name: "is_open", scope: !204, file: !204, line: 145, type: !1946, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2117 = !DILocalVariable(name: "fd", arg: 1, scope: !2116, file: !204, line: 145, type: !28)
!2118 = !DILocation(line: 145, column: 14, scope: !2116)
!2119 = !DILocation(line: 157, column: 22, scope: !2116)
!2120 = !DILocation(line: 157, column: 15, scope: !2116)
!2121 = !DILocation(line: 157, column: 12, scope: !2116)
!2122 = !DILocation(line: 157, column: 3, scope: !2116)
!2123 = distinct !DISubprogram(name: "error", scope: !204, file: !204, line: 285, type: !2124, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !28, !28, !37, null}
!2126 = !DILocalVariable(name: "status", arg: 1, scope: !2123, file: !204, line: 285, type: !28)
!2127 = !DILocation(line: 285, column: 12, scope: !2123)
!2128 = !DILocalVariable(name: "errnum", arg: 2, scope: !2123, file: !204, line: 285, type: !28)
!2129 = !DILocation(line: 285, column: 24, scope: !2123)
!2130 = !DILocalVariable(name: "message", arg: 3, scope: !2123, file: !204, line: 285, type: !37)
!2131 = !DILocation(line: 285, column: 44, scope: !2123)
!2132 = !DILocalVariable(name: "ap", scope: !2123, file: !204, line: 287, type: !212)
!2133 = !DILocation(line: 287, column: 11, scope: !2123)
!2134 = !DILocation(line: 288, column: 3, scope: !2123)
!2135 = !DILocation(line: 289, column: 3, scope: !2123)
!2136 = !DILocation(line: 290, column: 3, scope: !2123)
!2137 = !DILocation(line: 291, column: 1, scope: !2123)
!2138 = !DILocalVariable(name: "status", arg: 1, scope: !209, file: !204, line: 298, type: !28)
!2139 = !DILocation(line: 298, column: 1, scope: !209)
!2140 = !DILocalVariable(name: "errnum", arg: 2, scope: !209, file: !204, line: 298, type: !28)
!2141 = !DILocalVariable(name: "file_name", arg: 3, scope: !209, file: !204, line: 298, type: !37)
!2142 = !DILocalVariable(name: "line_number", arg: 4, scope: !209, file: !204, line: 298, type: !7)
!2143 = !DILocalVariable(name: "message", arg: 5, scope: !209, file: !204, line: 298, type: !37)
!2144 = !DILocalVariable(name: "args", arg: 6, scope: !209, file: !204, line: 298, type: !212)
!2145 = !DILocation(line: 302, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !209, file: !204, line: 302, column: 7)
!2147 = !DILocation(line: 302, column: 7, scope: !209)
!2148 = !DILocation(line: 307, column: 11, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !204, line: 307, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !204, line: 303, column: 5)
!2151 = !DILocation(line: 307, column: 30, scope: !2149)
!2152 = !DILocation(line: 307, column: 27, scope: !2149)
!2153 = !DILocation(line: 308, column: 11, scope: !2149)
!2154 = !DILocation(line: 308, column: 15, scope: !2149)
!2155 = !DILocation(line: 308, column: 28, scope: !2149)
!2156 = !DILocation(line: 308, column: 25, scope: !2149)
!2157 = !DILocation(line: 309, column: 15, scope: !2149)
!2158 = !DILocation(line: 309, column: 19, scope: !2149)
!2159 = !DILocation(line: 309, column: 33, scope: !2149)
!2160 = !DILocation(line: 310, column: 19, scope: !2149)
!2161 = !DILocation(line: 310, column: 22, scope: !2149)
!2162 = !DILocation(line: 310, column: 32, scope: !2149)
!2163 = !DILocation(line: 311, column: 19, scope: !2149)
!2164 = !DILocation(line: 311, column: 30, scope: !2149)
!2165 = !DILocation(line: 311, column: 45, scope: !2149)
!2166 = !DILocation(line: 311, column: 22, scope: !2149)
!2167 = !DILocation(line: 311, column: 56, scope: !2149)
!2168 = !DILocation(line: 307, column: 11, scope: !2150)
!2169 = !DILocation(line: 314, column: 9, scope: !2149)
!2170 = !DILocation(line: 316, column: 23, scope: !2150)
!2171 = !DILocation(line: 316, column: 21, scope: !2150)
!2172 = !DILocation(line: 317, column: 25, scope: !2150)
!2173 = !DILocation(line: 317, column: 23, scope: !2150)
!2174 = !DILocation(line: 318, column: 5, scope: !2150)
!2175 = !DILocation(line: 327, column: 3, scope: !209)
!2176 = !DILocation(line: 331, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !209, file: !204, line: 331, column: 7)
!2178 = !DILocation(line: 331, column: 7, scope: !209)
!2179 = !DILocation(line: 332, column: 7, scope: !2177)
!2180 = !DILocation(line: 332, column: 5, scope: !2177)
!2181 = !DILocation(line: 338, column: 16, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !204, line: 334, column: 5)
!2183 = !DILocation(line: 338, column: 31, scope: !2182)
!2184 = !DILocation(line: 338, column: 7, scope: !2182)
!2185 = !DILocation(line: 346, column: 12, scope: !209)
!2186 = !DILocation(line: 346, column: 20, scope: !209)
!2187 = !DILocation(line: 346, column: 30, scope: !209)
!2188 = !DILocation(line: 347, column: 12, scope: !209)
!2189 = !DILocation(line: 347, column: 23, scope: !209)
!2190 = !DILocation(line: 346, column: 3, scope: !209)
!2191 = !DILocation(line: 350, column: 3, scope: !209)
!2192 = !DILocation(line: 356, column: 1, scope: !209)
!2193 = distinct !DISubprogram(name: "error_at_line", scope: !204, file: !204, line: 359, type: !2194, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !203, retainedNodes: !39)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !28, !28, !37, !7, !37, null}
!2196 = !DILocalVariable(name: "status", arg: 1, scope: !2193, file: !204, line: 359, type: !28)
!2197 = !DILocation(line: 359, column: 20, scope: !2193)
!2198 = !DILocalVariable(name: "errnum", arg: 2, scope: !2193, file: !204, line: 359, type: !28)
!2199 = !DILocation(line: 359, column: 32, scope: !2193)
!2200 = !DILocalVariable(name: "file_name", arg: 3, scope: !2193, file: !204, line: 359, type: !37)
!2201 = !DILocation(line: 359, column: 52, scope: !2193)
!2202 = !DILocalVariable(name: "line_number", arg: 4, scope: !2193, file: !204, line: 360, type: !7)
!2203 = !DILocation(line: 360, column: 29, scope: !2193)
!2204 = !DILocalVariable(name: "message", arg: 5, scope: !2193, file: !204, line: 360, type: !37)
!2205 = !DILocation(line: 360, column: 54, scope: !2193)
!2206 = !DILocalVariable(name: "ap", scope: !2193, file: !204, line: 362, type: !212)
!2207 = !DILocation(line: 362, column: 11, scope: !2193)
!2208 = !DILocation(line: 363, column: 3, scope: !2193)
!2209 = !DILocation(line: 364, column: 3, scope: !2193)
!2210 = !DILocation(line: 366, column: 3, scope: !2193)
!2211 = !DILocation(line: 367, column: 1, scope: !2193)
!2212 = distinct !DISubprogram(name: "fdadvise", scope: !350, file: !350, line: 25, type: !2213, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !349, retainedNodes: !39)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !28, !2215, !2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !213, line: 63, baseType: !123)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !80, line: 51, baseType: !79)
!2217 = !DILocalVariable(name: "fd", arg: 1, scope: !2212, file: !350, line: 25, type: !28)
!2218 = !DILocation(line: 25, column: 15, scope: !2212)
!2219 = !DILocalVariable(name: "offset", arg: 2, scope: !2212, file: !350, line: 25, type: !2215)
!2220 = !DILocation(line: 25, column: 25, scope: !2212)
!2221 = !DILocalVariable(name: "len", arg: 3, scope: !2212, file: !350, line: 25, type: !2215)
!2222 = !DILocation(line: 25, column: 39, scope: !2212)
!2223 = !DILocalVariable(name: "advice", arg: 4, scope: !2212, file: !350, line: 25, type: !2216)
!2224 = !DILocation(line: 25, column: 54, scope: !2212)
!2225 = !DILocation(line: 28, column: 3, scope: !2212)
!2226 = !DILocation(line: 30, column: 1, scope: !2212)
!2227 = distinct !DISubprogram(name: "fadvise", scope: !350, file: !350, line: 33, type: !2228, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !349, retainedNodes: !39)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2230, !2216}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2232, file: !101, line: 51, baseType: !28, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2232, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2232, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2232, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2232, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2232, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2232, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2232, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2232, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2232, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2232, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2232, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2232, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2232, file: !101, line: 70, baseType: !2248, size: 64, offset: 832)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2232, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2232, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2232, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2232, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2232, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2232, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2232, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2232, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2232, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2232, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2232, file: !101, line: 93, baseType: !2248, size: 64, offset: 1344)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2232, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2232, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2232, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2232, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2264 = !DILocalVariable(name: "fp", arg: 1, scope: !2227, file: !350, line: 33, type: !2230)
!2265 = !DILocation(line: 33, column: 16, scope: !2227)
!2266 = !DILocalVariable(name: "advice", arg: 2, scope: !2227, file: !350, line: 33, type: !2216)
!2267 = !DILocation(line: 33, column: 30, scope: !2227)
!2268 = !DILocation(line: 35, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2227, file: !350, line: 35, column: 7)
!2270 = !DILocation(line: 35, column: 7, scope: !2227)
!2271 = !DILocation(line: 36, column: 23, scope: !2269)
!2272 = !DILocation(line: 36, column: 15, scope: !2269)
!2273 = !DILocation(line: 36, column: 34, scope: !2269)
!2274 = !DILocation(line: 36, column: 5, scope: !2269)
!2275 = !DILocation(line: 37, column: 1, scope: !2227)
!2276 = distinct !DISubprogram(name: "rpl_fclose", scope: !353, file: !353, line: 58, type: !2277, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !352, retainedNodes: !39)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!28, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2281, file: !101, line: 51, baseType: !28, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2281, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2281, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2281, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2281, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2281, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2281, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2281, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2281, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2281, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2281, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2281, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2281, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2281, file: !101, line: 70, baseType: !2297, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2281, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2281, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2281, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2281, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2281, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2281, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2281, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2281, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2281, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2281, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2281, file: !101, line: 93, baseType: !2297, size: 64, offset: 1344)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2281, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2281, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2281, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2281, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2313 = !DILocalVariable(name: "fp", arg: 1, scope: !2276, file: !353, line: 58, type: !2279)
!2314 = !DILocation(line: 58, column: 19, scope: !2276)
!2315 = !DILocalVariable(name: "saved_errno", scope: !2276, file: !353, line: 60, type: !28)
!2316 = !DILocation(line: 60, column: 7, scope: !2276)
!2317 = !DILocalVariable(name: "fd", scope: !2276, file: !353, line: 63, type: !28)
!2318 = !DILocation(line: 63, column: 7, scope: !2276)
!2319 = !DILocation(line: 63, column: 20, scope: !2276)
!2320 = !DILocation(line: 63, column: 12, scope: !2276)
!2321 = !DILocation(line: 64, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2276, file: !353, line: 64, column: 7)
!2323 = !DILocation(line: 64, column: 10, scope: !2322)
!2324 = !DILocation(line: 64, column: 7, scope: !2276)
!2325 = !DILocation(line: 65, column: 28, scope: !2322)
!2326 = !DILocation(line: 65, column: 12, scope: !2322)
!2327 = !DILocation(line: 65, column: 5, scope: !2322)
!2328 = !DILocation(line: 70, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2276, file: !353, line: 70, column: 7)
!2330 = !DILocation(line: 70, column: 23, scope: !2329)
!2331 = !DILocation(line: 70, column: 41, scope: !2329)
!2332 = !DILocation(line: 70, column: 33, scope: !2329)
!2333 = !DILocation(line: 70, column: 26, scope: !2329)
!2334 = !DILocation(line: 70, column: 59, scope: !2329)
!2335 = !DILocation(line: 71, column: 7, scope: !2329)
!2336 = !DILocation(line: 71, column: 18, scope: !2329)
!2337 = !DILocation(line: 71, column: 10, scope: !2329)
!2338 = !DILocation(line: 70, column: 7, scope: !2276)
!2339 = !DILocation(line: 72, column: 19, scope: !2329)
!2340 = !DILocation(line: 72, column: 17, scope: !2329)
!2341 = !DILocation(line: 72, column: 5, scope: !2329)
!2342 = !DILocalVariable(name: "result", scope: !2276, file: !353, line: 74, type: !28)
!2343 = !DILocation(line: 74, column: 7, scope: !2276)
!2344 = !DILocation(line: 100, column: 28, scope: !2276)
!2345 = !DILocation(line: 100, column: 12, scope: !2276)
!2346 = !DILocation(line: 100, column: 10, scope: !2276)
!2347 = !DILocation(line: 105, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2276, file: !353, line: 105, column: 7)
!2349 = !DILocation(line: 105, column: 19, scope: !2348)
!2350 = !DILocation(line: 105, column: 7, scope: !2276)
!2351 = !DILocation(line: 107, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !353, line: 106, column: 5)
!2353 = !DILocation(line: 107, column: 7, scope: !2352)
!2354 = !DILocation(line: 107, column: 13, scope: !2352)
!2355 = !DILocation(line: 108, column: 14, scope: !2352)
!2356 = !DILocation(line: 109, column: 5, scope: !2352)
!2357 = !DILocation(line: 111, column: 10, scope: !2276)
!2358 = !DILocation(line: 111, column: 3, scope: !2276)
!2359 = !DILocation(line: 112, column: 1, scope: !2276)
!2360 = distinct !DISubprogram(name: "rpl_fflush", scope: !355, file: !355, line: 130, type: !2361, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !354, retainedNodes: !39)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!28, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2365, file: !101, line: 51, baseType: !28, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2365, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2365, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2365, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2365, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2365, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2365, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2365, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2365, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2365, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2365, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2365, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2365, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2365, file: !101, line: 70, baseType: !2381, size: 64, offset: 832)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2365, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2365, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2365, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2365, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2365, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2365, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2365, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2365, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2365, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2365, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2365, file: !101, line: 93, baseType: !2381, size: 64, offset: 1344)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2365, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2365, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2365, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2365, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2397 = !DILocalVariable(name: "stream", arg: 1, scope: !2360, file: !355, line: 130, type: !2363)
!2398 = !DILocation(line: 130, column: 19, scope: !2360)
!2399 = !DILocation(line: 151, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2360, file: !355, line: 151, column: 7)
!2401 = !DILocation(line: 151, column: 14, scope: !2400)
!2402 = !DILocation(line: 151, column: 22, scope: !2400)
!2403 = !DILocation(line: 151, column: 27, scope: !2400)
!2404 = !DILocation(line: 151, column: 7, scope: !2360)
!2405 = !DILocation(line: 152, column: 20, scope: !2400)
!2406 = !DILocation(line: 152, column: 12, scope: !2400)
!2407 = !DILocation(line: 152, column: 5, scope: !2400)
!2408 = !DILocation(line: 157, column: 44, scope: !2360)
!2409 = !DILocation(line: 157, column: 3, scope: !2360)
!2410 = !DILocation(line: 159, column: 18, scope: !2360)
!2411 = !DILocation(line: 159, column: 10, scope: !2360)
!2412 = !DILocation(line: 159, column: 3, scope: !2360)
!2413 = !DILocation(line: 236, column: 1, scope: !2360)
!2414 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !355, file: !355, line: 42, type: !2415, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !354, retainedNodes: !39)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !2363}
!2417 = !DILocalVariable(name: "fp", arg: 1, scope: !2414, file: !355, line: 42, type: !2363)
!2418 = !DILocation(line: 42, column: 48, scope: !2414)
!2419 = !DILocation(line: 44, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2414, file: !355, line: 44, column: 7)
!2421 = !DILocation(line: 44, column: 12, scope: !2420)
!2422 = !DILocation(line: 44, column: 19, scope: !2420)
!2423 = !DILocation(line: 44, column: 7, scope: !2414)
!2424 = !DILocation(line: 46, column: 13, scope: !2420)
!2425 = !DILocation(line: 46, column: 5, scope: !2420)
!2426 = !DILocation(line: 47, column: 1, scope: !2414)
!2427 = distinct !DISubprogram(name: "fpurge", scope: !357, file: !357, line: 32, type: !2428, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !356, retainedNodes: !39)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!28, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2432, file: !101, line: 51, baseType: !28, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2432, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2432, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2432, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2432, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2432, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2432, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2432, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2432, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2432, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2432, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2432, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2432, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2432, file: !101, line: 70, baseType: !2448, size: 64, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2432, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2432, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2432, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2432, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2432, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2432, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2432, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2432, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2432, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2432, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2432, file: !101, line: 93, baseType: !2448, size: 64, offset: 1344)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2432, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2432, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2432, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2432, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2464 = !DILocalVariable(name: "fp", arg: 1, scope: !2427, file: !357, line: 32, type: !2430)
!2465 = !DILocation(line: 32, column: 15, scope: !2427)
!2466 = !DILocation(line: 36, column: 13, scope: !2427)
!2467 = !DILocation(line: 36, column: 3, scope: !2427)
!2468 = !DILocation(line: 38, column: 3, scope: !2427)
!2469 = distinct !DISubprogram(name: "rpl_fseeko", scope: !359, file: !359, line: 28, type: !2470, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !358, retainedNodes: !39)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!28, !2472, !2215, !28}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2474)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2474, file: !101, line: 51, baseType: !28, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2474, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2474, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2474, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2474, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2474, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2474, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2474, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2474, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2474, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2474, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2474, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2474, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2474, file: !101, line: 70, baseType: !2490, size: 64, offset: 832)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2474, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2474, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2474, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2474, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2474, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2474, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2474, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2474, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2474, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2474, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2474, file: !101, line: 93, baseType: !2490, size: 64, offset: 1344)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2474, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2474, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2474, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2474, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2506 = !DILocalVariable(name: "fp", arg: 1, scope: !2469, file: !359, line: 28, type: !2472)
!2507 = !DILocation(line: 28, column: 15, scope: !2469)
!2508 = !DILocalVariable(name: "offset", arg: 2, scope: !2469, file: !359, line: 28, type: !2215)
!2509 = !DILocation(line: 28, column: 25, scope: !2469)
!2510 = !DILocalVariable(name: "whence", arg: 3, scope: !2469, file: !359, line: 28, type: !28)
!2511 = !DILocation(line: 28, column: 37, scope: !2469)
!2512 = !DILocation(line: 55, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2469, file: !359, line: 55, column: 7)
!2514 = !DILocation(line: 55, column: 12, scope: !2513)
!2515 = !DILocation(line: 55, column: 28, scope: !2513)
!2516 = !DILocation(line: 55, column: 33, scope: !2513)
!2517 = !DILocation(line: 55, column: 25, scope: !2513)
!2518 = !DILocation(line: 56, column: 7, scope: !2513)
!2519 = !DILocation(line: 56, column: 10, scope: !2513)
!2520 = !DILocation(line: 56, column: 15, scope: !2513)
!2521 = !DILocation(line: 56, column: 32, scope: !2513)
!2522 = !DILocation(line: 56, column: 37, scope: !2513)
!2523 = !DILocation(line: 56, column: 29, scope: !2513)
!2524 = !DILocation(line: 57, column: 7, scope: !2513)
!2525 = !DILocation(line: 57, column: 10, scope: !2513)
!2526 = !DILocation(line: 57, column: 15, scope: !2513)
!2527 = !DILocation(line: 57, column: 29, scope: !2513)
!2528 = !DILocation(line: 55, column: 7, scope: !2469)
!2529 = !DILocalVariable(name: "pos", scope: !2530, file: !359, line: 123, type: !2215)
!2530 = distinct !DILexicalBlock(scope: !2513, file: !359, line: 119, column: 5)
!2531 = !DILocation(line: 123, column: 13, scope: !2530)
!2532 = !DILocation(line: 123, column: 34, scope: !2530)
!2533 = !DILocation(line: 123, column: 26, scope: !2530)
!2534 = !DILocation(line: 123, column: 39, scope: !2530)
!2535 = !DILocation(line: 123, column: 47, scope: !2530)
!2536 = !DILocation(line: 123, column: 19, scope: !2530)
!2537 = !DILocation(line: 124, column: 11, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !359, line: 124, column: 11)
!2539 = !DILocation(line: 124, column: 15, scope: !2538)
!2540 = !DILocation(line: 124, column: 11, scope: !2530)
!2541 = !DILocation(line: 130, column: 11, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !359, line: 125, column: 9)
!2543 = !DILocation(line: 135, column: 7, scope: !2530)
!2544 = !DILocation(line: 135, column: 12, scope: !2530)
!2545 = !DILocation(line: 135, column: 19, scope: !2530)
!2546 = !DILocation(line: 136, column: 22, scope: !2530)
!2547 = !DILocation(line: 136, column: 7, scope: !2530)
!2548 = !DILocation(line: 136, column: 12, scope: !2530)
!2549 = !DILocation(line: 136, column: 20, scope: !2530)
!2550 = !DILocation(line: 167, column: 7, scope: !2530)
!2551 = !DILocation(line: 169, column: 18, scope: !2469)
!2552 = !DILocation(line: 169, column: 22, scope: !2469)
!2553 = !DILocation(line: 169, column: 30, scope: !2469)
!2554 = !DILocation(line: 169, column: 10, scope: !2469)
!2555 = !DILocation(line: 169, column: 3, scope: !2469)
!2556 = !DILocation(line: 170, column: 1, scope: !2469)
!2557 = distinct !DISubprogram(name: "getprogname", scope: !361, file: !361, line: 54, type: !2558, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !360, retainedNodes: !39)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!37}
!2560 = !DILocation(line: 58, column: 10, scope: !2557)
!2561 = !DILocation(line: 58, column: 3, scope: !2557)
!2562 = distinct !DISubprogram(name: "mbbuf_init", scope: !864, file: !864, line: 56, type: !2563, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !39)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2565, !22, !155, !2571}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !864, line: 50, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !864, line: 43, size: 320, elements: !2568)
!2568 = !{!2569, !2570, !2605, !2606, !2607}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2567, file: !864, line: 45, baseType: !22, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2567, file: !864, line: 46, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2573, file: !101, line: 51, baseType: !28, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2573, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2573, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2573, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2573, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2573, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2573, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2573, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2573, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2573, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2573, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2573, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2573, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2573, file: !101, line: 70, baseType: !2589, size: 64, offset: 832)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2573, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2573, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2573, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2573, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2573, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2573, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2573, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2573, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2573, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2573, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2573, file: !101, line: 93, baseType: !2589, size: 64, offset: 1344)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2573, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2573, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2573, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2573, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2567, file: !864, line: 47, baseType: !155, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2567, file: !864, line: 48, baseType: !155, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2567, file: !864, line: 49, baseType: !155, size: 64, offset: 256)
!2608 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2562, file: !864, line: 56, type: !2565)
!2609 = !DILocation(line: 56, column: 22, scope: !2562)
!2610 = !DILocalVariable(name: "buffer", arg: 2, scope: !2562, file: !864, line: 56, type: !22)
!2611 = !DILocation(line: 56, column: 35, scope: !2562)
!2612 = !DILocalVariable(name: "size", arg: 3, scope: !2562, file: !864, line: 56, type: !155)
!2613 = !DILocation(line: 56, column: 49, scope: !2562)
!2614 = !DILocalVariable(name: "fp", arg: 4, scope: !2562, file: !864, line: 56, type: !2571)
!2615 = !DILocation(line: 56, column: 61, scope: !2562)
!2616 = !DILocation(line: 58, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2562, file: !864, line: 58, column: 7)
!2618 = !DILocation(line: 58, column: 12, scope: !2617)
!2619 = !DILocation(line: 58, column: 7, scope: !2562)
!2620 = !DILocation(line: 59, column: 5, scope: !2617)
!2621 = !DILocation(line: 60, column: 19, scope: !2562)
!2622 = !DILocation(line: 60, column: 3, scope: !2562)
!2623 = !DILocation(line: 60, column: 10, scope: !2562)
!2624 = !DILocation(line: 60, column: 17, scope: !2562)
!2625 = !DILocation(line: 61, column: 15, scope: !2562)
!2626 = !DILocation(line: 61, column: 3, scope: !2562)
!2627 = !DILocation(line: 61, column: 10, scope: !2562)
!2628 = !DILocation(line: 61, column: 13, scope: !2562)
!2629 = !DILocation(line: 62, column: 17, scope: !2562)
!2630 = !DILocation(line: 62, column: 3, scope: !2562)
!2631 = !DILocation(line: 62, column: 10, scope: !2562)
!2632 = !DILocation(line: 62, column: 15, scope: !2562)
!2633 = !DILocation(line: 63, column: 3, scope: !2562)
!2634 = !DILocation(line: 63, column: 10, scope: !2562)
!2635 = !DILocation(line: 63, column: 17, scope: !2562)
!2636 = !DILocation(line: 64, column: 3, scope: !2562)
!2637 = !DILocation(line: 64, column: 10, scope: !2562)
!2638 = !DILocation(line: 64, column: 17, scope: !2562)
!2639 = !DILocation(line: 65, column: 1, scope: !2562)
!2640 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !864, file: !864, line: 71, type: !2641, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !39)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!2643, !2565}
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !366, line: 143, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 138, size: 64, elements: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !2644, file: !366, line: 140, baseType: !887, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2644, file: !366, line: 141, baseType: !327, size: 8, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2644, file: !366, line: 142, baseType: !327, size: 8, offset: 40)
!2649 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2640, file: !864, line: 71, type: !2565)
!2650 = !DILocation(line: 71, column: 26, scope: !2640)
!2651 = !DILocalVariable(name: "available", scope: !2640, file: !864, line: 73, type: !155)
!2652 = !DILocation(line: 73, column: 9, scope: !2640)
!2653 = !DILocation(line: 73, column: 21, scope: !2640)
!2654 = !DILocation(line: 73, column: 28, scope: !2640)
!2655 = !DILocation(line: 73, column: 37, scope: !2640)
!2656 = !DILocation(line: 73, column: 44, scope: !2640)
!2657 = !DILocation(line: 73, column: 35, scope: !2640)
!2658 = !DILocation(line: 75, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2640, file: !864, line: 75, column: 7)
!2660 = !DILocation(line: 75, column: 17, scope: !2659)
!2661 = !DILocation(line: 75, column: 32, scope: !2659)
!2662 = !DILocation(line: 75, column: 43, scope: !2659)
!2663 = !DILocation(line: 75, column: 50, scope: !2659)
!2664 = !DILocation(line: 75, column: 37, scope: !2659)
!2665 = !DILocation(line: 75, column: 7, scope: !2640)
!2666 = !DILocalVariable(name: "start", scope: !2667, file: !864, line: 77, type: !155)
!2667 = distinct !DILexicalBlock(scope: !2659, file: !864, line: 76, column: 5)
!2668 = !DILocation(line: 77, column: 13, scope: !2667)
!2669 = !DILocation(line: 78, column: 17, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !864, line: 78, column: 11)
!2671 = !DILocation(line: 78, column: 15, scope: !2670)
!2672 = !DILocation(line: 78, column: 11, scope: !2667)
!2673 = !DILocation(line: 79, column: 15, scope: !2670)
!2674 = !DILocation(line: 79, column: 9, scope: !2670)
!2675 = !DILocation(line: 82, column: 20, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2670, file: !864, line: 81, column: 9)
!2677 = !DILocation(line: 82, column: 27, scope: !2676)
!2678 = !DILocation(line: 82, column: 35, scope: !2676)
!2679 = !DILocation(line: 82, column: 42, scope: !2676)
!2680 = !DILocation(line: 82, column: 51, scope: !2676)
!2681 = !DILocation(line: 82, column: 58, scope: !2676)
!2682 = !DILocation(line: 82, column: 49, scope: !2676)
!2683 = !DILocation(line: 82, column: 66, scope: !2676)
!2684 = !DILocation(line: 82, column: 11, scope: !2676)
!2685 = !DILocation(line: 83, column: 19, scope: !2676)
!2686 = !DILocation(line: 83, column: 17, scope: !2676)
!2687 = !DILocation(line: 85, column: 30, scope: !2667)
!2688 = !DILocation(line: 85, column: 37, scope: !2667)
!2689 = !DILocation(line: 85, column: 46, scope: !2667)
!2690 = !DILocation(line: 85, column: 44, scope: !2667)
!2691 = !DILocation(line: 85, column: 56, scope: !2667)
!2692 = !DILocation(line: 85, column: 63, scope: !2667)
!2693 = !DILocation(line: 85, column: 70, scope: !2667)
!2694 = !DILocation(line: 85, column: 68, scope: !2667)
!2695 = !DILocation(line: 86, column: 30, scope: !2667)
!2696 = !DILocation(line: 86, column: 37, scope: !2667)
!2697 = !DILocation(line: 85, column: 23, scope: !2667)
!2698 = !DILocation(line: 86, column: 43, scope: !2667)
!2699 = !DILocation(line: 86, column: 41, scope: !2667)
!2700 = !DILocation(line: 85, column: 7, scope: !2667)
!2701 = !DILocation(line: 85, column: 14, scope: !2667)
!2702 = !DILocation(line: 85, column: 21, scope: !2667)
!2703 = !DILocation(line: 87, column: 7, scope: !2667)
!2704 = !DILocation(line: 87, column: 14, scope: !2667)
!2705 = !DILocation(line: 87, column: 21, scope: !2667)
!2706 = !DILocation(line: 88, column: 19, scope: !2667)
!2707 = !DILocation(line: 88, column: 26, scope: !2667)
!2708 = !DILocation(line: 88, column: 35, scope: !2667)
!2709 = !DILocation(line: 88, column: 42, scope: !2667)
!2710 = !DILocation(line: 88, column: 33, scope: !2667)
!2711 = !DILocation(line: 88, column: 17, scope: !2667)
!2712 = !DILocation(line: 89, column: 5, scope: !2667)
!2713 = !DILocation(line: 90, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2640, file: !864, line: 90, column: 7)
!2715 = !DILocation(line: 90, column: 17, scope: !2714)
!2716 = !DILocation(line: 90, column: 7, scope: !2640)
!2717 = !DILocation(line: 91, column: 21, scope: !2714)
!2718 = !DILocation(line: 91, column: 5, scope: !2714)
!2719 = !DILocalVariable(name: "g", scope: !2640, file: !864, line: 92, type: !2643)
!2720 = !DILocation(line: 92, column: 10, scope: !2640)
!2721 = !DILocation(line: 92, column: 25, scope: !2640)
!2722 = !DILocation(line: 92, column: 32, scope: !2640)
!2723 = !DILocation(line: 92, column: 41, scope: !2640)
!2724 = !DILocation(line: 92, column: 48, scope: !2640)
!2725 = !DILocation(line: 92, column: 39, scope: !2640)
!2726 = !DILocation(line: 93, column: 25, scope: !2640)
!2727 = !DILocation(line: 93, column: 32, scope: !2640)
!2728 = !DILocation(line: 93, column: 41, scope: !2640)
!2729 = !DILocation(line: 93, column: 48, scope: !2640)
!2730 = !DILocation(line: 93, column: 39, scope: !2640)
!2731 = !DILocation(line: 92, column: 14, scope: !2640)
!2732 = !DILocation(line: 94, column: 11, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2640, file: !864, line: 94, column: 7)
!2734 = !DILocation(line: 94, column: 9, scope: !2733)
!2735 = !DILocation(line: 94, column: 7, scope: !2640)
!2736 = !DILocation(line: 95, column: 24, scope: !2733)
!2737 = !DILocation(line: 95, column: 22, scope: !2733)
!2738 = !DILocation(line: 95, column: 5, scope: !2733)
!2739 = !DILocation(line: 95, column: 12, scope: !2733)
!2740 = !DILocation(line: 95, column: 19, scope: !2733)
!2741 = !DILocation(line: 99, column: 30, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2733, file: !864, line: 97, column: 5)
!2743 = !DILocation(line: 99, column: 37, scope: !2742)
!2744 = !DILocation(line: 99, column: 44, scope: !2742)
!2745 = !DILocation(line: 99, column: 51, scope: !2742)
!2746 = !DILocation(line: 99, column: 57, scope: !2742)
!2747 = !DILocation(line: 99, column: 14, scope: !2742)
!2748 = !DILocation(line: 99, column: 9, scope: !2742)
!2749 = !DILocation(line: 99, column: 12, scope: !2742)
!2750 = !DILocation(line: 101, column: 10, scope: !2640)
!2751 = !DILocation(line: 101, column: 3, scope: !2640)
!2752 = !DILocation(line: 102, column: 1, scope: !2640)
!2753 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !864, file: !864, line: 107, type: !2754, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !39)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!22, !2565, !2643}
!2756 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2753, file: !864, line: 107, type: !2565)
!2757 = !DILocation(line: 107, column: 29, scope: !2753)
!2758 = !DILocalVariable(name: "g", arg: 2, scope: !2753, file: !864, line: 107, type: !2643)
!2759 = !DILocation(line: 107, column: 43, scope: !2753)
!2760 = !DILocation(line: 109, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !864, line: 109, column: 7)
!2762 = !DILocation(line: 109, column: 14, scope: !2761)
!2763 = !DILocation(line: 109, column: 25, scope: !2761)
!2764 = !DILocation(line: 109, column: 23, scope: !2761)
!2765 = !DILocation(line: 109, column: 21, scope: !2761)
!2766 = !DILocation(line: 109, column: 7, scope: !2753)
!2767 = !DILocation(line: 110, column: 5, scope: !2761)
!2768 = !DILocation(line: 111, column: 10, scope: !2753)
!2769 = !DILocation(line: 111, column: 17, scope: !2753)
!2770 = !DILocation(line: 111, column: 27, scope: !2753)
!2771 = !DILocation(line: 111, column: 34, scope: !2753)
!2772 = !DILocation(line: 111, column: 45, scope: !2753)
!2773 = !DILocation(line: 111, column: 43, scope: !2753)
!2774 = !DILocation(line: 111, column: 41, scope: !2753)
!2775 = !DILocation(line: 111, column: 24, scope: !2753)
!2776 = !DILocation(line: 111, column: 3, scope: !2753)
!2777 = distinct !DISubprogram(name: "mcel_ch", scope: !366, file: !366, line: 167, type: !2778, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!2780, !887, !146}
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !366, line: 143, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 138, size: 64, elements: !2782)
!2782 = !{!2783, !2784, !2785}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !2781, file: !366, line: 140, baseType: !887, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2781, file: !366, line: 141, baseType: !327, size: 8, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2781, file: !366, line: 142, baseType: !327, size: 8, offset: 40)
!2786 = !DILocalVariable(name: "ch", arg: 1, scope: !2777, file: !366, line: 167, type: !887)
!2787 = !DILocation(line: 167, column: 19, scope: !2777)
!2788 = !DILocalVariable(name: "len", arg: 2, scope: !2777, file: !366, line: 167, type: !146)
!2789 = !DILocation(line: 167, column: 30, scope: !2777)
!2790 = !DILocation(line: 169, column: 3, scope: !2777)
!2791 = !DILocation(line: 170, column: 3, scope: !2777)
!2792 = !DILocation(line: 171, column: 3, scope: !2777)
!2793 = !DILocation(line: 172, column: 19, scope: !2777)
!2794 = !DILocation(line: 172, column: 26, scope: !2777)
!2795 = !DILocation(line: 172, column: 37, scope: !2777)
!2796 = !DILocation(line: 172, column: 3, scope: !2777)
!2797 = distinct !DISubprogram(name: "mcel_err", scope: !366, file: !366, line: 175, type: !2798, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!2780, !327}
!2800 = !DILocalVariable(name: "err", arg: 1, scope: !2797, file: !366, line: 175, type: !327)
!2801 = !DILocation(line: 175, column: 25, scope: !2797)
!2802 = !DILocation(line: 177, column: 3, scope: !2797)
!2803 = !DILocation(line: 178, column: 19, scope: !2797)
!2804 = !DILocation(line: 178, column: 27, scope: !2797)
!2805 = !DILocation(line: 178, column: 3, scope: !2797)
!2806 = distinct !DISubprogram(name: "mcel_cmp", scope: !366, file: !366, line: 184, type: !2807, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!28, !2780, !2780}
!2809 = !DILocalVariable(name: "c1", arg: 1, scope: !2806, file: !366, line: 184, type: !2780)
!2810 = !DILocation(line: 184, column: 18, scope: !2806)
!2811 = !DILocalVariable(name: "c2", arg: 2, scope: !2806, file: !366, line: 184, type: !2780)
!2812 = !DILocation(line: 184, column: 29, scope: !2806)
!2813 = !DILocalVariable(name: "ch1", scope: !2806, file: !366, line: 186, type: !28)
!2814 = !DILocation(line: 186, column: 7, scope: !2806)
!2815 = !DILocation(line: 186, column: 16, scope: !2806)
!2816 = !DILocalVariable(name: "ch2", scope: !2806, file: !366, line: 186, type: !28)
!2817 = !DILocation(line: 186, column: 20, scope: !2806)
!2818 = !DILocation(line: 186, column: 29, scope: !2806)
!2819 = !DILocation(line: 187, column: 15, scope: !2806)
!2820 = !DILocation(line: 187, column: 12, scope: !2806)
!2821 = !DILocation(line: 187, column: 24, scope: !2806)
!2822 = !DILocation(line: 187, column: 21, scope: !2806)
!2823 = !DILocation(line: 187, column: 19, scope: !2806)
!2824 = !DILocation(line: 187, column: 29, scope: !2806)
!2825 = !DILocation(line: 187, column: 57, scope: !2806)
!2826 = !DILocation(line: 187, column: 63, scope: !2806)
!2827 = !DILocation(line: 187, column: 61, scope: !2806)
!2828 = !DILocation(line: 187, column: 54, scope: !2806)
!2829 = !DILocation(line: 187, column: 3, scope: !2806)
!2830 = distinct !DISubprogram(name: "mcel_eq", scope: !366, file: !366, line: 192, type: !2831, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!25, !2780, !2780}
!2833 = !DILocalVariable(name: "c1", arg: 1, scope: !2830, file: !366, line: 192, type: !2780)
!2834 = !DILocation(line: 192, column: 17, scope: !2830)
!2835 = !DILocalVariable(name: "c2", arg: 2, scope: !2830, file: !366, line: 192, type: !2780)
!2836 = !DILocation(line: 192, column: 28, scope: !2830)
!2837 = !DILocation(line: 194, column: 12, scope: !2830)
!2838 = !DILocation(line: 194, column: 10, scope: !2830)
!2839 = !DILocation(line: 194, column: 3, scope: !2830)
!2840 = distinct !DISubprogram(name: "mcel_tocmp", scope: !366, file: !366, line: 201, type: !2841, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!28, !2843, !2780, !2780}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!1977, !1977}
!2846 = !DILocalVariable(name: "to", arg: 1, scope: !2840, file: !366, line: 201, type: !2843)
!2847 = !DILocation(line: 201, column: 22, scope: !2840)
!2848 = !DILocalVariable(name: "c1", arg: 2, scope: !2840, file: !366, line: 201, type: !2780)
!2849 = !DILocation(line: 201, column: 43, scope: !2840)
!2850 = !DILocalVariable(name: "c2", arg: 3, scope: !2840, file: !366, line: 201, type: !2780)
!2851 = !DILocation(line: 201, column: 54, scope: !2840)
!2852 = !DILocalVariable(name: "cmp", scope: !2840, file: !366, line: 203, type: !28)
!2853 = !DILocation(line: 203, column: 7, scope: !2840)
!2854 = !DILocation(line: 203, column: 13, scope: !2840)
!2855 = !DILocation(line: 204, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2840, file: !366, line: 204, column: 7)
!2857 = !DILocation(line: 204, column: 7, scope: !2840)
!2858 = !DILocation(line: 205, column: 12, scope: !2856)
!2859 = !DILocation(line: 205, column: 5, scope: !2856)
!2860 = !DILocalVariable(name: "ch1", scope: !2840, file: !366, line: 206, type: !28)
!2861 = !DILocation(line: 206, column: 7, scope: !2840)
!2862 = !DILocation(line: 206, column: 13, scope: !2840)
!2863 = !DILocation(line: 206, column: 20, scope: !2840)
!2864 = !DILocalVariable(name: "ch2", scope: !2840, file: !366, line: 206, type: !28)
!2865 = !DILocation(line: 206, column: 25, scope: !2840)
!2866 = !DILocation(line: 206, column: 31, scope: !2840)
!2867 = !DILocation(line: 206, column: 38, scope: !2840)
!2868 = !DILocation(line: 207, column: 10, scope: !2840)
!2869 = !DILocation(line: 207, column: 16, scope: !2840)
!2870 = !DILocation(line: 207, column: 14, scope: !2840)
!2871 = !DILocation(line: 207, column: 3, scope: !2840)
!2872 = !DILocation(line: 208, column: 1, scope: !2840)
!2873 = distinct !DISubprogram(name: "mcel_isbasic", scope: !366, file: !366, line: 215, type: !2874, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!25, !23}
!2876 = !DILocalVariable(name: "c", arg: 1, scope: !2873, file: !366, line: 215, type: !23)
!2877 = !DILocation(line: 215, column: 20, scope: !2873)
!2878 = !DILocation(line: 217, column: 10, scope: !2873)
!2879 = !DILocation(line: 0, scope: !2873)
!2880 = !DILocation(line: 217, column: 3, scope: !2873)
!2881 = distinct !DISubprogram(name: "mcel_scan", scope: !366, file: !366, line: 230, type: !2882, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2780, !37, !37}
!2884 = !DILocalVariable(name: "p", arg: 1, scope: !2881, file: !366, line: 230, type: !37)
!2885 = !DILocation(line: 230, column: 24, scope: !2881)
!2886 = !DILocalVariable(name: "lim", arg: 2, scope: !2881, file: !366, line: 230, type: !37)
!2887 = !DILocation(line: 230, column: 39, scope: !2881)
!2888 = !DILocalVariable(name: "c", scope: !2881, file: !366, line: 235, type: !23)
!2889 = !DILocation(line: 235, column: 8, scope: !2881)
!2890 = !DILocation(line: 235, column: 13, scope: !2881)
!2891 = !DILocation(line: 235, column: 12, scope: !2881)
!2892 = !DILocation(line: 236, column: 21, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2881, file: !366, line: 236, column: 7)
!2894 = !DILocation(line: 236, column: 7, scope: !2893)
!2895 = !DILocation(line: 236, column: 7, scope: !2881)
!2896 = !DILocation(line: 237, column: 21, scope: !2893)
!2897 = !DILocation(line: 237, column: 12, scope: !2893)
!2898 = !DILocation(line: 237, column: 5, scope: !2893)
!2899 = !DILocalVariable(name: "mbs", scope: !2881, file: !366, line: 244, type: !2900)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, elements: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2902, file: !332, line: 15, baseType: !28, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2902, file: !332, line: 20, baseType: !2906, size: 32, offset: 32)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2902, file: !332, line: 16, size: 32, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2906, file: !332, line: 18, baseType: !7, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2906, file: !332, line: 19, baseType: !341, size: 32)
!2910 = !DILocation(line: 244, column: 13, scope: !2881)
!2911 = !DILocation(line: 244, column: 22, scope: !2881)
!2912 = !DILocation(line: 244, column: 30, scope: !2881)
!2913 = !DILocalVariable(name: "ch", scope: !2881, file: !366, line: 267, type: !887)
!2914 = !DILocation(line: 267, column: 12, scope: !2881)
!2915 = !DILocalVariable(name: "len", scope: !2881, file: !366, line: 268, type: !146)
!2916 = !DILocation(line: 268, column: 10, scope: !2881)
!2917 = !DILocation(line: 268, column: 31, scope: !2881)
!2918 = !DILocation(line: 268, column: 34, scope: !2881)
!2919 = !DILocation(line: 268, column: 40, scope: !2881)
!2920 = !DILocation(line: 268, column: 38, scope: !2881)
!2921 = !DILocation(line: 268, column: 16, scope: !2881)
!2922 = !DILocation(line: 274, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2881, file: !366, line: 274, column: 7)
!2924 = !DILocation(line: 274, column: 7, scope: !2881)
!2925 = !DILocation(line: 275, column: 22, scope: !2923)
!2926 = !DILocation(line: 275, column: 12, scope: !2923)
!2927 = !DILocation(line: 275, column: 5, scope: !2923)
!2928 = !DILocation(line: 279, column: 19, scope: !2881)
!2929 = !DILocation(line: 279, column: 23, scope: !2881)
!2930 = !DILocation(line: 279, column: 10, scope: !2881)
!2931 = !DILocation(line: 279, column: 3, scope: !2881)
!2932 = !DILocation(line: 280, column: 1, scope: !2881)
!2933 = distinct !DISubprogram(name: "mcel_scant", scope: !366, file: !366, line: 288, type: !2934, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!2780, !37, !23}
!2936 = !DILocalVariable(name: "p", arg: 1, scope: !2933, file: !366, line: 288, type: !37)
!2937 = !DILocation(line: 288, column: 25, scope: !2933)
!2938 = !DILocalVariable(name: "terminator", arg: 2, scope: !2933, file: !366, line: 288, type: !23)
!2939 = !DILocation(line: 288, column: 33, scope: !2933)
!2940 = !DILocation(line: 291, column: 22, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2933, file: !366, line: 291, column: 7)
!2942 = !DILocation(line: 291, column: 21, scope: !2941)
!2943 = !DILocation(line: 291, column: 7, scope: !2941)
!2944 = !DILocation(line: 291, column: 7, scope: !2933)
!2945 = !DILocation(line: 292, column: 22, scope: !2941)
!2946 = !DILocation(line: 292, column: 21, scope: !2941)
!2947 = !DILocation(line: 292, column: 12, scope: !2941)
!2948 = !DILocation(line: 292, column: 5, scope: !2941)
!2949 = !DILocalVariable(name: "lim", scope: !2933, file: !366, line: 296, type: !37)
!2950 = !DILocation(line: 296, column: 15, scope: !2933)
!2951 = !DILocation(line: 296, column: 21, scope: !2933)
!2952 = !DILocation(line: 296, column: 23, scope: !2933)
!2953 = !DILocalVariable(name: "i", scope: !2954, file: !366, line: 297, type: !28)
!2954 = distinct !DILexicalBlock(scope: !2933, file: !366, line: 297, column: 3)
!2955 = !DILocation(line: 297, column: 12, scope: !2954)
!2956 = !DILocation(line: 297, column: 8, scope: !2954)
!2957 = !DILocation(line: 297, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !366, line: 297, column: 3)
!2959 = !DILocation(line: 297, column: 21, scope: !2958)
!2960 = !DILocation(line: 297, column: 3, scope: !2954)
!2961 = !DILocation(line: 298, column: 13, scope: !2958)
!2962 = !DILocation(line: 298, column: 12, scope: !2958)
!2963 = !DILocation(line: 298, column: 20, scope: !2958)
!2964 = !DILocation(line: 298, column: 17, scope: !2958)
!2965 = !DILocation(line: 298, column: 9, scope: !2958)
!2966 = !DILocation(line: 298, column: 5, scope: !2958)
!2967 = !DILocation(line: 297, column: 42, scope: !2958)
!2968 = !DILocation(line: 297, column: 3, scope: !2958)
!2969 = distinct !{!2969, !2960, !2970, !549}
!2970 = !DILocation(line: 298, column: 20, scope: !2954)
!2971 = !DILocation(line: 299, column: 21, scope: !2933)
!2972 = !DILocation(line: 299, column: 24, scope: !2933)
!2973 = !DILocation(line: 299, column: 10, scope: !2933)
!2974 = !DILocation(line: 299, column: 3, scope: !2933)
!2975 = !DILocation(line: 300, column: 1, scope: !2933)
!2976 = distinct !DISubprogram(name: "mcel_scanz", scope: !366, file: !366, line: 307, type: !2977, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !39)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2780, !37}
!2979 = !DILocalVariable(name: "p", arg: 1, scope: !2976, file: !366, line: 307, type: !37)
!2980 = !DILocation(line: 307, column: 25, scope: !2976)
!2981 = !DILocation(line: 309, column: 22, scope: !2976)
!2982 = !DILocation(line: 309, column: 10, scope: !2976)
!2983 = !DILocation(line: 309, column: 3, scope: !2976)
!2984 = distinct !DISubprogram(name: "set_program_name", scope: !236, file: !236, line: 37, type: !666, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !235, retainedNodes: !39)
!2985 = !DILocalVariable(name: "argv0", arg: 1, scope: !2984, file: !236, line: 37, type: !37)
!2986 = !DILocation(line: 37, column: 31, scope: !2984)
!2987 = !DILocalVariable(name: "slash", scope: !2984, file: !236, line: 44, type: !37)
!2988 = !DILocation(line: 44, column: 15, scope: !2984)
!2989 = !DILocation(line: 44, column: 32, scope: !2984)
!2990 = !DILocation(line: 44, column: 23, scope: !2984)
!2991 = !DILocalVariable(name: "base", scope: !2984, file: !236, line: 45, type: !37)
!2992 = !DILocation(line: 45, column: 15, scope: !2984)
!2993 = !DILocation(line: 45, column: 22, scope: !2984)
!2994 = !DILocation(line: 45, column: 30, scope: !2984)
!2995 = !DILocation(line: 45, column: 36, scope: !2984)
!2996 = !DILocation(line: 45, column: 42, scope: !2984)
!2997 = !DILocation(line: 46, column: 12, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2984, file: !236, line: 46, column: 7)
!2999 = !DILocation(line: 46, column: 19, scope: !2998)
!3000 = !DILocation(line: 46, column: 17, scope: !2998)
!3001 = !DILocation(line: 46, column: 9, scope: !2998)
!3002 = !DILocation(line: 46, column: 25, scope: !2998)
!3003 = !DILocation(line: 46, column: 35, scope: !2998)
!3004 = !DILocation(line: 46, column: 40, scope: !2998)
!3005 = !DILocation(line: 46, column: 28, scope: !2998)
!3006 = !DILocation(line: 46, column: 7, scope: !2984)
!3007 = !DILocation(line: 48, column: 15, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2998, file: !236, line: 47, column: 5)
!3009 = !DILocation(line: 48, column: 13, scope: !3008)
!3010 = !DILocation(line: 49, column: 20, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3008, file: !236, line: 49, column: 11)
!3012 = !DILocation(line: 49, column: 11, scope: !3011)
!3013 = !DILocation(line: 49, column: 36, scope: !3011)
!3014 = !DILocation(line: 49, column: 11, scope: !3008)
!3015 = !DILocation(line: 51, column: 16, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !236, line: 50, column: 9)
!3017 = !DILocation(line: 52, column: 19, scope: !3016)
!3018 = !DILocation(line: 52, column: 17, scope: !3016)
!3019 = !DILocation(line: 53, column: 9, scope: !3016)
!3020 = !DILocation(line: 54, column: 5, scope: !3008)
!3021 = !DILocation(line: 65, column: 18, scope: !2984)
!3022 = !DILocation(line: 65, column: 16, scope: !2984)
!3023 = !DILocation(line: 71, column: 38, scope: !2984)
!3024 = !DILocation(line: 71, column: 27, scope: !2984)
!3025 = !DILocation(line: 74, column: 44, scope: !2984)
!3026 = !DILocation(line: 74, column: 33, scope: !2984)
!3027 = !DILocation(line: 76, column: 1, scope: !2984)
!3028 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !241, file: !242, line: 38, type: !37)
!3029 = !DILocation(line: 38, column: 31, scope: !241)
!3030 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !241, file: !242, line: 38, type: !37)
!3031 = !DILocation(line: 38, column: 66, scope: !241)
!3032 = !DILocalVariable(name: "translation", scope: !241, file: !242, line: 40, type: !37)
!3033 = !DILocation(line: 40, column: 15, scope: !241)
!3034 = !DILocation(line: 40, column: 38, scope: !241)
!3035 = !DILocation(line: 40, column: 29, scope: !241)
!3036 = !DILocation(line: 41, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !241, file: !242, line: 41, column: 7)
!3038 = !DILocation(line: 41, column: 22, scope: !3037)
!3039 = !DILocation(line: 41, column: 19, scope: !3037)
!3040 = !DILocation(line: 41, column: 7, scope: !241)
!3041 = !DILocation(line: 42, column: 12, scope: !3037)
!3042 = !DILocation(line: 42, column: 5, scope: !3037)
!3043 = !DILocalVariable(name: "w", scope: !241, file: !242, line: 47, type: !887)
!3044 = !DILocation(line: 47, column: 12, scope: !241)
!3045 = !DILocalVariable(name: "mbs", scope: !241, file: !242, line: 48, type: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3048, file: !332, line: 15, baseType: !28, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3048, file: !332, line: 20, baseType: !3052, size: 32, offset: 32)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !332, line: 16, size: 32, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3052, file: !332, line: 18, baseType: !7, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3052, file: !332, line: 19, baseType: !341, size: 32)
!3056 = !DILocation(line: 48, column: 13, scope: !241)
!3057 = !DILocation(line: 48, column: 18, scope: !241)
!3058 = !DILocation(line: 49, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !241, file: !242, line: 49, column: 7)
!3060 = !DILocation(line: 49, column: 39, scope: !3059)
!3061 = !DILocation(line: 49, column: 44, scope: !3059)
!3062 = !DILocation(line: 49, column: 47, scope: !3059)
!3063 = !DILocation(line: 49, column: 49, scope: !3059)
!3064 = !DILocation(line: 49, column: 7, scope: !241)
!3065 = !DILocation(line: 50, column: 12, scope: !3059)
!3066 = !DILocation(line: 50, column: 5, scope: !3059)
!3067 = !DILocation(line: 53, column: 10, scope: !241)
!3068 = !DILocation(line: 53, column: 3, scope: !241)
!3069 = !DILocation(line: 54, column: 1, scope: !241)
!3070 = distinct !DISubprogram(name: "clone_quoting_options", scope: !251, file: !251, line: 113, type: !3071, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!3073, !3073}
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3074 = !DILocalVariable(name: "o", arg: 1, scope: !3070, file: !251, line: 113, type: !3073)
!3075 = !DILocation(line: 113, column: 48, scope: !3070)
!3076 = !DILocalVariable(name: "saved_errno", scope: !3070, file: !251, line: 115, type: !28)
!3077 = !DILocation(line: 115, column: 7, scope: !3070)
!3078 = !DILocation(line: 115, column: 21, scope: !3070)
!3079 = !DILocalVariable(name: "p", scope: !3070, file: !251, line: 116, type: !3073)
!3080 = !DILocation(line: 116, column: 27, scope: !3070)
!3081 = !DILocation(line: 116, column: 40, scope: !3070)
!3082 = !DILocation(line: 116, column: 44, scope: !3070)
!3083 = !DILocation(line: 116, column: 31, scope: !3070)
!3084 = !DILocation(line: 118, column: 11, scope: !3070)
!3085 = !DILocation(line: 118, column: 3, scope: !3070)
!3086 = !DILocation(line: 118, column: 9, scope: !3070)
!3087 = !DILocation(line: 119, column: 10, scope: !3070)
!3088 = !DILocation(line: 119, column: 3, scope: !3070)
!3089 = distinct !DISubprogram(name: "get_quoting_style", scope: !251, file: !251, line: 124, type: !3090, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!65, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!3094 = !DILocalVariable(name: "o", arg: 1, scope: !3089, file: !251, line: 124, type: !3092)
!3095 = !DILocation(line: 124, column: 50, scope: !3089)
!3096 = !DILocation(line: 126, column: 11, scope: !3089)
!3097 = !DILocation(line: 126, column: 15, scope: !3089)
!3098 = !DILocation(line: 126, column: 46, scope: !3089)
!3099 = !DILocation(line: 126, column: 3, scope: !3089)
!3100 = distinct !DISubprogram(name: "set_quoting_style", scope: !251, file: !251, line: 132, type: !3101, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !3073, !65}
!3103 = !DILocalVariable(name: "o", arg: 1, scope: !3100, file: !251, line: 132, type: !3073)
!3104 = !DILocation(line: 132, column: 44, scope: !3100)
!3105 = !DILocalVariable(name: "s", arg: 2, scope: !3100, file: !251, line: 132, type: !65)
!3106 = !DILocation(line: 132, column: 66, scope: !3100)
!3107 = !DILocation(line: 134, column: 47, scope: !3100)
!3108 = !DILocation(line: 134, column: 4, scope: !3100)
!3109 = !DILocation(line: 134, column: 8, scope: !3100)
!3110 = !DILocation(line: 134, column: 39, scope: !3100)
!3111 = !DILocation(line: 134, column: 45, scope: !3100)
!3112 = !DILocation(line: 135, column: 1, scope: !3100)
!3113 = distinct !DISubprogram(name: "set_char_quoting", scope: !251, file: !251, line: 143, type: !3114, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!28, !3073, !23, !28}
!3116 = !DILocalVariable(name: "o", arg: 1, scope: !3113, file: !251, line: 143, type: !3073)
!3117 = !DILocation(line: 143, column: 43, scope: !3113)
!3118 = !DILocalVariable(name: "c", arg: 2, scope: !3113, file: !251, line: 143, type: !23)
!3119 = !DILocation(line: 143, column: 51, scope: !3113)
!3120 = !DILocalVariable(name: "i", arg: 3, scope: !3113, file: !251, line: 143, type: !28)
!3121 = !DILocation(line: 143, column: 58, scope: !3113)
!3122 = !DILocalVariable(name: "uc", scope: !3113, file: !251, line: 145, type: !327)
!3123 = !DILocation(line: 145, column: 17, scope: !3113)
!3124 = !DILocation(line: 145, column: 22, scope: !3113)
!3125 = !DILocalVariable(name: "p", scope: !3113, file: !251, line: 146, type: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3127 = !DILocation(line: 146, column: 17, scope: !3113)
!3128 = !DILocation(line: 147, column: 6, scope: !3113)
!3129 = !DILocation(line: 147, column: 10, scope: !3113)
!3130 = !DILocation(line: 147, column: 41, scope: !3113)
!3131 = !DILocation(line: 147, column: 5, scope: !3113)
!3132 = !DILocation(line: 147, column: 59, scope: !3113)
!3133 = !DILocation(line: 147, column: 62, scope: !3113)
!3134 = !DILocation(line: 147, column: 57, scope: !3113)
!3135 = !DILocalVariable(name: "shift", scope: !3113, file: !251, line: 148, type: !28)
!3136 = !DILocation(line: 148, column: 7, scope: !3113)
!3137 = !DILocation(line: 148, column: 15, scope: !3113)
!3138 = !DILocation(line: 148, column: 18, scope: !3113)
!3139 = !DILocalVariable(name: "r", scope: !3113, file: !251, line: 149, type: !7)
!3140 = !DILocation(line: 149, column: 16, scope: !3113)
!3141 = !DILocation(line: 149, column: 22, scope: !3113)
!3142 = !DILocation(line: 149, column: 21, scope: !3113)
!3143 = !DILocation(line: 149, column: 27, scope: !3113)
!3144 = !DILocation(line: 149, column: 24, scope: !3113)
!3145 = !DILocation(line: 149, column: 34, scope: !3113)
!3146 = !DILocation(line: 150, column: 11, scope: !3113)
!3147 = !DILocation(line: 150, column: 13, scope: !3113)
!3148 = !DILocation(line: 150, column: 21, scope: !3113)
!3149 = !DILocation(line: 150, column: 19, scope: !3113)
!3150 = !DILocation(line: 150, column: 27, scope: !3113)
!3151 = !DILocation(line: 150, column: 24, scope: !3113)
!3152 = !DILocation(line: 150, column: 4, scope: !3113)
!3153 = !DILocation(line: 150, column: 6, scope: !3113)
!3154 = !DILocation(line: 151, column: 10, scope: !3113)
!3155 = !DILocation(line: 151, column: 3, scope: !3113)
!3156 = distinct !DISubprogram(name: "set_quoting_flags", scope: !251, file: !251, line: 159, type: !3157, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!28, !3073, !28}
!3159 = !DILocalVariable(name: "o", arg: 1, scope: !3156, file: !251, line: 159, type: !3073)
!3160 = !DILocation(line: 159, column: 44, scope: !3156)
!3161 = !DILocalVariable(name: "i", arg: 2, scope: !3156, file: !251, line: 159, type: !28)
!3162 = !DILocation(line: 159, column: 51, scope: !3156)
!3163 = !DILocation(line: 161, column: 8, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3156, file: !251, line: 161, column: 7)
!3165 = !DILocation(line: 161, column: 7, scope: !3156)
!3166 = !DILocation(line: 162, column: 7, scope: !3164)
!3167 = !DILocation(line: 162, column: 5, scope: !3164)
!3168 = !DILocalVariable(name: "r", scope: !3156, file: !251, line: 163, type: !28)
!3169 = !DILocation(line: 163, column: 7, scope: !3156)
!3170 = !DILocation(line: 163, column: 11, scope: !3156)
!3171 = !DILocation(line: 163, column: 14, scope: !3156)
!3172 = !DILocation(line: 164, column: 14, scope: !3156)
!3173 = !DILocation(line: 164, column: 3, scope: !3156)
!3174 = !DILocation(line: 164, column: 6, scope: !3156)
!3175 = !DILocation(line: 164, column: 12, scope: !3156)
!3176 = !DILocation(line: 165, column: 10, scope: !3156)
!3177 = !DILocation(line: 165, column: 3, scope: !3156)
!3178 = distinct !DISubprogram(name: "set_custom_quoting", scope: !251, file: !251, line: 169, type: !3179, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3073, !37, !37}
!3181 = !DILocalVariable(name: "o", arg: 1, scope: !3178, file: !251, line: 169, type: !3073)
!3182 = !DILocation(line: 169, column: 45, scope: !3178)
!3183 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3178, file: !251, line: 170, type: !37)
!3184 = !DILocation(line: 170, column: 33, scope: !3178)
!3185 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3178, file: !251, line: 170, type: !37)
!3186 = !DILocation(line: 170, column: 57, scope: !3178)
!3187 = !DILocation(line: 172, column: 8, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3178, file: !251, line: 172, column: 7)
!3189 = !DILocation(line: 172, column: 7, scope: !3178)
!3190 = !DILocation(line: 173, column: 7, scope: !3188)
!3191 = !DILocation(line: 173, column: 5, scope: !3188)
!3192 = !DILocation(line: 174, column: 3, scope: !3178)
!3193 = !DILocation(line: 174, column: 6, scope: !3178)
!3194 = !DILocation(line: 174, column: 12, scope: !3178)
!3195 = !DILocation(line: 175, column: 8, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3178, file: !251, line: 175, column: 7)
!3197 = !DILocation(line: 175, column: 19, scope: !3196)
!3198 = !DILocation(line: 175, column: 23, scope: !3196)
!3199 = !DILocation(line: 175, column: 7, scope: !3178)
!3200 = !DILocation(line: 176, column: 5, scope: !3196)
!3201 = !DILocation(line: 177, column: 19, scope: !3178)
!3202 = !DILocation(line: 177, column: 3, scope: !3178)
!3203 = !DILocation(line: 177, column: 6, scope: !3178)
!3204 = !DILocation(line: 177, column: 17, scope: !3178)
!3205 = !DILocation(line: 178, column: 20, scope: !3178)
!3206 = !DILocation(line: 178, column: 3, scope: !3178)
!3207 = !DILocation(line: 178, column: 6, scope: !3178)
!3208 = !DILocation(line: 178, column: 18, scope: !3178)
!3209 = !DILocation(line: 179, column: 1, scope: !3178)
!3210 = distinct !DISubprogram(name: "quotearg_buffer", scope: !251, file: !251, line: 774, type: !3211, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!146, !22, !146, !37, !146, !3092}
!3213 = !DILocalVariable(name: "buffer", arg: 1, scope: !3210, file: !251, line: 774, type: !22)
!3214 = !DILocation(line: 774, column: 24, scope: !3210)
!3215 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3210, file: !251, line: 774, type: !146)
!3216 = !DILocation(line: 774, column: 39, scope: !3210)
!3217 = !DILocalVariable(name: "arg", arg: 3, scope: !3210, file: !251, line: 775, type: !37)
!3218 = !DILocation(line: 775, column: 30, scope: !3210)
!3219 = !DILocalVariable(name: "argsize", arg: 4, scope: !3210, file: !251, line: 775, type: !146)
!3220 = !DILocation(line: 775, column: 42, scope: !3210)
!3221 = !DILocalVariable(name: "o", arg: 5, scope: !3210, file: !251, line: 776, type: !3092)
!3222 = !DILocation(line: 776, column: 48, scope: !3210)
!3223 = !DILocalVariable(name: "p", scope: !3210, file: !251, line: 778, type: !3092)
!3224 = !DILocation(line: 778, column: 33, scope: !3210)
!3225 = !DILocation(line: 778, column: 37, scope: !3210)
!3226 = !DILocation(line: 778, column: 41, scope: !3210)
!3227 = !DILocalVariable(name: "saved_errno", scope: !3210, file: !251, line: 779, type: !28)
!3228 = !DILocation(line: 779, column: 7, scope: !3210)
!3229 = !DILocation(line: 779, column: 21, scope: !3210)
!3230 = !DILocalVariable(name: "r", scope: !3210, file: !251, line: 780, type: !146)
!3231 = !DILocation(line: 780, column: 10, scope: !3210)
!3232 = !DILocation(line: 780, column: 40, scope: !3210)
!3233 = !DILocation(line: 780, column: 48, scope: !3210)
!3234 = !DILocation(line: 780, column: 60, scope: !3210)
!3235 = !DILocation(line: 780, column: 65, scope: !3210)
!3236 = !DILocation(line: 781, column: 40, scope: !3210)
!3237 = !DILocation(line: 781, column: 43, scope: !3210)
!3238 = !DILocation(line: 781, column: 50, scope: !3210)
!3239 = !DILocation(line: 781, column: 53, scope: !3210)
!3240 = !DILocation(line: 781, column: 60, scope: !3210)
!3241 = !DILocation(line: 781, column: 63, scope: !3210)
!3242 = !DILocation(line: 782, column: 40, scope: !3210)
!3243 = !DILocation(line: 782, column: 43, scope: !3210)
!3244 = !DILocation(line: 782, column: 55, scope: !3210)
!3245 = !DILocation(line: 782, column: 58, scope: !3210)
!3246 = !DILocation(line: 780, column: 14, scope: !3210)
!3247 = !DILocation(line: 783, column: 11, scope: !3210)
!3248 = !DILocation(line: 783, column: 3, scope: !3210)
!3249 = !DILocation(line: 783, column: 9, scope: !3210)
!3250 = !DILocation(line: 784, column: 10, scope: !3210)
!3251 = !DILocation(line: 784, column: 3, scope: !3210)
!3252 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !251, file: !251, line: 251, type: !3253, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !250, retainedNodes: !39)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!146, !22, !146, !37, !146, !65, !28, !3255, !37, !37}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3257 = !DILocalVariable(name: "buffer", arg: 1, scope: !3252, file: !251, line: 251, type: !22)
!3258 = !DILocation(line: 251, column: 33, scope: !3252)
!3259 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3252, file: !251, line: 251, type: !146)
!3260 = !DILocation(line: 251, column: 48, scope: !3252)
!3261 = !DILocalVariable(name: "arg", arg: 3, scope: !3252, file: !251, line: 252, type: !37)
!3262 = !DILocation(line: 252, column: 39, scope: !3252)
!3263 = !DILocalVariable(name: "argsize", arg: 4, scope: !3252, file: !251, line: 252, type: !146)
!3264 = !DILocation(line: 252, column: 51, scope: !3252)
!3265 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3252, file: !251, line: 253, type: !65)
!3266 = !DILocation(line: 253, column: 46, scope: !3252)
!3267 = !DILocalVariable(name: "flags", arg: 6, scope: !3252, file: !251, line: 253, type: !28)
!3268 = !DILocation(line: 253, column: 65, scope: !3252)
!3269 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3252, file: !251, line: 254, type: !3255)
!3270 = !DILocation(line: 254, column: 47, scope: !3252)
!3271 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3252, file: !251, line: 255, type: !37)
!3272 = !DILocation(line: 255, column: 39, scope: !3252)
!3273 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3252, file: !251, line: 256, type: !37)
!3274 = !DILocation(line: 256, column: 39, scope: !3252)
!3275 = !DILocalVariable(name: "unibyte_locale", scope: !3252, file: !251, line: 258, type: !25)
!3276 = !DILocation(line: 258, column: 8, scope: !3252)
!3277 = !DILocation(line: 258, column: 25, scope: !3252)
!3278 = !DILocation(line: 258, column: 36, scope: !3252)
!3279 = !DILocalVariable(name: "len", scope: !3252, file: !251, line: 260, type: !146)
!3280 = !DILocation(line: 260, column: 10, scope: !3252)
!3281 = !DILocalVariable(name: "orig_buffersize", scope: !3252, file: !251, line: 261, type: !146)
!3282 = !DILocation(line: 261, column: 10, scope: !3252)
!3283 = !DILocalVariable(name: "quote_string", scope: !3252, file: !251, line: 262, type: !37)
!3284 = !DILocation(line: 262, column: 15, scope: !3252)
!3285 = !DILocalVariable(name: "quote_string_len", scope: !3252, file: !251, line: 263, type: !146)
!3286 = !DILocation(line: 263, column: 10, scope: !3252)
!3287 = !DILocalVariable(name: "backslash_escapes", scope: !3252, file: !251, line: 264, type: !25)
!3288 = !DILocation(line: 264, column: 8, scope: !3252)
!3289 = !DILocalVariable(name: "elide_outer_quotes", scope: !3252, file: !251, line: 265, type: !25)
!3290 = !DILocation(line: 265, column: 8, scope: !3252)
!3291 = !DILocation(line: 265, column: 30, scope: !3252)
!3292 = !DILocation(line: 265, column: 36, scope: !3252)
!3293 = !DILocation(line: 265, column: 61, scope: !3252)
!3294 = !DILocalVariable(name: "encountered_single_quote", scope: !3252, file: !251, line: 266, type: !25)
!3295 = !DILocation(line: 266, column: 8, scope: !3252)
!3296 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3252, file: !251, line: 267, type: !25)
!3297 = !DILocation(line: 267, column: 8, scope: !3252)
!3298 = !DILocation(line: 267, column: 3, scope: !3252)
!3299 = !DILabel(scope: !3252, name: "process_input", file: !251, line: 308)
!3300 = !DILocation(line: 308, column: 2, scope: !3252)
!3301 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3252, file: !251, line: 309, type: !25)
!3302 = !DILocation(line: 309, column: 8, scope: !3252)
!3303 = !DILocation(line: 311, column: 11, scope: !3252)
!3304 = !DILocation(line: 311, column: 3, scope: !3252)
!3305 = !DILocation(line: 314, column: 21, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 312, column: 5)
!3307 = !DILocation(line: 315, column: 26, scope: !3306)
!3308 = !DILocation(line: 315, column: 7, scope: !3306)
!3309 = !DILocation(line: 318, column: 12, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !251, line: 318, column: 11)
!3311 = !DILocation(line: 318, column: 11, scope: !3306)
!3312 = !DILocation(line: 319, column: 9, scope: !3310)
!3313 = !DILocation(line: 319, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !251, line: 319, column: 9)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !251, line: 319, column: 9)
!3316 = !DILocation(line: 319, column: 9, scope: !3315)
!3317 = !DILocation(line: 320, column: 25, scope: !3306)
!3318 = !DILocation(line: 321, column: 20, scope: !3306)
!3319 = !DILocation(line: 322, column: 24, scope: !3306)
!3320 = !DILocation(line: 323, column: 7, scope: !3306)
!3321 = !DILocation(line: 326, column: 25, scope: !3306)
!3322 = !DILocation(line: 327, column: 26, scope: !3306)
!3323 = !DILocation(line: 328, column: 7, scope: !3306)
!3324 = !DILocation(line: 334, column: 13, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !251, line: 334, column: 13)
!3326 = distinct !DILexicalBlock(scope: !3306, file: !251, line: 333, column: 7)
!3327 = !DILocation(line: 334, column: 27, scope: !3325)
!3328 = !DILocation(line: 334, column: 13, scope: !3326)
!3329 = !DILocation(line: 357, column: 50, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3325, file: !251, line: 335, column: 11)
!3331 = !DILocation(line: 357, column: 26, scope: !3330)
!3332 = !DILocation(line: 357, column: 24, scope: !3330)
!3333 = !DILocation(line: 358, column: 51, scope: !3330)
!3334 = !DILocation(line: 358, column: 27, scope: !3330)
!3335 = !DILocation(line: 358, column: 25, scope: !3330)
!3336 = !DILocation(line: 359, column: 11, scope: !3330)
!3337 = !DILocation(line: 360, column: 14, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3326, file: !251, line: 360, column: 13)
!3339 = !DILocation(line: 360, column: 13, scope: !3326)
!3340 = !DILocalVariable(name: "lq", scope: !3341, file: !251, line: 361, type: !37)
!3341 = distinct !DILexicalBlock(scope: !3338, file: !251, line: 361, column: 11)
!3342 = !DILocation(line: 361, column: 28, scope: !3341)
!3343 = !DILocation(line: 361, column: 33, scope: !3341)
!3344 = !DILocation(line: 361, column: 16, scope: !3341)
!3345 = !DILocation(line: 361, column: 46, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !251, line: 361, column: 11)
!3347 = !DILocation(line: 361, column: 45, scope: !3346)
!3348 = !DILocation(line: 361, column: 11, scope: !3341)
!3349 = !DILocation(line: 362, column: 13, scope: !3346)
!3350 = !DILocation(line: 362, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !251, line: 362, column: 13)
!3352 = distinct !DILexicalBlock(scope: !3346, file: !251, line: 362, column: 13)
!3353 = !DILocation(line: 362, column: 13, scope: !3352)
!3354 = !DILocation(line: 361, column: 52, scope: !3346)
!3355 = !DILocation(line: 361, column: 11, scope: !3346)
!3356 = distinct !{!3356, !3348, !3357, !549}
!3357 = !DILocation(line: 362, column: 13, scope: !3341)
!3358 = !DILocation(line: 363, column: 27, scope: !3326)
!3359 = !DILocation(line: 364, column: 24, scope: !3326)
!3360 = !DILocation(line: 364, column: 22, scope: !3326)
!3361 = !DILocation(line: 365, column: 36, scope: !3326)
!3362 = !DILocation(line: 365, column: 28, scope: !3326)
!3363 = !DILocation(line: 365, column: 26, scope: !3326)
!3364 = !DILocation(line: 367, column: 7, scope: !3306)
!3365 = !DILocation(line: 370, column: 25, scope: !3306)
!3366 = !DILocation(line: 370, column: 7, scope: !3306)
!3367 = !DILocation(line: 373, column: 26, scope: !3306)
!3368 = !DILocation(line: 373, column: 7, scope: !3306)
!3369 = !DILocation(line: 376, column: 12, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3306, file: !251, line: 376, column: 11)
!3371 = !DILocation(line: 376, column: 11, scope: !3306)
!3372 = !DILocation(line: 377, column: 27, scope: !3370)
!3373 = !DILocation(line: 377, column: 9, scope: !3370)
!3374 = !DILocation(line: 380, column: 21, scope: !3306)
!3375 = !DILocation(line: 381, column: 12, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3306, file: !251, line: 381, column: 11)
!3377 = !DILocation(line: 381, column: 11, scope: !3306)
!3378 = !DILocation(line: 382, column: 9, scope: !3376)
!3379 = !DILocation(line: 382, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !251, line: 382, column: 9)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !251, line: 382, column: 9)
!3382 = !DILocation(line: 382, column: 9, scope: !3381)
!3383 = !DILocation(line: 383, column: 20, scope: !3306)
!3384 = !DILocation(line: 384, column: 24, scope: !3306)
!3385 = !DILocation(line: 385, column: 7, scope: !3306)
!3386 = !DILocation(line: 388, column: 26, scope: !3306)
!3387 = !DILocation(line: 389, column: 7, scope: !3306)
!3388 = !DILocation(line: 392, column: 7, scope: !3306)
!3389 = !DILocalVariable(name: "i", scope: !3390, file: !251, line: 395, type: !146)
!3390 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 395, column: 3)
!3391 = !DILocation(line: 395, column: 15, scope: !3390)
!3392 = !DILocation(line: 395, column: 8, scope: !3390)
!3393 = !DILocation(line: 395, column: 26, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3390, file: !251, line: 395, column: 3)
!3395 = !DILocation(line: 395, column: 34, scope: !3394)
!3396 = !DILocation(line: 395, column: 48, scope: !3394)
!3397 = !DILocation(line: 395, column: 52, scope: !3394)
!3398 = !DILocation(line: 395, column: 55, scope: !3394)
!3399 = !DILocation(line: 395, column: 65, scope: !3394)
!3400 = !DILocation(line: 395, column: 70, scope: !3394)
!3401 = !DILocation(line: 395, column: 67, scope: !3394)
!3402 = !DILocation(line: 395, column: 23, scope: !3394)
!3403 = !DILocation(line: 395, column: 3, scope: !3390)
!3404 = !DILocalVariable(name: "is_right_quote", scope: !3405, file: !251, line: 397, type: !25)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !251, line: 396, column: 5)
!3406 = !DILocation(line: 397, column: 12, scope: !3405)
!3407 = !DILocalVariable(name: "escaping", scope: !3405, file: !251, line: 398, type: !25)
!3408 = !DILocation(line: 398, column: 12, scope: !3405)
!3409 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3405, file: !251, line: 399, type: !25)
!3410 = !DILocation(line: 399, column: 12, scope: !3405)
!3411 = !DILocation(line: 401, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 401, column: 11)
!3413 = !DILocation(line: 402, column: 11, scope: !3412)
!3414 = !DILocation(line: 402, column: 14, scope: !3412)
!3415 = !DILocation(line: 402, column: 28, scope: !3412)
!3416 = !DILocation(line: 403, column: 11, scope: !3412)
!3417 = !DILocation(line: 403, column: 14, scope: !3412)
!3418 = !DILocation(line: 404, column: 11, scope: !3412)
!3419 = !DILocation(line: 404, column: 15, scope: !3412)
!3420 = !DILocation(line: 404, column: 19, scope: !3412)
!3421 = !DILocation(line: 404, column: 17, scope: !3412)
!3422 = !DILocation(line: 405, column: 19, scope: !3412)
!3423 = !DILocation(line: 405, column: 27, scope: !3412)
!3424 = !DILocation(line: 405, column: 39, scope: !3412)
!3425 = !DILocation(line: 405, column: 46, scope: !3412)
!3426 = !DILocation(line: 405, column: 44, scope: !3412)
!3427 = !DILocation(line: 409, column: 40, scope: !3412)
!3428 = !DILocation(line: 409, column: 32, scope: !3412)
!3429 = !DILocation(line: 409, column: 30, scope: !3412)
!3430 = !DILocation(line: 409, column: 48, scope: !3412)
!3431 = !DILocation(line: 405, column: 15, scope: !3412)
!3432 = !DILocation(line: 410, column: 11, scope: !3412)
!3433 = !DILocation(line: 410, column: 21, scope: !3412)
!3434 = !DILocation(line: 410, column: 27, scope: !3412)
!3435 = !DILocation(line: 410, column: 25, scope: !3412)
!3436 = !DILocation(line: 410, column: 30, scope: !3412)
!3437 = !DILocation(line: 410, column: 44, scope: !3412)
!3438 = !DILocation(line: 410, column: 14, scope: !3412)
!3439 = !DILocation(line: 401, column: 11, scope: !3405)
!3440 = !DILocation(line: 412, column: 15, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !251, line: 412, column: 15)
!3442 = distinct !DILexicalBlock(scope: !3412, file: !251, line: 411, column: 9)
!3443 = !DILocation(line: 412, column: 15, scope: !3442)
!3444 = !DILocation(line: 413, column: 13, scope: !3441)
!3445 = !DILocation(line: 414, column: 26, scope: !3442)
!3446 = !DILocation(line: 415, column: 9, scope: !3442)
!3447 = !DILocalVariable(name: "c", scope: !3405, file: !251, line: 417, type: !327)
!3448 = !DILocation(line: 417, column: 21, scope: !3405)
!3449 = !DILocation(line: 417, column: 25, scope: !3405)
!3450 = !DILocation(line: 417, column: 29, scope: !3405)
!3451 = !DILocation(line: 418, column: 15, scope: !3405)
!3452 = !DILocation(line: 418, column: 7, scope: !3405)
!3453 = !DILocation(line: 421, column: 15, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 421, column: 15)
!3455 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 419, column: 9)
!3456 = !DILocation(line: 421, column: 15, scope: !3455)
!3457 = !DILocation(line: 423, column: 15, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3454, file: !251, line: 422, column: 13)
!3459 = !DILocation(line: 423, column: 15, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !251, line: 423, column: 15)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !251, line: 423, column: 15)
!3462 = !DILocation(line: 423, column: 15, scope: !3461)
!3463 = !DILocation(line: 423, column: 15, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3461, file: !251, line: 423, column: 15)
!3465 = !DILocation(line: 423, column: 15, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !251, line: 423, column: 15)
!3467 = !DILocation(line: 423, column: 15, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !251, line: 423, column: 15)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !251, line: 423, column: 15)
!3470 = !DILocation(line: 423, column: 15, scope: !3469)
!3471 = !DILocation(line: 423, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !251, line: 423, column: 15)
!3473 = distinct !DILexicalBlock(scope: !3466, file: !251, line: 423, column: 15)
!3474 = !DILocation(line: 423, column: 15, scope: !3473)
!3475 = !DILocation(line: 423, column: 15, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !251, line: 423, column: 15)
!3477 = distinct !DILexicalBlock(scope: !3466, file: !251, line: 423, column: 15)
!3478 = !DILocation(line: 423, column: 15, scope: !3477)
!3479 = !DILocation(line: 423, column: 15, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !251, line: 423, column: 15)
!3481 = distinct !DILexicalBlock(scope: !3461, file: !251, line: 423, column: 15)
!3482 = !DILocation(line: 423, column: 15, scope: !3481)
!3483 = !DILocation(line: 430, column: 19, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3458, file: !251, line: 430, column: 19)
!3485 = !DILocation(line: 430, column: 33, scope: !3484)
!3486 = !DILocation(line: 431, column: 19, scope: !3484)
!3487 = !DILocation(line: 431, column: 22, scope: !3484)
!3488 = !DILocation(line: 431, column: 24, scope: !3484)
!3489 = !DILocation(line: 431, column: 30, scope: !3484)
!3490 = !DILocation(line: 431, column: 28, scope: !3484)
!3491 = !DILocation(line: 431, column: 38, scope: !3484)
!3492 = !DILocation(line: 431, column: 48, scope: !3484)
!3493 = !DILocation(line: 431, column: 52, scope: !3484)
!3494 = !DILocation(line: 431, column: 54, scope: !3484)
!3495 = !DILocation(line: 431, column: 45, scope: !3484)
!3496 = !DILocation(line: 431, column: 59, scope: !3484)
!3497 = !DILocation(line: 431, column: 62, scope: !3484)
!3498 = !DILocation(line: 431, column: 66, scope: !3484)
!3499 = !DILocation(line: 431, column: 68, scope: !3484)
!3500 = !DILocation(line: 431, column: 73, scope: !3484)
!3501 = !DILocation(line: 430, column: 19, scope: !3458)
!3502 = !DILocation(line: 433, column: 19, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3484, file: !251, line: 432, column: 17)
!3504 = !DILocation(line: 433, column: 19, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !251, line: 433, column: 19)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !251, line: 433, column: 19)
!3507 = !DILocation(line: 433, column: 19, scope: !3506)
!3508 = !DILocation(line: 434, column: 19, scope: !3503)
!3509 = !DILocation(line: 434, column: 19, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !251, line: 434, column: 19)
!3511 = distinct !DILexicalBlock(scope: !3503, file: !251, line: 434, column: 19)
!3512 = !DILocation(line: 434, column: 19, scope: !3511)
!3513 = !DILocation(line: 435, column: 17, scope: !3503)
!3514 = !DILocation(line: 436, column: 17, scope: !3458)
!3515 = !DILocation(line: 441, column: 13, scope: !3458)
!3516 = !DILocation(line: 442, column: 20, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3454, file: !251, line: 442, column: 20)
!3518 = !DILocation(line: 442, column: 26, scope: !3517)
!3519 = !DILocation(line: 442, column: 20, scope: !3454)
!3520 = !DILocation(line: 443, column: 13, scope: !3517)
!3521 = !DILocation(line: 444, column: 11, scope: !3455)
!3522 = !DILocation(line: 447, column: 20, scope: !3455)
!3523 = !DILocation(line: 447, column: 11, scope: !3455)
!3524 = !DILocation(line: 450, column: 19, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !251, line: 450, column: 19)
!3526 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 448, column: 13)
!3527 = !DILocation(line: 450, column: 19, scope: !3526)
!3528 = !DILocation(line: 451, column: 17, scope: !3525)
!3529 = !DILocation(line: 452, column: 15, scope: !3526)
!3530 = !DILocation(line: 455, column: 20, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3526, file: !251, line: 455, column: 19)
!3532 = !DILocation(line: 455, column: 26, scope: !3531)
!3533 = !DILocation(line: 456, column: 19, scope: !3531)
!3534 = !DILocation(line: 456, column: 22, scope: !3531)
!3535 = !DILocation(line: 456, column: 24, scope: !3531)
!3536 = !DILocation(line: 456, column: 30, scope: !3531)
!3537 = !DILocation(line: 456, column: 28, scope: !3531)
!3538 = !DILocation(line: 456, column: 38, scope: !3531)
!3539 = !DILocation(line: 456, column: 41, scope: !3531)
!3540 = !DILocation(line: 456, column: 45, scope: !3531)
!3541 = !DILocation(line: 456, column: 47, scope: !3531)
!3542 = !DILocation(line: 456, column: 52, scope: !3531)
!3543 = !DILocation(line: 455, column: 19, scope: !3526)
!3544 = !DILocation(line: 457, column: 25, scope: !3531)
!3545 = !DILocation(line: 457, column: 29, scope: !3531)
!3546 = !DILocation(line: 457, column: 31, scope: !3531)
!3547 = !DILocation(line: 457, column: 17, scope: !3531)
!3548 = !DILocation(line: 464, column: 25, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !251, line: 464, column: 25)
!3550 = distinct !DILexicalBlock(scope: !3531, file: !251, line: 458, column: 19)
!3551 = !DILocation(line: 464, column: 25, scope: !3550)
!3552 = !DILocation(line: 465, column: 23, scope: !3549)
!3553 = !DILocation(line: 466, column: 25, scope: !3550)
!3554 = !DILocation(line: 466, column: 29, scope: !3550)
!3555 = !DILocation(line: 466, column: 31, scope: !3550)
!3556 = !DILocation(line: 466, column: 23, scope: !3550)
!3557 = !DILocation(line: 467, column: 23, scope: !3550)
!3558 = !DILocation(line: 468, column: 21, scope: !3550)
!3559 = !DILocation(line: 468, column: 21, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !251, line: 468, column: 21)
!3561 = distinct !DILexicalBlock(scope: !3550, file: !251, line: 468, column: 21)
!3562 = !DILocation(line: 468, column: 21, scope: !3561)
!3563 = !DILocation(line: 469, column: 21, scope: !3550)
!3564 = !DILocation(line: 469, column: 21, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !251, line: 469, column: 21)
!3566 = distinct !DILexicalBlock(scope: !3550, file: !251, line: 469, column: 21)
!3567 = !DILocation(line: 469, column: 21, scope: !3566)
!3568 = !DILocation(line: 470, column: 21, scope: !3550)
!3569 = !DILocation(line: 470, column: 21, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !251, line: 470, column: 21)
!3571 = distinct !DILexicalBlock(scope: !3550, file: !251, line: 470, column: 21)
!3572 = !DILocation(line: 470, column: 21, scope: !3571)
!3573 = !DILocation(line: 471, column: 21, scope: !3550)
!3574 = !DILocation(line: 471, column: 21, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !251, line: 471, column: 21)
!3576 = distinct !DILexicalBlock(scope: !3550, file: !251, line: 471, column: 21)
!3577 = !DILocation(line: 471, column: 21, scope: !3576)
!3578 = !DILocation(line: 472, column: 21, scope: !3550)
!3579 = !DILocation(line: 473, column: 19, scope: !3550)
!3580 = !DILocation(line: 474, column: 15, scope: !3526)
!3581 = !DILocation(line: 476, column: 11, scope: !3455)
!3582 = !DILocation(line: 481, column: 26, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 478, column: 9)
!3584 = !DILocation(line: 481, column: 33, scope: !3583)
!3585 = !DILocation(line: 482, column: 26, scope: !3583)
!3586 = !DILocation(line: 482, column: 33, scope: !3583)
!3587 = !DILocation(line: 483, column: 26, scope: !3583)
!3588 = !DILocation(line: 483, column: 33, scope: !3583)
!3589 = !DILocation(line: 484, column: 26, scope: !3583)
!3590 = !DILocation(line: 484, column: 33, scope: !3583)
!3591 = !DILocation(line: 485, column: 26, scope: !3583)
!3592 = !DILocation(line: 485, column: 33, scope: !3583)
!3593 = !DILocation(line: 486, column: 26, scope: !3583)
!3594 = !DILocation(line: 486, column: 33, scope: !3583)
!3595 = !DILocation(line: 487, column: 26, scope: !3583)
!3596 = !DILocation(line: 487, column: 33, scope: !3583)
!3597 = !DILocation(line: 488, column: 28, scope: !3583)
!3598 = !DILocation(line: 488, column: 26, scope: !3583)
!3599 = !DILocation(line: 490, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3583, file: !251, line: 490, column: 17)
!3601 = !DILocation(line: 490, column: 31, scope: !3600)
!3602 = !DILocation(line: 490, column: 17, scope: !3583)
!3603 = !DILocation(line: 492, column: 21, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !251, line: 492, column: 21)
!3605 = distinct !DILexicalBlock(scope: !3600, file: !251, line: 491, column: 15)
!3606 = !DILocation(line: 492, column: 21, scope: !3605)
!3607 = !DILocation(line: 493, column: 19, scope: !3604)
!3608 = !DILocation(line: 494, column: 17, scope: !3605)
!3609 = !DILocation(line: 499, column: 17, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3583, file: !251, line: 499, column: 17)
!3611 = !DILocation(line: 499, column: 35, scope: !3610)
!3612 = !DILocation(line: 499, column: 38, scope: !3610)
!3613 = !DILocation(line: 499, column: 57, scope: !3610)
!3614 = !DILocation(line: 499, column: 60, scope: !3610)
!3615 = !DILocation(line: 499, column: 17, scope: !3583)
!3616 = !DILocation(line: 500, column: 15, scope: !3610)
!3617 = !DILabel(scope: !3583, name: "c_and_shell_escape", file: !251, line: 502)
!3618 = !DILocation(line: 502, column: 11, scope: !3583)
!3619 = !DILocation(line: 503, column: 17, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3583, file: !251, line: 503, column: 17)
!3621 = !DILocation(line: 503, column: 31, scope: !3620)
!3622 = !DILocation(line: 504, column: 17, scope: !3620)
!3623 = !DILocation(line: 504, column: 20, scope: !3620)
!3624 = !DILocation(line: 503, column: 17, scope: !3583)
!3625 = !DILocation(line: 505, column: 15, scope: !3620)
!3626 = !DILabel(scope: !3583, name: "c_escape", file: !251, line: 507)
!3627 = !DILocation(line: 507, column: 11, scope: !3583)
!3628 = !DILocation(line: 508, column: 17, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3583, file: !251, line: 508, column: 17)
!3630 = !DILocation(line: 508, column: 17, scope: !3583)
!3631 = !DILocation(line: 510, column: 21, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !251, line: 509, column: 15)
!3633 = !DILocation(line: 510, column: 19, scope: !3632)
!3634 = !DILocation(line: 511, column: 17, scope: !3632)
!3635 = !DILocation(line: 513, column: 13, scope: !3583)
!3636 = !DILocation(line: 517, column: 18, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 517, column: 15)
!3638 = !DILocation(line: 517, column: 26, scope: !3637)
!3639 = !DILocation(line: 517, column: 15, scope: !3455)
!3640 = !DILocation(line: 517, column: 40, scope: !3637)
!3641 = !DILocation(line: 517, column: 47, scope: !3637)
!3642 = !DILocation(line: 517, column: 57, scope: !3637)
!3643 = !DILocation(line: 517, column: 65, scope: !3637)
!3644 = !DILocation(line: 518, column: 13, scope: !3637)
!3645 = !DILocation(line: 517, column: 69, scope: !3637)
!3646 = !DILocation(line: 521, column: 15, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 521, column: 15)
!3648 = !DILocation(line: 521, column: 17, scope: !3647)
!3649 = !DILocation(line: 521, column: 15, scope: !3455)
!3650 = !DILocation(line: 522, column: 13, scope: !3647)
!3651 = !DILocation(line: 521, column: 20, scope: !3647)
!3652 = !DILocation(line: 525, column: 36, scope: !3455)
!3653 = !DILocation(line: 525, column: 11, scope: !3455)
!3654 = !DILocation(line: 536, column: 15, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 536, column: 15)
!3656 = !DILocation(line: 536, column: 29, scope: !3655)
!3657 = !DILocation(line: 537, column: 15, scope: !3655)
!3658 = !DILocation(line: 537, column: 18, scope: !3655)
!3659 = !DILocation(line: 536, column: 15, scope: !3455)
!3660 = !DILocation(line: 538, column: 13, scope: !3655)
!3661 = !DILocation(line: 539, column: 11, scope: !3455)
!3662 = !DILocation(line: 542, column: 36, scope: !3455)
!3663 = !DILocation(line: 543, column: 36, scope: !3455)
!3664 = !DILocation(line: 544, column: 15, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 544, column: 15)
!3666 = !DILocation(line: 544, column: 29, scope: !3665)
!3667 = !DILocation(line: 544, column: 15, scope: !3455)
!3668 = !DILocation(line: 546, column: 19, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !251, line: 546, column: 19)
!3670 = distinct !DILexicalBlock(scope: !3665, file: !251, line: 545, column: 13)
!3671 = !DILocation(line: 546, column: 19, scope: !3670)
!3672 = !DILocation(line: 547, column: 17, scope: !3669)
!3673 = !DILocation(line: 549, column: 19, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !251, line: 549, column: 19)
!3675 = !DILocation(line: 549, column: 30, scope: !3674)
!3676 = !DILocation(line: 549, column: 35, scope: !3674)
!3677 = !DILocation(line: 549, column: 19, scope: !3670)
!3678 = !DILocation(line: 554, column: 37, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !251, line: 550, column: 17)
!3680 = !DILocation(line: 554, column: 35, scope: !3679)
!3681 = !DILocation(line: 555, column: 30, scope: !3679)
!3682 = !DILocation(line: 556, column: 17, scope: !3679)
!3683 = !DILocation(line: 558, column: 15, scope: !3670)
!3684 = !DILocation(line: 558, column: 15, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !251, line: 558, column: 15)
!3686 = distinct !DILexicalBlock(scope: !3670, file: !251, line: 558, column: 15)
!3687 = !DILocation(line: 558, column: 15, scope: !3686)
!3688 = !DILocation(line: 559, column: 15, scope: !3670)
!3689 = !DILocation(line: 559, column: 15, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !251, line: 559, column: 15)
!3691 = distinct !DILexicalBlock(scope: !3670, file: !251, line: 559, column: 15)
!3692 = !DILocation(line: 559, column: 15, scope: !3691)
!3693 = !DILocation(line: 560, column: 15, scope: !3670)
!3694 = !DILocation(line: 560, column: 15, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !251, line: 560, column: 15)
!3696 = distinct !DILexicalBlock(scope: !3670, file: !251, line: 560, column: 15)
!3697 = !DILocation(line: 560, column: 15, scope: !3696)
!3698 = !DILocation(line: 561, column: 40, scope: !3670)
!3699 = !DILocation(line: 562, column: 13, scope: !3670)
!3700 = !DILocation(line: 563, column: 11, scope: !3455)
!3701 = !DILocation(line: 587, column: 36, scope: !3455)
!3702 = !DILocation(line: 588, column: 11, scope: !3455)
!3703 = !DILocalVariable(name: "m", scope: !3704, file: !251, line: 598, type: !146)
!3704 = distinct !DILexicalBlock(scope: !3455, file: !251, line: 596, column: 11)
!3705 = !DILocation(line: 598, column: 20, scope: !3704)
!3706 = !DILocalVariable(name: "printable", scope: !3704, file: !251, line: 600, type: !25)
!3707 = !DILocation(line: 600, column: 18, scope: !3704)
!3708 = !DILocation(line: 602, column: 17, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3704, file: !251, line: 602, column: 17)
!3710 = !DILocation(line: 602, column: 17, scope: !3704)
!3711 = !DILocation(line: 604, column: 19, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3709, file: !251, line: 603, column: 15)
!3713 = !DILocation(line: 605, column: 29, scope: !3712)
!3714 = !DILocation(line: 605, column: 41, scope: !3712)
!3715 = !DILocation(line: 605, column: 27, scope: !3712)
!3716 = !DILocation(line: 606, column: 15, scope: !3712)
!3717 = !DILocalVariable(name: "mbs", scope: !3718, file: !251, line: 609, type: !3719)
!3718 = distinct !DILexicalBlock(scope: !3709, file: !251, line: 608, column: 15)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !3720)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3721, file: !332, line: 15, baseType: !28, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3721, file: !332, line: 20, baseType: !3725, size: 32, offset: 32)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !332, line: 16, size: 32, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3725, file: !332, line: 18, baseType: !7, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3725, file: !332, line: 19, baseType: !341, size: 32)
!3729 = !DILocation(line: 609, column: 27, scope: !3718)
!3730 = !DILocation(line: 609, column: 32, scope: !3718)
!3731 = !DILocation(line: 611, column: 19, scope: !3718)
!3732 = !DILocation(line: 612, column: 27, scope: !3718)
!3733 = !DILocation(line: 613, column: 21, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3718, file: !251, line: 613, column: 21)
!3735 = !DILocation(line: 613, column: 29, scope: !3734)
!3736 = !DILocation(line: 613, column: 21, scope: !3718)
!3737 = !DILocation(line: 614, column: 37, scope: !3734)
!3738 = !DILocation(line: 614, column: 29, scope: !3734)
!3739 = !DILocation(line: 614, column: 27, scope: !3734)
!3740 = !DILocation(line: 614, column: 19, scope: !3734)
!3741 = !DILocation(line: 616, column: 17, scope: !3718)
!3742 = !DILocalVariable(name: "w", scope: !3743, file: !251, line: 618, type: !887)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !251, line: 617, column: 19)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !251, line: 616, column: 17)
!3745 = distinct !DILexicalBlock(scope: !3718, file: !251, line: 616, column: 17)
!3746 = !DILocation(line: 618, column: 30, scope: !3743)
!3747 = !DILocalVariable(name: "bytes", scope: !3743, file: !251, line: 619, type: !146)
!3748 = !DILocation(line: 619, column: 28, scope: !3743)
!3749 = !DILocation(line: 619, column: 51, scope: !3743)
!3750 = !DILocation(line: 619, column: 55, scope: !3743)
!3751 = !DILocation(line: 619, column: 59, scope: !3743)
!3752 = !DILocation(line: 619, column: 57, scope: !3743)
!3753 = !DILocation(line: 620, column: 46, scope: !3743)
!3754 = !DILocation(line: 620, column: 57, scope: !3743)
!3755 = !DILocation(line: 620, column: 61, scope: !3743)
!3756 = !DILocation(line: 620, column: 59, scope: !3743)
!3757 = !DILocation(line: 620, column: 54, scope: !3743)
!3758 = !DILocation(line: 619, column: 36, scope: !3743)
!3759 = !DILocation(line: 621, column: 25, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3743, file: !251, line: 621, column: 25)
!3761 = !DILocation(line: 621, column: 31, scope: !3760)
!3762 = !DILocation(line: 621, column: 25, scope: !3743)
!3763 = !DILocation(line: 622, column: 23, scope: !3760)
!3764 = !DILocation(line: 623, column: 30, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3760, file: !251, line: 623, column: 30)
!3766 = !DILocation(line: 623, column: 36, scope: !3765)
!3767 = !DILocation(line: 623, column: 30, scope: !3760)
!3768 = !DILocation(line: 625, column: 35, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !251, line: 624, column: 23)
!3770 = !DILocation(line: 626, column: 25, scope: !3769)
!3771 = !DILocation(line: 628, column: 30, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3765, file: !251, line: 628, column: 30)
!3773 = !DILocation(line: 628, column: 36, scope: !3772)
!3774 = !DILocation(line: 628, column: 30, scope: !3765)
!3775 = !DILocation(line: 630, column: 35, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !251, line: 629, column: 23)
!3777 = !DILocation(line: 631, column: 25, scope: !3776)
!3778 = !DILocation(line: 631, column: 32, scope: !3776)
!3779 = !DILocation(line: 631, column: 36, scope: !3776)
!3780 = !DILocation(line: 631, column: 34, scope: !3776)
!3781 = !DILocation(line: 631, column: 40, scope: !3776)
!3782 = !DILocation(line: 631, column: 38, scope: !3776)
!3783 = !DILocation(line: 631, column: 48, scope: !3776)
!3784 = !DILocation(line: 631, column: 51, scope: !3776)
!3785 = !DILocation(line: 631, column: 55, scope: !3776)
!3786 = !DILocation(line: 631, column: 59, scope: !3776)
!3787 = !DILocation(line: 631, column: 57, scope: !3776)
!3788 = !DILocation(line: 0, scope: !3776)
!3789 = !DILocation(line: 632, column: 28, scope: !3776)
!3790 = distinct !{!3790, !3777, !3789, !549}
!3791 = !DILocation(line: 633, column: 25, scope: !3776)
!3792 = !DILocation(line: 645, column: 44, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !251, line: 645, column: 29)
!3794 = distinct !DILexicalBlock(scope: !3772, file: !251, line: 636, column: 23)
!3795 = !DILocation(line: 646, column: 29, scope: !3793)
!3796 = !DILocation(line: 646, column: 32, scope: !3793)
!3797 = !DILocation(line: 646, column: 46, scope: !3793)
!3798 = !DILocation(line: 645, column: 29, scope: !3794)
!3799 = !DILocalVariable(name: "j", scope: !3800, file: !251, line: 648, type: !146)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !251, line: 648, column: 29)
!3801 = distinct !DILexicalBlock(scope: !3793, file: !251, line: 647, column: 27)
!3802 = !DILocation(line: 648, column: 41, scope: !3800)
!3803 = !DILocation(line: 648, column: 34, scope: !3800)
!3804 = !DILocation(line: 648, column: 48, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3800, file: !251, line: 648, column: 29)
!3806 = !DILocation(line: 648, column: 52, scope: !3805)
!3807 = !DILocation(line: 648, column: 50, scope: !3805)
!3808 = !DILocation(line: 648, column: 29, scope: !3800)
!3809 = !DILocation(line: 649, column: 39, scope: !3805)
!3810 = !DILocation(line: 649, column: 43, scope: !3805)
!3811 = !DILocation(line: 649, column: 47, scope: !3805)
!3812 = !DILocation(line: 649, column: 45, scope: !3805)
!3813 = !DILocation(line: 649, column: 51, scope: !3805)
!3814 = !DILocation(line: 649, column: 49, scope: !3805)
!3815 = !DILocation(line: 649, column: 31, scope: !3805)
!3816 = !DILocation(line: 653, column: 35, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3805, file: !251, line: 650, column: 33)
!3818 = !DILocation(line: 654, column: 33, scope: !3817)
!3819 = !DILocation(line: 648, column: 60, scope: !3805)
!3820 = !DILocation(line: 648, column: 29, scope: !3805)
!3821 = distinct !{!3821, !3808, !3822, !549}
!3822 = !DILocation(line: 654, column: 33, scope: !3800)
!3823 = !DILocation(line: 655, column: 27, scope: !3801)
!3824 = !DILocation(line: 657, column: 43, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3794, file: !251, line: 657, column: 29)
!3826 = !DILocation(line: 657, column: 31, scope: !3825)
!3827 = !DILocation(line: 657, column: 29, scope: !3794)
!3828 = !DILocation(line: 658, column: 37, scope: !3825)
!3829 = !DILocation(line: 658, column: 27, scope: !3825)
!3830 = !DILocation(line: 659, column: 30, scope: !3794)
!3831 = !DILocation(line: 659, column: 27, scope: !3794)
!3832 = !DILocation(line: 664, column: 23, scope: !3743)
!3833 = !DILocation(line: 668, column: 40, scope: !3704)
!3834 = !DILocation(line: 668, column: 38, scope: !3704)
!3835 = !DILocation(line: 670, column: 21, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3704, file: !251, line: 670, column: 17)
!3837 = !DILocation(line: 670, column: 19, scope: !3836)
!3838 = !DILocation(line: 670, column: 23, scope: !3836)
!3839 = !DILocation(line: 670, column: 27, scope: !3836)
!3840 = !DILocation(line: 670, column: 45, scope: !3836)
!3841 = !DILocation(line: 670, column: 50, scope: !3836)
!3842 = !DILocation(line: 670, column: 17, scope: !3704)
!3843 = !DILocalVariable(name: "ilim", scope: !3844, file: !251, line: 674, type: !146)
!3844 = distinct !DILexicalBlock(scope: !3836, file: !251, line: 671, column: 15)
!3845 = !DILocation(line: 674, column: 24, scope: !3844)
!3846 = !DILocation(line: 674, column: 31, scope: !3844)
!3847 = !DILocation(line: 674, column: 35, scope: !3844)
!3848 = !DILocation(line: 674, column: 33, scope: !3844)
!3849 = !DILocation(line: 676, column: 17, scope: !3844)
!3850 = !DILocation(line: 678, column: 25, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !251, line: 678, column: 25)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !251, line: 677, column: 19)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !251, line: 676, column: 17)
!3854 = distinct !DILexicalBlock(scope: !3844, file: !251, line: 676, column: 17)
!3855 = !DILocation(line: 678, column: 43, scope: !3851)
!3856 = !DILocation(line: 678, column: 48, scope: !3851)
!3857 = !DILocation(line: 678, column: 25, scope: !3852)
!3858 = !DILocation(line: 680, column: 25, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3851, file: !251, line: 679, column: 23)
!3860 = !DILocation(line: 680, column: 25, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !251, line: 680, column: 25)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !251, line: 680, column: 25)
!3863 = !DILocation(line: 680, column: 25, scope: !3862)
!3864 = !DILocation(line: 680, column: 25, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !251, line: 680, column: 25)
!3866 = !DILocation(line: 680, column: 25, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3865, file: !251, line: 680, column: 25)
!3868 = !DILocation(line: 680, column: 25, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !251, line: 680, column: 25)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !251, line: 680, column: 25)
!3871 = !DILocation(line: 680, column: 25, scope: !3870)
!3872 = !DILocation(line: 680, column: 25, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !251, line: 680, column: 25)
!3874 = distinct !DILexicalBlock(scope: !3867, file: !251, line: 680, column: 25)
!3875 = !DILocation(line: 680, column: 25, scope: !3874)
!3876 = !DILocation(line: 680, column: 25, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !251, line: 680, column: 25)
!3878 = distinct !DILexicalBlock(scope: !3867, file: !251, line: 680, column: 25)
!3879 = !DILocation(line: 680, column: 25, scope: !3878)
!3880 = !DILocation(line: 680, column: 25, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !251, line: 680, column: 25)
!3882 = distinct !DILexicalBlock(scope: !3862, file: !251, line: 680, column: 25)
!3883 = !DILocation(line: 680, column: 25, scope: !3882)
!3884 = !DILocation(line: 681, column: 25, scope: !3859)
!3885 = !DILocation(line: 681, column: 25, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !251, line: 681, column: 25)
!3887 = distinct !DILexicalBlock(scope: !3859, file: !251, line: 681, column: 25)
!3888 = !DILocation(line: 681, column: 25, scope: !3887)
!3889 = !DILocation(line: 682, column: 25, scope: !3859)
!3890 = !DILocation(line: 682, column: 25, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !251, line: 682, column: 25)
!3892 = distinct !DILexicalBlock(scope: !3859, file: !251, line: 682, column: 25)
!3893 = !DILocation(line: 682, column: 25, scope: !3892)
!3894 = !DILocation(line: 683, column: 36, scope: !3859)
!3895 = !DILocation(line: 683, column: 38, scope: !3859)
!3896 = !DILocation(line: 683, column: 33, scope: !3859)
!3897 = !DILocation(line: 683, column: 29, scope: !3859)
!3898 = !DILocation(line: 683, column: 27, scope: !3859)
!3899 = !DILocation(line: 684, column: 23, scope: !3859)
!3900 = !DILocation(line: 685, column: 30, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3851, file: !251, line: 685, column: 30)
!3902 = !DILocation(line: 685, column: 30, scope: !3851)
!3903 = !DILocation(line: 687, column: 25, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3901, file: !251, line: 686, column: 23)
!3905 = !DILocation(line: 687, column: 25, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !251, line: 687, column: 25)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !251, line: 687, column: 25)
!3908 = !DILocation(line: 687, column: 25, scope: !3907)
!3909 = !DILocation(line: 688, column: 40, scope: !3904)
!3910 = !DILocation(line: 689, column: 23, scope: !3904)
!3911 = !DILocation(line: 690, column: 25, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3852, file: !251, line: 690, column: 25)
!3913 = !DILocation(line: 690, column: 33, scope: !3912)
!3914 = !DILocation(line: 690, column: 35, scope: !3912)
!3915 = !DILocation(line: 690, column: 30, scope: !3912)
!3916 = !DILocation(line: 690, column: 25, scope: !3852)
!3917 = !DILocation(line: 691, column: 23, scope: !3912)
!3918 = !DILocation(line: 692, column: 21, scope: !3852)
!3919 = !DILocation(line: 692, column: 21, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !251, line: 692, column: 21)
!3921 = distinct !DILexicalBlock(scope: !3852, file: !251, line: 692, column: 21)
!3922 = !DILocation(line: 692, column: 21, scope: !3921)
!3923 = !DILocation(line: 692, column: 21, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3920, file: !251, line: 692, column: 21)
!3925 = !DILocation(line: 692, column: 21, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !251, line: 692, column: 21)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !251, line: 692, column: 21)
!3928 = !DILocation(line: 692, column: 21, scope: !3927)
!3929 = !DILocation(line: 692, column: 21, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !251, line: 692, column: 21)
!3931 = distinct !DILexicalBlock(scope: !3924, file: !251, line: 692, column: 21)
!3932 = !DILocation(line: 692, column: 21, scope: !3931)
!3933 = !DILocation(line: 693, column: 21, scope: !3852)
!3934 = !DILocation(line: 693, column: 21, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !251, line: 693, column: 21)
!3936 = distinct !DILexicalBlock(scope: !3852, file: !251, line: 693, column: 21)
!3937 = !DILocation(line: 693, column: 21, scope: !3936)
!3938 = !DILocation(line: 694, column: 25, scope: !3852)
!3939 = !DILocation(line: 694, column: 29, scope: !3852)
!3940 = !DILocation(line: 694, column: 23, scope: !3852)
!3941 = !DILocation(line: 676, column: 17, scope: !3853)
!3942 = distinct !{!3942, !3943, !3944}
!3943 = !DILocation(line: 676, column: 17, scope: !3854)
!3944 = !DILocation(line: 695, column: 19, scope: !3854)
!3945 = !DILocation(line: 697, column: 17, scope: !3844)
!3946 = !DILocation(line: 700, column: 9, scope: !3455)
!3947 = !DILocation(line: 702, column: 16, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 702, column: 11)
!3949 = !DILocation(line: 702, column: 34, scope: !3948)
!3950 = !DILocation(line: 702, column: 37, scope: !3948)
!3951 = !DILocation(line: 702, column: 51, scope: !3948)
!3952 = !DILocation(line: 703, column: 15, scope: !3948)
!3953 = !DILocation(line: 703, column: 18, scope: !3948)
!3954 = !DILocation(line: 704, column: 14, scope: !3948)
!3955 = !DILocation(line: 704, column: 17, scope: !3948)
!3956 = !DILocation(line: 705, column: 14, scope: !3948)
!3957 = !DILocation(line: 705, column: 17, scope: !3948)
!3958 = !DILocation(line: 705, column: 33, scope: !3948)
!3959 = !DILocation(line: 705, column: 35, scope: !3948)
!3960 = !DILocation(line: 705, column: 51, scope: !3948)
!3961 = !DILocation(line: 705, column: 53, scope: !3948)
!3962 = !DILocation(line: 705, column: 47, scope: !3948)
!3963 = !DILocation(line: 705, column: 65, scope: !3948)
!3964 = !DILocation(line: 706, column: 11, scope: !3948)
!3965 = !DILocation(line: 706, column: 15, scope: !3948)
!3966 = !DILocation(line: 702, column: 11, scope: !3405)
!3967 = !DILocation(line: 707, column: 9, scope: !3948)
!3968 = !DILabel(scope: !3405, name: "store_escape", file: !251, line: 709)
!3969 = !DILocation(line: 709, column: 5, scope: !3405)
!3970 = !DILocation(line: 710, column: 7, scope: !3405)
!3971 = !DILocation(line: 710, column: 7, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !251, line: 710, column: 7)
!3973 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 710, column: 7)
!3974 = !DILocation(line: 710, column: 7, scope: !3973)
!3975 = !DILocation(line: 710, column: 7, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !251, line: 710, column: 7)
!3977 = !DILocation(line: 710, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3976, file: !251, line: 710, column: 7)
!3979 = !DILocation(line: 710, column: 7, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !251, line: 710, column: 7)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !251, line: 710, column: 7)
!3982 = !DILocation(line: 710, column: 7, scope: !3981)
!3983 = !DILocation(line: 710, column: 7, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !251, line: 710, column: 7)
!3985 = distinct !DILexicalBlock(scope: !3978, file: !251, line: 710, column: 7)
!3986 = !DILocation(line: 710, column: 7, scope: !3985)
!3987 = !DILocation(line: 710, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !251, line: 710, column: 7)
!3989 = distinct !DILexicalBlock(scope: !3978, file: !251, line: 710, column: 7)
!3990 = !DILocation(line: 710, column: 7, scope: !3989)
!3991 = !DILocation(line: 710, column: 7, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !251, line: 710, column: 7)
!3993 = distinct !DILexicalBlock(scope: !3973, file: !251, line: 710, column: 7)
!3994 = !DILocation(line: 710, column: 7, scope: !3993)
!3995 = !DILabel(scope: !3405, name: "store_c", file: !251, line: 712)
!3996 = !DILocation(line: 712, column: 5, scope: !3405)
!3997 = !DILocation(line: 713, column: 7, scope: !3405)
!3998 = !DILocation(line: 713, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !251, line: 713, column: 7)
!4000 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 713, column: 7)
!4001 = !DILocation(line: 713, column: 7, scope: !4000)
!4002 = !DILocation(line: 713, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !251, line: 713, column: 7)
!4004 = !DILocation(line: 713, column: 7, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !251, line: 713, column: 7)
!4006 = distinct !DILexicalBlock(scope: !4003, file: !251, line: 713, column: 7)
!4007 = !DILocation(line: 713, column: 7, scope: !4006)
!4008 = !DILocation(line: 713, column: 7, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !251, line: 713, column: 7)
!4010 = distinct !DILexicalBlock(scope: !4003, file: !251, line: 713, column: 7)
!4011 = !DILocation(line: 713, column: 7, scope: !4010)
!4012 = !DILocation(line: 714, column: 7, scope: !3405)
!4013 = !DILocation(line: 714, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !251, line: 714, column: 7)
!4015 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 714, column: 7)
!4016 = !DILocation(line: 714, column: 7, scope: !4015)
!4017 = !DILocation(line: 716, column: 13, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3405, file: !251, line: 716, column: 11)
!4019 = !DILocation(line: 716, column: 11, scope: !3405)
!4020 = !DILocation(line: 717, column: 38, scope: !4018)
!4021 = !DILocation(line: 717, column: 9, scope: !4018)
!4022 = !DILocation(line: 718, column: 5, scope: !3405)
!4023 = !DILocation(line: 395, column: 82, scope: !3394)
!4024 = !DILocation(line: 395, column: 3, scope: !3394)
!4025 = distinct !{!4025, !3403, !4026, !549}
!4026 = !DILocation(line: 718, column: 5, scope: !3390)
!4027 = !DILocation(line: 720, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 720, column: 7)
!4029 = !DILocation(line: 720, column: 11, scope: !4028)
!4030 = !DILocation(line: 720, column: 16, scope: !4028)
!4031 = !DILocation(line: 720, column: 19, scope: !4028)
!4032 = !DILocation(line: 720, column: 33, scope: !4028)
!4033 = !DILocation(line: 721, column: 7, scope: !4028)
!4034 = !DILocation(line: 721, column: 10, scope: !4028)
!4035 = !DILocation(line: 720, column: 7, scope: !3252)
!4036 = !DILocation(line: 722, column: 5, scope: !4028)
!4037 = !DILocation(line: 728, column: 7, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 728, column: 7)
!4039 = !DILocation(line: 728, column: 21, scope: !4038)
!4040 = !DILocation(line: 728, column: 51, scope: !4038)
!4041 = !DILocation(line: 728, column: 56, scope: !4038)
!4042 = !DILocation(line: 729, column: 7, scope: !4038)
!4043 = !DILocation(line: 729, column: 10, scope: !4038)
!4044 = !DILocation(line: 728, column: 7, scope: !3252)
!4045 = !DILocation(line: 731, column: 11, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !251, line: 731, column: 11)
!4047 = distinct !DILexicalBlock(scope: !4038, file: !251, line: 730, column: 5)
!4048 = !DILocation(line: 731, column: 11, scope: !4047)
!4049 = !DILocation(line: 732, column: 42, scope: !4046)
!4050 = !DILocation(line: 732, column: 50, scope: !4046)
!4051 = !DILocation(line: 732, column: 67, scope: !4046)
!4052 = !DILocation(line: 732, column: 72, scope: !4046)
!4053 = !DILocation(line: 734, column: 42, scope: !4046)
!4054 = !DILocation(line: 734, column: 49, scope: !4046)
!4055 = !DILocation(line: 735, column: 42, scope: !4046)
!4056 = !DILocation(line: 735, column: 54, scope: !4046)
!4057 = !DILocation(line: 732, column: 16, scope: !4046)
!4058 = !DILocation(line: 732, column: 9, scope: !4046)
!4059 = !DILocation(line: 736, column: 18, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4046, file: !251, line: 736, column: 16)
!4061 = !DILocation(line: 736, column: 29, scope: !4060)
!4062 = !DILocation(line: 736, column: 32, scope: !4060)
!4063 = !DILocation(line: 736, column: 16, scope: !4046)
!4064 = !DILocation(line: 739, column: 24, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !251, line: 737, column: 9)
!4066 = !DILocation(line: 739, column: 22, scope: !4065)
!4067 = !DILocation(line: 740, column: 15, scope: !4065)
!4068 = !DILocation(line: 741, column: 11, scope: !4065)
!4069 = !DILocation(line: 743, column: 5, scope: !4047)
!4070 = !DILocation(line: 745, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 745, column: 7)
!4072 = !DILocation(line: 745, column: 20, scope: !4071)
!4073 = !DILocation(line: 745, column: 24, scope: !4071)
!4074 = !DILocation(line: 745, column: 7, scope: !3252)
!4075 = !DILocation(line: 746, column: 5, scope: !4071)
!4076 = !DILocation(line: 746, column: 13, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !251, line: 746, column: 5)
!4078 = distinct !DILexicalBlock(scope: !4071, file: !251, line: 746, column: 5)
!4079 = !DILocation(line: 746, column: 12, scope: !4077)
!4080 = !DILocation(line: 746, column: 5, scope: !4078)
!4081 = !DILocation(line: 747, column: 7, scope: !4077)
!4082 = !DILocation(line: 747, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !251, line: 747, column: 7)
!4084 = distinct !DILexicalBlock(scope: !4077, file: !251, line: 747, column: 7)
!4085 = !DILocation(line: 747, column: 7, scope: !4084)
!4086 = !DILocation(line: 746, column: 39, scope: !4077)
!4087 = !DILocation(line: 746, column: 5, scope: !4077)
!4088 = distinct !{!4088, !4080, !4089, !549}
!4089 = !DILocation(line: 747, column: 7, scope: !4078)
!4090 = !DILocation(line: 749, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 749, column: 7)
!4092 = !DILocation(line: 749, column: 13, scope: !4091)
!4093 = !DILocation(line: 749, column: 11, scope: !4091)
!4094 = !DILocation(line: 749, column: 7, scope: !3252)
!4095 = !DILocation(line: 750, column: 5, scope: !4091)
!4096 = !DILocation(line: 750, column: 12, scope: !4091)
!4097 = !DILocation(line: 750, column: 17, scope: !4091)
!4098 = !DILocation(line: 751, column: 10, scope: !3252)
!4099 = !DILocation(line: 751, column: 3, scope: !3252)
!4100 = !DILabel(scope: !3252, name: "force_outer_quoting_style", file: !251, line: 753)
!4101 = !DILocation(line: 753, column: 2, scope: !3252)
!4102 = !DILocation(line: 756, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !3252, file: !251, line: 756, column: 7)
!4104 = !DILocation(line: 756, column: 21, scope: !4103)
!4105 = !DILocation(line: 756, column: 51, scope: !4103)
!4106 = !DILocation(line: 756, column: 54, scope: !4103)
!4107 = !DILocation(line: 756, column: 7, scope: !3252)
!4108 = !DILocation(line: 757, column: 19, scope: !4103)
!4109 = !DILocation(line: 757, column: 5, scope: !4103)
!4110 = !DILocation(line: 758, column: 36, scope: !3252)
!4111 = !DILocation(line: 758, column: 44, scope: !3252)
!4112 = !DILocation(line: 758, column: 56, scope: !3252)
!4113 = !DILocation(line: 758, column: 61, scope: !3252)
!4114 = !DILocation(line: 759, column: 36, scope: !3252)
!4115 = !DILocation(line: 760, column: 36, scope: !3252)
!4116 = !DILocation(line: 760, column: 42, scope: !3252)
!4117 = !DILocation(line: 761, column: 36, scope: !3252)
!4118 = !DILocation(line: 761, column: 48, scope: !3252)
!4119 = !DILocation(line: 758, column: 10, scope: !3252)
!4120 = !DILocation(line: 758, column: 3, scope: !3252)
!4121 = !DILocation(line: 762, column: 1, scope: !3252)
!4122 = !DILocalVariable(name: "msgid", arg: 1, scope: !287, file: !251, line: 197, type: !37)
!4123 = !DILocation(line: 197, column: 28, scope: !287)
!4124 = !DILocalVariable(name: "s", arg: 2, scope: !287, file: !251, line: 197, type: !65)
!4125 = !DILocation(line: 197, column: 54, scope: !287)
!4126 = !DILocalVariable(name: "translation", scope: !287, file: !251, line: 199, type: !37)
!4127 = !DILocation(line: 199, column: 15, scope: !287)
!4128 = !DILocation(line: 199, column: 29, scope: !287)
!4129 = !DILocation(line: 201, column: 7, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !287, file: !251, line: 201, column: 7)
!4131 = !DILocation(line: 201, column: 22, scope: !4130)
!4132 = !DILocation(line: 201, column: 19, scope: !4130)
!4133 = !DILocation(line: 201, column: 7, scope: !287)
!4134 = !DILocation(line: 202, column: 12, scope: !4130)
!4135 = !DILocation(line: 202, column: 5, scope: !4130)
!4136 = !DILocalVariable(name: "w", scope: !287, file: !251, line: 229, type: !887)
!4137 = !DILocation(line: 229, column: 12, scope: !287)
!4138 = !DILocalVariable(name: "mbs", scope: !287, file: !251, line: 230, type: !3719)
!4139 = !DILocation(line: 230, column: 13, scope: !287)
!4140 = !DILocation(line: 230, column: 18, scope: !287)
!4141 = !DILocation(line: 231, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !287, file: !251, line: 231, column: 7)
!4143 = !DILocation(line: 231, column: 40, scope: !4142)
!4144 = !DILocation(line: 231, column: 45, scope: !4142)
!4145 = !DILocation(line: 231, column: 48, scope: !4142)
!4146 = !DILocation(line: 231, column: 50, scope: !4142)
!4147 = !DILocation(line: 231, column: 7, scope: !287)
!4148 = !DILocation(line: 232, column: 18, scope: !4142)
!4149 = !DILocation(line: 232, column: 27, scope: !4142)
!4150 = !DILocation(line: 232, column: 12, scope: !4142)
!4151 = !DILocation(line: 232, column: 5, scope: !4142)
!4152 = !DILocation(line: 234, column: 11, scope: !287)
!4153 = !DILocation(line: 234, column: 13, scope: !287)
!4154 = !DILocation(line: 234, column: 3, scope: !287)
!4155 = !DILocation(line: 235, column: 1, scope: !287)
!4156 = distinct !DISubprogram(name: "quotearg_alloc", scope: !251, file: !251, line: 788, type: !4157, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!22, !37, !146, !3092}
!4159 = !DILocalVariable(name: "arg", arg: 1, scope: !4156, file: !251, line: 788, type: !37)
!4160 = !DILocation(line: 788, column: 29, scope: !4156)
!4161 = !DILocalVariable(name: "argsize", arg: 2, scope: !4156, file: !251, line: 788, type: !146)
!4162 = !DILocation(line: 788, column: 41, scope: !4156)
!4163 = !DILocalVariable(name: "o", arg: 3, scope: !4156, file: !251, line: 789, type: !3092)
!4164 = !DILocation(line: 789, column: 47, scope: !4156)
!4165 = !DILocation(line: 791, column: 30, scope: !4156)
!4166 = !DILocation(line: 791, column: 35, scope: !4156)
!4167 = !DILocation(line: 791, column: 50, scope: !4156)
!4168 = !DILocation(line: 791, column: 10, scope: !4156)
!4169 = !DILocation(line: 791, column: 3, scope: !4156)
!4170 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !251, file: !251, line: 801, type: !4171, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!22, !37, !146, !398, !3092}
!4173 = !DILocalVariable(name: "arg", arg: 1, scope: !4170, file: !251, line: 801, type: !37)
!4174 = !DILocation(line: 801, column: 33, scope: !4170)
!4175 = !DILocalVariable(name: "argsize", arg: 2, scope: !4170, file: !251, line: 801, type: !146)
!4176 = !DILocation(line: 801, column: 45, scope: !4170)
!4177 = !DILocalVariable(name: "size", arg: 3, scope: !4170, file: !251, line: 801, type: !398)
!4178 = !DILocation(line: 801, column: 62, scope: !4170)
!4179 = !DILocalVariable(name: "o", arg: 4, scope: !4170, file: !251, line: 802, type: !3092)
!4180 = !DILocation(line: 802, column: 51, scope: !4170)
!4181 = !DILocalVariable(name: "p", scope: !4170, file: !251, line: 804, type: !3092)
!4182 = !DILocation(line: 804, column: 33, scope: !4170)
!4183 = !DILocation(line: 804, column: 37, scope: !4170)
!4184 = !DILocation(line: 804, column: 41, scope: !4170)
!4185 = !DILocalVariable(name: "saved_errno", scope: !4170, file: !251, line: 805, type: !28)
!4186 = !DILocation(line: 805, column: 7, scope: !4170)
!4187 = !DILocation(line: 805, column: 21, scope: !4170)
!4188 = !DILocalVariable(name: "flags", scope: !4170, file: !251, line: 807, type: !28)
!4189 = !DILocation(line: 807, column: 7, scope: !4170)
!4190 = !DILocation(line: 807, column: 15, scope: !4170)
!4191 = !DILocation(line: 807, column: 18, scope: !4170)
!4192 = !DILocation(line: 807, column: 27, scope: !4170)
!4193 = !DILocation(line: 807, column: 24, scope: !4170)
!4194 = !DILocalVariable(name: "bufsize", scope: !4170, file: !251, line: 808, type: !146)
!4195 = !DILocation(line: 808, column: 10, scope: !4170)
!4196 = !DILocation(line: 808, column: 55, scope: !4170)
!4197 = !DILocation(line: 808, column: 60, scope: !4170)
!4198 = !DILocation(line: 808, column: 69, scope: !4170)
!4199 = !DILocation(line: 808, column: 72, scope: !4170)
!4200 = !DILocation(line: 809, column: 46, scope: !4170)
!4201 = !DILocation(line: 809, column: 53, scope: !4170)
!4202 = !DILocation(line: 809, column: 56, scope: !4170)
!4203 = !DILocation(line: 810, column: 46, scope: !4170)
!4204 = !DILocation(line: 810, column: 49, scope: !4170)
!4205 = !DILocation(line: 811, column: 46, scope: !4170)
!4206 = !DILocation(line: 811, column: 49, scope: !4170)
!4207 = !DILocation(line: 808, column: 20, scope: !4170)
!4208 = !DILocation(line: 811, column: 62, scope: !4170)
!4209 = !DILocalVariable(name: "buf", scope: !4170, file: !251, line: 812, type: !22)
!4210 = !DILocation(line: 812, column: 9, scope: !4170)
!4211 = !DILocation(line: 812, column: 27, scope: !4170)
!4212 = !DILocation(line: 812, column: 15, scope: !4170)
!4213 = !DILocation(line: 813, column: 29, scope: !4170)
!4214 = !DILocation(line: 813, column: 34, scope: !4170)
!4215 = !DILocation(line: 813, column: 43, scope: !4170)
!4216 = !DILocation(line: 813, column: 48, scope: !4170)
!4217 = !DILocation(line: 813, column: 57, scope: !4170)
!4218 = !DILocation(line: 813, column: 60, scope: !4170)
!4219 = !DILocation(line: 813, column: 67, scope: !4170)
!4220 = !DILocation(line: 814, column: 29, scope: !4170)
!4221 = !DILocation(line: 814, column: 32, scope: !4170)
!4222 = !DILocation(line: 815, column: 29, scope: !4170)
!4223 = !DILocation(line: 815, column: 32, scope: !4170)
!4224 = !DILocation(line: 815, column: 44, scope: !4170)
!4225 = !DILocation(line: 815, column: 47, scope: !4170)
!4226 = !DILocation(line: 813, column: 3, scope: !4170)
!4227 = !DILocation(line: 816, column: 11, scope: !4170)
!4228 = !DILocation(line: 816, column: 3, scope: !4170)
!4229 = !DILocation(line: 816, column: 9, scope: !4170)
!4230 = !DILocation(line: 817, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4170, file: !251, line: 817, column: 7)
!4232 = !DILocation(line: 817, column: 7, scope: !4170)
!4233 = !DILocation(line: 818, column: 13, scope: !4231)
!4234 = !DILocation(line: 818, column: 21, scope: !4231)
!4235 = !DILocation(line: 818, column: 6, scope: !4231)
!4236 = !DILocation(line: 818, column: 11, scope: !4231)
!4237 = !DILocation(line: 818, column: 5, scope: !4231)
!4238 = !DILocation(line: 819, column: 10, scope: !4170)
!4239 = !DILocation(line: 819, column: 3, scope: !4170)
!4240 = distinct !DISubprogram(name: "quotearg_free", scope: !251, file: !251, line: 837, type: !43, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4241 = !DILocalVariable(name: "sv", scope: !4240, file: !251, line: 839, type: !295)
!4242 = !DILocation(line: 839, column: 19, scope: !4240)
!4243 = !DILocation(line: 839, column: 24, scope: !4240)
!4244 = !DILocalVariable(name: "i", scope: !4245, file: !251, line: 840, type: !28)
!4245 = distinct !DILexicalBlock(scope: !4240, file: !251, line: 840, column: 3)
!4246 = !DILocation(line: 840, column: 12, scope: !4245)
!4247 = !DILocation(line: 840, column: 8, scope: !4245)
!4248 = !DILocation(line: 840, column: 19, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4245, file: !251, line: 840, column: 3)
!4250 = !DILocation(line: 840, column: 23, scope: !4249)
!4251 = !DILocation(line: 840, column: 21, scope: !4249)
!4252 = !DILocation(line: 840, column: 3, scope: !4245)
!4253 = !DILocation(line: 841, column: 11, scope: !4249)
!4254 = !DILocation(line: 841, column: 14, scope: !4249)
!4255 = !DILocation(line: 841, column: 17, scope: !4249)
!4256 = !DILocation(line: 841, column: 5, scope: !4249)
!4257 = !DILocation(line: 840, column: 32, scope: !4249)
!4258 = !DILocation(line: 840, column: 3, scope: !4249)
!4259 = distinct !{!4259, !4252, !4260, !549}
!4260 = !DILocation(line: 841, column: 20, scope: !4245)
!4261 = !DILocation(line: 842, column: 7, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4240, file: !251, line: 842, column: 7)
!4263 = !DILocation(line: 842, column: 13, scope: !4262)
!4264 = !DILocation(line: 842, column: 17, scope: !4262)
!4265 = !DILocation(line: 842, column: 7, scope: !4240)
!4266 = !DILocation(line: 844, column: 13, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4262, file: !251, line: 843, column: 5)
!4268 = !DILocation(line: 844, column: 19, scope: !4267)
!4269 = !DILocation(line: 844, column: 7, scope: !4267)
!4270 = !DILocation(line: 845, column: 21, scope: !4267)
!4271 = !DILocation(line: 846, column: 20, scope: !4267)
!4272 = !DILocation(line: 847, column: 5, scope: !4267)
!4273 = !DILocation(line: 848, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4240, file: !251, line: 848, column: 7)
!4275 = !DILocation(line: 848, column: 10, scope: !4274)
!4276 = !DILocation(line: 848, column: 7, scope: !4240)
!4277 = !DILocation(line: 850, column: 13, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !251, line: 849, column: 5)
!4279 = !DILocation(line: 850, column: 7, scope: !4278)
!4280 = !DILocation(line: 851, column: 15, scope: !4278)
!4281 = !DILocation(line: 852, column: 5, scope: !4278)
!4282 = !DILocation(line: 853, column: 10, scope: !4240)
!4283 = !DILocation(line: 854, column: 1, scope: !4240)
!4284 = distinct !DISubprogram(name: "quotearg_n", scope: !251, file: !251, line: 919, type: !4285, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!22, !28, !37}
!4287 = !DILocalVariable(name: "n", arg: 1, scope: !4284, file: !251, line: 919, type: !28)
!4288 = !DILocation(line: 919, column: 17, scope: !4284)
!4289 = !DILocalVariable(name: "arg", arg: 2, scope: !4284, file: !251, line: 919, type: !37)
!4290 = !DILocation(line: 919, column: 32, scope: !4284)
!4291 = !DILocation(line: 921, column: 30, scope: !4284)
!4292 = !DILocation(line: 921, column: 33, scope: !4284)
!4293 = !DILocation(line: 921, column: 10, scope: !4284)
!4294 = !DILocation(line: 921, column: 3, scope: !4284)
!4295 = distinct !DISubprogram(name: "quotearg_n_options", scope: !251, file: !251, line: 866, type: !4296, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!22, !28, !37, !146, !3092}
!4298 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !251, line: 866, type: !28)
!4299 = !DILocation(line: 866, column: 25, scope: !4295)
!4300 = !DILocalVariable(name: "arg", arg: 2, scope: !4295, file: !251, line: 866, type: !37)
!4301 = !DILocation(line: 866, column: 40, scope: !4295)
!4302 = !DILocalVariable(name: "argsize", arg: 3, scope: !4295, file: !251, line: 866, type: !146)
!4303 = !DILocation(line: 866, column: 52, scope: !4295)
!4304 = !DILocalVariable(name: "options", arg: 4, scope: !4295, file: !251, line: 867, type: !3092)
!4305 = !DILocation(line: 867, column: 51, scope: !4295)
!4306 = !DILocalVariable(name: "saved_errno", scope: !4295, file: !251, line: 869, type: !28)
!4307 = !DILocation(line: 869, column: 7, scope: !4295)
!4308 = !DILocation(line: 869, column: 21, scope: !4295)
!4309 = !DILocalVariable(name: "sv", scope: !4295, file: !251, line: 871, type: !295)
!4310 = !DILocation(line: 871, column: 19, scope: !4295)
!4311 = !DILocation(line: 871, column: 24, scope: !4295)
!4312 = !DILocalVariable(name: "nslots_max", scope: !4295, file: !251, line: 873, type: !28)
!4313 = !DILocation(line: 873, column: 7, scope: !4295)
!4314 = !DILocation(line: 874, column: 15, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4295, file: !251, line: 874, column: 7)
!4316 = !DILocation(line: 874, column: 12, scope: !4315)
!4317 = !DILocation(line: 874, column: 17, scope: !4315)
!4318 = !DILocation(line: 874, column: 20, scope: !4315)
!4319 = !DILocation(line: 874, column: 24, scope: !4315)
!4320 = !DILocation(line: 874, column: 22, scope: !4315)
!4321 = !DILocation(line: 874, column: 7, scope: !4295)
!4322 = !DILocation(line: 875, column: 5, scope: !4315)
!4323 = !DILocation(line: 877, column: 7, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4295, file: !251, line: 877, column: 7)
!4325 = !DILocation(line: 877, column: 17, scope: !4324)
!4326 = !DILocation(line: 877, column: 14, scope: !4324)
!4327 = !DILocation(line: 877, column: 7, scope: !4295)
!4328 = !DILocalVariable(name: "preallocated", scope: !4329, file: !251, line: 879, type: !25)
!4329 = distinct !DILexicalBlock(scope: !4324, file: !251, line: 878, column: 5)
!4330 = !DILocation(line: 879, column: 12, scope: !4329)
!4331 = !DILocation(line: 879, column: 28, scope: !4329)
!4332 = !DILocation(line: 879, column: 31, scope: !4329)
!4333 = !DILocalVariable(name: "new_nslots", scope: !4329, file: !251, line: 880, type: !155)
!4334 = !DILocation(line: 880, column: 13, scope: !4329)
!4335 = !DILocation(line: 880, column: 26, scope: !4329)
!4336 = !DILocation(line: 882, column: 31, scope: !4329)
!4337 = !DILocation(line: 882, column: 53, scope: !4329)
!4338 = !DILocation(line: 883, column: 31, scope: !4329)
!4339 = !DILocation(line: 883, column: 35, scope: !4329)
!4340 = !DILocation(line: 883, column: 33, scope: !4329)
!4341 = !DILocation(line: 883, column: 42, scope: !4329)
!4342 = !DILocation(line: 883, column: 47, scope: !4329)
!4343 = !DILocation(line: 882, column: 22, scope: !4329)
!4344 = !DILocation(line: 882, column: 20, scope: !4329)
!4345 = !DILocation(line: 882, column: 15, scope: !4329)
!4346 = !DILocation(line: 884, column: 11, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4329, file: !251, line: 884, column: 11)
!4348 = !DILocation(line: 884, column: 11, scope: !4329)
!4349 = !DILocation(line: 885, column: 10, scope: !4347)
!4350 = !DILocation(line: 885, column: 15, scope: !4347)
!4351 = !DILocation(line: 885, column: 9, scope: !4347)
!4352 = !DILocation(line: 886, column: 15, scope: !4329)
!4353 = !DILocation(line: 886, column: 20, scope: !4329)
!4354 = !DILocation(line: 886, column: 18, scope: !4329)
!4355 = !DILocation(line: 886, column: 7, scope: !4329)
!4356 = !DILocation(line: 886, column: 32, scope: !4329)
!4357 = !DILocation(line: 886, column: 45, scope: !4329)
!4358 = !DILocation(line: 886, column: 43, scope: !4329)
!4359 = !DILocation(line: 886, column: 53, scope: !4329)
!4360 = !DILocation(line: 887, column: 16, scope: !4329)
!4361 = !DILocation(line: 887, column: 14, scope: !4329)
!4362 = !DILocation(line: 888, column: 5, scope: !4329)
!4363 = !DILocalVariable(name: "size", scope: !4364, file: !251, line: 891, type: !146)
!4364 = distinct !DILexicalBlock(scope: !4295, file: !251, line: 890, column: 3)
!4365 = !DILocation(line: 891, column: 12, scope: !4364)
!4366 = !DILocation(line: 891, column: 19, scope: !4364)
!4367 = !DILocation(line: 891, column: 22, scope: !4364)
!4368 = !DILocation(line: 891, column: 25, scope: !4364)
!4369 = !DILocalVariable(name: "val", scope: !4364, file: !251, line: 892, type: !22)
!4370 = !DILocation(line: 892, column: 11, scope: !4364)
!4371 = !DILocation(line: 892, column: 17, scope: !4364)
!4372 = !DILocation(line: 892, column: 20, scope: !4364)
!4373 = !DILocation(line: 892, column: 23, scope: !4364)
!4374 = !DILocalVariable(name: "flags", scope: !4364, file: !251, line: 894, type: !28)
!4375 = !DILocation(line: 894, column: 9, scope: !4364)
!4376 = !DILocation(line: 894, column: 17, scope: !4364)
!4377 = !DILocation(line: 894, column: 26, scope: !4364)
!4378 = !DILocation(line: 894, column: 32, scope: !4364)
!4379 = !DILocalVariable(name: "qsize", scope: !4364, file: !251, line: 895, type: !146)
!4380 = !DILocation(line: 895, column: 12, scope: !4364)
!4381 = !DILocation(line: 895, column: 46, scope: !4364)
!4382 = !DILocation(line: 895, column: 51, scope: !4364)
!4383 = !DILocation(line: 895, column: 57, scope: !4364)
!4384 = !DILocation(line: 895, column: 62, scope: !4364)
!4385 = !DILocation(line: 896, column: 46, scope: !4364)
!4386 = !DILocation(line: 896, column: 55, scope: !4364)
!4387 = !DILocation(line: 896, column: 62, scope: !4364)
!4388 = !DILocation(line: 897, column: 46, scope: !4364)
!4389 = !DILocation(line: 897, column: 55, scope: !4364)
!4390 = !DILocation(line: 898, column: 46, scope: !4364)
!4391 = !DILocation(line: 898, column: 55, scope: !4364)
!4392 = !DILocation(line: 899, column: 46, scope: !4364)
!4393 = !DILocation(line: 899, column: 55, scope: !4364)
!4394 = !DILocation(line: 895, column: 20, scope: !4364)
!4395 = !DILocation(line: 901, column: 9, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4364, file: !251, line: 901, column: 9)
!4397 = !DILocation(line: 901, column: 17, scope: !4396)
!4398 = !DILocation(line: 901, column: 14, scope: !4396)
!4399 = !DILocation(line: 901, column: 9, scope: !4364)
!4400 = !DILocation(line: 903, column: 29, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4396, file: !251, line: 902, column: 7)
!4402 = !DILocation(line: 903, column: 35, scope: !4401)
!4403 = !DILocation(line: 903, column: 27, scope: !4401)
!4404 = !DILocation(line: 903, column: 9, scope: !4401)
!4405 = !DILocation(line: 903, column: 12, scope: !4401)
!4406 = !DILocation(line: 903, column: 15, scope: !4401)
!4407 = !DILocation(line: 903, column: 20, scope: !4401)
!4408 = !DILocation(line: 904, column: 13, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4401, file: !251, line: 904, column: 13)
!4410 = !DILocation(line: 904, column: 17, scope: !4409)
!4411 = !DILocation(line: 904, column: 13, scope: !4401)
!4412 = !DILocation(line: 905, column: 17, scope: !4409)
!4413 = !DILocation(line: 905, column: 11, scope: !4409)
!4414 = !DILocation(line: 906, column: 39, scope: !4401)
!4415 = !DILocation(line: 906, column: 27, scope: !4401)
!4416 = !DILocation(line: 906, column: 25, scope: !4401)
!4417 = !DILocation(line: 906, column: 9, scope: !4401)
!4418 = !DILocation(line: 906, column: 12, scope: !4401)
!4419 = !DILocation(line: 906, column: 15, scope: !4401)
!4420 = !DILocation(line: 906, column: 19, scope: !4401)
!4421 = !DILocation(line: 907, column: 35, scope: !4401)
!4422 = !DILocation(line: 907, column: 40, scope: !4401)
!4423 = !DILocation(line: 907, column: 46, scope: !4401)
!4424 = !DILocation(line: 907, column: 51, scope: !4401)
!4425 = !DILocation(line: 907, column: 60, scope: !4401)
!4426 = !DILocation(line: 907, column: 69, scope: !4401)
!4427 = !DILocation(line: 908, column: 35, scope: !4401)
!4428 = !DILocation(line: 908, column: 42, scope: !4401)
!4429 = !DILocation(line: 908, column: 51, scope: !4401)
!4430 = !DILocation(line: 909, column: 35, scope: !4401)
!4431 = !DILocation(line: 909, column: 44, scope: !4401)
!4432 = !DILocation(line: 910, column: 35, scope: !4401)
!4433 = !DILocation(line: 910, column: 44, scope: !4401)
!4434 = !DILocation(line: 907, column: 9, scope: !4401)
!4435 = !DILocation(line: 911, column: 7, scope: !4401)
!4436 = !DILocation(line: 913, column: 13, scope: !4364)
!4437 = !DILocation(line: 913, column: 5, scope: !4364)
!4438 = !DILocation(line: 913, column: 11, scope: !4364)
!4439 = !DILocation(line: 914, column: 12, scope: !4364)
!4440 = !DILocation(line: 914, column: 5, scope: !4364)
!4441 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !251, file: !251, line: 925, type: !4442, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!22, !28, !37, !146}
!4444 = !DILocalVariable(name: "n", arg: 1, scope: !4441, file: !251, line: 925, type: !28)
!4445 = !DILocation(line: 925, column: 21, scope: !4441)
!4446 = !DILocalVariable(name: "arg", arg: 2, scope: !4441, file: !251, line: 925, type: !37)
!4447 = !DILocation(line: 925, column: 36, scope: !4441)
!4448 = !DILocalVariable(name: "argsize", arg: 3, scope: !4441, file: !251, line: 925, type: !146)
!4449 = !DILocation(line: 925, column: 48, scope: !4441)
!4450 = !DILocation(line: 927, column: 30, scope: !4441)
!4451 = !DILocation(line: 927, column: 33, scope: !4441)
!4452 = !DILocation(line: 927, column: 38, scope: !4441)
!4453 = !DILocation(line: 927, column: 10, scope: !4441)
!4454 = !DILocation(line: 927, column: 3, scope: !4441)
!4455 = distinct !DISubprogram(name: "quotearg", scope: !251, file: !251, line: 931, type: !4456, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!22, !37}
!4458 = !DILocalVariable(name: "arg", arg: 1, scope: !4455, file: !251, line: 931, type: !37)
!4459 = !DILocation(line: 931, column: 23, scope: !4455)
!4460 = !DILocation(line: 933, column: 25, scope: !4455)
!4461 = !DILocation(line: 933, column: 10, scope: !4455)
!4462 = !DILocation(line: 933, column: 3, scope: !4455)
!4463 = distinct !DISubprogram(name: "quotearg_mem", scope: !251, file: !251, line: 937, type: !4464, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!22, !37, !146}
!4466 = !DILocalVariable(name: "arg", arg: 1, scope: !4463, file: !251, line: 937, type: !37)
!4467 = !DILocation(line: 937, column: 27, scope: !4463)
!4468 = !DILocalVariable(name: "argsize", arg: 2, scope: !4463, file: !251, line: 937, type: !146)
!4469 = !DILocation(line: 937, column: 39, scope: !4463)
!4470 = !DILocation(line: 939, column: 29, scope: !4463)
!4471 = !DILocation(line: 939, column: 34, scope: !4463)
!4472 = !DILocation(line: 939, column: 10, scope: !4463)
!4473 = !DILocation(line: 939, column: 3, scope: !4463)
!4474 = distinct !DISubprogram(name: "quotearg_n_style", scope: !251, file: !251, line: 943, type: !4475, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!22, !28, !65, !37}
!4477 = !DILocalVariable(name: "n", arg: 1, scope: !4474, file: !251, line: 943, type: !28)
!4478 = !DILocation(line: 943, column: 23, scope: !4474)
!4479 = !DILocalVariable(name: "s", arg: 2, scope: !4474, file: !251, line: 943, type: !65)
!4480 = !DILocation(line: 943, column: 45, scope: !4474)
!4481 = !DILocalVariable(name: "arg", arg: 3, scope: !4474, file: !251, line: 943, type: !37)
!4482 = !DILocation(line: 943, column: 60, scope: !4474)
!4483 = !DILocalVariable(name: "o", scope: !4474, file: !251, line: 945, type: !3093)
!4484 = !DILocation(line: 945, column: 32, scope: !4474)
!4485 = !DILocation(line: 945, column: 64, scope: !4474)
!4486 = !DILocation(line: 945, column: 36, scope: !4474)
!4487 = !DILocation(line: 946, column: 30, scope: !4474)
!4488 = !DILocation(line: 946, column: 33, scope: !4474)
!4489 = !DILocation(line: 946, column: 10, scope: !4474)
!4490 = !DILocation(line: 946, column: 3, scope: !4474)
!4491 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !251, file: !251, line: 183, type: !4492, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!268, !65}
!4494 = !DILocalVariable(name: "style", arg: 1, scope: !4491, file: !251, line: 183, type: !65)
!4495 = !DILocation(line: 183, column: 48, scope: !4491)
!4496 = !DILocalVariable(name: "o", scope: !4491, file: !251, line: 185, type: !268)
!4497 = !DILocation(line: 185, column: 26, scope: !4491)
!4498 = !DILocation(line: 186, column: 7, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !251, line: 186, column: 7)
!4500 = !DILocation(line: 186, column: 13, scope: !4499)
!4501 = !DILocation(line: 186, column: 7, scope: !4491)
!4502 = !DILocation(line: 187, column: 5, scope: !4499)
!4503 = !DILocation(line: 188, column: 13, scope: !4491)
!4504 = !DILocation(line: 188, column: 5, scope: !4491)
!4505 = !DILocation(line: 188, column: 11, scope: !4491)
!4506 = !DILocation(line: 189, column: 3, scope: !4491)
!4507 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !251, file: !251, line: 950, type: !4508, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!22, !28, !65, !37, !146}
!4510 = !DILocalVariable(name: "n", arg: 1, scope: !4507, file: !251, line: 950, type: !28)
!4511 = !DILocation(line: 950, column: 27, scope: !4507)
!4512 = !DILocalVariable(name: "s", arg: 2, scope: !4507, file: !251, line: 950, type: !65)
!4513 = !DILocation(line: 950, column: 49, scope: !4507)
!4514 = !DILocalVariable(name: "arg", arg: 3, scope: !4507, file: !251, line: 951, type: !37)
!4515 = !DILocation(line: 951, column: 35, scope: !4507)
!4516 = !DILocalVariable(name: "argsize", arg: 4, scope: !4507, file: !251, line: 951, type: !146)
!4517 = !DILocation(line: 951, column: 47, scope: !4507)
!4518 = !DILocalVariable(name: "o", scope: !4507, file: !251, line: 953, type: !3093)
!4519 = !DILocation(line: 953, column: 32, scope: !4507)
!4520 = !DILocation(line: 953, column: 64, scope: !4507)
!4521 = !DILocation(line: 953, column: 36, scope: !4507)
!4522 = !DILocation(line: 954, column: 30, scope: !4507)
!4523 = !DILocation(line: 954, column: 33, scope: !4507)
!4524 = !DILocation(line: 954, column: 38, scope: !4507)
!4525 = !DILocation(line: 954, column: 10, scope: !4507)
!4526 = !DILocation(line: 954, column: 3, scope: !4507)
!4527 = distinct !DISubprogram(name: "quotearg_style", scope: !251, file: !251, line: 958, type: !4528, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!22, !65, !37}
!4530 = !DILocalVariable(name: "s", arg: 1, scope: !4527, file: !251, line: 958, type: !65)
!4531 = !DILocation(line: 958, column: 36, scope: !4527)
!4532 = !DILocalVariable(name: "arg", arg: 2, scope: !4527, file: !251, line: 958, type: !37)
!4533 = !DILocation(line: 958, column: 51, scope: !4527)
!4534 = !DILocation(line: 960, column: 31, scope: !4527)
!4535 = !DILocation(line: 960, column: 34, scope: !4527)
!4536 = !DILocation(line: 960, column: 10, scope: !4527)
!4537 = !DILocation(line: 960, column: 3, scope: !4527)
!4538 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !251, file: !251, line: 964, type: !4539, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!22, !65, !37, !146}
!4541 = !DILocalVariable(name: "s", arg: 1, scope: !4538, file: !251, line: 964, type: !65)
!4542 = !DILocation(line: 964, column: 40, scope: !4538)
!4543 = !DILocalVariable(name: "arg", arg: 2, scope: !4538, file: !251, line: 964, type: !37)
!4544 = !DILocation(line: 964, column: 55, scope: !4538)
!4545 = !DILocalVariable(name: "argsize", arg: 3, scope: !4538, file: !251, line: 964, type: !146)
!4546 = !DILocation(line: 964, column: 67, scope: !4538)
!4547 = !DILocation(line: 966, column: 35, scope: !4538)
!4548 = !DILocation(line: 966, column: 38, scope: !4538)
!4549 = !DILocation(line: 966, column: 43, scope: !4538)
!4550 = !DILocation(line: 966, column: 10, scope: !4538)
!4551 = !DILocation(line: 966, column: 3, scope: !4538)
!4552 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !251, file: !251, line: 970, type: !4553, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!22, !37, !146, !23}
!4555 = !DILocalVariable(name: "arg", arg: 1, scope: !4552, file: !251, line: 970, type: !37)
!4556 = !DILocation(line: 970, column: 32, scope: !4552)
!4557 = !DILocalVariable(name: "argsize", arg: 2, scope: !4552, file: !251, line: 970, type: !146)
!4558 = !DILocation(line: 970, column: 44, scope: !4552)
!4559 = !DILocalVariable(name: "ch", arg: 3, scope: !4552, file: !251, line: 970, type: !23)
!4560 = !DILocation(line: 970, column: 58, scope: !4552)
!4561 = !DILocalVariable(name: "options", scope: !4552, file: !251, line: 972, type: !268)
!4562 = !DILocation(line: 972, column: 26, scope: !4552)
!4563 = !DILocation(line: 973, column: 13, scope: !4552)
!4564 = !DILocation(line: 974, column: 31, scope: !4552)
!4565 = !DILocation(line: 974, column: 3, scope: !4552)
!4566 = !DILocation(line: 975, column: 33, scope: !4552)
!4567 = !DILocation(line: 975, column: 38, scope: !4552)
!4568 = !DILocation(line: 975, column: 10, scope: !4552)
!4569 = !DILocation(line: 975, column: 3, scope: !4552)
!4570 = distinct !DISubprogram(name: "quotearg_char", scope: !251, file: !251, line: 979, type: !4571, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!22, !37, !23}
!4573 = !DILocalVariable(name: "arg", arg: 1, scope: !4570, file: !251, line: 979, type: !37)
!4574 = !DILocation(line: 979, column: 28, scope: !4570)
!4575 = !DILocalVariable(name: "ch", arg: 2, scope: !4570, file: !251, line: 979, type: !23)
!4576 = !DILocation(line: 979, column: 38, scope: !4570)
!4577 = !DILocation(line: 981, column: 29, scope: !4570)
!4578 = !DILocation(line: 981, column: 44, scope: !4570)
!4579 = !DILocation(line: 981, column: 10, scope: !4570)
!4580 = !DILocation(line: 981, column: 3, scope: !4570)
!4581 = distinct !DISubprogram(name: "quotearg_colon", scope: !251, file: !251, line: 985, type: !4456, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4582 = !DILocalVariable(name: "arg", arg: 1, scope: !4581, file: !251, line: 985, type: !37)
!4583 = !DILocation(line: 985, column: 29, scope: !4581)
!4584 = !DILocation(line: 987, column: 25, scope: !4581)
!4585 = !DILocation(line: 987, column: 10, scope: !4581)
!4586 = !DILocation(line: 987, column: 3, scope: !4581)
!4587 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !251, file: !251, line: 991, type: !4464, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4588 = !DILocalVariable(name: "arg", arg: 1, scope: !4587, file: !251, line: 991, type: !37)
!4589 = !DILocation(line: 991, column: 33, scope: !4587)
!4590 = !DILocalVariable(name: "argsize", arg: 2, scope: !4587, file: !251, line: 991, type: !146)
!4591 = !DILocation(line: 991, column: 45, scope: !4587)
!4592 = !DILocation(line: 993, column: 29, scope: !4587)
!4593 = !DILocation(line: 993, column: 34, scope: !4587)
!4594 = !DILocation(line: 993, column: 10, scope: !4587)
!4595 = !DILocation(line: 993, column: 3, scope: !4587)
!4596 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !251, file: !251, line: 997, type: !4475, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4597 = !DILocalVariable(name: "n", arg: 1, scope: !4596, file: !251, line: 997, type: !28)
!4598 = !DILocation(line: 997, column: 29, scope: !4596)
!4599 = !DILocalVariable(name: "s", arg: 2, scope: !4596, file: !251, line: 997, type: !65)
!4600 = !DILocation(line: 997, column: 51, scope: !4596)
!4601 = !DILocalVariable(name: "arg", arg: 3, scope: !4596, file: !251, line: 997, type: !37)
!4602 = !DILocation(line: 997, column: 66, scope: !4596)
!4603 = !DILocalVariable(name: "options", scope: !4596, file: !251, line: 999, type: !268)
!4604 = !DILocation(line: 999, column: 26, scope: !4596)
!4605 = !DILocation(line: 1000, column: 41, scope: !4596)
!4606 = !DILocation(line: 1000, column: 13, scope: !4596)
!4607 = !DILocation(line: 1001, column: 3, scope: !4596)
!4608 = !DILocation(line: 1002, column: 30, scope: !4596)
!4609 = !DILocation(line: 1002, column: 33, scope: !4596)
!4610 = !DILocation(line: 1002, column: 10, scope: !4596)
!4611 = !DILocation(line: 1002, column: 3, scope: !4596)
!4612 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !251, file: !251, line: 1006, type: !4613, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!22, !28, !37, !37, !37}
!4615 = !DILocalVariable(name: "n", arg: 1, scope: !4612, file: !251, line: 1006, type: !28)
!4616 = !DILocation(line: 1006, column: 24, scope: !4612)
!4617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4612, file: !251, line: 1006, type: !37)
!4618 = !DILocation(line: 1006, column: 39, scope: !4612)
!4619 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4612, file: !251, line: 1007, type: !37)
!4620 = !DILocation(line: 1007, column: 32, scope: !4612)
!4621 = !DILocalVariable(name: "arg", arg: 4, scope: !4612, file: !251, line: 1007, type: !37)
!4622 = !DILocation(line: 1007, column: 57, scope: !4612)
!4623 = !DILocation(line: 1009, column: 33, scope: !4612)
!4624 = !DILocation(line: 1009, column: 36, scope: !4612)
!4625 = !DILocation(line: 1009, column: 48, scope: !4612)
!4626 = !DILocation(line: 1009, column: 61, scope: !4612)
!4627 = !DILocation(line: 1009, column: 10, scope: !4612)
!4628 = !DILocation(line: 1009, column: 3, scope: !4612)
!4629 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !251, file: !251, line: 1014, type: !4630, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!22, !28, !37, !37, !37, !146}
!4632 = !DILocalVariable(name: "n", arg: 1, scope: !4629, file: !251, line: 1014, type: !28)
!4633 = !DILocation(line: 1014, column: 28, scope: !4629)
!4634 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4629, file: !251, line: 1014, type: !37)
!4635 = !DILocation(line: 1014, column: 43, scope: !4629)
!4636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4629, file: !251, line: 1015, type: !37)
!4637 = !DILocation(line: 1015, column: 36, scope: !4629)
!4638 = !DILocalVariable(name: "arg", arg: 4, scope: !4629, file: !251, line: 1016, type: !37)
!4639 = !DILocation(line: 1016, column: 36, scope: !4629)
!4640 = !DILocalVariable(name: "argsize", arg: 5, scope: !4629, file: !251, line: 1016, type: !146)
!4641 = !DILocation(line: 1016, column: 48, scope: !4629)
!4642 = !DILocalVariable(name: "o", scope: !4629, file: !251, line: 1018, type: !268)
!4643 = !DILocation(line: 1018, column: 26, scope: !4629)
!4644 = !DILocation(line: 1018, column: 30, scope: !4629)
!4645 = !DILocation(line: 1019, column: 27, scope: !4629)
!4646 = !DILocation(line: 1019, column: 39, scope: !4629)
!4647 = !DILocation(line: 1019, column: 3, scope: !4629)
!4648 = !DILocation(line: 1020, column: 30, scope: !4629)
!4649 = !DILocation(line: 1020, column: 33, scope: !4629)
!4650 = !DILocation(line: 1020, column: 38, scope: !4629)
!4651 = !DILocation(line: 1020, column: 10, scope: !4629)
!4652 = !DILocation(line: 1020, column: 3, scope: !4629)
!4653 = distinct !DISubprogram(name: "quotearg_custom", scope: !251, file: !251, line: 1024, type: !4654, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!22, !37, !37, !37}
!4656 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4653, file: !251, line: 1024, type: !37)
!4657 = !DILocation(line: 1024, column: 30, scope: !4653)
!4658 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4653, file: !251, line: 1024, type: !37)
!4659 = !DILocation(line: 1024, column: 54, scope: !4653)
!4660 = !DILocalVariable(name: "arg", arg: 3, scope: !4653, file: !251, line: 1025, type: !37)
!4661 = !DILocation(line: 1025, column: 30, scope: !4653)
!4662 = !DILocation(line: 1027, column: 32, scope: !4653)
!4663 = !DILocation(line: 1027, column: 44, scope: !4653)
!4664 = !DILocation(line: 1027, column: 57, scope: !4653)
!4665 = !DILocation(line: 1027, column: 10, scope: !4653)
!4666 = !DILocation(line: 1027, column: 3, scope: !4653)
!4667 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !251, file: !251, line: 1031, type: !4668, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!22, !37, !37, !37, !146}
!4670 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4667, file: !251, line: 1031, type: !37)
!4671 = !DILocation(line: 1031, column: 34, scope: !4667)
!4672 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4667, file: !251, line: 1031, type: !37)
!4673 = !DILocation(line: 1031, column: 58, scope: !4667)
!4674 = !DILocalVariable(name: "arg", arg: 3, scope: !4667, file: !251, line: 1032, type: !37)
!4675 = !DILocation(line: 1032, column: 34, scope: !4667)
!4676 = !DILocalVariable(name: "argsize", arg: 4, scope: !4667, file: !251, line: 1032, type: !146)
!4677 = !DILocation(line: 1032, column: 46, scope: !4667)
!4678 = !DILocation(line: 1034, column: 36, scope: !4667)
!4679 = !DILocation(line: 1034, column: 48, scope: !4667)
!4680 = !DILocation(line: 1034, column: 61, scope: !4667)
!4681 = !DILocation(line: 1035, column: 33, scope: !4667)
!4682 = !DILocation(line: 1034, column: 10, scope: !4667)
!4683 = !DILocation(line: 1034, column: 3, scope: !4667)
!4684 = distinct !DISubprogram(name: "quote_n_mem", scope: !251, file: !251, line: 1049, type: !4685, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!37, !28, !37, !146}
!4687 = !DILocalVariable(name: "n", arg: 1, scope: !4684, file: !251, line: 1049, type: !28)
!4688 = !DILocation(line: 1049, column: 18, scope: !4684)
!4689 = !DILocalVariable(name: "arg", arg: 2, scope: !4684, file: !251, line: 1049, type: !37)
!4690 = !DILocation(line: 1049, column: 33, scope: !4684)
!4691 = !DILocalVariable(name: "argsize", arg: 3, scope: !4684, file: !251, line: 1049, type: !146)
!4692 = !DILocation(line: 1049, column: 45, scope: !4684)
!4693 = !DILocation(line: 1051, column: 30, scope: !4684)
!4694 = !DILocation(line: 1051, column: 33, scope: !4684)
!4695 = !DILocation(line: 1051, column: 38, scope: !4684)
!4696 = !DILocation(line: 1051, column: 10, scope: !4684)
!4697 = !DILocation(line: 1051, column: 3, scope: !4684)
!4698 = distinct !DISubprogram(name: "quote_mem", scope: !251, file: !251, line: 1055, type: !4699, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!37, !37, !146}
!4701 = !DILocalVariable(name: "arg", arg: 1, scope: !4698, file: !251, line: 1055, type: !37)
!4702 = !DILocation(line: 1055, column: 24, scope: !4698)
!4703 = !DILocalVariable(name: "argsize", arg: 2, scope: !4698, file: !251, line: 1055, type: !146)
!4704 = !DILocation(line: 1055, column: 36, scope: !4698)
!4705 = !DILocation(line: 1057, column: 26, scope: !4698)
!4706 = !DILocation(line: 1057, column: 31, scope: !4698)
!4707 = !DILocation(line: 1057, column: 10, scope: !4698)
!4708 = !DILocation(line: 1057, column: 3, scope: !4698)
!4709 = distinct !DISubprogram(name: "quote_n", scope: !251, file: !251, line: 1061, type: !4710, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!37, !28, !37}
!4712 = !DILocalVariable(name: "n", arg: 1, scope: !4709, file: !251, line: 1061, type: !28)
!4713 = !DILocation(line: 1061, column: 14, scope: !4709)
!4714 = !DILocalVariable(name: "arg", arg: 2, scope: !4709, file: !251, line: 1061, type: !37)
!4715 = !DILocation(line: 1061, column: 29, scope: !4709)
!4716 = !DILocation(line: 1063, column: 23, scope: !4709)
!4717 = !DILocation(line: 1063, column: 26, scope: !4709)
!4718 = !DILocation(line: 1063, column: 10, scope: !4709)
!4719 = !DILocation(line: 1063, column: 3, scope: !4709)
!4720 = distinct !DISubprogram(name: "quote", scope: !251, file: !251, line: 1067, type: !4721, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !39)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!37, !37}
!4723 = !DILocalVariable(name: "arg", arg: 1, scope: !4720, file: !251, line: 1067, type: !37)
!4724 = !DILocation(line: 1067, column: 20, scope: !4720)
!4725 = !DILocation(line: 1069, column: 22, scope: !4720)
!4726 = !DILocation(line: 1069, column: 10, scope: !4720)
!4727 = !DILocation(line: 1069, column: 3, scope: !4720)
!4728 = distinct !DISubprogram(name: "streq", scope: !4729, file: !4729, line: 1359, type: !4730, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !383, retainedNodes: !39)
!4729 = !DIFile(filename: "./lib/string.h", directory: "/src")
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!25, !37, !37}
!4732 = !DILocalVariable(name: "__s1", arg: 1, scope: !4728, file: !4729, line: 1359, type: !37)
!4733 = !DILocation(line: 1359, column: 20, scope: !4728)
!4734 = !DILocalVariable(name: "__s2", arg: 2, scope: !4728, file: !4729, line: 1359, type: !37)
!4735 = !DILocation(line: 1359, column: 38, scope: !4728)
!4736 = !DILocation(line: 1361, column: 19, scope: !4728)
!4737 = !DILocation(line: 1361, column: 25, scope: !4728)
!4738 = !DILocation(line: 1361, column: 11, scope: !4728)
!4739 = !DILocation(line: 1361, column: 10, scope: !4728)
!4740 = !DILocation(line: 1361, column: 3, scope: !4728)
!4741 = distinct !DISubprogram(name: "version_etc_arn", scope: !386, file: !386, line: 61, type: !4742, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !385, retainedNodes: !39)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !4744, !37, !37, !37, !4778, !146}
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !4746)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !4747)
!4747 = !{!4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4746, file: !101, line: 51, baseType: !28, size: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4746, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4746, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4746, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4746, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4746, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4746, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4746, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4746, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4746, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4746, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4746, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4746, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4746, file: !101, line: 70, baseType: !4762, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4746, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4746, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4746, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4746, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4746, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4746, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4746, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4746, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4746, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4746, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4746, file: !101, line: 93, baseType: !4762, size: 64, offset: 1344)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4746, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4746, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4746, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4746, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4779 = !DILocalVariable(name: "stream", arg: 1, scope: !4741, file: !386, line: 61, type: !4744)
!4780 = !DILocation(line: 61, column: 24, scope: !4741)
!4781 = !DILocalVariable(name: "command_name", arg: 2, scope: !4741, file: !386, line: 62, type: !37)
!4782 = !DILocation(line: 62, column: 30, scope: !4741)
!4783 = !DILocalVariable(name: "package", arg: 3, scope: !4741, file: !386, line: 62, type: !37)
!4784 = !DILocation(line: 62, column: 56, scope: !4741)
!4785 = !DILocalVariable(name: "version", arg: 4, scope: !4741, file: !386, line: 63, type: !37)
!4786 = !DILocation(line: 63, column: 30, scope: !4741)
!4787 = !DILocalVariable(name: "authors", arg: 5, scope: !4741, file: !386, line: 64, type: !4778)
!4788 = !DILocation(line: 64, column: 39, scope: !4741)
!4789 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4741, file: !386, line: 64, type: !146)
!4790 = !DILocation(line: 64, column: 55, scope: !4741)
!4791 = !DILocation(line: 66, column: 7, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4741, file: !386, line: 66, column: 7)
!4793 = !DILocation(line: 66, column: 7, scope: !4741)
!4794 = !DILocation(line: 67, column: 14, scope: !4792)
!4795 = !DILocation(line: 67, column: 38, scope: !4792)
!4796 = !DILocation(line: 67, column: 52, scope: !4792)
!4797 = !DILocation(line: 67, column: 61, scope: !4792)
!4798 = !DILocation(line: 67, column: 5, scope: !4792)
!4799 = !DILocation(line: 69, column: 14, scope: !4792)
!4800 = !DILocation(line: 69, column: 33, scope: !4792)
!4801 = !DILocation(line: 69, column: 42, scope: !4792)
!4802 = !DILocation(line: 69, column: 5, scope: !4792)
!4803 = !DILocation(line: 83, column: 12, scope: !4741)
!4804 = !DILocation(line: 83, column: 43, scope: !4741)
!4805 = !DILocation(line: 83, column: 3, scope: !4741)
!4806 = !DILocation(line: 85, column: 3, scope: !4741)
!4807 = !DILocation(line: 88, column: 12, scope: !4741)
!4808 = !DILocation(line: 88, column: 20, scope: !4741)
!4809 = !DILocation(line: 88, column: 3, scope: !4741)
!4810 = !DILocation(line: 95, column: 3, scope: !4741)
!4811 = !DILocation(line: 97, column: 11, scope: !4741)
!4812 = !DILocation(line: 97, column: 3, scope: !4741)
!4813 = !DILocation(line: 102, column: 7, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4741, file: !386, line: 98, column: 5)
!4815 = !DILocation(line: 105, column: 16, scope: !4814)
!4816 = !DILocation(line: 105, column: 24, scope: !4814)
!4817 = !DILocation(line: 105, column: 47, scope: !4814)
!4818 = !DILocation(line: 105, column: 7, scope: !4814)
!4819 = !DILocation(line: 106, column: 7, scope: !4814)
!4820 = !DILocation(line: 109, column: 16, scope: !4814)
!4821 = !DILocation(line: 109, column: 24, scope: !4814)
!4822 = !DILocation(line: 109, column: 54, scope: !4814)
!4823 = !DILocation(line: 109, column: 66, scope: !4814)
!4824 = !DILocation(line: 109, column: 7, scope: !4814)
!4825 = !DILocation(line: 110, column: 7, scope: !4814)
!4826 = !DILocation(line: 113, column: 16, scope: !4814)
!4827 = !DILocation(line: 113, column: 24, scope: !4814)
!4828 = !DILocation(line: 114, column: 16, scope: !4814)
!4829 = !DILocation(line: 114, column: 28, scope: !4814)
!4830 = !DILocation(line: 114, column: 40, scope: !4814)
!4831 = !DILocation(line: 113, column: 7, scope: !4814)
!4832 = !DILocation(line: 115, column: 7, scope: !4814)
!4833 = !DILocation(line: 120, column: 16, scope: !4814)
!4834 = !DILocation(line: 120, column: 24, scope: !4814)
!4835 = !DILocation(line: 121, column: 16, scope: !4814)
!4836 = !DILocation(line: 121, column: 28, scope: !4814)
!4837 = !DILocation(line: 121, column: 40, scope: !4814)
!4838 = !DILocation(line: 121, column: 52, scope: !4814)
!4839 = !DILocation(line: 120, column: 7, scope: !4814)
!4840 = !DILocation(line: 122, column: 7, scope: !4814)
!4841 = !DILocation(line: 127, column: 16, scope: !4814)
!4842 = !DILocation(line: 127, column: 24, scope: !4814)
!4843 = !DILocation(line: 128, column: 16, scope: !4814)
!4844 = !DILocation(line: 128, column: 28, scope: !4814)
!4845 = !DILocation(line: 128, column: 40, scope: !4814)
!4846 = !DILocation(line: 128, column: 52, scope: !4814)
!4847 = !DILocation(line: 128, column: 64, scope: !4814)
!4848 = !DILocation(line: 127, column: 7, scope: !4814)
!4849 = !DILocation(line: 129, column: 7, scope: !4814)
!4850 = !DILocation(line: 134, column: 16, scope: !4814)
!4851 = !DILocation(line: 134, column: 24, scope: !4814)
!4852 = !DILocation(line: 135, column: 16, scope: !4814)
!4853 = !DILocation(line: 135, column: 28, scope: !4814)
!4854 = !DILocation(line: 135, column: 40, scope: !4814)
!4855 = !DILocation(line: 135, column: 52, scope: !4814)
!4856 = !DILocation(line: 135, column: 64, scope: !4814)
!4857 = !DILocation(line: 136, column: 16, scope: !4814)
!4858 = !DILocation(line: 134, column: 7, scope: !4814)
!4859 = !DILocation(line: 137, column: 7, scope: !4814)
!4860 = !DILocation(line: 142, column: 16, scope: !4814)
!4861 = !DILocation(line: 142, column: 24, scope: !4814)
!4862 = !DILocation(line: 143, column: 16, scope: !4814)
!4863 = !DILocation(line: 143, column: 28, scope: !4814)
!4864 = !DILocation(line: 143, column: 40, scope: !4814)
!4865 = !DILocation(line: 143, column: 52, scope: !4814)
!4866 = !DILocation(line: 143, column: 64, scope: !4814)
!4867 = !DILocation(line: 144, column: 16, scope: !4814)
!4868 = !DILocation(line: 144, column: 28, scope: !4814)
!4869 = !DILocation(line: 142, column: 7, scope: !4814)
!4870 = !DILocation(line: 145, column: 7, scope: !4814)
!4871 = !DILocation(line: 150, column: 16, scope: !4814)
!4872 = !DILocation(line: 150, column: 24, scope: !4814)
!4873 = !DILocation(line: 152, column: 17, scope: !4814)
!4874 = !DILocation(line: 152, column: 29, scope: !4814)
!4875 = !DILocation(line: 152, column: 41, scope: !4814)
!4876 = !DILocation(line: 152, column: 53, scope: !4814)
!4877 = !DILocation(line: 152, column: 65, scope: !4814)
!4878 = !DILocation(line: 153, column: 17, scope: !4814)
!4879 = !DILocation(line: 153, column: 29, scope: !4814)
!4880 = !DILocation(line: 153, column: 41, scope: !4814)
!4881 = !DILocation(line: 150, column: 7, scope: !4814)
!4882 = !DILocation(line: 154, column: 7, scope: !4814)
!4883 = !DILocation(line: 159, column: 16, scope: !4814)
!4884 = !DILocation(line: 159, column: 24, scope: !4814)
!4885 = !DILocation(line: 161, column: 16, scope: !4814)
!4886 = !DILocation(line: 161, column: 28, scope: !4814)
!4887 = !DILocation(line: 161, column: 40, scope: !4814)
!4888 = !DILocation(line: 161, column: 52, scope: !4814)
!4889 = !DILocation(line: 161, column: 64, scope: !4814)
!4890 = !DILocation(line: 162, column: 16, scope: !4814)
!4891 = !DILocation(line: 162, column: 28, scope: !4814)
!4892 = !DILocation(line: 162, column: 40, scope: !4814)
!4893 = !DILocation(line: 162, column: 52, scope: !4814)
!4894 = !DILocation(line: 159, column: 7, scope: !4814)
!4895 = !DILocation(line: 163, column: 7, scope: !4814)
!4896 = !DILocation(line: 170, column: 16, scope: !4814)
!4897 = !DILocation(line: 170, column: 24, scope: !4814)
!4898 = !DILocation(line: 172, column: 17, scope: !4814)
!4899 = !DILocation(line: 172, column: 29, scope: !4814)
!4900 = !DILocation(line: 172, column: 41, scope: !4814)
!4901 = !DILocation(line: 172, column: 53, scope: !4814)
!4902 = !DILocation(line: 172, column: 65, scope: !4814)
!4903 = !DILocation(line: 173, column: 17, scope: !4814)
!4904 = !DILocation(line: 173, column: 29, scope: !4814)
!4905 = !DILocation(line: 173, column: 41, scope: !4814)
!4906 = !DILocation(line: 173, column: 53, scope: !4814)
!4907 = !DILocation(line: 170, column: 7, scope: !4814)
!4908 = !DILocation(line: 174, column: 7, scope: !4814)
!4909 = !DILocation(line: 176, column: 1, scope: !4741)
!4910 = distinct !DISubprogram(name: "version_etc_ar", scope: !386, file: !386, line: 183, type: !4911, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !385, retainedNodes: !39)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4744, !37, !37, !37, !4778}
!4913 = !DILocalVariable(name: "stream", arg: 1, scope: !4910, file: !386, line: 183, type: !4744)
!4914 = !DILocation(line: 183, column: 23, scope: !4910)
!4915 = !DILocalVariable(name: "command_name", arg: 2, scope: !4910, file: !386, line: 184, type: !37)
!4916 = !DILocation(line: 184, column: 29, scope: !4910)
!4917 = !DILocalVariable(name: "package", arg: 3, scope: !4910, file: !386, line: 184, type: !37)
!4918 = !DILocation(line: 184, column: 55, scope: !4910)
!4919 = !DILocalVariable(name: "version", arg: 4, scope: !4910, file: !386, line: 185, type: !37)
!4920 = !DILocation(line: 185, column: 29, scope: !4910)
!4921 = !DILocalVariable(name: "authors", arg: 5, scope: !4910, file: !386, line: 185, type: !4778)
!4922 = !DILocation(line: 185, column: 59, scope: !4910)
!4923 = !DILocalVariable(name: "n_authors", scope: !4910, file: !386, line: 187, type: !146)
!4924 = !DILocation(line: 187, column: 10, scope: !4910)
!4925 = !DILocation(line: 189, column: 18, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4910, file: !386, line: 189, column: 3)
!4927 = !DILocation(line: 189, column: 8, scope: !4926)
!4928 = !DILocation(line: 189, column: 23, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !386, line: 189, column: 3)
!4930 = !DILocation(line: 189, column: 31, scope: !4929)
!4931 = !DILocation(line: 189, column: 3, scope: !4926)
!4932 = !DILocation(line: 189, column: 52, scope: !4929)
!4933 = !DILocation(line: 189, column: 3, scope: !4929)
!4934 = distinct !{!4934, !4931, !4935, !549}
!4935 = !DILocation(line: 190, column: 5, scope: !4926)
!4936 = !DILocation(line: 191, column: 20, scope: !4910)
!4937 = !DILocation(line: 191, column: 28, scope: !4910)
!4938 = !DILocation(line: 191, column: 42, scope: !4910)
!4939 = !DILocation(line: 191, column: 51, scope: !4910)
!4940 = !DILocation(line: 191, column: 60, scope: !4910)
!4941 = !DILocation(line: 191, column: 69, scope: !4910)
!4942 = !DILocation(line: 191, column: 3, scope: !4910)
!4943 = !DILocation(line: 192, column: 1, scope: !4910)
!4944 = distinct !DISubprogram(name: "version_etc_va", scope: !386, file: !386, line: 199, type: !4945, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !385, retainedNodes: !39)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !4744, !37, !37, !37, !4947}
!4947 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !213, line: 52, baseType: !4948)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !215, line: 32, baseType: !4949)
!4949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4950, baseType: !4951)
!4950 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !219, size: 256, elements: !4952)
!4952 = !{!4953, !4954, !4955, !4956, !4957}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4951, file: !4950, line: 192, baseType: !24, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4951, file: !4950, line: 192, baseType: !24, size: 64, offset: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4951, file: !4950, line: 192, baseType: !24, size: 64, offset: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4951, file: !4950, line: 192, baseType: !28, size: 32, offset: 192)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4951, file: !4950, line: 192, baseType: !28, size: 32, offset: 224)
!4958 = !DILocalVariable(name: "stream", arg: 1, scope: !4944, file: !386, line: 199, type: !4744)
!4959 = !DILocation(line: 199, column: 23, scope: !4944)
!4960 = !DILocalVariable(name: "command_name", arg: 2, scope: !4944, file: !386, line: 200, type: !37)
!4961 = !DILocation(line: 200, column: 29, scope: !4944)
!4962 = !DILocalVariable(name: "package", arg: 3, scope: !4944, file: !386, line: 200, type: !37)
!4963 = !DILocation(line: 200, column: 55, scope: !4944)
!4964 = !DILocalVariable(name: "version", arg: 4, scope: !4944, file: !386, line: 201, type: !37)
!4965 = !DILocation(line: 201, column: 29, scope: !4944)
!4966 = !DILocalVariable(name: "authors", arg: 5, scope: !4944, file: !386, line: 201, type: !4947)
!4967 = !DILocation(line: 201, column: 46, scope: !4944)
!4968 = !DILocalVariable(name: "n_authors", scope: !4944, file: !386, line: 203, type: !146)
!4969 = !DILocation(line: 203, column: 10, scope: !4944)
!4970 = !DILocalVariable(name: "authtab", scope: !4944, file: !386, line: 204, type: !4971)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !264)
!4972 = !DILocation(line: 204, column: 15, scope: !4944)
!4973 = !DILocation(line: 206, column: 18, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4944, file: !386, line: 206, column: 3)
!4975 = !DILocation(line: 206, column: 8, scope: !4974)
!4976 = !DILocation(line: 207, column: 8, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !386, line: 206, column: 3)
!4978 = !DILocation(line: 207, column: 18, scope: !4977)
!4979 = !DILocation(line: 208, column: 10, scope: !4977)
!4980 = !DILocation(line: 208, column: 35, scope: !4977)
!4981 = !DILocation(line: 208, column: 22, scope: !4977)
!4982 = !DILocation(line: 208, column: 14, scope: !4977)
!4983 = !DILocation(line: 208, column: 33, scope: !4977)
!4984 = !DILocation(line: 208, column: 67, scope: !4977)
!4985 = !DILocation(line: 0, scope: !4977)
!4986 = !DILocation(line: 206, column: 3, scope: !4974)
!4987 = !DILocation(line: 209, column: 17, scope: !4977)
!4988 = !DILocation(line: 206, column: 3, scope: !4977)
!4989 = distinct !{!4989, !4986, !4990, !549}
!4990 = !DILocation(line: 210, column: 5, scope: !4974)
!4991 = !DILocation(line: 211, column: 20, scope: !4944)
!4992 = !DILocation(line: 211, column: 28, scope: !4944)
!4993 = !DILocation(line: 211, column: 42, scope: !4944)
!4994 = !DILocation(line: 211, column: 51, scope: !4944)
!4995 = !DILocation(line: 212, column: 20, scope: !4944)
!4996 = !DILocation(line: 212, column: 29, scope: !4944)
!4997 = !DILocation(line: 211, column: 3, scope: !4944)
!4998 = !DILocation(line: 213, column: 1, scope: !4944)
!4999 = distinct !DISubprogram(name: "version_etc", scope: !386, file: !386, line: 230, type: !5000, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !385, retainedNodes: !39)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !4744, !37, !37, !37, null}
!5002 = !DILocalVariable(name: "stream", arg: 1, scope: !4999, file: !386, line: 230, type: !4744)
!5003 = !DILocation(line: 230, column: 20, scope: !4999)
!5004 = !DILocalVariable(name: "command_name", arg: 2, scope: !4999, file: !386, line: 231, type: !37)
!5005 = !DILocation(line: 231, column: 26, scope: !4999)
!5006 = !DILocalVariable(name: "package", arg: 3, scope: !4999, file: !386, line: 231, type: !37)
!5007 = !DILocation(line: 231, column: 52, scope: !4999)
!5008 = !DILocalVariable(name: "version", arg: 4, scope: !4999, file: !386, line: 232, type: !37)
!5009 = !DILocation(line: 232, column: 26, scope: !4999)
!5010 = !DILocalVariable(name: "authors", scope: !4999, file: !386, line: 234, type: !4947)
!5011 = !DILocation(line: 234, column: 11, scope: !4999)
!5012 = !DILocation(line: 235, column: 3, scope: !4999)
!5013 = !DILocation(line: 236, column: 19, scope: !4999)
!5014 = !DILocation(line: 236, column: 27, scope: !4999)
!5015 = !DILocation(line: 236, column: 41, scope: !4999)
!5016 = !DILocation(line: 236, column: 50, scope: !4999)
!5017 = !DILocation(line: 236, column: 3, scope: !4999)
!5018 = !DILocation(line: 237, column: 3, scope: !4999)
!5019 = !DILocation(line: 238, column: 1, scope: !4999)
!5020 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !386, file: !386, line: 241, type: !43, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !385, retainedNodes: !39)
!5021 = !DILocation(line: 243, column: 3, scope: !5020)
!5022 = !DILocation(line: 248, column: 11, scope: !5020)
!5023 = !DILocation(line: 248, column: 3, scope: !5020)
!5024 = !DILocation(line: 254, column: 11, scope: !5020)
!5025 = !DILocation(line: 254, column: 3, scope: !5020)
!5026 = !DILocation(line: 259, column: 11, scope: !5020)
!5027 = !DILocation(line: 259, column: 3, scope: !5020)
!5028 = !DILocation(line: 261, column: 1, scope: !5020)
!5029 = distinct !DISubprogram(name: "xnrealloc", scope: !5030, file: !5030, line: 147, type: !5031, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5030 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!24, !24, !146, !146}
!5033 = !DILocalVariable(name: "p", arg: 1, scope: !5029, file: !5030, line: 147, type: !24)
!5034 = !DILocation(line: 147, column: 18, scope: !5029)
!5035 = !DILocalVariable(name: "n", arg: 2, scope: !5029, file: !5030, line: 147, type: !146)
!5036 = !DILocation(line: 147, column: 28, scope: !5029)
!5037 = !DILocalVariable(name: "s", arg: 3, scope: !5029, file: !5030, line: 147, type: !146)
!5038 = !DILocation(line: 147, column: 38, scope: !5029)
!5039 = !DILocation(line: 149, column: 25, scope: !5029)
!5040 = !DILocation(line: 149, column: 28, scope: !5029)
!5041 = !DILocation(line: 149, column: 31, scope: !5029)
!5042 = !DILocation(line: 149, column: 10, scope: !5029)
!5043 = !DILocation(line: 149, column: 3, scope: !5029)
!5044 = distinct !DISubprogram(name: "xreallocarray", scope: !392, file: !392, line: 83, type: !5031, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5045 = !DILocalVariable(name: "p", arg: 1, scope: !5044, file: !392, line: 83, type: !24)
!5046 = !DILocation(line: 83, column: 22, scope: !5044)
!5047 = !DILocalVariable(name: "n", arg: 2, scope: !5044, file: !392, line: 83, type: !146)
!5048 = !DILocation(line: 83, column: 32, scope: !5044)
!5049 = !DILocalVariable(name: "s", arg: 3, scope: !5044, file: !392, line: 83, type: !146)
!5050 = !DILocation(line: 83, column: 42, scope: !5044)
!5051 = !DILocation(line: 85, column: 39, scope: !5044)
!5052 = !DILocation(line: 85, column: 42, scope: !5044)
!5053 = !DILocation(line: 85, column: 45, scope: !5044)
!5054 = !DILocation(line: 85, column: 25, scope: !5044)
!5055 = !DILocation(line: 85, column: 10, scope: !5044)
!5056 = !DILocation(line: 85, column: 3, scope: !5044)
!5057 = distinct !DISubprogram(name: "check_nonnull", scope: !392, file: !392, line: 37, type: !5058, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!24, !24}
!5060 = !DILocalVariable(name: "p", arg: 1, scope: !5057, file: !392, line: 37, type: !24)
!5061 = !DILocation(line: 37, column: 22, scope: !5057)
!5062 = !DILocation(line: 39, column: 8, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5057, file: !392, line: 39, column: 7)
!5064 = !DILocation(line: 39, column: 7, scope: !5057)
!5065 = !DILocation(line: 40, column: 5, scope: !5063)
!5066 = !DILocation(line: 41, column: 10, scope: !5057)
!5067 = !DILocation(line: 41, column: 3, scope: !5057)
!5068 = distinct !DISubprogram(name: "xmalloc", scope: !392, file: !392, line: 47, type: !5069, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!24, !146}
!5071 = !DILocalVariable(name: "s", arg: 1, scope: !5068, file: !392, line: 47, type: !146)
!5072 = !DILocation(line: 47, column: 17, scope: !5068)
!5073 = !DILocation(line: 49, column: 33, scope: !5068)
!5074 = !DILocation(line: 49, column: 25, scope: !5068)
!5075 = !DILocation(line: 49, column: 10, scope: !5068)
!5076 = !DILocation(line: 49, column: 3, scope: !5068)
!5077 = distinct !DISubprogram(name: "ximalloc", scope: !392, file: !392, line: 53, type: !5078, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!24, !155}
!5080 = !DILocalVariable(name: "s", arg: 1, scope: !5077, file: !392, line: 53, type: !155)
!5081 = !DILocation(line: 53, column: 17, scope: !5077)
!5082 = !DILocation(line: 55, column: 34, scope: !5077)
!5083 = !DILocation(line: 55, column: 25, scope: !5077)
!5084 = !DILocation(line: 55, column: 10, scope: !5077)
!5085 = !DILocation(line: 55, column: 3, scope: !5077)
!5086 = distinct !DISubprogram(name: "xcharalloc", scope: !392, file: !392, line: 59, type: !5087, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!22, !146}
!5089 = !DILocalVariable(name: "n", arg: 1, scope: !5086, file: !392, line: 59, type: !146)
!5090 = !DILocation(line: 59, column: 20, scope: !5086)
!5091 = !DILocation(line: 61, column: 10, scope: !5086)
!5092 = !DILocation(line: 61, column: 3, scope: !5086)
!5093 = distinct !DISubprogram(name: "xrealloc", scope: !392, file: !392, line: 68, type: !5094, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!24, !24, !146}
!5096 = !DILocalVariable(name: "p", arg: 1, scope: !5093, file: !392, line: 68, type: !24)
!5097 = !DILocation(line: 68, column: 17, scope: !5093)
!5098 = !DILocalVariable(name: "s", arg: 2, scope: !5093, file: !392, line: 68, type: !146)
!5099 = !DILocation(line: 68, column: 27, scope: !5093)
!5100 = !DILocation(line: 70, column: 34, scope: !5093)
!5101 = !DILocation(line: 70, column: 37, scope: !5093)
!5102 = !DILocation(line: 70, column: 25, scope: !5093)
!5103 = !DILocation(line: 70, column: 10, scope: !5093)
!5104 = !DILocation(line: 70, column: 3, scope: !5093)
!5105 = distinct !DISubprogram(name: "xirealloc", scope: !392, file: !392, line: 74, type: !5106, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!24, !24, !155}
!5108 = !DILocalVariable(name: "p", arg: 1, scope: !5105, file: !392, line: 74, type: !24)
!5109 = !DILocation(line: 74, column: 18, scope: !5105)
!5110 = !DILocalVariable(name: "s", arg: 2, scope: !5105, file: !392, line: 74, type: !155)
!5111 = !DILocation(line: 74, column: 27, scope: !5105)
!5112 = !DILocation(line: 76, column: 35, scope: !5105)
!5113 = !DILocation(line: 76, column: 38, scope: !5105)
!5114 = !DILocation(line: 76, column: 25, scope: !5105)
!5115 = !DILocation(line: 76, column: 10, scope: !5105)
!5116 = !DILocation(line: 76, column: 3, scope: !5105)
!5117 = distinct !DISubprogram(name: "xireallocarray", scope: !392, file: !392, line: 89, type: !5118, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!24, !24, !155, !155}
!5120 = !DILocalVariable(name: "p", arg: 1, scope: !5117, file: !392, line: 89, type: !24)
!5121 = !DILocation(line: 89, column: 23, scope: !5117)
!5122 = !DILocalVariable(name: "n", arg: 2, scope: !5117, file: !392, line: 89, type: !155)
!5123 = !DILocation(line: 89, column: 32, scope: !5117)
!5124 = !DILocalVariable(name: "s", arg: 3, scope: !5117, file: !392, line: 89, type: !155)
!5125 = !DILocation(line: 89, column: 41, scope: !5117)
!5126 = !DILocation(line: 91, column: 40, scope: !5117)
!5127 = !DILocation(line: 91, column: 43, scope: !5117)
!5128 = !DILocation(line: 91, column: 46, scope: !5117)
!5129 = !DILocation(line: 91, column: 25, scope: !5117)
!5130 = !DILocation(line: 91, column: 10, scope: !5117)
!5131 = !DILocation(line: 91, column: 3, scope: !5117)
!5132 = distinct !DISubprogram(name: "xnmalloc", scope: !392, file: !392, line: 98, type: !5133, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!24, !146, !146}
!5135 = !DILocalVariable(name: "n", arg: 1, scope: !5132, file: !392, line: 98, type: !146)
!5136 = !DILocation(line: 98, column: 18, scope: !5132)
!5137 = !DILocalVariable(name: "s", arg: 2, scope: !5132, file: !392, line: 98, type: !146)
!5138 = !DILocation(line: 98, column: 28, scope: !5132)
!5139 = !DILocation(line: 100, column: 31, scope: !5132)
!5140 = !DILocation(line: 100, column: 34, scope: !5132)
!5141 = !DILocation(line: 100, column: 10, scope: !5132)
!5142 = !DILocation(line: 100, column: 3, scope: !5132)
!5143 = distinct !DISubprogram(name: "xinmalloc", scope: !392, file: !392, line: 104, type: !5144, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!24, !155, !155}
!5146 = !DILocalVariable(name: "n", arg: 1, scope: !5143, file: !392, line: 104, type: !155)
!5147 = !DILocation(line: 104, column: 18, scope: !5143)
!5148 = !DILocalVariable(name: "s", arg: 2, scope: !5143, file: !392, line: 104, type: !155)
!5149 = !DILocation(line: 104, column: 27, scope: !5143)
!5150 = !DILocation(line: 106, column: 32, scope: !5143)
!5151 = !DILocation(line: 106, column: 35, scope: !5143)
!5152 = !DILocation(line: 106, column: 10, scope: !5143)
!5153 = !DILocation(line: 106, column: 3, scope: !5143)
!5154 = distinct !DISubprogram(name: "x2realloc", scope: !392, file: !392, line: 116, type: !5155, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!24, !24, !398}
!5157 = !DILocalVariable(name: "p", arg: 1, scope: !5154, file: !392, line: 116, type: !24)
!5158 = !DILocation(line: 116, column: 18, scope: !5154)
!5159 = !DILocalVariable(name: "ps", arg: 2, scope: !5154, file: !392, line: 116, type: !398)
!5160 = !DILocation(line: 116, column: 29, scope: !5154)
!5161 = !DILocation(line: 118, column: 22, scope: !5154)
!5162 = !DILocation(line: 118, column: 25, scope: !5154)
!5163 = !DILocation(line: 118, column: 10, scope: !5154)
!5164 = !DILocation(line: 118, column: 3, scope: !5154)
!5165 = !DILocalVariable(name: "p", arg: 1, scope: !395, file: !392, line: 176, type: !24)
!5166 = !DILocation(line: 176, column: 19, scope: !395)
!5167 = !DILocalVariable(name: "pn", arg: 2, scope: !395, file: !392, line: 176, type: !398)
!5168 = !DILocation(line: 176, column: 30, scope: !395)
!5169 = !DILocalVariable(name: "s", arg: 3, scope: !395, file: !392, line: 176, type: !146)
!5170 = !DILocation(line: 176, column: 41, scope: !395)
!5171 = !DILocalVariable(name: "n", scope: !395, file: !392, line: 178, type: !146)
!5172 = !DILocation(line: 178, column: 10, scope: !395)
!5173 = !DILocation(line: 178, column: 15, scope: !395)
!5174 = !DILocation(line: 178, column: 14, scope: !395)
!5175 = !DILocation(line: 180, column: 9, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !395, file: !392, line: 180, column: 7)
!5177 = !DILocation(line: 180, column: 7, scope: !395)
!5178 = !DILocation(line: 182, column: 13, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !392, line: 182, column: 11)
!5180 = distinct !DILexicalBlock(scope: !5176, file: !392, line: 181, column: 5)
!5181 = !DILocation(line: 182, column: 11, scope: !5180)
!5182 = !DILocation(line: 190, column: 32, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !392, line: 183, column: 9)
!5184 = !DILocation(line: 190, column: 30, scope: !5183)
!5185 = !DILocation(line: 190, column: 13, scope: !5183)
!5186 = !DILocation(line: 191, column: 17, scope: !5183)
!5187 = !DILocation(line: 191, column: 16, scope: !5183)
!5188 = !DILocation(line: 191, column: 13, scope: !5183)
!5189 = !DILocation(line: 192, column: 9, scope: !5183)
!5190 = !DILocation(line: 193, column: 5, scope: !5180)
!5191 = !DILocation(line: 197, column: 11, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !392, line: 197, column: 11)
!5193 = distinct !DILexicalBlock(scope: !5176, file: !392, line: 195, column: 5)
!5194 = !DILocation(line: 197, column: 11, scope: !5193)
!5195 = !DILocation(line: 198, column: 9, scope: !5192)
!5196 = !DILocation(line: 201, column: 22, scope: !395)
!5197 = !DILocation(line: 201, column: 25, scope: !395)
!5198 = !DILocation(line: 201, column: 28, scope: !395)
!5199 = !DILocation(line: 201, column: 7, scope: !395)
!5200 = !DILocation(line: 201, column: 5, scope: !395)
!5201 = !DILocation(line: 202, column: 9, scope: !395)
!5202 = !DILocation(line: 202, column: 4, scope: !395)
!5203 = !DILocation(line: 202, column: 7, scope: !395)
!5204 = !DILocation(line: 203, column: 10, scope: !395)
!5205 = !DILocation(line: 203, column: 3, scope: !395)
!5206 = !DILocalVariable(name: "pa", arg: 1, scope: !402, file: !392, line: 223, type: !24)
!5207 = !DILocation(line: 223, column: 16, scope: !402)
!5208 = !DILocalVariable(name: "pn", arg: 2, scope: !402, file: !392, line: 223, type: !405)
!5209 = !DILocation(line: 223, column: 27, scope: !402)
!5210 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !402, file: !392, line: 223, type: !155)
!5211 = !DILocation(line: 223, column: 37, scope: !402)
!5212 = !DILocalVariable(name: "n_max", arg: 4, scope: !402, file: !392, line: 223, type: !157)
!5213 = !DILocation(line: 223, column: 59, scope: !402)
!5214 = !DILocalVariable(name: "s", arg: 5, scope: !402, file: !392, line: 223, type: !155)
!5215 = !DILocation(line: 223, column: 72, scope: !402)
!5216 = !DILocalVariable(name: "n0", scope: !402, file: !392, line: 230, type: !155)
!5217 = !DILocation(line: 230, column: 9, scope: !402)
!5218 = !DILocation(line: 230, column: 15, scope: !402)
!5219 = !DILocation(line: 230, column: 14, scope: !402)
!5220 = !DILocalVariable(name: "n", scope: !402, file: !392, line: 237, type: !155)
!5221 = !DILocation(line: 237, column: 9, scope: !402)
!5222 = !DILocation(line: 238, column: 7, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !402, file: !392, line: 238, column: 7)
!5224 = !DILocation(line: 238, column: 7, scope: !402)
!5225 = !DILocation(line: 239, column: 7, scope: !5223)
!5226 = !DILocation(line: 239, column: 5, scope: !5223)
!5227 = !DILocation(line: 240, column: 12, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !402, file: !392, line: 240, column: 7)
!5229 = !DILocation(line: 240, column: 9, scope: !5228)
!5230 = !DILocation(line: 240, column: 18, scope: !5228)
!5231 = !DILocation(line: 240, column: 21, scope: !5228)
!5232 = !DILocation(line: 240, column: 29, scope: !5228)
!5233 = !DILocation(line: 240, column: 27, scope: !5228)
!5234 = !DILocation(line: 240, column: 7, scope: !402)
!5235 = !DILocation(line: 241, column: 9, scope: !5228)
!5236 = !DILocation(line: 241, column: 7, scope: !5228)
!5237 = !DILocation(line: 241, column: 5, scope: !5228)
!5238 = !DILocalVariable(name: "nbytes", scope: !402, file: !392, line: 248, type: !155)
!5239 = !DILocation(line: 248, column: 9, scope: !402)
!5240 = !DILocalVariable(name: "adjusted_nbytes", scope: !402, file: !392, line: 252, type: !155)
!5241 = !DILocation(line: 252, column: 9, scope: !402)
!5242 = !DILocation(line: 253, column: 8, scope: !402)
!5243 = !DILocation(line: 255, column: 10, scope: !402)
!5244 = !DILocation(line: 255, column: 17, scope: !402)
!5245 = !DILocation(line: 256, column: 7, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !402, file: !392, line: 256, column: 7)
!5247 = !DILocation(line: 256, column: 7, scope: !402)
!5248 = !DILocation(line: 258, column: 11, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5246, file: !392, line: 257, column: 5)
!5250 = !DILocation(line: 258, column: 29, scope: !5249)
!5251 = !DILocation(line: 258, column: 27, scope: !5249)
!5252 = !DILocation(line: 258, column: 9, scope: !5249)
!5253 = !DILocation(line: 259, column: 16, scope: !5249)
!5254 = !DILocation(line: 259, column: 34, scope: !5249)
!5255 = !DILocation(line: 259, column: 52, scope: !5249)
!5256 = !DILocation(line: 259, column: 50, scope: !5249)
!5257 = !DILocation(line: 259, column: 32, scope: !5249)
!5258 = !DILocation(line: 259, column: 14, scope: !5249)
!5259 = !DILocation(line: 260, column: 5, scope: !5249)
!5260 = !DILocation(line: 262, column: 9, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !402, file: !392, line: 262, column: 7)
!5262 = !DILocation(line: 262, column: 7, scope: !402)
!5263 = !DILocation(line: 263, column: 6, scope: !5261)
!5264 = !DILocation(line: 263, column: 9, scope: !5261)
!5265 = !DILocation(line: 263, column: 5, scope: !5261)
!5266 = !DILocation(line: 264, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !402, file: !392, line: 264, column: 7)
!5268 = !DILocation(line: 264, column: 11, scope: !5267)
!5269 = !DILocation(line: 264, column: 9, scope: !5267)
!5270 = !DILocation(line: 264, column: 16, scope: !5267)
!5271 = !DILocation(line: 264, column: 14, scope: !5267)
!5272 = !DILocation(line: 265, column: 7, scope: !5267)
!5273 = !DILocation(line: 265, column: 11, scope: !5267)
!5274 = !DILocation(line: 266, column: 11, scope: !5267)
!5275 = !DILocation(line: 266, column: 20, scope: !5267)
!5276 = !DILocation(line: 266, column: 17, scope: !5267)
!5277 = !DILocation(line: 266, column: 26, scope: !5267)
!5278 = !DILocation(line: 266, column: 29, scope: !5267)
!5279 = !DILocation(line: 266, column: 37, scope: !5267)
!5280 = !DILocation(line: 266, column: 35, scope: !5267)
!5281 = !DILocation(line: 267, column: 11, scope: !5267)
!5282 = !DILocation(line: 267, column: 14, scope: !5267)
!5283 = !DILocation(line: 264, column: 7, scope: !402)
!5284 = !DILocation(line: 268, column: 5, scope: !5267)
!5285 = !DILocation(line: 269, column: 18, scope: !402)
!5286 = !DILocation(line: 269, column: 22, scope: !402)
!5287 = !DILocation(line: 269, column: 8, scope: !402)
!5288 = !DILocation(line: 269, column: 6, scope: !402)
!5289 = !DILocation(line: 270, column: 9, scope: !402)
!5290 = !DILocation(line: 270, column: 4, scope: !402)
!5291 = !DILocation(line: 270, column: 7, scope: !402)
!5292 = !DILocation(line: 271, column: 10, scope: !402)
!5293 = !DILocation(line: 271, column: 3, scope: !402)
!5294 = distinct !DISubprogram(name: "xzalloc", scope: !392, file: !392, line: 279, type: !5069, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5295 = !DILocalVariable(name: "s", arg: 1, scope: !5294, file: !392, line: 279, type: !146)
!5296 = !DILocation(line: 279, column: 17, scope: !5294)
!5297 = !DILocation(line: 281, column: 19, scope: !5294)
!5298 = !DILocation(line: 281, column: 10, scope: !5294)
!5299 = !DILocation(line: 281, column: 3, scope: !5294)
!5300 = distinct !DISubprogram(name: "xcalloc", scope: !392, file: !392, line: 294, type: !5133, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5301 = !DILocalVariable(name: "n", arg: 1, scope: !5300, file: !392, line: 294, type: !146)
!5302 = !DILocation(line: 294, column: 17, scope: !5300)
!5303 = !DILocalVariable(name: "s", arg: 2, scope: !5300, file: !392, line: 294, type: !146)
!5304 = !DILocation(line: 294, column: 27, scope: !5300)
!5305 = !DILocation(line: 296, column: 33, scope: !5300)
!5306 = !DILocation(line: 296, column: 36, scope: !5300)
!5307 = !DILocation(line: 296, column: 25, scope: !5300)
!5308 = !DILocation(line: 296, column: 10, scope: !5300)
!5309 = !DILocation(line: 296, column: 3, scope: !5300)
!5310 = distinct !DISubprogram(name: "xizalloc", scope: !392, file: !392, line: 285, type: !5078, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5311 = !DILocalVariable(name: "s", arg: 1, scope: !5310, file: !392, line: 285, type: !155)
!5312 = !DILocation(line: 285, column: 17, scope: !5310)
!5313 = !DILocation(line: 287, column: 20, scope: !5310)
!5314 = !DILocation(line: 287, column: 10, scope: !5310)
!5315 = !DILocation(line: 287, column: 3, scope: !5310)
!5316 = distinct !DISubprogram(name: "xicalloc", scope: !392, file: !392, line: 300, type: !5144, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5317 = !DILocalVariable(name: "n", arg: 1, scope: !5316, file: !392, line: 300, type: !155)
!5318 = !DILocation(line: 300, column: 17, scope: !5316)
!5319 = !DILocalVariable(name: "s", arg: 2, scope: !5316, file: !392, line: 300, type: !155)
!5320 = !DILocation(line: 300, column: 26, scope: !5316)
!5321 = !DILocation(line: 302, column: 34, scope: !5316)
!5322 = !DILocation(line: 302, column: 37, scope: !5316)
!5323 = !DILocation(line: 302, column: 25, scope: !5316)
!5324 = !DILocation(line: 302, column: 10, scope: !5316)
!5325 = !DILocation(line: 302, column: 3, scope: !5316)
!5326 = distinct !DISubprogram(name: "xmemdup", scope: !392, file: !392, line: 310, type: !5327, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!24, !5329, !146}
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5331 = !DILocalVariable(name: "p", arg: 1, scope: !5326, file: !392, line: 310, type: !5329)
!5332 = !DILocation(line: 310, column: 22, scope: !5326)
!5333 = !DILocalVariable(name: "s", arg: 2, scope: !5326, file: !392, line: 310, type: !146)
!5334 = !DILocation(line: 310, column: 32, scope: !5326)
!5335 = !DILocation(line: 312, column: 27, scope: !5326)
!5336 = !DILocation(line: 312, column: 18, scope: !5326)
!5337 = !DILocation(line: 312, column: 31, scope: !5326)
!5338 = !DILocation(line: 312, column: 34, scope: !5326)
!5339 = !DILocation(line: 312, column: 10, scope: !5326)
!5340 = !DILocation(line: 312, column: 3, scope: !5326)
!5341 = distinct !DISubprogram(name: "ximemdup", scope: !392, file: !392, line: 316, type: !5342, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!24, !5329, !155}
!5344 = !DILocalVariable(name: "p", arg: 1, scope: !5341, file: !392, line: 316, type: !5329)
!5345 = !DILocation(line: 316, column: 23, scope: !5341)
!5346 = !DILocalVariable(name: "s", arg: 2, scope: !5341, file: !392, line: 316, type: !155)
!5347 = !DILocation(line: 316, column: 32, scope: !5341)
!5348 = !DILocation(line: 318, column: 28, scope: !5341)
!5349 = !DILocation(line: 318, column: 18, scope: !5341)
!5350 = !DILocation(line: 318, column: 32, scope: !5341)
!5351 = !DILocation(line: 318, column: 35, scope: !5341)
!5352 = !DILocation(line: 318, column: 10, scope: !5341)
!5353 = !DILocation(line: 318, column: 3, scope: !5341)
!5354 = distinct !DISubprogram(name: "ximemdup0", scope: !392, file: !392, line: 325, type: !5355, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!22, !5329, !155}
!5357 = !DILocalVariable(name: "p", arg: 1, scope: !5354, file: !392, line: 325, type: !5329)
!5358 = !DILocation(line: 325, column: 24, scope: !5354)
!5359 = !DILocalVariable(name: "s", arg: 2, scope: !5354, file: !392, line: 325, type: !155)
!5360 = !DILocation(line: 325, column: 33, scope: !5354)
!5361 = !DILocalVariable(name: "result", scope: !5354, file: !392, line: 327, type: !22)
!5362 = !DILocation(line: 327, column: 9, scope: !5354)
!5363 = !DILocation(line: 327, column: 28, scope: !5354)
!5364 = !DILocation(line: 327, column: 30, scope: !5354)
!5365 = !DILocation(line: 327, column: 18, scope: !5354)
!5366 = !DILocation(line: 328, column: 3, scope: !5354)
!5367 = !DILocation(line: 328, column: 10, scope: !5354)
!5368 = !DILocation(line: 328, column: 13, scope: !5354)
!5369 = !DILocation(line: 329, column: 18, scope: !5354)
!5370 = !DILocation(line: 329, column: 26, scope: !5354)
!5371 = !DILocation(line: 329, column: 29, scope: !5354)
!5372 = !DILocation(line: 329, column: 10, scope: !5354)
!5373 = !DILocation(line: 329, column: 3, scope: !5354)
!5374 = distinct !DISubprogram(name: "xstrdup", scope: !392, file: !392, line: 335, type: !4456, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !391, retainedNodes: !39)
!5375 = !DILocalVariable(name: "string", arg: 1, scope: !5374, file: !392, line: 335, type: !37)
!5376 = !DILocation(line: 335, column: 22, scope: !5374)
!5377 = !DILocation(line: 337, column: 19, scope: !5374)
!5378 = !DILocation(line: 337, column: 35, scope: !5374)
!5379 = !DILocation(line: 337, column: 27, scope: !5374)
!5380 = !DILocation(line: 337, column: 43, scope: !5374)
!5381 = !DILocation(line: 337, column: 10, scope: !5374)
!5382 = !DILocation(line: 337, column: 3, scope: !5374)
!5383 = distinct !DISubprogram(name: "xalloc_die", scope: !408, file: !408, line: 32, type: !43, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !407, retainedNodes: !39)
!5384 = !DILocalVariable(name: "__errstatus", scope: !5385, file: !408, line: 34, type: !5386)
!5385 = distinct !DILexicalBlock(scope: !5383, file: !408, line: 34, column: 3)
!5386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!5387 = !DILocation(line: 34, column: 3, scope: !5385)
!5388 = !DILocation(line: 40, column: 3, scope: !5383)
!5389 = distinct !DISubprogram(name: "rpl_fopen", scope: !410, file: !410, line: 46, type: !5390, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !409, retainedNodes: !39)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!5392, !37, !37}
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !5394)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !5395)
!5395 = !{!5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5394, file: !101, line: 51, baseType: !28, size: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5394, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5394, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5394, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5394, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5394, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5394, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5394, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5394, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5394, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5394, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5394, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5394, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5394, file: !101, line: 70, baseType: !5410, size: 64, offset: 832)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5394, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5394, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5394, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5394, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5394, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5394, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5394, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5394, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5394, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5394, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5394, file: !101, line: 93, baseType: !5410, size: 64, offset: 1344)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5394, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5394, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5394, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5394, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!5426 = !DILocalVariable(name: "filename", arg: 1, scope: !5389, file: !410, line: 46, type: !37)
!5427 = !DILocation(line: 46, column: 24, scope: !5389)
!5428 = !DILocalVariable(name: "mode", arg: 2, scope: !5389, file: !410, line: 46, type: !37)
!5429 = !DILocation(line: 46, column: 46, scope: !5389)
!5430 = !DILocalVariable(name: "open_direction", scope: !5389, file: !410, line: 54, type: !28)
!5431 = !DILocation(line: 54, column: 7, scope: !5389)
!5432 = !DILocalVariable(name: "open_flags", scope: !5389, file: !410, line: 55, type: !28)
!5433 = !DILocation(line: 55, column: 7, scope: !5389)
!5434 = !DILocalVariable(name: "open_flags_gnu", scope: !5389, file: !410, line: 57, type: !25)
!5435 = !DILocation(line: 57, column: 8, scope: !5389)
!5436 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5389, file: !410, line: 59, type: !5437)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 648, elements: !5438)
!5438 = !{!5439}
!5439 = !DISubrange(count: 81)
!5440 = !DILocation(line: 59, column: 8, scope: !5389)
!5441 = !DILocalVariable(name: "p", scope: !5442, file: !410, line: 62, type: !37)
!5442 = distinct !DILexicalBlock(scope: !5389, file: !410, line: 61, column: 3)
!5443 = !DILocation(line: 62, column: 17, scope: !5442)
!5444 = !DILocation(line: 62, column: 21, scope: !5442)
!5445 = !DILocalVariable(name: "q", scope: !5442, file: !410, line: 64, type: !22)
!5446 = !DILocation(line: 64, column: 11, scope: !5442)
!5447 = !DILocation(line: 64, column: 15, scope: !5442)
!5448 = !DILocation(line: 67, column: 5, scope: !5442)
!5449 = !DILocation(line: 67, column: 13, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !410, line: 67, column: 5)
!5451 = distinct !DILexicalBlock(scope: !5442, file: !410, line: 67, column: 5)
!5452 = !DILocation(line: 67, column: 12, scope: !5450)
!5453 = !DILocation(line: 67, column: 15, scope: !5450)
!5454 = !DILocation(line: 67, column: 5, scope: !5451)
!5455 = !DILocation(line: 69, column: 18, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5450, file: !410, line: 68, column: 7)
!5457 = !DILocation(line: 69, column: 17, scope: !5456)
!5458 = !DILocation(line: 69, column: 9, scope: !5456)
!5459 = !DILocation(line: 72, column: 28, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !410, line: 70, column: 11)
!5461 = !DILocation(line: 74, column: 17, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5460, file: !410, line: 74, column: 17)
!5463 = !DILocation(line: 74, column: 21, scope: !5462)
!5464 = !DILocation(line: 74, column: 37, scope: !5462)
!5465 = !DILocation(line: 74, column: 19, scope: !5462)
!5466 = !DILocation(line: 74, column: 17, scope: !5460)
!5467 = !DILocation(line: 75, column: 23, scope: !5462)
!5468 = !DILocation(line: 75, column: 22, scope: !5462)
!5469 = !DILocation(line: 75, column: 17, scope: !5462)
!5470 = !DILocation(line: 75, column: 20, scope: !5462)
!5471 = !DILocation(line: 75, column: 15, scope: !5462)
!5472 = !DILocation(line: 77, column: 13, scope: !5460)
!5473 = !DILocation(line: 79, column: 28, scope: !5460)
!5474 = !DILocation(line: 80, column: 24, scope: !5460)
!5475 = !DILocation(line: 82, column: 17, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5460, file: !410, line: 82, column: 17)
!5477 = !DILocation(line: 82, column: 21, scope: !5476)
!5478 = !DILocation(line: 82, column: 37, scope: !5476)
!5479 = !DILocation(line: 82, column: 19, scope: !5476)
!5480 = !DILocation(line: 82, column: 17, scope: !5460)
!5481 = !DILocation(line: 83, column: 23, scope: !5476)
!5482 = !DILocation(line: 83, column: 22, scope: !5476)
!5483 = !DILocation(line: 83, column: 17, scope: !5476)
!5484 = !DILocation(line: 83, column: 20, scope: !5476)
!5485 = !DILocation(line: 83, column: 15, scope: !5476)
!5486 = !DILocation(line: 85, column: 13, scope: !5460)
!5487 = !DILocation(line: 87, column: 28, scope: !5460)
!5488 = !DILocation(line: 88, column: 24, scope: !5460)
!5489 = !DILocation(line: 90, column: 17, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5460, file: !410, line: 90, column: 17)
!5491 = !DILocation(line: 90, column: 21, scope: !5490)
!5492 = !DILocation(line: 90, column: 37, scope: !5490)
!5493 = !DILocation(line: 90, column: 19, scope: !5490)
!5494 = !DILocation(line: 90, column: 17, scope: !5460)
!5495 = !DILocation(line: 91, column: 23, scope: !5490)
!5496 = !DILocation(line: 91, column: 22, scope: !5490)
!5497 = !DILocation(line: 91, column: 17, scope: !5490)
!5498 = !DILocation(line: 91, column: 20, scope: !5490)
!5499 = !DILocation(line: 91, column: 15, scope: !5490)
!5500 = !DILocation(line: 93, column: 13, scope: !5460)
!5501 = !DILocation(line: 98, column: 24, scope: !5460)
!5502 = !DILocation(line: 100, column: 17, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5460, file: !410, line: 100, column: 17)
!5504 = !DILocation(line: 100, column: 21, scope: !5503)
!5505 = !DILocation(line: 100, column: 37, scope: !5503)
!5506 = !DILocation(line: 100, column: 19, scope: !5503)
!5507 = !DILocation(line: 100, column: 17, scope: !5460)
!5508 = !DILocation(line: 101, column: 23, scope: !5503)
!5509 = !DILocation(line: 101, column: 22, scope: !5503)
!5510 = !DILocation(line: 101, column: 17, scope: !5503)
!5511 = !DILocation(line: 101, column: 20, scope: !5503)
!5512 = !DILocation(line: 101, column: 15, scope: !5503)
!5513 = !DILocation(line: 103, column: 13, scope: !5460)
!5514 = !DILocation(line: 105, column: 28, scope: !5460)
!5515 = !DILocation(line: 107, column: 17, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5460, file: !410, line: 107, column: 17)
!5517 = !DILocation(line: 107, column: 21, scope: !5516)
!5518 = !DILocation(line: 107, column: 37, scope: !5516)
!5519 = !DILocation(line: 107, column: 19, scope: !5516)
!5520 = !DILocation(line: 107, column: 17, scope: !5460)
!5521 = !DILocation(line: 108, column: 23, scope: !5516)
!5522 = !DILocation(line: 108, column: 22, scope: !5516)
!5523 = !DILocation(line: 108, column: 17, scope: !5516)
!5524 = !DILocation(line: 108, column: 20, scope: !5516)
!5525 = !DILocation(line: 108, column: 15, scope: !5516)
!5526 = !DILocation(line: 110, column: 13, scope: !5460)
!5527 = !DILocation(line: 113, column: 24, scope: !5460)
!5528 = !DILocation(line: 114, column: 28, scope: !5460)
!5529 = !DILocation(line: 115, column: 13, scope: !5460)
!5530 = !DILocation(line: 117, column: 24, scope: !5460)
!5531 = !DILocation(line: 118, column: 28, scope: !5460)
!5532 = !DILocation(line: 119, column: 13, scope: !5460)
!5533 = !DILocation(line: 122, column: 13, scope: !5460)
!5534 = !DILocalVariable(name: "len", scope: !5535, file: !410, line: 128, type: !146)
!5535 = distinct !DILexicalBlock(scope: !5456, file: !410, line: 127, column: 9)
!5536 = !DILocation(line: 128, column: 18, scope: !5535)
!5537 = !DILocation(line: 128, column: 32, scope: !5535)
!5538 = !DILocation(line: 128, column: 24, scope: !5535)
!5539 = !DILocation(line: 129, column: 15, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5535, file: !410, line: 129, column: 15)
!5541 = !DILocation(line: 129, column: 21, scope: !5540)
!5542 = !DILocation(line: 129, column: 37, scope: !5540)
!5543 = !DILocation(line: 129, column: 50, scope: !5540)
!5544 = !DILocation(line: 129, column: 48, scope: !5540)
!5545 = !DILocation(line: 129, column: 19, scope: !5540)
!5546 = !DILocation(line: 129, column: 15, scope: !5535)
!5547 = !DILocation(line: 130, column: 19, scope: !5540)
!5548 = !DILocation(line: 130, column: 35, scope: !5540)
!5549 = !DILocation(line: 130, column: 48, scope: !5540)
!5550 = !DILocation(line: 130, column: 46, scope: !5540)
!5551 = !DILocation(line: 130, column: 17, scope: !5540)
!5552 = !DILocation(line: 130, column: 13, scope: !5540)
!5553 = !DILocation(line: 131, column: 19, scope: !5535)
!5554 = !DILocation(line: 131, column: 22, scope: !5535)
!5555 = !DILocation(line: 131, column: 25, scope: !5535)
!5556 = !DILocation(line: 131, column: 11, scope: !5535)
!5557 = !DILocation(line: 132, column: 16, scope: !5535)
!5558 = !DILocation(line: 132, column: 13, scope: !5535)
!5559 = !DILocation(line: 135, column: 9, scope: !5456)
!5560 = !DILocation(line: 67, column: 25, scope: !5450)
!5561 = !DILocation(line: 67, column: 5, scope: !5450)
!5562 = distinct !{!5562, !5454, !5563, !549}
!5563 = !DILocation(line: 136, column: 7, scope: !5451)
!5564 = !DILocation(line: 138, column: 6, scope: !5442)
!5565 = !DILocation(line: 138, column: 8, scope: !5442)
!5566 = !DILocation(line: 197, column: 7, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5389, file: !410, line: 197, column: 7)
!5568 = !DILocation(line: 197, column: 7, scope: !5389)
!5569 = !DILocalVariable(name: "fd", scope: !5570, file: !410, line: 199, type: !28)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !410, line: 198, column: 5)
!5571 = !DILocation(line: 199, column: 11, scope: !5570)
!5572 = !DILocation(line: 199, column: 22, scope: !5570)
!5573 = !DILocation(line: 199, column: 32, scope: !5570)
!5574 = !DILocation(line: 199, column: 49, scope: !5570)
!5575 = !DILocation(line: 199, column: 47, scope: !5570)
!5576 = !DILocation(line: 199, column: 16, scope: !5570)
!5577 = !DILocation(line: 201, column: 11, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5570, file: !410, line: 201, column: 11)
!5579 = !DILocation(line: 201, column: 14, scope: !5578)
!5580 = !DILocation(line: 201, column: 11, scope: !5570)
!5581 = !DILocation(line: 202, column: 9, scope: !5578)
!5582 = !DILocalVariable(name: "fp", scope: !5570, file: !410, line: 204, type: !5392)
!5583 = !DILocation(line: 204, column: 13, scope: !5570)
!5584 = !DILocation(line: 204, column: 26, scope: !5570)
!5585 = !DILocation(line: 204, column: 30, scope: !5570)
!5586 = !DILocation(line: 204, column: 18, scope: !5570)
!5587 = !DILocation(line: 205, column: 11, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5570, file: !410, line: 205, column: 11)
!5589 = !DILocation(line: 205, column: 14, scope: !5588)
!5590 = !DILocation(line: 205, column: 11, scope: !5570)
!5591 = !DILocalVariable(name: "saved_errno", scope: !5592, file: !410, line: 207, type: !28)
!5592 = distinct !DILexicalBlock(scope: !5588, file: !410, line: 206, column: 9)
!5593 = !DILocation(line: 207, column: 15, scope: !5592)
!5594 = !DILocation(line: 207, column: 29, scope: !5592)
!5595 = !DILocation(line: 208, column: 18, scope: !5592)
!5596 = !DILocation(line: 208, column: 11, scope: !5592)
!5597 = !DILocation(line: 209, column: 19, scope: !5592)
!5598 = !DILocation(line: 209, column: 11, scope: !5592)
!5599 = !DILocation(line: 209, column: 17, scope: !5592)
!5600 = !DILocation(line: 210, column: 9, scope: !5592)
!5601 = !DILocation(line: 211, column: 14, scope: !5570)
!5602 = !DILocation(line: 211, column: 7, scope: !5570)
!5603 = !DILocation(line: 217, column: 10, scope: !5389)
!5604 = !DILocation(line: 219, column: 22, scope: !5389)
!5605 = !DILocation(line: 219, column: 32, scope: !5389)
!5606 = !DILocation(line: 219, column: 10, scope: !5389)
!5607 = !DILocation(line: 219, column: 3, scope: !5389)
!5608 = !DILocation(line: 220, column: 1, scope: !5389)
!5609 = distinct !DISubprogram(name: "orig_fopen", scope: !410, file: !410, line: 30, type: !5390, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !409, retainedNodes: !39)
!5610 = !DILocalVariable(name: "filename", arg: 1, scope: !5609, file: !410, line: 30, type: !37)
!5611 = !DILocation(line: 30, column: 25, scope: !5609)
!5612 = !DILocalVariable(name: "mode", arg: 2, scope: !5609, file: !410, line: 30, type: !37)
!5613 = !DILocation(line: 30, column: 47, scope: !5609)
!5614 = !DILocation(line: 32, column: 17, scope: !5609)
!5615 = !DILocation(line: 32, column: 27, scope: !5609)
!5616 = !DILocation(line: 32, column: 10, scope: !5609)
!5617 = !DILocation(line: 32, column: 3, scope: !5609)
!5618 = distinct !DISubprogram(name: "c32isprint", scope: !1974, file: !1974, line: 41, type: !1975, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !411, retainedNodes: !39)
!5619 = !DILocalVariable(name: "wc", arg: 1, scope: !5618, file: !1974, line: 41, type: !1977)
!5620 = !DILocation(line: 41, column: 14, scope: !5618)
!5621 = !DILocation(line: 66, column: 22, scope: !5618)
!5622 = !DILocation(line: 66, column: 10, scope: !5618)
!5623 = !DILocation(line: 66, column: 3, scope: !5618)
!5624 = distinct !DISubprogram(name: "close_stream", scope: !414, file: !414, line: 55, type: !5625, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !413, retainedNodes: !39)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!28, !5627}
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !99, line: 7, baseType: !5629)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !101, line: 49, size: 1728, elements: !5630)
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5629, file: !101, line: 51, baseType: !28, size: 32)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5629, file: !101, line: 54, baseType: !22, size: 64, offset: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5629, file: !101, line: 55, baseType: !22, size: 64, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5629, file: !101, line: 56, baseType: !22, size: 64, offset: 192)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5629, file: !101, line: 57, baseType: !22, size: 64, offset: 256)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5629, file: !101, line: 58, baseType: !22, size: 64, offset: 320)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5629, file: !101, line: 59, baseType: !22, size: 64, offset: 384)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5629, file: !101, line: 60, baseType: !22, size: 64, offset: 448)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5629, file: !101, line: 61, baseType: !22, size: 64, offset: 512)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5629, file: !101, line: 64, baseType: !22, size: 64, offset: 576)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5629, file: !101, line: 65, baseType: !22, size: 64, offset: 640)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5629, file: !101, line: 66, baseType: !22, size: 64, offset: 704)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5629, file: !101, line: 68, baseType: !116, size: 64, offset: 768)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5629, file: !101, line: 70, baseType: !5645, size: 64, offset: 832)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5629, file: !101, line: 72, baseType: !28, size: 32, offset: 896)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5629, file: !101, line: 73, baseType: !28, size: 32, offset: 928)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5629, file: !101, line: 74, baseType: !123, size: 64, offset: 960)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5629, file: !101, line: 77, baseType: !29, size: 16, offset: 1024)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5629, file: !101, line: 78, baseType: !127, size: 8, offset: 1040)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5629, file: !101, line: 79, baseType: !129, size: 8, offset: 1048)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5629, file: !101, line: 81, baseType: !133, size: 64, offset: 1088)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5629, file: !101, line: 89, baseType: !136, size: 64, offset: 1152)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5629, file: !101, line: 91, baseType: !138, size: 64, offset: 1216)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5629, file: !101, line: 92, baseType: !141, size: 64, offset: 1280)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5629, file: !101, line: 93, baseType: !5645, size: 64, offset: 1344)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5629, file: !101, line: 94, baseType: !24, size: 64, offset: 1408)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5629, file: !101, line: 95, baseType: !146, size: 64, offset: 1472)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5629, file: !101, line: 96, baseType: !28, size: 32, offset: 1536)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5629, file: !101, line: 98, baseType: !150, size: 160, offset: 1568)
!5661 = !DILocalVariable(name: "stream", arg: 1, scope: !5624, file: !414, line: 55, type: !5627)
!5662 = !DILocation(line: 55, column: 21, scope: !5624)
!5663 = !DILocalVariable(name: "some_pending", scope: !5624, file: !414, line: 57, type: !5664)
!5664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!5665 = !DILocation(line: 57, column: 14, scope: !5624)
!5666 = !DILocation(line: 57, column: 42, scope: !5624)
!5667 = !DILocation(line: 57, column: 30, scope: !5624)
!5668 = !DILocation(line: 57, column: 50, scope: !5624)
!5669 = !DILocalVariable(name: "prev_fail", scope: !5624, file: !414, line: 58, type: !5664)
!5670 = !DILocation(line: 58, column: 14, scope: !5624)
!5671 = !DILocation(line: 58, column: 27, scope: !5624)
!5672 = !DILocation(line: 58, column: 43, scope: !5624)
!5673 = !DILocalVariable(name: "fclose_fail", scope: !5624, file: !414, line: 59, type: !5664)
!5674 = !DILocation(line: 59, column: 14, scope: !5624)
!5675 = !DILocation(line: 59, column: 37, scope: !5624)
!5676 = !DILocation(line: 59, column: 29, scope: !5624)
!5677 = !DILocation(line: 59, column: 45, scope: !5624)
!5678 = !DILocation(line: 69, column: 7, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5624, file: !414, line: 69, column: 7)
!5680 = !DILocation(line: 69, column: 17, scope: !5679)
!5681 = !DILocation(line: 69, column: 21, scope: !5679)
!5682 = !DILocation(line: 69, column: 33, scope: !5679)
!5683 = !DILocation(line: 69, column: 37, scope: !5679)
!5684 = !DILocation(line: 69, column: 50, scope: !5679)
!5685 = !DILocation(line: 69, column: 53, scope: !5679)
!5686 = !DILocation(line: 69, column: 59, scope: !5679)
!5687 = !DILocation(line: 69, column: 7, scope: !5624)
!5688 = !DILocation(line: 71, column: 13, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5690, file: !414, line: 71, column: 11)
!5690 = distinct !DILexicalBlock(scope: !5679, file: !414, line: 70, column: 5)
!5691 = !DILocation(line: 71, column: 11, scope: !5690)
!5692 = !DILocation(line: 72, column: 9, scope: !5689)
!5693 = !DILocation(line: 72, column: 15, scope: !5689)
!5694 = !DILocation(line: 73, column: 7, scope: !5690)
!5695 = !DILocation(line: 76, column: 3, scope: !5624)
!5696 = !DILocation(line: 77, column: 1, scope: !5624)
!5697 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5698, file: !5698, line: 43, type: !5699, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !415, retainedNodes: !39)
!5698 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5699 = !DISubroutineType(types: !205)
!5700 = !DILocation(line: 45, column: 3, scope: !5697)
!5701 = !DILocation(line: 45, column: 9, scope: !5697)
!5702 = !DILocation(line: 46, column: 3, scope: !5697)
!5703 = distinct !DISubprogram(name: "imalloc", scope: !5698, file: !5698, line: 55, type: !5078, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !415, retainedNodes: !39)
!5704 = !DILocalVariable(name: "s", arg: 1, scope: !5703, file: !5698, line: 55, type: !155)
!5705 = !DILocation(line: 55, column: 16, scope: !5703)
!5706 = !DILocation(line: 57, column: 10, scope: !5703)
!5707 = !DILocation(line: 57, column: 12, scope: !5703)
!5708 = !DILocation(line: 57, column: 34, scope: !5703)
!5709 = !DILocation(line: 57, column: 26, scope: !5703)
!5710 = !DILocation(line: 57, column: 39, scope: !5703)
!5711 = !DILocation(line: 57, column: 3, scope: !5703)
!5712 = distinct !DISubprogram(name: "irealloc", scope: !5698, file: !5698, line: 66, type: !5106, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !415, retainedNodes: !39)
!5713 = !DILocalVariable(name: "p", arg: 1, scope: !5712, file: !5698, line: 66, type: !24)
!5714 = !DILocation(line: 66, column: 17, scope: !5712)
!5715 = !DILocalVariable(name: "s", arg: 2, scope: !5712, file: !5698, line: 66, type: !155)
!5716 = !DILocation(line: 66, column: 26, scope: !5712)
!5717 = !DILocation(line: 68, column: 10, scope: !5712)
!5718 = !DILocation(line: 68, column: 12, scope: !5712)
!5719 = !DILocation(line: 68, column: 35, scope: !5712)
!5720 = !DILocation(line: 68, column: 38, scope: !5712)
!5721 = !DILocation(line: 68, column: 26, scope: !5712)
!5722 = !DILocation(line: 68, column: 43, scope: !5712)
!5723 = !DILocation(line: 68, column: 3, scope: !5712)
!5724 = distinct !DISubprogram(name: "icalloc", scope: !5698, file: !5698, line: 77, type: !5144, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !415, retainedNodes: !39)
!5725 = !DILocalVariable(name: "n", arg: 1, scope: !5724, file: !5698, line: 77, type: !155)
!5726 = !DILocation(line: 77, column: 16, scope: !5724)
!5727 = !DILocalVariable(name: "s", arg: 2, scope: !5724, file: !5698, line: 77, type: !155)
!5728 = !DILocation(line: 77, column: 25, scope: !5724)
!5729 = !DILocation(line: 79, column: 18, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5724, file: !5698, line: 79, column: 7)
!5731 = !DILocation(line: 79, column: 16, scope: !5730)
!5732 = !DILocation(line: 79, column: 7, scope: !5724)
!5733 = !DILocation(line: 81, column: 11, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !5698, line: 81, column: 11)
!5735 = distinct !DILexicalBlock(scope: !5730, file: !5698, line: 80, column: 5)
!5736 = !DILocation(line: 81, column: 13, scope: !5734)
!5737 = !DILocation(line: 81, column: 11, scope: !5735)
!5738 = !DILocation(line: 82, column: 16, scope: !5734)
!5739 = !DILocation(line: 82, column: 9, scope: !5734)
!5740 = !DILocation(line: 83, column: 9, scope: !5735)
!5741 = !DILocation(line: 84, column: 5, scope: !5735)
!5742 = !DILocation(line: 85, column: 18, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5724, file: !5698, line: 85, column: 7)
!5744 = !DILocation(line: 85, column: 16, scope: !5743)
!5745 = !DILocation(line: 85, column: 7, scope: !5724)
!5746 = !DILocation(line: 87, column: 11, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !5698, line: 87, column: 11)
!5748 = distinct !DILexicalBlock(scope: !5743, file: !5698, line: 86, column: 5)
!5749 = !DILocation(line: 87, column: 13, scope: !5747)
!5750 = !DILocation(line: 87, column: 11, scope: !5748)
!5751 = !DILocation(line: 88, column: 16, scope: !5747)
!5752 = !DILocation(line: 88, column: 9, scope: !5747)
!5753 = !DILocation(line: 89, column: 9, scope: !5748)
!5754 = !DILocation(line: 90, column: 5, scope: !5748)
!5755 = !DILocation(line: 91, column: 18, scope: !5724)
!5756 = !DILocation(line: 91, column: 21, scope: !5724)
!5757 = !DILocation(line: 91, column: 10, scope: !5724)
!5758 = !DILocation(line: 91, column: 3, scope: !5724)
!5759 = !DILocation(line: 92, column: 1, scope: !5724)
!5760 = distinct !DISubprogram(name: "ireallocarray", scope: !5698, file: !5698, line: 98, type: !5118, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !415, retainedNodes: !39)
!5761 = !DILocalVariable(name: "p", arg: 1, scope: !5760, file: !5698, line: 98, type: !24)
!5762 = !DILocation(line: 98, column: 22, scope: !5760)
!5763 = !DILocalVariable(name: "n", arg: 2, scope: !5760, file: !5698, line: 98, type: !155)
!5764 = !DILocation(line: 98, column: 31, scope: !5760)
!5765 = !DILocalVariable(name: "s", arg: 3, scope: !5760, file: !5698, line: 98, type: !155)
!5766 = !DILocation(line: 98, column: 40, scope: !5760)
!5767 = !DILocation(line: 100, column: 11, scope: !5760)
!5768 = !DILocation(line: 100, column: 13, scope: !5760)
!5769 = !DILocation(line: 100, column: 25, scope: !5760)
!5770 = !DILocation(line: 100, column: 28, scope: !5760)
!5771 = !DILocation(line: 100, column: 30, scope: !5760)
!5772 = !DILocation(line: 101, column: 27, scope: !5760)
!5773 = !DILocation(line: 101, column: 30, scope: !5760)
!5774 = !DILocation(line: 101, column: 33, scope: !5760)
!5775 = !DILocation(line: 101, column: 13, scope: !5760)
!5776 = !DILocation(line: 102, column: 13, scope: !5760)
!5777 = !DILocation(line: 100, column: 3, scope: !5760)
!5778 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !325, file: !325, line: 100, type: !5779, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !324, retainedNodes: !39)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!146, !5781, !37, !146, !5782}
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!5783 = !DILocalVariable(name: "pwc", arg: 1, scope: !5778, file: !325, line: 100, type: !5781)
!5784 = !DILocation(line: 100, column: 21, scope: !5778)
!5785 = !DILocalVariable(name: "s", arg: 2, scope: !5778, file: !325, line: 100, type: !37)
!5786 = !DILocation(line: 100, column: 38, scope: !5778)
!5787 = !DILocalVariable(name: "n", arg: 3, scope: !5778, file: !325, line: 100, type: !146)
!5788 = !DILocation(line: 100, column: 48, scope: !5778)
!5789 = !DILocalVariable(name: "ps", arg: 4, scope: !5778, file: !325, line: 100, type: !5782)
!5790 = !DILocation(line: 100, column: 62, scope: !5778)
!5791 = !DILocation(line: 105, column: 7, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5778, file: !325, line: 105, column: 7)
!5793 = !DILocation(line: 105, column: 9, scope: !5792)
!5794 = !DILocation(line: 105, column: 7, scope: !5778)
!5795 = !DILocation(line: 107, column: 11, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5792, file: !325, line: 106, column: 5)
!5797 = !DILocation(line: 108, column: 9, scope: !5796)
!5798 = !DILocation(line: 109, column: 9, scope: !5796)
!5799 = !DILocation(line: 110, column: 5, scope: !5796)
!5800 = !DILocation(line: 117, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5778, file: !325, line: 117, column: 7)
!5802 = !DILocation(line: 117, column: 10, scope: !5801)
!5803 = !DILocation(line: 117, column: 7, scope: !5778)
!5804 = !DILocation(line: 118, column: 8, scope: !5801)
!5805 = !DILocation(line: 118, column: 5, scope: !5801)
!5806 = !DILocalVariable(name: "ret", scope: !5778, file: !325, line: 130, type: !146)
!5807 = !DILocation(line: 130, column: 10, scope: !5778)
!5808 = !DILocation(line: 130, column: 26, scope: !5778)
!5809 = !DILocation(line: 130, column: 31, scope: !5778)
!5810 = !DILocation(line: 130, column: 34, scope: !5778)
!5811 = !DILocation(line: 130, column: 37, scope: !5778)
!5812 = !DILocation(line: 130, column: 16, scope: !5778)
!5813 = !DILocation(line: 135, column: 7, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5778, file: !325, line: 135, column: 7)
!5815 = !DILocation(line: 135, column: 11, scope: !5814)
!5816 = !DILocation(line: 135, column: 25, scope: !5814)
!5817 = !DILocation(line: 135, column: 39, scope: !5814)
!5818 = !DILocation(line: 135, column: 30, scope: !5814)
!5819 = !DILocation(line: 135, column: 7, scope: !5778)
!5820 = !DILocation(line: 137, column: 14, scope: !5814)
!5821 = !DILocation(line: 137, column: 5, scope: !5814)
!5822 = !DILocation(line: 138, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5778, file: !325, line: 138, column: 7)
!5824 = !DILocation(line: 138, column: 11, scope: !5823)
!5825 = !DILocation(line: 138, column: 7, scope: !5778)
!5826 = !DILocation(line: 139, column: 5, scope: !5823)
!5827 = !DILocation(line: 143, column: 22, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5778, file: !325, line: 143, column: 7)
!5829 = !DILocation(line: 143, column: 19, scope: !5828)
!5830 = !DILocation(line: 143, column: 26, scope: !5828)
!5831 = !DILocation(line: 143, column: 29, scope: !5828)
!5832 = !DILocation(line: 143, column: 31, scope: !5828)
!5833 = !DILocation(line: 143, column: 36, scope: !5828)
!5834 = !DILocation(line: 143, column: 41, scope: !5828)
!5835 = !DILocation(line: 143, column: 7, scope: !5778)
!5836 = !DILocation(line: 145, column: 11, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5838, file: !325, line: 145, column: 11)
!5838 = distinct !DILexicalBlock(scope: !5828, file: !325, line: 144, column: 5)
!5839 = !DILocation(line: 145, column: 15, scope: !5837)
!5840 = !DILocation(line: 145, column: 11, scope: !5838)
!5841 = !DILocation(line: 146, column: 33, scope: !5837)
!5842 = !DILocation(line: 146, column: 32, scope: !5837)
!5843 = !DILocation(line: 146, column: 16, scope: !5837)
!5844 = !DILocation(line: 146, column: 10, scope: !5837)
!5845 = !DILocation(line: 146, column: 14, scope: !5837)
!5846 = !DILocation(line: 146, column: 9, scope: !5837)
!5847 = !DILocation(line: 147, column: 7, scope: !5838)
!5848 = !DILocation(line: 151, column: 10, scope: !5778)
!5849 = !DILocation(line: 151, column: 3, scope: !5778)
!5850 = !DILocation(line: 286, column: 1, scope: !5778)
!5851 = distinct !DISubprogram(name: "mbszero", scope: !5852, file: !5852, line: 1135, type: !5853, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !417, retainedNodes: !39)
!5852 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !5855}
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !330, line: 6, baseType: !5857)
!5857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !332, line: 21, baseType: !5858)
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 13, size: 64, elements: !5859)
!5859 = !{!5860, !5861}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5858, file: !332, line: 15, baseType: !28, size: 32)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5858, file: !332, line: 20, baseType: !5862, size: 32, offset: 32)
!5862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5858, file: !332, line: 16, size: 32, elements: !5863)
!5863 = !{!5864, !5865}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5862, file: !332, line: 18, baseType: !7, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5862, file: !332, line: 19, baseType: !341, size: 32)
!5866 = !DILocalVariable(name: "ps", arg: 1, scope: !5851, file: !5852, line: 1135, type: !5855)
!5867 = !DILocation(line: 1135, column: 21, scope: !5851)
!5868 = !DILocation(line: 1137, column: 11, scope: !5851)
!5869 = !DILocation(line: 1137, column: 3, scope: !5851)
!5870 = !DILocation(line: 1138, column: 1, scope: !5851)
!5871 = distinct !DISubprogram(name: "memeq", scope: !4729, file: !4729, line: 974, type: !5872, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !419, retainedNodes: !39)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!25, !5329, !5329, !146}
!5874 = !DILocalVariable(name: "__s1", arg: 1, scope: !5871, file: !4729, line: 974, type: !5329)
!5875 = !DILocation(line: 974, column: 20, scope: !5871)
!5876 = !DILocalVariable(name: "__s2", arg: 2, scope: !5871, file: !4729, line: 974, type: !5329)
!5877 = !DILocation(line: 974, column: 38, scope: !5871)
!5878 = !DILocalVariable(name: "__n", arg: 3, scope: !5871, file: !4729, line: 974, type: !146)
!5879 = !DILocation(line: 974, column: 51, scope: !5871)
!5880 = !DILocation(line: 976, column: 19, scope: !5871)
!5881 = !DILocation(line: 976, column: 25, scope: !5871)
!5882 = !DILocation(line: 976, column: 31, scope: !5871)
!5883 = !DILocation(line: 976, column: 11, scope: !5871)
!5884 = !DILocation(line: 976, column: 10, scope: !5871)
!5885 = !DILocation(line: 976, column: 3, scope: !5871)
!5886 = distinct !DISubprogram(name: "rpl_realloc", scope: !5887, file: !5887, line: 2057, type: !5094, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !421, retainedNodes: !39)
!5887 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5888 = !DILocalVariable(name: "ptr", arg: 1, scope: !5886, file: !5887, line: 2057, type: !24)
!5889 = !DILocation(line: 2057, column: 20, scope: !5886)
!5890 = !DILocalVariable(name: "size", arg: 2, scope: !5886, file: !5887, line: 2057, type: !146)
!5891 = !DILocation(line: 2057, column: 32, scope: !5886)
!5892 = !DILocation(line: 2059, column: 19, scope: !5886)
!5893 = !DILocation(line: 2059, column: 24, scope: !5886)
!5894 = !DILocation(line: 2059, column: 31, scope: !5886)
!5895 = !DILocation(line: 2059, column: 10, scope: !5886)
!5896 = !DILocation(line: 2059, column: 3, scope: !5886)
!5897 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !424, file: !424, line: 27, type: !5031, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !423, retainedNodes: !39)
!5898 = !DILocalVariable(name: "ptr", arg: 1, scope: !5897, file: !424, line: 27, type: !24)
!5899 = !DILocation(line: 27, column: 21, scope: !5897)
!5900 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5897, file: !424, line: 27, type: !146)
!5901 = !DILocation(line: 27, column: 33, scope: !5897)
!5902 = !DILocalVariable(name: "size", arg: 3, scope: !5897, file: !424, line: 27, type: !146)
!5903 = !DILocation(line: 27, column: 47, scope: !5897)
!5904 = !DILocalVariable(name: "nbytes", scope: !5897, file: !424, line: 29, type: !146)
!5905 = !DILocation(line: 29, column: 10, scope: !5897)
!5906 = !DILocation(line: 30, column: 7, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5897, file: !424, line: 30, column: 7)
!5908 = !DILocation(line: 30, column: 7, scope: !5897)
!5909 = !DILocation(line: 32, column: 7, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5907, file: !424, line: 31, column: 5)
!5911 = !DILocation(line: 32, column: 13, scope: !5910)
!5912 = !DILocation(line: 33, column: 7, scope: !5910)
!5913 = !DILocation(line: 37, column: 19, scope: !5897)
!5914 = !DILocation(line: 37, column: 24, scope: !5897)
!5915 = !DILocation(line: 37, column: 10, scope: !5897)
!5916 = !DILocation(line: 37, column: 3, scope: !5897)
!5917 = !DILocation(line: 38, column: 1, scope: !5897)
!5918 = distinct !DISubprogram(name: "hard_locale", scope: !427, file: !427, line: 28, type: !1827, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !426, retainedNodes: !39)
!5919 = !DILocalVariable(name: "category", arg: 1, scope: !5918, file: !427, line: 28, type: !28)
!5920 = !DILocation(line: 28, column: 18, scope: !5918)
!5921 = !DILocalVariable(name: "locale", scope: !5918, file: !427, line: 30, type: !5922)
!5922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !5923)
!5923 = !{!5924}
!5924 = !DISubrange(count: 257)
!5925 = !DILocation(line: 30, column: 8, scope: !5918)
!5926 = !DILocation(line: 32, column: 25, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5918, file: !427, line: 32, column: 7)
!5928 = !DILocation(line: 32, column: 35, scope: !5927)
!5929 = !DILocation(line: 32, column: 7, scope: !5927)
!5930 = !DILocation(line: 32, column: 7, scope: !5918)
!5931 = !DILocation(line: 33, column: 5, scope: !5927)
!5932 = !DILocation(line: 35, column: 16, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5918, file: !427, line: 35, column: 7)
!5934 = !DILocation(line: 35, column: 9, scope: !5933)
!5935 = !DILocation(line: 35, column: 29, scope: !5933)
!5936 = !DILocation(line: 35, column: 39, scope: !5933)
!5937 = !DILocation(line: 35, column: 32, scope: !5933)
!5938 = !DILocation(line: 35, column: 7, scope: !5918)
!5939 = !DILocation(line: 36, column: 5, scope: !5933)
!5940 = !DILocation(line: 46, column: 3, scope: !5918)
!5941 = !DILocation(line: 47, column: 1, scope: !5918)
!5942 = distinct !DISubprogram(name: "setlocale_null_r", scope: !429, file: !429, line: 154, type: !5943, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !428, retainedNodes: !39)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{!28, !28, !22, !146}
!5945 = !DILocalVariable(name: "category", arg: 1, scope: !5942, file: !429, line: 154, type: !28)
!5946 = !DILocation(line: 154, column: 23, scope: !5942)
!5947 = !DILocalVariable(name: "buf", arg: 2, scope: !5942, file: !429, line: 154, type: !22)
!5948 = !DILocation(line: 154, column: 39, scope: !5942)
!5949 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5942, file: !429, line: 154, type: !146)
!5950 = !DILocation(line: 154, column: 51, scope: !5942)
!5951 = !DILocation(line: 159, column: 37, scope: !5942)
!5952 = !DILocation(line: 159, column: 47, scope: !5942)
!5953 = !DILocation(line: 159, column: 52, scope: !5942)
!5954 = !DILocation(line: 159, column: 10, scope: !5942)
!5955 = !DILocation(line: 159, column: 3, scope: !5942)
!5956 = distinct !DISubprogram(name: "setlocale_null", scope: !429, file: !429, line: 186, type: !5957, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !428, retainedNodes: !39)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!37, !28}
!5959 = !DILocalVariable(name: "category", arg: 1, scope: !5956, file: !429, line: 186, type: !28)
!5960 = !DILocation(line: 186, column: 21, scope: !5956)
!5961 = !DILocation(line: 189, column: 35, scope: !5956)
!5962 = !DILocation(line: 189, column: 10, scope: !5956)
!5963 = !DILocation(line: 189, column: 3, scope: !5956)
!5964 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !431, file: !431, line: 35, type: !5957, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !430, retainedNodes: !39)
!5965 = !DILocalVariable(name: "category", arg: 1, scope: !5964, file: !431, line: 35, type: !28)
!5966 = !DILocation(line: 35, column: 30, scope: !5964)
!5967 = !DILocalVariable(name: "result", scope: !5964, file: !431, line: 37, type: !37)
!5968 = !DILocation(line: 37, column: 15, scope: !5964)
!5969 = !DILocation(line: 37, column: 35, scope: !5964)
!5970 = !DILocation(line: 37, column: 24, scope: !5964)
!5971 = !DILocation(line: 62, column: 10, scope: !5964)
!5972 = !DILocation(line: 62, column: 3, scope: !5964)
!5973 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !431, file: !431, line: 66, type: !5943, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !430, retainedNodes: !39)
!5974 = !DILocalVariable(name: "category", arg: 1, scope: !5973, file: !431, line: 66, type: !28)
!5975 = !DILocation(line: 66, column: 32, scope: !5973)
!5976 = !DILocalVariable(name: "buf", arg: 2, scope: !5973, file: !431, line: 66, type: !22)
!5977 = !DILocation(line: 66, column: 48, scope: !5973)
!5978 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5973, file: !431, line: 66, type: !146)
!5979 = !DILocation(line: 66, column: 60, scope: !5973)
!5980 = !DILocalVariable(name: "result", scope: !5973, file: !431, line: 111, type: !37)
!5981 = !DILocation(line: 111, column: 15, scope: !5973)
!5982 = !DILocation(line: 111, column: 49, scope: !5973)
!5983 = !DILocation(line: 111, column: 24, scope: !5973)
!5984 = !DILocation(line: 113, column: 7, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5973, file: !431, line: 113, column: 7)
!5986 = !DILocation(line: 113, column: 14, scope: !5985)
!5987 = !DILocation(line: 113, column: 7, scope: !5973)
!5988 = !DILocation(line: 116, column: 11, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !431, line: 116, column: 11)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !431, line: 114, column: 5)
!5991 = !DILocation(line: 116, column: 19, scope: !5989)
!5992 = !DILocation(line: 116, column: 11, scope: !5990)
!5993 = !DILocation(line: 120, column: 9, scope: !5989)
!5994 = !DILocation(line: 120, column: 16, scope: !5989)
!5995 = !DILocation(line: 121, column: 7, scope: !5990)
!5996 = !DILocalVariable(name: "length", scope: !5997, file: !431, line: 125, type: !146)
!5997 = distinct !DILexicalBlock(scope: !5985, file: !431, line: 124, column: 5)
!5998 = !DILocation(line: 125, column: 14, scope: !5997)
!5999 = !DILocation(line: 125, column: 31, scope: !5997)
!6000 = !DILocation(line: 125, column: 23, scope: !5997)
!6001 = !DILocation(line: 126, column: 11, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5997, file: !431, line: 126, column: 11)
!6003 = !DILocation(line: 126, column: 20, scope: !6002)
!6004 = !DILocation(line: 126, column: 18, scope: !6002)
!6005 = !DILocation(line: 126, column: 11, scope: !5997)
!6006 = !DILocation(line: 128, column: 19, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6002, file: !431, line: 127, column: 9)
!6008 = !DILocation(line: 128, column: 24, scope: !6007)
!6009 = !DILocation(line: 128, column: 32, scope: !6007)
!6010 = !DILocation(line: 128, column: 39, scope: !6007)
!6011 = !DILocation(line: 128, column: 11, scope: !6007)
!6012 = !DILocation(line: 129, column: 11, scope: !6007)
!6013 = !DILocation(line: 133, column: 15, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !431, line: 133, column: 15)
!6015 = distinct !DILexicalBlock(scope: !6002, file: !431, line: 132, column: 9)
!6016 = !DILocation(line: 133, column: 23, scope: !6014)
!6017 = !DILocation(line: 133, column: 15, scope: !6015)
!6018 = !DILocation(line: 138, column: 23, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6014, file: !431, line: 134, column: 13)
!6020 = !DILocation(line: 138, column: 28, scope: !6019)
!6021 = !DILocation(line: 138, column: 36, scope: !6019)
!6022 = !DILocation(line: 138, column: 44, scope: !6019)
!6023 = !DILocation(line: 138, column: 15, scope: !6019)
!6024 = !DILocation(line: 139, column: 15, scope: !6019)
!6025 = !DILocation(line: 139, column: 19, scope: !6019)
!6026 = !DILocation(line: 139, column: 27, scope: !6019)
!6027 = !DILocation(line: 139, column: 32, scope: !6019)
!6028 = !DILocation(line: 140, column: 13, scope: !6019)
!6029 = !DILocation(line: 141, column: 11, scope: !6015)
!6030 = !DILocation(line: 145, column: 1, scope: !5973)
