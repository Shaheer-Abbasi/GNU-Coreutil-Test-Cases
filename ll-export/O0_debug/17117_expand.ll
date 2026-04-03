; ModuleID = 'src/expand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !38
@optarg = external global i8*, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !29
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !52
@.str.54 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@convert_entire_line = dso_local global i8 0, align 1, !dbg !63
@exit_status = dso_local global i32 0, align 4, !dbg !95
@first_free_tab = internal global i64 0, align 8, !dbg !163
@tab_list = internal global i64* null, align 8, !dbg !165
@n_tabs_allocated = internal global i64 0, align 8, !dbg !173
@.str.56 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.1.57 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.59 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.60 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@extend_size = internal global i64 0, align 8, !dbg !175
@increment_size = internal global i64 0, align 8, !dbg !177
@max_column_width = dso_local global i64 0, align 8, !dbg !158
@tab_size = internal global i64 0, align 8, !dbg !179
@.str.5.70 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@have_read_stdin = internal global i8 0, align 1, !dbg !181
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.73, i32 0, i32 0), i8* null], align 8, !dbg !183
@file_list = internal global i8** null, align 8, !dbg !188
@next_file.prev_file = internal global i8* null, align 8, !dbg !97
@.str.6.73 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7.76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.8.77 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.82 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1
@.str.11.5 = private unnamed_addr constant [23 x i8] c"tabs are too far apart\00", align 1
@.str.12.62 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.13.61 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.14.65 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.15.66 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.16.67 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@oputs_.help_no_sgr.85 = internal global i32 -1, align 4, !dbg !191
@.str.17.86 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18.87 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19.88 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20.89 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21.90 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22.102 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23.91 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24.101 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25.92 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26.93 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27.100 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28.94 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29.95 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30.96 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31.97 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32.98 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33.99 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34.103 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35.104 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36.105 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37.106 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38.107 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39.108 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40.109 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41.110 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42.111 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43.112 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0), align 8, !dbg !194
@file_name = internal global i8* null, align 8, !dbg !199
@ignore_EPIPE = internal global i8 0, align 1, !dbg !204
@.str.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.125 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.126 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.127 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !206
@stderr = external global %struct._IO_FILE*, align 8
@.str.128 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !235
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !212
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !231
@.str.1.134 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.135 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.136 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !233
@.str.4.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.130 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.131 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !238
@.str.163 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.164 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !244
@.str.167 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.168 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.169 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.170 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.171 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.172 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.173 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.174 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.175 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.176 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.168, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.170, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.171, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.172, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.173, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.174, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.175, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.176, i32 0, i32 0), i8* null], align 8, !dbg !253
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !265
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !283
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !298
@nslots = internal global i32 1, align 4, !dbg !305
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !285
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !307
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !271
@.str.10.177 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.178 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.179 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.180 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !290
@.str.189 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.190 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.191 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.192 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.193 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.194 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.195 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.196 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.197 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.198 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.199 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.200 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.201 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.202 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.203 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.204 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.205 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.210 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.211 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.212 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.213 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.214 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.215 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.216 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !313
@exit_failure = dso_local global i32 1, align 4, !dbg !321
@.str.231 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.229 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.230 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.248 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !327
@.str.259 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.260 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !449 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !452, metadata !DIExpression()), !dbg !453
  %3 = load i32, i32* %2, align 4, !dbg !454
  %4 = icmp ne i32 %3, 0, !dbg !456
  br i1 %4, label %5, label %12, !dbg !457

5:                                                ; preds = %1
  br label %6, !dbg !458

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !459
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !459
  %9 = load i8*, i8** @program_name, align 8, !dbg !459
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !459
  br label %11, !dbg !459

11:                                               ; preds = %6
  br label %23, !dbg !459

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !461
  %14 = load i8*, i8** @program_name, align 8, !dbg !463
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !464
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !465
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !465
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !465
  call void @emit_stdin_note(), !dbg !466
  call void @emit_mandatory_arg_note(), !dbg !467
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !468
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !468
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !469
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !469
  call void @emit_tab_list_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !470
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !471
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !471
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !472
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !472
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !473
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4, !dbg !474
  call void @exit(i32 noundef %24) #19, !dbg !475
  unreachable, !dbg !475
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #4 !dbg !476 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !477
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !477
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !479 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !480
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !31 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !482, metadata !DIExpression()), !dbg !483
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !484, metadata !DIExpression()), !dbg !485
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !486
  %15 = icmp eq i32 %14, -1, !dbg !488
  br i1 %15, label %16, label %30, !dbg !489

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !490, metadata !DIExpression()), !dbg !492
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !493
  store i8* %17, i8** %5, align 8, !dbg !492
  %18 = load i8*, i8** %5, align 8, !dbg !494
  %19 = icmp ne i8* %18, null, !dbg !494
  br i1 %19, label %20, label %27, !dbg !495

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !496
  %22 = load i8, i8* %21, align 1, !dbg !497
  %23 = icmp ne i8 %22, 0, !dbg !497
  br i1 %23, label %24, label %27, !dbg !498

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !499
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)), !dbg !500
  br label %27, !dbg !498

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !498
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !501
  br label %30, !dbg !502

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !503
  %32 = icmp ne i32 %31, 0, !dbg !503
  br i1 %32, label %33, label %37, !dbg !505

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !506
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !506
  br label %274, !dbg !508

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !509, metadata !DIExpression()), !dbg !510
  store i8 1, i8* %6, align 1, !dbg !510
  call void @llvm.dbg.declare(metadata i8** %7, metadata !511, metadata !DIExpression()), !dbg !512
  %38 = load i8*, i8** %4, align 8, !dbg !513
  %39 = load i8*, i8** %4, align 8, !dbg !514
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #20, !dbg !515
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !516
  store i8* %41, i8** %7, align 8, !dbg !512
  call void @llvm.dbg.declare(metadata i8** %8, metadata !517, metadata !DIExpression()), !dbg !518
  %42 = load i8*, i8** %4, align 8, !dbg !519
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !520
  store i8* %43, i8** %8, align 8, !dbg !518
  %44 = load i8*, i8** %8, align 8, !dbg !521
  %45 = icmp ne i8* %44, null, !dbg !521
  br i1 %45, label %48, label %46, !dbg !523

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !524
  store i8* %47, i8** %8, align 8, !dbg !526
  store i8 0, i8* %6, align 1, !dbg !527
  br label %89, !dbg !528

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !529
  %50 = load i8*, i8** %7, align 8, !dbg !531
  %51 = icmp ne i8* %49, %50, !dbg !532
  br i1 %51, label %52, label %88, !dbg !533

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !534, metadata !DIExpression()), !dbg !536
  %53 = load i8*, i8** %7, align 8, !dbg !537
  store i8* %53, i8** %9, align 8, !dbg !536
  call void @llvm.dbg.declare(metadata i64* %10, metadata !538, metadata !DIExpression()), !dbg !539
  store i64 0, i64* %10, align 8, !dbg !539
  br label %54, !dbg !540

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !541
  %56 = load i8*, i8** %8, align 8, !dbg !542
  %57 = icmp ult i8* %55, %56, !dbg !543
  br i1 %57, label %58, label %61, !dbg !544

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !545
  %60 = icmp ult i64 %59, 2, !dbg !546
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !547
  br i1 %62, label %63, label %82, !dbg !540

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !548
  %65 = load i16*, i16** %64, align 8, !dbg !548
  %66 = load i8*, i8** %9, align 8, !dbg !548
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !548
  store i8* %67, i8** %9, align 8, !dbg !548
  %68 = load i8, i8* %66, align 1, !dbg !548
  %69 = zext i8 %68 to i32, !dbg !548
  %70 = sext i32 %69 to i64, !dbg !548
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !548
  %72 = load i16, i16* %71, align 2, !dbg !548
  %73 = zext i16 %72 to i32, !dbg !548
  %74 = and i32 %73, 8192, !dbg !548
  %75 = icmp ne i32 %74, 0, !dbg !549
  %76 = xor i1 %75, true, !dbg !549
  %77 = xor i1 %76, true, !dbg !550
  %78 = zext i1 %77 to i32, !dbg !550
  %79 = sext i32 %78 to i64, !dbg !550
  %80 = load i64, i64* %10, align 8, !dbg !551
  %81 = add i64 %80, %79, !dbg !551
  store i64 %81, i64* %10, align 8, !dbg !551
  br label %54, !dbg !540, !llvm.loop !552

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !554
  %84 = icmp eq i64 %83, 2, !dbg !556
  br i1 %84, label %85, label %87, !dbg !557

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !558
  store i8* %86, i8** %8, align 8, !dbg !560
  store i8 0, i8* %6, align 1, !dbg !561
  br label %87, !dbg !562

87:                                               ; preds = %85, %82
  br label %88, !dbg !563

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !564, metadata !DIExpression()), !dbg !565
  %90 = load i8*, i8** %8, align 8, !dbg !566
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !567
  store i64 %91, i64* %11, align 8, !dbg !565
  call void @llvm.dbg.declare(metadata i8** %12, metadata !568, metadata !DIExpression()), !dbg !569
  %92 = load i8*, i8** %8, align 8, !dbg !570
  %93 = load i64, i64* %11, align 8, !dbg !571
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !572
  store i8* %94, i8** %12, align 8, !dbg !569
  br label %95, !dbg !573

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !574
  %97 = load i8, i8* %96, align 1, !dbg !575
  %98 = zext i8 %97 to i32, !dbg !575
  %99 = icmp ne i32 %98, 0, !dbg !575
  br i1 %99, label %100, label %105, !dbg !576

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !577
  %102 = load i8, i8* %101, align 1, !dbg !578
  %103 = zext i8 %102 to i32, !dbg !578
  %104 = icmp ne i32 %103, 10, !dbg !579
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !580
  br i1 %106, label %107, label %164, !dbg !573

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !581
  %109 = load i8, i8* %108, align 1, !dbg !584
  %110 = zext i8 %109 to i32, !dbg !584
  %111 = icmp eq i32 %110, 45, !dbg !585
  br i1 %111, label %112, label %119, !dbg !586

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !587
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !588
  %115 = load i8, i8* %114, align 1, !dbg !589
  %116 = zext i8 %115 to i32, !dbg !589
  %117 = icmp eq i32 %116, 45, !dbg !590
  br i1 %117, label %118, label %119, !dbg !591

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !592
  br label %119, !dbg !593

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !594
  %121 = load i16*, i16** %120, align 8, !dbg !594
  %122 = load i8*, i8** %12, align 8, !dbg !594
  %123 = load i8, i8* %122, align 1, !dbg !594
  %124 = zext i8 %123 to i32, !dbg !594
  %125 = sext i32 %124 to i64, !dbg !594
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !594
  %127 = load i16, i16* %126, align 2, !dbg !594
  %128 = zext i16 %127 to i32, !dbg !594
  %129 = and i32 %128, 8192, !dbg !594
  %130 = icmp ne i32 %129, 0, !dbg !594
  br i1 %130, label %131, label %161, !dbg !596

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !597
  %133 = load i8, i8* %132, align 1, !dbg !600
  %134 = zext i8 %133 to i32, !dbg !600
  %135 = icmp eq i32 %134, 9, !dbg !601
  br i1 %135, label %149, label %136, !dbg !602

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !603
  %138 = load i16*, i16** %137, align 8, !dbg !603
  %139 = load i8*, i8** %12, align 8, !dbg !603
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !603
  %141 = load i8, i8* %140, align 1, !dbg !603
  %142 = zext i8 %141 to i32, !dbg !603
  %143 = sext i32 %142 to i64, !dbg !603
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !603
  %145 = load i16, i16* %144, align 2, !dbg !603
  %146 = zext i16 %145 to i32, !dbg !603
  %147 = and i32 %146, 8192, !dbg !603
  %148 = icmp ne i32 %147, 0, !dbg !603
  br i1 %148, label %149, label %150, !dbg !604

149:                                              ; preds = %136, %131
  br label %164, !dbg !605

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !606
  %152 = trunc i8 %151 to i1, !dbg !606
  br i1 %152, label %160, label %153, !dbg !608

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !609
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !610
  %156 = load i8, i8* %155, align 1, !dbg !611
  %157 = zext i8 %156 to i32, !dbg !611
  %158 = icmp ne i32 %157, 45, !dbg !612
  br i1 %158, label %159, label %160, !dbg !613

159:                                              ; preds = %153
  br label %164, !dbg !614

160:                                              ; preds = %153, %150
  br label %161, !dbg !615

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !616
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !616
  store i8* %163, i8** %12, align 8, !dbg !616
  br label %95, !dbg !573, !llvm.loop !617

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !619
  %166 = load i8*, i8** %7, align 8, !dbg !619
  %167 = load i8*, i8** %4, align 8, !dbg !619
  %168 = ptrtoint i8* %166 to i64, !dbg !619
  %169 = ptrtoint i8* %167 to i64, !dbg !619
  %170 = sub i64 %168, %169, !dbg !619
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !619
  call void @llvm.dbg.declare(metadata i8** %13, metadata !620, metadata !DIExpression()), !dbg !621
  %173 = load i8*, i8** %3, align 8, !dbg !622
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !623
  br i1 %174, label %175, label %176, !dbg !623

175:                                              ; preds = %164
  br label %232, !dbg !623

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !624
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)), !dbg !625
  br i1 %178, label %179, label %180, !dbg !625

179:                                              ; preds = %176
  br label %230, !dbg !625

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !626
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)), !dbg !627
  br i1 %182, label %183, label %184, !dbg !627

183:                                              ; preds = %180
  br label %228, !dbg !627

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !628
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)), !dbg !629
  br i1 %186, label %187, label %188, !dbg !629

187:                                              ; preds = %184
  br label %226, !dbg !629

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !630
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)), !dbg !631
  br i1 %190, label %191, label %192, !dbg !631

191:                                              ; preds = %188
  br label %224, !dbg !631

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !632
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)), !dbg !633
  br i1 %194, label %195, label %196, !dbg !633

195:                                              ; preds = %192
  br label %222, !dbg !633

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !634
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)), !dbg !635
  br i1 %198, label %199, label %200, !dbg !635

199:                                              ; preds = %196
  br label %220, !dbg !635

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !636
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)), !dbg !637
  br i1 %202, label %203, label %204, !dbg !637

203:                                              ; preds = %200
  br label %218, !dbg !637

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !638
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)), !dbg !639
  br i1 %206, label %207, label %208, !dbg !639

207:                                              ; preds = %204
  br label %216, !dbg !639

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !640
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !641
  br i1 %210, label %211, label %212, !dbg !641

211:                                              ; preds = %208
  br label %214, !dbg !641

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !642
  br label %214, !dbg !641

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !641
  br label %216, !dbg !639

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !639
  br label %218, !dbg !637

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !637
  br label %220, !dbg !635

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !635
  br label %222, !dbg !633

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !633
  br label %224, !dbg !631

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !631
  br label %226, !dbg !629

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !629
  br label %228, !dbg !627

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !627
  br label %230, !dbg !625

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !625
  br label %232, !dbg !623

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !623
  store i8* %233, i8** %13, align 8, !dbg !621
  %234 = load i8*, i8** %8, align 8, !dbg !643
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #20, !dbg !643
  %236 = icmp eq i32 %235, 0, !dbg !643
  br i1 %236, label %241, label %237, !dbg !645

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !646
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #20, !dbg !646
  %240 = icmp eq i32 %239, 0, !dbg !646
  br i1 %240, label %241, label %248, !dbg !647

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !648
  %243 = load i8*, i8** %13, align 8, !dbg !650
  %244 = load i64, i64* %11, align 8, !dbg !651
  %245 = trunc i64 %244 to i32, !dbg !652
  %246 = load i8*, i8** %8, align 8, !dbg !653
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !654
  br label %254, !dbg !655

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !656
  %250 = load i64, i64* %11, align 8, !dbg !658
  %251 = trunc i64 %250 to i32, !dbg !659
  %252 = load i8*, i8** %8, align 8, !dbg !660
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !661
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !662
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !663
  %259 = load i8*, i8** %7, align 8, !dbg !664
  %260 = load i8*, i8** %12, align 8, !dbg !664
  %261 = load i8*, i8** %7, align 8, !dbg !664
  %262 = ptrtoint i8* %260 to i64, !dbg !664
  %263 = ptrtoint i8* %261 to i64, !dbg !664
  %264 = sub i64 %262, %263, !dbg !664
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !664
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !665
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !666
  %271 = load i8*, i8** %12, align 8, !dbg !667
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !667
  br label %274, !dbg !668

274:                                              ; preds = %254, %33
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !669 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !674, metadata !DIExpression()), !dbg !683
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !683
  call void @llvm.dbg.declare(metadata i8** %4, metadata !684, metadata !DIExpression()), !dbg !685
  %9 = load i8*, i8** %2, align 8, !dbg !686
  store i8* %9, i8** %4, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !687, metadata !DIExpression()), !dbg !689
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !690
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !689
  br label %11, !dbg !691

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !692
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !693
  %14 = load i8*, i8** %13, align 8, !dbg !693
  %15 = icmp ne i8* %14, null, !dbg !692
  br i1 %15, label %16, label %23, !dbg !694

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !695
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !696
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !697
  %20 = load i8*, i8** %19, align 8, !dbg !697
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !698
  %22 = xor i1 %21, true, !dbg !699
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !700
  br i1 %24, label %25, label %28, !dbg !691

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !701
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !701
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !701
  br label %11, !dbg !691, !llvm.loop !702

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !703
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !705
  %31 = load i8*, i8** %30, align 8, !dbg !705
  %32 = icmp ne i8* %31, null, !dbg !703
  br i1 %32, label %33, label %37, !dbg !706

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !707
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !708
  %36 = load i8*, i8** %35, align 8, !dbg !708
  store i8* %36, i8** %4, align 8, !dbg !709
  br label %37, !dbg !710

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !711
  call void @llvm.dbg.declare(metadata i8** %6, metadata !712, metadata !DIExpression()), !dbg !713
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !714
  store i8* %38, i8** %6, align 8, !dbg !713
  %39 = load i8*, i8** %6, align 8, !dbg !715
  %40 = icmp ne i8* %39, null, !dbg !715
  br i1 %40, label %41, label %49, !dbg !717

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !718
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #20, !dbg !718
  %44 = icmp ne i32 %43, 0, !dbg !718
  br i1 %44, label %45, label %49, !dbg !719

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !720
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !720
  br label %49, !dbg !722

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !723, metadata !DIExpression()), !dbg !724
  %50 = load i8*, i8** %2, align 8, !dbg !725
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)), !dbg !726
  br i1 %51, label %52, label %53, !dbg !726

52:                                               ; preds = %49
  br label %55, !dbg !726

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !727
  br label %55, !dbg !726

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !726
  store i8* %56, i8** %7, align 8, !dbg !724
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0)) #18, !dbg !728
  %58 = load i8*, i8** %7, align 8, !dbg !729
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef %58), !dbg !730
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0)) #18, !dbg !731
  %61 = load i8*, i8** %4, align 8, !dbg !732
  %62 = load i8*, i8** %4, align 8, !dbg !733
  %63 = load i8*, i8** %2, align 8, !dbg !734
  %64 = icmp eq i8* %62, %63, !dbg !735
  %65 = zext i1 %64 to i64, !dbg !733
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !733
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !736
  ret void, !dbg !737
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !738 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !741, metadata !DIExpression()), !dbg !742
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %6, metadata !745, metadata !DIExpression()), !dbg !746
  %8 = load i8**, i8*** %5, align 8, !dbg !747
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !747
  %10 = load i8*, i8** %9, align 8, !dbg !747
  call void @set_program_name(i8* noundef %10), !dbg !748
  %11 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !749
  %12 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !750
  %13 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !751
  %14 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !752
  store i8 1, i8* @convert_entire_line, align 1, !dbg !753
  br label %15, !dbg !754

15:                                               ; preds = %44, %2
  %16 = load i32, i32* %4, align 4, !dbg !755
  %17 = load i8**, i8*** %5, align 8, !dbg !756
  %18 = call i32 @getopt_long(i32 noundef %16, i8** noundef %17, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !757
  store i32 %18, i32* %6, align 4, !dbg !758
  %19 = icmp ne i32 %18, -1, !dbg !759
  br i1 %19, label %20, label %45, !dbg !754

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !760
  switch i32 %21, label %43 [
    i32 105, label %22
    i32 116, label %23
    i32 48, label %25
    i32 49, label %25
    i32 50, label %25
    i32 51, label %25
    i32 52, label %25
    i32 53, label %25
    i32 54, label %25
    i32 55, label %25
    i32 56, label %25
    i32 57, label %25
    i32 -2, label %38
    i32 -3, label %39
  ], !dbg !762

22:                                               ; preds = %20
  store i8 0, i8* @convert_entire_line, align 1, !dbg !763
  br label %44, !dbg !765

23:                                               ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !766
  call void @parse_tab_stops(i8* noundef %24), !dbg !767
  br label %44, !dbg !768

25:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %26 = load i8*, i8** @optarg, align 8, !dbg !769
  %27 = icmp ne i8* %26, null, !dbg !769
  br i1 %27, label %28, label %31, !dbg !771

28:                                               ; preds = %25
  %29 = load i8*, i8** @optarg, align 8, !dbg !772
  %30 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !773
  call void @parse_tab_stops(i8* noundef %30), !dbg !774
  br label %37, !dbg !774

31:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata [2 x i8]* %7, metadata !775, metadata !DIExpression()), !dbg !778
  %32 = load i32, i32* %6, align 4, !dbg !779
  %33 = trunc i32 %32 to i8, !dbg !779
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0, !dbg !780
  store i8 %33, i8* %34, align 1, !dbg !781
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1, !dbg !782
  store i8 0, i8* %35, align 1, !dbg !783
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0, !dbg !784
  call void @parse_tab_stops(i8* noundef %36), !dbg !785
  br label %37

37:                                               ; preds = %31, %28
  br label %44, !dbg !786

38:                                               ; preds = %20
  call void @usage(i32 noundef 0) #22, !dbg !787
  unreachable, !dbg !787

39:                                               ; preds = %20
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788
  %41 = load i8*, i8** @Version, align 8, !dbg !788
  %42 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)), !dbg !788
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %41, i8* noundef %42, i8* noundef null), !dbg !788
  call void @exit(i32 noundef 0) #19, !dbg !788
  unreachable, !dbg !788

43:                                               ; preds = %20
  call void @usage(i32 noundef 1) #22, !dbg !789
  unreachable, !dbg !789

44:                                               ; preds = %37, %23, %22
  br label %15, !dbg !754, !llvm.loop !790

45:                                               ; preds = %15
  call void @finalize_tab_stops(), !dbg !792
  %46 = load i32, i32* @optind, align 4, !dbg !793
  %47 = load i32, i32* %4, align 4, !dbg !794
  %48 = icmp slt i32 %46, %47, !dbg !795
  br i1 %48, label %49, label %54, !dbg !793

49:                                               ; preds = %45
  %50 = load i8**, i8*** %5, align 8, !dbg !796
  %51 = load i32, i32* @optind, align 4, !dbg !797
  %52 = sext i32 %51 to i64, !dbg !796
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52, !dbg !796
  br label %55, !dbg !793

54:                                               ; preds = %45
  br label %55, !dbg !793

55:                                               ; preds = %54, %49
  %56 = phi i8** [ %53, %49 ], [ null, %54 ], !dbg !793
  call void @set_file_list(i8** noundef %56), !dbg !798
  call void @expand(), !dbg !799
  call void @cleanup_file_list_stdin(), !dbg !800
  %57 = load i32, i32* @exit_status, align 4, !dbg !801
  ret i32 %57, !dbg !802
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
define internal void @expand() #4 !dbg !54 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.mbbuf_t, align 8
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mcel_t, align 4
  %8 = alloca %struct.mcel_t, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %1, metadata !803, metadata !DIExpression()), !dbg !838
  %12 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef null), !dbg !839
  store %struct._IO_FILE* %12, %struct._IO_FILE** %1, align 8, !dbg !838
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !840
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !840
  br i1 %14, label %16, label %15, !dbg !842

15:                                               ; preds = %0
  br label %144, !dbg !843

16:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t* %2, metadata !844, metadata !DIExpression()), !dbg !854
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !855
  call void @mbbuf_init(%struct.mbbuf_t* noundef %2, i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), i64 noundef 262144, %struct._IO_FILE* noundef %17), !dbg !856
  br label %18, !dbg !857

18:                                               ; preds = %16, %143
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !858, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata i8* %4, metadata !871, metadata !DIExpression()), !dbg !872
  store i8 1, i8* %4, align 1, !dbg !872
  call void @llvm.dbg.declare(metadata i64* %5, metadata !873, metadata !DIExpression()), !dbg !874
  store i64 0, i64* %5, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata i64* %6, metadata !875, metadata !DIExpression()), !dbg !876
  store i64 0, i64* %6, align 8, !dbg !876
  br label %19, !dbg !877

19:                                               ; preds = %139, %18
  br label %20, !dbg !878

20:                                               ; preds = %36, %19
  %21 = call i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %2), !dbg !880
  %22 = bitcast %struct.mcel_t* %8 to i64*, !dbg !880
  store i64 %21, i64* %22, align 4, !dbg !880
  %23 = bitcast %struct.mcel_t* %3 to i8*, !dbg !880
  %24 = bitcast %struct.mcel_t* %8 to i8*, !dbg !880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false), !dbg !880
  %25 = bitcast %struct.mcel_t* %7 to i8*, !dbg !881
  %26 = bitcast %struct.mcel_t* %3 to i8*, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false), !dbg !881
  %27 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %7, i32 0, i32 0, !dbg !882
  %28 = load i32, i32* %27, align 4, !dbg !882
  %29 = icmp eq i32 %28, -1, !dbg !883
  br i1 %29, label %30, label %34, !dbg !884

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !885
  %32 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %31), !dbg !886
  store %struct._IO_FILE* %32, %struct._IO_FILE** %1, align 8, !dbg !887
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !884
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i1 [ false, %20 ], [ %33, %30 ], !dbg !888
  br i1 %35, label %36, label %38, !dbg !878

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !889
  call void @mbbuf_init(%struct.mbbuf_t* noundef %2, i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @expand.line_in, i64 0, i64 0), i64 noundef 262144, %struct._IO_FILE* noundef %37), !dbg !890
  br label %20, !dbg !878, !llvm.loop !891

38:                                               ; preds = %34
  %39 = load i8, i8* %4, align 1, !dbg !893
  %40 = trunc i8 %39 to i1, !dbg !893
  br i1 %40, label %41, label %120, !dbg !895

41:                                               ; preds = %38
  %42 = load i8, i8* @convert_entire_line, align 1, !dbg !896
  %43 = trunc i8 %42 to i1, !dbg !896
  br i1 %43, label %48, label %44, !dbg !898

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !899
  %46 = load i32, i32* %45, align 4, !dbg !899
  %47 = call i1 @c32issep(i32 noundef %46) #20, !dbg !900
  br label %48, !dbg !898

48:                                               ; preds = %44, %41
  %49 = phi i1 [ true, %41 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32, !dbg !898
  %51 = load i8, i8* %4, align 1, !dbg !901
  %52 = trunc i8 %51 to i1, !dbg !901
  %53 = zext i1 %52 to i32, !dbg !901
  %54 = and i32 %53, %50, !dbg !901
  %55 = icmp ne i32 %54, 0, !dbg !901
  %56 = zext i1 %55 to i8, !dbg !901
  store i8 %56, i8* %4, align 1, !dbg !901
  %57 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !902
  %58 = load i32, i32* %57, align 4, !dbg !902
  %59 = icmp eq i32 %58, 9, !dbg !904
  br i1 %59, label %60, label %78, !dbg !905

60:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8* %9, metadata !906, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.declare(metadata i64* %10, metadata !909, metadata !DIExpression()), !dbg !910
  %61 = load i64, i64* %5, align 8, !dbg !911
  %62 = call i64 @get_next_tab_column(i64 noundef %61, i64* noundef %6, i8* noundef %9), !dbg !912
  store i64 %62, i64* %10, align 8, !dbg !910
  br label %63, !dbg !913

63:                                               ; preds = %72, %60
  %64 = load i64, i64* %5, align 8, !dbg !914
  %65 = add nsw i64 %64, 1, !dbg !914
  store i64 %65, i64* %5, align 8, !dbg !914
  %66 = load i64, i64* %10, align 8, !dbg !915
  %67 = icmp slt i64 %65, %66, !dbg !916
  br i1 %67, label %68, label %73, !dbg !913

68:                                               ; preds = %63
  %69 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !917
  %70 = icmp slt i32 %69, 0, !dbg !919
  br i1 %70, label %71, label %72, !dbg !920

71:                                               ; preds = %68
  call void @write_error(), !dbg !921
  br label %72, !dbg !921

72:                                               ; preds = %71, %68
  br label %63, !dbg !913, !llvm.loop !922

73:                                               ; preds = %63
  %74 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !924
  %75 = icmp slt i32 %74, 0, !dbg !926
  br i1 %75, label %76, label %77, !dbg !927

76:                                               ; preds = %73
  call void @write_error(), !dbg !928
  br label %77, !dbg !928

77:                                               ; preds = %76, %73
  br label %139, !dbg !929

78:                                               ; preds = %48
  %79 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !930
  %80 = load i32, i32* %79, align 4, !dbg !930
  %81 = icmp eq i32 %80, 8, !dbg !932
  br i1 %81, label %82, label %99, !dbg !933

82:                                               ; preds = %78
  %83 = load i64, i64* %5, align 8, !dbg !934
  %84 = icmp ne i64 %83, 0, !dbg !936
  %85 = xor i1 %84, true, !dbg !936
  %86 = xor i1 %85, true, !dbg !937
  %87 = zext i1 %86 to i32, !dbg !937
  %88 = sext i32 %87 to i64, !dbg !937
  %89 = load i64, i64* %5, align 8, !dbg !938
  %90 = sub nsw i64 %89, %88, !dbg !938
  store i64 %90, i64* %5, align 8, !dbg !938
  %91 = load i64, i64* %6, align 8, !dbg !939
  %92 = icmp ne i64 %91, 0, !dbg !940
  %93 = xor i1 %92, true, !dbg !940
  %94 = xor i1 %93, true, !dbg !941
  %95 = zext i1 %94 to i32, !dbg !941
  %96 = sext i32 %95 to i64, !dbg !941
  %97 = load i64, i64* %6, align 8, !dbg !942
  %98 = sub nsw i64 %97, %96, !dbg !942
  store i64 %98, i64* %6, align 8, !dbg !942
  br label %118, !dbg !943

99:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata i32* %11, metadata !944, metadata !DIExpression()), !dbg !946
  %100 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !947
  %101 = load i32, i32* %100, align 4, !dbg !947
  %102 = call i32 @c32width(i32 noundef %101), !dbg !948
  store i32 %102, i32* %11, align 4, !dbg !946
  %103 = load i64, i64* %5, align 8, !dbg !949
  %104 = load i32, i32* %11, align 4, !dbg !949
  %105 = icmp slt i32 %104, 0, !dbg !949
  br i1 %105, label %106, label %107, !dbg !949

106:                                              ; preds = %99
  br label %109, !dbg !949

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4, !dbg !949
  br label %109, !dbg !949

109:                                              ; preds = %107, %106
  %110 = phi i32 [ 1, %106 ], [ %108, %107 ], !dbg !949
  %111 = sext i32 %110 to i64, !dbg !949
  %112 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %103, i64 %111), !dbg !949
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !949
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !949
  store i64 %114, i64* %5, align 8, !dbg !949
  br i1 %113, label %115, label %117, !dbg !951

115:                                              ; preds = %109
  %116 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0)) #18, !dbg !952
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %116), !dbg !952
  unreachable, !dbg !952

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118
  br label %120, !dbg !953

120:                                              ; preds = %119, %38
  %121 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !954
  %122 = load i32, i32* %121, align 4, !dbg !954
  %123 = icmp eq i32 %122, -1, !dbg !956
  br i1 %123, label %124, label %125, !dbg !957

124:                                              ; preds = %120
  br label %144, !dbg !958

125:                                              ; preds = %120
  %126 = bitcast %struct.mcel_t* %3 to i64*, !dbg !959
  %127 = load i64, i64* %126, align 4, !dbg !959
  %128 = call i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %2, i64 %127), !dbg !959
  %129 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !959
  %130 = load i8, i8* %129, align 1, !dbg !959
  %131 = zext i8 %130 to i64, !dbg !959
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !959
  %133 = call i64 @fwrite_unlocked(i8* noundef %128, i64 noundef 1, i64 noundef %131, %struct._IO_FILE* noundef %132), !dbg !959
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !960
  %135 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %134) #18, !dbg !960
  %136 = icmp ne i32 %135, 0, !dbg !960
  br i1 %136, label %137, label %138, !dbg !962

137:                                              ; preds = %125
  call void @write_error(), !dbg !963
  br label %138, !dbg !963

138:                                              ; preds = %137, %125
  br label %139, !dbg !964

139:                                              ; preds = %138, %77
  %140 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !965
  %141 = load i32, i32* %140, align 4, !dbg !965
  %142 = icmp ne i32 %141, 10, !dbg !966
  br i1 %142, label %19, label %143, !dbg !964, !llvm.loop !967

143:                                              ; preds = %139
  br label %18, !dbg !857, !llvm.loop !969

144:                                              ; preds = %124, %15
  ret void, !dbg !971
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i1 @c32issep(i32 noundef %0) #9 !dbg !972 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !975, metadata !DIExpression()), !dbg !976
  %3 = load i32, i32* %2, align 4, !dbg !977
  %4 = call i32 @c32isblank(i32 noundef %3), !dbg !978
  %5 = icmp ne i32 %4, 0, !dbg !979
  %6 = xor i1 %5, true, !dbg !979
  %7 = xor i1 %6, true, !dbg !980
  ret i1 %7, !dbg !981
}

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #4 !dbg !982 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !983, metadata !DIExpression()), !dbg !984
  %2 = call i32* @__errno_location() #21, !dbg !985
  %3 = load i32, i32* %2, align 4, !dbg !985
  store i32 %3, i32* %1, align 4, !dbg !984
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !986
  %5 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4), !dbg !986
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987
  %7 = call i32 @fpurge(%struct._IO_FILE* noundef %6), !dbg !988
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !989
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %8) #18, !dbg !989
  %9 = load i32, i32* %1, align 4, !dbg !990
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0)) #18, !dbg !990
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %10), !dbg !990
  unreachable, !dbg !990
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_tab_stop(i64 noundef %0) #4 !dbg !991 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata i64* %3, metadata !996, metadata !DIExpression()), !dbg !997
  %5 = load i64, i64* @first_free_tab, align 8, !dbg !998
  %6 = icmp ne i64 %5, 0, !dbg !998
  br i1 %6, label %7, label %13, !dbg !998

7:                                                ; preds = %1
  %8 = load i64*, i64** @tab_list, align 8, !dbg !999
  %9 = load i64, i64* @first_free_tab, align 8, !dbg !1000
  %10 = sub nsw i64 %9, 1, !dbg !1001
  %11 = getelementptr inbounds i64, i64* %8, i64 %10, !dbg !999
  %12 = load i64, i64* %11, align 8, !dbg !999
  br label %14, !dbg !998

13:                                               ; preds = %1
  br label %14, !dbg !998

14:                                               ; preds = %13, %7
  %15 = phi i64 [ %12, %7 ], [ 0, %13 ], !dbg !998
  store i64 %15, i64* %3, align 8, !dbg !997
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1002, metadata !DIExpression()), !dbg !1003
  %16 = load i64, i64* %3, align 8, !dbg !1004
  %17 = load i64, i64* %2, align 8, !dbg !1005
  %18 = icmp sle i64 %16, %17, !dbg !1006
  br i1 %18, label %19, label %23, !dbg !1004

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8, !dbg !1007
  %21 = load i64, i64* %3, align 8, !dbg !1008
  %22 = sub nsw i64 %20, %21, !dbg !1009
  br label %24, !dbg !1004

23:                                               ; preds = %14
  br label %24, !dbg !1004

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ], !dbg !1004
  store i64 %25, i64* %4, align 8, !dbg !1003
  %26 = load i64, i64* @first_free_tab, align 8, !dbg !1010
  %27 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1012
  %28 = icmp eq i64 %26, %27, !dbg !1013
  br i1 %28, label %29, label %34, !dbg !1014

29:                                               ; preds = %24
  %30 = load i64*, i64** @tab_list, align 8, !dbg !1015
  %31 = bitcast i64* %30 to i8*, !dbg !1015
  %32 = call nonnull i8* @xpalloc(i8* noundef %31, i64* noundef @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8), !dbg !1016
  %33 = bitcast i8* %32 to i64*, !dbg !1016
  store i64* %33, i64** @tab_list, align 8, !dbg !1017
  br label %34, !dbg !1018

34:                                               ; preds = %29, %24
  %35 = load i64, i64* %2, align 8, !dbg !1019
  %36 = load i64*, i64** @tab_list, align 8, !dbg !1020
  %37 = load i64, i64* @first_free_tab, align 8, !dbg !1021
  %38 = add nsw i64 %37, 1, !dbg !1021
  store i64 %38, i64* @first_free_tab, align 8, !dbg !1021
  %39 = getelementptr inbounds i64, i64* %36, i64 %37, !dbg !1020
  store i64 %35, i64* %39, align 8, !dbg !1022
  %40 = load i64, i64* %4, align 8, !dbg !1023
  call void @set_max_column_width(i64 noundef %40), !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_max_column_width(i64 noundef %0) #4 !dbg !1026 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1027, metadata !DIExpression()), !dbg !1028
  %3 = load i64, i64* @max_column_width, align 8, !dbg !1029
  %4 = load i64, i64* %2, align 8, !dbg !1031
  %5 = icmp slt i64 %3, %4, !dbg !1032
  br i1 %5, label %6, label %14, !dbg !1033

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !1034
  %8 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 0), !dbg !1034
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !1034
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !1034
  store i64 %10, i64* @max_column_width, align 8, !dbg !1034
  br i1 %9, label %11, label %13, !dbg !1037

11:                                               ; preds = %6
  %12 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.5, i64 0, i64 0)) #18, !dbg !1038
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %12), !dbg !1038
  unreachable, !dbg !1038

13:                                               ; preds = %6
  br label %14, !dbg !1039

14:                                               ; preds = %13, %1
  ret void, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_tab_stops(i8* noundef nonnull %0) #4 !dbg !1041 {
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
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8 0, i8* %3, align 1, !dbg !1045
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i64 0, i64* %4, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i8 0, i8* %5, align 1, !dbg !1049
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1050, metadata !DIExpression()), !dbg !1051
  store i8 0, i8* %6, align 1, !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i8* null, i8** %7, align 8, !dbg !1053
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8 1, i8* %8, align 1, !dbg !1055
  br label %11, !dbg !1056

11:                                               ; preds = %181, %1
  %12 = load i8*, i8** %2, align 8, !dbg !1057
  %13 = load i8, i8* %12, align 1, !dbg !1060
  %14 = icmp ne i8 %13, 0, !dbg !1061
  br i1 %14, label %15, label %184, !dbg !1061

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8, !dbg !1062
  %17 = load i8, i8* %16, align 1, !dbg !1065
  %18 = zext i8 %17 to i32, !dbg !1065
  %19 = icmp eq i32 %18, 44, !dbg !1066
  br i1 %19, label %33, label %20, !dbg !1067

20:                                               ; preds = %15
  %21 = call i16** @__ctype_b_loc() #21, !dbg !1068
  %22 = load i16*, i16** %21, align 8, !dbg !1068
  %23 = load i8*, i8** %2, align 8, !dbg !1068
  %24 = load i8, i8* %23, align 1, !dbg !1068
  %25 = call i8 @to_uchar(i8 noundef %24), !dbg !1068
  %26 = zext i8 %25 to i32, !dbg !1068
  %27 = sext i32 %26 to i64, !dbg !1068
  %28 = getelementptr inbounds i16, i16* %22, i64 %27, !dbg !1068
  %29 = load i16, i16* %28, align 2, !dbg !1068
  %30 = zext i16 %29 to i32, !dbg !1068
  %31 = and i32 %30, 1, !dbg !1068
  %32 = icmp ne i32 %31, 0, !dbg !1068
  br i1 %32, label %33, label %57, !dbg !1069

33:                                               ; preds = %20, %15
  %34 = load i8, i8* %3, align 1, !dbg !1070
  %35 = trunc i8 %34 to i1, !dbg !1070
  br i1 %35, label %36, label %56, !dbg !1073

36:                                               ; preds = %33
  %37 = load i8, i8* %5, align 1, !dbg !1074
  %38 = trunc i8 %37 to i1, !dbg !1074
  br i1 %38, label %39, label %44, !dbg !1077

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8, !dbg !1078
  %41 = call i1 @set_extend_size(i64 noundef %40), !dbg !1081
  br i1 %41, label %43, label %42, !dbg !1082

42:                                               ; preds = %39
  store i8 0, i8* %8, align 1, !dbg !1083
  br label %184, !dbg !1085

43:                                               ; preds = %39
  br label %55, !dbg !1086

44:                                               ; preds = %36
  %45 = load i8, i8* %6, align 1, !dbg !1087
  %46 = trunc i8 %45 to i1, !dbg !1087
  br i1 %46, label %47, label %52, !dbg !1089

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8, !dbg !1090
  %49 = call i1 @set_increment_size(i64 noundef %48), !dbg !1093
  br i1 %49, label %51, label %50, !dbg !1094

50:                                               ; preds = %47
  store i8 0, i8* %8, align 1, !dbg !1095
  br label %184, !dbg !1097

51:                                               ; preds = %47
  br label %54, !dbg !1098

52:                                               ; preds = %44
  %53 = load i64, i64* %4, align 8, !dbg !1099
  call void @add_tab_stop(i64 noundef %53), !dbg !1100
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %43
  br label %56, !dbg !1101

56:                                               ; preds = %55, %33
  store i8 0, i8* %3, align 1, !dbg !1102
  br label %180, !dbg !1103

57:                                               ; preds = %20
  %58 = load i8*, i8** %2, align 8, !dbg !1104
  %59 = load i8, i8* %58, align 1, !dbg !1106
  %60 = zext i8 %59 to i32, !dbg !1106
  %61 = icmp eq i32 %60, 47, !dbg !1107
  br i1 %61, label %62, label %70, !dbg !1108

62:                                               ; preds = %57
  %63 = load i8, i8* %3, align 1, !dbg !1109
  %64 = trunc i8 %63 to i1, !dbg !1109
  br i1 %64, label %65, label %69, !dbg !1112

65:                                               ; preds = %62
  %66 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)) #18, !dbg !1113
  %67 = load i8*, i8** %2, align 8, !dbg !1113
  %68 = call i8* @quote(i8* noundef %67), !dbg !1113
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %66, i8* noundef %68), !dbg !1113
  store i8 0, i8* %8, align 1, !dbg !1115
  br label %69, !dbg !1116

69:                                               ; preds = %65, %62
  store i8 1, i8* %5, align 1, !dbg !1117
  store i8 0, i8* %6, align 1, !dbg !1118
  br label %179, !dbg !1119

70:                                               ; preds = %57
  %71 = load i8*, i8** %2, align 8, !dbg !1120
  %72 = load i8, i8* %71, align 1, !dbg !1122
  %73 = zext i8 %72 to i32, !dbg !1122
  %74 = icmp eq i32 %73, 43, !dbg !1123
  br i1 %74, label %75, label %83, !dbg !1124

75:                                               ; preds = %70
  %76 = load i8, i8* %3, align 1, !dbg !1125
  %77 = trunc i8 %76 to i1, !dbg !1125
  br i1 %77, label %78, label %82, !dbg !1128

78:                                               ; preds = %75
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.57, i64 0, i64 0)) #18, !dbg !1129
  %80 = load i8*, i8** %2, align 8, !dbg !1129
  %81 = call i8* @quote(i8* noundef %80), !dbg !1129
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %79, i8* noundef %81), !dbg !1129
  store i8 0, i8* %8, align 1, !dbg !1131
  br label %82, !dbg !1132

82:                                               ; preds = %78, %75
  store i8 1, i8* %6, align 1, !dbg !1133
  store i8 0, i8* %5, align 1, !dbg !1134
  br label %178, !dbg !1135

83:                                               ; preds = %70
  %84 = load i8*, i8** %2, align 8, !dbg !1136
  %85 = load i8, i8* %84, align 1, !dbg !1138
  %86 = zext i8 %85 to i32, !dbg !1138
  %87 = call i1 @c_isdigit(i32 noundef %86), !dbg !1139
  br i1 %87, label %88, label %173, !dbg !1140

88:                                               ; preds = %83
  %89 = load i8, i8* %3, align 1, !dbg !1141
  %90 = trunc i8 %89 to i1, !dbg !1141
  br i1 %90, label %93, label %91, !dbg !1144

91:                                               ; preds = %88
  store i64 0, i64* %4, align 8, !dbg !1145
  store i8 1, i8* %3, align 1, !dbg !1147
  %92 = load i8*, i8** %2, align 8, !dbg !1148
  store i8* %92, i8** %7, align 8, !dbg !1149
  br label %93, !dbg !1150

93:                                               ; preds = %91, %88
  br i1 false, label %94, label %121, !dbg !1151

94:                                               ; preds = %93
  %95 = load i64, i64* %4, align 8, !dbg !1151
  %96 = icmp slt i64 %95, 0, !dbg !1151
  br i1 %96, label %97, label %105, !dbg !1151

97:                                               ; preds = %94
  br i1 true, label %98, label %101, !dbg !1151

98:                                               ; preds = %97
  %99 = load i64, i64* %4, align 8, !dbg !1151
  %100 = icmp slt i64 %99, 922337203685477580, !dbg !1151
  br i1 %100, label %139, label %142, !dbg !1151

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8, !dbg !1151
  %103 = sub nsw i64 -1, %102, !dbg !1151
  %104 = icmp sle i64 -922337203685477580, %103, !dbg !1151
  br i1 %104, label %139, label %142, !dbg !1151

105:                                              ; preds = %94
  br i1 false, label %106, label %118, !dbg !1151

106:                                              ; preds = %105
  br i1 true, label %107, label %111, !dbg !1151

107:                                              ; preds = %106
  %108 = load i64, i64* %4, align 8, !dbg !1151
  %109 = add nsw i64 %108, -9223372036854775808, !dbg !1151
  %110 = icmp slt i64 0, %109, !dbg !1151
  br i1 %110, label %139, label %142, !dbg !1151

111:                                              ; preds = %106
  %112 = load i64, i64* %4, align 8, !dbg !1151
  %113 = icmp slt i64 0, %112, !dbg !1151
  br i1 %113, label %114, label %142, !dbg !1151

114:                                              ; preds = %111
  %115 = load i64, i64* %4, align 8, !dbg !1151
  %116 = sub nsw i64 %115, 1, !dbg !1151
  %117 = icmp slt i64 9223372036854775807, %116, !dbg !1151
  br i1 %117, label %139, label %142, !dbg !1151

118:                                              ; preds = %105
  %119 = load i64, i64* %4, align 8, !dbg !1151
  %120 = icmp slt i64 -922337203685477580, %119, !dbg !1151
  br i1 %120, label %139, label %142, !dbg !1151

121:                                              ; preds = %93
  br i1 false, label %122, label %123, !dbg !1151

122:                                              ; preds = %121
  br i1 false, label %139, label %142, !dbg !1151

123:                                              ; preds = %121
  %124 = load i64, i64* %4, align 8, !dbg !1151
  %125 = icmp slt i64 %124, 0, !dbg !1151
  br i1 %125, label %126, label %136, !dbg !1151

126:                                              ; preds = %123
  %127 = load i64, i64* %4, align 8, !dbg !1151
  %128 = icmp eq i64 %127, -1, !dbg !1151
  br i1 %128, label %129, label %132, !dbg !1151

129:                                              ; preds = %126
  br i1 true, label %130, label %131, !dbg !1151

130:                                              ; preds = %129
  br i1 false, label %139, label %142, !dbg !1151

131:                                              ; preds = %129
  br i1 false, label %139, label %142, !dbg !1151

132:                                              ; preds = %126
  %133 = load i64, i64* %4, align 8, !dbg !1151
  %134 = sdiv i64 -9223372036854775808, %133, !dbg !1151
  %135 = icmp slt i64 %134, 10, !dbg !1151
  br i1 %135, label %139, label %142, !dbg !1151

136:                                              ; preds = %123
  %137 = load i64, i64* %4, align 8, !dbg !1151
  %138 = icmp slt i64 922337203685477580, %137, !dbg !1151
  br i1 %138, label %139, label %142, !dbg !1151

139:                                              ; preds = %136, %132, %131, %130, %122, %118, %114, %107, %101, %98
  %140 = load i64, i64* %4, align 8, !dbg !1151
  %141 = mul i64 %140, 10, !dbg !1151
  store i64 %141, i64* %4, align 8, !dbg !1151
  br label %145, !dbg !1151

142:                                              ; preds = %136, %132, %131, %130, %122, %118, %114, %111, %107, %101, %98
  %143 = load i64, i64* %4, align 8, !dbg !1151
  %144 = mul i64 %143, 10, !dbg !1151
  store i64 %144, i64* %4, align 8, !dbg !1151
  br label %145, !dbg !1151

145:                                              ; preds = %142, %139
  %146 = phi i32 [ 1, %139 ], [ 0, %142 ], !dbg !1151
  %147 = icmp ne i32 %146, 0, !dbg !1151
  br i1 %147, label %158, label %148, !dbg !1151

148:                                              ; preds = %145
  %149 = load i64, i64* %4, align 8, !dbg !1151
  %150 = load i8*, i8** %2, align 8, !dbg !1151
  %151 = load i8, i8* %150, align 1, !dbg !1151
  %152 = zext i8 %151 to i32, !dbg !1151
  %153 = sub nsw i32 %152, 48, !dbg !1151
  %154 = sext i32 %153 to i64, !dbg !1151
  %155 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %149, i64 %154), !dbg !1151
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !1151
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !1151
  store i64 %157, i64* %4, align 8, !dbg !1151
  br i1 %156, label %158, label %172, !dbg !1153

158:                                              ; preds = %148, %145
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1154, metadata !DIExpression()), !dbg !1156
  %159 = load i8*, i8** %7, align 8, !dbg !1157
  %160 = call i64 @strspn(i8* noundef %159, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.58, i64 0, i64 0)) #20, !dbg !1158
  store i64 %160, i64* %9, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1159, metadata !DIExpression()), !dbg !1160
  %161 = load i8*, i8** %7, align 8, !dbg !1161
  %162 = load i64, i64* %9, align 8, !dbg !1162
  %163 = call noalias nonnull i8* @ximemdup0(i8* noundef %161, i64 noundef %162), !dbg !1163
  store i8* %163, i8** %10, align 8, !dbg !1160
  %164 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.59, i64 0, i64 0)) #18, !dbg !1164
  %165 = load i8*, i8** %10, align 8, !dbg !1164
  %166 = call i8* @quote(i8* noundef %165), !dbg !1164
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %164, i8* noundef %166), !dbg !1164
  %167 = load i8*, i8** %10, align 8, !dbg !1165
  call void @free(i8* noundef %167) #18, !dbg !1166
  store i8 0, i8* %8, align 1, !dbg !1167
  %168 = load i8*, i8** %7, align 8, !dbg !1168
  %169 = load i64, i64* %9, align 8, !dbg !1169
  %170 = getelementptr inbounds i8, i8* %168, i64 %169, !dbg !1170
  %171 = getelementptr inbounds i8, i8* %170, i64 -1, !dbg !1171
  store i8* %171, i8** %2, align 8, !dbg !1172
  br label %172, !dbg !1173

172:                                              ; preds = %158, %148
  br label %177, !dbg !1174

173:                                              ; preds = %83
  %174 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.60, i64 0, i64 0)) #18, !dbg !1175
  %175 = load i8*, i8** %2, align 8, !dbg !1175
  %176 = call i8* @quote(i8* noundef %175), !dbg !1175
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %174, i8* noundef %176), !dbg !1175
  store i8 0, i8* %8, align 1, !dbg !1177
  br label %184, !dbg !1178

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %82
  br label %179

179:                                              ; preds = %178, %69
  br label %180

180:                                              ; preds = %179, %56
  br label %181, !dbg !1179

181:                                              ; preds = %180
  %182 = load i8*, i8** %2, align 8, !dbg !1180
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !1180
  store i8* %183, i8** %2, align 8, !dbg !1180
  br label %11, !dbg !1181, !llvm.loop !1182

184:                                              ; preds = %173, %50, %42, %11
  %185 = load i8, i8* %8, align 1, !dbg !1184
  %186 = trunc i8 %185 to i1, !dbg !1184
  br i1 %186, label %187, label %220, !dbg !1186

187:                                              ; preds = %184
  %188 = load i8, i8* %3, align 1, !dbg !1187
  %189 = trunc i8 %188 to i1, !dbg !1187
  br i1 %189, label %190, label %220, !dbg !1188

190:                                              ; preds = %187
  %191 = load i8, i8* %5, align 1, !dbg !1189
  %192 = trunc i8 %191 to i1, !dbg !1189
  br i1 %192, label %193, label %203, !dbg !1192

193:                                              ; preds = %190
  %194 = load i64, i64* %4, align 8, !dbg !1193
  %195 = call i1 @set_extend_size(i64 noundef %194), !dbg !1194
  %196 = zext i1 %195 to i32, !dbg !1194
  %197 = load i8, i8* %8, align 1, !dbg !1195
  %198 = trunc i8 %197 to i1, !dbg !1195
  %199 = zext i1 %198 to i32, !dbg !1195
  %200 = and i32 %199, %196, !dbg !1195
  %201 = icmp ne i32 %200, 0, !dbg !1195
  %202 = zext i1 %201 to i8, !dbg !1195
  store i8 %202, i8* %8, align 1, !dbg !1195
  br label %219, !dbg !1196

203:                                              ; preds = %190
  %204 = load i8, i8* %6, align 1, !dbg !1197
  %205 = trunc i8 %204 to i1, !dbg !1197
  br i1 %205, label %206, label %216, !dbg !1199

206:                                              ; preds = %203
  %207 = load i64, i64* %4, align 8, !dbg !1200
  %208 = call i1 @set_increment_size(i64 noundef %207), !dbg !1201
  %209 = zext i1 %208 to i32, !dbg !1201
  %210 = load i8, i8* %8, align 1, !dbg !1202
  %211 = trunc i8 %210 to i1, !dbg !1202
  %212 = zext i1 %211 to i32, !dbg !1202
  %213 = and i32 %212, %209, !dbg !1202
  %214 = icmp ne i32 %213, 0, !dbg !1202
  %215 = zext i1 %214 to i8, !dbg !1202
  store i8 %215, i8* %8, align 1, !dbg !1202
  br label %218, !dbg !1203

216:                                              ; preds = %203
  %217 = load i64, i64* %4, align 8, !dbg !1204
  call void @add_tab_stop(i64 noundef %217), !dbg !1205
  br label %218

218:                                              ; preds = %216, %206
  br label %219

219:                                              ; preds = %218, %193
  br label %220, !dbg !1206

220:                                              ; preds = %219, %187, %184
  %221 = load i8, i8* %8, align 1, !dbg !1207
  %222 = trunc i8 %221 to i1, !dbg !1207
  br i1 %222, label %224, label %223, !dbg !1209

223:                                              ; preds = %220
  call void @exit(i32 noundef 1) #19, !dbg !1210
  unreachable, !dbg !1210

224:                                              ; preds = %220
  ret void, !dbg !1211
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8 @to_uchar(i8 noundef %0) #4 !dbg !1212 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1215, metadata !DIExpression()), !dbg !1216
  %3 = load i8, i8* %2, align 1, !dbg !1217
  ret i8 %3, !dbg !1218
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @set_extend_size(i64 noundef %0) #4 !dbg !1219 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1222, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1224, metadata !DIExpression()), !dbg !1225
  store i8 1, i8* %3, align 1, !dbg !1225
  %4 = load i64, i64* @extend_size, align 8, !dbg !1226
  %5 = icmp ne i64 %4, 0, !dbg !1226
  br i1 %5, label %6, label %8, !dbg !1228

6:                                                ; preds = %1
  %7 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.62, i64 0, i64 0)) #18, !dbg !1229
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %7), !dbg !1229
  store i8 0, i8* %3, align 1, !dbg !1231
  br label %8, !dbg !1232

8:                                                ; preds = %6, %1
  %9 = load i64, i64* %2, align 8, !dbg !1233
  store i64 %9, i64* @extend_size, align 8, !dbg !1234
  %10 = load i64, i64* @extend_size, align 8, !dbg !1235
  call void @set_max_column_width(i64 noundef %10), !dbg !1236
  %11 = load i8, i8* %3, align 1, !dbg !1237
  %12 = trunc i8 %11 to i1, !dbg !1237
  ret i1 %12, !dbg !1238
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @set_increment_size(i64 noundef %0) #4 !dbg !1239 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1242, metadata !DIExpression()), !dbg !1243
  store i8 1, i8* %3, align 1, !dbg !1243
  %4 = load i64, i64* @increment_size, align 8, !dbg !1244
  %5 = icmp ne i64 %4, 0, !dbg !1244
  br i1 %5, label %6, label %8, !dbg !1246

6:                                                ; preds = %1
  %7 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.61, i64 0, i64 0)) #18, !dbg !1247
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %7), !dbg !1247
  store i8 0, i8* %3, align 1, !dbg !1249
  br label %8, !dbg !1250

8:                                                ; preds = %6, %1
  %9 = load i64, i64* %2, align 8, !dbg !1251
  store i64 %9, i64* @increment_size, align 8, !dbg !1252
  %10 = load i64, i64* @increment_size, align 8, !dbg !1253
  call void @set_max_column_width(i64 noundef %10), !dbg !1254
  %11 = load i8, i8* %3, align 1, !dbg !1255
  %12 = trunc i8 %11 to i1, !dbg !1255
  ret i1 %12, !dbg !1256
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_tab_stops() #4 !dbg !1257 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1258
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1259
  call void @validate_tab_stops(i64* noundef %1, i64 noundef %2), !dbg !1260
  %3 = load i64, i64* @first_free_tab, align 8, !dbg !1261
  %4 = icmp eq i64 %3, 0, !dbg !1263
  br i1 %4, label %5, label %20, !dbg !1264

5:                                                ; preds = %0
  %6 = load i64, i64* @extend_size, align 8, !dbg !1265
  %7 = icmp ne i64 %6, 0, !dbg !1265
  br i1 %7, label %8, label %10, !dbg !1265

8:                                                ; preds = %5
  %9 = load i64, i64* @extend_size, align 8, !dbg !1266
  br label %18, !dbg !1265

10:                                               ; preds = %5
  %11 = load i64, i64* @increment_size, align 8, !dbg !1267
  %12 = icmp ne i64 %11, 0, !dbg !1267
  br i1 %12, label %13, label %15, !dbg !1267

13:                                               ; preds = %10
  %14 = load i64, i64* @increment_size, align 8, !dbg !1268
  br label %16, !dbg !1267

15:                                               ; preds = %10
  br label %16, !dbg !1267

16:                                               ; preds = %15, %13
  %17 = phi i64 [ %14, %13 ], [ 8, %15 ], !dbg !1267
  br label %18, !dbg !1265

18:                                               ; preds = %16, %8
  %19 = phi i64 [ %9, %8 ], [ %17, %16 ], !dbg !1265
  store i64 %19, i64* @max_column_width, align 8, !dbg !1269
  store i64 %19, i64* @tab_size, align 8, !dbg !1270
  br label %35, !dbg !1271

20:                                               ; preds = %0
  %21 = load i64, i64* @first_free_tab, align 8, !dbg !1272
  %22 = icmp eq i64 %21, 1, !dbg !1274
  br i1 %22, label %23, label %33, !dbg !1275

23:                                               ; preds = %20
  %24 = load i64, i64* @extend_size, align 8, !dbg !1276
  %25 = icmp ne i64 %24, 0, !dbg !1276
  br i1 %25, label %33, label %26, !dbg !1277

26:                                               ; preds = %23
  %27 = load i64, i64* @increment_size, align 8, !dbg !1278
  %28 = icmp ne i64 %27, 0, !dbg !1278
  br i1 %28, label %33, label %29, !dbg !1279

29:                                               ; preds = %26
  %30 = load i64*, i64** @tab_list, align 8, !dbg !1280
  %31 = getelementptr inbounds i64, i64* %30, i64 0, !dbg !1280
  %32 = load i64, i64* %31, align 8, !dbg !1280
  store i64 %32, i64* @tab_size, align 8, !dbg !1281
  br label %34, !dbg !1282

33:                                               ; preds = %26, %23, %20
  store i64 0, i64* @tab_size, align 8, !dbg !1283
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %18
  ret void, !dbg !1284
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_tab_stops(i64* noundef %0, i64 noundef %1) #4 !dbg !1285 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i64 0, i64* %5, align 8, !dbg !1295
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1296, metadata !DIExpression()), !dbg !1298
  store i64 0, i64* %6, align 8, !dbg !1298
  br label %7, !dbg !1299

7:                                                ; preds = %33, %2
  %8 = load i64, i64* %6, align 8, !dbg !1300
  %9 = load i64, i64* %4, align 8, !dbg !1302
  %10 = icmp slt i64 %8, %9, !dbg !1303
  br i1 %10, label %11, label %36, !dbg !1304

11:                                               ; preds = %7
  %12 = load i64*, i64** %3, align 8, !dbg !1305
  %13 = load i64, i64* %6, align 8, !dbg !1308
  %14 = getelementptr inbounds i64, i64* %12, i64 %13, !dbg !1305
  %15 = load i64, i64* %14, align 8, !dbg !1305
  %16 = icmp eq i64 %15, 0, !dbg !1309
  br i1 %16, label %17, label %19, !dbg !1310

17:                                               ; preds = %11
  %18 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.65, i64 0, i64 0)) #18, !dbg !1311
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %18), !dbg !1311
  unreachable, !dbg !1311

19:                                               ; preds = %11
  %20 = load i64*, i64** %3, align 8, !dbg !1312
  %21 = load i64, i64* %6, align 8, !dbg !1314
  %22 = getelementptr inbounds i64, i64* %20, i64 %21, !dbg !1312
  %23 = load i64, i64* %22, align 8, !dbg !1312
  %24 = load i64, i64* %5, align 8, !dbg !1315
  %25 = icmp sle i64 %23, %24, !dbg !1316
  br i1 %25, label %26, label %28, !dbg !1317

26:                                               ; preds = %19
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15.66, i64 0, i64 0)) #18, !dbg !1318
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %27), !dbg !1318
  unreachable, !dbg !1318

28:                                               ; preds = %19
  %29 = load i64*, i64** %3, align 8, !dbg !1319
  %30 = load i64, i64* %6, align 8, !dbg !1320
  %31 = getelementptr inbounds i64, i64* %29, i64 %30, !dbg !1319
  %32 = load i64, i64* %31, align 8, !dbg !1319
  store i64 %32, i64* %5, align 8, !dbg !1321
  br label %33, !dbg !1322

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8, !dbg !1323
  %35 = add nsw i64 %34, 1, !dbg !1323
  store i64 %35, i64* %6, align 8, !dbg !1323
  br label %7, !dbg !1324, !llvm.loop !1325

36:                                               ; preds = %7
  %37 = load i64, i64* @increment_size, align 8, !dbg !1327
  %38 = icmp ne i64 %37, 0, !dbg !1327
  br i1 %38, label %39, label %44, !dbg !1329

39:                                               ; preds = %36
  %40 = load i64, i64* @extend_size, align 8, !dbg !1330
  %41 = icmp ne i64 %40, 0, !dbg !1330
  br i1 %41, label %42, label %44, !dbg !1331

42:                                               ; preds = %39
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16.67, i64 0, i64 0)) #18, !dbg !1332
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %43), !dbg !1332
  unreachable, !dbg !1332

44:                                               ; preds = %39, %36
  ret void, !dbg !1333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, i64* noundef %1, i8* noundef nonnull %2) #4 !dbg !1334 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1338, metadata !DIExpression()), !dbg !1339
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1342, metadata !DIExpression()), !dbg !1343
  %12 = load i8*, i8** %7, align 8, !dbg !1344
  store i8 0, i8* %12, align 1, !dbg !1345
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1346, metadata !DIExpression()), !dbg !1347
  %13 = load i64, i64* @tab_size, align 8, !dbg !1348
  %14 = icmp ne i64 %13, 0, !dbg !1348
  br i1 %14, label %15, label %21, !dbg !1350

15:                                               ; preds = %3
  %16 = load i64, i64* @tab_size, align 8, !dbg !1351
  %17 = load i64, i64* %5, align 8, !dbg !1352
  %18 = load i64, i64* @tab_size, align 8, !dbg !1353
  %19 = srem i64 %17, %18, !dbg !1354
  %20 = sub nsw i64 %16, %19, !dbg !1355
  store i64 %20, i64* %8, align 8, !dbg !1356
  br label %72, !dbg !1357

21:                                               ; preds = %3
  br label %22, !dbg !1358

22:                                               ; preds = %39, %21
  %23 = load i64*, i64** %6, align 8, !dbg !1360
  %24 = load i64, i64* %23, align 8, !dbg !1363
  %25 = load i64, i64* @first_free_tab, align 8, !dbg !1364
  %26 = icmp slt i64 %24, %25, !dbg !1365
  br i1 %26, label %27, label %43, !dbg !1366

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1367, metadata !DIExpression()), !dbg !1369
  %28 = load i64*, i64** @tab_list, align 8, !dbg !1370
  %29 = load i64*, i64** %6, align 8, !dbg !1371
  %30 = load i64, i64* %29, align 8, !dbg !1372
  %31 = getelementptr inbounds i64, i64* %28, i64 %30, !dbg !1370
  %32 = load i64, i64* %31, align 8, !dbg !1370
  store i64 %32, i64* %9, align 8, !dbg !1369
  %33 = load i64, i64* %5, align 8, !dbg !1373
  %34 = load i64, i64* %9, align 8, !dbg !1375
  %35 = icmp slt i64 %33, %34, !dbg !1376
  br i1 %35, label %36, label %38, !dbg !1377

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8, !dbg !1378
  store i64 %37, i64* %4, align 8, !dbg !1379
  br label %82, !dbg !1379

38:                                               ; preds = %27
  br label %39, !dbg !1380

39:                                               ; preds = %38
  %40 = load i64*, i64** %6, align 8, !dbg !1381
  %41 = load i64, i64* %40, align 8, !dbg !1382
  %42 = add nsw i64 %41, 1, !dbg !1382
  store i64 %42, i64* %40, align 8, !dbg !1382
  br label %22, !dbg !1383, !llvm.loop !1384

43:                                               ; preds = %22
  %44 = load i64, i64* @extend_size, align 8, !dbg !1386
  %45 = icmp ne i64 %44, 0, !dbg !1386
  br i1 %45, label %46, label %52, !dbg !1388

46:                                               ; preds = %43
  %47 = load i64, i64* @extend_size, align 8, !dbg !1389
  %48 = load i64, i64* %5, align 8, !dbg !1390
  %49 = load i64, i64* @extend_size, align 8, !dbg !1391
  %50 = srem i64 %48, %49, !dbg !1392
  %51 = sub nsw i64 %47, %50, !dbg !1393
  store i64 %51, i64* %8, align 8, !dbg !1394
  br label %71, !dbg !1395

52:                                               ; preds = %43
  %53 = load i64, i64* @increment_size, align 8, !dbg !1396
  %54 = icmp ne i64 %53, 0, !dbg !1396
  br i1 %54, label %55, label %68, !dbg !1398

55:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1399, metadata !DIExpression()), !dbg !1401
  %56 = load i64*, i64** @tab_list, align 8, !dbg !1402
  %57 = load i64, i64* @first_free_tab, align 8, !dbg !1403
  %58 = sub nsw i64 %57, 1, !dbg !1404
  %59 = getelementptr inbounds i64, i64* %56, i64 %58, !dbg !1402
  %60 = load i64, i64* %59, align 8, !dbg !1402
  store i64 %60, i64* %10, align 8, !dbg !1401
  %61 = load i64, i64* @increment_size, align 8, !dbg !1405
  %62 = load i64, i64* %5, align 8, !dbg !1406
  %63 = load i64, i64* %10, align 8, !dbg !1407
  %64 = sub nsw i64 %62, %63, !dbg !1408
  %65 = load i64, i64* @increment_size, align 8, !dbg !1409
  %66 = srem i64 %64, %65, !dbg !1410
  %67 = sub nsw i64 %61, %66, !dbg !1411
  store i64 %67, i64* %8, align 8, !dbg !1412
  br label %70, !dbg !1413

68:                                               ; preds = %52
  %69 = load i8*, i8** %7, align 8, !dbg !1414
  store i8 1, i8* %69, align 1, !dbg !1416
  store i64 1, i64* %8, align 8, !dbg !1417
  br label %70

70:                                               ; preds = %68, %55
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %15
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1418, metadata !DIExpression()), !dbg !1419
  %73 = load i64, i64* %5, align 8, !dbg !1420
  %74 = load i64, i64* %8, align 8, !dbg !1420
  %75 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %73, i64 %74), !dbg !1420
  %76 = extractvalue { i64, i1 } %75, 1, !dbg !1420
  %77 = extractvalue { i64, i1 } %75, 0, !dbg !1420
  store i64 %77, i64* %11, align 8, !dbg !1420
  br i1 %76, label %78, label %80, !dbg !1422

78:                                               ; preds = %72
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.70, i64 0, i64 0)) #18, !dbg !1423
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %79), !dbg !1423
  unreachable, !dbg !1423

80:                                               ; preds = %72
  %81 = load i64, i64* %11, align 8, !dbg !1424
  store i64 %81, i64* %4, align 8, !dbg !1425
  br label %82, !dbg !1425

82:                                               ; preds = %80, %36
  %83 = load i64, i64* %4, align 8, !dbg !1426
  ret i64 %83, !dbg !1426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_file_list(i8** noundef %0) #4 !dbg !1427 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1430, metadata !DIExpression()), !dbg !1431
  store i8 0, i8* @have_read_stdin, align 1, !dbg !1432
  %3 = load i8**, i8*** %2, align 8, !dbg !1433
  %4 = icmp ne i8** %3, null, !dbg !1433
  br i1 %4, label %6, label %5, !dbg !1435

5:                                                ; preds = %1
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8*** @file_list, align 8, !dbg !1436
  br label %8, !dbg !1437

6:                                                ; preds = %1
  %7 = load i8**, i8*** %2, align 8, !dbg !1438
  store i8** %7, i8*** @file_list, align 8, !dbg !1439
  br label %8

8:                                                ; preds = %6, %5
  ret void, !dbg !1440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %0) #4 !dbg !99 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1443, metadata !DIExpression()), !dbg !1444
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1445
  %7 = icmp ne %struct._IO_FILE* %6, null, !dbg !1445
  br i1 %7, label %8, label %36, !dbg !1447

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1448, metadata !DIExpression()), !dbg !1450
  %9 = call i32* @__errno_location() #21, !dbg !1451
  %10 = load i32, i32* %9, align 4, !dbg !1451
  store i32 %10, i32* %5, align 4, !dbg !1450
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1452
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !1452
  %13 = icmp ne i32 %12, 0, !dbg !1452
  br i1 %13, label %15, label %14, !dbg !1454

14:                                               ; preds = %8
  store i32 0, i32* %5, align 4, !dbg !1455
  br label %15, !dbg !1456

15:                                               ; preds = %14, %8
  %16 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1457
  %17 = call i1 @streq(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.73, i64 0, i64 0)), !dbg !1459
  br i1 %17, label %18, label %20, !dbg !1460

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1461
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %19) #18, !dbg !1461
  br label %28, !dbg !1461

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1462
  %22 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %21), !dbg !1464
  %23 = icmp ne i32 %22, 0, !dbg !1465
  br i1 %23, label %24, label %27, !dbg !1466

24:                                               ; preds = %20
  %25 = call i32* @__errno_location() #21, !dbg !1467
  %26 = load i32, i32* %25, align 4, !dbg !1467
  store i32 %26, i32* %5, align 4, !dbg !1468
  br label %27, !dbg !1469

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %5, align 4, !dbg !1470
  %30 = icmp ne i32 %29, 0, !dbg !1470
  br i1 %30, label %31, label %35, !dbg !1472

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4, !dbg !1473
  %33 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1473
  %34 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %33), !dbg !1473
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.76, i64 0, i64 0), i8* noundef %34), !dbg !1473
  store i32 1, i32* @exit_status, align 4, !dbg !1475
  br label %35, !dbg !1476

35:                                               ; preds = %31, %28
  br label %36, !dbg !1477

36:                                               ; preds = %35, %1
  br label %37, !dbg !1478

37:                                               ; preds = %57, %36
  %38 = load i8**, i8*** @file_list, align 8, !dbg !1479
  %39 = getelementptr inbounds i8*, i8** %38, i32 1, !dbg !1479
  store i8** %39, i8*** @file_list, align 8, !dbg !1479
  %40 = load i8*, i8** %38, align 8, !dbg !1480
  store i8* %40, i8** %4, align 8, !dbg !1481
  %41 = icmp ne i8* %40, null, !dbg !1482
  br i1 %41, label %42, label %62, !dbg !1478

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8, !dbg !1483
  %44 = call i1 @streq(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.73, i64 0, i64 0)), !dbg !1486
  br i1 %44, label %45, label %47, !dbg !1487

45:                                               ; preds = %42
  store i8 1, i8* @have_read_stdin, align 1, !dbg !1488
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1490
  store %struct._IO_FILE* %46, %struct._IO_FILE** %3, align 8, !dbg !1491
  br label %50, !dbg !1492

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8, !dbg !1493
  %49 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.77, i64 0, i64 0)), !dbg !1494
  store %struct._IO_FILE* %49, %struct._IO_FILE** %3, align 8, !dbg !1495
  br label %50

50:                                               ; preds = %47, %45
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1496
  %52 = icmp ne %struct._IO_FILE* %51, null, !dbg !1496
  br i1 %52, label %53, label %57, !dbg !1498

53:                                               ; preds = %50
  %54 = load i8*, i8** %4, align 8, !dbg !1499
  store i8* %54, i8** @next_file.prev_file, align 8, !dbg !1501
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1502
  call void @fadvise(%struct._IO_FILE* noundef %55, i32 noundef 2), !dbg !1503
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1504
  store %struct._IO_FILE* %56, %struct._IO_FILE** %2, align 8, !dbg !1505
  br label %63, !dbg !1505

57:                                               ; preds = %50
  %58 = call i32* @__errno_location() #21, !dbg !1506
  %59 = load i32, i32* %58, align 4, !dbg !1506
  %60 = load i8*, i8** %4, align 8, !dbg !1506
  %61 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %60), !dbg !1506
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.76, i64 0, i64 0), i8* noundef %61), !dbg !1506
  store i32 1, i32* @exit_status, align 4, !dbg !1507
  br label %37, !dbg !1478, !llvm.loop !1508

62:                                               ; preds = %37
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1510
  br label %63, !dbg !1510

63:                                               ; preds = %62, %53
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1511
  ret %struct._IO_FILE* %64, !dbg !1511
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_file_list_stdin() #4 !dbg !1512 {
  %1 = load i8, i8* @have_read_stdin, align 1, !dbg !1513
  %2 = trunc i8 %1 to i1, !dbg !1513
  br i1 %2, label %3, label %10, !dbg !1515

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1516
  %5 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %4), !dbg !1517
  %6 = icmp ne i32 %5, 0, !dbg !1518
  br i1 %6, label %7, label %10, !dbg !1519

7:                                                ; preds = %3
  %8 = call i32* @__errno_location() #21, !dbg !1520
  %9 = load i32, i32* %8, align 4, !dbg !1520
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.73, i64 0, i64 0)), !dbg !1520
  unreachable, !dbg !1520

10:                                               ; preds = %3, %0
  ret void, !dbg !1521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_tab_list_info(i8* noundef %0) #4 !dbg !1522 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1523, metadata !DIExpression()), !dbg !1524
  %3 = load i8*, i8** %2, align 8, !dbg !1525
  %4 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9.82, i64 0, i64 0)) #18, !dbg !1526
  call void @oputs_.83(i8* noundef %3, i8* noundef %4), !dbg !1527
  %5 = call i8* @gettext(i8* noundef getelementptr inbounds ([305 x i8], [305 x i8]* @.str.10.84, i64 0, i64 0)) #18, !dbg !1528
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1528
  %7 = call i32 @fputs_unlocked(i8* noundef %5, %struct._IO_FILE* noundef %6), !dbg !1528
  ret void, !dbg !1529
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_.83(i8* noundef %0, i8* noundef %1) #4 !dbg !193 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1530, metadata !DIExpression()), !dbg !1531
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1532, metadata !DIExpression()), !dbg !1533
  %14 = load i32, i32* @oputs_.help_no_sgr.85, align 4, !dbg !1534
  %15 = icmp eq i32 %14, -1, !dbg !1536
  br i1 %15, label %16, label %30, !dbg !1537

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1538, metadata !DIExpression()), !dbg !1540
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.86, i64 0, i64 0)) #18, !dbg !1541
  store i8* %17, i8** %5, align 8, !dbg !1540
  %18 = load i8*, i8** %5, align 8, !dbg !1542
  %19 = icmp ne i8* %18, null, !dbg !1542
  br i1 %19, label %20, label %27, !dbg !1543

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !1544
  %22 = load i8, i8* %21, align 1, !dbg !1545
  %23 = icmp ne i8 %22, 0, !dbg !1545
  br i1 %23, label %24, label %27, !dbg !1546

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !1547
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.87, i64 0, i64 0)), !dbg !1548
  br label %27, !dbg !1546

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !1546
  store i32 %29, i32* @oputs_.help_no_sgr.85, align 4, !dbg !1549
  br label %30, !dbg !1550

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr.85, align 4, !dbg !1551
  %32 = icmp ne i32 %31, 0, !dbg !1551
  br i1 %32, label %33, label %37, !dbg !1553

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !1554
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1554
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !1554
  br label %274, !dbg !1556

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1557, metadata !DIExpression()), !dbg !1558
  store i8 1, i8* %6, align 1, !dbg !1558
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1559, metadata !DIExpression()), !dbg !1560
  %38 = load i8*, i8** %4, align 8, !dbg !1561
  %39 = load i8*, i8** %4, align 8, !dbg !1562
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19.88, i64 0, i64 0)) #20, !dbg !1563
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !1564
  store i8* %41, i8** %7, align 8, !dbg !1560
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1565, metadata !DIExpression()), !dbg !1566
  %42 = load i8*, i8** %4, align 8, !dbg !1567
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !1568
  store i8* %43, i8** %8, align 8, !dbg !1566
  %44 = load i8*, i8** %8, align 8, !dbg !1569
  %45 = icmp ne i8* %44, null, !dbg !1569
  br i1 %45, label %48, label %46, !dbg !1571

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !1572
  store i8* %47, i8** %8, align 8, !dbg !1574
  store i8 0, i8* %6, align 1, !dbg !1575
  br label %89, !dbg !1576

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !1577
  %50 = load i8*, i8** %7, align 8, !dbg !1579
  %51 = icmp ne i8* %49, %50, !dbg !1580
  br i1 %51, label %52, label %88, !dbg !1581

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1582, metadata !DIExpression()), !dbg !1584
  %53 = load i8*, i8** %7, align 8, !dbg !1585
  store i8* %53, i8** %9, align 8, !dbg !1584
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i64 0, i64* %10, align 8, !dbg !1587
  br label %54, !dbg !1588

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !1589
  %56 = load i8*, i8** %8, align 8, !dbg !1590
  %57 = icmp ult i8* %55, %56, !dbg !1591
  br i1 %57, label %58, label %61, !dbg !1592

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !1593
  %60 = icmp ult i64 %59, 2, !dbg !1594
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !1595
  br i1 %62, label %63, label %82, !dbg !1588

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !1596
  %65 = load i16*, i16** %64, align 8, !dbg !1596
  %66 = load i8*, i8** %9, align 8, !dbg !1596
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !1596
  store i8* %67, i8** %9, align 8, !dbg !1596
  %68 = load i8, i8* %66, align 1, !dbg !1596
  %69 = zext i8 %68 to i32, !dbg !1596
  %70 = sext i32 %69 to i64, !dbg !1596
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !1596
  %72 = load i16, i16* %71, align 2, !dbg !1596
  %73 = zext i16 %72 to i32, !dbg !1596
  %74 = and i32 %73, 8192, !dbg !1596
  %75 = icmp ne i32 %74, 0, !dbg !1597
  %76 = xor i1 %75, true, !dbg !1597
  %77 = xor i1 %76, true, !dbg !1598
  %78 = zext i1 %77 to i32, !dbg !1598
  %79 = sext i32 %78 to i64, !dbg !1598
  %80 = load i64, i64* %10, align 8, !dbg !1599
  %81 = add i64 %80, %79, !dbg !1599
  store i64 %81, i64* %10, align 8, !dbg !1599
  br label %54, !dbg !1588, !llvm.loop !1600

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !1601
  %84 = icmp eq i64 %83, 2, !dbg !1603
  br i1 %84, label %85, label %87, !dbg !1604

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !1605
  store i8* %86, i8** %8, align 8, !dbg !1607
  store i8 0, i8* %6, align 1, !dbg !1608
  br label %87, !dbg !1609

87:                                               ; preds = %85, %82
  br label %88, !dbg !1610

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1611, metadata !DIExpression()), !dbg !1612
  %90 = load i8*, i8** %8, align 8, !dbg !1613
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.89, i64 0, i64 0)) #20, !dbg !1614
  store i64 %91, i64* %11, align 8, !dbg !1612
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1615, metadata !DIExpression()), !dbg !1616
  %92 = load i8*, i8** %8, align 8, !dbg !1617
  %93 = load i64, i64* %11, align 8, !dbg !1618
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1619
  store i8* %94, i8** %12, align 8, !dbg !1616
  br label %95, !dbg !1620

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !1621
  %97 = load i8, i8* %96, align 1, !dbg !1622
  %98 = zext i8 %97 to i32, !dbg !1622
  %99 = icmp ne i32 %98, 0, !dbg !1622
  br i1 %99, label %100, label %105, !dbg !1623

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !1624
  %102 = load i8, i8* %101, align 1, !dbg !1625
  %103 = zext i8 %102 to i32, !dbg !1625
  %104 = icmp ne i32 %103, 10, !dbg !1626
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !1627
  br i1 %106, label %107, label %164, !dbg !1620

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !1628
  %109 = load i8, i8* %108, align 1, !dbg !1631
  %110 = zext i8 %109 to i32, !dbg !1631
  %111 = icmp eq i32 %110, 45, !dbg !1632
  br i1 %111, label %112, label %119, !dbg !1633

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !1634
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !1635
  %115 = load i8, i8* %114, align 1, !dbg !1636
  %116 = zext i8 %115 to i32, !dbg !1636
  %117 = icmp eq i32 %116, 45, !dbg !1637
  br i1 %117, label %118, label %119, !dbg !1638

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !1639
  br label %119, !dbg !1640

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !1641
  %121 = load i16*, i16** %120, align 8, !dbg !1641
  %122 = load i8*, i8** %12, align 8, !dbg !1641
  %123 = load i8, i8* %122, align 1, !dbg !1641
  %124 = zext i8 %123 to i32, !dbg !1641
  %125 = sext i32 %124 to i64, !dbg !1641
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !1641
  %127 = load i16, i16* %126, align 2, !dbg !1641
  %128 = zext i16 %127 to i32, !dbg !1641
  %129 = and i32 %128, 8192, !dbg !1641
  %130 = icmp ne i32 %129, 0, !dbg !1641
  br i1 %130, label %131, label %161, !dbg !1643

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !1644
  %133 = load i8, i8* %132, align 1, !dbg !1647
  %134 = zext i8 %133 to i32, !dbg !1647
  %135 = icmp eq i32 %134, 9, !dbg !1648
  br i1 %135, label %149, label %136, !dbg !1649

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !1650
  %138 = load i16*, i16** %137, align 8, !dbg !1650
  %139 = load i8*, i8** %12, align 8, !dbg !1650
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1650
  %141 = load i8, i8* %140, align 1, !dbg !1650
  %142 = zext i8 %141 to i32, !dbg !1650
  %143 = sext i32 %142 to i64, !dbg !1650
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !1650
  %145 = load i16, i16* %144, align 2, !dbg !1650
  %146 = zext i16 %145 to i32, !dbg !1650
  %147 = and i32 %146, 8192, !dbg !1650
  %148 = icmp ne i32 %147, 0, !dbg !1650
  br i1 %148, label %149, label %150, !dbg !1651

149:                                              ; preds = %136, %131
  br label %164, !dbg !1652

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !1653
  %152 = trunc i8 %151 to i1, !dbg !1653
  br i1 %152, label %160, label %153, !dbg !1655

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !1656
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1657
  %156 = load i8, i8* %155, align 1, !dbg !1658
  %157 = zext i8 %156 to i32, !dbg !1658
  %158 = icmp ne i32 %157, 45, !dbg !1659
  br i1 %158, label %159, label %160, !dbg !1660

159:                                              ; preds = %153
  br label %164, !dbg !1661

160:                                              ; preds = %153, %150
  br label %161, !dbg !1662

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !1663
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !1663
  store i8* %163, i8** %12, align 8, !dbg !1663
  br label %95, !dbg !1620, !llvm.loop !1664

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !1666
  %166 = load i8*, i8** %7, align 8, !dbg !1666
  %167 = load i8*, i8** %4, align 8, !dbg !1666
  %168 = ptrtoint i8* %166 to i64, !dbg !1666
  %169 = ptrtoint i8* %167 to i64, !dbg !1666
  %170 = sub i64 %168, %169, !dbg !1666
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1666
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !1666
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1667, metadata !DIExpression()), !dbg !1668
  %173 = load i8*, i8** %3, align 8, !dbg !1669
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.90, i64 0, i64 0)), !dbg !1670
  br i1 %174, label %175, label %176, !dbg !1670

175:                                              ; preds = %164
  br label %232, !dbg !1670

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !1671
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23.91, i64 0, i64 0)), !dbg !1672
  br i1 %178, label %179, label %180, !dbg !1672

179:                                              ; preds = %176
  br label %230, !dbg !1672

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !1673
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.92, i64 0, i64 0)), !dbg !1674
  br i1 %182, label %183, label %184, !dbg !1674

183:                                              ; preds = %180
  br label %228, !dbg !1674

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !1675
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26.93, i64 0, i64 0)), !dbg !1676
  br i1 %186, label %187, label %188, !dbg !1676

187:                                              ; preds = %184
  br label %226, !dbg !1676

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !1677
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28.94, i64 0, i64 0)), !dbg !1678
  br i1 %190, label %191, label %192, !dbg !1678

191:                                              ; preds = %188
  br label %224, !dbg !1678

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !1679
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.95, i64 0, i64 0)), !dbg !1680
  br i1 %194, label %195, label %196, !dbg !1680

195:                                              ; preds = %192
  br label %222, !dbg !1680

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !1681
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30.96, i64 0, i64 0)), !dbg !1682
  br i1 %198, label %199, label %200, !dbg !1682

199:                                              ; preds = %196
  br label %220, !dbg !1682

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !1683
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.97, i64 0, i64 0)), !dbg !1684
  br i1 %202, label %203, label %204, !dbg !1684

203:                                              ; preds = %200
  br label %218, !dbg !1684

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !1685
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.98, i64 0, i64 0)), !dbg !1686
  br i1 %206, label %207, label %208, !dbg !1686

207:                                              ; preds = %204
  br label %216, !dbg !1686

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !1687
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.99, i64 0, i64 0)), !dbg !1688
  br i1 %210, label %211, label %212, !dbg !1688

211:                                              ; preds = %208
  br label %214, !dbg !1688

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !1689
  br label %214, !dbg !1688

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !1688
  br label %216, !dbg !1686

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !1686
  br label %218, !dbg !1684

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !1684
  br label %220, !dbg !1682

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !1682
  br label %222, !dbg !1680

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !1680
  br label %224, !dbg !1678

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !1678
  br label %226, !dbg !1676

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27.100, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !1676
  br label %228, !dbg !1674

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.101, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !1674
  br label %230, !dbg !1672

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.101, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !1672
  br label %232, !dbg !1670

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.102, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !1670
  store i8* %233, i8** %13, align 8, !dbg !1668
  %234 = load i8*, i8** %8, align 8, !dbg !1690
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34.103, i64 0, i64 0), i64 noundef 6) #20, !dbg !1690
  %236 = icmp eq i32 %235, 0, !dbg !1690
  br i1 %236, label %241, label %237, !dbg !1692

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !1693
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35.104, i64 0, i64 0), i64 noundef 9) #20, !dbg !1693
  %240 = icmp eq i32 %239, 0, !dbg !1693
  br i1 %240, label %241, label %248, !dbg !1694

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !1695
  %243 = load i8*, i8** %13, align 8, !dbg !1697
  %244 = load i64, i64* %11, align 8, !dbg !1698
  %245 = trunc i64 %244 to i32, !dbg !1699
  %246 = load i8*, i8** %8, align 8, !dbg !1700
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37.106, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !1701
  br label %254, !dbg !1702

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !1703
  %250 = load i64, i64* %11, align 8, !dbg !1705
  %251 = trunc i64 %250 to i32, !dbg !1706
  %252 = load i8*, i8** %8, align 8, !dbg !1707
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39.108, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !1708
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1709
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40.109, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !1709
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1710
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.110, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !1710
  %259 = load i8*, i8** %7, align 8, !dbg !1711
  %260 = load i8*, i8** %12, align 8, !dbg !1711
  %261 = load i8*, i8** %7, align 8, !dbg !1711
  %262 = ptrtoint i8* %260 to i64, !dbg !1711
  %263 = ptrtoint i8* %261 to i64, !dbg !1711
  %264 = sub i64 %262, %263, !dbg !1711
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1711
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !1711
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1712
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42.111, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !1712
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1713
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.112, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !1713
  %271 = load i8*, i8** %12, align 8, !dbg !1714
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1714
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !1714
  br label %274, !dbg !1715

274:                                              ; preds = %254, %33
  ret void, !dbg !1715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalnum(i32 noundef %0) #4 !dbg !1716 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1720, metadata !DIExpression()), !dbg !1721
  %4 = load i32, i32* %3, align 4, !dbg !1722
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
  ], !dbg !1723

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1724
  br label %7, !dbg !1724

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1726
  br label %7, !dbg !1726

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1727
  ret i1 %8, !dbg !1727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 !dbg !1728 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1729, metadata !DIExpression()), !dbg !1730
  %4 = load i32, i32* %3, align 4, !dbg !1731
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
  ], !dbg !1732

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1733
  br label %7, !dbg !1733

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1735
  br label %7, !dbg !1735

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1736
  ret i1 %8, !dbg !1736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 !dbg !1737 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1738, metadata !DIExpression()), !dbg !1739
  %4 = load i32, i32* %3, align 4, !dbg !1740
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
  ], !dbg !1741

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1742
  br label %7, !dbg !1742

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1744
  br label %7, !dbg !1744

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1745
  ret i1 %8, !dbg !1745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 !dbg !1746 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  %3 = load i32, i32* %2, align 4, !dbg !1749
  %4 = icmp eq i32 %3, 32, !dbg !1750
  br i1 %4, label %8, label %5, !dbg !1751

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1752
  %7 = icmp eq i32 %6, 9, !dbg !1753
  br label %8, !dbg !1751

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !1754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 !dbg !1755 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1756, metadata !DIExpression()), !dbg !1757
  %4 = load i32, i32* %3, align 4, !dbg !1758
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
  ], !dbg !1759

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1760
  br label %7, !dbg !1760

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1762
  br label %7, !dbg !1762

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1763
  ret i1 %8, !dbg !1763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 !dbg !1764 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1765, metadata !DIExpression()), !dbg !1766
  %4 = load i32, i32* %3, align 4, !dbg !1767
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
  ], !dbg !1768

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1769
  br label %7, !dbg !1769

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1771
  br label %7, !dbg !1771

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1772
  ret i1 %8, !dbg !1772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 !dbg !1773 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1774, metadata !DIExpression()), !dbg !1775
  %4 = load i32, i32* %3, align 4, !dbg !1776
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
  ], !dbg !1777

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1778
  br label %7, !dbg !1778

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1780
  br label %7, !dbg !1780

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1781
  ret i1 %8, !dbg !1781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 !dbg !1782 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1783, metadata !DIExpression()), !dbg !1784
  %4 = load i32, i32* %3, align 4, !dbg !1785
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
  ], !dbg !1786

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1787
  br label %7, !dbg !1787

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1789
  br label %7, !dbg !1789

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1790
  ret i1 %8, !dbg !1790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 !dbg !1791 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1792, metadata !DIExpression()), !dbg !1793
  %4 = load i32, i32* %3, align 4, !dbg !1794
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
  ], !dbg !1795

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1796
  br label %7, !dbg !1796

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1798
  br label %7, !dbg !1798

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1799
  ret i1 %8, !dbg !1799
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 !dbg !1800 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1801, metadata !DIExpression()), !dbg !1802
  %4 = load i32, i32* %3, align 4, !dbg !1803
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
  ], !dbg !1804

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1805
  br label %7, !dbg !1805

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1807
  br label %7, !dbg !1807

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1808
  ret i1 %8, !dbg !1808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 !dbg !1809 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1810, metadata !DIExpression()), !dbg !1811
  %4 = load i32, i32* %3, align 4, !dbg !1812
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !1813

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1814
  br label %7, !dbg !1814

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1816
  br label %7, !dbg !1816

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1817
  ret i1 %8, !dbg !1817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 !dbg !1818 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1819, metadata !DIExpression()), !dbg !1820
  %4 = load i32, i32* %3, align 4, !dbg !1821
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
  ], !dbg !1822

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1823
  br label %7, !dbg !1823

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1825
  br label %7, !dbg !1825

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1826
  ret i1 %8, !dbg !1826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 !dbg !1827 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1828, metadata !DIExpression()), !dbg !1829
  %4 = load i32, i32* %3, align 4, !dbg !1830
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
  ], !dbg !1831

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !1832
  br label %7, !dbg !1832

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1834
  br label %7, !dbg !1834

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !1835
  ret i1 %8, !dbg !1835
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 !dbg !1836 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1839, metadata !DIExpression()), !dbg !1840
  %4 = load i32, i32* %3, align 4, !dbg !1841
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
  ], !dbg !1842

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1843
  %7 = sub nsw i32 %6, 65, !dbg !1845
  %8 = add nsw i32 %7, 97, !dbg !1846
  store i32 %8, i32* %2, align 4, !dbg !1847
  br label %11, !dbg !1847

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1848
  store i32 %10, i32* %2, align 4, !dbg !1849
  br label %11, !dbg !1849

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1850
  ret i32 %12, !dbg !1850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 !dbg !1851 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1852, metadata !DIExpression()), !dbg !1853
  %4 = load i32, i32* %3, align 4, !dbg !1854
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
  ], !dbg !1855

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !1856
  %7 = sub nsw i32 %6, 97, !dbg !1858
  %8 = add nsw i32 %7, 65, !dbg !1859
  store i32 %8, i32* %2, align 4, !dbg !1860
  br label %11, !dbg !1860

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !1861
  store i32 %10, i32* %2, align 4, !dbg !1862
  br label %11, !dbg !1862

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !1863
  ret i32 %12, !dbg !1863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isblank(i32 noundef %0) #4 !dbg !1864 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1870, metadata !DIExpression()), !dbg !1871
  %3 = load i32, i32* %2, align 4, !dbg !1872
  %4 = call i32 @iswblank(i32 noundef %3) #18, !dbg !1873
  ret i32 %4, !dbg !1874
}

; Function Attrs: nounwind
declare i32 @iswblank(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32width(i32 noundef %0) #4 !dbg !1875 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1878, metadata !DIExpression()), !dbg !1879
  %3 = load i32, i32* %2, align 4, !dbg !1880
  %4 = call i32 @wcwidth(i32 noundef %3) #18, !dbg !1881
  ret i32 %4, !dbg !1882
}

; Function Attrs: nounwind
declare i32 @wcwidth(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1883 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1884, metadata !DIExpression()), !dbg !1885
  %3 = load i8*, i8** %2, align 8, !dbg !1886
  store i8* %3, i8** @file_name, align 8, !dbg !1887
  ret void, !dbg !1888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1889 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1892, metadata !DIExpression()), !dbg !1893
  %4 = load i8, i8* %2, align 1, !dbg !1894
  %5 = trunc i8 %4 to i1, !dbg !1894
  %6 = zext i1 %5 to i8, !dbg !1895
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1895
  ret void, !dbg !1896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1897 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1898
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1900
  %4 = icmp ne i32 %3, 0, !dbg !1901
  br i1 %4, label %5, label %28, !dbg !1902

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1903
  %7 = trunc i8 %6 to i1, !dbg !1903
  br i1 %7, label %8, label %12, !dbg !1904

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1905
  %10 = load i32, i32* %9, align 4, !dbg !1905
  %11 = icmp eq i32 %10, 32, !dbg !1906
  br i1 %11, label %28, label %12, !dbg !1907

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1908, metadata !DIExpression()), !dbg !1910
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.125, i64 0, i64 0)) #18, !dbg !1911
  store i8* %13, i8** %1, align 8, !dbg !1910
  %14 = load i8*, i8** @file_name, align 8, !dbg !1912
  %15 = icmp ne i8* %14, null, !dbg !1912
  br i1 %15, label %16, label %22, !dbg !1914

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1915
  %18 = load i32, i32* %17, align 4, !dbg !1915
  %19 = load i8*, i8** @file_name, align 8, !dbg !1915
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1915
  %21 = load i8*, i8** %1, align 8, !dbg !1915
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1915
  br label %26, !dbg !1915

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1916
  %24 = load i32, i32* %23, align 4, !dbg !1916
  %25 = load i8*, i8** %1, align 8, !dbg !1916
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.127, i64 0, i64 0), i8* noundef %25), !dbg !1916
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1917
  call void @_exit(i32 noundef %27) #22, !dbg !1918
  unreachable, !dbg !1918

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1919
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1921
  %31 = icmp ne i32 %30, 0, !dbg !1922
  br i1 %31, label %32, label %34, !dbg !1923

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1924
  call void @_exit(i32 noundef %33) #22, !dbg !1925
  unreachable, !dbg !1925

34:                                               ; preds = %28
  ret void, !dbg !1926
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !1927 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1930, metadata !DIExpression()), !dbg !1931
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1932, metadata !DIExpression()), !dbg !1931
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1933, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1934, metadata !DIExpression()), !dbg !1931
  call void @flush_stdout(), !dbg !1935
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1936
  %10 = icmp ne void ()* %9, null, !dbg !1936
  br i1 %10, label %11, label %13, !dbg !1938

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1939
  call void %12(), !dbg !1940
  br label %17, !dbg !1940

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1941
  %15 = call i8* @getprogname() #20, !dbg !1943
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i8* noundef %15), !dbg !1944
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1945
  %19 = load i32, i32* %6, align 4, !dbg !1945
  %20 = load i8*, i8** %7, align 8, !dbg !1945
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1945
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1945
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1945
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1945
  ret void, !dbg !1946
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1947 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1948, metadata !DIExpression()), !dbg !1949
  store i32 1, i32* %1, align 4, !dbg !1950
  %2 = load i32, i32* %1, align 4, !dbg !1951
  %3 = icmp sle i32 0, %2, !dbg !1953
  br i1 %3, label %4, label %11, !dbg !1954

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1955
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1956
  %7 = icmp ne i32 %6, 0, !dbg !1956
  br i1 %7, label %8, label %11, !dbg !1957

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1958
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1958
  br label %11, !dbg !1958

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1959
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1960 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1961, metadata !DIExpression()), !dbg !1962
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1963, metadata !DIExpression()), !dbg !1962
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1964, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1965, metadata !DIExpression()), !dbg !1962
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1966
  %10 = load i8*, i8** %7, align 8, !dbg !1967
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1968
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1968
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1968
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1969
  %15 = add i32 %14, 1, !dbg !1969
  store i32 %15, i32* @error_message_count, align 4, !dbg !1969
  %16 = load i32, i32* %6, align 4, !dbg !1970
  %17 = icmp ne i32 %16, 0, !dbg !1970
  br i1 %17, label %18, label %20, !dbg !1972

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1973
  call void @print_errno_message(i32 noundef %19), !dbg !1974
  br label %20, !dbg !1974

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1975
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1975
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1976
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1976
  %25 = load i32, i32* %5, align 4, !dbg !1977
  %26 = icmp ne i32 %25, 0, !dbg !1977
  br i1 %26, label %27, label %29, !dbg !1979

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1980
  call void @exit(i32 noundef %28) #19, !dbg !1981
  unreachable, !dbg !1981

29:                                               ; preds = %20
  ret void, !dbg !1982
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1983 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1984, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1988, metadata !DIExpression()), !dbg !1992
  %5 = load i32, i32* %2, align 4, !dbg !1993
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1994
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1995
  store i8* %7, i8** %3, align 8, !dbg !1996
  %8 = load i8*, i8** %3, align 8, !dbg !1997
  %9 = icmp ne i8* %8, null, !dbg !1997
  br i1 %9, label %12, label %10, !dbg !1999

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.130, i64 0, i64 0)) #18, !dbg !2000
  store i8* %11, i8** %3, align 8, !dbg !2001
  br label %12, !dbg !2002

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2003
  %14 = load i8*, i8** %3, align 8, !dbg !2004
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.131, i64 0, i64 0), i8* noundef %14), !dbg !2005
  ret void, !dbg !2006
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !2007 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2008, metadata !DIExpression()), !dbg !2009
  %3 = load i32, i32* %2, align 4, !dbg !2010
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !2011
  %5 = icmp sle i32 0, %4, !dbg !2012
  %6 = zext i1 %5 to i32, !dbg !2012
  ret i32 %6, !dbg !2013
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !2014 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2017, metadata !DIExpression()), !dbg !2018
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2021, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !2023, metadata !DIExpression()), !dbg !2024
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2025
  call void @llvm.va_start(i8* %9), !dbg !2025
  %10 = load i32, i32* %4, align 4, !dbg !2026
  %11 = load i32, i32* %5, align 4, !dbg !2026
  %12 = load i8*, i8** %6, align 8, !dbg !2026
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2026
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !2026
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !2026
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2027
  call void @llvm.va_end(i8* %15), !dbg !2027
  ret void, !dbg !2028
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !214 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2029, metadata !DIExpression()), !dbg !2030
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2031, metadata !DIExpression()), !dbg !2030
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2032, metadata !DIExpression()), !dbg !2030
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2033, metadata !DIExpression()), !dbg !2030
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2034, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2035, metadata !DIExpression()), !dbg !2030
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !2036
  %14 = icmp ne i32 %13, 0, !dbg !2036
  br i1 %14, label %15, label %38, !dbg !2038

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2039
  %17 = load i32, i32* %10, align 4, !dbg !2042
  %18 = icmp eq i32 %16, %17, !dbg !2043
  br i1 %18, label %19, label %35, !dbg !2044

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !2045
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2046
  %22 = icmp eq i8* %20, %21, !dbg !2047
  br i1 %22, label %34, label %23, !dbg !2048

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2049
  %25 = icmp ne i8* %24, null, !dbg !2050
  br i1 %25, label %26, label %35, !dbg !2051

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !2052
  %28 = icmp ne i8* %27, null, !dbg !2053
  br i1 %28, label %29, label %35, !dbg !2054

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2055
  %31 = load i8*, i8** %9, align 8, !dbg !2056
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !2057
  %33 = icmp eq i32 %32, 0, !dbg !2058
  br i1 %33, label %34, label %35, !dbg !2059

34:                                               ; preds = %29, %19
  br label %61, !dbg !2060

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !2061
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !2062
  %37 = load i32, i32* %10, align 4, !dbg !2063
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !2064
  br label %38, !dbg !2065

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !2066
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2067
  %40 = icmp ne void ()* %39, null, !dbg !2067
  br i1 %40, label %41, label %43, !dbg !2069

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2070
  call void %42(), !dbg !2071
  br label %47, !dbg !2071

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2072
  %45 = call i8* @getprogname() #20, !dbg !2074
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.134, i64 0, i64 0), i8* noundef %45), !dbg !2075
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2076
  %49 = load i8*, i8** %9, align 8, !dbg !2077
  %50 = icmp ne i8* %49, null, !dbg !2078
  %51 = zext i1 %50 to i64, !dbg !2077
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.135, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.136, i64 0, i64 0), !dbg !2077
  %53 = load i8*, i8** %9, align 8, !dbg !2079
  %54 = load i32, i32* %10, align 4, !dbg !2080
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !2081
  %56 = load i32, i32* %7, align 4, !dbg !2082
  %57 = load i32, i32* %8, align 4, !dbg !2082
  %58 = load i8*, i8** %11, align 8, !dbg !2082
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !2082
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !2082
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !2082
  br label %61, !dbg !2083

61:                                               ; preds = %47, %34
  ret void, !dbg !2083
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !2084 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2093, metadata !DIExpression()), !dbg !2094
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !2097, metadata !DIExpression()), !dbg !2098
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2099
  call void @llvm.va_start(i8* %13), !dbg !2099
  %14 = load i32, i32* %6, align 4, !dbg !2100
  %15 = load i32, i32* %7, align 4, !dbg !2100
  %16 = load i8*, i8** %8, align 8, !dbg !2100
  %17 = load i32, i32* %9, align 4, !dbg !2100
  %18 = load i8*, i8** %10, align 8, !dbg !2100
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !2100
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !2100
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !2100
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !2101
  call void @llvm.va_end(i8* %21), !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 !dbg !2103 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2108, metadata !DIExpression()), !dbg !2109
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2114, metadata !DIExpression()), !dbg !2115
  %9 = load i32, i32* %5, align 4, !dbg !2116
  %10 = load i64, i64* %6, align 8, !dbg !2116
  %11 = load i64, i64* %7, align 8, !dbg !2116
  %12 = load i32, i32* %8, align 4, !dbg !2116
  %13 = call i32 @posix_fadvise(i32 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12) #18, !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) #4 !dbg !2118 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2155, metadata !DIExpression()), !dbg !2156
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2157, metadata !DIExpression()), !dbg !2158
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2159
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !2159
  br i1 %6, label %7, label %11, !dbg !2161

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2162
  %9 = call i32 @fileno(%struct._IO_FILE* noundef %8) #18, !dbg !2163
  %10 = load i32, i32* %4, align 4, !dbg !2164
  call void @fdadvise(i32 noundef %9, i64 noundef 0, i64 noundef 0, i32 noundef %10), !dbg !2165
  br label %11, !dbg !2165

11:                                               ; preds = %7, %2
  ret void, !dbg !2166
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !2167 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2206, metadata !DIExpression()), !dbg !2207
  store i32 0, i32* %4, align 4, !dbg !2207
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2208, metadata !DIExpression()), !dbg !2209
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2210
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !2211
  store i32 %8, i32* %5, align 4, !dbg !2209
  %9 = load i32, i32* %5, align 4, !dbg !2212
  %10 = icmp slt i32 %9, 0, !dbg !2214
  br i1 %10, label %11, label %14, !dbg !2215

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2216
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !2217
  store i32 %13, i32* %2, align 4, !dbg !2218
  br label %40, !dbg !2218

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2219
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !2219
  %17 = icmp ne i32 %16, 0, !dbg !2219
  br i1 %17, label %18, label %23, !dbg !2221

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2222
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !2223
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !2224
  %22 = icmp ne i64 %21, -1, !dbg !2225
  br i1 %22, label %23, label %30, !dbg !2226

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2227
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !2228
  %26 = icmp ne i32 %25, 0, !dbg !2228
  br i1 %26, label %27, label %30, !dbg !2229

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !2230
  %29 = load i32, i32* %28, align 4, !dbg !2230
  store i32 %29, i32* %4, align 4, !dbg !2231
  br label %30, !dbg !2232

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2233, metadata !DIExpression()), !dbg !2234
  store i32 0, i32* %6, align 4, !dbg !2234
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2235
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !2236
  store i32 %32, i32* %6, align 4, !dbg !2237
  %33 = load i32, i32* %4, align 4, !dbg !2238
  %34 = icmp ne i32 %33, 0, !dbg !2240
  br i1 %34, label %35, label %38, !dbg !2241

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !2242
  %37 = call i32* @__errno_location() #21, !dbg !2244
  store i32 %36, i32* %37, align 4, !dbg !2245
  store i32 -1, i32* %6, align 4, !dbg !2246
  br label %38, !dbg !2247

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !2248
  store i32 %39, i32* %2, align 4, !dbg !2249
  br label %40, !dbg !2249

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !2250
  ret i32 %41, !dbg !2250
}

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !2251 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2288, metadata !DIExpression()), !dbg !2289
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2290
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2292
  br i1 %5, label %10, label %6, !dbg !2293

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2294
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !2294
  %9 = icmp ne i32 %8, 0, !dbg !2294
  br i1 %9, label %13, label %10, !dbg !2295

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2296
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !2297
  store i32 %12, i32* %2, align 4, !dbg !2298
  br label %17, !dbg !2298

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2299
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !2300
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2301
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !2302
  store i32 %16, i32* %2, align 4, !dbg !2303
  br label %17, !dbg !2303

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !2304
  ret i32 %18, !dbg !2304
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !2305 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2308, metadata !DIExpression()), !dbg !2309
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2310
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !2312
  %5 = load i32, i32* %4, align 8, !dbg !2312
  %6 = and i32 %5, 256, !dbg !2313
  %7 = icmp ne i32 %6, 0, !dbg !2313
  br i1 %7, label %8, label %11, !dbg !2314

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2315
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !2316
  br label %11, !dbg !2316

11:                                               ; preds = %8, %1
  ret void, !dbg !2317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !2318 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !2355, metadata !DIExpression()), !dbg !2356
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2357
  call void @__fpurge(%struct._IO_FILE* noundef %3) #18, !dbg !2358
  ret i32 0, !dbg !2359
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !2360 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2401, metadata !DIExpression()), !dbg !2402
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2403
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !2405
  %11 = load i8*, i8** %10, align 8, !dbg !2405
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2406
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !2407
  %14 = load i8*, i8** %13, align 8, !dbg !2407
  %15 = icmp eq i8* %11, %14, !dbg !2408
  br i1 %15, label %16, label %46, !dbg !2409

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2410
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !2411
  %19 = load i8*, i8** %18, align 8, !dbg !2411
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2412
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !2413
  %22 = load i8*, i8** %21, align 8, !dbg !2413
  %23 = icmp eq i8* %19, %22, !dbg !2414
  br i1 %23, label %24, label %46, !dbg !2415

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2416
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !2417
  %27 = load i8*, i8** %26, align 8, !dbg !2417
  %28 = icmp eq i8* %27, null, !dbg !2418
  br i1 %28, label %29, label %46, !dbg !2419

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2420, metadata !DIExpression()), !dbg !2422
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2423
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !2424
  %32 = load i64, i64* %6, align 8, !dbg !2425
  %33 = load i32, i32* %7, align 4, !dbg !2426
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !2427
  store i64 %34, i64* %8, align 8, !dbg !2422
  %35 = load i64, i64* %8, align 8, !dbg !2428
  %36 = icmp eq i64 %35, -1, !dbg !2430
  br i1 %36, label %37, label %38, !dbg !2431

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !2432
  br label %51, !dbg !2432

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2434
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !2435
  %41 = load i32, i32* %40, align 8, !dbg !2436
  %42 = and i32 %41, -17, !dbg !2436
  store i32 %42, i32* %40, align 8, !dbg !2436
  %43 = load i64, i64* %8, align 8, !dbg !2437
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2438
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !2439
  store i64 %43, i64* %45, align 8, !dbg !2440
  store i32 0, i32* %4, align 4, !dbg !2441
  br label %51, !dbg !2441

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2442
  %48 = load i64, i64* %6, align 8, !dbg !2443
  %49 = load i32, i32* %7, align 4, !dbg !2444
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !2445
  store i32 %50, i32* %4, align 4, !dbg !2446
  br label %51, !dbg !2446

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !2447
  ret i32 %52, !dbg !2447
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 !dbg !2448 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2451
  ret i8* %1, !dbg !2452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbbuf_init(%struct.mbbuf_t* noundef %0, i8* noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3) #4 !dbg !2453 {
  %5 = alloca %struct.mbbuf_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %5, metadata !2499, metadata !DIExpression()), !dbg !2500
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2503, metadata !DIExpression()), !dbg !2504
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !2505, metadata !DIExpression()), !dbg !2506
  %9 = load i64, i64* %7, align 8, !dbg !2507
  %10 = icmp slt i64 %9, 4, !dbg !2509
  br i1 %10, label %11, label %12, !dbg !2510

11:                                               ; preds = %4
  unreachable, !dbg !2511

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !2512
  %14 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2513
  %15 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %14, i32 0, i32 0, !dbg !2514
  store i8* %13, i8** %15, align 8, !dbg !2515
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !2516
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2517
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !2518
  store %struct._IO_FILE* %16, %struct._IO_FILE** %18, align 8, !dbg !2519
  %19 = load i64, i64* %7, align 8, !dbg !2520
  %20 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2521
  %21 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %20, i32 0, i32 2, !dbg !2522
  store i64 %19, i64* %21, align 8, !dbg !2523
  %22 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2524
  %23 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %22, i32 0, i32 3, !dbg !2525
  store i64 0, i64* %23, align 8, !dbg !2526
  %24 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !2527
  %25 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %24, i32 0, i32 4, !dbg !2528
  store i64 0, i64* %25, align 8, !dbg !2529
  ret void, !dbg !2530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %0) #4 !dbg !2531 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca %struct.mbbuf_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mcel_t, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %3, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2542, metadata !DIExpression()), !dbg !2543
  %7 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2544
  %8 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %7, i32 0, i32 3, !dbg !2545
  %9 = load i64, i64* %8, align 8, !dbg !2545
  %10 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2546
  %11 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %10, i32 0, i32 4, !dbg !2547
  %12 = load i64, i64* %11, align 8, !dbg !2547
  %13 = sub nsw i64 %9, %12, !dbg !2548
  store i64 %13, i64* %4, align 8, !dbg !2543
  %14 = load i64, i64* %4, align 8, !dbg !2549
  %15 = icmp slt i64 %14, 4, !dbg !2551
  br i1 %15, label %16, label %67, !dbg !2552

16:                                               ; preds = %1
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2553
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !2554
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8, !dbg !2554
  %20 = call i32 @feof(%struct._IO_FILE* noundef %19) #18, !dbg !2555
  %21 = icmp ne i32 %20, 0, !dbg !2555
  br i1 %21, label %67, label %22, !dbg !2556

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2557, metadata !DIExpression()), !dbg !2559
  %23 = load i64, i64* %4, align 8, !dbg !2560
  %24 = icmp slt i64 0, %23, !dbg !2562
  br i1 %24, label %26, label %25, !dbg !2563

25:                                               ; preds = %22
  store i64 0, i64* %5, align 8, !dbg !2564
  br label %39, !dbg !2565

26:                                               ; preds = %22
  %27 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2566
  %28 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %27, i32 0, i32 0, !dbg !2568
  %29 = load i8*, i8** %28, align 8, !dbg !2568
  %30 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2569
  %31 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %30, i32 0, i32 0, !dbg !2570
  %32 = load i8*, i8** %31, align 8, !dbg !2570
  %33 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2571
  %34 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %33, i32 0, i32 4, !dbg !2572
  %35 = load i64, i64* %34, align 8, !dbg !2572
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !2573
  %37 = load i64, i64* %4, align 8, !dbg !2574
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %36, i64 %37, i1 false), !dbg !2575
  %38 = load i64, i64* %4, align 8, !dbg !2576
  store i64 %38, i64* %5, align 8, !dbg !2577
  br label %39

39:                                               ; preds = %26, %25
  %40 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2578
  %41 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %40, i32 0, i32 0, !dbg !2579
  %42 = load i8*, i8** %41, align 8, !dbg !2579
  %43 = load i64, i64* %5, align 8, !dbg !2580
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !2581
  %45 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2582
  %46 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %45, i32 0, i32 2, !dbg !2583
  %47 = load i64, i64* %46, align 8, !dbg !2583
  %48 = load i64, i64* %5, align 8, !dbg !2584
  %49 = sub nsw i64 %47, %48, !dbg !2585
  %50 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2586
  %51 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %50, i32 0, i32 1, !dbg !2587
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %51, align 8, !dbg !2587
  %53 = call i64 @fread(i8* noundef %44, i64 noundef 1, i64 noundef %49, %struct._IO_FILE* noundef %52), !dbg !2588
  %54 = load i64, i64* %5, align 8, !dbg !2589
  %55 = add i64 %53, %54, !dbg !2590
  %56 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2591
  %57 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %56, i32 0, i32 3, !dbg !2592
  store i64 %55, i64* %57, align 8, !dbg !2593
  %58 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2594
  %59 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %58, i32 0, i32 4, !dbg !2595
  store i64 0, i64* %59, align 8, !dbg !2596
  %60 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2597
  %61 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %60, i32 0, i32 3, !dbg !2598
  %62 = load i64, i64* %61, align 8, !dbg !2598
  %63 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2599
  %64 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %63, i32 0, i32 4, !dbg !2600
  %65 = load i64, i64* %64, align 8, !dbg !2600
  %66 = sub nsw i64 %62, %65, !dbg !2601
  store i64 %66, i64* %4, align 8, !dbg !2602
  br label %67, !dbg !2603

67:                                               ; preds = %39, %16, %1
  %68 = load i64, i64* %4, align 8, !dbg !2604
  %69 = icmp sle i64 %68, 0, !dbg !2606
  br i1 %69, label %70, label %74, !dbg !2607

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !2608
  store i32 -1, i32* %71, align 4, !dbg !2608
  %72 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !2608
  store i8 0, i8* %72, align 4, !dbg !2608
  %73 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !2608
  store i8 0, i8* %73, align 1, !dbg !2608
  br label %117, !dbg !2609

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !2610, metadata !DIExpression()), !dbg !2611
  %75 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2612
  %76 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %75, i32 0, i32 0, !dbg !2613
  %77 = load i8*, i8** %76, align 8, !dbg !2613
  %78 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2614
  %79 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %78, i32 0, i32 4, !dbg !2615
  %80 = load i64, i64* %79, align 8, !dbg !2615
  %81 = getelementptr inbounds i8, i8* %77, i64 %80, !dbg !2616
  %82 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2617
  %83 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %82, i32 0, i32 0, !dbg !2618
  %84 = load i8*, i8** %83, align 8, !dbg !2618
  %85 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2619
  %86 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %85, i32 0, i32 3, !dbg !2620
  %87 = load i64, i64* %86, align 8, !dbg !2620
  %88 = getelementptr inbounds i8, i8* %84, i64 %87, !dbg !2621
  %89 = call i64 @mcel_scan(i8* noundef %81, i8* noundef %88), !dbg !2622
  %90 = bitcast %struct.mcel_t* %6 to i64*, !dbg !2622
  store i64 %89, i64* %90, align 4, !dbg !2622
  %91 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !2623
  %92 = load i8, i8* %91, align 4, !dbg !2623
  %93 = icmp ne i8 %92, 0, !dbg !2625
  br i1 %93, label %102, label %94, !dbg !2626

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 2, !dbg !2627
  %96 = load i8, i8* %95, align 1, !dbg !2627
  %97 = zext i8 %96 to i64, !dbg !2628
  %98 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2629
  %99 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %98, i32 0, i32 4, !dbg !2630
  %100 = load i64, i64* %99, align 8, !dbg !2631
  %101 = add nsw i64 %100, %97, !dbg !2631
  store i64 %101, i64* %99, align 8, !dbg !2631
  br label %114, !dbg !2629

102:                                              ; preds = %74
  %103 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2632
  %104 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %103, i32 0, i32 0, !dbg !2634
  %105 = load i8*, i8** %104, align 8, !dbg !2634
  %106 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !2635
  %107 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %106, i32 0, i32 4, !dbg !2636
  %108 = load i64, i64* %107, align 8, !dbg !2637
  %109 = add nsw i64 %108, 1, !dbg !2637
  store i64 %109, i64* %107, align 8, !dbg !2637
  %110 = getelementptr inbounds i8, i8* %105, i64 %108, !dbg !2632
  %111 = load i8, i8* %110, align 1, !dbg !2632
  %112 = zext i8 %111 to i32, !dbg !2638
  %113 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !2639
  store i32 %112, i32* %113, align 4, !dbg !2640
  br label %114

114:                                              ; preds = %102, %94
  %115 = bitcast %struct.mcel_t* %2 to i8*, !dbg !2641
  %116 = bitcast %struct.mcel_t* %6 to i8*, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false), !dbg !2641
  br label %117, !dbg !2642

117:                                              ; preds = %114, %70
  %118 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2643
  %119 = load i64, i64* %118, align 4, !dbg !2643
  ret i64 %119, !dbg !2643
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %0, i64 %1) #4 !dbg !2644 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mbbuf_t*, align 8
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %4, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2649, metadata !DIExpression()), !dbg !2650
  %6 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2651
  %7 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %6, i32 0, i32 4, !dbg !2653
  %8 = load i64, i64* %7, align 8, !dbg !2653
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2654
  %10 = load i8, i8* %9, align 1, !dbg !2654
  %11 = zext i8 %10 to i64, !dbg !2655
  %12 = icmp slt i64 %8, %11, !dbg !2656
  br i1 %12, label %13, label %14, !dbg !2657

13:                                               ; preds = %2
  unreachable, !dbg !2658

14:                                               ; preds = %2
  %15 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2659
  %16 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %15, i32 0, i32 0, !dbg !2660
  %17 = load i8*, i8** %16, align 8, !dbg !2660
  %18 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !2661
  %19 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %18, i32 0, i32 4, !dbg !2662
  %20 = load i64, i64* %19, align 8, !dbg !2662
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2663
  %22 = load i8, i8* %21, align 1, !dbg !2663
  %23 = zext i8 %22 to i64, !dbg !2664
  %24 = sub nsw i64 %20, %23, !dbg !2665
  %25 = getelementptr inbounds i8, i8* %17, i64 %24, !dbg !2666
  ret i8* %25, !dbg !2667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_ch(i32 noundef %0, i64 noundef %1) #4 !dbg !2668 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2677, metadata !DIExpression()), !dbg !2678
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2679, metadata !DIExpression()), !dbg !2680
  %6 = load i64, i64* %5, align 8, !dbg !2681
  %7 = icmp ult i64 0, %6, !dbg !2681
  br i1 %7, label %8, label %9, !dbg !2681

8:                                                ; preds = %2
  br label %11, !dbg !2681

9:                                                ; preds = %2
  unreachable, !dbg !2681

10:                                               ; No predecessors!
  br label %11, !dbg !2681

11:                                               ; preds = %10, %8
  %12 = load i64, i64* %5, align 8, !dbg !2682
  %13 = icmp ule i64 %12, 4, !dbg !2682
  br i1 %13, label %14, label %15, !dbg !2682

14:                                               ; preds = %11
  br label %17, !dbg !2682

15:                                               ; preds = %11
  unreachable, !dbg !2682

16:                                               ; No predecessors!
  br label %17, !dbg !2682

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %4, align 4, !dbg !2683
  %19 = icmp ule i32 %18, 1114111, !dbg !2683
  br i1 %19, label %20, label %21, !dbg !2683

20:                                               ; preds = %17
  br label %23, !dbg !2683

21:                                               ; preds = %17
  unreachable, !dbg !2683

22:                                               ; No predecessors!
  br label %23, !dbg !2683

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2684
  %25 = load i32, i32* %4, align 4, !dbg !2685
  store i32 %25, i32* %24, align 4, !dbg !2684
  %26 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2684
  store i8 0, i8* %26, align 4, !dbg !2684
  %27 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2684
  %28 = load i64, i64* %5, align 8, !dbg !2686
  %29 = trunc i64 %28 to i8, !dbg !2686
  store i8 %29, i8* %27, align 1, !dbg !2684
  %30 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2687
  %31 = load i64, i64* %30, align 4, !dbg !2687
  ret i64 %31, !dbg !2687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_err(i8 noundef %0) #4 !dbg !2688 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2691, metadata !DIExpression()), !dbg !2692
  %4 = load i8, i8* %3, align 1, !dbg !2693
  %5 = zext i8 %4 to i32, !dbg !2693
  %6 = icmp sle i32 128, %5, !dbg !2693
  br i1 %6, label %7, label %8, !dbg !2693

7:                                                ; preds = %1
  br label %10, !dbg !2693

8:                                                ; preds = %1
  unreachable, !dbg !2693

9:                                                ; No predecessors!
  br label %10, !dbg !2693

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !2694
  store i32 0, i32* %11, align 4, !dbg !2694
  %12 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !2694
  %13 = load i8, i8* %3, align 1, !dbg !2695
  store i8 %13, i8* %12, align 4, !dbg !2694
  %14 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !2694
  store i8 1, i8* %14, align 1, !dbg !2694
  %15 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2696
  %16 = load i64, i64* %15, align 4, !dbg !2696
  ret i64 %16, !dbg !2696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_cmp(i64 %0, i64 %1) #4 !dbg !2697 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %8, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2704, metadata !DIExpression()), !dbg !2705
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2706
  %10 = load i32, i32* %9, align 4, !dbg !2706
  store i32 %10, i32* %5, align 4, !dbg !2705
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2707, metadata !DIExpression()), !dbg !2708
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !2709
  %12 = load i32, i32* %11, align 4, !dbg !2709
  store i32 %12, i32* %6, align 4, !dbg !2708
  %13 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2710
  %14 = load i8, i8* %13, align 4, !dbg !2710
  %15 = zext i8 %14 to i32, !dbg !2711
  %16 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 1, !dbg !2712
  %17 = load i8, i8* %16, align 4, !dbg !2712
  %18 = zext i8 %17 to i32, !dbg !2713
  %19 = sub nsw i32 %15, %18, !dbg !2714
  %20 = mul nsw i32 %19, 16384, !dbg !2715
  %21 = load i32, i32* %5, align 4, !dbg !2716
  %22 = load i32, i32* %6, align 4, !dbg !2717
  %23 = sub nsw i32 %21, %22, !dbg !2718
  %24 = add nsw i32 %20, %23, !dbg !2719
  ret i32 %24, !dbg !2720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_eq(i64 %0, i64 %1) #4 !dbg !2721 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %6, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2724, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2726, metadata !DIExpression()), !dbg !2727
  %7 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2728
  %8 = load i64, i64* %7, align 4, !dbg !2728
  %9 = bitcast %struct.mcel_t* %4 to i64*, !dbg !2728
  %10 = load i64, i64* %9, align 4, !dbg !2728
  %11 = call i32 @mcel_cmp(i64 %8, i64 %10), !dbg !2728
  %12 = icmp ne i32 %11, 0, !dbg !2729
  %13 = xor i1 %12, true, !dbg !2729
  ret i1 %13, !dbg !2730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_tocmp(i32 (i32)* noundef %0, i64 %1, i64 %2) #4 !dbg !2731 {
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
  call void @llvm.dbg.declare(metadata i32 (i32)** %7, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %5, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2743, metadata !DIExpression()), !dbg !2744
  %13 = bitcast %struct.mcel_t* %5 to i64*, !dbg !2745
  %14 = load i64, i64* %13, align 4, !dbg !2745
  %15 = bitcast %struct.mcel_t* %6 to i64*, !dbg !2745
  %16 = load i64, i64* %15, align 4, !dbg !2745
  %17 = call i32 @mcel_cmp(i64 %14, i64 %16), !dbg !2745
  store i32 %17, i32* %8, align 4, !dbg !2744
  %18 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 1, !dbg !2746
  %19 = load i8, i8* %18, align 4, !dbg !2746
  %20 = zext i8 %19 to i32, !dbg !2746
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !2746
  %22 = load i8, i8* %21, align 4, !dbg !2746
  %23 = zext i8 %22 to i32, !dbg !2746
  %24 = sub nsw i32 %20, %23, !dbg !2746
  %25 = load i32, i32* %8, align 4, !dbg !2746
  %26 = icmp ne i32 %25, 0, !dbg !2746
  %27 = xor i1 %26, true, !dbg !2746
  %28 = zext i1 %27 to i32, !dbg !2746
  %29 = or i32 %24, %28, !dbg !2746
  %30 = sext i32 %29 to i64, !dbg !2746
  %31 = icmp ne i64 %30, 0, !dbg !2746
  br i1 %31, label %32, label %34, !dbg !2748

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4, !dbg !2749
  store i32 %33, i32* %4, align 4, !dbg !2750
  br label %46, !dbg !2750

34:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2751, metadata !DIExpression()), !dbg !2752
  %35 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2753
  %36 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 0, !dbg !2754
  %37 = load i32, i32* %36, align 4, !dbg !2754
  %38 = call i32 %35(i32 noundef %37), !dbg !2753
  store i32 %38, i32* %9, align 4, !dbg !2752
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2755, metadata !DIExpression()), !dbg !2756
  %39 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2757
  %40 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !2758
  %41 = load i32, i32* %40, align 4, !dbg !2758
  %42 = call i32 %39(i32 noundef %41), !dbg !2757
  store i32 %42, i32* %10, align 4, !dbg !2756
  %43 = load i32, i32* %9, align 4, !dbg !2759
  %44 = load i32, i32* %10, align 4, !dbg !2760
  %45 = sub nsw i32 %43, %44, !dbg !2761
  store i32 %45, i32* %4, align 4, !dbg !2762
  br label %46, !dbg !2762

46:                                               ; preds = %34, %32
  %47 = load i32, i32* %4, align 4, !dbg !2763
  ret i32 %47, !dbg !2763
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_isbasic(i8 noundef %0) #4 !dbg !2764 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2767, metadata !DIExpression()), !dbg !2768
  %3 = load i8, i8* %2, align 1, !dbg !2769
  %4 = zext i8 %3 to i32, !dbg !2769
  %5 = icmp sle i32 0, %4, !dbg !2769
  br i1 %5, label %6, label %10, !dbg !2769

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !2769
  %8 = zext i8 %7 to i32, !dbg !2769
  %9 = icmp slt i32 %8, 128, !dbg !2769
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !2770
  %12 = zext i1 %11 to i32, !dbg !2769
  %13 = sext i32 %12 to i64, !dbg !2769
  %14 = icmp ne i64 %13, 0, !dbg !2769
  ret i1 %14, !dbg !2771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scan(i8* noundef %0, i8* noundef %1) #4 !dbg !2772 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2775, metadata !DIExpression()), !dbg !2776
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2779, metadata !DIExpression()), !dbg !2780
  %10 = load i8*, i8** %4, align 8, !dbg !2781
  %11 = load i8, i8* %10, align 1, !dbg !2782
  store i8 %11, i8* %6, align 1, !dbg !2780
  %12 = load i8, i8* %6, align 1, !dbg !2783
  %13 = call i1 @mcel_isbasic(i8 noundef %12), !dbg !2785
  br i1 %13, label %14, label %19, !dbg !2786

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1, !dbg !2787
  %16 = zext i8 %15 to i32, !dbg !2787
  %17 = call i64 @mcel_ch(i32 noundef %16, i64 noundef 1), !dbg !2788
  %18 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2788
  store i64 %17, i64* %18, align 4, !dbg !2788
  br label %42, !dbg !2789

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !2790, metadata !DIExpression()), !dbg !2801
  %20 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %7, i32 0, i32 0, !dbg !2802
  store i32 0, i32* %20, align 4, !dbg !2803
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2806, metadata !DIExpression()), !dbg !2807
  %21 = load i8*, i8** %4, align 8, !dbg !2808
  %22 = load i8*, i8** %5, align 8, !dbg !2809
  %23 = load i8*, i8** %4, align 8, !dbg !2810
  %24 = ptrtoint i8* %22 to i64, !dbg !2811
  %25 = ptrtoint i8* %23 to i64, !dbg !2811
  %26 = sub i64 %24, %25, !dbg !2811
  %27 = call i64 @mbrtoc32(i32* noundef %8, i8* noundef %21, i64 noundef %26, %struct.__mbstate_t* noundef %7) #18, !dbg !2812
  store i64 %27, i64* %9, align 8, !dbg !2807
  %28 = load i64, i64* %9, align 8, !dbg !2813
  %29 = icmp ult i64 9223372036854775807, %28, !dbg !2813
  %30 = zext i1 %29 to i32, !dbg !2813
  %31 = sext i32 %30 to i64, !dbg !2813
  %32 = icmp ne i64 %31, 0, !dbg !2813
  br i1 %32, label %33, label %37, !dbg !2815

33:                                               ; preds = %19
  %34 = load i8, i8* %6, align 1, !dbg !2816
  %35 = call i64 @mcel_err(i8 noundef %34), !dbg !2817
  %36 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2817
  store i64 %35, i64* %36, align 4, !dbg !2817
  br label %42, !dbg !2818

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4, !dbg !2819
  %39 = load i64, i64* %9, align 8, !dbg !2820
  %40 = call i64 @mcel_ch(i32 noundef %38, i64 noundef %39), !dbg !2821
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2821
  store i64 %40, i64* %41, align 4, !dbg !2821
  br label %42, !dbg !2822

42:                                               ; preds = %37, %33, %14
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2823
  %44 = load i64, i64* %43, align 4, !dbg !2823
  ret i64 %44, !dbg !2823
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scant(i8* noundef %0, i8 noundef %1) #4 !dbg !2824 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2827, metadata !DIExpression()), !dbg !2828
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2829, metadata !DIExpression()), !dbg !2830
  %8 = load i8*, i8** %4, align 8, !dbg !2831
  %9 = load i8, i8* %8, align 1, !dbg !2833
  %10 = call i1 @mcel_isbasic(i8 noundef %9), !dbg !2834
  br i1 %10, label %11, label %17, !dbg !2835

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !2836
  %13 = load i8, i8* %12, align 1, !dbg !2837
  %14 = zext i8 %13 to i32, !dbg !2837
  %15 = call i64 @mcel_ch(i32 noundef %14, i64 noundef 1), !dbg !2838
  %16 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2838
  store i64 %15, i64* %16, align 4, !dbg !2838
  br label %42, !dbg !2839

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2840, metadata !DIExpression()), !dbg !2841
  %18 = load i8*, i8** %4, align 8, !dbg !2842
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !2843
  store i8* %19, i8** %6, align 8, !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2844, metadata !DIExpression()), !dbg !2846
  store i32 0, i32* %7, align 4, !dbg !2846
  br label %20, !dbg !2847

20:                                               ; preds = %34, %17
  %21 = load i32, i32* %7, align 4, !dbg !2848
  %22 = icmp slt i32 %21, 3, !dbg !2850
  br i1 %22, label %23, label %37, !dbg !2851

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8, !dbg !2852
  %25 = load i8, i8* %24, align 1, !dbg !2853
  %26 = zext i8 %25 to i32, !dbg !2853
  %27 = load i8, i8* %5, align 1, !dbg !2854
  %28 = zext i8 %27 to i32, !dbg !2854
  %29 = icmp ne i32 %26, %28, !dbg !2855
  %30 = zext i1 %29 to i32, !dbg !2855
  %31 = load i8*, i8** %6, align 8, !dbg !2856
  %32 = sext i32 %30 to i64, !dbg !2856
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !2856
  store i8* %33, i8** %6, align 8, !dbg !2856
  br label %34, !dbg !2857

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4, !dbg !2858
  %36 = add nsw i32 %35, 1, !dbg !2858
  store i32 %36, i32* %7, align 4, !dbg !2858
  br label %20, !dbg !2859, !llvm.loop !2860

37:                                               ; preds = %20
  %38 = load i8*, i8** %4, align 8, !dbg !2862
  %39 = load i8*, i8** %6, align 8, !dbg !2863
  %40 = call i64 @mcel_scan(i8* noundef %38, i8* noundef %39), !dbg !2864
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2864
  store i64 %40, i64* %41, align 4, !dbg !2864
  br label %42, !dbg !2865

42:                                               ; preds = %37, %11
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2866
  %44 = load i64, i64* %43, align 4, !dbg !2866
  ret i64 %44, !dbg !2866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scanz(i8* noundef %0) #4 !dbg !2867 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2870, metadata !DIExpression()), !dbg !2871
  %4 = load i8*, i8** %3, align 8, !dbg !2872
  %5 = call i64 @mcel_scant(i8* noundef %4, i8 noundef 0), !dbg !2873
  %6 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2873
  store i64 %5, i64* %6, align 4, !dbg !2873
  %7 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2874
  %8 = load i64, i64* %7, align 4, !dbg !2874
  ret i64 %8, !dbg !2874
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !2875 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  %5 = load i8*, i8** %2, align 8, !dbg !2880
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !2881
  store i8* %6, i8** %3, align 8, !dbg !2879
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2882, metadata !DIExpression()), !dbg !2883
  %7 = load i8*, i8** %3, align 8, !dbg !2884
  %8 = icmp ne i8* %7, null, !dbg !2884
  br i1 %8, label %9, label %12, !dbg !2884

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !2885
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !2886
  br label %14, !dbg !2884

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !2887
  br label %14, !dbg !2884

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !2884
  store i8* %15, i8** %4, align 8, !dbg !2883
  %16 = load i8*, i8** %4, align 8, !dbg !2888
  %17 = load i8*, i8** %2, align 8, !dbg !2890
  %18 = ptrtoint i8* %16 to i64, !dbg !2891
  %19 = ptrtoint i8* %17 to i64, !dbg !2891
  %20 = sub i64 %18, %19, !dbg !2891
  %21 = icmp sle i64 7, %20, !dbg !2892
  br i1 %21, label %22, label %36, !dbg !2893

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !2894
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !2895
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i64 0, i64 0), i64 noundef 7), !dbg !2896
  br i1 %25, label %26, label %36, !dbg !2897

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !2898
  store i8* %27, i8** %2, align 8, !dbg !2900
  %28 = load i8*, i8** %4, align 8, !dbg !2901
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.164, i64 0, i64 0), i64 noundef 3) #20, !dbg !2903
  %30 = icmp eq i32 %29, 0, !dbg !2904
  br i1 %30, label %31, label %35, !dbg !2905

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !2906
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !2906
  store i8* %33, i8** %4, align 8, !dbg !2906
  %34 = load i8*, i8** %4, align 8, !dbg !2908
  store i8* %34, i8** %2, align 8, !dbg !2909
  br label %35, !dbg !2910

35:                                               ; preds = %31, %26
  br label %36, !dbg !2911

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !2912
  store i8* %37, i8** @program_name, align 8, !dbg !2913
  %38 = load i8*, i8** %2, align 8, !dbg !2914
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !2915
  %39 = load i8*, i8** %4, align 8, !dbg !2916
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !246 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2919, metadata !DIExpression()), !dbg !2920
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2923, metadata !DIExpression()), !dbg !2924
  %9 = load i8*, i8** %4, align 8, !dbg !2925
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !2926
  store i8* %10, i8** %6, align 8, !dbg !2924
  %11 = load i8*, i8** %6, align 8, !dbg !2927
  %12 = load i8*, i8** %4, align 8, !dbg !2929
  %13 = icmp ne i8* %11, %12, !dbg !2930
  br i1 %13, label %14, label %16, !dbg !2931

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2932
  store i8* %15, i8** %3, align 8, !dbg !2933
  br label %26, !dbg !2933

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2936, metadata !DIExpression()), !dbg !2947
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2948
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !2949
  %18 = icmp eq i64 %17, 2, !dbg !2951
  br i1 %18, label %19, label %24, !dbg !2952

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2953
  %21 = icmp eq i32 %20, 2047, !dbg !2954
  br i1 %21, label %22, label %24, !dbg !2955

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !2956
  store i8* %23, i8** %3, align 8, !dbg !2957
  br label %26, !dbg !2957

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !2958
  store i8* %25, i8** %3, align 8, !dbg !2959
  br label %26, !dbg !2959

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !2960
  ret i8* %27, !dbg !2960
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !2961 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2965, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2967, metadata !DIExpression()), !dbg !2968
  %5 = call i32* @__errno_location() #21, !dbg !2969
  %6 = load i32, i32* %5, align 4, !dbg !2969
  store i32 %6, i32* %3, align 4, !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2970, metadata !DIExpression()), !dbg !2971
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2972
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2972
  br i1 %8, label %9, label %11, !dbg !2972

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2973
  br label %12, !dbg !2972

11:                                               ; preds = %1
  br label %12, !dbg !2972

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2972
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2972
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !2974
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2974
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2971
  %17 = load i32, i32* %3, align 4, !dbg !2975
  %18 = call i32* @__errno_location() #21, !dbg !2976
  store i32 %17, i32* %18, align 4, !dbg !2977
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2978
  ret %struct.quoting_options* %19, !dbg !2979
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !2980 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2985, metadata !DIExpression()), !dbg !2986
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2987
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2987
  br i1 %4, label %5, label %7, !dbg !2987

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2988
  br label %8, !dbg !2987

7:                                                ; preds = %1
  br label %8, !dbg !2987

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2987
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2989
  %11 = load i32, i32* %10, align 8, !dbg !2989
  ret i32 %11, !dbg !2990
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2991 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2994, metadata !DIExpression()), !dbg !2995
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2996, metadata !DIExpression()), !dbg !2997
  %5 = load i32, i32* %4, align 4, !dbg !2998
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2999
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2999
  br i1 %7, label %8, label %10, !dbg !2999

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3000
  br label %11, !dbg !2999

10:                                               ; preds = %2
  br label %11, !dbg !2999

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2999
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !3001
  store i32 %5, i32* %13, align 8, !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !3004 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !3007, metadata !DIExpression()), !dbg !3008
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3013, metadata !DIExpression()), !dbg !3014
  %11 = load i8, i8* %5, align 1, !dbg !3015
  store i8 %11, i8* %7, align 1, !dbg !3014
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3016, metadata !DIExpression()), !dbg !3018
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3019
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !3019
  br i1 %13, label %14, label %16, !dbg !3019

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3020
  br label %17, !dbg !3019

16:                                               ; preds = %3
  br label %17, !dbg !3019

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !3019
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !3021
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !3022
  %21 = load i8, i8* %7, align 1, !dbg !3023
  %22 = zext i8 %21 to i64, !dbg !3023
  %23 = udiv i64 %22, 32, !dbg !3024
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !3025
  store i32* %24, i32** %8, align 8, !dbg !3018
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3026, metadata !DIExpression()), !dbg !3027
  %25 = load i8, i8* %7, align 1, !dbg !3028
  %26 = zext i8 %25 to i64, !dbg !3028
  %27 = urem i64 %26, 32, !dbg !3029
  %28 = trunc i64 %27 to i32, !dbg !3028
  store i32 %28, i32* %9, align 4, !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3030, metadata !DIExpression()), !dbg !3031
  %29 = load i32*, i32** %8, align 8, !dbg !3032
  %30 = load i32, i32* %29, align 4, !dbg !3033
  %31 = load i32, i32* %9, align 4, !dbg !3034
  %32 = lshr i32 %30, %31, !dbg !3035
  %33 = and i32 %32, 1, !dbg !3036
  store i32 %33, i32* %10, align 4, !dbg !3031
  %34 = load i32, i32* %6, align 4, !dbg !3037
  %35 = and i32 %34, 1, !dbg !3038
  %36 = load i32, i32* %10, align 4, !dbg !3039
  %37 = xor i32 %35, %36, !dbg !3040
  %38 = load i32, i32* %9, align 4, !dbg !3041
  %39 = shl i32 %37, %38, !dbg !3042
  %40 = load i32*, i32** %8, align 8, !dbg !3043
  %41 = load i32, i32* %40, align 4, !dbg !3044
  %42 = xor i32 %41, %39, !dbg !3044
  store i32 %42, i32* %40, align 4, !dbg !3044
  %43 = load i32, i32* %10, align 4, !dbg !3045
  ret i32 %43, !dbg !3046
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !3047 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !3050, metadata !DIExpression()), !dbg !3051
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3052, metadata !DIExpression()), !dbg !3053
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3054
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !3054
  br i1 %7, label %9, label %8, !dbg !3056

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !3057
  br label %9, !dbg !3058

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3059, metadata !DIExpression()), !dbg !3060
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3061
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !3062
  %12 = load i32, i32* %11, align 4, !dbg !3062
  store i32 %12, i32* %5, align 4, !dbg !3060
  %13 = load i32, i32* %4, align 4, !dbg !3063
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !3064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !3065
  store i32 %13, i32* %15, align 4, !dbg !3066
  %16 = load i32, i32* %5, align 4, !dbg !3067
  ret i32 %16, !dbg !3068
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3069 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !3072, metadata !DIExpression()), !dbg !3073
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3076, metadata !DIExpression()), !dbg !3077
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3078
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !3078
  br i1 %8, label %10, label %9, !dbg !3080

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !3081
  br label %10, !dbg !3082

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3083
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !3084
  store i32 10, i32* %12, align 8, !dbg !3085
  %13 = load i8*, i8** %5, align 8, !dbg !3086
  %14 = icmp ne i8* %13, null, !dbg !3086
  br i1 %14, label %15, label %18, !dbg !3088

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !3089
  %17 = icmp ne i8* %16, null, !dbg !3089
  br i1 %17, label %19, label %18, !dbg !3090

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !3091
  unreachable, !dbg !3091

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !3092
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3093
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !3094
  store i8* %20, i8** %22, align 8, !dbg !3095
  %23 = load i8*, i8** %6, align 8, !dbg !3096
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !3097
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !3098
  store i8* %23, i8** %25, align 8, !dbg !3099
  ret void, !dbg !3100
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !3101 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3108, metadata !DIExpression()), !dbg !3109
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3110, metadata !DIExpression()), !dbg !3111
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !3114, metadata !DIExpression()), !dbg !3115
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !3116
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3116
  br i1 %15, label %16, label %18, !dbg !3116

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !3117
  br label %19, !dbg !3116

18:                                               ; preds = %5
  br label %19, !dbg !3116

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3116
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !3115
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3118, metadata !DIExpression()), !dbg !3119
  %21 = call i32* @__errno_location() #21, !dbg !3120
  %22 = load i32, i32* %21, align 4, !dbg !3120
  store i32 %22, i32* %12, align 4, !dbg !3119
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3121, metadata !DIExpression()), !dbg !3122
  %23 = load i8*, i8** %6, align 8, !dbg !3123
  %24 = load i64, i64* %7, align 8, !dbg !3124
  %25 = load i8*, i8** %8, align 8, !dbg !3125
  %26 = load i64, i64* %9, align 8, !dbg !3126
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3127
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !3128
  %29 = load i32, i32* %28, align 8, !dbg !3128
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3129
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !3130
  %32 = load i32, i32* %31, align 4, !dbg !3130
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3131
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !3132
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !3131
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3133
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !3134
  %38 = load i8*, i8** %37, align 8, !dbg !3134
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !3135
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !3136
  %41 = load i8*, i8** %40, align 8, !dbg !3136
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !3137
  store i64 %42, i64* %13, align 8, !dbg !3122
  %43 = load i32, i32* %12, align 4, !dbg !3138
  %44 = call i32* @__errno_location() #21, !dbg !3139
  store i32 %43, i32* %44, align 4, !dbg !3140
  %45 = load i64, i64* %13, align 8, !dbg !3141
  ret i64 %45, !dbg !3142
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !3143 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3154, metadata !DIExpression()), !dbg !3155
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3156, metadata !DIExpression()), !dbg !3157
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3158, metadata !DIExpression()), !dbg !3159
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3166, metadata !DIExpression()), !dbg !3167
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !3168
  %45 = icmp eq i64 %44, 1, !dbg !3169
  %46 = zext i1 %45 to i8, !dbg !3167
  store i8 %46, i8* %20, align 1, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3170, metadata !DIExpression()), !dbg !3171
  store i64 0, i64* %21, align 8, !dbg !3171
  call void @llvm.dbg.declare(metadata i64* %22, metadata !3172, metadata !DIExpression()), !dbg !3173
  store i64 0, i64* %22, align 8, !dbg !3173
  call void @llvm.dbg.declare(metadata i8** %23, metadata !3174, metadata !DIExpression()), !dbg !3175
  store i8* null, i8** %23, align 8, !dbg !3175
  call void @llvm.dbg.declare(metadata i64* %24, metadata !3176, metadata !DIExpression()), !dbg !3177
  store i64 0, i64* %24, align 8, !dbg !3177
  call void @llvm.dbg.declare(metadata i8* %25, metadata !3178, metadata !DIExpression()), !dbg !3179
  store i8 0, i8* %25, align 1, !dbg !3179
  call void @llvm.dbg.declare(metadata i8* %26, metadata !3180, metadata !DIExpression()), !dbg !3181
  %47 = load i32, i32* %16, align 4, !dbg !3182
  %48 = and i32 %47, 2, !dbg !3183
  %49 = icmp ne i32 %48, 0, !dbg !3184
  %50 = zext i1 %49 to i8, !dbg !3181
  store i8 %50, i8* %26, align 1, !dbg !3181
  call void @llvm.dbg.declare(metadata i8* %27, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i8 0, i8* %27, align 1, !dbg !3186
  call void @llvm.dbg.declare(metadata i8* %28, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i8 1, i8* %28, align 1, !dbg !3188
  br label %51, !dbg !3189

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !3190), !dbg !3191
  call void @llvm.dbg.declare(metadata i8* %29, metadata !3192, metadata !DIExpression()), !dbg !3193
  store i8 0, i8* %29, align 1, !dbg !3193
  %52 = load i32, i32* %15, align 4, !dbg !3194
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
  ], !dbg !3195

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !3196
  store i8 1, i8* %26, align 1, !dbg !3198
  br label %54, !dbg !3199

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !3200
  %56 = trunc i8 %55 to i1, !dbg !3200
  br i1 %56, label %70, label %57, !dbg !3202

57:                                               ; preds = %54
  br label %58, !dbg !3203

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !3204
  %60 = load i64, i64* %12, align 8, !dbg !3204
  %61 = icmp ult i64 %59, %60, !dbg !3204
  br i1 %61, label %62, label %66, !dbg !3207

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !3204
  %64 = load i64, i64* %21, align 8, !dbg !3204
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !3204
  store i8 34, i8* %65, align 1, !dbg !3204
  br label %66, !dbg !3204

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !3207
  %68 = add i64 %67, 1, !dbg !3207
  store i64 %68, i64* %21, align 8, !dbg !3207
  br label %69, !dbg !3207

69:                                               ; preds = %66
  br label %70, !dbg !3207

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !3208
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.177, i64 0, i64 0), i8** %23, align 8, !dbg !3209
  store i64 1, i64* %24, align 8, !dbg !3210
  br label %138, !dbg !3211

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !3212
  store i8 0, i8* %26, align 1, !dbg !3213
  br label %138, !dbg !3214

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !3215
  %74 = icmp ne i32 %73, 10, !dbg !3218
  br i1 %74, label %75, label %80, !dbg !3219

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !3220
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.178, i64 0, i64 0), i32 noundef %76), !dbg !3222
  store i8* %77, i8** %18, align 8, !dbg !3223
  %78 = load i32, i32* %15, align 4, !dbg !3224
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.179, i64 0, i64 0), i32 noundef %78), !dbg !3225
  store i8* %79, i8** %19, align 8, !dbg !3226
  br label %80, !dbg !3227

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !3228
  %82 = trunc i8 %81 to i1, !dbg !3228
  br i1 %82, label %108, label %83, !dbg !3230

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !3231, metadata !DIExpression()), !dbg !3233
  %84 = load i8*, i8** %18, align 8, !dbg !3234
  store i8* %84, i8** %30, align 8, !dbg !3233
  br label %85, !dbg !3235

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !3236
  %87 = load i8, i8* %86, align 1, !dbg !3238
  %88 = icmp ne i8 %87, 0, !dbg !3239
  br i1 %88, label %89, label %107, !dbg !3239

89:                                               ; preds = %85
  br label %90, !dbg !3240

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !3241
  %92 = load i64, i64* %12, align 8, !dbg !3241
  %93 = icmp ult i64 %91, %92, !dbg !3241
  br i1 %93, label %94, label %100, !dbg !3244

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !3241
  %96 = load i8, i8* %95, align 1, !dbg !3241
  %97 = load i8*, i8** %11, align 8, !dbg !3241
  %98 = load i64, i64* %21, align 8, !dbg !3241
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3241
  store i8 %96, i8* %99, align 1, !dbg !3241
  br label %100, !dbg !3241

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !3244
  %102 = add i64 %101, 1, !dbg !3244
  store i64 %102, i64* %21, align 8, !dbg !3244
  br label %103, !dbg !3244

103:                                              ; preds = %100
  br label %104, !dbg !3244

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !3245
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !3245
  store i8* %106, i8** %30, align 8, !dbg !3245
  br label %85, !dbg !3246, !llvm.loop !3247

107:                                              ; preds = %85
  br label %108, !dbg !3248

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !3249
  %109 = load i8*, i8** %19, align 8, !dbg !3250
  store i8* %109, i8** %23, align 8, !dbg !3251
  %110 = load i8*, i8** %23, align 8, !dbg !3252
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !3253
  store i64 %111, i64* %24, align 8, !dbg !3254
  br label %138, !dbg !3255

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !3256
  br label %113, !dbg !3257

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !3258
  br label %114, !dbg !3259

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !3260
  %116 = trunc i8 %115 to i1, !dbg !3260
  br i1 %116, label %118, label %117, !dbg !3262

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !3263
  br label %118, !dbg !3264

118:                                              ; preds = %117, %114
  br label %119, !dbg !3260

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !3265
  %120 = load i8, i8* %26, align 1, !dbg !3266
  %121 = trunc i8 %120 to i1, !dbg !3266
  br i1 %121, label %135, label %122, !dbg !3268

122:                                              ; preds = %119
  br label %123, !dbg !3269

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !3270
  %125 = load i64, i64* %12, align 8, !dbg !3270
  %126 = icmp ult i64 %124, %125, !dbg !3270
  br i1 %126, label %127, label %131, !dbg !3273

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !3270
  %129 = load i64, i64* %21, align 8, !dbg !3270
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !3270
  store i8 39, i8* %130, align 1, !dbg !3270
  br label %131, !dbg !3270

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !3273
  %133 = add i64 %132, 1, !dbg !3273
  store i64 %133, i64* %21, align 8, !dbg !3273
  br label %134, !dbg !3273

134:                                              ; preds = %131
  br label %135, !dbg !3273

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.179, i64 0, i64 0), i8** %23, align 8, !dbg !3274
  store i64 1, i64* %24, align 8, !dbg !3275
  br label %138, !dbg !3276

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !3277
  br label %138, !dbg !3278

137:                                              ; preds = %51
  call void @abort() #19, !dbg !3279
  unreachable, !dbg !3279

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !3280, metadata !DIExpression()), !dbg !3282
  store i64 0, i64* %31, align 8, !dbg !3282
  br label %139, !dbg !3283

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !3284
  %141 = icmp eq i64 %140, -1, !dbg !3286
  br i1 %141, label %142, label %150, !dbg !3284

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !3287
  %144 = load i64, i64* %31, align 8, !dbg !3288
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !3287
  %146 = load i8, i8* %145, align 1, !dbg !3287
  %147 = zext i8 %146 to i32, !dbg !3287
  %148 = icmp eq i32 %147, 0, !dbg !3289
  %149 = zext i1 %148 to i32, !dbg !3289
  br label %155, !dbg !3284

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !3290
  %152 = load i64, i64* %14, align 8, !dbg !3291
  %153 = icmp eq i64 %151, %152, !dbg !3292
  %154 = zext i1 %153 to i32, !dbg !3292
  br label %155, !dbg !3284

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !3284
  %157 = icmp ne i32 %156, 0, !dbg !3293
  %158 = xor i1 %157, true, !dbg !3293
  br i1 %158, label %159, label %996, !dbg !3294

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !3295, metadata !DIExpression()), !dbg !3297
  store i8 0, i8* %32, align 1, !dbg !3297
  call void @llvm.dbg.declare(metadata i8* %33, metadata !3298, metadata !DIExpression()), !dbg !3299
  store i8 0, i8* %33, align 1, !dbg !3299
  call void @llvm.dbg.declare(metadata i8* %34, metadata !3300, metadata !DIExpression()), !dbg !3301
  store i8 0, i8* %34, align 1, !dbg !3301
  %160 = load i8, i8* %25, align 1, !dbg !3302
  %161 = trunc i8 %160 to i1, !dbg !3302
  br i1 %161, label %162, label %197, !dbg !3304

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !3305
  %164 = icmp ne i32 %163, 2, !dbg !3306
  br i1 %164, label %165, label %197, !dbg !3307

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !3308
  %167 = icmp ne i64 %166, 0, !dbg !3308
  br i1 %167, label %168, label %197, !dbg !3309

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !3310
  %170 = load i64, i64* %24, align 8, !dbg !3311
  %171 = add i64 %169, %170, !dbg !3312
  %172 = load i64, i64* %14, align 8, !dbg !3313
  %173 = icmp eq i64 %172, -1, !dbg !3314
  br i1 %173, label %174, label %180, !dbg !3315

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !3316
  %176 = icmp ult i64 1, %175, !dbg !3317
  br i1 %176, label %177, label %180, !dbg !3313

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !3318
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !3319
  store i64 %179, i64* %14, align 8, !dbg !3320
  br label %182, !dbg !3313

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !3321
  br label %182, !dbg !3313

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !3313
  %184 = icmp ule i64 %171, %183, !dbg !3322
  br i1 %184, label %185, label %197, !dbg !3323

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !3324
  %187 = load i64, i64* %31, align 8, !dbg !3325
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !3326
  %189 = load i8*, i8** %23, align 8, !dbg !3327
  %190 = load i64, i64* %24, align 8, !dbg !3328
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !3329
  br i1 %191, label %192, label %197, !dbg !3330

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !3331
  %194 = trunc i8 %193 to i1, !dbg !3331
  br i1 %194, label %195, label %196, !dbg !3334

195:                                              ; preds = %192
  br label %1078, !dbg !3335

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !3336
  br label %197, !dbg !3337

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !3338, metadata !DIExpression()), !dbg !3339
  %198 = load i8*, i8** %13, align 8, !dbg !3340
  %199 = load i64, i64* %31, align 8, !dbg !3341
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !3340
  %201 = load i8, i8* %200, align 1, !dbg !3340
  store i8 %201, i8* %35, align 1, !dbg !3339
  %202 = load i8, i8* %35, align 1, !dbg !3342
  %203 = zext i8 %202 to i32, !dbg !3342
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
  ], !dbg !3343

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !3344
  %206 = trunc i8 %205 to i1, !dbg !3344
  br i1 %206, label %207, label %318, !dbg !3347

207:                                              ; preds = %204
  br label %208, !dbg !3348

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !3350
  %210 = trunc i8 %209 to i1, !dbg !3350
  br i1 %210, label %211, label %212, !dbg !3353

211:                                              ; preds = %208
  br label %1078, !dbg !3350

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !3353
  %213 = load i32, i32* %15, align 4, !dbg !3354
  %214 = icmp eq i32 %213, 2, !dbg !3354
  br i1 %214, label %215, label %255, !dbg !3354

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !3354
  %217 = trunc i8 %216 to i1, !dbg !3354
  br i1 %217, label %255, label %218, !dbg !3353

218:                                              ; preds = %215
  br label %219, !dbg !3356

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !3358
  %221 = load i64, i64* %12, align 8, !dbg !3358
  %222 = icmp ult i64 %220, %221, !dbg !3358
  br i1 %222, label %223, label %227, !dbg !3361

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !3358
  %225 = load i64, i64* %21, align 8, !dbg !3358
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !3358
  store i8 39, i8* %226, align 1, !dbg !3358
  br label %227, !dbg !3358

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !3361
  %229 = add i64 %228, 1, !dbg !3361
  store i64 %229, i64* %21, align 8, !dbg !3361
  br label %230, !dbg !3361

230:                                              ; preds = %227
  br label %231, !dbg !3356

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !3362
  %233 = load i64, i64* %12, align 8, !dbg !3362
  %234 = icmp ult i64 %232, %233, !dbg !3362
  br i1 %234, label %235, label %239, !dbg !3365

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !3362
  %237 = load i64, i64* %21, align 8, !dbg !3362
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !3362
  store i8 36, i8* %238, align 1, !dbg !3362
  br label %239, !dbg !3362

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !3365
  %241 = add i64 %240, 1, !dbg !3365
  store i64 %241, i64* %21, align 8, !dbg !3365
  br label %242, !dbg !3365

242:                                              ; preds = %239
  br label %243, !dbg !3356

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !3366
  %245 = load i64, i64* %12, align 8, !dbg !3366
  %246 = icmp ult i64 %244, %245, !dbg !3366
  br i1 %246, label %247, label %251, !dbg !3369

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !3366
  %249 = load i64, i64* %21, align 8, !dbg !3366
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !3366
  store i8 39, i8* %250, align 1, !dbg !3366
  br label %251, !dbg !3366

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !3369
  %253 = add i64 %252, 1, !dbg !3369
  store i64 %253, i64* %21, align 8, !dbg !3369
  br label %254, !dbg !3369

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !3356
  br label %255, !dbg !3356

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !3353

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !3370
  %258 = load i64, i64* %12, align 8, !dbg !3370
  %259 = icmp ult i64 %257, %258, !dbg !3370
  br i1 %259, label %260, label %264, !dbg !3373

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !3370
  %262 = load i64, i64* %21, align 8, !dbg !3370
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !3370
  store i8 92, i8* %263, align 1, !dbg !3370
  br label %264, !dbg !3370

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !3373
  %266 = add i64 %265, 1, !dbg !3373
  store i64 %266, i64* %21, align 8, !dbg !3373
  br label %267, !dbg !3373

267:                                              ; preds = %264
  br label %268, !dbg !3353

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !3374
  %270 = icmp ne i32 %269, 2, !dbg !3376
  br i1 %270, label %271, label %317, !dbg !3377

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !3378
  %273 = add i64 %272, 1, !dbg !3379
  %274 = load i64, i64* %14, align 8, !dbg !3380
  %275 = icmp ult i64 %273, %274, !dbg !3381
  br i1 %275, label %276, label %317, !dbg !3382

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !3383
  %278 = load i64, i64* %31, align 8, !dbg !3384
  %279 = add i64 %278, 1, !dbg !3385
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !3383
  %281 = load i8, i8* %280, align 1, !dbg !3383
  %282 = zext i8 %281 to i32, !dbg !3383
  %283 = icmp sle i32 48, %282, !dbg !3386
  br i1 %283, label %284, label %317, !dbg !3387

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !3388
  %286 = load i64, i64* %31, align 8, !dbg !3389
  %287 = add i64 %286, 1, !dbg !3390
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !3388
  %289 = load i8, i8* %288, align 1, !dbg !3388
  %290 = zext i8 %289 to i32, !dbg !3388
  %291 = icmp sle i32 %290, 57, !dbg !3391
  br i1 %291, label %292, label %317, !dbg !3392

292:                                              ; preds = %284
  br label %293, !dbg !3393

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !3395
  %295 = load i64, i64* %12, align 8, !dbg !3395
  %296 = icmp ult i64 %294, %295, !dbg !3395
  br i1 %296, label %297, label %301, !dbg !3398

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !3395
  %299 = load i64, i64* %21, align 8, !dbg !3395
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !3395
  store i8 48, i8* %300, align 1, !dbg !3395
  br label %301, !dbg !3395

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !3398
  %303 = add i64 %302, 1, !dbg !3398
  store i64 %303, i64* %21, align 8, !dbg !3398
  br label %304, !dbg !3398

304:                                              ; preds = %301
  br label %305, !dbg !3399

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !3400
  %307 = load i64, i64* %12, align 8, !dbg !3400
  %308 = icmp ult i64 %306, %307, !dbg !3400
  br i1 %308, label %309, label %313, !dbg !3403

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !3400
  %311 = load i64, i64* %21, align 8, !dbg !3400
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !3400
  store i8 48, i8* %312, align 1, !dbg !3400
  br label %313, !dbg !3400

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !3403
  %315 = add i64 %314, 1, !dbg !3403
  store i64 %315, i64* %21, align 8, !dbg !3403
  br label %316, !dbg !3403

316:                                              ; preds = %313
  br label %317, !dbg !3404

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !3405
  br label %324, !dbg !3406

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !3407
  %320 = and i32 %319, 1, !dbg !3409
  %321 = icmp ne i32 %320, 0, !dbg !3409
  br i1 %321, label %322, label %323, !dbg !3410

322:                                              ; preds = %318
  br label %993, !dbg !3411

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !3412

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !3413
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !3414

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !3415
  %329 = trunc i8 %328 to i1, !dbg !3415
  br i1 %329, label %330, label %331, !dbg !3418

330:                                              ; preds = %327
  br label %1078, !dbg !3419

331:                                              ; preds = %327
  br label %418, !dbg !3420

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !3421
  %334 = and i32 %333, 4, !dbg !3423
  %335 = icmp ne i32 %334, 0, !dbg !3423
  br i1 %335, label %336, label %417, !dbg !3424

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !3425
  %338 = add i64 %337, 2, !dbg !3426
  %339 = load i64, i64* %14, align 8, !dbg !3427
  %340 = icmp ult i64 %338, %339, !dbg !3428
  br i1 %340, label %341, label %417, !dbg !3429

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !3430
  %343 = load i64, i64* %31, align 8, !dbg !3431
  %344 = add i64 %343, 1, !dbg !3432
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !3430
  %346 = load i8, i8* %345, align 1, !dbg !3430
  %347 = zext i8 %346 to i32, !dbg !3430
  %348 = icmp eq i32 %347, 63, !dbg !3433
  br i1 %348, label %349, label %417, !dbg !3434

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !3435
  %351 = load i64, i64* %31, align 8, !dbg !3436
  %352 = add i64 %351, 2, !dbg !3437
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !3435
  %354 = load i8, i8* %353, align 1, !dbg !3435
  %355 = zext i8 %354 to i32, !dbg !3435
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
  ], !dbg !3438

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !3439
  %358 = trunc i8 %357 to i1, !dbg !3439
  br i1 %358, label %359, label %360, !dbg !3442

359:                                              ; preds = %356
  br label %1078, !dbg !3443

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !3444
  %362 = load i64, i64* %31, align 8, !dbg !3445
  %363 = add i64 %362, 2, !dbg !3446
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !3444
  %365 = load i8, i8* %364, align 1, !dbg !3444
  store i8 %365, i8* %35, align 1, !dbg !3447
  %366 = load i64, i64* %31, align 8, !dbg !3448
  %367 = add i64 %366, 2, !dbg !3448
  store i64 %367, i64* %31, align 8, !dbg !3448
  br label %368, !dbg !3449

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !3450
  %370 = load i64, i64* %12, align 8, !dbg !3450
  %371 = icmp ult i64 %369, %370, !dbg !3450
  br i1 %371, label %372, label %376, !dbg !3453

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !3450
  %374 = load i64, i64* %21, align 8, !dbg !3450
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !3450
  store i8 63, i8* %375, align 1, !dbg !3450
  br label %376, !dbg !3450

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !3453
  %378 = add i64 %377, 1, !dbg !3453
  store i64 %378, i64* %21, align 8, !dbg !3453
  br label %379, !dbg !3453

379:                                              ; preds = %376
  br label %380, !dbg !3454

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !3455
  %382 = load i64, i64* %12, align 8, !dbg !3455
  %383 = icmp ult i64 %381, %382, !dbg !3455
  br i1 %383, label %384, label %388, !dbg !3458

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !3455
  %386 = load i64, i64* %21, align 8, !dbg !3455
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !3455
  store i8 34, i8* %387, align 1, !dbg !3455
  br label %388, !dbg !3455

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !3458
  %390 = add i64 %389, 1, !dbg !3458
  store i64 %390, i64* %21, align 8, !dbg !3458
  br label %391, !dbg !3458

391:                                              ; preds = %388
  br label %392, !dbg !3459

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !3460
  %394 = load i64, i64* %12, align 8, !dbg !3460
  %395 = icmp ult i64 %393, %394, !dbg !3460
  br i1 %395, label %396, label %400, !dbg !3463

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !3460
  %398 = load i64, i64* %21, align 8, !dbg !3460
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !3460
  store i8 34, i8* %399, align 1, !dbg !3460
  br label %400, !dbg !3460

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !3463
  %402 = add i64 %401, 1, !dbg !3463
  store i64 %402, i64* %21, align 8, !dbg !3463
  br label %403, !dbg !3463

403:                                              ; preds = %400
  br label %404, !dbg !3464

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !3465
  %406 = load i64, i64* %12, align 8, !dbg !3465
  %407 = icmp ult i64 %405, %406, !dbg !3465
  br i1 %407, label %408, label %412, !dbg !3468

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !3465
  %410 = load i64, i64* %21, align 8, !dbg !3465
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !3465
  store i8 63, i8* %411, align 1, !dbg !3465
  br label %412, !dbg !3465

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !3468
  %414 = add i64 %413, 1, !dbg !3468
  store i64 %414, i64* %21, align 8, !dbg !3468
  br label %415, !dbg !3468

415:                                              ; preds = %412
  br label %416, !dbg !3469

416:                                              ; preds = %349, %415
  br label %417, !dbg !3470

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !3471

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !3472

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !3473
  br label %454, !dbg !3475

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !3476
  br label %454, !dbg !3477

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !3478
  br label %454, !dbg !3479

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !3480
  br label %446, !dbg !3481

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !3482
  br label %446, !dbg !3483

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !3484
  br label %446, !dbg !3485

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !3486
  br label %454, !dbg !3487

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !3488
  store i8 %427, i8* %36, align 1, !dbg !3489
  %428 = load i32, i32* %15, align 4, !dbg !3490
  %429 = icmp eq i32 %428, 2, !dbg !3492
  br i1 %429, label %430, label %435, !dbg !3493

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !3494
  %432 = trunc i8 %431 to i1, !dbg !3494
  br i1 %432, label %433, label %434, !dbg !3497

433:                                              ; preds = %430
  br label %1078, !dbg !3498

434:                                              ; preds = %430
  br label %942, !dbg !3499

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !3500
  %437 = trunc i8 %436 to i1, !dbg !3500
  br i1 %437, label %438, label %445, !dbg !3502

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !3503
  %440 = trunc i8 %439 to i1, !dbg !3503
  br i1 %440, label %441, label %445, !dbg !3504

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !3505
  %443 = icmp ne i64 %442, 0, !dbg !3505
  br i1 %443, label %444, label %445, !dbg !3506

444:                                              ; preds = %441
  br label %942, !dbg !3507

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !3505

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !3508), !dbg !3509
  %447 = load i32, i32* %15, align 4, !dbg !3510
  %448 = icmp eq i32 %447, 2, !dbg !3512
  br i1 %448, label %449, label %453, !dbg !3513

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !3514
  %451 = trunc i8 %450 to i1, !dbg !3514
  br i1 %451, label %452, label %453, !dbg !3515

452:                                              ; preds = %449
  br label %1078, !dbg !3516

453:                                              ; preds = %449, %446
  br label %454, !dbg !3514

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !3517), !dbg !3518
  %455 = load i8, i8* %25, align 1, !dbg !3519
  %456 = trunc i8 %455 to i1, !dbg !3519
  br i1 %456, label %457, label %459, !dbg !3521

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !3522
  store i8 %458, i8* %35, align 1, !dbg !3524
  br label %880, !dbg !3525

459:                                              ; preds = %454
  br label %849, !dbg !3526

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !3527
  %462 = icmp eq i64 %461, -1, !dbg !3529
  br i1 %462, label %463, label %469, !dbg !3530

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !3531
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !3531
  %466 = load i8, i8* %465, align 1, !dbg !3531
  %467 = zext i8 %466 to i32, !dbg !3531
  %468 = icmp eq i32 %467, 0, !dbg !3532
  br i1 %468, label %473, label %472, !dbg !3527

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !3533
  %471 = icmp eq i64 %470, 1, !dbg !3534
  br i1 %471, label %473, label %472, !dbg !3530

472:                                              ; preds = %469, %463
  br label %849, !dbg !3535

473:                                              ; preds = %469, %463
  br label %474, !dbg !3536

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !3537
  %476 = icmp ne i64 %475, 0, !dbg !3539
  br i1 %476, label %477, label %478, !dbg !3540

477:                                              ; preds = %474
  br label %849, !dbg !3541

478:                                              ; preds = %474
  br label %479, !dbg !3542

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !3543
  br label %480, !dbg !3544

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !3545
  %482 = icmp eq i32 %481, 2, !dbg !3547
  br i1 %482, label %483, label %487, !dbg !3548

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !3549
  %485 = trunc i8 %484 to i1, !dbg !3549
  br i1 %485, label %486, label %487, !dbg !3550

486:                                              ; preds = %483
  br label %1078, !dbg !3551

487:                                              ; preds = %483, %480
  br label %849, !dbg !3552

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !3553
  store i8 1, i8* %34, align 1, !dbg !3554
  %489 = load i32, i32* %15, align 4, !dbg !3555
  %490 = icmp eq i32 %489, 2, !dbg !3557
  br i1 %490, label %491, label %540, !dbg !3558

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !3559
  %493 = trunc i8 %492 to i1, !dbg !3559
  br i1 %493, label %494, label %495, !dbg !3562

494:                                              ; preds = %491
  br label %1078, !dbg !3563

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !3564
  %497 = icmp ne i64 %496, 0, !dbg !3564
  br i1 %497, label %498, label %503, !dbg !3566

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !3567
  %500 = icmp ne i64 %499, 0, !dbg !3567
  br i1 %500, label %503, label %501, !dbg !3568

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !3569
  store i64 %502, i64* %22, align 8, !dbg !3571
  store i64 0, i64* %12, align 8, !dbg !3572
  br label %503, !dbg !3573

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !3574

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !3575
  %506 = load i64, i64* %12, align 8, !dbg !3575
  %507 = icmp ult i64 %505, %506, !dbg !3575
  br i1 %507, label %508, label %512, !dbg !3578

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !3575
  %510 = load i64, i64* %21, align 8, !dbg !3575
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !3575
  store i8 39, i8* %511, align 1, !dbg !3575
  br label %512, !dbg !3575

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !3578
  %514 = add i64 %513, 1, !dbg !3578
  store i64 %514, i64* %21, align 8, !dbg !3578
  br label %515, !dbg !3578

515:                                              ; preds = %512
  br label %516, !dbg !3579

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !3580
  %518 = load i64, i64* %12, align 8, !dbg !3580
  %519 = icmp ult i64 %517, %518, !dbg !3580
  br i1 %519, label %520, label %524, !dbg !3583

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !3580
  %522 = load i64, i64* %21, align 8, !dbg !3580
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !3580
  store i8 92, i8* %523, align 1, !dbg !3580
  br label %524, !dbg !3580

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !3583
  %526 = add i64 %525, 1, !dbg !3583
  store i64 %526, i64* %21, align 8, !dbg !3583
  br label %527, !dbg !3583

527:                                              ; preds = %524
  br label %528, !dbg !3584

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !3585
  %530 = load i64, i64* %12, align 8, !dbg !3585
  %531 = icmp ult i64 %529, %530, !dbg !3585
  br i1 %531, label %532, label %536, !dbg !3588

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !3585
  %534 = load i64, i64* %21, align 8, !dbg !3585
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !3585
  store i8 39, i8* %535, align 1, !dbg !3585
  br label %536, !dbg !3585

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !3588
  %538 = add i64 %537, 1, !dbg !3588
  store i64 %538, i64* %21, align 8, !dbg !3588
  br label %539, !dbg !3588

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !3589
  br label %540, !dbg !3590

540:                                              ; preds = %539, %488
  br label %849, !dbg !3591

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !3592
  br label %849, !dbg !3593

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata i8* %38, metadata !3597, metadata !DIExpression()), !dbg !3598
  %543 = load i8, i8* %20, align 1, !dbg !3599
  %544 = trunc i8 %543 to i1, !dbg !3599
  br i1 %544, label %545, label %557, !dbg !3601

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !3602
  %546 = call i16** @__ctype_b_loc() #21, !dbg !3604
  %547 = load i16*, i16** %546, align 8, !dbg !3604
  %548 = load i8, i8* %35, align 1, !dbg !3604
  %549 = zext i8 %548 to i32, !dbg !3604
  %550 = sext i32 %549 to i64, !dbg !3604
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !3604
  %552 = load i16, i16* %551, align 2, !dbg !3604
  %553 = zext i16 %552 to i32, !dbg !3604
  %554 = and i32 %553, 16384, !dbg !3604
  %555 = icmp ne i32 %554, 0, !dbg !3605
  %556 = zext i1 %555 to i8, !dbg !3606
  store i8 %556, i8* %38, align 1, !dbg !3606
  br label %648, !dbg !3607

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !3608, metadata !DIExpression()), !dbg !3620
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !3621
  store i64 0, i64* %37, align 8, !dbg !3622
  store i8 1, i8* %38, align 1, !dbg !3623
  %558 = load i64, i64* %14, align 8, !dbg !3624
  %559 = icmp eq i64 %558, -1, !dbg !3626
  br i1 %559, label %560, label %563, !dbg !3627

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !3628
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !3629
  store i64 %562, i64* %14, align 8, !dbg !3630
  br label %563, !dbg !3631

563:                                              ; preds = %560, %557
  br label %564, !dbg !3632

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3633, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.declare(metadata i64* %41, metadata !3638, metadata !DIExpression()), !dbg !3639
  %565 = load i8*, i8** %13, align 8, !dbg !3640
  %566 = load i64, i64* %31, align 8, !dbg !3641
  %567 = load i64, i64* %37, align 8, !dbg !3642
  %568 = add i64 %566, %567, !dbg !3643
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !3640
  %570 = load i64, i64* %14, align 8, !dbg !3644
  %571 = load i64, i64* %31, align 8, !dbg !3645
  %572 = load i64, i64* %37, align 8, !dbg !3646
  %573 = add i64 %571, %572, !dbg !3647
  %574 = sub i64 %570, %573, !dbg !3648
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !3649
  store i64 %575, i64* %41, align 8, !dbg !3639
  %576 = load i64, i64* %41, align 8, !dbg !3650
  %577 = icmp eq i64 %576, 0, !dbg !3652
  br i1 %577, label %578, label %579, !dbg !3653

578:                                              ; preds = %564
  br label %647, !dbg !3654

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !3655
  %581 = icmp eq i64 %580, -1, !dbg !3657
  br i1 %581, label %582, label %583, !dbg !3658

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !3659
  br label %647, !dbg !3661

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !3662
  %585 = icmp eq i64 %584, -2, !dbg !3664
  br i1 %585, label %586, label %608, !dbg !3665

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !3666
  br label %587, !dbg !3668

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !3669
  %589 = load i64, i64* %37, align 8, !dbg !3670
  %590 = add i64 %588, %589, !dbg !3671
  %591 = load i64, i64* %14, align 8, !dbg !3672
  %592 = icmp ult i64 %590, %591, !dbg !3673
  br i1 %592, label %593, label %602, !dbg !3674

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !3675
  %595 = load i64, i64* %31, align 8, !dbg !3676
  %596 = load i64, i64* %37, align 8, !dbg !3677
  %597 = add i64 %595, %596, !dbg !3678
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !3675
  %599 = load i8, i8* %598, align 1, !dbg !3675
  %600 = zext i8 %599 to i32, !dbg !3675
  %601 = icmp ne i32 %600, 0, !dbg !3674
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !3679
  br i1 %603, label %604, label %607, !dbg !3668

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !3680
  %606 = add i64 %605, 1, !dbg !3680
  store i64 %606, i64* %37, align 8, !dbg !3680
  br label %587, !dbg !3668, !llvm.loop !3681

607:                                              ; preds = %602
  br label %647, !dbg !3682

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !3683
  %610 = trunc i8 %609 to i1, !dbg !3683
  br i1 %610, label %611, label %635, !dbg !3686

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !3687
  %613 = icmp eq i32 %612, 2, !dbg !3688
  br i1 %613, label %614, label %635, !dbg !3689

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !3690, metadata !DIExpression()), !dbg !3693
  store i64 1, i64* %42, align 8, !dbg !3693
  br label %615, !dbg !3694

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !3695
  %617 = load i64, i64* %41, align 8, !dbg !3697
  %618 = icmp ult i64 %616, %617, !dbg !3698
  br i1 %618, label %619, label %634, !dbg !3699

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !3700
  %621 = load i64, i64* %31, align 8, !dbg !3701
  %622 = load i64, i64* %37, align 8, !dbg !3702
  %623 = add i64 %621, %622, !dbg !3703
  %624 = load i64, i64* %42, align 8, !dbg !3704
  %625 = add i64 %623, %624, !dbg !3705
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !3700
  %627 = load i8, i8* %626, align 1, !dbg !3700
  %628 = zext i8 %627 to i32, !dbg !3700
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !3706

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !3707

630:                                              ; preds = %619
  br label %631, !dbg !3709

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !3710
  %633 = add i64 %632, 1, !dbg !3710
  store i64 %633, i64* %42, align 8, !dbg !3710
  br label %615, !dbg !3711, !llvm.loop !3712

634:                                              ; preds = %615
  br label %635, !dbg !3714

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !3715
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !3717
  %638 = icmp ne i32 %637, 0, !dbg !3717
  br i1 %638, label %640, label %639, !dbg !3718

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !3719
  br label %640, !dbg !3720

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !3721
  %642 = load i64, i64* %37, align 8, !dbg !3722
  %643 = add i64 %642, %641, !dbg !3722
  store i64 %643, i64* %37, align 8, !dbg !3722
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !3723

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !3724
  %650 = trunc i8 %649 to i1, !dbg !3724
  %651 = zext i1 %650 to i8, !dbg !3725
  store i8 %651, i8* %34, align 1, !dbg !3725
  %652 = load i64, i64* %37, align 8, !dbg !3726
  %653 = icmp ult i64 1, %652, !dbg !3728
  br i1 %653, label %660, label %654, !dbg !3729

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !3730
  %656 = trunc i8 %655 to i1, !dbg !3730
  br i1 %656, label %657, label %848, !dbg !3731

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !3732
  %659 = trunc i8 %658 to i1, !dbg !3732
  br i1 %659, label %848, label %660, !dbg !3733

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !3734, metadata !DIExpression()), !dbg !3736
  %661 = load i64, i64* %31, align 8, !dbg !3737
  %662 = load i64, i64* %37, align 8, !dbg !3738
  %663 = add i64 %661, %662, !dbg !3739
  store i64 %663, i64* %43, align 8, !dbg !3736
  br label %664, !dbg !3740

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !3741
  %666 = trunc i8 %665 to i1, !dbg !3741
  br i1 %666, label %667, label %772, !dbg !3746

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !3747
  %669 = trunc i8 %668 to i1, !dbg !3747
  br i1 %669, label %772, label %670, !dbg !3748

670:                                              ; preds = %667
  br label %671, !dbg !3749

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !3751
  %673 = trunc i8 %672 to i1, !dbg !3751
  br i1 %673, label %674, label %675, !dbg !3754

674:                                              ; preds = %671
  br label %1078, !dbg !3751

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !3754
  %676 = load i32, i32* %15, align 4, !dbg !3755
  %677 = icmp eq i32 %676, 2, !dbg !3755
  br i1 %677, label %678, label %718, !dbg !3755

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !3755
  %680 = trunc i8 %679 to i1, !dbg !3755
  br i1 %680, label %718, label %681, !dbg !3754

681:                                              ; preds = %678
  br label %682, !dbg !3757

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !3759
  %684 = load i64, i64* %12, align 8, !dbg !3759
  %685 = icmp ult i64 %683, %684, !dbg !3759
  br i1 %685, label %686, label %690, !dbg !3762

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !3759
  %688 = load i64, i64* %21, align 8, !dbg !3759
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !3759
  store i8 39, i8* %689, align 1, !dbg !3759
  br label %690, !dbg !3759

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !3762
  %692 = add i64 %691, 1, !dbg !3762
  store i64 %692, i64* %21, align 8, !dbg !3762
  br label %693, !dbg !3762

693:                                              ; preds = %690
  br label %694, !dbg !3757

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !3763
  %696 = load i64, i64* %12, align 8, !dbg !3763
  %697 = icmp ult i64 %695, %696, !dbg !3763
  br i1 %697, label %698, label %702, !dbg !3766

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !3763
  %700 = load i64, i64* %21, align 8, !dbg !3763
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !3763
  store i8 36, i8* %701, align 1, !dbg !3763
  br label %702, !dbg !3763

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !3766
  %704 = add i64 %703, 1, !dbg !3766
  store i64 %704, i64* %21, align 8, !dbg !3766
  br label %705, !dbg !3766

705:                                              ; preds = %702
  br label %706, !dbg !3757

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !3767
  %708 = load i64, i64* %12, align 8, !dbg !3767
  %709 = icmp ult i64 %707, %708, !dbg !3767
  br i1 %709, label %710, label %714, !dbg !3770

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !3767
  %712 = load i64, i64* %21, align 8, !dbg !3767
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !3767
  store i8 39, i8* %713, align 1, !dbg !3767
  br label %714, !dbg !3767

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !3770
  %716 = add i64 %715, 1, !dbg !3770
  store i64 %716, i64* %21, align 8, !dbg !3770
  br label %717, !dbg !3770

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !3757
  br label %718, !dbg !3757

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !3754

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !3771
  %721 = load i64, i64* %12, align 8, !dbg !3771
  %722 = icmp ult i64 %720, %721, !dbg !3771
  br i1 %722, label %723, label %727, !dbg !3774

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !3771
  %725 = load i64, i64* %21, align 8, !dbg !3771
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !3771
  store i8 92, i8* %726, align 1, !dbg !3771
  br label %727, !dbg !3771

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !3774
  %729 = add i64 %728, 1, !dbg !3774
  store i64 %729, i64* %21, align 8, !dbg !3774
  br label %730, !dbg !3774

730:                                              ; preds = %727
  br label %731, !dbg !3754

731:                                              ; preds = %730
  br label %732, !dbg !3775

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !3776
  %734 = load i64, i64* %12, align 8, !dbg !3776
  %735 = icmp ult i64 %733, %734, !dbg !3776
  br i1 %735, label %736, label %745, !dbg !3779

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !3776
  %738 = zext i8 %737 to i32, !dbg !3776
  %739 = ashr i32 %738, 6, !dbg !3776
  %740 = add nsw i32 48, %739, !dbg !3776
  %741 = trunc i32 %740 to i8, !dbg !3776
  %742 = load i8*, i8** %11, align 8, !dbg !3776
  %743 = load i64, i64* %21, align 8, !dbg !3776
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !3776
  store i8 %741, i8* %744, align 1, !dbg !3776
  br label %745, !dbg !3776

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !3779
  %747 = add i64 %746, 1, !dbg !3779
  store i64 %747, i64* %21, align 8, !dbg !3779
  br label %748, !dbg !3779

748:                                              ; preds = %745
  br label %749, !dbg !3780

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !3781
  %751 = load i64, i64* %12, align 8, !dbg !3781
  %752 = icmp ult i64 %750, %751, !dbg !3781
  br i1 %752, label %753, label %763, !dbg !3784

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !3781
  %755 = zext i8 %754 to i32, !dbg !3781
  %756 = ashr i32 %755, 3, !dbg !3781
  %757 = and i32 %756, 7, !dbg !3781
  %758 = add nsw i32 48, %757, !dbg !3781
  %759 = trunc i32 %758 to i8, !dbg !3781
  %760 = load i8*, i8** %11, align 8, !dbg !3781
  %761 = load i64, i64* %21, align 8, !dbg !3781
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !3781
  store i8 %759, i8* %762, align 1, !dbg !3781
  br label %763, !dbg !3781

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !3784
  %765 = add i64 %764, 1, !dbg !3784
  store i64 %765, i64* %21, align 8, !dbg !3784
  br label %766, !dbg !3784

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !3785
  %768 = zext i8 %767 to i32, !dbg !3785
  %769 = and i32 %768, 7, !dbg !3786
  %770 = add nsw i32 48, %769, !dbg !3787
  %771 = trunc i32 %770 to i8, !dbg !3788
  store i8 %771, i8* %35, align 1, !dbg !3789
  br label %789, !dbg !3790

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !3791
  %774 = trunc i8 %773 to i1, !dbg !3791
  br i1 %774, label %775, label %788, !dbg !3793

775:                                              ; preds = %772
  br label %776, !dbg !3794

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !3796
  %778 = load i64, i64* %12, align 8, !dbg !3796
  %779 = icmp ult i64 %777, %778, !dbg !3796
  br i1 %779, label %780, label %784, !dbg !3799

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !3796
  %782 = load i64, i64* %21, align 8, !dbg !3796
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !3796
  store i8 92, i8* %783, align 1, !dbg !3796
  br label %784, !dbg !3796

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !3799
  %786 = add i64 %785, 1, !dbg !3799
  store i64 %786, i64* %21, align 8, !dbg !3799
  br label %787, !dbg !3799

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !3800
  br label %788, !dbg !3801

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !3802
  %791 = load i64, i64* %31, align 8, !dbg !3804
  %792 = add i64 %791, 1, !dbg !3805
  %793 = icmp ule i64 %790, %792, !dbg !3806
  br i1 %793, label %794, label %795, !dbg !3807

794:                                              ; preds = %789
  br label %847, !dbg !3808

795:                                              ; preds = %789
  br label %796, !dbg !3809

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !3810
  %798 = trunc i8 %797 to i1, !dbg !3810
  br i1 %798, label %799, label %827, !dbg !3810

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !3810
  %801 = trunc i8 %800 to i1, !dbg !3810
  br i1 %801, label %827, label %802, !dbg !3813

802:                                              ; preds = %799
  br label %803, !dbg !3814

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !3816
  %805 = load i64, i64* %12, align 8, !dbg !3816
  %806 = icmp ult i64 %804, %805, !dbg !3816
  br i1 %806, label %807, label %811, !dbg !3819

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !3816
  %809 = load i64, i64* %21, align 8, !dbg !3816
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !3816
  store i8 39, i8* %810, align 1, !dbg !3816
  br label %811, !dbg !3816

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !3819
  %813 = add i64 %812, 1, !dbg !3819
  store i64 %813, i64* %21, align 8, !dbg !3819
  br label %814, !dbg !3819

814:                                              ; preds = %811
  br label %815, !dbg !3814

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !3820
  %817 = load i64, i64* %12, align 8, !dbg !3820
  %818 = icmp ult i64 %816, %817, !dbg !3820
  br i1 %818, label %819, label %823, !dbg !3823

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !3820
  %821 = load i64, i64* %21, align 8, !dbg !3820
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !3820
  store i8 39, i8* %822, align 1, !dbg !3820
  br label %823, !dbg !3820

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !3823
  %825 = add i64 %824, 1, !dbg !3823
  store i64 %825, i64* %21, align 8, !dbg !3823
  br label %826, !dbg !3823

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !3814
  br label %827, !dbg !3814

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !3813

828:                                              ; preds = %827
  br label %829, !dbg !3824

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !3825
  %831 = load i64, i64* %12, align 8, !dbg !3825
  %832 = icmp ult i64 %830, %831, !dbg !3825
  br i1 %832, label %833, label %838, !dbg !3828

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !3825
  %835 = load i8*, i8** %11, align 8, !dbg !3825
  %836 = load i64, i64* %21, align 8, !dbg !3825
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !3825
  store i8 %834, i8* %837, align 1, !dbg !3825
  br label %838, !dbg !3825

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !3828
  %840 = add i64 %839, 1, !dbg !3828
  store i64 %840, i64* %21, align 8, !dbg !3828
  br label %841, !dbg !3828

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !3829
  %843 = load i64, i64* %31, align 8, !dbg !3830
  %844 = add i64 %843, 1, !dbg !3830
  store i64 %844, i64* %31, align 8, !dbg !3830
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !3829
  %846 = load i8, i8* %845, align 1, !dbg !3829
  store i8 %846, i8* %35, align 1, !dbg !3831
  br label %664, !dbg !3832, !llvm.loop !3833

847:                                              ; preds = %794
  br label %942, !dbg !3836

848:                                              ; preds = %657, %654
  br label %849, !dbg !3837

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !3838
  %851 = trunc i8 %850 to i1, !dbg !3838
  br i1 %851, label %852, label %855, !dbg !3840

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !3841
  %854 = icmp ne i32 %853, 2, !dbg !3842
  br i1 %854, label %858, label %855, !dbg !3843

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !3844
  %857 = trunc i8 %856 to i1, !dbg !3844
  br i1 %857, label %858, label %875, !dbg !3845

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !3846
  %860 = icmp ne i32* %859, null, !dbg !3846
  br i1 %860, label %861, label %875, !dbg !3847

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !3848
  %863 = load i8, i8* %35, align 1, !dbg !3849
  %864 = zext i8 %863 to i64, !dbg !3849
  %865 = udiv i64 %864, 32, !dbg !3850
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !3848
  %867 = load i32, i32* %866, align 4, !dbg !3848
  %868 = load i8, i8* %35, align 1, !dbg !3851
  %869 = zext i8 %868 to i64, !dbg !3851
  %870 = urem i64 %869, 32, !dbg !3852
  %871 = trunc i64 %870 to i32, !dbg !3853
  %872 = lshr i32 %867, %871, !dbg !3853
  %873 = and i32 %872, 1, !dbg !3854
  %874 = icmp ne i32 %873, 0, !dbg !3854
  br i1 %874, label %879, label %875, !dbg !3855

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !3856
  %877 = trunc i8 %876 to i1, !dbg !3856
  br i1 %877, label %879, label %878, !dbg !3857

878:                                              ; preds = %875
  br label %942, !dbg !3858

879:                                              ; preds = %875, %861
  br label %880, !dbg !3856

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !3859), !dbg !3860
  br label %881, !dbg !3861

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !3862
  %883 = trunc i8 %882 to i1, !dbg !3862
  br i1 %883, label %884, label %885, !dbg !3865

884:                                              ; preds = %881
  br label %1078, !dbg !3862

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !3865
  %886 = load i32, i32* %15, align 4, !dbg !3866
  %887 = icmp eq i32 %886, 2, !dbg !3866
  br i1 %887, label %888, label %928, !dbg !3866

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !3866
  %890 = trunc i8 %889 to i1, !dbg !3866
  br i1 %890, label %928, label %891, !dbg !3865

891:                                              ; preds = %888
  br label %892, !dbg !3868

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !3870
  %894 = load i64, i64* %12, align 8, !dbg !3870
  %895 = icmp ult i64 %893, %894, !dbg !3870
  br i1 %895, label %896, label %900, !dbg !3873

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !3870
  %898 = load i64, i64* %21, align 8, !dbg !3870
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !3870
  store i8 39, i8* %899, align 1, !dbg !3870
  br label %900, !dbg !3870

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !3873
  %902 = add i64 %901, 1, !dbg !3873
  store i64 %902, i64* %21, align 8, !dbg !3873
  br label %903, !dbg !3873

903:                                              ; preds = %900
  br label %904, !dbg !3868

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !3874
  %906 = load i64, i64* %12, align 8, !dbg !3874
  %907 = icmp ult i64 %905, %906, !dbg !3874
  br i1 %907, label %908, label %912, !dbg !3877

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !3874
  %910 = load i64, i64* %21, align 8, !dbg !3874
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !3874
  store i8 36, i8* %911, align 1, !dbg !3874
  br label %912, !dbg !3874

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !3877
  %914 = add i64 %913, 1, !dbg !3877
  store i64 %914, i64* %21, align 8, !dbg !3877
  br label %915, !dbg !3877

915:                                              ; preds = %912
  br label %916, !dbg !3868

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !3878
  %918 = load i64, i64* %12, align 8, !dbg !3878
  %919 = icmp ult i64 %917, %918, !dbg !3878
  br i1 %919, label %920, label %924, !dbg !3881

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !3878
  %922 = load i64, i64* %21, align 8, !dbg !3878
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !3878
  store i8 39, i8* %923, align 1, !dbg !3878
  br label %924, !dbg !3878

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !3881
  %926 = add i64 %925, 1, !dbg !3881
  store i64 %926, i64* %21, align 8, !dbg !3881
  br label %927, !dbg !3881

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !3868
  br label %928, !dbg !3868

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !3865

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !3882
  %931 = load i64, i64* %12, align 8, !dbg !3882
  %932 = icmp ult i64 %930, %931, !dbg !3882
  br i1 %932, label %933, label %937, !dbg !3885

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !3882
  %935 = load i64, i64* %21, align 8, !dbg !3882
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !3882
  store i8 92, i8* %936, align 1, !dbg !3882
  br label %937, !dbg !3882

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !3885
  %939 = add i64 %938, 1, !dbg !3885
  store i64 %939, i64* %21, align 8, !dbg !3885
  br label %940, !dbg !3885

940:                                              ; preds = %937
  br label %941, !dbg !3865

941:                                              ; preds = %940
  br label %942, !dbg !3865

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !3886), !dbg !3887
  br label %943, !dbg !3888

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !3889
  %945 = trunc i8 %944 to i1, !dbg !3889
  br i1 %945, label %946, label %974, !dbg !3889

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !3889
  %948 = trunc i8 %947 to i1, !dbg !3889
  br i1 %948, label %974, label %949, !dbg !3892

949:                                              ; preds = %946
  br label %950, !dbg !3893

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !3895
  %952 = load i64, i64* %12, align 8, !dbg !3895
  %953 = icmp ult i64 %951, %952, !dbg !3895
  br i1 %953, label %954, label %958, !dbg !3898

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !3895
  %956 = load i64, i64* %21, align 8, !dbg !3895
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !3895
  store i8 39, i8* %957, align 1, !dbg !3895
  br label %958, !dbg !3895

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !3898
  %960 = add i64 %959, 1, !dbg !3898
  store i64 %960, i64* %21, align 8, !dbg !3898
  br label %961, !dbg !3898

961:                                              ; preds = %958
  br label %962, !dbg !3893

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !3899
  %964 = load i64, i64* %12, align 8, !dbg !3899
  %965 = icmp ult i64 %963, %964, !dbg !3899
  br i1 %965, label %966, label %970, !dbg !3902

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !3899
  %968 = load i64, i64* %21, align 8, !dbg !3899
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !3899
  store i8 39, i8* %969, align 1, !dbg !3899
  br label %970, !dbg !3899

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !3902
  %972 = add i64 %971, 1, !dbg !3902
  store i64 %972, i64* %21, align 8, !dbg !3902
  br label %973, !dbg !3902

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !3893
  br label %974, !dbg !3893

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !3892

975:                                              ; preds = %974
  br label %976, !dbg !3903

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !3904
  %978 = load i64, i64* %12, align 8, !dbg !3904
  %979 = icmp ult i64 %977, %978, !dbg !3904
  br i1 %979, label %980, label %985, !dbg !3907

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !3904
  %982 = load i8*, i8** %11, align 8, !dbg !3904
  %983 = load i64, i64* %21, align 8, !dbg !3904
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !3904
  store i8 %981, i8* %984, align 1, !dbg !3904
  br label %985, !dbg !3904

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !3907
  %987 = add i64 %986, 1, !dbg !3907
  store i64 %987, i64* %21, align 8, !dbg !3907
  br label %988, !dbg !3907

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !3908
  %990 = trunc i8 %989 to i1, !dbg !3908
  br i1 %990, label %992, label %991, !dbg !3910

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !3911
  br label %992, !dbg !3912

992:                                              ; preds = %991, %988
  br label %993, !dbg !3913

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !3914
  %995 = add i64 %994, 1, !dbg !3914
  store i64 %995, i64* %31, align 8, !dbg !3914
  br label %139, !dbg !3915, !llvm.loop !3916

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !3918
  %998 = icmp eq i64 %997, 0, !dbg !3920
  br i1 %998, label %999, label %1006, !dbg !3921

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !3922
  %1001 = icmp eq i32 %1000, 2, !dbg !3923
  br i1 %1001, label %1002, label %1006, !dbg !3924

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !3925
  %1004 = trunc i8 %1003 to i1, !dbg !3925
  br i1 %1004, label %1005, label %1006, !dbg !3926

1005:                                             ; preds = %1002
  br label %1078, !dbg !3927

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !3928
  %1008 = icmp eq i32 %1007, 2, !dbg !3930
  br i1 %1008, label %1009, label %1038, !dbg !3931

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !3932
  %1011 = trunc i8 %1010 to i1, !dbg !3932
  br i1 %1011, label %1038, label %1012, !dbg !3933

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !3934
  %1014 = trunc i8 %1013 to i1, !dbg !3934
  br i1 %1014, label %1015, label %1038, !dbg !3935

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !3936
  %1017 = trunc i8 %1016 to i1, !dbg !3936
  br i1 %1017, label %1018, label %1028, !dbg !3939

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !3940
  %1020 = load i64, i64* %22, align 8, !dbg !3941
  %1021 = load i8*, i8** %13, align 8, !dbg !3942
  %1022 = load i64, i64* %14, align 8, !dbg !3943
  %1023 = load i32, i32* %16, align 4, !dbg !3944
  %1024 = load i32*, i32** %17, align 8, !dbg !3945
  %1025 = load i8*, i8** %18, align 8, !dbg !3946
  %1026 = load i8*, i8** %19, align 8, !dbg !3947
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !3948
  store i64 %1027, i64* %10, align 8, !dbg !3949
  br label %1096, !dbg !3949

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !3950
  %1030 = icmp ne i64 %1029, 0, !dbg !3950
  br i1 %1030, label %1036, label %1031, !dbg !3952

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !3953
  %1033 = icmp ne i64 %1032, 0, !dbg !3953
  br i1 %1033, label %1034, label %1036, !dbg !3954

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !3955
  store i64 %1035, i64* %12, align 8, !dbg !3957
  store i64 0, i64* %21, align 8, !dbg !3958
  br label %51, !dbg !3959

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !3960

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !3961
  %1040 = icmp ne i8* %1039, null, !dbg !3961
  br i1 %1040, label %1041, label %1068, !dbg !3963

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !3964
  %1043 = trunc i8 %1042 to i1, !dbg !3964
  br i1 %1043, label %1068, label %1044, !dbg !3965

1044:                                             ; preds = %1041
  br label %1045, !dbg !3966

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !3967
  %1047 = load i8, i8* %1046, align 1, !dbg !3970
  %1048 = icmp ne i8 %1047, 0, !dbg !3971
  br i1 %1048, label %1049, label %1067, !dbg !3971

1049:                                             ; preds = %1045
  br label %1050, !dbg !3972

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !3973
  %1052 = load i64, i64* %12, align 8, !dbg !3973
  %1053 = icmp ult i64 %1051, %1052, !dbg !3973
  br i1 %1053, label %1054, label %1060, !dbg !3976

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !3973
  %1056 = load i8, i8* %1055, align 1, !dbg !3973
  %1057 = load i8*, i8** %11, align 8, !dbg !3973
  %1058 = load i64, i64* %21, align 8, !dbg !3973
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !3973
  store i8 %1056, i8* %1059, align 1, !dbg !3973
  br label %1060, !dbg !3973

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !3976
  %1062 = add i64 %1061, 1, !dbg !3976
  store i64 %1062, i64* %21, align 8, !dbg !3976
  br label %1063, !dbg !3976

1063:                                             ; preds = %1060
  br label %1064, !dbg !3976

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !3977
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !3977
  store i8* %1066, i8** %23, align 8, !dbg !3977
  br label %1045, !dbg !3978, !llvm.loop !3979

1067:                                             ; preds = %1045
  br label %1068, !dbg !3980

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !3981
  %1070 = load i64, i64* %12, align 8, !dbg !3983
  %1071 = icmp ult i64 %1069, %1070, !dbg !3984
  br i1 %1071, label %1072, label %1076, !dbg !3985

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !3986
  %1074 = load i64, i64* %21, align 8, !dbg !3987
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !3986
  store i8 0, i8* %1075, align 1, !dbg !3988
  br label %1076, !dbg !3986

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !3989
  store i64 %1077, i64* %10, align 8, !dbg !3990
  br label %1096, !dbg !3990

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !3991), !dbg !3992
  %1079 = load i32, i32* %15, align 4, !dbg !3993
  %1080 = icmp eq i32 %1079, 2, !dbg !3995
  br i1 %1080, label %1081, label %1085, !dbg !3996

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !3997
  %1083 = trunc i8 %1082 to i1, !dbg !3997
  br i1 %1083, label %1084, label %1085, !dbg !3998

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !3999
  br label %1085, !dbg !4000

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !4001
  %1087 = load i64, i64* %12, align 8, !dbg !4002
  %1088 = load i8*, i8** %13, align 8, !dbg !4003
  %1089 = load i64, i64* %14, align 8, !dbg !4004
  %1090 = load i32, i32* %15, align 4, !dbg !4005
  %1091 = load i32, i32* %16, align 4, !dbg !4006
  %1092 = and i32 %1091, -3, !dbg !4007
  %1093 = load i8*, i8** %18, align 8, !dbg !4008
  %1094 = load i8*, i8** %19, align 8, !dbg !4009
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !4010
  store i64 %1095, i64* %10, align 8, !dbg !4011
  br label %1096, !dbg !4011

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !4012
  ret i64 %1097, !dbg !4012
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !292 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4013, metadata !DIExpression()), !dbg !4014
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4017, metadata !DIExpression()), !dbg !4018
  %9 = load i8*, i8** %4, align 8, !dbg !4019
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.180, i64 0, i64 0), i8* noundef %9) #18, !dbg !4019
  store i8* %10, i8** %6, align 8, !dbg !4018
  %11 = load i8*, i8** %6, align 8, !dbg !4020
  %12 = load i8*, i8** %4, align 8, !dbg !4022
  %13 = icmp ne i8* %11, %12, !dbg !4023
  br i1 %13, label %14, label %16, !dbg !4024

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !4025
  store i8* %15, i8** %3, align 8, !dbg !4026
  br label %37, !dbg !4026

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !4031
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !4032
  %18 = icmp eq i64 %17, 3, !dbg !4034
  br i1 %18, label %19, label %32, !dbg !4035

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !4036
  %21 = icmp eq i32 %20, 8216, !dbg !4037
  br i1 %21, label %22, label %32, !dbg !4038

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !4039
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !4039
  %25 = load i8, i8* %24, align 1, !dbg !4039
  %26 = zext i8 %25 to i32, !dbg !4039
  %27 = icmp eq i32 %26, 39, !dbg !4040
  %28 = zext i1 %27 to i32, !dbg !4040
  %29 = sext i32 %28 to i64, !dbg !4041
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !4041
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !4041
  store i8* %31, i8** %3, align 8, !dbg !4042
  br label %37, !dbg !4042

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !4043
  %34 = icmp eq i32 %33, 9, !dbg !4044
  %35 = zext i1 %34 to i64, !dbg !4043
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.177, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.179, i64 0, i64 0), !dbg !4043
  store i8* %36, i8** %3, align 8, !dbg !4045
  br label %37, !dbg !4045

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !4046
  ret i8* %38, !dbg !4046
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !4047 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4050, metadata !DIExpression()), !dbg !4051
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4052, metadata !DIExpression()), !dbg !4053
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !4054, metadata !DIExpression()), !dbg !4055
  %7 = load i8*, i8** %4, align 8, !dbg !4056
  %8 = load i64, i64* %5, align 8, !dbg !4057
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !4058
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !4059
  ret i8* %10, !dbg !4060
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !4061 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4068, metadata !DIExpression()), !dbg !4069
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !4072, metadata !DIExpression()), !dbg !4073
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4074
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !4074
  br i1 %15, label %16, label %18, !dbg !4074

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4075
  br label %19, !dbg !4074

18:                                               ; preds = %4
  br label %19, !dbg !4074

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !4074
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !4073
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4076, metadata !DIExpression()), !dbg !4077
  %21 = call i32* @__errno_location() #21, !dbg !4078
  %22 = load i32, i32* %21, align 4, !dbg !4078
  store i32 %22, i32* %10, align 4, !dbg !4077
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4079, metadata !DIExpression()), !dbg !4080
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4081
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !4082
  %25 = load i32, i32* %24, align 4, !dbg !4082
  %26 = load i64*, i64** %7, align 8, !dbg !4083
  %27 = icmp ne i64* %26, null, !dbg !4083
  %28 = zext i1 %27 to i64, !dbg !4083
  %29 = select i1 %27, i32 0, i32 1, !dbg !4083
  %30 = or i32 %25, %29, !dbg !4084
  store i32 %30, i32* %11, align 4, !dbg !4080
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4085, metadata !DIExpression()), !dbg !4086
  %31 = load i8*, i8** %5, align 8, !dbg !4087
  %32 = load i64, i64* %6, align 8, !dbg !4088
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4089
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !4090
  %35 = load i32, i32* %34, align 8, !dbg !4090
  %36 = load i32, i32* %11, align 4, !dbg !4091
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4092
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !4093
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !4092
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4094
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !4095
  %42 = load i8*, i8** %41, align 8, !dbg !4095
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4096
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !4097
  %45 = load i8*, i8** %44, align 8, !dbg !4097
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !4098
  %47 = add i64 %46, 1, !dbg !4099
  store i64 %47, i64* %12, align 8, !dbg !4086
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4100, metadata !DIExpression()), !dbg !4101
  %48 = load i64, i64* %12, align 8, !dbg !4102
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !4103
  store i8* %49, i8** %13, align 8, !dbg !4101
  %50 = load i8*, i8** %13, align 8, !dbg !4104
  %51 = load i64, i64* %12, align 8, !dbg !4105
  %52 = load i8*, i8** %5, align 8, !dbg !4106
  %53 = load i64, i64* %6, align 8, !dbg !4107
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4108
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !4109
  %56 = load i32, i32* %55, align 8, !dbg !4109
  %57 = load i32, i32* %11, align 4, !dbg !4110
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4111
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !4112
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !4111
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4113
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !4114
  %63 = load i8*, i8** %62, align 8, !dbg !4114
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !4115
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !4116
  %66 = load i8*, i8** %65, align 8, !dbg !4116
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !4117
  %68 = load i32, i32* %10, align 4, !dbg !4118
  %69 = call i32* @__errno_location() #21, !dbg !4119
  store i32 %68, i32* %69, align 4, !dbg !4120
  %70 = load i64*, i64** %7, align 8, !dbg !4121
  %71 = icmp ne i64* %70, null, !dbg !4121
  br i1 %71, label %72, label %76, !dbg !4123

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !4124
  %74 = sub i64 %73, 1, !dbg !4125
  %75 = load i64*, i64** %7, align 8, !dbg !4126
  store i64 %74, i64* %75, align 8, !dbg !4127
  br label %76, !dbg !4128

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !4129
  ret i8* %77, !dbg !4130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !4131 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !4132, metadata !DIExpression()), !dbg !4133
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4134
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !4133
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4135, metadata !DIExpression()), !dbg !4137
  store i32 1, i32* %2, align 4, !dbg !4137
  br label %4, !dbg !4138

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !4139
  %6 = load i32, i32* @nslots, align 4, !dbg !4141
  %7 = icmp slt i32 %5, %6, !dbg !4142
  br i1 %7, label %8, label %18, !dbg !4143

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4144
  %10 = load i32, i32* %2, align 4, !dbg !4145
  %11 = sext i32 %10 to i64, !dbg !4144
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !4144
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !4146
  %14 = load i8*, i8** %13, align 8, !dbg !4146
  call void @free(i8* noundef %14) #18, !dbg !4147
  br label %15, !dbg !4147

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !4148
  %17 = add nsw i32 %16, 1, !dbg !4148
  store i32 %17, i32* %2, align 4, !dbg !4148
  br label %4, !dbg !4149, !llvm.loop !4150

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4152
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !4152
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !4154
  %22 = load i8*, i8** %21, align 8, !dbg !4154
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4155
  br i1 %23, label %24, label %29, !dbg !4156

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4157
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !4157
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !4159
  %28 = load i8*, i8** %27, align 8, !dbg !4159
  call void @free(i8* noundef %28) #18, !dbg !4160
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !4161
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !4162
  br label %29, !dbg !4163

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4164
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !4166
  br i1 %31, label %32, label %35, !dbg !4167

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !4168
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !4168
  call void @free(i8* noundef %34) #18, !dbg !4170
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4171
  br label %35, !dbg !4172

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !4173
  ret void, !dbg !4174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !4175 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4178, metadata !DIExpression()), !dbg !4179
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4180, metadata !DIExpression()), !dbg !4181
  %5 = load i32, i32* %3, align 4, !dbg !4182
  %6 = load i8*, i8** %4, align 8, !dbg !4183
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !4184
  ret i8* %7, !dbg !4185
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !4186 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4191, metadata !DIExpression()), !dbg !4192
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4193, metadata !DIExpression()), !dbg !4194
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4197, metadata !DIExpression()), !dbg !4198
  %18 = call i32* @__errno_location() #21, !dbg !4199
  %19 = load i32, i32* %18, align 4, !dbg !4199
  store i32 %19, i32* %9, align 4, !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !4200, metadata !DIExpression()), !dbg !4201
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4202
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !4201
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i32 2147483647, i32* %11, align 4, !dbg !4204
  %21 = load i32, i32* %5, align 4, !dbg !4205
  %22 = icmp sle i32 0, %21, !dbg !4207
  br i1 %22, label %23, label %27, !dbg !4208

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !4209
  %25 = load i32, i32* %11, align 4, !dbg !4210
  %26 = icmp slt i32 %24, %25, !dbg !4211
  br i1 %26, label %28, label %27, !dbg !4212

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !4213
  unreachable, !dbg !4213

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !4214
  %30 = load i32, i32* %5, align 4, !dbg !4216
  %31 = icmp sle i32 %29, %30, !dbg !4217
  br i1 %31, label %32, label %73, !dbg !4218

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !4219, metadata !DIExpression()), !dbg !4221
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4222
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !4223
  %35 = zext i1 %34 to i8, !dbg !4221
  store i8 %35, i8* %12, align 1, !dbg !4221
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4224, metadata !DIExpression()), !dbg !4225
  %36 = load i32, i32* @nslots, align 4, !dbg !4226
  %37 = sext i32 %36 to i64, !dbg !4226
  store i64 %37, i64* %13, align 8, !dbg !4225
  %38 = load i8, i8* %12, align 1, !dbg !4227
  %39 = trunc i8 %38 to i1, !dbg !4227
  br i1 %39, label %40, label %41, !dbg !4227

40:                                               ; preds = %32
  br label %43, !dbg !4227

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4228
  br label %43, !dbg !4227

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !4227
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !4227
  %46 = load i32, i32* %5, align 4, !dbg !4229
  %47 = load i32, i32* @nslots, align 4, !dbg !4230
  %48 = sub nsw i32 %46, %47, !dbg !4231
  %49 = add nsw i32 %48, 1, !dbg !4232
  %50 = sext i32 %49 to i64, !dbg !4229
  %51 = load i32, i32* %11, align 4, !dbg !4233
  %52 = sext i32 %51 to i64, !dbg !4233
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !4234
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !4234
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !4235
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !4236
  %55 = load i8, i8* %12, align 1, !dbg !4237
  %56 = trunc i8 %55 to i1, !dbg !4237
  br i1 %56, label %57, label %60, !dbg !4239

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4240
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !4241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4241
  br label %60, !dbg !4242

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4243
  %62 = load i32, i32* @nslots, align 4, !dbg !4244
  %63 = sext i32 %62 to i64, !dbg !4245
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !4245
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !4246
  %66 = load i64, i64* %13, align 8, !dbg !4247
  %67 = load i32, i32* @nslots, align 4, !dbg !4248
  %68 = sext i32 %67 to i64, !dbg !4248
  %69 = sub nsw i64 %66, %68, !dbg !4249
  %70 = mul i64 %69, 16, !dbg !4250
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !4246
  %71 = load i64, i64* %13, align 8, !dbg !4251
  %72 = trunc i64 %71 to i32, !dbg !4251
  store i32 %72, i32* @nslots, align 4, !dbg !4252
  br label %73, !dbg !4253

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4254, metadata !DIExpression()), !dbg !4256
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4257
  %75 = load i32, i32* %5, align 4, !dbg !4258
  %76 = sext i32 %75 to i64, !dbg !4257
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !4257
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !4259
  %79 = load i64, i64* %78, align 8, !dbg !4259
  store i64 %79, i64* %14, align 8, !dbg !4256
  call void @llvm.dbg.declare(metadata i8** %15, metadata !4260, metadata !DIExpression()), !dbg !4261
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4262
  %81 = load i32, i32* %5, align 4, !dbg !4263
  %82 = sext i32 %81 to i64, !dbg !4262
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !4262
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !4264
  %85 = load i8*, i8** %84, align 8, !dbg !4264
  store i8* %85, i8** %15, align 8, !dbg !4261
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4265, metadata !DIExpression()), !dbg !4266
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4267
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !4268
  %88 = load i32, i32* %87, align 4, !dbg !4268
  %89 = or i32 %88, 1, !dbg !4269
  store i32 %89, i32* %16, align 4, !dbg !4266
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4270, metadata !DIExpression()), !dbg !4271
  %90 = load i8*, i8** %15, align 8, !dbg !4272
  %91 = load i64, i64* %14, align 8, !dbg !4273
  %92 = load i8*, i8** %6, align 8, !dbg !4274
  %93 = load i64, i64* %7, align 8, !dbg !4275
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4276
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !4277
  %96 = load i32, i32* %95, align 8, !dbg !4277
  %97 = load i32, i32* %16, align 4, !dbg !4278
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4279
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !4280
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !4279
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4281
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !4282
  %103 = load i8*, i8** %102, align 8, !dbg !4282
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4283
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !4284
  %106 = load i8*, i8** %105, align 8, !dbg !4284
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !4285
  store i64 %107, i64* %17, align 8, !dbg !4271
  %108 = load i64, i64* %14, align 8, !dbg !4286
  %109 = load i64, i64* %17, align 8, !dbg !4288
  %110 = icmp ule i64 %108, %109, !dbg !4289
  br i1 %110, label %111, label %149, !dbg !4290

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !4291
  %113 = add i64 %112, 1, !dbg !4293
  store i64 %113, i64* %14, align 8, !dbg !4294
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4295
  %115 = load i32, i32* %5, align 4, !dbg !4296
  %116 = sext i32 %115 to i64, !dbg !4295
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !4295
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !4297
  store i64 %113, i64* %118, align 8, !dbg !4298
  %119 = load i8*, i8** %15, align 8, !dbg !4299
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4301
  br i1 %120, label %121, label %123, !dbg !4302

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !4303
  call void @free(i8* noundef %122) #18, !dbg !4304
  br label %123, !dbg !4304

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !4305
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !4306
  store i8* %125, i8** %15, align 8, !dbg !4307
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !4308
  %127 = load i32, i32* %5, align 4, !dbg !4309
  %128 = sext i32 %127 to i64, !dbg !4308
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !4308
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !4310
  store i8* %125, i8** %130, align 8, !dbg !4311
  %131 = load i8*, i8** %15, align 8, !dbg !4312
  %132 = load i64, i64* %14, align 8, !dbg !4313
  %133 = load i8*, i8** %6, align 8, !dbg !4314
  %134 = load i64, i64* %7, align 8, !dbg !4315
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4316
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !4317
  %137 = load i32, i32* %136, align 8, !dbg !4317
  %138 = load i32, i32* %16, align 4, !dbg !4318
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4319
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !4320
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !4319
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4321
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !4322
  %144 = load i8*, i8** %143, align 8, !dbg !4322
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !4323
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !4324
  %147 = load i8*, i8** %146, align 8, !dbg !4324
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !4325
  br label %149, !dbg !4326

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !4327
  %151 = call i32* @__errno_location() #21, !dbg !4328
  store i32 %150, i32* %151, align 4, !dbg !4329
  %152 = load i8*, i8** %15, align 8, !dbg !4330
  ret i8* %152, !dbg !4331
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4332 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4337, metadata !DIExpression()), !dbg !4338
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4339, metadata !DIExpression()), !dbg !4340
  %7 = load i32, i32* %4, align 4, !dbg !4341
  %8 = load i8*, i8** %5, align 8, !dbg !4342
  %9 = load i64, i64* %6, align 8, !dbg !4343
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !4344
  ret i8* %10, !dbg !4345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !4346 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4349, metadata !DIExpression()), !dbg !4350
  %3 = load i8*, i8** %2, align 8, !dbg !4351
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !4352
  ret i8* %4, !dbg !4353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4354 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4359, metadata !DIExpression()), !dbg !4360
  %5 = load i8*, i8** %3, align 8, !dbg !4361
  %6 = load i64, i64* %4, align 8, !dbg !4362
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !4363
  ret i8* %7, !dbg !4364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !4365 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4368, metadata !DIExpression()), !dbg !4369
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4374, metadata !DIExpression()), !dbg !4375
  %8 = load i32, i32* %5, align 4, !dbg !4376
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !4377
  %9 = load i32, i32* %4, align 4, !dbg !4378
  %10 = load i8*, i8** %6, align 8, !dbg !4379
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !4380
  ret i8* %11, !dbg !4381
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !4382 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !4387, metadata !DIExpression()), !dbg !4388
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !4388
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !4388
  %5 = load i32, i32* %3, align 4, !dbg !4389
  %6 = icmp eq i32 %5, 10, !dbg !4391
  br i1 %6, label %7, label %8, !dbg !4392

7:                                                ; preds = %2
  call void @abort() #19, !dbg !4393
  unreachable, !dbg !4393

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !4394
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !4395
  store i32 %9, i32* %10, align 8, !dbg !4396
  ret void, !dbg !4397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !4398 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4401, metadata !DIExpression()), !dbg !4402
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4403, metadata !DIExpression()), !dbg !4404
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !4409, metadata !DIExpression()), !dbg !4410
  %10 = load i32, i32* %6, align 4, !dbg !4411
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !4412
  %11 = load i32, i32* %5, align 4, !dbg !4413
  %12 = load i8*, i8** %7, align 8, !dbg !4414
  %13 = load i64, i64* %8, align 8, !dbg !4415
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !4416
  ret i8* %14, !dbg !4417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !4418 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4421, metadata !DIExpression()), !dbg !4422
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4423, metadata !DIExpression()), !dbg !4424
  %5 = load i32, i32* %3, align 4, !dbg !4425
  %6 = load i8*, i8** %4, align 8, !dbg !4426
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !4427
  ret i8* %7, !dbg !4428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4429 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4432, metadata !DIExpression()), !dbg !4433
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4434, metadata !DIExpression()), !dbg !4435
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4436, metadata !DIExpression()), !dbg !4437
  %7 = load i32, i32* %4, align 4, !dbg !4438
  %8 = load i8*, i8** %5, align 8, !dbg !4439
  %9 = load i64, i64* %6, align 8, !dbg !4440
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4441
  ret i8* %10, !dbg !4442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !4443 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4446, metadata !DIExpression()), !dbg !4447
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4452, metadata !DIExpression()), !dbg !4453
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !4454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4454
  %9 = load i8, i8* %6, align 1, !dbg !4455
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !4456
  %11 = load i8*, i8** %4, align 8, !dbg !4457
  %12 = load i64, i64* %5, align 8, !dbg !4458
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !4459
  ret i8* %13, !dbg !4460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !4461 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4464, metadata !DIExpression()), !dbg !4465
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4466, metadata !DIExpression()), !dbg !4467
  %5 = load i8*, i8** %3, align 8, !dbg !4468
  %6 = load i8, i8* %4, align 1, !dbg !4469
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !4470
  ret i8* %7, !dbg !4471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !4472 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4473, metadata !DIExpression()), !dbg !4474
  %3 = load i8*, i8** %2, align 8, !dbg !4475
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !4476
  ret i8* %4, !dbg !4477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4478 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4479, metadata !DIExpression()), !dbg !4480
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4481, metadata !DIExpression()), !dbg !4482
  %5 = load i8*, i8** %3, align 8, !dbg !4483
  %6 = load i64, i64* %4, align 8, !dbg !4484
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !4485
  ret i8* %7, !dbg !4486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !4487 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4488, metadata !DIExpression()), !dbg !4489
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4490, metadata !DIExpression()), !dbg !4491
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4492, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !4494, metadata !DIExpression()), !dbg !4495
  %9 = load i32, i32* %5, align 4, !dbg !4496
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !4497
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !4497
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !4497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !4497
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !4498
  %13 = load i32, i32* %4, align 4, !dbg !4499
  %14 = load i8*, i8** %6, align 8, !dbg !4500
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !4501
  ret i8* %15, !dbg !4502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !4503 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4506, metadata !DIExpression()), !dbg !4507
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4508, metadata !DIExpression()), !dbg !4509
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4510, metadata !DIExpression()), !dbg !4511
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4512, metadata !DIExpression()), !dbg !4513
  %9 = load i32, i32* %5, align 4, !dbg !4514
  %10 = load i8*, i8** %6, align 8, !dbg !4515
  %11 = load i8*, i8** %7, align 8, !dbg !4516
  %12 = load i8*, i8** %8, align 8, !dbg !4517
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !4518
  ret i8* %13, !dbg !4519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !4520 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4523, metadata !DIExpression()), !dbg !4524
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4525, metadata !DIExpression()), !dbg !4526
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4527, metadata !DIExpression()), !dbg !4528
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4529, metadata !DIExpression()), !dbg !4530
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4531, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !4533, metadata !DIExpression()), !dbg !4534
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !4535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4535
  %13 = load i8*, i8** %7, align 8, !dbg !4536
  %14 = load i8*, i8** %8, align 8, !dbg !4537
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !4538
  %15 = load i32, i32* %6, align 4, !dbg !4539
  %16 = load i8*, i8** %9, align 8, !dbg !4540
  %17 = load i64, i64* %10, align 8, !dbg !4541
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !4542
  ret i8* %18, !dbg !4543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !4544 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4547, metadata !DIExpression()), !dbg !4548
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4549, metadata !DIExpression()), !dbg !4550
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4551, metadata !DIExpression()), !dbg !4552
  %7 = load i8*, i8** %4, align 8, !dbg !4553
  %8 = load i8*, i8** %5, align 8, !dbg !4554
  %9 = load i8*, i8** %6, align 8, !dbg !4555
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !4556
  ret i8* %10, !dbg !4557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !4558 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4561, metadata !DIExpression()), !dbg !4562
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4563, metadata !DIExpression()), !dbg !4564
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4565, metadata !DIExpression()), !dbg !4566
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4567, metadata !DIExpression()), !dbg !4568
  %9 = load i8*, i8** %5, align 8, !dbg !4569
  %10 = load i8*, i8** %6, align 8, !dbg !4570
  %11 = load i8*, i8** %7, align 8, !dbg !4571
  %12 = load i64, i64* %8, align 8, !dbg !4572
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !4573
  ret i8* %13, !dbg !4574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4575 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4578, metadata !DIExpression()), !dbg !4579
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4580, metadata !DIExpression()), !dbg !4581
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4582, metadata !DIExpression()), !dbg !4583
  %7 = load i32, i32* %4, align 4, !dbg !4584
  %8 = load i8*, i8** %5, align 8, !dbg !4585
  %9 = load i64, i64* %6, align 8, !dbg !4586
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !4587
  ret i8* %10, !dbg !4588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !4589 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4594, metadata !DIExpression()), !dbg !4595
  %5 = load i8*, i8** %3, align 8, !dbg !4596
  %6 = load i64, i64* %4, align 8, !dbg !4597
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !4598
  ret i8* %7, !dbg !4599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !4600 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4603, metadata !DIExpression()), !dbg !4604
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4605, metadata !DIExpression()), !dbg !4606
  %5 = load i32, i32* %3, align 4, !dbg !4607
  %6 = load i8*, i8** %4, align 8, !dbg !4608
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !4609
  ret i8* %7, !dbg !4610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !4611 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4614, metadata !DIExpression()), !dbg !4615
  %3 = load i8*, i8** %2, align 8, !dbg !4616
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !4617
  ret i8* %4, !dbg !4618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !4619 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4623, metadata !DIExpression()), !dbg !4624
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4625, metadata !DIExpression()), !dbg !4626
  %5 = load i8*, i8** %3, align 8, !dbg !4627
  %6 = load i8*, i8** %4, align 8, !dbg !4628
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !4629
  %8 = icmp ne i32 %7, 0, !dbg !4630
  %9 = xor i1 %8, true, !dbg !4630
  ret i1 %9, !dbg !4631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !4632 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4670, metadata !DIExpression()), !dbg !4671
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4672, metadata !DIExpression()), !dbg !4673
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4676, metadata !DIExpression()), !dbg !4677
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4680, metadata !DIExpression()), !dbg !4681
  %13 = load i8*, i8** %8, align 8, !dbg !4682
  %14 = icmp ne i8* %13, null, !dbg !4682
  br i1 %14, label %15, label %21, !dbg !4684

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4685
  %17 = load i8*, i8** %8, align 8, !dbg !4686
  %18 = load i8*, i8** %9, align 8, !dbg !4687
  %19 = load i8*, i8** %10, align 8, !dbg !4688
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !4689
  br label %26, !dbg !4689

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4690
  %23 = load i8*, i8** %9, align 8, !dbg !4691
  %24 = load i8*, i8** %10, align 8, !dbg !4692
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.190, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !4693
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4694
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.192, i64 0, i64 0)) #18, !dbg !4695
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !4696
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4697
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.193, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !4697
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4698
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.194, i64 0, i64 0)) #18, !dbg !4699
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.195, i64 0, i64 0)), !dbg !4700
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4701
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.193, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !4701
  %37 = load i64, i64* %12, align 8, !dbg !4702
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
  ], !dbg !4703

38:                                               ; preds = %26
  br label %241, !dbg !4704

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4706
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.196, i64 0, i64 0)) #18, !dbg !4707
  %42 = load i8**, i8*** %11, align 8, !dbg !4708
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !4708
  %44 = load i8*, i8** %43, align 8, !dbg !4708
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !4709
  br label %241, !dbg !4710

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4711
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.197, i64 0, i64 0)) #18, !dbg !4712
  %49 = load i8**, i8*** %11, align 8, !dbg !4713
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !4713
  %51 = load i8*, i8** %50, align 8, !dbg !4713
  %52 = load i8**, i8*** %11, align 8, !dbg !4714
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !4714
  %54 = load i8*, i8** %53, align 8, !dbg !4714
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !4715
  br label %241, !dbg !4716

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4717
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.198, i64 0, i64 0)) #18, !dbg !4718
  %59 = load i8**, i8*** %11, align 8, !dbg !4719
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !4719
  %61 = load i8*, i8** %60, align 8, !dbg !4719
  %62 = load i8**, i8*** %11, align 8, !dbg !4720
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !4720
  %64 = load i8*, i8** %63, align 8, !dbg !4720
  %65 = load i8**, i8*** %11, align 8, !dbg !4721
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !4721
  %67 = load i8*, i8** %66, align 8, !dbg !4721
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !4722
  br label %241, !dbg !4723

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4724
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.199, i64 0, i64 0)) #18, !dbg !4725
  %72 = load i8**, i8*** %11, align 8, !dbg !4726
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !4726
  %74 = load i8*, i8** %73, align 8, !dbg !4726
  %75 = load i8**, i8*** %11, align 8, !dbg !4727
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !4727
  %77 = load i8*, i8** %76, align 8, !dbg !4727
  %78 = load i8**, i8*** %11, align 8, !dbg !4728
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !4728
  %80 = load i8*, i8** %79, align 8, !dbg !4728
  %81 = load i8**, i8*** %11, align 8, !dbg !4729
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !4729
  %83 = load i8*, i8** %82, align 8, !dbg !4729
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !4730
  br label %241, !dbg !4731

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4732
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.200, i64 0, i64 0)) #18, !dbg !4733
  %88 = load i8**, i8*** %11, align 8, !dbg !4734
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !4734
  %90 = load i8*, i8** %89, align 8, !dbg !4734
  %91 = load i8**, i8*** %11, align 8, !dbg !4735
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !4735
  %93 = load i8*, i8** %92, align 8, !dbg !4735
  %94 = load i8**, i8*** %11, align 8, !dbg !4736
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !4736
  %96 = load i8*, i8** %95, align 8, !dbg !4736
  %97 = load i8**, i8*** %11, align 8, !dbg !4737
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !4737
  %99 = load i8*, i8** %98, align 8, !dbg !4737
  %100 = load i8**, i8*** %11, align 8, !dbg !4738
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !4738
  %102 = load i8*, i8** %101, align 8, !dbg !4738
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !4739
  br label %241, !dbg !4740

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4741
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.201, i64 0, i64 0)) #18, !dbg !4742
  %107 = load i8**, i8*** %11, align 8, !dbg !4743
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !4743
  %109 = load i8*, i8** %108, align 8, !dbg !4743
  %110 = load i8**, i8*** %11, align 8, !dbg !4744
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !4744
  %112 = load i8*, i8** %111, align 8, !dbg !4744
  %113 = load i8**, i8*** %11, align 8, !dbg !4745
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !4745
  %115 = load i8*, i8** %114, align 8, !dbg !4745
  %116 = load i8**, i8*** %11, align 8, !dbg !4746
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !4746
  %118 = load i8*, i8** %117, align 8, !dbg !4746
  %119 = load i8**, i8*** %11, align 8, !dbg !4747
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !4747
  %121 = load i8*, i8** %120, align 8, !dbg !4747
  %122 = load i8**, i8*** %11, align 8, !dbg !4748
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !4748
  %124 = load i8*, i8** %123, align 8, !dbg !4748
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !4749
  br label %241, !dbg !4750

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4751
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.202, i64 0, i64 0)) #18, !dbg !4752
  %129 = load i8**, i8*** %11, align 8, !dbg !4753
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !4753
  %131 = load i8*, i8** %130, align 8, !dbg !4753
  %132 = load i8**, i8*** %11, align 8, !dbg !4754
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !4754
  %134 = load i8*, i8** %133, align 8, !dbg !4754
  %135 = load i8**, i8*** %11, align 8, !dbg !4755
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !4755
  %137 = load i8*, i8** %136, align 8, !dbg !4755
  %138 = load i8**, i8*** %11, align 8, !dbg !4756
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !4756
  %140 = load i8*, i8** %139, align 8, !dbg !4756
  %141 = load i8**, i8*** %11, align 8, !dbg !4757
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !4757
  %143 = load i8*, i8** %142, align 8, !dbg !4757
  %144 = load i8**, i8*** %11, align 8, !dbg !4758
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !4758
  %146 = load i8*, i8** %145, align 8, !dbg !4758
  %147 = load i8**, i8*** %11, align 8, !dbg !4759
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !4759
  %149 = load i8*, i8** %148, align 8, !dbg !4759
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !4760
  br label %241, !dbg !4761

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4762
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.203, i64 0, i64 0)) #18, !dbg !4763
  %154 = load i8**, i8*** %11, align 8, !dbg !4764
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4764
  %156 = load i8*, i8** %155, align 8, !dbg !4764
  %157 = load i8**, i8*** %11, align 8, !dbg !4765
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !4765
  %159 = load i8*, i8** %158, align 8, !dbg !4765
  %160 = load i8**, i8*** %11, align 8, !dbg !4766
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !4766
  %162 = load i8*, i8** %161, align 8, !dbg !4766
  %163 = load i8**, i8*** %11, align 8, !dbg !4767
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !4767
  %165 = load i8*, i8** %164, align 8, !dbg !4767
  %166 = load i8**, i8*** %11, align 8, !dbg !4768
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !4768
  %168 = load i8*, i8** %167, align 8, !dbg !4768
  %169 = load i8**, i8*** %11, align 8, !dbg !4769
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !4769
  %171 = load i8*, i8** %170, align 8, !dbg !4769
  %172 = load i8**, i8*** %11, align 8, !dbg !4770
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !4770
  %174 = load i8*, i8** %173, align 8, !dbg !4770
  %175 = load i8**, i8*** %11, align 8, !dbg !4771
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !4771
  %177 = load i8*, i8** %176, align 8, !dbg !4771
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !4772
  br label %241, !dbg !4773

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4774
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.204, i64 0, i64 0)) #18, !dbg !4775
  %182 = load i8**, i8*** %11, align 8, !dbg !4776
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !4776
  %184 = load i8*, i8** %183, align 8, !dbg !4776
  %185 = load i8**, i8*** %11, align 8, !dbg !4777
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !4777
  %187 = load i8*, i8** %186, align 8, !dbg !4777
  %188 = load i8**, i8*** %11, align 8, !dbg !4778
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !4778
  %190 = load i8*, i8** %189, align 8, !dbg !4778
  %191 = load i8**, i8*** %11, align 8, !dbg !4779
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !4779
  %193 = load i8*, i8** %192, align 8, !dbg !4779
  %194 = load i8**, i8*** %11, align 8, !dbg !4780
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !4780
  %196 = load i8*, i8** %195, align 8, !dbg !4780
  %197 = load i8**, i8*** %11, align 8, !dbg !4781
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4781
  %199 = load i8*, i8** %198, align 8, !dbg !4781
  %200 = load i8**, i8*** %11, align 8, !dbg !4782
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4782
  %202 = load i8*, i8** %201, align 8, !dbg !4782
  %203 = load i8**, i8*** %11, align 8, !dbg !4783
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4783
  %205 = load i8*, i8** %204, align 8, !dbg !4783
  %206 = load i8**, i8*** %11, align 8, !dbg !4784
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4784
  %208 = load i8*, i8** %207, align 8, !dbg !4784
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4785
  br label %241, !dbg !4786

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4787
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.205, i64 0, i64 0)) #18, !dbg !4788
  %213 = load i8**, i8*** %11, align 8, !dbg !4789
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4789
  %215 = load i8*, i8** %214, align 8, !dbg !4789
  %216 = load i8**, i8*** %11, align 8, !dbg !4790
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4790
  %218 = load i8*, i8** %217, align 8, !dbg !4790
  %219 = load i8**, i8*** %11, align 8, !dbg !4791
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4791
  %221 = load i8*, i8** %220, align 8, !dbg !4791
  %222 = load i8**, i8*** %11, align 8, !dbg !4792
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4792
  %224 = load i8*, i8** %223, align 8, !dbg !4792
  %225 = load i8**, i8*** %11, align 8, !dbg !4793
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4793
  %227 = load i8*, i8** %226, align 8, !dbg !4793
  %228 = load i8**, i8*** %11, align 8, !dbg !4794
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4794
  %230 = load i8*, i8** %229, align 8, !dbg !4794
  %231 = load i8**, i8*** %11, align 8, !dbg !4795
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4795
  %233 = load i8*, i8** %232, align 8, !dbg !4795
  %234 = load i8**, i8*** %11, align 8, !dbg !4796
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4796
  %236 = load i8*, i8** %235, align 8, !dbg !4796
  %237 = load i8**, i8*** %11, align 8, !dbg !4797
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4797
  %239 = load i8*, i8** %238, align 8, !dbg !4797
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4798
  br label %241, !dbg !4799

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4801 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4804, metadata !DIExpression()), !dbg !4805
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4814, metadata !DIExpression()), !dbg !4815
  store i64 0, i64* %11, align 8, !dbg !4816
  br label %12, !dbg !4818

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4819
  %14 = load i64, i64* %11, align 8, !dbg !4821
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4819
  %16 = load i8*, i8** %15, align 8, !dbg !4819
  %17 = icmp ne i8* %16, null, !dbg !4822
  br i1 %17, label %18, label %22, !dbg !4822

18:                                               ; preds = %12
  br label %19, !dbg !4822

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4823
  %21 = add i64 %20, 1, !dbg !4823
  store i64 %21, i64* %11, align 8, !dbg !4823
  br label %12, !dbg !4824, !llvm.loop !4825

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4827
  %24 = load i8*, i8** %7, align 8, !dbg !4828
  %25 = load i8*, i8** %8, align 8, !dbg !4829
  %26 = load i8*, i8** %9, align 8, !dbg !4830
  %27 = load i8**, i8*** %10, align 8, !dbg !4831
  %28 = load i64, i64* %11, align 8, !dbg !4832
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4833
  ret void, !dbg !4834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4835 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4849, metadata !DIExpression()), !dbg !4850
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4851, metadata !DIExpression()), !dbg !4852
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4853, metadata !DIExpression()), !dbg !4854
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4855, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4857, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4859, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4861, metadata !DIExpression()), !dbg !4863
  store i64 0, i64* %10, align 8, !dbg !4864
  br label %12, !dbg !4866

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4867
  %14 = icmp ult i64 %13, 10, !dbg !4869
  br i1 %14, label %15, label %38, !dbg !4870

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4871
  %17 = load i32, i32* %16, align 8, !dbg !4871
  %18 = icmp sge i32 %17, 0, !dbg !4871
  br i1 %18, label %27, label %19, !dbg !4871

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4871
  store i32 %20, i32* %16, align 8, !dbg !4871
  %21 = icmp sle i32 %20, 0, !dbg !4871
  br i1 %21, label %22, label %27, !dbg !4871

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4871
  %24 = load i8*, i8** %23, align 8, !dbg !4871
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4871
  %26 = bitcast i8* %25 to i8**, !dbg !4871
  br label %32, !dbg !4871

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4871
  %29 = load i8*, i8** %28, align 8, !dbg !4871
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4871
  store i8* %30, i8** %28, align 8, !dbg !4871
  %31 = bitcast i8* %29 to i8**, !dbg !4871
  br label %32, !dbg !4871

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4871
  %34 = load i8*, i8** %33, align 8, !dbg !4871
  %35 = load i64, i64* %10, align 8, !dbg !4872
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4873
  store i8* %34, i8** %36, align 8, !dbg !4874
  %37 = icmp ne i8* %34, null, !dbg !4875
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4876
  br i1 %39, label %40, label %44, !dbg !4877

40:                                               ; preds = %38
  br label %41, !dbg !4877

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4878
  %43 = add i64 %42, 1, !dbg !4878
  store i64 %43, i64* %10, align 8, !dbg !4878
  br label %12, !dbg !4879, !llvm.loop !4880

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4882
  %46 = load i8*, i8** %7, align 8, !dbg !4883
  %47 = load i8*, i8** %8, align 8, !dbg !4884
  %48 = load i8*, i8** %9, align 8, !dbg !4885
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4886
  %50 = load i64, i64* %10, align 8, !dbg !4887
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4888
  ret void, !dbg !4889
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4890 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4893, metadata !DIExpression()), !dbg !4894
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4897, metadata !DIExpression()), !dbg !4898
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4899, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4901, metadata !DIExpression()), !dbg !4902
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4903
  call void @llvm.va_start(i8* %11), !dbg !4903
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4904
  %13 = load i8*, i8** %6, align 8, !dbg !4905
  %14 = load i8*, i8** %7, align 8, !dbg !4906
  %15 = load i8*, i8** %8, align 8, !dbg !4907
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4908
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4908
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4908
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4908
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4909
  call void @llvm.va_end(i8* %18), !dbg !4909
  ret void, !dbg !4910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4911 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4912
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.193, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4912
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.210, i64 0, i64 0)) #18, !dbg !4913
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.211, i64 0, i64 0)), !dbg !4914
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.212, i64 0, i64 0)) #18, !dbg !4915
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.213, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.214, i64 0, i64 0)), !dbg !4916
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.215, i64 0, i64 0)) #18, !dbg !4917
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.216, i64 0, i64 0)), !dbg !4918
  ret void, !dbg !4919
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4920 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4924, metadata !DIExpression()), !dbg !4925
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4928, metadata !DIExpression()), !dbg !4929
  %7 = load i8*, i8** %4, align 8, !dbg !4930
  %8 = load i64, i64* %5, align 8, !dbg !4931
  %9 = load i64, i64* %6, align 8, !dbg !4932
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !4933
  ret i8* %10, !dbg !4934
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4935 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4936, metadata !DIExpression()), !dbg !4937
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4940, metadata !DIExpression()), !dbg !4941
  %7 = load i8*, i8** %4, align 8, !dbg !4942
  %8 = load i64, i64* %5, align 8, !dbg !4943
  %9 = load i64, i64* %6, align 8, !dbg !4944
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4945
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4946
  ret i8* %11, !dbg !4947
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4948 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4951, metadata !DIExpression()), !dbg !4952
  %3 = load i8*, i8** %2, align 8, !dbg !4953
  %4 = icmp ne i8* %3, null, !dbg !4953
  br i1 %4, label %6, label %5, !dbg !4955

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4956
  unreachable, !dbg !4956

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4957
  ret i8* %7, !dbg !4958
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4959 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4962, metadata !DIExpression()), !dbg !4963
  %3 = load i64, i64* %2, align 8, !dbg !4964
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4965
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4966
  ret i8* %5, !dbg !4967
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4968 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4971, metadata !DIExpression()), !dbg !4972
  %3 = load i64, i64* %2, align 8, !dbg !4973
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4974
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4975
  ret i8* %5, !dbg !4976
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4977 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4980, metadata !DIExpression()), !dbg !4981
  %3 = load i64, i64* %2, align 8, !dbg !4982
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !4982
  ret i8* %4, !dbg !4983
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4984 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4989, metadata !DIExpression()), !dbg !4990
  %5 = load i8*, i8** %3, align 8, !dbg !4991
  %6 = load i64, i64* %4, align 8, !dbg !4992
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4993
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4994
  ret i8* %8, !dbg !4995
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4996 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5001, metadata !DIExpression()), !dbg !5002
  %5 = load i8*, i8** %3, align 8, !dbg !5003
  %6 = load i64, i64* %4, align 8, !dbg !5004
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !5005
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5006
  ret i8* %8, !dbg !5007
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !5008 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5013, metadata !DIExpression()), !dbg !5014
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5015, metadata !DIExpression()), !dbg !5016
  %7 = load i8*, i8** %4, align 8, !dbg !5017
  %8 = load i64, i64* %5, align 8, !dbg !5018
  %9 = load i64, i64* %6, align 8, !dbg !5019
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !5020
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !5021
  ret i8* %11, !dbg !5022
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5023 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5028, metadata !DIExpression()), !dbg !5029
  %5 = load i64, i64* %3, align 8, !dbg !5030
  %6 = load i64, i64* %4, align 8, !dbg !5031
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !5032
  ret i8* %7, !dbg !5033
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5034 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5039, metadata !DIExpression()), !dbg !5040
  %5 = load i64, i64* %3, align 8, !dbg !5041
  %6 = load i64, i64* %4, align 8, !dbg !5042
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !5043
  ret i8* %7, !dbg !5044
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !5045 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5048, metadata !DIExpression()), !dbg !5049
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !5050, metadata !DIExpression()), !dbg !5051
  %5 = load i8*, i8** %3, align 8, !dbg !5052
  %6 = load i64*, i64** %4, align 8, !dbg !5053
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !5054
  ret i8* %7, !dbg !5055
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !400 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5056, metadata !DIExpression()), !dbg !5057
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5060, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5062, metadata !DIExpression()), !dbg !5063
  %8 = load i64*, i64** %5, align 8, !dbg !5064
  %9 = load i64, i64* %8, align 8, !dbg !5065
  store i64 %9, i64* %7, align 8, !dbg !5063
  %10 = load i8*, i8** %4, align 8, !dbg !5066
  %11 = icmp ne i8* %10, null, !dbg !5066
  br i1 %11, label %26, label %12, !dbg !5068

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !5069
  %14 = icmp ne i64 %13, 0, !dbg !5069
  br i1 %14, label %25, label %15, !dbg !5072

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !5073
  %17 = udiv i64 128, %16, !dbg !5075
  store i64 %17, i64* %7, align 8, !dbg !5076
  %18 = load i64, i64* %7, align 8, !dbg !5077
  %19 = icmp ne i64 %18, 0, !dbg !5078
  %20 = xor i1 %19, true, !dbg !5078
  %21 = zext i1 %20 to i32, !dbg !5078
  %22 = sext i32 %21 to i64, !dbg !5078
  %23 = load i64, i64* %7, align 8, !dbg !5079
  %24 = add i64 %23, %22, !dbg !5079
  store i64 %24, i64* %7, align 8, !dbg !5079
  br label %25, !dbg !5080

25:                                               ; preds = %15, %12
  br label %36, !dbg !5081

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !5082
  %28 = load i64, i64* %7, align 8, !dbg !5082
  %29 = lshr i64 %28, 1, !dbg !5082
  %30 = add i64 %29, 1, !dbg !5082
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !5082
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !5082
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !5082
  store i64 %33, i64* %7, align 8, !dbg !5082
  br i1 %32, label %34, label %35, !dbg !5085

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !5086
  unreachable, !dbg !5086

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !5087
  %38 = load i64, i64* %7, align 8, !dbg !5088
  %39 = load i64, i64* %6, align 8, !dbg !5089
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !5090
  store i8* %40, i8** %4, align 8, !dbg !5091
  %41 = load i64, i64* %7, align 8, !dbg !5092
  %42 = load i64*, i64** %5, align 8, !dbg !5093
  store i64 %41, i64* %42, align 8, !dbg !5094
  %43 = load i8*, i8** %4, align 8, !dbg !5095
  ret i8* %43, !dbg !5096
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !407 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5097, metadata !DIExpression()), !dbg !5098
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !5099, metadata !DIExpression()), !dbg !5100
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5103, metadata !DIExpression()), !dbg !5104
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5105, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.declare(metadata i64* %11, metadata !5107, metadata !DIExpression()), !dbg !5108
  %15 = load i64*, i64** %7, align 8, !dbg !5109
  %16 = load i64, i64* %15, align 8, !dbg !5110
  store i64 %16, i64* %11, align 8, !dbg !5108
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5111, metadata !DIExpression()), !dbg !5112
  %17 = load i64, i64* %11, align 8, !dbg !5113
  %18 = load i64, i64* %11, align 8, !dbg !5113
  %19 = ashr i64 %18, 1, !dbg !5113
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !5113
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !5113
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !5113
  store i64 %22, i64* %12, align 8, !dbg !5113
  br i1 %21, label %23, label %24, !dbg !5115

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !5116
  br label %24, !dbg !5117

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !5118
  %26 = icmp sle i64 0, %25, !dbg !5120
  br i1 %26, label %27, label %33, !dbg !5121

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !5122
  %29 = load i64, i64* %12, align 8, !dbg !5123
  %30 = icmp slt i64 %28, %29, !dbg !5124
  br i1 %30, label %31, label %33, !dbg !5125

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !5126
  store i64 %32, i64* %12, align 8, !dbg !5127
  br label %33, !dbg !5128

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i64* %14, metadata !5131, metadata !DIExpression()), !dbg !5132
  %34 = load i64, i64* %10, align 8, !dbg !5133
  %35 = icmp slt i64 %34, 0, !dbg !5133
  br i1 %35, label %36, label %82, !dbg !5133

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !5133
  %38 = icmp slt i64 %37, 0, !dbg !5133
  br i1 %38, label %39, label %62, !dbg !5133

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !5133

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !5133
  %42 = load i64, i64* %10, align 8, !dbg !5133
  %43 = sdiv i64 9223372036854775807, %42, !dbg !5133
  %44 = icmp slt i64 %41, %43, !dbg !5133
  br i1 %44, label %111, label %115, !dbg !5133

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !5133

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !5133
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !5133
  br i1 %48, label %52, label %53, !dbg !5133

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !5133
  %51 = icmp slt i64 0, %50, !dbg !5133
  br i1 %51, label %52, label %53, !dbg !5133

52:                                               ; preds = %49, %46
  br label %57, !dbg !5133

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !5133
  %55 = sub nsw i64 0, %54, !dbg !5133
  %56 = sdiv i64 9223372036854775807, %55, !dbg !5133
  br label %57, !dbg !5133

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !5133
  %59 = load i64, i64* %12, align 8, !dbg !5133
  %60 = sub nsw i64 -1, %59, !dbg !5133
  %61 = icmp sle i64 %58, %60, !dbg !5133
  br i1 %61, label %111, label %115, !dbg !5133

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !5133
  %64 = icmp eq i64 %63, -1, !dbg !5133
  br i1 %64, label %65, label %77, !dbg !5133

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !5133

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !5133
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !5133
  %69 = icmp slt i64 0, %68, !dbg !5133
  br i1 %69, label %111, label %115, !dbg !5133

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !5133
  %72 = icmp slt i64 0, %71, !dbg !5133
  br i1 %72, label %73, label %115, !dbg !5133

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !5133
  %75 = sub nsw i64 %74, 1, !dbg !5133
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !5133
  br i1 %76, label %111, label %115, !dbg !5133

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !5133
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !5133
  %80 = load i64, i64* %12, align 8, !dbg !5133
  %81 = icmp slt i64 %79, %80, !dbg !5133
  br i1 %81, label %111, label %115, !dbg !5133

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !5133
  %84 = icmp eq i64 %83, 0, !dbg !5133
  br i1 %84, label %85, label %86, !dbg !5133

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !5133

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !5133
  %88 = icmp slt i64 %87, 0, !dbg !5133
  br i1 %88, label %89, label %106, !dbg !5133

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !5133
  %91 = icmp eq i64 %90, -1, !dbg !5133
  br i1 %91, label %92, label %101, !dbg !5133

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !5133

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !5133
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !5133
  %96 = icmp slt i64 0, %95, !dbg !5133
  br i1 %96, label %111, label %115, !dbg !5133

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !5133
  %99 = sub nsw i64 %98, 1, !dbg !5133
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !5133
  br i1 %100, label %111, label %115, !dbg !5133

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !5133
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !5133
  %104 = load i64, i64* %10, align 8, !dbg !5133
  %105 = icmp slt i64 %103, %104, !dbg !5133
  br i1 %105, label %111, label %115, !dbg !5133

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !5133
  %108 = sdiv i64 9223372036854775807, %107, !dbg !5133
  %109 = load i64, i64* %12, align 8, !dbg !5133
  %110 = icmp slt i64 %108, %109, !dbg !5133
  br i1 %110, label %111, label %115, !dbg !5133

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !5133
  %113 = load i64, i64* %10, align 8, !dbg !5133
  %114 = mul i64 %112, %113, !dbg !5133
  store i64 %114, i64* %13, align 8, !dbg !5133
  br label %119, !dbg !5133

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !5133
  %117 = load i64, i64* %10, align 8, !dbg !5133
  %118 = mul i64 %116, %117, !dbg !5133
  store i64 %118, i64* %13, align 8, !dbg !5133
  br label %119, !dbg !5133

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !5133
  %121 = icmp ne i32 %120, 0, !dbg !5133
  br i1 %121, label %122, label %123, !dbg !5133

122:                                              ; preds = %119
  br label %129, !dbg !5133

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !5134
  %125 = icmp slt i64 %124, 128, !dbg !5135
  %126 = zext i1 %125 to i64, !dbg !5134
  %127 = select i1 %125, i32 128, i32 0, !dbg !5134
  %128 = sext i32 %127 to i64, !dbg !5134
  br label %129, !dbg !5133

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !5133
  store i64 %130, i64* %14, align 8, !dbg !5132
  %131 = load i64, i64* %14, align 8, !dbg !5136
  %132 = icmp ne i64 %131, 0, !dbg !5136
  br i1 %132, label %133, label %142, !dbg !5138

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !5139
  %135 = load i64, i64* %10, align 8, !dbg !5141
  %136 = sdiv i64 %134, %135, !dbg !5142
  store i64 %136, i64* %12, align 8, !dbg !5143
  %137 = load i64, i64* %14, align 8, !dbg !5144
  %138 = load i64, i64* %14, align 8, !dbg !5145
  %139 = load i64, i64* %10, align 8, !dbg !5146
  %140 = srem i64 %138, %139, !dbg !5147
  %141 = sub nsw i64 %137, %140, !dbg !5148
  store i64 %141, i64* %13, align 8, !dbg !5149
  br label %142, !dbg !5150

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !5151
  %144 = icmp ne i8* %143, null, !dbg !5151
  br i1 %144, label %147, label %145, !dbg !5153

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !5154
  store i64 0, i64* %146, align 8, !dbg !5155
  br label %147, !dbg !5156

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !5157
  %149 = load i64, i64* %11, align 8, !dbg !5159
  %150 = sub nsw i64 %148, %149, !dbg !5160
  %151 = load i64, i64* %8, align 8, !dbg !5161
  %152 = icmp slt i64 %150, %151, !dbg !5162
  br i1 %152, label %153, label %256, !dbg !5163

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !5164
  %155 = load i64, i64* %8, align 8, !dbg !5164
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !5164
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !5164
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !5164
  store i64 %158, i64* %12, align 8, !dbg !5164
  br i1 %157, label %255, label %159, !dbg !5165

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !5166
  %161 = icmp sle i64 0, %160, !dbg !5167
  br i1 %161, label %162, label %166, !dbg !5168

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !5169
  %164 = load i64, i64* %12, align 8, !dbg !5170
  %165 = icmp slt i64 %163, %164, !dbg !5171
  br i1 %165, label %255, label %166, !dbg !5172

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !5173
  %168 = icmp slt i64 %167, 0, !dbg !5173
  br i1 %168, label %169, label %215, !dbg !5173

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !5173
  %171 = icmp slt i64 %170, 0, !dbg !5173
  br i1 %171, label %172, label %195, !dbg !5173

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !5173

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !5173
  %175 = load i64, i64* %10, align 8, !dbg !5173
  %176 = sdiv i64 9223372036854775807, %175, !dbg !5173
  %177 = icmp slt i64 %174, %176, !dbg !5173
  br i1 %177, label %244, label %248, !dbg !5173

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !5173

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !5173
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !5173
  br i1 %181, label %185, label %186, !dbg !5173

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !5173
  %184 = icmp slt i64 0, %183, !dbg !5173
  br i1 %184, label %185, label %186, !dbg !5173

185:                                              ; preds = %182, %179
  br label %190, !dbg !5173

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !5173
  %188 = sub nsw i64 0, %187, !dbg !5173
  %189 = sdiv i64 9223372036854775807, %188, !dbg !5173
  br label %190, !dbg !5173

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !5173
  %192 = load i64, i64* %12, align 8, !dbg !5173
  %193 = sub nsw i64 -1, %192, !dbg !5173
  %194 = icmp sle i64 %191, %193, !dbg !5173
  br i1 %194, label %244, label %248, !dbg !5173

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !5173
  %197 = icmp eq i64 %196, -1, !dbg !5173
  br i1 %197, label %198, label %210, !dbg !5173

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !5173

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !5173
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !5173
  %202 = icmp slt i64 0, %201, !dbg !5173
  br i1 %202, label %244, label %248, !dbg !5173

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !5173
  %205 = icmp slt i64 0, %204, !dbg !5173
  br i1 %205, label %206, label %248, !dbg !5173

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !5173
  %208 = sub nsw i64 %207, 1, !dbg !5173
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !5173
  br i1 %209, label %244, label %248, !dbg !5173

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !5173
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !5173
  %213 = load i64, i64* %12, align 8, !dbg !5173
  %214 = icmp slt i64 %212, %213, !dbg !5173
  br i1 %214, label %244, label %248, !dbg !5173

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !5173
  %217 = icmp eq i64 %216, 0, !dbg !5173
  br i1 %217, label %218, label %219, !dbg !5173

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !5173

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !5173
  %221 = icmp slt i64 %220, 0, !dbg !5173
  br i1 %221, label %222, label %239, !dbg !5173

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !5173
  %224 = icmp eq i64 %223, -1, !dbg !5173
  br i1 %224, label %225, label %234, !dbg !5173

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !5173

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !5173
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !5173
  %229 = icmp slt i64 0, %228, !dbg !5173
  br i1 %229, label %244, label %248, !dbg !5173

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !5173
  %232 = sub nsw i64 %231, 1, !dbg !5173
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !5173
  br i1 %233, label %244, label %248, !dbg !5173

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !5173
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !5173
  %237 = load i64, i64* %10, align 8, !dbg !5173
  %238 = icmp slt i64 %236, %237, !dbg !5173
  br i1 %238, label %244, label %248, !dbg !5173

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !5173
  %241 = sdiv i64 9223372036854775807, %240, !dbg !5173
  %242 = load i64, i64* %12, align 8, !dbg !5173
  %243 = icmp slt i64 %241, %242, !dbg !5173
  br i1 %243, label %244, label %248, !dbg !5173

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !5173
  %246 = load i64, i64* %10, align 8, !dbg !5173
  %247 = mul i64 %245, %246, !dbg !5173
  store i64 %247, i64* %13, align 8, !dbg !5173
  br label %252, !dbg !5173

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !5173
  %250 = load i64, i64* %10, align 8, !dbg !5173
  %251 = mul i64 %249, %250, !dbg !5173
  store i64 %251, i64* %13, align 8, !dbg !5173
  br label %252, !dbg !5173

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !5173
  %254 = icmp ne i32 %253, 0, !dbg !5173
  br i1 %254, label %255, label %256, !dbg !5174

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !5175
  unreachable, !dbg !5175

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !5176
  %258 = load i64, i64* %13, align 8, !dbg !5177
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !5178
  store i8* %259, i8** %6, align 8, !dbg !5179
  %260 = load i64, i64* %12, align 8, !dbg !5180
  %261 = load i64*, i64** %7, align 8, !dbg !5181
  store i64 %260, i64* %261, align 8, !dbg !5182
  %262 = load i8*, i8** %6, align 8, !dbg !5183
  ret i8* %262, !dbg !5184
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !5185 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5186, metadata !DIExpression()), !dbg !5187
  %3 = load i64, i64* %2, align 8, !dbg !5188
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !5189
  ret i8* %4, !dbg !5190
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5191 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5192, metadata !DIExpression()), !dbg !5193
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5194, metadata !DIExpression()), !dbg !5195
  %5 = load i64, i64* %3, align 8, !dbg !5196
  %6 = load i64, i64* %4, align 8, !dbg !5197
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !5198
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5199
  ret i8* %8, !dbg !5200
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !5201 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5202, metadata !DIExpression()), !dbg !5203
  %3 = load i64, i64* %2, align 8, !dbg !5204
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !5205
  ret i8* %4, !dbg !5206
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !5207 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5210, metadata !DIExpression()), !dbg !5211
  %5 = load i64, i64* %3, align 8, !dbg !5212
  %6 = load i64, i64* %4, align 8, !dbg !5213
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !5214
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !5215
  ret i8* %8, !dbg !5216
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !5217 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5222, metadata !DIExpression()), !dbg !5223
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5224, metadata !DIExpression()), !dbg !5225
  %5 = load i64, i64* %4, align 8, !dbg !5226
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !5227
  %7 = load i8*, i8** %3, align 8, !dbg !5228
  %8 = load i64, i64* %4, align 8, !dbg !5229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !5230
  ret i8* %6, !dbg !5231
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !5232 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5235, metadata !DIExpression()), !dbg !5236
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5237, metadata !DIExpression()), !dbg !5238
  %5 = load i64, i64* %4, align 8, !dbg !5239
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !5240
  %7 = load i8*, i8** %3, align 8, !dbg !5241
  %8 = load i64, i64* %4, align 8, !dbg !5242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !5243
  ret i8* %6, !dbg !5244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !5245 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5250, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5252, metadata !DIExpression()), !dbg !5253
  %6 = load i64, i64* %4, align 8, !dbg !5254
  %7 = add nsw i64 %6, 1, !dbg !5255
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !5256
  store i8* %8, i8** %5, align 8, !dbg !5253
  %9 = load i8*, i8** %5, align 8, !dbg !5257
  %10 = load i64, i64* %4, align 8, !dbg !5258
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !5257
  store i8 0, i8* %11, align 1, !dbg !5259
  %12 = load i8*, i8** %5, align 8, !dbg !5260
  %13 = load i8*, i8** %3, align 8, !dbg !5261
  %14 = load i64, i64* %4, align 8, !dbg !5262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !5263
  ret i8* %12, !dbg !5264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !5265 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !5266, metadata !DIExpression()), !dbg !5267
  %3 = load i8*, i8** %2, align 8, !dbg !5268
  %4 = load i8*, i8** %2, align 8, !dbg !5269
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !5270
  %6 = add i64 %5, 1, !dbg !5271
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !5272
  ret i8* %7, !dbg !5273
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !5274 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !5275, metadata !DIExpression()), !dbg !5278
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !5278
  store i32 %2, i32* %1, align 4, !dbg !5278
  %3 = load i32, i32* %1, align 4, !dbg !5278
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.230, i64 0, i64 0)) #18, !dbg !5278
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.231, i64 0, i64 0), i8* noundef %4), !dbg !5278
  %5 = load i32, i32* %1, align 4, !dbg !5278
  %6 = icmp ne i32 %5, 0, !dbg !5278
  br i1 %6, label %7, label %9, !dbg !5278

7:                                                ; preds = %0
  unreachable, !dbg !5278

8:                                                ; No predecessors!
  br label %10, !dbg !5278

9:                                                ; preds = %0
  br label %10, !dbg !5278

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !5279
  unreachable, !dbg !5279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #4 !dbg !5280 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5319, metadata !DIExpression()), !dbg !5320
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i32 0, i32* %6, align 4, !dbg !5322
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5323, metadata !DIExpression()), !dbg !5324
  store i32 0, i32* %7, align 4, !dbg !5324
  call void @llvm.dbg.declare(metadata i8* %8, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i8 0, i8* %8, align 1, !dbg !5326
  call void @llvm.dbg.declare(metadata [81 x i8]* %9, metadata !5327, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5332, metadata !DIExpression()), !dbg !5334
  %16 = load i8*, i8** %5, align 8, !dbg !5335
  store i8* %16, i8** %10, align 8, !dbg !5334
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5336, metadata !DIExpression()), !dbg !5337
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5338
  store i8* %17, i8** %11, align 8, !dbg !5337
  br label %18, !dbg !5339

18:                                               ; preds = %120, %2
  %19 = load i8*, i8** %10, align 8, !dbg !5340
  %20 = load i8, i8* %19, align 1, !dbg !5343
  %21 = zext i8 %20 to i32, !dbg !5343
  %22 = icmp ne i32 %21, 0, !dbg !5344
  br i1 %22, label %23, label %123, !dbg !5345

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !5346
  %25 = load i8, i8* %24, align 1, !dbg !5348
  %26 = zext i8 %25 to i32, !dbg !5348
  switch i32 %26, label %94 [
    i32 114, label %27
    i32 119, label %38
    i32 97, label %51
    i32 98, label %64
    i32 43, label %77
    i32 120, label %88
    i32 101, label %91
  ], !dbg !5349

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !5350
  %28 = load i8*, i8** %11, align 8, !dbg !5352
  %29 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5354
  %30 = getelementptr inbounds i8, i8* %29, i64 80, !dbg !5355
  %31 = icmp ult i8* %28, %30, !dbg !5356
  br i1 %31, label %32, label %37, !dbg !5357

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !5358
  %34 = load i8, i8* %33, align 1, !dbg !5359
  %35 = load i8*, i8** %11, align 8, !dbg !5360
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !5360
  store i8* %36, i8** %11, align 8, !dbg !5360
  store i8 %34, i8* %35, align 1, !dbg !5361
  br label %37, !dbg !5362

37:                                               ; preds = %32, %27
  br label %120, !dbg !5363

38:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5364
  %39 = load i32, i32* %7, align 4, !dbg !5365
  %40 = or i32 %39, 576, !dbg !5365
  store i32 %40, i32* %7, align 4, !dbg !5365
  %41 = load i8*, i8** %11, align 8, !dbg !5366
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5368
  %43 = getelementptr inbounds i8, i8* %42, i64 80, !dbg !5369
  %44 = icmp ult i8* %41, %43, !dbg !5370
  br i1 %44, label %45, label %50, !dbg !5371

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8, !dbg !5372
  %47 = load i8, i8* %46, align 1, !dbg !5373
  %48 = load i8*, i8** %11, align 8, !dbg !5374
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !5374
  store i8* %49, i8** %11, align 8, !dbg !5374
  store i8 %47, i8* %48, align 1, !dbg !5375
  br label %50, !dbg !5376

50:                                               ; preds = %45, %38
  br label %120, !dbg !5377

51:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5378
  %52 = load i32, i32* %7, align 4, !dbg !5379
  %53 = or i32 %52, 1088, !dbg !5379
  store i32 %53, i32* %7, align 4, !dbg !5379
  %54 = load i8*, i8** %11, align 8, !dbg !5380
  %55 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5382
  %56 = getelementptr inbounds i8, i8* %55, i64 80, !dbg !5383
  %57 = icmp ult i8* %54, %56, !dbg !5384
  br i1 %57, label %58, label %63, !dbg !5385

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8, !dbg !5386
  %60 = load i8, i8* %59, align 1, !dbg !5387
  %61 = load i8*, i8** %11, align 8, !dbg !5388
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !5388
  store i8* %62, i8** %11, align 8, !dbg !5388
  store i8 %60, i8* %61, align 1, !dbg !5389
  br label %63, !dbg !5390

63:                                               ; preds = %58, %51
  br label %120, !dbg !5391

64:                                               ; preds = %23
  %65 = load i32, i32* %7, align 4, !dbg !5392
  %66 = or i32 %65, 0, !dbg !5392
  store i32 %66, i32* %7, align 4, !dbg !5392
  %67 = load i8*, i8** %11, align 8, !dbg !5393
  %68 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5395
  %69 = getelementptr inbounds i8, i8* %68, i64 80, !dbg !5396
  %70 = icmp ult i8* %67, %69, !dbg !5397
  br i1 %70, label %71, label %76, !dbg !5398

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8, !dbg !5399
  %73 = load i8, i8* %72, align 1, !dbg !5400
  %74 = load i8*, i8** %11, align 8, !dbg !5401
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !5401
  store i8* %75, i8** %11, align 8, !dbg !5401
  store i8 %73, i8* %74, align 1, !dbg !5402
  br label %76, !dbg !5403

76:                                               ; preds = %71, %64
  br label %120, !dbg !5404

77:                                               ; preds = %23
  store i32 2, i32* %6, align 4, !dbg !5405
  %78 = load i8*, i8** %11, align 8, !dbg !5406
  %79 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5408
  %80 = getelementptr inbounds i8, i8* %79, i64 80, !dbg !5409
  %81 = icmp ult i8* %78, %80, !dbg !5410
  br i1 %81, label %82, label %87, !dbg !5411

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !5412
  %84 = load i8, i8* %83, align 1, !dbg !5413
  %85 = load i8*, i8** %11, align 8, !dbg !5414
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !5414
  store i8* %86, i8** %11, align 8, !dbg !5414
  store i8 %84, i8* %85, align 1, !dbg !5415
  br label %87, !dbg !5416

87:                                               ; preds = %82, %77
  br label %120, !dbg !5417

88:                                               ; preds = %23
  %89 = load i32, i32* %7, align 4, !dbg !5418
  %90 = or i32 %89, 128, !dbg !5418
  store i32 %90, i32* %7, align 4, !dbg !5418
  store i8 1, i8* %8, align 1, !dbg !5419
  br label %120, !dbg !5420

91:                                               ; preds = %23
  %92 = load i32, i32* %7, align 4, !dbg !5421
  %93 = or i32 %92, 524288, !dbg !5421
  store i32 %93, i32* %7, align 4, !dbg !5421
  store i8 1, i8* %8, align 1, !dbg !5422
  br label %120, !dbg !5423

94:                                               ; preds = %23
  br label %95, !dbg !5424

95:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5425, metadata !DIExpression()), !dbg !5427
  %96 = load i8*, i8** %10, align 8, !dbg !5428
  %97 = call i64 @strlen(i8* noundef %96) #20, !dbg !5429
  store i64 %97, i64* %12, align 8, !dbg !5427
  %98 = load i64, i64* %12, align 8, !dbg !5430
  %99 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5432
  %100 = getelementptr inbounds i8, i8* %99, i64 80, !dbg !5433
  %101 = load i8*, i8** %11, align 8, !dbg !5434
  %102 = ptrtoint i8* %100 to i64, !dbg !5435
  %103 = ptrtoint i8* %101 to i64, !dbg !5435
  %104 = sub i64 %102, %103, !dbg !5435
  %105 = icmp ugt i64 %98, %104, !dbg !5436
  br i1 %105, label %106, label %113, !dbg !5437

106:                                              ; preds = %95
  %107 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5438
  %108 = getelementptr inbounds i8, i8* %107, i64 80, !dbg !5439
  %109 = load i8*, i8** %11, align 8, !dbg !5440
  %110 = ptrtoint i8* %108 to i64, !dbg !5441
  %111 = ptrtoint i8* %109 to i64, !dbg !5441
  %112 = sub i64 %110, %111, !dbg !5441
  store i64 %112, i64* %12, align 8, !dbg !5442
  br label %113, !dbg !5443

113:                                              ; preds = %106, %95
  %114 = load i8*, i8** %11, align 8, !dbg !5444
  %115 = load i8*, i8** %10, align 8, !dbg !5445
  %116 = load i64, i64* %12, align 8, !dbg !5446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %115, i64 %116, i1 false), !dbg !5447
  %117 = load i64, i64* %12, align 8, !dbg !5448
  %118 = load i8*, i8** %11, align 8, !dbg !5449
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5449
  store i8* %119, i8** %11, align 8, !dbg !5449
  br label %123, !dbg !5450

120:                                              ; preds = %91, %88, %87, %76, %63, %50, %37
  %121 = load i8*, i8** %10, align 8, !dbg !5451
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !5451
  store i8* %122, i8** %10, align 8, !dbg !5451
  br label %18, !dbg !5452, !llvm.loop !5453

123:                                              ; preds = %113, %18
  %124 = load i8*, i8** %11, align 8, !dbg !5455
  store i8 0, i8* %124, align 1, !dbg !5456
  %125 = load i8, i8* %8, align 1, !dbg !5457
  %126 = trunc i8 %125 to i1, !dbg !5457
  br i1 %126, label %127, label %151, !dbg !5459

127:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5460, metadata !DIExpression()), !dbg !5462
  %128 = load i8*, i8** %4, align 8, !dbg !5463
  %129 = load i32, i32* %6, align 4, !dbg !5464
  %130 = load i32, i32* %7, align 4, !dbg !5465
  %131 = or i32 %129, %130, !dbg !5466
  %132 = call i32 (i8*, i32, ...) @open(i8* noundef %128, i32 noundef %131, i32 noundef 438), !dbg !5467
  store i32 %132, i32* %13, align 4, !dbg !5462
  %133 = load i32, i32* %13, align 4, !dbg !5468
  %134 = icmp slt i32 %133, 0, !dbg !5470
  br i1 %134, label %135, label %136, !dbg !5471

135:                                              ; preds = %127
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !5472
  br label %156, !dbg !5472

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !5473, metadata !DIExpression()), !dbg !5474
  %137 = load i32, i32* %13, align 4, !dbg !5475
  %138 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5476
  %139 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %137, i8* noundef %138) #18, !dbg !5477
  store %struct._IO_FILE* %139, %struct._IO_FILE** %14, align 8, !dbg !5474
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5478
  %141 = icmp eq %struct._IO_FILE* %140, null, !dbg !5480
  br i1 %141, label %142, label %149, !dbg !5481

142:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5482, metadata !DIExpression()), !dbg !5484
  %143 = call i32* @__errno_location() #21, !dbg !5485
  %144 = load i32, i32* %143, align 4, !dbg !5485
  store i32 %144, i32* %15, align 4, !dbg !5484
  %145 = load i32, i32* %13, align 4, !dbg !5486
  %146 = call i32 @close(i32 noundef %145), !dbg !5487
  %147 = load i32, i32* %15, align 4, !dbg !5488
  %148 = call i32* @__errno_location() #21, !dbg !5489
  store i32 %147, i32* %148, align 4, !dbg !5490
  br label %149, !dbg !5491

149:                                              ; preds = %142, %136
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5492
  store %struct._IO_FILE* %150, %struct._IO_FILE** %3, align 8, !dbg !5493
  br label %156, !dbg !5493

151:                                              ; preds = %123
  %152 = load i32, i32* %6, align 4, !dbg !5494
  %153 = load i8*, i8** %4, align 8, !dbg !5495
  %154 = load i8*, i8** %5, align 8, !dbg !5496
  %155 = call %struct._IO_FILE* @orig_fopen(i8* noundef %153, i8* noundef %154), !dbg !5497
  store %struct._IO_FILE* %155, %struct._IO_FILE** %3, align 8, !dbg !5498
  br label %156, !dbg !5498

156:                                              ; preds = %151, %149, %135
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5499
  ret %struct._IO_FILE* %157, !dbg !5499
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @orig_fopen(i8* noundef %0, i8* noundef %1) #4 !dbg !5500 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5501, metadata !DIExpression()), !dbg !5502
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5503, metadata !DIExpression()), !dbg !5504
  %5 = load i8*, i8** %3, align 8, !dbg !5505
  %6 = load i8*, i8** %4, align 8, !dbg !5506
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef %6), !dbg !5507
  ret %struct._IO_FILE* %7, !dbg !5508
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !5509 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5510, metadata !DIExpression()), !dbg !5511
  %3 = load i32, i32* %2, align 4, !dbg !5512
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !5513
  ret i32 %4, !dbg !5514
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !5515 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5552, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5554, metadata !DIExpression()), !dbg !5556
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5557
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !5558
  %9 = icmp ne i64 %8, 0, !dbg !5559
  %10 = zext i1 %9 to i8, !dbg !5556
  store i8 %10, i8* %4, align 1, !dbg !5556
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5560, metadata !DIExpression()), !dbg !5561
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5562
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !5562
  %13 = icmp ne i32 %12, 0, !dbg !5563
  %14 = zext i1 %13 to i8, !dbg !5561
  store i8 %14, i8* %5, align 1, !dbg !5561
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5564, metadata !DIExpression()), !dbg !5565
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5566
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !5567
  %17 = icmp ne i32 %16, 0, !dbg !5568
  %18 = zext i1 %17 to i8, !dbg !5565
  store i8 %18, i8* %6, align 1, !dbg !5565
  %19 = load i8, i8* %5, align 1, !dbg !5569
  %20 = trunc i8 %19 to i1, !dbg !5569
  br i1 %20, label %31, label %21, !dbg !5571

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5572
  %23 = trunc i8 %22 to i1, !dbg !5572
  br i1 %23, label %24, label %37, !dbg !5573

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5574
  %26 = trunc i8 %25 to i1, !dbg !5574
  br i1 %26, label %31, label %27, !dbg !5575

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !5576
  %29 = load i32, i32* %28, align 4, !dbg !5576
  %30 = icmp ne i32 %29, 9, !dbg !5577
  br i1 %30, label %31, label %37, !dbg !5578

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5579
  %33 = trunc i8 %32 to i1, !dbg !5579
  br i1 %33, label %36, label %34, !dbg !5582

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !5583
  store i32 0, i32* %35, align 4, !dbg !5584
  br label %36, !dbg !5583

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5585
  br label %38, !dbg !5585

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5586
  br label %38, !dbg !5586

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5587
  ret i32 %39, !dbg !5587
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !5588 {
  %1 = call i32* @__errno_location() #21, !dbg !5591
  store i32 12, i32* %1, align 4, !dbg !5592
  ret i8* null, !dbg !5593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5594 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5595, metadata !DIExpression()), !dbg !5596
  %3 = load i64, i64* %2, align 8, !dbg !5597
  %4 = icmp ule i64 %3, -1, !dbg !5598
  br i1 %4, label %5, label %8, !dbg !5597

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5599
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !5600
  br label %10, !dbg !5597

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !5601
  br label %10, !dbg !5597

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5597
  ret i8* %11, !dbg !5602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5603 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5604, metadata !DIExpression()), !dbg !5605
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5606, metadata !DIExpression()), !dbg !5607
  %5 = load i64, i64* %4, align 8, !dbg !5608
  %6 = icmp ule i64 %5, -1, !dbg !5609
  br i1 %6, label %7, label %11, !dbg !5608

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5610
  %9 = load i64, i64* %4, align 8, !dbg !5611
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5612
  br label %13, !dbg !5608

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5613
  br label %13, !dbg !5608

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5608
  ret i8* %14, !dbg !5614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5615 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5618, metadata !DIExpression()), !dbg !5619
  %6 = load i64, i64* %4, align 8, !dbg !5620
  %7 = icmp ult i64 -1, %6, !dbg !5622
  br i1 %7, label %8, label %14, !dbg !5623

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5624
  %10 = icmp ne i64 %9, 0, !dbg !5627
  br i1 %10, label %11, label %13, !dbg !5628

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5629
  store i8* %12, i8** %3, align 8, !dbg !5630
  br label %27, !dbg !5630

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5631
  br label %14, !dbg !5632

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5633
  %16 = icmp ult i64 -1, %15, !dbg !5635
  br i1 %16, label %17, label %23, !dbg !5636

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5637
  %19 = icmp ne i64 %18, 0, !dbg !5640
  br i1 %19, label %20, label %22, !dbg !5641

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !5642
  store i8* %21, i8** %3, align 8, !dbg !5643
  br label %27, !dbg !5643

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5644
  br label %23, !dbg !5645

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5646
  %25 = load i64, i64* %5, align 8, !dbg !5647
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !5648
  store i8* %26, i8** %3, align 8, !dbg !5649
  br label %27, !dbg !5649

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5650
  ret i8* %28, !dbg !5650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5651 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5652, metadata !DIExpression()), !dbg !5653
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5656, metadata !DIExpression()), !dbg !5657
  %7 = load i64, i64* %5, align 8, !dbg !5658
  %8 = icmp ule i64 %7, -1, !dbg !5659
  br i1 %8, label %9, label %17, !dbg !5660

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5661
  %11 = icmp ule i64 %10, -1, !dbg !5662
  br i1 %11, label %12, label %17, !dbg !5658

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5663
  %14 = load i64, i64* %5, align 8, !dbg !5664
  %15 = load i64, i64* %6, align 8, !dbg !5665
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5666
  br label %19, !dbg !5658

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !5667
  br label %19, !dbg !5658

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5658
  ret i8* %20, !dbg !5668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5669 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5674, metadata !DIExpression()), !dbg !5675
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5676, metadata !DIExpression()), !dbg !5677
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5678, metadata !DIExpression()), !dbg !5679
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5680, metadata !DIExpression()), !dbg !5681
  %11 = load i8*, i8** %7, align 8, !dbg !5682
  %12 = icmp eq i8* %11, null, !dbg !5684
  br i1 %12, label %13, label %14, !dbg !5685

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5686
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.248, i64 0, i64 0), i8** %7, align 8, !dbg !5688
  store i64 1, i64* %8, align 8, !dbg !5689
  br label %14, !dbg !5690

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5691
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5693
  br i1 %16, label %17, label %18, !dbg !5694

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5695
  br label %18, !dbg !5696

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5697, metadata !DIExpression()), !dbg !5698
  %19 = load i32*, i32** %6, align 8, !dbg !5699
  %20 = load i8*, i8** %7, align 8, !dbg !5700
  %21 = load i64, i64* %8, align 8, !dbg !5701
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5702
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !5703
  store i64 %23, i64* %10, align 8, !dbg !5698
  %24 = load i64, i64* %10, align 8, !dbg !5704
  %25 = icmp ult i64 %24, -3, !dbg !5706
  br i1 %25, label %26, label %32, !dbg !5707

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5708
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !5709
  %29 = icmp ne i32 %28, 0, !dbg !5709
  br i1 %29, label %32, label %30, !dbg !5710

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5711
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5712
  br label %32, !dbg !5712

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5713
  %34 = icmp eq i64 %33, -3, !dbg !5715
  br i1 %34, label %35, label %36, !dbg !5716

35:                                               ; preds = %32
  call void @abort() #19, !dbg !5717
  unreachable, !dbg !5717

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5718
  %38 = icmp ule i64 -2, %37, !dbg !5720
  br i1 %38, label %39, label %53, !dbg !5721

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5722
  %41 = icmp ne i64 %40, 0, !dbg !5723
  br i1 %41, label %42, label %53, !dbg !5724

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5725
  br i1 %43, label %53, label %44, !dbg !5726

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5727
  %46 = icmp ne i32* %45, null, !dbg !5730
  br i1 %46, label %47, label %52, !dbg !5731

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5732
  %49 = load i8, i8* %48, align 1, !dbg !5733
  %50 = zext i8 %49 to i32, !dbg !5734
  %51 = load i32*, i32** %6, align 8, !dbg !5735
  store i32 %50, i32* %51, align 4, !dbg !5736
  br label %52, !dbg !5737

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5738
  br label %55, !dbg !5738

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5739
  store i64 %54, i64* %5, align 8, !dbg !5740
  br label %55, !dbg !5740

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5741
  ret i64 %56, !dbg !5741
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5742 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5757, metadata !DIExpression()), !dbg !5758
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5759
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5760
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5760
  ret void, !dbg !5761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5762 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5765, metadata !DIExpression()), !dbg !5766
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5769, metadata !DIExpression()), !dbg !5770
  %7 = load i8*, i8** %4, align 8, !dbg !5771
  %8 = load i8*, i8** %5, align 8, !dbg !5772
  %9 = load i64, i64* %6, align 8, !dbg !5773
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !5774
  %11 = icmp ne i32 %10, 0, !dbg !5775
  %12 = xor i1 %11, true, !dbg !5775
  ret i1 %12, !dbg !5776
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5777 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5779, metadata !DIExpression()), !dbg !5780
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5781, metadata !DIExpression()), !dbg !5782
  %5 = load i8*, i8** %3, align 8, !dbg !5783
  %6 = load i64, i64* %4, align 8, !dbg !5784
  %7 = icmp ne i64 %6, 0, !dbg !5784
  br i1 %7, label %8, label %10, !dbg !5784

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5785
  br label %11, !dbg !5784

10:                                               ; preds = %2
  br label %11, !dbg !5784

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5784
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !5786
  ret i8* %13, !dbg !5787
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5788 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5789, metadata !DIExpression()), !dbg !5790
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5791, metadata !DIExpression()), !dbg !5792
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5793, metadata !DIExpression()), !dbg !5794
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5795, metadata !DIExpression()), !dbg !5796
  %9 = load i64, i64* %7, align 8, !dbg !5797
  %10 = icmp ult i64 %9, 0, !dbg !5797
  br i1 %10, label %11, label %60, !dbg !5797

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5797
  %13 = icmp ult i64 %12, 0, !dbg !5797
  br i1 %13, label %14, label %37, !dbg !5797

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5797

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5797
  %17 = load i64, i64* %7, align 8, !dbg !5797
  %18 = udiv i64 -1, %17, !dbg !5797
  %19 = icmp ult i64 %16, %18, !dbg !5797
  br i1 %19, label %92, label %96, !dbg !5797

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5797

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5797
  %23 = icmp ult i64 %22, 1, !dbg !5797
  br i1 %23, label %27, label %28, !dbg !5797

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5797
  %26 = icmp ult i64 0, %25, !dbg !5797
  br i1 %26, label %27, label %28, !dbg !5797

27:                                               ; preds = %24, %21
  br label %32, !dbg !5797

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5797
  %30 = sub i64 0, %29, !dbg !5797
  %31 = udiv i64 -1, %30, !dbg !5797
  br label %32, !dbg !5797

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5797
  %34 = load i64, i64* %6, align 8, !dbg !5797
  %35 = sub i64 -1, %34, !dbg !5797
  %36 = icmp ule i64 %33, %35, !dbg !5797
  br i1 %36, label %92, label %96, !dbg !5797

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5797

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5797

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5797

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5797
  %42 = icmp eq i64 %41, -1, !dbg !5797
  br i1 %42, label %43, label %55, !dbg !5797

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5797

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5797
  %46 = add i64 %45, 0, !dbg !5797
  %47 = icmp ult i64 0, %46, !dbg !5797
  br i1 %47, label %92, label %96, !dbg !5797

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5797
  %50 = icmp ult i64 0, %49, !dbg !5797
  br i1 %50, label %51, label %96, !dbg !5797

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5797
  %53 = sub i64 %52, 1, !dbg !5797
  %54 = icmp ult i64 -1, %53, !dbg !5797
  br i1 %54, label %92, label %96, !dbg !5797

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5797
  %57 = udiv i64 0, %56, !dbg !5797
  %58 = load i64, i64* %6, align 8, !dbg !5797
  %59 = icmp ult i64 %57, %58, !dbg !5797
  br i1 %59, label %92, label %96, !dbg !5797

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5797
  %62 = icmp eq i64 %61, 0, !dbg !5797
  br i1 %62, label %63, label %64, !dbg !5797

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5797

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5797
  %66 = icmp ult i64 %65, 0, !dbg !5797
  br i1 %66, label %67, label %87, !dbg !5797

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5797

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5797

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5797

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5797
  %72 = icmp eq i64 %71, -1, !dbg !5797
  br i1 %72, label %73, label %82, !dbg !5797

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5797

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5797
  %76 = add i64 %75, 0, !dbg !5797
  %77 = icmp ult i64 0, %76, !dbg !5797
  br i1 %77, label %92, label %96, !dbg !5797

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5797
  %80 = sub i64 %79, 1, !dbg !5797
  %81 = icmp ult i64 -1, %80, !dbg !5797
  br i1 %81, label %92, label %96, !dbg !5797

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5797
  %84 = udiv i64 0, %83, !dbg !5797
  %85 = load i64, i64* %7, align 8, !dbg !5797
  %86 = icmp ult i64 %84, %85, !dbg !5797
  br i1 %86, label %92, label %96, !dbg !5797

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5797
  %89 = udiv i64 -1, %88, !dbg !5797
  %90 = load i64, i64* %6, align 8, !dbg !5797
  %91 = icmp ult i64 %89, %90, !dbg !5797
  br i1 %91, label %92, label %96, !dbg !5797

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5797
  %94 = load i64, i64* %7, align 8, !dbg !5797
  %95 = mul i64 %93, %94, !dbg !5797
  store i64 %95, i64* %8, align 8, !dbg !5797
  br label %100, !dbg !5797

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5797
  %98 = load i64, i64* %7, align 8, !dbg !5797
  %99 = mul i64 %97, %98, !dbg !5797
  store i64 %99, i64* %8, align 8, !dbg !5797
  br label %100, !dbg !5797

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5797
  %102 = icmp ne i32 %101, 0, !dbg !5797
  br i1 %102, label %103, label %105, !dbg !5799

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !5800
  store i32 12, i32* %104, align 4, !dbg !5802
  store i8* null, i8** %4, align 8, !dbg !5803
  br label %109, !dbg !5803

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5804
  %107 = load i64, i64* %8, align 8, !dbg !5805
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5806
  store i8* %108, i8** %4, align 8, !dbg !5807
  br label %109, !dbg !5807

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5808
  ret i8* %110, !dbg !5808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5809 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5812, metadata !DIExpression()), !dbg !5816
  %5 = load i32, i32* %3, align 4, !dbg !5817
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5819
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5820
  %8 = icmp ne i32 %7, 0, !dbg !5820
  br i1 %8, label %9, label %10, !dbg !5821

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5822
  br label %18, !dbg !5822

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5823
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.259, i64 0, i64 0)), !dbg !5825
  br i1 %12, label %17, label %13, !dbg !5826

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5827
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.260, i64 0, i64 0)), !dbg !5828
  br i1 %15, label %17, label %16, !dbg !5829

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5830
  br label %18, !dbg !5830

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5831
  br label %18, !dbg !5831

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5832
  ret i1 %19, !dbg !5832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5833 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5836, metadata !DIExpression()), !dbg !5837
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5838, metadata !DIExpression()), !dbg !5839
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5840, metadata !DIExpression()), !dbg !5841
  %7 = load i32, i32* %4, align 4, !dbg !5842
  %8 = load i8*, i8** %5, align 8, !dbg !5843
  %9 = load i64, i64* %6, align 8, !dbg !5844
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5845
  ret i32 %10, !dbg !5846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5847 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5850, metadata !DIExpression()), !dbg !5851
  %3 = load i32, i32* %2, align 4, !dbg !5852
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5853
  ret i8* %4, !dbg !5854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5855 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5856, metadata !DIExpression()), !dbg !5857
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5858, metadata !DIExpression()), !dbg !5859
  %4 = load i32, i32* %2, align 4, !dbg !5860
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !5861
  store i8* %5, i8** %3, align 8, !dbg !5859
  %6 = load i8*, i8** %3, align 8, !dbg !5862
  ret i8* %6, !dbg !5863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5864 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5865, metadata !DIExpression()), !dbg !5866
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5867, metadata !DIExpression()), !dbg !5868
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5869, metadata !DIExpression()), !dbg !5870
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5871, metadata !DIExpression()), !dbg !5872
  %10 = load i32, i32* %5, align 4, !dbg !5873
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5874
  store i8* %11, i8** %8, align 8, !dbg !5872
  %12 = load i8*, i8** %8, align 8, !dbg !5875
  %13 = icmp eq i8* %12, null, !dbg !5877
  br i1 %13, label %14, label %21, !dbg !5878

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5879
  %16 = icmp ugt i64 %15, 0, !dbg !5882
  br i1 %16, label %17, label %20, !dbg !5883

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5884
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5884
  store i8 0, i8* %19, align 1, !dbg !5885
  br label %20, !dbg !5884

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5886
  br label %45, !dbg !5886

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5887, metadata !DIExpression()), !dbg !5889
  %22 = load i8*, i8** %8, align 8, !dbg !5890
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !5891
  store i64 %23, i64* %9, align 8, !dbg !5889
  %24 = load i64, i64* %9, align 8, !dbg !5892
  %25 = load i64, i64* %7, align 8, !dbg !5894
  %26 = icmp ult i64 %24, %25, !dbg !5895
  br i1 %26, label %27, label %32, !dbg !5896

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5897
  %29 = load i8*, i8** %8, align 8, !dbg !5899
  %30 = load i64, i64* %9, align 8, !dbg !5900
  %31 = add i64 %30, 1, !dbg !5901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5902
  store i32 0, i32* %4, align 4, !dbg !5903
  br label %45, !dbg !5903

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5904
  %34 = icmp ugt i64 %33, 0, !dbg !5907
  br i1 %34, label %35, label %44, !dbg !5908

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5909
  %37 = load i8*, i8** %8, align 8, !dbg !5911
  %38 = load i64, i64* %7, align 8, !dbg !5912
  %39 = sub i64 %38, 1, !dbg !5913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5914
  %40 = load i8*, i8** %6, align 8, !dbg !5915
  %41 = load i64, i64* %7, align 8, !dbg !5916
  %42 = sub i64 %41, 1, !dbg !5917
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5915
  store i8 0, i8* %43, align 1, !dbg !5918
  br label %44, !dbg !5919

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5920
  br label %45, !dbg !5920

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5921
  ret i32 %46, !dbg !5921
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

!llvm.dbg.cu = !{!2, !65, !196, !348, !350, !352, !201, !208, !323, !354, !357, !359, !361, !363, !365, !367, !375, !240, !250, !255, !388, !390, !315, !396, !412, !414, !416, !418, !420, !329, !422, !424, !426, !428, !431, !433, !435}
!llvm.ident = !{!437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437, !437}
!llvm.module.flags = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 52, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/expand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c80215ff64ab09027a1b86db960a2307")
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
!27 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!28 = !{!29, !0, !38, !52}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !31, file: !32, line: 575, type: !25, isLocal: true, isDefinition: true)
!31 = distinct !DISubprogram(name: "oputs_", scope: !32, file: !32, line: 573, type: !33, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!32 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!37 = !{}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 54, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1280, elements: !50)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !43, line: 50, size: 256, elements: !44)
!43 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!44 = !{!45, !46, !47, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 52, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !42, file: !43, line: 55, baseType: !25, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !42, file: !43, line: 56, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !42, file: !43, line: 57, baseType: !25, size: 32, offset: 192)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "line_in", scope: !54, file: !3, line: 110, type: !57, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 102, type: !55, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2097152, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 262144)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 272, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 34)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !65, file: !66, line: 30, type: !27, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !91, globals: !94, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!67 = !{!5, !68, !82}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !69, line: 42, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!71 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!72 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!73 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!74 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!75 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!76 = !DIEnumerator(name: "c_quoting_style", value: 5)
!77 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!78 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!79 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!80 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!81 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 44, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!86 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!87 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!88 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!89 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!90 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!91 = !{!25, !26, !27, !92, !93, !24}
!92 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !{!63, !95, !97, !158, !163, !165, !173, !175, !177, !179, !181, !183, !188, !191}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "exit_status", scope: !65, file: !66, line: 69, type: !25, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "prev_file", scope: !99, file: !66, line: 351, type: !22, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "next_file", scope: !66, file: !66, line: 349, type: !100, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !105)
!104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !107)
!106 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !123, !125, !126, !127, !130, !131, !133, !137, !140, !142, !145, !148, !149, !150, !153, !154}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !105, file: !106, line: 51, baseType: !25, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !105, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !105, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !105, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !105, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !105, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !105, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !105, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !105, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !105, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !105, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !105, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !105, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !106, line: 36, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !105, file: !106, line: 70, baseType: !124, size: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !105, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !105, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !105, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !129, line: 152, baseType: !92)
!129 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !105, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !105, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !105, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !105, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !106, line: 43, baseType: null)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !105, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !129, line: 153, baseType: !92)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !105, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !106, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !105, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !106, line: 38, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !105, file: !106, line: 93, baseType: !124, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !105, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !105, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !93)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !105, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !105, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 20)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "max_column_width", scope: !65, file: !66, line: 42, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !161, line: 130, baseType: !162)
!161 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !152, line: 35, baseType: !92)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !65, file: !66, line: 54, type: !160, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "tab_list", scope: !65, file: !66, line: 47, type: !167, isLocal: true, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !169, line: 20, baseType: !170)
!169 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !171, line: 101, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !129, line: 72, baseType: !92)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !65, file: !66, line: 50, type: !160, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "extend_size", scope: !65, file: !66, line: 36, type: !168, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "increment_size", scope: !65, file: !66, line: 39, type: !168, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "tab_size", scope: !65, file: !66, line: 33, type: !168, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !65, file: !66, line: 66, type: !27, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !65, file: !66, line: 60, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 2)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "file_list", scope: !65, file: !66, line: 57, type: !190, isLocal: true, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !193, file: !32, line: 575, type: !25, isLocal: true, isDefinition: true)
!193 = distinct !DISubprogram(name: "oputs_", scope: !32, file: !32, line: 573, type: !33, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "Version", scope: !196, file: !197, line: 3, type: !35, isLocal: false, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !198, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!198 = !{!194}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "file_name", scope: !201, file: !202, line: 45, type: !35, isLocal: true, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !203, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!203 = !{!199, !204}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !201, file: !202, line: 55, type: !27, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !208, file: !209, line: 66, type: !237, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, globals: !211, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!210 = !{!24}
!211 = !{!212, !231, !206, !233, !235}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "old_file_name", scope: !214, file: !209, line: 304, type: !35, isLocal: true, isDefinition: true)
!214 = distinct !DISubprogram(name: "verror_at_line", scope: !209, file: !209, line: 298, type: !215, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !208, retainedNodes: !37)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !25, !25, !35, !7, !35, !217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !218, line: 52, baseType: !219)
!218 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !220, line: 32, baseType: !221)
!220 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !222, baseType: !223)
!222 = !DIFile(filename: "lib/error.c", directory: "/src")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !224, size: 256, elements: !225)
!224 = !DINamespace(name: "std", scope: null)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !223, file: !222, baseType: !24, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !223, file: !222, baseType: !24, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !223, file: !222, baseType: !24, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !223, file: !222, baseType: !25, size: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !223, file: !222, baseType: !25, size: 32, offset: 224)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "old_line_number", scope: !214, file: !209, line: 305, type: !7, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "error_message_count", scope: !208, file: !209, line: 69, type: !7, isLocal: false, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !208, file: !209, line: 295, type: !25, isLocal: false, isDefinition: true)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "program_name", scope: !240, file: !241, line: 31, type: !35, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !242, globals: !243, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!242 = !{!22}
!243 = !{!238}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "utf07FF", scope: !246, file: !247, line: 46, type: !252, isLocal: true, isDefinition: true)
!246 = distinct !DISubprogram(name: "proper_name_lite", scope: !247, file: !247, line: 38, type: !248, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !37)
!247 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!248 = !DISubroutineType(types: !249)
!249 = !{!35, !35, !35}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !251, splitDebugInlining: false, nameTableKind: None)
!251 = !{!244}
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 16, elements: !186)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !255, file: !256, line: 76, type: !309, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !263, globals: !264, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!257 = !{!68, !258, !5}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !69, line: 254, baseType: !7, size: 32, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!261 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!262 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!263 = !{!25, !26, !151}
!264 = !{!253, !265, !271, !283, !285, !290, !298, !305, !307}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !255, file: !256, line: 92, type: !267, isLocal: false, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 320, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!269 = !{!270}
!270 = !DISubrange(count: 10)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !255, file: !256, line: 1040, type: !273, isLocal: false, isDefinition: true)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !256, line: 56, size: 448, elements: !274)
!274 = !{!275, !276, !277, !281, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !273, file: !256, line: 59, baseType: !68, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !256, line: 62, baseType: !25, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !273, file: !256, line: 66, baseType: !278, size: 256, offset: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !273, file: !256, line: 69, baseType: !35, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !273, file: !256, line: 72, baseType: !35, size: 64, offset: 384)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !255, file: !256, line: 107, type: !273, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "slot0", scope: !255, file: !256, line: 831, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 256)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "quote", scope: !292, file: !256, line: 228, type: !295, isLocal: true, isDefinition: true)
!292 = distinct !DISubprogram(name: "gettext_quote", scope: !256, file: !256, line: 197, type: !293, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !37)
!293 = !DISubroutineType(types: !294)
!294 = !{!35, !35, !68}
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !296)
!296 = !{!187, !297}
!297 = !DISubrange(count: 4)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "slotvec", scope: !255, file: !256, line: 834, type: !300, isLocal: true, isDefinition: true)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !256, line: 823, size: 128, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !301, file: !256, line: 825, baseType: !151, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !256, line: 826, baseType: !22, size: 64, offset: 64)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "nslots", scope: !255, file: !256, line: 832, type: !25, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "slotvec0", scope: !255, file: !256, line: 833, type: !301, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 704, elements: !311)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!311 = !{!312}
!312 = !DISubrange(count: 11)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !315, file: !316, line: 26, type: !318, isLocal: false, isDefinition: true)
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !317, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!317 = !{!313}
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 47)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "exit_failure", scope: !323, file: !324, line: 24, type: !326, isLocal: false, isDefinition: true)
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !325, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!325 = !{!321}
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "internal_state", scope: !329, file: !330, line: 97, type: !334, isLocal: true, isDefinition: true)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !331, globals: !333, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!331 = !{!24, !151, !332}
!332 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!333 = !{!327}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !335, line: 6, baseType: !336)
!335 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !337, line: 21, baseType: !338)
!337 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 13, size: 64, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !338, file: !337, line: 15, baseType: !25, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !338, file: !337, line: 20, baseType: !342, size: 32, offset: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !337, line: 16, size: 32, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !342, file: !337, line: 18, baseType: !7, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !342, file: !337, line: 19, baseType: !346, size: 32)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !347)
!347 = !{!297}
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/c-ctype.c", directory: "/src", checksumkind: CSK_MD5, checksum: "245df19f202f37bba31cfa46647ceb93")
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/c32isblank.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fdc50bdf98dbcb7b574dd3202ecd546c")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/c32width.c", directory: "/src", checksumkind: CSK_MD5, checksum: "85b2c5ee6f572eb09c0f075561e000ef")
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !356, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!356 = !{!82}
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!363 = distinct !DICompileUnit(language: DW_LANG_C99, file: !364, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!364 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !369, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/mbbuf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b7bac851fa0e451a46f67e401f301ae1")
!369 = !{!370}
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 127, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!372 = !{!373}
!373 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!374 = !{!332}
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !377, retainedTypes: !387, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/mcel.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4bc577b690b70e5442e17a02996a7034")
!377 = !{!370, !378, !381, !384}
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 130, baseType: !7, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 131, baseType: !7, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 150, baseType: !7, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIEnumerator(name: "MCEL_ERR_SHIFT", value: 14)
!387 = !{!151}
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !389, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!389 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!392 = !{!393}
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 40, baseType: !7, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !398, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!398 = !{!399, !406}
!399 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !400, file: !397, line: 188, baseType: !7, size: 32, elements: !404)
!400 = distinct !DISubprogram(name: "x2nrealloc", scope: !397, file: !397, line: 176, type: !401, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!401 = !DISubroutineType(types: !402)
!402 = !{!24, !24, !403, !151}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!404 = !{!405}
!405 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !407, file: !397, line: 228, baseType: !7, size: 32, elements: !404)
!407 = distinct !DISubprogram(name: "xpalloc", scope: !397, file: !397, line: 223, type: !408, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!408 = !DISubroutineType(types: !409)
!409 = !{!24, !24, !410, !160, !162, !160}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!411 = !{!22, !24, !27, !92, !93}
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !430, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!430 = !{!27, !93, !24}
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !210, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!437 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!438 = !{i32 7, !"Dwarf Version", i32 5}
!439 = !{i32 2, !"Debug Info Version", i32 3}
!440 = !{i32 1, !"wchar_size", i32 4}
!441 = !{i32 1, !"branch-target-enforcement", i32 0}
!442 = !{i32 1, !"sign-return-address", i32 0}
!443 = !{i32 1, !"sign-return-address-all", i32 0}
!444 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!445 = !{i32 7, !"PIC Level", i32 2}
!446 = !{i32 7, !"PIE Level", i32 2}
!447 = !{i32 7, !"uwtable", i32 1}
!448 = !{i32 7, !"frame-pointer", i32 1}
!449 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !450, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !25}
!452 = !DILocalVariable(name: "status", arg: 1, scope: !449, file: !3, line: 64, type: !25)
!453 = !DILocation(line: 64, column: 12, scope: !449)
!454 = !DILocation(line: 66, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !3, line: 66, column: 7)
!456 = !DILocation(line: 66, column: 14, scope: !455)
!457 = !DILocation(line: 66, column: 7, scope: !449)
!458 = !DILocation(line: 67, column: 5, scope: !455)
!459 = !DILocation(line: 67, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 67, column: 5)
!461 = !DILocation(line: 70, column: 15, scope: !462)
!462 = distinct !DILexicalBlock(scope: !455, file: !3, line: 69, column: 5)
!463 = !DILocation(line: 73, column: 15, scope: !462)
!464 = !DILocation(line: 70, column: 7, scope: !462)
!465 = !DILocation(line: 74, column: 7, scope: !462)
!466 = !DILocation(line: 78, column: 7, scope: !462)
!467 = !DILocation(line: 79, column: 7, scope: !462)
!468 = !DILocation(line: 81, column: 7, scope: !462)
!469 = !DILocation(line: 85, column: 7, scope: !462)
!470 = !DILocation(line: 89, column: 7, scope: !462)
!471 = !DILocation(line: 90, column: 7, scope: !462)
!472 = !DILocation(line: 91, column: 7, scope: !462)
!473 = !DILocation(line: 92, column: 7, scope: !462)
!474 = !DILocation(line: 94, column: 9, scope: !449)
!475 = !DILocation(line: 94, column: 3, scope: !449)
!476 = distinct !DISubprogram(name: "emit_stdin_note", scope: !32, file: !32, line: 727, type: !55, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!477 = !DILocation(line: 729, column: 3, scope: !476)
!478 = !DILocation(line: 732, column: 1, scope: !476)
!479 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !32, file: !32, line: 734, type: !55, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!480 = !DILocation(line: 736, column: 3, scope: !479)
!481 = !DILocation(line: 739, column: 1, scope: !479)
!482 = !DILocalVariable(name: "program", arg: 1, scope: !31, file: !32, line: 573, type: !35)
!483 = !DILocation(line: 573, column: 34, scope: !31)
!484 = !DILocalVariable(name: "option", arg: 2, scope: !31, file: !32, line: 573, type: !35)
!485 = !DILocation(line: 573, column: 55, scope: !31)
!486 = !DILocation(line: 581, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !31, file: !32, line: 581, column: 7)
!488 = !DILocation(line: 581, column: 19, scope: !487)
!489 = !DILocation(line: 581, column: 7, scope: !31)
!490 = !DILocalVariable(name: "term", scope: !491, file: !32, line: 585, type: !35)
!491 = distinct !DILexicalBlock(scope: !487, file: !32, line: 582, column: 5)
!492 = !DILocation(line: 585, column: 19, scope: !491)
!493 = !DILocation(line: 585, column: 26, scope: !491)
!494 = !DILocation(line: 586, column: 23, scope: !491)
!495 = !DILocation(line: 586, column: 28, scope: !491)
!496 = !DILocation(line: 586, column: 33, scope: !491)
!497 = !DILocation(line: 586, column: 32, scope: !491)
!498 = !DILocation(line: 586, column: 38, scope: !491)
!499 = !DILocation(line: 586, column: 48, scope: !491)
!500 = !DILocation(line: 586, column: 41, scope: !491)
!501 = !DILocation(line: 586, column: 19, scope: !491)
!502 = !DILocation(line: 587, column: 5, scope: !491)
!503 = !DILocation(line: 588, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !31, file: !32, line: 588, column: 7)
!505 = !DILocation(line: 588, column: 7, scope: !31)
!506 = !DILocation(line: 590, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !32, line: 589, column: 5)
!508 = !DILocation(line: 591, column: 7, scope: !507)
!509 = !DILocalVariable(name: "double_space", scope: !31, file: !32, line: 594, type: !27)
!510 = !DILocation(line: 594, column: 8, scope: !31)
!511 = !DILocalVariable(name: "first_word", scope: !31, file: !32, line: 595, type: !35)
!512 = !DILocation(line: 595, column: 15, scope: !31)
!513 = !DILocation(line: 595, column: 28, scope: !31)
!514 = !DILocation(line: 595, column: 45, scope: !31)
!515 = !DILocation(line: 595, column: 37, scope: !31)
!516 = !DILocation(line: 595, column: 35, scope: !31)
!517 = !DILocalVariable(name: "option_text", scope: !31, file: !32, line: 596, type: !35)
!518 = !DILocation(line: 596, column: 15, scope: !31)
!519 = !DILocation(line: 596, column: 37, scope: !31)
!520 = !DILocation(line: 596, column: 29, scope: !31)
!521 = !DILocation(line: 597, column: 8, scope: !522)
!522 = distinct !DILexicalBlock(scope: !31, file: !32, line: 597, column: 7)
!523 = !DILocation(line: 597, column: 7, scope: !31)
!524 = !DILocation(line: 599, column: 21, scope: !525)
!525 = distinct !DILexicalBlock(scope: !522, file: !32, line: 598, column: 5)
!526 = !DILocation(line: 599, column: 19, scope: !525)
!527 = !DILocation(line: 602, column: 20, scope: !525)
!528 = !DILocation(line: 603, column: 5, scope: !525)
!529 = !DILocation(line: 604, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !32, line: 604, column: 12)
!531 = !DILocation(line: 604, column: 27, scope: !530)
!532 = !DILocation(line: 604, column: 24, scope: !530)
!533 = !DILocation(line: 604, column: 12, scope: !522)
!534 = !DILocalVariable(name: "s", scope: !535, file: !32, line: 608, type: !35)
!535 = distinct !DILexicalBlock(scope: !530, file: !32, line: 605, column: 5)
!536 = !DILocation(line: 608, column: 19, scope: !535)
!537 = !DILocation(line: 608, column: 23, scope: !535)
!538 = !DILocalVariable(name: "spaces", scope: !535, file: !32, line: 609, type: !151)
!539 = !DILocation(line: 609, column: 14, scope: !535)
!540 = !DILocation(line: 610, column: 7, scope: !535)
!541 = !DILocation(line: 610, column: 14, scope: !535)
!542 = !DILocation(line: 610, column: 18, scope: !535)
!543 = !DILocation(line: 610, column: 16, scope: !535)
!544 = !DILocation(line: 610, column: 30, scope: !535)
!545 = !DILocation(line: 610, column: 33, scope: !535)
!546 = !DILocation(line: 610, column: 40, scope: !535)
!547 = !DILocation(line: 0, scope: !535)
!548 = !DILocation(line: 611, column: 21, scope: !535)
!549 = !DILocation(line: 611, column: 20, scope: !535)
!550 = !DILocation(line: 611, column: 19, scope: !535)
!551 = !DILocation(line: 611, column: 16, scope: !535)
!552 = distinct !{!552, !540, !548, !553}
!553 = !{!"llvm.loop.mustprogress"}
!554 = !DILocation(line: 612, column: 11, scope: !555)
!555 = distinct !DILexicalBlock(scope: !535, file: !32, line: 612, column: 11)
!556 = !DILocation(line: 612, column: 18, scope: !555)
!557 = !DILocation(line: 612, column: 11, scope: !535)
!558 = !DILocation(line: 615, column: 25, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !32, line: 613, column: 9)
!560 = !DILocation(line: 615, column: 23, scope: !559)
!561 = !DILocation(line: 616, column: 24, scope: !559)
!562 = !DILocation(line: 617, column: 9, scope: !559)
!563 = !DILocation(line: 618, column: 5, scope: !535)
!564 = !DILocalVariable(name: "anchor_len", scope: !31, file: !32, line: 620, type: !151)
!565 = !DILocation(line: 620, column: 10, scope: !31)
!566 = !DILocation(line: 620, column: 32, scope: !31)
!567 = !DILocation(line: 620, column: 23, scope: !31)
!568 = !DILocalVariable(name: "desc_text", scope: !31, file: !32, line: 625, type: !35)
!569 = !DILocation(line: 625, column: 15, scope: !31)
!570 = !DILocation(line: 625, column: 27, scope: !31)
!571 = !DILocation(line: 625, column: 41, scope: !31)
!572 = !DILocation(line: 625, column: 39, scope: !31)
!573 = !DILocation(line: 626, column: 3, scope: !31)
!574 = !DILocation(line: 626, column: 11, scope: !31)
!575 = !DILocation(line: 626, column: 10, scope: !31)
!576 = !DILocation(line: 626, column: 21, scope: !31)
!577 = !DILocation(line: 626, column: 25, scope: !31)
!578 = !DILocation(line: 626, column: 24, scope: !31)
!579 = !DILocation(line: 626, column: 35, scope: !31)
!580 = !DILocation(line: 0, scope: !31)
!581 = !DILocation(line: 628, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !32, line: 628, column: 11)
!583 = distinct !DILexicalBlock(scope: !31, file: !32, line: 627, column: 5)
!584 = !DILocation(line: 628, column: 11, scope: !582)
!585 = !DILocation(line: 628, column: 22, scope: !582)
!586 = !DILocation(line: 628, column: 29, scope: !582)
!587 = !DILocation(line: 628, column: 34, scope: !582)
!588 = !DILocation(line: 628, column: 44, scope: !582)
!589 = !DILocation(line: 628, column: 32, scope: !582)
!590 = !DILocation(line: 628, column: 49, scope: !582)
!591 = !DILocation(line: 628, column: 11, scope: !583)
!592 = !DILocation(line: 629, column: 22, scope: !582)
!593 = !DILocation(line: 629, column: 9, scope: !582)
!594 = !DILocation(line: 630, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !32, line: 630, column: 11)
!596 = !DILocation(line: 630, column: 11, scope: !583)
!597 = !DILocation(line: 632, column: 16, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !32, line: 632, column: 15)
!599 = distinct !DILexicalBlock(scope: !595, file: !32, line: 631, column: 9)
!600 = !DILocation(line: 632, column: 15, scope: !598)
!601 = !DILocation(line: 632, column: 26, scope: !598)
!602 = !DILocation(line: 632, column: 34, scope: !598)
!603 = !DILocation(line: 632, column: 37, scope: !598)
!604 = !DILocation(line: 632, column: 15, scope: !599)
!605 = !DILocation(line: 633, column: 13, scope: !598)
!606 = !DILocation(line: 636, column: 16, scope: !607)
!607 = distinct !DILexicalBlock(scope: !599, file: !32, line: 636, column: 15)
!608 = !DILocation(line: 636, column: 29, scope: !607)
!609 = !DILocation(line: 636, column: 34, scope: !607)
!610 = !DILocation(line: 636, column: 44, scope: !607)
!611 = !DILocation(line: 636, column: 32, scope: !607)
!612 = !DILocation(line: 636, column: 49, scope: !607)
!613 = !DILocation(line: 636, column: 15, scope: !599)
!614 = !DILocation(line: 637, column: 13, scope: !607)
!615 = !DILocation(line: 638, column: 9, scope: !599)
!616 = !DILocation(line: 640, column: 16, scope: !583)
!617 = distinct !{!617, !573, !618, !553}
!618 = !DILocation(line: 641, column: 5, scope: !31)
!619 = !DILocation(line: 644, column: 3, scope: !31)
!620 = !DILocalVariable(name: "url_program", scope: !31, file: !32, line: 648, type: !35)
!621 = !DILocation(line: 648, column: 15, scope: !31)
!622 = !DILocation(line: 648, column: 38, scope: !31)
!623 = !DILocation(line: 648, column: 31, scope: !31)
!624 = !DILocation(line: 649, column: 38, scope: !31)
!625 = !DILocation(line: 649, column: 31, scope: !31)
!626 = !DILocation(line: 650, column: 38, scope: !31)
!627 = !DILocation(line: 650, column: 31, scope: !31)
!628 = !DILocation(line: 651, column: 38, scope: !31)
!629 = !DILocation(line: 651, column: 31, scope: !31)
!630 = !DILocation(line: 652, column: 38, scope: !31)
!631 = !DILocation(line: 652, column: 31, scope: !31)
!632 = !DILocation(line: 653, column: 38, scope: !31)
!633 = !DILocation(line: 653, column: 31, scope: !31)
!634 = !DILocation(line: 654, column: 38, scope: !31)
!635 = !DILocation(line: 654, column: 31, scope: !31)
!636 = !DILocation(line: 655, column: 38, scope: !31)
!637 = !DILocation(line: 655, column: 31, scope: !31)
!638 = !DILocation(line: 656, column: 38, scope: !31)
!639 = !DILocation(line: 656, column: 31, scope: !31)
!640 = !DILocation(line: 657, column: 38, scope: !31)
!641 = !DILocation(line: 657, column: 31, scope: !31)
!642 = !DILocation(line: 658, column: 31, scope: !31)
!643 = !DILocation(line: 663, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !31, file: !32, line: 663, column: 7)
!645 = !DILocation(line: 664, column: 7, scope: !644)
!646 = !DILocation(line: 664, column: 10, scope: !644)
!647 = !DILocation(line: 663, column: 7, scope: !31)
!648 = !DILocation(line: 670, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !32, line: 665, column: 5)
!650 = !DILocation(line: 670, column: 28, scope: !649)
!651 = !DILocation(line: 670, column: 47, scope: !649)
!652 = !DILocation(line: 670, column: 41, scope: !649)
!653 = !DILocation(line: 670, column: 59, scope: !649)
!654 = !DILocation(line: 669, column: 7, scope: !649)
!655 = !DILocation(line: 671, column: 5, scope: !649)
!656 = !DILocation(line: 676, column: 48, scope: !657)
!657 = distinct !DILexicalBlock(scope: !644, file: !32, line: 673, column: 5)
!658 = !DILocation(line: 677, column: 21, scope: !657)
!659 = !DILocation(line: 677, column: 15, scope: !657)
!660 = !DILocation(line: 677, column: 33, scope: !657)
!661 = !DILocation(line: 676, column: 7, scope: !657)
!662 = !DILocation(line: 679, column: 3, scope: !31)
!663 = !DILocation(line: 683, column: 3, scope: !31)
!664 = !DILocation(line: 686, column: 3, scope: !31)
!665 = !DILocation(line: 688, column: 3, scope: !31)
!666 = !DILocation(line: 691, column: 3, scope: !31)
!667 = !DILocation(line: 695, column: 3, scope: !31)
!668 = !DILocation(line: 696, column: 1, scope: !31)
!669 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !32, file: !32, line: 836, type: !670, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !35}
!672 = !DILocalVariable(name: "program", arg: 1, scope: !669, file: !32, line: 836, type: !35)
!673 = !DILocation(line: 836, column: 34, scope: !669)
!674 = !DILocalVariable(name: "infomap", scope: !669, file: !32, line: 838, type: !675)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 896, elements: !681)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !669, file: !32, line: 838, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !677, file: !32, line: 838, baseType: !35, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !32, line: 838, baseType: !35, size: 64, offset: 64)
!681 = !{!682}
!682 = !DISubrange(count: 7)
!683 = !DILocation(line: 838, column: 67, scope: !669)
!684 = !DILocalVariable(name: "node", scope: !669, file: !32, line: 848, type: !35)
!685 = !DILocation(line: 848, column: 15, scope: !669)
!686 = !DILocation(line: 848, column: 22, scope: !669)
!687 = !DILocalVariable(name: "map_prog", scope: !669, file: !32, line: 849, type: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!689 = !DILocation(line: 849, column: 25, scope: !669)
!690 = !DILocation(line: 849, column: 36, scope: !669)
!691 = !DILocation(line: 851, column: 3, scope: !669)
!692 = !DILocation(line: 851, column: 10, scope: !669)
!693 = !DILocation(line: 851, column: 20, scope: !669)
!694 = !DILocation(line: 851, column: 28, scope: !669)
!695 = !DILocation(line: 851, column: 40, scope: !669)
!696 = !DILocation(line: 851, column: 49, scope: !669)
!697 = !DILocation(line: 851, column: 59, scope: !669)
!698 = !DILocation(line: 851, column: 33, scope: !669)
!699 = !DILocation(line: 851, column: 31, scope: !669)
!700 = !DILocation(line: 0, scope: !669)
!701 = !DILocation(line: 852, column: 13, scope: !669)
!702 = distinct !{!702, !691, !701, !553}
!703 = !DILocation(line: 854, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !669, file: !32, line: 854, column: 7)
!705 = !DILocation(line: 854, column: 17, scope: !704)
!706 = !DILocation(line: 854, column: 7, scope: !669)
!707 = !DILocation(line: 855, column: 12, scope: !704)
!708 = !DILocation(line: 855, column: 22, scope: !704)
!709 = !DILocation(line: 855, column: 10, scope: !704)
!710 = !DILocation(line: 855, column: 5, scope: !704)
!711 = !DILocation(line: 857, column: 3, scope: !669)
!712 = !DILocalVariable(name: "lc_messages", scope: !669, file: !32, line: 861, type: !35)
!713 = !DILocation(line: 861, column: 15, scope: !669)
!714 = !DILocation(line: 861, column: 29, scope: !669)
!715 = !DILocation(line: 862, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !669, file: !32, line: 862, column: 7)
!717 = !DILocation(line: 862, column: 19, scope: !716)
!718 = !DILocation(line: 862, column: 22, scope: !716)
!719 = !DILocation(line: 862, column: 7, scope: !669)
!720 = !DILocation(line: 868, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !32, line: 863, column: 5)
!722 = !DILocation(line: 870, column: 5, scope: !721)
!723 = !DILocalVariable(name: "url_program", scope: !669, file: !32, line: 874, type: !35)
!724 = !DILocation(line: 874, column: 15, scope: !669)
!725 = !DILocation(line: 874, column: 36, scope: !669)
!726 = !DILocation(line: 874, column: 29, scope: !669)
!727 = !DILocation(line: 874, column: 61, scope: !669)
!728 = !DILocation(line: 875, column: 11, scope: !669)
!729 = !DILocation(line: 876, column: 24, scope: !669)
!730 = !DILocation(line: 875, column: 3, scope: !669)
!731 = !DILocation(line: 877, column: 11, scope: !669)
!732 = !DILocation(line: 878, column: 11, scope: !669)
!733 = !DILocation(line: 878, column: 17, scope: !669)
!734 = !DILocation(line: 878, column: 25, scope: !669)
!735 = !DILocation(line: 878, column: 22, scope: !669)
!736 = !DILocation(line: 877, column: 3, scope: !669)
!737 = !DILocation(line: 879, column: 1, scope: !669)
!738 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !739, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!739 = !DISubroutineType(types: !740)
!740 = !{!25, !25, !190}
!741 = !DILocalVariable(name: "argc", arg: 1, scope: !738, file: !3, line: 189, type: !25)
!742 = !DILocation(line: 189, column: 11, scope: !738)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !738, file: !3, line: 189, type: !190)
!744 = !DILocation(line: 189, column: 24, scope: !738)
!745 = !DILocalVariable(name: "c", scope: !738, file: !3, line: 191, type: !25)
!746 = !DILocation(line: 191, column: 7, scope: !738)
!747 = !DILocation(line: 194, column: 21, scope: !738)
!748 = !DILocation(line: 194, column: 3, scope: !738)
!749 = !DILocation(line: 195, column: 3, scope: !738)
!750 = !DILocation(line: 196, column: 3, scope: !738)
!751 = !DILocation(line: 197, column: 3, scope: !738)
!752 = !DILocation(line: 199, column: 3, scope: !738)
!753 = !DILocation(line: 200, column: 23, scope: !738)
!754 = !DILocation(line: 202, column: 3, scope: !738)
!755 = !DILocation(line: 202, column: 28, scope: !738)
!756 = !DILocation(line: 202, column: 34, scope: !738)
!757 = !DILocation(line: 202, column: 15, scope: !738)
!758 = !DILocation(line: 202, column: 13, scope: !738)
!759 = !DILocation(line: 202, column: 68, scope: !738)
!760 = !DILocation(line: 204, column: 15, scope: !761)
!761 = distinct !DILexicalBlock(scope: !738, file: !3, line: 203, column: 5)
!762 = !DILocation(line: 204, column: 7, scope: !761)
!763 = !DILocation(line: 207, column: 31, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 205, column: 9)
!765 = !DILocation(line: 208, column: 11, scope: !764)
!766 = !DILocation(line: 211, column: 28, scope: !764)
!767 = !DILocation(line: 211, column: 11, scope: !764)
!768 = !DILocation(line: 212, column: 11, scope: !764)
!769 = !DILocation(line: 216, column: 15, scope: !770)
!770 = distinct !DILexicalBlock(scope: !764, file: !3, line: 216, column: 15)
!771 = !DILocation(line: 216, column: 15, scope: !764)
!772 = !DILocation(line: 217, column: 30, scope: !770)
!773 = !DILocation(line: 217, column: 37, scope: !770)
!774 = !DILocation(line: 217, column: 13, scope: !770)
!775 = !DILocalVariable(name: "tab_stop", scope: !776, file: !3, line: 220, type: !777)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 219, column: 13)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !186)
!778 = !DILocation(line: 220, column: 20, scope: !776)
!779 = !DILocation(line: 221, column: 29, scope: !776)
!780 = !DILocation(line: 221, column: 15, scope: !776)
!781 = !DILocation(line: 221, column: 27, scope: !776)
!782 = !DILocation(line: 222, column: 15, scope: !776)
!783 = !DILocation(line: 222, column: 27, scope: !776)
!784 = !DILocation(line: 223, column: 32, scope: !776)
!785 = !DILocation(line: 223, column: 15, scope: !776)
!786 = !DILocation(line: 225, column: 11, scope: !764)
!787 = !DILocation(line: 227, column: 9, scope: !764)
!788 = !DILocation(line: 229, column: 9, scope: !764)
!789 = !DILocation(line: 232, column: 11, scope: !764)
!790 = distinct !{!790, !754, !791, !553}
!791 = !DILocation(line: 234, column: 5, scope: !738)
!792 = !DILocation(line: 236, column: 3, scope: !738)
!793 = !DILocation(line: 238, column: 18, scope: !738)
!794 = !DILocation(line: 238, column: 27, scope: !738)
!795 = !DILocation(line: 238, column: 25, scope: !738)
!796 = !DILocation(line: 238, column: 35, scope: !738)
!797 = !DILocation(line: 238, column: 40, scope: !738)
!798 = !DILocation(line: 238, column: 3, scope: !738)
!799 = !DILocation(line: 240, column: 3, scope: !738)
!800 = !DILocation(line: 242, column: 3, scope: !738)
!801 = !DILocation(line: 244, column: 10, scope: !738)
!802 = !DILocation(line: 244, column: 3, scope: !738)
!803 = !DILocalVariable(name: "fp", scope: !54, file: !3, line: 105, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !806, file: !106, line: 51, baseType: !25, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !806, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !806, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !806, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !806, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !806, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !806, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !806, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !806, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !806, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !806, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !806, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !806, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !806, file: !106, line: 70, baseType: !822, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !806, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !806, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !806, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !806, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !806, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !806, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !806, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !806, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !806, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !806, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !806, file: !106, line: 93, baseType: !822, size: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !806, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !806, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !806, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !806, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!838 = !DILocation(line: 105, column: 9, scope: !54)
!839 = !DILocation(line: 105, column: 14, scope: !54)
!840 = !DILocation(line: 107, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !54, file: !3, line: 107, column: 7)
!842 = !DILocation(line: 107, column: 7, scope: !54)
!843 = !DILocation(line: 108, column: 5, scope: !841)
!844 = !DILocalVariable(name: "mbbuf", scope: !54, file: !3, line: 111, type: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !846, line: 50, baseType: !847)
!846 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 43, size: 320, elements: !848)
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !847, file: !846, line: 45, baseType: !22, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !847, file: !846, line: 46, baseType: !804, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !847, file: !846, line: 47, baseType: !160, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !847, file: !846, line: 48, baseType: !160, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !847, file: !846, line: 49, baseType: !160, size: 64, offset: 256)
!854 = !DILocation(line: 111, column: 11, scope: !54)
!855 = !DILocation(line: 112, column: 48, scope: !54)
!856 = !DILocation(line: 112, column: 3, scope: !54)
!857 = !DILocation(line: 114, column: 3, scope: !54)
!858 = !DILocalVariable(name: "g", scope: !859, file: !3, line: 117, type: !860)
!859 = distinct !DILexicalBlock(scope: !54, file: !3, line: 115, column: 5)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !371, line: 143, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 138, size: 64, elements: !862)
!862 = !{!863, !868, !869}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !861, file: !371, line: 140, baseType: !864, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !865, line: 37, baseType: !866)
!865 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !129, line: 57, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !129, line: 42, baseType: !7)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !861, file: !371, line: 141, baseType: !332, size: 8, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !861, file: !371, line: 142, baseType: !332, size: 8, offset: 40)
!870 = !DILocation(line: 117, column: 14, scope: !859)
!871 = !DILocalVariable(name: "convert", scope: !859, file: !3, line: 120, type: !27)
!872 = !DILocation(line: 120, column: 12, scope: !859)
!873 = !DILocalVariable(name: "column", scope: !859, file: !3, line: 127, type: !168)
!874 = !DILocation(line: 127, column: 13, scope: !859)
!875 = !DILocalVariable(name: "tab_index", scope: !859, file: !3, line: 130, type: !160)
!876 = !DILocation(line: 130, column: 13, scope: !859)
!877 = !DILocation(line: 135, column: 7, scope: !859)
!878 = !DILocation(line: 137, column: 11, scope: !879)
!879 = distinct !DILexicalBlock(scope: !859, file: !3, line: 136, column: 9)
!880 = !DILocation(line: 137, column: 23, scope: !879)
!881 = !DILocation(line: 137, column: 21, scope: !879)
!882 = !DILocation(line: 137, column: 48, scope: !879)
!883 = !DILocation(line: 137, column: 51, scope: !879)
!884 = !DILocation(line: 138, column: 18, scope: !879)
!885 = !DILocation(line: 138, column: 38, scope: !879)
!886 = !DILocation(line: 138, column: 27, scope: !879)
!887 = !DILocation(line: 138, column: 25, scope: !879)
!888 = !DILocation(line: 0, scope: !879)
!889 = !DILocation(line: 139, column: 58, scope: !879)
!890 = !DILocation(line: 139, column: 13, scope: !879)
!891 = distinct !{!891, !878, !892, !553}
!892 = !DILocation(line: 139, column: 60, scope: !879)
!893 = !DILocation(line: 141, column: 15, scope: !894)
!894 = distinct !DILexicalBlock(scope: !879, file: !3, line: 141, column: 15)
!895 = !DILocation(line: 141, column: 15, scope: !879)
!896 = !DILocation(line: 143, column: 26, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 142, column: 13)
!898 = !DILocation(line: 143, column: 46, scope: !897)
!899 = !DILocation(line: 143, column: 61, scope: !897)
!900 = !DILocation(line: 143, column: 49, scope: !897)
!901 = !DILocation(line: 143, column: 23, scope: !897)
!902 = !DILocation(line: 145, column: 21, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !3, line: 145, column: 19)
!904 = !DILocation(line: 145, column: 24, scope: !903)
!905 = !DILocation(line: 145, column: 19, scope: !897)
!906 = !DILocalVariable(name: "last_tab", scope: !907, file: !3, line: 148, type: !27)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 146, column: 17)
!908 = !DILocation(line: 148, column: 24, scope: !907)
!909 = !DILocalVariable(name: "next_tab_column", scope: !907, file: !3, line: 149, type: !168)
!910 = !DILocation(line: 149, column: 25, scope: !907)
!911 = !DILocation(line: 150, column: 44, scope: !907)
!912 = !DILocation(line: 150, column: 23, scope: !907)
!913 = !DILocation(line: 152, column: 19, scope: !907)
!914 = !DILocation(line: 152, column: 26, scope: !907)
!915 = !DILocation(line: 152, column: 37, scope: !907)
!916 = !DILocation(line: 152, column: 35, scope: !907)
!917 = !DILocation(line: 153, column: 25, scope: !918)
!918 = distinct !DILexicalBlock(scope: !907, file: !3, line: 153, column: 25)
!919 = !DILocation(line: 153, column: 39, scope: !918)
!920 = !DILocation(line: 153, column: 25, scope: !907)
!921 = !DILocation(line: 154, column: 23, scope: !918)
!922 = distinct !{!922, !913, !923, !553}
!923 = !DILocation(line: 154, column: 36, scope: !907)
!924 = !DILocation(line: 156, column: 23, scope: !925)
!925 = distinct !DILexicalBlock(scope: !907, file: !3, line: 156, column: 23)
!926 = !DILocation(line: 156, column: 37, scope: !925)
!927 = !DILocation(line: 156, column: 23, scope: !907)
!928 = !DILocation(line: 157, column: 21, scope: !925)
!929 = !DILocation(line: 159, column: 19, scope: !907)
!930 = !DILocation(line: 161, column: 26, scope: !931)
!931 = distinct !DILexicalBlock(scope: !903, file: !3, line: 161, column: 24)
!932 = !DILocation(line: 161, column: 29, scope: !931)
!933 = !DILocation(line: 161, column: 24, scope: !903)
!934 = !DILocation(line: 165, column: 31, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !3, line: 162, column: 17)
!936 = !DILocation(line: 165, column: 30, scope: !935)
!937 = !DILocation(line: 165, column: 29, scope: !935)
!938 = !DILocation(line: 165, column: 26, scope: !935)
!939 = !DILocation(line: 166, column: 34, scope: !935)
!940 = !DILocation(line: 166, column: 33, scope: !935)
!941 = !DILocation(line: 166, column: 32, scope: !935)
!942 = !DILocation(line: 166, column: 29, scope: !935)
!943 = !DILocation(line: 167, column: 17, scope: !935)
!944 = !DILocalVariable(name: "width", scope: !945, file: !3, line: 170, type: !25)
!945 = distinct !DILexicalBlock(scope: !931, file: !3, line: 169, column: 17)
!946 = !DILocation(line: 170, column: 23, scope: !945)
!947 = !DILocation(line: 170, column: 43, scope: !945)
!948 = !DILocation(line: 170, column: 31, scope: !945)
!949 = !DILocation(line: 171, column: 23, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !3, line: 171, column: 23)
!951 = !DILocation(line: 171, column: 23, scope: !945)
!952 = !DILocation(line: 172, column: 21, scope: !950)
!953 = !DILocation(line: 175, column: 13, scope: !897)
!954 = !DILocation(line: 177, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !879, file: !3, line: 177, column: 15)
!956 = !DILocation(line: 177, column: 20, scope: !955)
!957 = !DILocation(line: 177, column: 15, scope: !879)
!958 = !DILocation(line: 178, column: 13, scope: !955)
!959 = !DILocation(line: 180, column: 11, scope: !879)
!960 = !DILocation(line: 181, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !879, file: !3, line: 181, column: 15)
!962 = !DILocation(line: 181, column: 15, scope: !879)
!963 = !DILocation(line: 182, column: 13, scope: !961)
!964 = !DILocation(line: 183, column: 9, scope: !879)
!965 = !DILocation(line: 184, column: 16, scope: !859)
!966 = !DILocation(line: 184, column: 19, scope: !859)
!967 = distinct !{!967, !877, !968, !553}
!968 = !DILocation(line: 184, column: 26, scope: !859)
!969 = distinct !{!969, !857, !970}
!970 = !DILocation(line: 185, column: 5, scope: !54)
!971 = !DILocation(line: 186, column: 1, scope: !54)
!972 = distinct !DISubprogram(name: "c32issep", scope: !32, file: !32, line: 178, type: !973, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!973 = !DISubroutineType(types: !974)
!974 = !{!27, !864}
!975 = !DILocalVariable(name: "wc", arg: 1, scope: !972, file: !32, line: 178, type: !864)
!976 = !DILocation(line: 178, column: 20, scope: !972)
!977 = !DILocation(line: 181, column: 25, scope: !972)
!978 = !DILocation(line: 181, column: 13, scope: !972)
!979 = !DILocation(line: 181, column: 11, scope: !972)
!980 = !DILocation(line: 181, column: 10, scope: !972)
!981 = !DILocation(line: 181, column: 3, scope: !972)
!982 = distinct !DISubprogram(name: "write_error", scope: !32, file: !32, line: 946, type: !55, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !37)
!983 = !DILocalVariable(name: "saved_errno", scope: !982, file: !32, line: 948, type: !25)
!984 = !DILocation(line: 948, column: 7, scope: !982)
!985 = !DILocation(line: 948, column: 21, scope: !982)
!986 = !DILocation(line: 949, column: 3, scope: !982)
!987 = !DILocation(line: 950, column: 11, scope: !982)
!988 = !DILocation(line: 950, column: 3, scope: !982)
!989 = !DILocation(line: 951, column: 3, scope: !982)
!990 = !DILocation(line: 952, column: 3, scope: !982)
!991 = distinct !DISubprogram(name: "add_tab_stop", scope: !66, file: !66, line: 84, type: !992, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !168}
!994 = !DILocalVariable(name: "tabval", arg: 1, scope: !991, file: !66, line: 84, type: !168)
!995 = !DILocation(line: 84, column: 21, scope: !991)
!996 = !DILocalVariable(name: "prev_column", scope: !991, file: !66, line: 86, type: !168)
!997 = !DILocation(line: 86, column: 9, scope: !991)
!998 = !DILocation(line: 86, column: 23, scope: !991)
!999 = !DILocation(line: 86, column: 40, scope: !991)
!1000 = !DILocation(line: 86, column: 49, scope: !991)
!1001 = !DILocation(line: 86, column: 64, scope: !991)
!1002 = !DILocalVariable(name: "column_width", scope: !991, file: !66, line: 87, type: !168)
!1003 = !DILocation(line: 87, column: 9, scope: !991)
!1004 = !DILocation(line: 87, column: 24, scope: !991)
!1005 = !DILocation(line: 87, column: 39, scope: !991)
!1006 = !DILocation(line: 87, column: 36, scope: !991)
!1007 = !DILocation(line: 87, column: 48, scope: !991)
!1008 = !DILocation(line: 87, column: 57, scope: !991)
!1009 = !DILocation(line: 87, column: 55, scope: !991)
!1010 = !DILocation(line: 89, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !991, file: !66, line: 89, column: 7)
!1012 = !DILocation(line: 89, column: 25, scope: !1011)
!1013 = !DILocation(line: 89, column: 22, scope: !1011)
!1014 = !DILocation(line: 89, column: 7, scope: !991)
!1015 = !DILocation(line: 90, column: 25, scope: !1011)
!1016 = !DILocation(line: 90, column: 16, scope: !1011)
!1017 = !DILocation(line: 90, column: 14, scope: !1011)
!1018 = !DILocation(line: 90, column: 5, scope: !1011)
!1019 = !DILocation(line: 91, column: 32, scope: !991)
!1020 = !DILocation(line: 91, column: 3, scope: !991)
!1021 = !DILocation(line: 91, column: 26, scope: !991)
!1022 = !DILocation(line: 91, column: 30, scope: !991)
!1023 = !DILocation(line: 93, column: 25, scope: !991)
!1024 = !DILocation(line: 93, column: 3, scope: !991)
!1025 = !DILocation(line: 94, column: 1, scope: !991)
!1026 = distinct !DISubprogram(name: "set_max_column_width", scope: !66, file: !66, line: 73, type: !992, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1027 = !DILocalVariable(name: "width", arg: 1, scope: !1026, file: !66, line: 73, type: !168)
!1028 = !DILocation(line: 73, column: 29, scope: !1026)
!1029 = !DILocation(line: 75, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !66, line: 75, column: 7)
!1031 = !DILocation(line: 75, column: 26, scope: !1030)
!1032 = !DILocation(line: 75, column: 24, scope: !1030)
!1033 = !DILocation(line: 75, column: 7, scope: !1026)
!1034 = !DILocation(line: 77, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !66, line: 77, column: 11)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !66, line: 76, column: 5)
!1037 = !DILocation(line: 77, column: 11, scope: !1036)
!1038 = !DILocation(line: 78, column: 9, scope: !1035)
!1039 = !DILocation(line: 79, column: 5, scope: !1036)
!1040 = !DILocation(line: 80, column: 1, scope: !1026)
!1041 = distinct !DISubprogram(name: "parse_tab_stops", scope: !66, file: !66, line: 137, type: !670, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1042 = !DILocalVariable(name: "stops", arg: 1, scope: !1041, file: !66, line: 137, type: !35)
!1043 = !DILocation(line: 137, column: 30, scope: !1041)
!1044 = !DILocalVariable(name: "have_tabval", scope: !1041, file: !66, line: 139, type: !27)
!1045 = !DILocation(line: 139, column: 8, scope: !1041)
!1046 = !DILocalVariable(name: "tabval", scope: !1041, file: !66, line: 140, type: !168)
!1047 = !DILocation(line: 140, column: 9, scope: !1041)
!1048 = !DILocalVariable(name: "extend_tabval", scope: !1041, file: !66, line: 141, type: !27)
!1049 = !DILocation(line: 141, column: 8, scope: !1041)
!1050 = !DILocalVariable(name: "increment_tabval", scope: !1041, file: !66, line: 142, type: !27)
!1051 = !DILocation(line: 142, column: 8, scope: !1041)
!1052 = !DILocalVariable(name: "num_start", scope: !1041, file: !66, line: 143, type: !35)
!1053 = !DILocation(line: 143, column: 15, scope: !1041)
!1054 = !DILocalVariable(name: "ok", scope: !1041, file: !66, line: 144, type: !27)
!1055 = !DILocation(line: 144, column: 8, scope: !1041)
!1056 = !DILocation(line: 146, column: 3, scope: !1041)
!1057 = !DILocation(line: 146, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !66, line: 146, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1041, file: !66, line: 146, column: 3)
!1060 = !DILocation(line: 146, column: 10, scope: !1058)
!1061 = !DILocation(line: 146, column: 3, scope: !1059)
!1062 = !DILocation(line: 148, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !66, line: 148, column: 11)
!1064 = distinct !DILexicalBlock(scope: !1058, file: !66, line: 147, column: 5)
!1065 = !DILocation(line: 148, column: 11, scope: !1063)
!1066 = !DILocation(line: 148, column: 18, scope: !1063)
!1067 = !DILocation(line: 148, column: 25, scope: !1063)
!1068 = !DILocation(line: 148, column: 28, scope: !1063)
!1069 = !DILocation(line: 148, column: 11, scope: !1064)
!1070 = !DILocation(line: 150, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !66, line: 150, column: 15)
!1072 = distinct !DILexicalBlock(scope: !1063, file: !66, line: 149, column: 9)
!1073 = !DILocation(line: 150, column: 15, scope: !1072)
!1074 = !DILocation(line: 152, column: 19, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !66, line: 152, column: 19)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !66, line: 151, column: 13)
!1077 = !DILocation(line: 152, column: 19, scope: !1076)
!1078 = !DILocation(line: 154, column: 42, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !66, line: 154, column: 23)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !66, line: 153, column: 17)
!1081 = !DILocation(line: 154, column: 25, scope: !1079)
!1082 = !DILocation(line: 154, column: 23, scope: !1080)
!1083 = !DILocation(line: 156, column: 26, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !66, line: 155, column: 21)
!1085 = !DILocation(line: 157, column: 23, scope: !1084)
!1086 = !DILocation(line: 159, column: 17, scope: !1080)
!1087 = !DILocation(line: 160, column: 24, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1075, file: !66, line: 160, column: 24)
!1089 = !DILocation(line: 160, column: 24, scope: !1075)
!1090 = !DILocation(line: 162, column: 45, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !66, line: 162, column: 23)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !66, line: 161, column: 17)
!1093 = !DILocation(line: 162, column: 25, scope: !1091)
!1094 = !DILocation(line: 162, column: 23, scope: !1092)
!1095 = !DILocation(line: 164, column: 26, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !66, line: 163, column: 21)
!1097 = !DILocation(line: 165, column: 23, scope: !1096)
!1098 = !DILocation(line: 167, column: 17, scope: !1092)
!1099 = !DILocation(line: 169, column: 31, scope: !1088)
!1100 = !DILocation(line: 169, column: 17, scope: !1088)
!1101 = !DILocation(line: 170, column: 13, scope: !1076)
!1102 = !DILocation(line: 171, column: 23, scope: !1072)
!1103 = !DILocation(line: 172, column: 9, scope: !1072)
!1104 = !DILocation(line: 173, column: 17, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1063, file: !66, line: 173, column: 16)
!1106 = !DILocation(line: 173, column: 16, scope: !1105)
!1107 = !DILocation(line: 173, column: 23, scope: !1105)
!1108 = !DILocation(line: 173, column: 16, scope: !1063)
!1109 = !DILocation(line: 175, column: 15, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !66, line: 175, column: 15)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !66, line: 174, column: 9)
!1112 = !DILocation(line: 175, column: 15, scope: !1111)
!1113 = !DILocation(line: 177, column: 15, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !66, line: 176, column: 13)
!1115 = !DILocation(line: 179, column: 18, scope: !1114)
!1116 = !DILocation(line: 180, column: 13, scope: !1114)
!1117 = !DILocation(line: 181, column: 25, scope: !1111)
!1118 = !DILocation(line: 182, column: 28, scope: !1111)
!1119 = !DILocation(line: 183, column: 9, scope: !1111)
!1120 = !DILocation(line: 184, column: 17, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1105, file: !66, line: 184, column: 16)
!1122 = !DILocation(line: 184, column: 16, scope: !1121)
!1123 = !DILocation(line: 184, column: 23, scope: !1121)
!1124 = !DILocation(line: 184, column: 16, scope: !1105)
!1125 = !DILocation(line: 186, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !66, line: 186, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !66, line: 185, column: 9)
!1128 = !DILocation(line: 186, column: 15, scope: !1127)
!1129 = !DILocation(line: 188, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !66, line: 187, column: 13)
!1131 = !DILocation(line: 190, column: 18, scope: !1130)
!1132 = !DILocation(line: 191, column: 13, scope: !1130)
!1133 = !DILocation(line: 192, column: 28, scope: !1127)
!1134 = !DILocation(line: 193, column: 25, scope: !1127)
!1135 = !DILocation(line: 194, column: 9, scope: !1127)
!1136 = !DILocation(line: 195, column: 28, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1121, file: !66, line: 195, column: 16)
!1138 = !DILocation(line: 195, column: 27, scope: !1137)
!1139 = !DILocation(line: 195, column: 16, scope: !1137)
!1140 = !DILocation(line: 195, column: 16, scope: !1121)
!1141 = !DILocation(line: 197, column: 16, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !66, line: 197, column: 15)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !66, line: 196, column: 9)
!1144 = !DILocation(line: 197, column: 15, scope: !1143)
!1145 = !DILocation(line: 199, column: 22, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !66, line: 198, column: 13)
!1147 = !DILocation(line: 200, column: 27, scope: !1146)
!1148 = !DILocation(line: 201, column: 27, scope: !1146)
!1149 = !DILocation(line: 201, column: 25, scope: !1146)
!1150 = !DILocation(line: 202, column: 13, scope: !1146)
!1151 = !DILocation(line: 205, column: 16, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !66, line: 205, column: 15)
!1153 = !DILocation(line: 205, column: 15, scope: !1143)
!1154 = !DILocalVariable(name: "len", scope: !1155, file: !66, line: 207, type: !160)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !66, line: 206, column: 13)
!1156 = !DILocation(line: 207, column: 21, scope: !1155)
!1157 = !DILocation(line: 207, column: 35, scope: !1155)
!1158 = !DILocation(line: 207, column: 27, scope: !1155)
!1159 = !DILocalVariable(name: "bad_num", scope: !1155, file: !66, line: 208, type: !22)
!1160 = !DILocation(line: 208, column: 21, scope: !1155)
!1161 = !DILocation(line: 208, column: 42, scope: !1155)
!1162 = !DILocation(line: 208, column: 53, scope: !1155)
!1163 = !DILocation(line: 208, column: 31, scope: !1155)
!1164 = !DILocation(line: 209, column: 15, scope: !1155)
!1165 = !DILocation(line: 210, column: 21, scope: !1155)
!1166 = !DILocation(line: 210, column: 15, scope: !1155)
!1167 = !DILocation(line: 211, column: 18, scope: !1155)
!1168 = !DILocation(line: 212, column: 23, scope: !1155)
!1169 = !DILocation(line: 212, column: 35, scope: !1155)
!1170 = !DILocation(line: 212, column: 33, scope: !1155)
!1171 = !DILocation(line: 212, column: 39, scope: !1155)
!1172 = !DILocation(line: 212, column: 21, scope: !1155)
!1173 = !DILocation(line: 213, column: 13, scope: !1155)
!1174 = !DILocation(line: 214, column: 9, scope: !1143)
!1175 = !DILocation(line: 217, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1137, file: !66, line: 216, column: 9)
!1177 = !DILocation(line: 219, column: 14, scope: !1176)
!1178 = !DILocation(line: 220, column: 11, scope: !1176)
!1179 = !DILocation(line: 222, column: 5, scope: !1064)
!1180 = !DILocation(line: 146, column: 23, scope: !1058)
!1181 = !DILocation(line: 146, column: 3, scope: !1058)
!1182 = distinct !{!1182, !1061, !1183, !553}
!1183 = !DILocation(line: 222, column: 5, scope: !1059)
!1184 = !DILocation(line: 224, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1041, file: !66, line: 224, column: 7)
!1186 = !DILocation(line: 224, column: 10, scope: !1185)
!1187 = !DILocation(line: 224, column: 13, scope: !1185)
!1188 = !DILocation(line: 224, column: 7, scope: !1041)
!1189 = !DILocation(line: 226, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !66, line: 226, column: 11)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !66, line: 225, column: 5)
!1192 = !DILocation(line: 226, column: 11, scope: !1191)
!1193 = !DILocation(line: 227, column: 32, scope: !1190)
!1194 = !DILocation(line: 227, column: 15, scope: !1190)
!1195 = !DILocation(line: 227, column: 12, scope: !1190)
!1196 = !DILocation(line: 227, column: 9, scope: !1190)
!1197 = !DILocation(line: 228, column: 16, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1190, file: !66, line: 228, column: 16)
!1199 = !DILocation(line: 228, column: 16, scope: !1190)
!1200 = !DILocation(line: 229, column: 35, scope: !1198)
!1201 = !DILocation(line: 229, column: 15, scope: !1198)
!1202 = !DILocation(line: 229, column: 12, scope: !1198)
!1203 = !DILocation(line: 229, column: 9, scope: !1198)
!1204 = !DILocation(line: 231, column: 23, scope: !1198)
!1205 = !DILocation(line: 231, column: 9, scope: !1198)
!1206 = !DILocation(line: 232, column: 5, scope: !1191)
!1207 = !DILocation(line: 234, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1041, file: !66, line: 234, column: 7)
!1209 = !DILocation(line: 234, column: 7, scope: !1041)
!1210 = !DILocation(line: 235, column: 5, scope: !1208)
!1211 = !DILocation(line: 236, column: 1, scope: !1041)
!1212 = distinct !DISubprogram(name: "to_uchar", scope: !32, file: !32, line: 153, type: !1213, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!332, !23}
!1215 = !DILocalVariable(name: "ch", arg: 1, scope: !1212, file: !32, line: 153, type: !23)
!1216 = !DILocation(line: 153, column: 44, scope: !1212)
!1217 = !DILocation(line: 153, column: 57, scope: !1212)
!1218 = !DILocation(line: 153, column: 50, scope: !1212)
!1219 = distinct !DISubprogram(name: "set_extend_size", scope: !66, file: !66, line: 97, type: !1220, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!27, !168}
!1222 = !DILocalVariable(name: "tabval", arg: 1, scope: !1219, file: !66, line: 97, type: !168)
!1223 = !DILocation(line: 97, column: 24, scope: !1219)
!1224 = !DILocalVariable(name: "ok", scope: !1219, file: !66, line: 99, type: !27)
!1225 = !DILocation(line: 99, column: 8, scope: !1219)
!1226 = !DILocation(line: 101, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !66, line: 101, column: 7)
!1228 = !DILocation(line: 101, column: 7, scope: !1219)
!1229 = !DILocation(line: 103, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !66, line: 102, column: 5)
!1231 = !DILocation(line: 106, column: 10, scope: !1230)
!1232 = !DILocation(line: 107, column: 5, scope: !1230)
!1233 = !DILocation(line: 108, column: 17, scope: !1219)
!1234 = !DILocation(line: 108, column: 15, scope: !1219)
!1235 = !DILocation(line: 110, column: 25, scope: !1219)
!1236 = !DILocation(line: 110, column: 3, scope: !1219)
!1237 = !DILocation(line: 112, column: 10, scope: !1219)
!1238 = !DILocation(line: 112, column: 3, scope: !1219)
!1239 = distinct !DISubprogram(name: "set_increment_size", scope: !66, file: !66, line: 116, type: !1220, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1240 = !DILocalVariable(name: "tabval", arg: 1, scope: !1239, file: !66, line: 116, type: !168)
!1241 = !DILocation(line: 116, column: 27, scope: !1239)
!1242 = !DILocalVariable(name: "ok", scope: !1239, file: !66, line: 118, type: !27)
!1243 = !DILocation(line: 118, column: 8, scope: !1239)
!1244 = !DILocation(line: 120, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !66, line: 120, column: 7)
!1246 = !DILocation(line: 120, column: 7, scope: !1239)
!1247 = !DILocation(line: 122, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !66, line: 121, column: 5)
!1249 = !DILocation(line: 125, column: 10, scope: !1248)
!1250 = !DILocation(line: 126, column: 5, scope: !1248)
!1251 = !DILocation(line: 127, column: 20, scope: !1239)
!1252 = !DILocation(line: 127, column: 18, scope: !1239)
!1253 = !DILocation(line: 129, column: 25, scope: !1239)
!1254 = !DILocation(line: 129, column: 3, scope: !1239)
!1255 = !DILocation(line: 131, column: 10, scope: !1239)
!1256 = !DILocation(line: 131, column: 3, scope: !1239)
!1257 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !66, file: !66, line: 268, type: !55, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1258 = !DILocation(line: 270, column: 23, scope: !1257)
!1259 = !DILocation(line: 270, column: 33, scope: !1257)
!1260 = !DILocation(line: 270, column: 3, scope: !1257)
!1261 = !DILocation(line: 272, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !66, line: 272, column: 7)
!1263 = !DILocation(line: 272, column: 22, scope: !1262)
!1264 = !DILocation(line: 272, column: 7, scope: !1257)
!1265 = !DILocation(line: 273, column: 35, scope: !1262)
!1266 = !DILocation(line: 274, column: 37, scope: !1262)
!1267 = !DILocation(line: 274, column: 51, scope: !1262)
!1268 = !DILocation(line: 275, column: 53, scope: !1262)
!1269 = !DILocation(line: 273, column: 33, scope: !1262)
!1270 = !DILocation(line: 273, column: 14, scope: !1262)
!1271 = !DILocation(line: 273, column: 5, scope: !1262)
!1272 = !DILocation(line: 276, column: 12, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1262, file: !66, line: 276, column: 12)
!1274 = !DILocation(line: 276, column: 27, scope: !1273)
!1275 = !DILocation(line: 276, column: 32, scope: !1273)
!1276 = !DILocation(line: 276, column: 37, scope: !1273)
!1277 = !DILocation(line: 276, column: 49, scope: !1273)
!1278 = !DILocation(line: 276, column: 54, scope: !1273)
!1279 = !DILocation(line: 276, column: 12, scope: !1262)
!1280 = !DILocation(line: 277, column: 16, scope: !1273)
!1281 = !DILocation(line: 277, column: 14, scope: !1273)
!1282 = !DILocation(line: 277, column: 5, scope: !1273)
!1283 = !DILocation(line: 279, column: 14, scope: !1273)
!1284 = !DILocation(line: 280, column: 1, scope: !1257)
!1285 = distinct !DISubprogram(name: "validate_tab_stops", scope: !66, file: !66, line: 242, type: !1286, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1288, !160}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1290 = !DILocalVariable(name: "tabs", arg: 1, scope: !1285, file: !66, line: 242, type: !1288)
!1291 = !DILocation(line: 242, column: 34, scope: !1285)
!1292 = !DILocalVariable(name: "entries", arg: 2, scope: !1285, file: !66, line: 242, type: !160)
!1293 = !DILocation(line: 242, column: 46, scope: !1285)
!1294 = !DILocalVariable(name: "prev_tab", scope: !1285, file: !66, line: 244, type: !168)
!1295 = !DILocation(line: 244, column: 9, scope: !1285)
!1296 = !DILocalVariable(name: "i", scope: !1297, file: !66, line: 246, type: !160)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !66, line: 246, column: 3)
!1298 = !DILocation(line: 246, column: 14, scope: !1297)
!1299 = !DILocation(line: 246, column: 8, scope: !1297)
!1300 = !DILocation(line: 246, column: 21, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !66, line: 246, column: 3)
!1302 = !DILocation(line: 246, column: 25, scope: !1301)
!1303 = !DILocation(line: 246, column: 23, scope: !1301)
!1304 = !DILocation(line: 246, column: 3, scope: !1297)
!1305 = !DILocation(line: 248, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !66, line: 248, column: 11)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !66, line: 247, column: 5)
!1308 = !DILocation(line: 248, column: 16, scope: !1306)
!1309 = !DILocation(line: 248, column: 19, scope: !1306)
!1310 = !DILocation(line: 248, column: 11, scope: !1307)
!1311 = !DILocation(line: 249, column: 9, scope: !1306)
!1312 = !DILocation(line: 250, column: 11, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !66, line: 250, column: 11)
!1314 = !DILocation(line: 250, column: 16, scope: !1313)
!1315 = !DILocation(line: 250, column: 22, scope: !1313)
!1316 = !DILocation(line: 250, column: 19, scope: !1313)
!1317 = !DILocation(line: 250, column: 11, scope: !1307)
!1318 = !DILocation(line: 251, column: 9, scope: !1313)
!1319 = !DILocation(line: 252, column: 18, scope: !1307)
!1320 = !DILocation(line: 252, column: 23, scope: !1307)
!1321 = !DILocation(line: 252, column: 16, scope: !1307)
!1322 = !DILocation(line: 253, column: 5, scope: !1307)
!1323 = !DILocation(line: 246, column: 35, scope: !1301)
!1324 = !DILocation(line: 246, column: 3, scope: !1301)
!1325 = distinct !{!1325, !1304, !1326, !553}
!1326 = !DILocation(line: 253, column: 5, scope: !1297)
!1327 = !DILocation(line: 255, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1285, file: !66, line: 255, column: 7)
!1329 = !DILocation(line: 255, column: 22, scope: !1328)
!1330 = !DILocation(line: 255, column: 25, scope: !1328)
!1331 = !DILocation(line: 255, column: 7, scope: !1285)
!1332 = !DILocation(line: 256, column: 5, scope: !1328)
!1333 = !DILocation(line: 257, column: 1, scope: !1285)
!1334 = distinct !DISubprogram(name: "get_next_tab_column", scope: !66, file: !66, line: 288, type: !1335, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!168, !168, !410, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1338 = !DILocalVariable(name: "column", arg: 1, scope: !1334, file: !66, line: 288, type: !168)
!1339 = !DILocation(line: 288, column: 28, scope: !1334)
!1340 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1334, file: !66, line: 288, type: !410)
!1341 = !DILocation(line: 288, column: 43, scope: !1334)
!1342 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1334, file: !66, line: 288, type: !1337)
!1343 = !DILocation(line: 288, column: 60, scope: !1334)
!1344 = !DILocation(line: 290, column: 4, scope: !1334)
!1345 = !DILocation(line: 290, column: 13, scope: !1334)
!1346 = !DILocalVariable(name: "tab_distance", scope: !1334, file: !66, line: 291, type: !168)
!1347 = !DILocation(line: 291, column: 9, scope: !1334)
!1348 = !DILocation(line: 294, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !66, line: 294, column: 7)
!1350 = !DILocation(line: 294, column: 7, scope: !1334)
!1351 = !DILocation(line: 295, column: 20, scope: !1349)
!1352 = !DILocation(line: 295, column: 31, scope: !1349)
!1353 = !DILocation(line: 295, column: 40, scope: !1349)
!1354 = !DILocation(line: 295, column: 38, scope: !1349)
!1355 = !DILocation(line: 295, column: 29, scope: !1349)
!1356 = !DILocation(line: 295, column: 18, scope: !1349)
!1357 = !DILocation(line: 295, column: 5, scope: !1349)
!1358 = !DILocation(line: 300, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !66, line: 297, column: 5)
!1360 = !DILocation(line: 300, column: 16, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !66, line: 300, column: 7)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !66, line: 300, column: 7)
!1363 = !DILocation(line: 300, column: 15, scope: !1361)
!1364 = !DILocation(line: 300, column: 28, scope: !1361)
!1365 = !DILocation(line: 300, column: 26, scope: !1361)
!1366 = !DILocation(line: 300, column: 7, scope: !1362)
!1367 = !DILocalVariable(name: "tab", scope: !1368, file: !66, line: 302, type: !168)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !66, line: 301, column: 9)
!1369 = !DILocation(line: 302, column: 17, scope: !1368)
!1370 = !DILocation(line: 302, column: 23, scope: !1368)
!1371 = !DILocation(line: 302, column: 33, scope: !1368)
!1372 = !DILocation(line: 302, column: 32, scope: !1368)
!1373 = !DILocation(line: 303, column: 15, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !66, line: 303, column: 15)
!1375 = !DILocation(line: 303, column: 24, scope: !1374)
!1376 = !DILocation(line: 303, column: 22, scope: !1374)
!1377 = !DILocation(line: 303, column: 15, scope: !1368)
!1378 = !DILocation(line: 304, column: 20, scope: !1374)
!1379 = !DILocation(line: 304, column: 13, scope: !1374)
!1380 = !DILocation(line: 305, column: 9, scope: !1368)
!1381 = !DILocation(line: 300, column: 47, scope: !1361)
!1382 = !DILocation(line: 300, column: 57, scope: !1361)
!1383 = !DILocation(line: 300, column: 7, scope: !1361)
!1384 = distinct !{!1384, !1366, !1385, !553}
!1385 = !DILocation(line: 305, column: 9, scope: !1362)
!1386 = !DILocation(line: 308, column: 11, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1359, file: !66, line: 308, column: 11)
!1388 = !DILocation(line: 308, column: 11, scope: !1359)
!1389 = !DILocation(line: 309, column: 24, scope: !1387)
!1390 = !DILocation(line: 309, column: 38, scope: !1387)
!1391 = !DILocation(line: 309, column: 47, scope: !1387)
!1392 = !DILocation(line: 309, column: 45, scope: !1387)
!1393 = !DILocation(line: 309, column: 36, scope: !1387)
!1394 = !DILocation(line: 309, column: 22, scope: !1387)
!1395 = !DILocation(line: 309, column: 9, scope: !1387)
!1396 = !DILocation(line: 310, column: 16, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !66, line: 310, column: 16)
!1398 = !DILocation(line: 310, column: 16, scope: !1387)
!1399 = !DILocalVariable(name: "end_tab", scope: !1400, file: !66, line: 314, type: !168)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !66, line: 311, column: 9)
!1401 = !DILocation(line: 314, column: 17, scope: !1400)
!1402 = !DILocation(line: 314, column: 27, scope: !1400)
!1403 = !DILocation(line: 314, column: 36, scope: !1400)
!1404 = !DILocation(line: 314, column: 51, scope: !1400)
!1405 = !DILocation(line: 315, column: 26, scope: !1400)
!1406 = !DILocation(line: 315, column: 45, scope: !1400)
!1407 = !DILocation(line: 315, column: 54, scope: !1400)
!1408 = !DILocation(line: 315, column: 52, scope: !1400)
!1409 = !DILocation(line: 315, column: 65, scope: !1400)
!1410 = !DILocation(line: 315, column: 63, scope: !1400)
!1411 = !DILocation(line: 315, column: 41, scope: !1400)
!1412 = !DILocation(line: 315, column: 24, scope: !1400)
!1413 = !DILocation(line: 316, column: 9, scope: !1400)
!1414 = !DILocation(line: 319, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1397, file: !66, line: 318, column: 9)
!1416 = !DILocation(line: 319, column: 21, scope: !1415)
!1417 = !DILocation(line: 320, column: 24, scope: !1415)
!1418 = !DILocalVariable(name: "tab_stop", scope: !1334, file: !66, line: 324, type: !168)
!1419 = !DILocation(line: 324, column: 9, scope: !1334)
!1420 = !DILocation(line: 325, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1334, file: !66, line: 325, column: 7)
!1422 = !DILocation(line: 325, column: 7, scope: !1334)
!1423 = !DILocation(line: 326, column: 5, scope: !1421)
!1424 = !DILocation(line: 327, column: 10, scope: !1334)
!1425 = !DILocation(line: 327, column: 3, scope: !1334)
!1426 = !DILocation(line: 328, column: 1, scope: !1334)
!1427 = distinct !DISubprogram(name: "set_file_list", scope: !66, file: !66, line: 333, type: !1428, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !190}
!1430 = !DILocalVariable(name: "list", arg: 1, scope: !1427, file: !66, line: 333, type: !190)
!1431 = !DILocation(line: 333, column: 23, scope: !1427)
!1432 = !DILocation(line: 335, column: 19, scope: !1427)
!1433 = !DILocation(line: 337, column: 8, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !66, line: 337, column: 7)
!1435 = !DILocation(line: 337, column: 7, scope: !1427)
!1436 = !DILocation(line: 338, column: 15, scope: !1434)
!1437 = !DILocation(line: 338, column: 5, scope: !1434)
!1438 = !DILocation(line: 340, column: 17, scope: !1434)
!1439 = !DILocation(line: 340, column: 15, scope: !1434)
!1440 = !DILocation(line: 341, column: 1, scope: !1427)
!1441 = !DILocalVariable(name: "fp", arg: 1, scope: !99, file: !66, line: 349, type: !102)
!1442 = !DILocation(line: 349, column: 18, scope: !99)
!1443 = !DILocalVariable(name: "file", scope: !99, file: !66, line: 352, type: !22)
!1444 = !DILocation(line: 352, column: 9, scope: !99)
!1445 = !DILocation(line: 354, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !99, file: !66, line: 354, column: 7)
!1447 = !DILocation(line: 354, column: 7, scope: !99)
!1448 = !DILocalVariable(name: "err", scope: !1449, file: !66, line: 356, type: !25)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !66, line: 355, column: 5)
!1450 = !DILocation(line: 356, column: 11, scope: !1449)
!1451 = !DILocation(line: 356, column: 17, scope: !1449)
!1452 = !DILocation(line: 357, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !66, line: 357, column: 11)
!1454 = !DILocation(line: 357, column: 11, scope: !1449)
!1455 = !DILocation(line: 358, column: 13, scope: !1453)
!1456 = !DILocation(line: 358, column: 9, scope: !1453)
!1457 = !DILocation(line: 359, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !66, line: 359, column: 11)
!1459 = !DILocation(line: 359, column: 11, scope: !1458)
!1460 = !DILocation(line: 359, column: 11, scope: !1449)
!1461 = !DILocation(line: 360, column: 9, scope: !1458)
!1462 = !DILocation(line: 361, column: 24, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !66, line: 361, column: 16)
!1464 = !DILocation(line: 361, column: 16, scope: !1463)
!1465 = !DILocation(line: 361, column: 28, scope: !1463)
!1466 = !DILocation(line: 361, column: 16, scope: !1458)
!1467 = !DILocation(line: 362, column: 15, scope: !1463)
!1468 = !DILocation(line: 362, column: 13, scope: !1463)
!1469 = !DILocation(line: 362, column: 9, scope: !1463)
!1470 = !DILocation(line: 363, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1449, file: !66, line: 363, column: 11)
!1472 = !DILocation(line: 363, column: 11, scope: !1449)
!1473 = !DILocation(line: 365, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !66, line: 364, column: 9)
!1475 = !DILocation(line: 366, column: 23, scope: !1474)
!1476 = !DILocation(line: 367, column: 9, scope: !1474)
!1477 = !DILocation(line: 368, column: 5, scope: !1449)
!1478 = !DILocation(line: 370, column: 3, scope: !99)
!1479 = !DILocation(line: 370, column: 28, scope: !99)
!1480 = !DILocation(line: 370, column: 18, scope: !99)
!1481 = !DILocation(line: 370, column: 16, scope: !99)
!1482 = !DILocation(line: 370, column: 32, scope: !99)
!1483 = !DILocation(line: 372, column: 18, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !66, line: 372, column: 11)
!1485 = distinct !DILexicalBlock(scope: !99, file: !66, line: 371, column: 5)
!1486 = !DILocation(line: 372, column: 11, scope: !1484)
!1487 = !DILocation(line: 372, column: 11, scope: !1485)
!1488 = !DILocation(line: 374, column: 27, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !66, line: 373, column: 9)
!1490 = !DILocation(line: 375, column: 16, scope: !1489)
!1491 = !DILocation(line: 375, column: 14, scope: !1489)
!1492 = !DILocation(line: 376, column: 9, scope: !1489)
!1493 = !DILocation(line: 378, column: 21, scope: !1484)
!1494 = !DILocation(line: 378, column: 14, scope: !1484)
!1495 = !DILocation(line: 378, column: 12, scope: !1484)
!1496 = !DILocation(line: 379, column: 11, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !66, line: 379, column: 11)
!1498 = !DILocation(line: 379, column: 11, scope: !1485)
!1499 = !DILocation(line: 381, column: 23, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !66, line: 380, column: 9)
!1501 = !DILocation(line: 381, column: 21, scope: !1500)
!1502 = !DILocation(line: 382, column: 20, scope: !1500)
!1503 = !DILocation(line: 382, column: 11, scope: !1500)
!1504 = !DILocation(line: 383, column: 18, scope: !1500)
!1505 = !DILocation(line: 383, column: 11, scope: !1500)
!1506 = !DILocation(line: 385, column: 7, scope: !1485)
!1507 = !DILocation(line: 386, column: 19, scope: !1485)
!1508 = distinct !{!1508, !1478, !1509, !553}
!1509 = !DILocation(line: 387, column: 5, scope: !99)
!1510 = !DILocation(line: 388, column: 3, scope: !99)
!1511 = !DILocation(line: 389, column: 1, scope: !99)
!1512 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !66, file: !66, line: 393, type: !55, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1513 = !DILocation(line: 395, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1512, file: !66, line: 395, column: 9)
!1515 = !DILocation(line: 395, column: 25, scope: !1514)
!1516 = !DILocation(line: 395, column: 36, scope: !1514)
!1517 = !DILocation(line: 395, column: 28, scope: !1514)
!1518 = !DILocation(line: 395, column: 43, scope: !1514)
!1519 = !DILocation(line: 395, column: 9, scope: !1512)
!1520 = !DILocation(line: 396, column: 7, scope: !1514)
!1521 = !DILocation(line: 397, column: 1, scope: !1512)
!1522 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !66, file: !66, line: 402, type: !670, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !37)
!1523 = !DILocalVariable(name: "program", arg: 1, scope: !1522, file: !66, line: 402, type: !35)
!1524 = !DILocation(line: 402, column: 33, scope: !1522)
!1525 = !DILocation(line: 405, column: 11, scope: !1522)
!1526 = !DILocation(line: 405, column: 20, scope: !1522)
!1527 = !DILocation(line: 405, column: 3, scope: !1522)
!1528 = !DILocation(line: 409, column: 3, scope: !1522)
!1529 = !DILocation(line: 416, column: 1, scope: !1522)
!1530 = !DILocalVariable(name: "program", arg: 1, scope: !193, file: !32, line: 573, type: !35)
!1531 = !DILocation(line: 573, column: 34, scope: !193)
!1532 = !DILocalVariable(name: "option", arg: 2, scope: !193, file: !32, line: 573, type: !35)
!1533 = !DILocation(line: 573, column: 55, scope: !193)
!1534 = !DILocation(line: 581, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !193, file: !32, line: 581, column: 7)
!1536 = !DILocation(line: 581, column: 19, scope: !1535)
!1537 = !DILocation(line: 581, column: 7, scope: !193)
!1538 = !DILocalVariable(name: "term", scope: !1539, file: !32, line: 585, type: !35)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !32, line: 582, column: 5)
!1540 = !DILocation(line: 585, column: 19, scope: !1539)
!1541 = !DILocation(line: 585, column: 26, scope: !1539)
!1542 = !DILocation(line: 586, column: 23, scope: !1539)
!1543 = !DILocation(line: 586, column: 28, scope: !1539)
!1544 = !DILocation(line: 586, column: 33, scope: !1539)
!1545 = !DILocation(line: 586, column: 32, scope: !1539)
!1546 = !DILocation(line: 586, column: 38, scope: !1539)
!1547 = !DILocation(line: 586, column: 48, scope: !1539)
!1548 = !DILocation(line: 586, column: 41, scope: !1539)
!1549 = !DILocation(line: 586, column: 19, scope: !1539)
!1550 = !DILocation(line: 587, column: 5, scope: !1539)
!1551 = !DILocation(line: 588, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !193, file: !32, line: 588, column: 7)
!1553 = !DILocation(line: 588, column: 7, scope: !193)
!1554 = !DILocation(line: 590, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !32, line: 589, column: 5)
!1556 = !DILocation(line: 591, column: 7, scope: !1555)
!1557 = !DILocalVariable(name: "double_space", scope: !193, file: !32, line: 594, type: !27)
!1558 = !DILocation(line: 594, column: 8, scope: !193)
!1559 = !DILocalVariable(name: "first_word", scope: !193, file: !32, line: 595, type: !35)
!1560 = !DILocation(line: 595, column: 15, scope: !193)
!1561 = !DILocation(line: 595, column: 28, scope: !193)
!1562 = !DILocation(line: 595, column: 45, scope: !193)
!1563 = !DILocation(line: 595, column: 37, scope: !193)
!1564 = !DILocation(line: 595, column: 35, scope: !193)
!1565 = !DILocalVariable(name: "option_text", scope: !193, file: !32, line: 596, type: !35)
!1566 = !DILocation(line: 596, column: 15, scope: !193)
!1567 = !DILocation(line: 596, column: 37, scope: !193)
!1568 = !DILocation(line: 596, column: 29, scope: !193)
!1569 = !DILocation(line: 597, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !193, file: !32, line: 597, column: 7)
!1571 = !DILocation(line: 597, column: 7, scope: !193)
!1572 = !DILocation(line: 599, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !32, line: 598, column: 5)
!1574 = !DILocation(line: 599, column: 19, scope: !1573)
!1575 = !DILocation(line: 602, column: 20, scope: !1573)
!1576 = !DILocation(line: 603, column: 5, scope: !1573)
!1577 = !DILocation(line: 604, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !32, line: 604, column: 12)
!1579 = !DILocation(line: 604, column: 27, scope: !1578)
!1580 = !DILocation(line: 604, column: 24, scope: !1578)
!1581 = !DILocation(line: 604, column: 12, scope: !1570)
!1582 = !DILocalVariable(name: "s", scope: !1583, file: !32, line: 608, type: !35)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !32, line: 605, column: 5)
!1584 = !DILocation(line: 608, column: 19, scope: !1583)
!1585 = !DILocation(line: 608, column: 23, scope: !1583)
!1586 = !DILocalVariable(name: "spaces", scope: !1583, file: !32, line: 609, type: !151)
!1587 = !DILocation(line: 609, column: 14, scope: !1583)
!1588 = !DILocation(line: 610, column: 7, scope: !1583)
!1589 = !DILocation(line: 610, column: 14, scope: !1583)
!1590 = !DILocation(line: 610, column: 18, scope: !1583)
!1591 = !DILocation(line: 610, column: 16, scope: !1583)
!1592 = !DILocation(line: 610, column: 30, scope: !1583)
!1593 = !DILocation(line: 610, column: 33, scope: !1583)
!1594 = !DILocation(line: 610, column: 40, scope: !1583)
!1595 = !DILocation(line: 0, scope: !1583)
!1596 = !DILocation(line: 611, column: 21, scope: !1583)
!1597 = !DILocation(line: 611, column: 20, scope: !1583)
!1598 = !DILocation(line: 611, column: 19, scope: !1583)
!1599 = !DILocation(line: 611, column: 16, scope: !1583)
!1600 = distinct !{!1600, !1588, !1596, !553}
!1601 = !DILocation(line: 612, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1583, file: !32, line: 612, column: 11)
!1603 = !DILocation(line: 612, column: 18, scope: !1602)
!1604 = !DILocation(line: 612, column: 11, scope: !1583)
!1605 = !DILocation(line: 615, column: 25, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !32, line: 613, column: 9)
!1607 = !DILocation(line: 615, column: 23, scope: !1606)
!1608 = !DILocation(line: 616, column: 24, scope: !1606)
!1609 = !DILocation(line: 617, column: 9, scope: !1606)
!1610 = !DILocation(line: 618, column: 5, scope: !1583)
!1611 = !DILocalVariable(name: "anchor_len", scope: !193, file: !32, line: 620, type: !151)
!1612 = !DILocation(line: 620, column: 10, scope: !193)
!1613 = !DILocation(line: 620, column: 32, scope: !193)
!1614 = !DILocation(line: 620, column: 23, scope: !193)
!1615 = !DILocalVariable(name: "desc_text", scope: !193, file: !32, line: 625, type: !35)
!1616 = !DILocation(line: 625, column: 15, scope: !193)
!1617 = !DILocation(line: 625, column: 27, scope: !193)
!1618 = !DILocation(line: 625, column: 41, scope: !193)
!1619 = !DILocation(line: 625, column: 39, scope: !193)
!1620 = !DILocation(line: 626, column: 3, scope: !193)
!1621 = !DILocation(line: 626, column: 11, scope: !193)
!1622 = !DILocation(line: 626, column: 10, scope: !193)
!1623 = !DILocation(line: 626, column: 21, scope: !193)
!1624 = !DILocation(line: 626, column: 25, scope: !193)
!1625 = !DILocation(line: 626, column: 24, scope: !193)
!1626 = !DILocation(line: 626, column: 35, scope: !193)
!1627 = !DILocation(line: 0, scope: !193)
!1628 = !DILocation(line: 628, column: 12, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !32, line: 628, column: 11)
!1630 = distinct !DILexicalBlock(scope: !193, file: !32, line: 627, column: 5)
!1631 = !DILocation(line: 628, column: 11, scope: !1629)
!1632 = !DILocation(line: 628, column: 22, scope: !1629)
!1633 = !DILocation(line: 628, column: 29, scope: !1629)
!1634 = !DILocation(line: 628, column: 34, scope: !1629)
!1635 = !DILocation(line: 628, column: 44, scope: !1629)
!1636 = !DILocation(line: 628, column: 32, scope: !1629)
!1637 = !DILocation(line: 628, column: 49, scope: !1629)
!1638 = !DILocation(line: 628, column: 11, scope: !1630)
!1639 = !DILocation(line: 629, column: 22, scope: !1629)
!1640 = !DILocation(line: 629, column: 9, scope: !1629)
!1641 = !DILocation(line: 630, column: 11, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1630, file: !32, line: 630, column: 11)
!1643 = !DILocation(line: 630, column: 11, scope: !1630)
!1644 = !DILocation(line: 632, column: 16, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !32, line: 632, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !32, line: 631, column: 9)
!1647 = !DILocation(line: 632, column: 15, scope: !1645)
!1648 = !DILocation(line: 632, column: 26, scope: !1645)
!1649 = !DILocation(line: 632, column: 34, scope: !1645)
!1650 = !DILocation(line: 632, column: 37, scope: !1645)
!1651 = !DILocation(line: 632, column: 15, scope: !1646)
!1652 = !DILocation(line: 633, column: 13, scope: !1645)
!1653 = !DILocation(line: 636, column: 16, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !32, line: 636, column: 15)
!1655 = !DILocation(line: 636, column: 29, scope: !1654)
!1656 = !DILocation(line: 636, column: 34, scope: !1654)
!1657 = !DILocation(line: 636, column: 44, scope: !1654)
!1658 = !DILocation(line: 636, column: 32, scope: !1654)
!1659 = !DILocation(line: 636, column: 49, scope: !1654)
!1660 = !DILocation(line: 636, column: 15, scope: !1646)
!1661 = !DILocation(line: 637, column: 13, scope: !1654)
!1662 = !DILocation(line: 638, column: 9, scope: !1646)
!1663 = !DILocation(line: 640, column: 16, scope: !1630)
!1664 = distinct !{!1664, !1620, !1665, !553}
!1665 = !DILocation(line: 641, column: 5, scope: !193)
!1666 = !DILocation(line: 644, column: 3, scope: !193)
!1667 = !DILocalVariable(name: "url_program", scope: !193, file: !32, line: 648, type: !35)
!1668 = !DILocation(line: 648, column: 15, scope: !193)
!1669 = !DILocation(line: 648, column: 38, scope: !193)
!1670 = !DILocation(line: 648, column: 31, scope: !193)
!1671 = !DILocation(line: 649, column: 38, scope: !193)
!1672 = !DILocation(line: 649, column: 31, scope: !193)
!1673 = !DILocation(line: 650, column: 38, scope: !193)
!1674 = !DILocation(line: 650, column: 31, scope: !193)
!1675 = !DILocation(line: 651, column: 38, scope: !193)
!1676 = !DILocation(line: 651, column: 31, scope: !193)
!1677 = !DILocation(line: 652, column: 38, scope: !193)
!1678 = !DILocation(line: 652, column: 31, scope: !193)
!1679 = !DILocation(line: 653, column: 38, scope: !193)
!1680 = !DILocation(line: 653, column: 31, scope: !193)
!1681 = !DILocation(line: 654, column: 38, scope: !193)
!1682 = !DILocation(line: 654, column: 31, scope: !193)
!1683 = !DILocation(line: 655, column: 38, scope: !193)
!1684 = !DILocation(line: 655, column: 31, scope: !193)
!1685 = !DILocation(line: 656, column: 38, scope: !193)
!1686 = !DILocation(line: 656, column: 31, scope: !193)
!1687 = !DILocation(line: 657, column: 38, scope: !193)
!1688 = !DILocation(line: 657, column: 31, scope: !193)
!1689 = !DILocation(line: 658, column: 31, scope: !193)
!1690 = !DILocation(line: 663, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !193, file: !32, line: 663, column: 7)
!1692 = !DILocation(line: 664, column: 7, scope: !1691)
!1693 = !DILocation(line: 664, column: 10, scope: !1691)
!1694 = !DILocation(line: 663, column: 7, scope: !193)
!1695 = !DILocation(line: 670, column: 15, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !32, line: 665, column: 5)
!1697 = !DILocation(line: 670, column: 28, scope: !1696)
!1698 = !DILocation(line: 670, column: 47, scope: !1696)
!1699 = !DILocation(line: 670, column: 41, scope: !1696)
!1700 = !DILocation(line: 670, column: 59, scope: !1696)
!1701 = !DILocation(line: 669, column: 7, scope: !1696)
!1702 = !DILocation(line: 671, column: 5, scope: !1696)
!1703 = !DILocation(line: 676, column: 48, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1691, file: !32, line: 673, column: 5)
!1705 = !DILocation(line: 677, column: 21, scope: !1704)
!1706 = !DILocation(line: 677, column: 15, scope: !1704)
!1707 = !DILocation(line: 677, column: 33, scope: !1704)
!1708 = !DILocation(line: 676, column: 7, scope: !1704)
!1709 = !DILocation(line: 679, column: 3, scope: !193)
!1710 = !DILocation(line: 683, column: 3, scope: !193)
!1711 = !DILocation(line: 686, column: 3, scope: !193)
!1712 = !DILocation(line: 688, column: 3, scope: !193)
!1713 = !DILocation(line: 691, column: 3, scope: !193)
!1714 = !DILocation(line: 695, column: 3, scope: !193)
!1715 = !DILocation(line: 696, column: 1, scope: !193)
!1716 = distinct !DISubprogram(name: "c_isalnum", scope: !1717, file: !1717, line: 169, type: !1718, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1717 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!27, !25}
!1720 = !DILocalVariable(name: "c", arg: 1, scope: !1716, file: !1717, line: 169, type: !25)
!1721 = !DILocation(line: 169, column: 16, scope: !1716)
!1722 = !DILocation(line: 171, column: 11, scope: !1716)
!1723 = !DILocation(line: 171, column: 3, scope: !1716)
!1724 = !DILocation(line: 176, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1716, file: !1717, line: 172, column: 5)
!1726 = !DILocation(line: 178, column: 7, scope: !1725)
!1727 = !DILocation(line: 180, column: 1, scope: !1716)
!1728 = distinct !DISubprogram(name: "c_isalpha", scope: !1717, file: !1717, line: 183, type: !1718, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1729 = !DILocalVariable(name: "c", arg: 1, scope: !1728, file: !1717, line: 183, type: !25)
!1730 = !DILocation(line: 183, column: 16, scope: !1728)
!1731 = !DILocation(line: 185, column: 11, scope: !1728)
!1732 = !DILocation(line: 185, column: 3, scope: !1728)
!1733 = !DILocation(line: 189, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !1717, line: 186, column: 5)
!1735 = !DILocation(line: 191, column: 7, scope: !1734)
!1736 = !DILocation(line: 193, column: 1, scope: !1728)
!1737 = distinct !DISubprogram(name: "c_isascii", scope: !1717, file: !1717, line: 198, type: !1718, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1738 = !DILocalVariable(name: "c", arg: 1, scope: !1737, file: !1717, line: 198, type: !25)
!1739 = !DILocation(line: 198, column: 16, scope: !1737)
!1740 = !DILocation(line: 200, column: 11, scope: !1737)
!1741 = !DILocation(line: 200, column: 3, scope: !1737)
!1742 = !DILocation(line: 208, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !1717, line: 201, column: 5)
!1744 = !DILocation(line: 210, column: 7, scope: !1743)
!1745 = !DILocation(line: 212, column: 1, scope: !1737)
!1746 = distinct !DISubprogram(name: "c_isblank", scope: !1717, file: !1717, line: 215, type: !1718, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1747 = !DILocalVariable(name: "c", arg: 1, scope: !1746, file: !1717, line: 215, type: !25)
!1748 = !DILocation(line: 215, column: 16, scope: !1746)
!1749 = !DILocation(line: 217, column: 10, scope: !1746)
!1750 = !DILocation(line: 217, column: 12, scope: !1746)
!1751 = !DILocation(line: 217, column: 19, scope: !1746)
!1752 = !DILocation(line: 217, column: 22, scope: !1746)
!1753 = !DILocation(line: 217, column: 24, scope: !1746)
!1754 = !DILocation(line: 217, column: 3, scope: !1746)
!1755 = distinct !DISubprogram(name: "c_iscntrl", scope: !1717, file: !1717, line: 221, type: !1718, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1756 = !DILocalVariable(name: "c", arg: 1, scope: !1755, file: !1717, line: 221, type: !25)
!1757 = !DILocation(line: 221, column: 16, scope: !1755)
!1758 = !DILocation(line: 223, column: 11, scope: !1755)
!1759 = !DILocation(line: 223, column: 3, scope: !1755)
!1760 = !DILocation(line: 226, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1755, file: !1717, line: 224, column: 5)
!1762 = !DILocation(line: 228, column: 7, scope: !1761)
!1763 = !DILocation(line: 230, column: 1, scope: !1755)
!1764 = distinct !DISubprogram(name: "c_isdigit", scope: !1717, file: !1717, line: 233, type: !1718, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1765 = !DILocalVariable(name: "c", arg: 1, scope: !1764, file: !1717, line: 233, type: !25)
!1766 = !DILocation(line: 233, column: 16, scope: !1764)
!1767 = !DILocation(line: 235, column: 11, scope: !1764)
!1768 = !DILocation(line: 235, column: 3, scope: !1764)
!1769 = !DILocation(line: 238, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !1717, line: 236, column: 5)
!1771 = !DILocation(line: 240, column: 7, scope: !1770)
!1772 = !DILocation(line: 242, column: 1, scope: !1764)
!1773 = distinct !DISubprogram(name: "c_isgraph", scope: !1717, file: !1717, line: 245, type: !1718, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1774 = !DILocalVariable(name: "c", arg: 1, scope: !1773, file: !1717, line: 245, type: !25)
!1775 = !DILocation(line: 245, column: 16, scope: !1773)
!1776 = !DILocation(line: 247, column: 11, scope: !1773)
!1777 = !DILocation(line: 247, column: 3, scope: !1773)
!1778 = !DILocation(line: 253, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !1717, line: 248, column: 5)
!1780 = !DILocation(line: 255, column: 7, scope: !1779)
!1781 = !DILocation(line: 257, column: 1, scope: !1773)
!1782 = distinct !DISubprogram(name: "c_islower", scope: !1717, file: !1717, line: 260, type: !1718, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1783 = !DILocalVariable(name: "c", arg: 1, scope: !1782, file: !1717, line: 260, type: !25)
!1784 = !DILocation(line: 260, column: 16, scope: !1782)
!1785 = !DILocation(line: 262, column: 11, scope: !1782)
!1786 = !DILocation(line: 262, column: 3, scope: !1782)
!1787 = !DILocation(line: 265, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !1717, line: 263, column: 5)
!1789 = !DILocation(line: 267, column: 7, scope: !1788)
!1790 = !DILocation(line: 269, column: 1, scope: !1782)
!1791 = distinct !DISubprogram(name: "c_isprint", scope: !1717, file: !1717, line: 272, type: !1718, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1792 = !DILocalVariable(name: "c", arg: 1, scope: !1791, file: !1717, line: 272, type: !25)
!1793 = !DILocation(line: 272, column: 16, scope: !1791)
!1794 = !DILocation(line: 274, column: 11, scope: !1791)
!1795 = !DILocation(line: 274, column: 3, scope: !1791)
!1796 = !DILocation(line: 281, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1791, file: !1717, line: 275, column: 5)
!1798 = !DILocation(line: 283, column: 7, scope: !1797)
!1799 = !DILocation(line: 285, column: 1, scope: !1791)
!1800 = distinct !DISubprogram(name: "c_ispunct", scope: !1717, file: !1717, line: 288, type: !1718, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1801 = !DILocalVariable(name: "c", arg: 1, scope: !1800, file: !1717, line: 288, type: !25)
!1802 = !DILocation(line: 288, column: 16, scope: !1800)
!1803 = !DILocation(line: 290, column: 11, scope: !1800)
!1804 = !DILocation(line: 290, column: 3, scope: !1800)
!1805 = !DILocation(line: 293, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1800, file: !1717, line: 291, column: 5)
!1807 = !DILocation(line: 295, column: 7, scope: !1806)
!1808 = !DILocation(line: 297, column: 1, scope: !1800)
!1809 = distinct !DISubprogram(name: "c_isspace", scope: !1717, file: !1717, line: 300, type: !1718, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1810 = !DILocalVariable(name: "c", arg: 1, scope: !1809, file: !1717, line: 300, type: !25)
!1811 = !DILocation(line: 300, column: 16, scope: !1809)
!1812 = !DILocation(line: 302, column: 11, scope: !1809)
!1813 = !DILocation(line: 302, column: 3, scope: !1809)
!1814 = !DILocation(line: 305, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !1717, line: 303, column: 5)
!1816 = !DILocation(line: 307, column: 7, scope: !1815)
!1817 = !DILocation(line: 309, column: 1, scope: !1809)
!1818 = distinct !DISubprogram(name: "c_isupper", scope: !1717, file: !1717, line: 312, type: !1718, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1819 = !DILocalVariable(name: "c", arg: 1, scope: !1818, file: !1717, line: 312, type: !25)
!1820 = !DILocation(line: 312, column: 16, scope: !1818)
!1821 = !DILocation(line: 314, column: 11, scope: !1818)
!1822 = !DILocation(line: 314, column: 3, scope: !1818)
!1823 = !DILocation(line: 317, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !1717, line: 315, column: 5)
!1825 = !DILocation(line: 319, column: 7, scope: !1824)
!1826 = !DILocation(line: 321, column: 1, scope: !1818)
!1827 = distinct !DISubprogram(name: "c_isxdigit", scope: !1717, file: !1717, line: 324, type: !1718, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1828 = !DILocalVariable(name: "c", arg: 1, scope: !1827, file: !1717, line: 324, type: !25)
!1829 = !DILocation(line: 324, column: 17, scope: !1827)
!1830 = !DILocation(line: 326, column: 11, scope: !1827)
!1831 = !DILocation(line: 326, column: 3, scope: !1827)
!1832 = !DILocation(line: 330, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1827, file: !1717, line: 327, column: 5)
!1834 = !DILocation(line: 332, column: 7, scope: !1833)
!1835 = !DILocation(line: 334, column: 1, scope: !1827)
!1836 = distinct !DISubprogram(name: "c_tolower", scope: !1717, file: !1717, line: 337, type: !1837, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!25, !25}
!1839 = !DILocalVariable(name: "c", arg: 1, scope: !1836, file: !1717, line: 337, type: !25)
!1840 = !DILocation(line: 337, column: 16, scope: !1836)
!1841 = !DILocation(line: 339, column: 11, scope: !1836)
!1842 = !DILocation(line: 339, column: 3, scope: !1836)
!1843 = !DILocation(line: 342, column: 14, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1836, file: !1717, line: 340, column: 5)
!1845 = !DILocation(line: 342, column: 16, scope: !1844)
!1846 = !DILocation(line: 342, column: 22, scope: !1844)
!1847 = !DILocation(line: 342, column: 7, scope: !1844)
!1848 = !DILocation(line: 344, column: 14, scope: !1844)
!1849 = !DILocation(line: 344, column: 7, scope: !1844)
!1850 = !DILocation(line: 346, column: 1, scope: !1836)
!1851 = distinct !DISubprogram(name: "c_toupper", scope: !1717, file: !1717, line: 349, type: !1837, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !37)
!1852 = !DILocalVariable(name: "c", arg: 1, scope: !1851, file: !1717, line: 349, type: !25)
!1853 = !DILocation(line: 349, column: 16, scope: !1851)
!1854 = !DILocation(line: 351, column: 11, scope: !1851)
!1855 = !DILocation(line: 351, column: 3, scope: !1851)
!1856 = !DILocation(line: 354, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !1717, line: 352, column: 5)
!1858 = !DILocation(line: 354, column: 16, scope: !1857)
!1859 = !DILocation(line: 354, column: 22, scope: !1857)
!1860 = !DILocation(line: 354, column: 7, scope: !1857)
!1861 = !DILocation(line: 356, column: 14, scope: !1857)
!1862 = !DILocation(line: 356, column: 7, scope: !1857)
!1863 = !DILocation(line: 358, column: 1, scope: !1851)
!1864 = distinct !DISubprogram(name: "c32isblank", scope: !1865, file: !1865, line: 41, type: !1866, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !350, retainedNodes: !37)
!1865 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!25, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1869, line: 20, baseType: !7)
!1869 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1870 = !DILocalVariable(name: "wc", arg: 1, scope: !1864, file: !1865, line: 41, type: !1868)
!1871 = !DILocation(line: 41, column: 14, scope: !1864)
!1872 = !DILocation(line: 66, column: 22, scope: !1864)
!1873 = !DILocation(line: 66, column: 10, scope: !1864)
!1874 = !DILocation(line: 66, column: 3, scope: !1864)
!1875 = distinct !DISubprogram(name: "c32width", scope: !353, file: !353, line: 47, type: !1876, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !352, retainedNodes: !37)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!25, !864}
!1878 = !DILocalVariable(name: "wc", arg: 1, scope: !1875, file: !353, line: 47, type: !864)
!1879 = !DILocation(line: 47, column: 20, scope: !1875)
!1880 = !DILocation(line: 67, column: 19, scope: !1875)
!1881 = !DILocation(line: 67, column: 10, scope: !1875)
!1882 = !DILocation(line: 67, column: 3, scope: !1875)
!1883 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !202, file: !202, line: 50, type: !670, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !201, retainedNodes: !37)
!1884 = !DILocalVariable(name: "file", arg: 1, scope: !1883, file: !202, line: 50, type: !35)
!1885 = !DILocation(line: 50, column: 41, scope: !1883)
!1886 = !DILocation(line: 52, column: 15, scope: !1883)
!1887 = !DILocation(line: 52, column: 13, scope: !1883)
!1888 = !DILocation(line: 53, column: 1, scope: !1883)
!1889 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !202, file: !202, line: 87, type: !1890, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !201, retainedNodes: !37)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !27}
!1892 = !DILocalVariable(name: "ignore", arg: 1, scope: !1889, file: !202, line: 87, type: !27)
!1893 = !DILocation(line: 87, column: 37, scope: !1889)
!1894 = !DILocation(line: 89, column: 18, scope: !1889)
!1895 = !DILocation(line: 89, column: 16, scope: !1889)
!1896 = !DILocation(line: 90, column: 1, scope: !1889)
!1897 = distinct !DISubprogram(name: "close_stdout", scope: !202, file: !202, line: 116, type: !55, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !201, retainedNodes: !37)
!1898 = !DILocation(line: 118, column: 21, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !202, line: 118, column: 7)
!1900 = !DILocation(line: 118, column: 7, scope: !1899)
!1901 = !DILocation(line: 118, column: 29, scope: !1899)
!1902 = !DILocation(line: 119, column: 7, scope: !1899)
!1903 = !DILocation(line: 119, column: 12, scope: !1899)
!1904 = !DILocation(line: 119, column: 25, scope: !1899)
!1905 = !DILocation(line: 119, column: 28, scope: !1899)
!1906 = !DILocation(line: 119, column: 34, scope: !1899)
!1907 = !DILocation(line: 118, column: 7, scope: !1897)
!1908 = !DILocalVariable(name: "write_error", scope: !1909, file: !202, line: 121, type: !35)
!1909 = distinct !DILexicalBlock(scope: !1899, file: !202, line: 120, column: 5)
!1910 = !DILocation(line: 121, column: 19, scope: !1909)
!1911 = !DILocation(line: 121, column: 33, scope: !1909)
!1912 = !DILocation(line: 122, column: 11, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !202, line: 122, column: 11)
!1914 = !DILocation(line: 122, column: 11, scope: !1909)
!1915 = !DILocation(line: 123, column: 9, scope: !1913)
!1916 = !DILocation(line: 126, column: 9, scope: !1913)
!1917 = !DILocation(line: 128, column: 14, scope: !1909)
!1918 = !DILocation(line: 128, column: 7, scope: !1909)
!1919 = !DILocation(line: 133, column: 42, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1897, file: !202, line: 133, column: 7)
!1921 = !DILocation(line: 133, column: 28, scope: !1920)
!1922 = !DILocation(line: 133, column: 50, scope: !1920)
!1923 = !DILocation(line: 133, column: 7, scope: !1897)
!1924 = !DILocation(line: 134, column: 12, scope: !1920)
!1925 = !DILocation(line: 134, column: 5, scope: !1920)
!1926 = !DILocation(line: 135, column: 1, scope: !1897)
!1927 = distinct !DISubprogram(name: "verror", scope: !209, file: !209, line: 251, type: !1928, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !208, retainedNodes: !37)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !25, !25, !35, !217}
!1930 = !DILocalVariable(name: "status", arg: 1, scope: !1927, file: !209, line: 251, type: !25)
!1931 = !DILocation(line: 251, column: 1, scope: !1927)
!1932 = !DILocalVariable(name: "errnum", arg: 2, scope: !1927, file: !209, line: 251, type: !25)
!1933 = !DILocalVariable(name: "message", arg: 3, scope: !1927, file: !209, line: 251, type: !35)
!1934 = !DILocalVariable(name: "args", arg: 4, scope: !1927, file: !209, line: 251, type: !217)
!1935 = !DILocation(line: 261, column: 3, scope: !1927)
!1936 = !DILocation(line: 265, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1927, file: !209, line: 265, column: 7)
!1938 = !DILocation(line: 265, column: 7, scope: !1927)
!1939 = !DILocation(line: 266, column: 7, scope: !1937)
!1940 = !DILocation(line: 266, column: 5, scope: !1937)
!1941 = !DILocation(line: 272, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !209, line: 268, column: 5)
!1943 = !DILocation(line: 272, column: 32, scope: !1942)
!1944 = !DILocation(line: 272, column: 7, scope: !1942)
!1945 = !DILocation(line: 276, column: 3, scope: !1927)
!1946 = !DILocation(line: 282, column: 1, scope: !1927)
!1947 = distinct !DISubprogram(name: "flush_stdout", scope: !209, file: !209, line: 163, type: !55, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !208, retainedNodes: !37)
!1948 = !DILocalVariable(name: "stdout_fd", scope: !1947, file: !209, line: 166, type: !25)
!1949 = !DILocation(line: 166, column: 7, scope: !1947)
!1950 = !DILocation(line: 172, column: 13, scope: !1947)
!1951 = !DILocation(line: 182, column: 12, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !209, line: 182, column: 7)
!1953 = !DILocation(line: 182, column: 9, scope: !1952)
!1954 = !DILocation(line: 182, column: 22, scope: !1952)
!1955 = !DILocation(line: 182, column: 34, scope: !1952)
!1956 = !DILocation(line: 182, column: 25, scope: !1952)
!1957 = !DILocation(line: 182, column: 7, scope: !1947)
!1958 = !DILocation(line: 184, column: 5, scope: !1952)
!1959 = !DILocation(line: 185, column: 1, scope: !1947)
!1960 = distinct !DISubprogram(name: "error_tail", scope: !209, file: !209, line: 219, type: !1928, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !208, retainedNodes: !37)
!1961 = !DILocalVariable(name: "status", arg: 1, scope: !1960, file: !209, line: 219, type: !25)
!1962 = !DILocation(line: 219, column: 1, scope: !1960)
!1963 = !DILocalVariable(name: "errnum", arg: 2, scope: !1960, file: !209, line: 219, type: !25)
!1964 = !DILocalVariable(name: "message", arg: 3, scope: !1960, file: !209, line: 219, type: !35)
!1965 = !DILocalVariable(name: "args", arg: 4, scope: !1960, file: !209, line: 219, type: !217)
!1966 = !DILocation(line: 229, column: 13, scope: !1960)
!1967 = !DILocation(line: 229, column: 21, scope: !1960)
!1968 = !DILocation(line: 229, column: 3, scope: !1960)
!1969 = !DILocation(line: 232, column: 3, scope: !1960)
!1970 = !DILocation(line: 233, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1960, file: !209, line: 233, column: 7)
!1972 = !DILocation(line: 233, column: 7, scope: !1960)
!1973 = !DILocation(line: 234, column: 26, scope: !1971)
!1974 = !DILocation(line: 234, column: 5, scope: !1971)
!1975 = !DILocation(line: 238, column: 3, scope: !1960)
!1976 = !DILocation(line: 240, column: 3, scope: !1960)
!1977 = !DILocation(line: 241, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1960, file: !209, line: 241, column: 7)
!1979 = !DILocation(line: 241, column: 7, scope: !1960)
!1980 = !DILocation(line: 242, column: 11, scope: !1978)
!1981 = !DILocation(line: 242, column: 5, scope: !1978)
!1982 = !DILocation(line: 243, column: 1, scope: !1960)
!1983 = distinct !DISubprogram(name: "print_errno_message", scope: !209, file: !209, line: 188, type: !450, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !208, retainedNodes: !37)
!1984 = !DILocalVariable(name: "errnum", arg: 1, scope: !1983, file: !209, line: 188, type: !25)
!1985 = !DILocation(line: 188, column: 26, scope: !1983)
!1986 = !DILocalVariable(name: "s", scope: !1983, file: !209, line: 190, type: !35)
!1987 = !DILocation(line: 190, column: 15, scope: !1983)
!1988 = !DILocalVariable(name: "errbuf", scope: !1983, file: !209, line: 193, type: !1989)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1990)
!1990 = !{!1991}
!1991 = !DISubrange(count: 1024)
!1992 = !DILocation(line: 193, column: 8, scope: !1983)
!1993 = !DILocation(line: 195, column: 21, scope: !1983)
!1994 = !DILocation(line: 195, column: 29, scope: !1983)
!1995 = !DILocation(line: 195, column: 7, scope: !1983)
!1996 = !DILocation(line: 195, column: 5, scope: !1983)
!1997 = !DILocation(line: 207, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1983, file: !209, line: 207, column: 7)
!1999 = !DILocation(line: 207, column: 7, scope: !1983)
!2000 = !DILocation(line: 208, column: 9, scope: !1998)
!2001 = !DILocation(line: 208, column: 7, scope: !1998)
!2002 = !DILocation(line: 208, column: 5, scope: !1998)
!2003 = !DILocation(line: 214, column: 12, scope: !1983)
!2004 = !DILocation(line: 214, column: 28, scope: !1983)
!2005 = !DILocation(line: 214, column: 3, scope: !1983)
!2006 = !DILocation(line: 216, column: 1, scope: !1983)
!2007 = distinct !DISubprogram(name: "is_open", scope: !209, file: !209, line: 145, type: !1837, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !208, retainedNodes: !37)
!2008 = !DILocalVariable(name: "fd", arg: 1, scope: !2007, file: !209, line: 145, type: !25)
!2009 = !DILocation(line: 145, column: 14, scope: !2007)
!2010 = !DILocation(line: 157, column: 22, scope: !2007)
!2011 = !DILocation(line: 157, column: 15, scope: !2007)
!2012 = !DILocation(line: 157, column: 12, scope: !2007)
!2013 = !DILocation(line: 157, column: 3, scope: !2007)
!2014 = distinct !DISubprogram(name: "error", scope: !209, file: !209, line: 285, type: !2015, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !208, retainedNodes: !37)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !25, !25, !35, null}
!2017 = !DILocalVariable(name: "status", arg: 1, scope: !2014, file: !209, line: 285, type: !25)
!2018 = !DILocation(line: 285, column: 12, scope: !2014)
!2019 = !DILocalVariable(name: "errnum", arg: 2, scope: !2014, file: !209, line: 285, type: !25)
!2020 = !DILocation(line: 285, column: 24, scope: !2014)
!2021 = !DILocalVariable(name: "message", arg: 3, scope: !2014, file: !209, line: 285, type: !35)
!2022 = !DILocation(line: 285, column: 44, scope: !2014)
!2023 = !DILocalVariable(name: "ap", scope: !2014, file: !209, line: 287, type: !217)
!2024 = !DILocation(line: 287, column: 11, scope: !2014)
!2025 = !DILocation(line: 288, column: 3, scope: !2014)
!2026 = !DILocation(line: 289, column: 3, scope: !2014)
!2027 = !DILocation(line: 290, column: 3, scope: !2014)
!2028 = !DILocation(line: 291, column: 1, scope: !2014)
!2029 = !DILocalVariable(name: "status", arg: 1, scope: !214, file: !209, line: 298, type: !25)
!2030 = !DILocation(line: 298, column: 1, scope: !214)
!2031 = !DILocalVariable(name: "errnum", arg: 2, scope: !214, file: !209, line: 298, type: !25)
!2032 = !DILocalVariable(name: "file_name", arg: 3, scope: !214, file: !209, line: 298, type: !35)
!2033 = !DILocalVariable(name: "line_number", arg: 4, scope: !214, file: !209, line: 298, type: !7)
!2034 = !DILocalVariable(name: "message", arg: 5, scope: !214, file: !209, line: 298, type: !35)
!2035 = !DILocalVariable(name: "args", arg: 6, scope: !214, file: !209, line: 298, type: !217)
!2036 = !DILocation(line: 302, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !214, file: !209, line: 302, column: 7)
!2038 = !DILocation(line: 302, column: 7, scope: !214)
!2039 = !DILocation(line: 307, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !209, line: 307, column: 11)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !209, line: 303, column: 5)
!2042 = !DILocation(line: 307, column: 30, scope: !2040)
!2043 = !DILocation(line: 307, column: 27, scope: !2040)
!2044 = !DILocation(line: 308, column: 11, scope: !2040)
!2045 = !DILocation(line: 308, column: 15, scope: !2040)
!2046 = !DILocation(line: 308, column: 28, scope: !2040)
!2047 = !DILocation(line: 308, column: 25, scope: !2040)
!2048 = !DILocation(line: 309, column: 15, scope: !2040)
!2049 = !DILocation(line: 309, column: 19, scope: !2040)
!2050 = !DILocation(line: 309, column: 33, scope: !2040)
!2051 = !DILocation(line: 310, column: 19, scope: !2040)
!2052 = !DILocation(line: 310, column: 22, scope: !2040)
!2053 = !DILocation(line: 310, column: 32, scope: !2040)
!2054 = !DILocation(line: 311, column: 19, scope: !2040)
!2055 = !DILocation(line: 311, column: 30, scope: !2040)
!2056 = !DILocation(line: 311, column: 45, scope: !2040)
!2057 = !DILocation(line: 311, column: 22, scope: !2040)
!2058 = !DILocation(line: 311, column: 56, scope: !2040)
!2059 = !DILocation(line: 307, column: 11, scope: !2041)
!2060 = !DILocation(line: 314, column: 9, scope: !2040)
!2061 = !DILocation(line: 316, column: 23, scope: !2041)
!2062 = !DILocation(line: 316, column: 21, scope: !2041)
!2063 = !DILocation(line: 317, column: 25, scope: !2041)
!2064 = !DILocation(line: 317, column: 23, scope: !2041)
!2065 = !DILocation(line: 318, column: 5, scope: !2041)
!2066 = !DILocation(line: 327, column: 3, scope: !214)
!2067 = !DILocation(line: 331, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !214, file: !209, line: 331, column: 7)
!2069 = !DILocation(line: 331, column: 7, scope: !214)
!2070 = !DILocation(line: 332, column: 7, scope: !2068)
!2071 = !DILocation(line: 332, column: 5, scope: !2068)
!2072 = !DILocation(line: 338, column: 16, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !209, line: 334, column: 5)
!2074 = !DILocation(line: 338, column: 31, scope: !2073)
!2075 = !DILocation(line: 338, column: 7, scope: !2073)
!2076 = !DILocation(line: 346, column: 12, scope: !214)
!2077 = !DILocation(line: 346, column: 20, scope: !214)
!2078 = !DILocation(line: 346, column: 30, scope: !214)
!2079 = !DILocation(line: 347, column: 12, scope: !214)
!2080 = !DILocation(line: 347, column: 23, scope: !214)
!2081 = !DILocation(line: 346, column: 3, scope: !214)
!2082 = !DILocation(line: 350, column: 3, scope: !214)
!2083 = !DILocation(line: 356, column: 1, scope: !214)
!2084 = distinct !DISubprogram(name: "error_at_line", scope: !209, file: !209, line: 359, type: !2085, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !208, retainedNodes: !37)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !25, !25, !35, !7, !35, null}
!2087 = !DILocalVariable(name: "status", arg: 1, scope: !2084, file: !209, line: 359, type: !25)
!2088 = !DILocation(line: 359, column: 20, scope: !2084)
!2089 = !DILocalVariable(name: "errnum", arg: 2, scope: !2084, file: !209, line: 359, type: !25)
!2090 = !DILocation(line: 359, column: 32, scope: !2084)
!2091 = !DILocalVariable(name: "file_name", arg: 3, scope: !2084, file: !209, line: 359, type: !35)
!2092 = !DILocation(line: 359, column: 52, scope: !2084)
!2093 = !DILocalVariable(name: "line_number", arg: 4, scope: !2084, file: !209, line: 360, type: !7)
!2094 = !DILocation(line: 360, column: 29, scope: !2084)
!2095 = !DILocalVariable(name: "message", arg: 5, scope: !2084, file: !209, line: 360, type: !35)
!2096 = !DILocation(line: 360, column: 54, scope: !2084)
!2097 = !DILocalVariable(name: "ap", scope: !2084, file: !209, line: 362, type: !217)
!2098 = !DILocation(line: 362, column: 11, scope: !2084)
!2099 = !DILocation(line: 363, column: 3, scope: !2084)
!2100 = !DILocation(line: 364, column: 3, scope: !2084)
!2101 = !DILocation(line: 366, column: 3, scope: !2084)
!2102 = !DILocation(line: 367, column: 1, scope: !2084)
!2103 = distinct !DISubprogram(name: "fdadvise", scope: !355, file: !355, line: 25, type: !2104, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !354, retainedNodes: !37)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !25, !2106, !2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !218, line: 63, baseType: !128)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !83, line: 51, baseType: !82)
!2108 = !DILocalVariable(name: "fd", arg: 1, scope: !2103, file: !355, line: 25, type: !25)
!2109 = !DILocation(line: 25, column: 15, scope: !2103)
!2110 = !DILocalVariable(name: "offset", arg: 2, scope: !2103, file: !355, line: 25, type: !2106)
!2111 = !DILocation(line: 25, column: 25, scope: !2103)
!2112 = !DILocalVariable(name: "len", arg: 3, scope: !2103, file: !355, line: 25, type: !2106)
!2113 = !DILocation(line: 25, column: 39, scope: !2103)
!2114 = !DILocalVariable(name: "advice", arg: 4, scope: !2103, file: !355, line: 25, type: !2107)
!2115 = !DILocation(line: 25, column: 54, scope: !2103)
!2116 = !DILocation(line: 28, column: 3, scope: !2103)
!2117 = !DILocation(line: 30, column: 1, scope: !2103)
!2118 = distinct !DISubprogram(name: "fadvise", scope: !355, file: !355, line: 33, type: !2119, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !354, retainedNodes: !37)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2121, !2107}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2123, file: !106, line: 51, baseType: !25, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2123, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2123, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2123, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2123, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2123, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2123, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2123, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2123, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2123, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2123, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2123, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2123, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2123, file: !106, line: 70, baseType: !2139, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2123, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2123, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2123, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2123, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2123, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2123, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2123, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2123, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2123, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2123, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2123, file: !106, line: 93, baseType: !2139, size: 64, offset: 1344)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2123, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2123, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2123, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2123, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2155 = !DILocalVariable(name: "fp", arg: 1, scope: !2118, file: !355, line: 33, type: !2121)
!2156 = !DILocation(line: 33, column: 16, scope: !2118)
!2157 = !DILocalVariable(name: "advice", arg: 2, scope: !2118, file: !355, line: 33, type: !2107)
!2158 = !DILocation(line: 33, column: 30, scope: !2118)
!2159 = !DILocation(line: 35, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2118, file: !355, line: 35, column: 7)
!2161 = !DILocation(line: 35, column: 7, scope: !2118)
!2162 = !DILocation(line: 36, column: 23, scope: !2160)
!2163 = !DILocation(line: 36, column: 15, scope: !2160)
!2164 = !DILocation(line: 36, column: 34, scope: !2160)
!2165 = !DILocation(line: 36, column: 5, scope: !2160)
!2166 = !DILocation(line: 37, column: 1, scope: !2118)
!2167 = distinct !DISubprogram(name: "rpl_fclose", scope: !358, file: !358, line: 58, type: !2168, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !357, retainedNodes: !37)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!25, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2172, file: !106, line: 51, baseType: !25, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2172, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2172, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2172, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2172, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2172, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2172, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2172, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2172, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2172, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2172, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2172, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2172, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2172, file: !106, line: 70, baseType: !2188, size: 64, offset: 832)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2172, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2172, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2172, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2172, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2172, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2172, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2172, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2172, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2172, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2172, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2172, file: !106, line: 93, baseType: !2188, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2172, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2172, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2172, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2172, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2204 = !DILocalVariable(name: "fp", arg: 1, scope: !2167, file: !358, line: 58, type: !2170)
!2205 = !DILocation(line: 58, column: 19, scope: !2167)
!2206 = !DILocalVariable(name: "saved_errno", scope: !2167, file: !358, line: 60, type: !25)
!2207 = !DILocation(line: 60, column: 7, scope: !2167)
!2208 = !DILocalVariable(name: "fd", scope: !2167, file: !358, line: 63, type: !25)
!2209 = !DILocation(line: 63, column: 7, scope: !2167)
!2210 = !DILocation(line: 63, column: 20, scope: !2167)
!2211 = !DILocation(line: 63, column: 12, scope: !2167)
!2212 = !DILocation(line: 64, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2167, file: !358, line: 64, column: 7)
!2214 = !DILocation(line: 64, column: 10, scope: !2213)
!2215 = !DILocation(line: 64, column: 7, scope: !2167)
!2216 = !DILocation(line: 65, column: 28, scope: !2213)
!2217 = !DILocation(line: 65, column: 12, scope: !2213)
!2218 = !DILocation(line: 65, column: 5, scope: !2213)
!2219 = !DILocation(line: 70, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2167, file: !358, line: 70, column: 7)
!2221 = !DILocation(line: 70, column: 23, scope: !2220)
!2222 = !DILocation(line: 70, column: 41, scope: !2220)
!2223 = !DILocation(line: 70, column: 33, scope: !2220)
!2224 = !DILocation(line: 70, column: 26, scope: !2220)
!2225 = !DILocation(line: 70, column: 59, scope: !2220)
!2226 = !DILocation(line: 71, column: 7, scope: !2220)
!2227 = !DILocation(line: 71, column: 18, scope: !2220)
!2228 = !DILocation(line: 71, column: 10, scope: !2220)
!2229 = !DILocation(line: 70, column: 7, scope: !2167)
!2230 = !DILocation(line: 72, column: 19, scope: !2220)
!2231 = !DILocation(line: 72, column: 17, scope: !2220)
!2232 = !DILocation(line: 72, column: 5, scope: !2220)
!2233 = !DILocalVariable(name: "result", scope: !2167, file: !358, line: 74, type: !25)
!2234 = !DILocation(line: 74, column: 7, scope: !2167)
!2235 = !DILocation(line: 100, column: 28, scope: !2167)
!2236 = !DILocation(line: 100, column: 12, scope: !2167)
!2237 = !DILocation(line: 100, column: 10, scope: !2167)
!2238 = !DILocation(line: 105, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2167, file: !358, line: 105, column: 7)
!2240 = !DILocation(line: 105, column: 19, scope: !2239)
!2241 = !DILocation(line: 105, column: 7, scope: !2167)
!2242 = !DILocation(line: 107, column: 15, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !358, line: 106, column: 5)
!2244 = !DILocation(line: 107, column: 7, scope: !2243)
!2245 = !DILocation(line: 107, column: 13, scope: !2243)
!2246 = !DILocation(line: 108, column: 14, scope: !2243)
!2247 = !DILocation(line: 109, column: 5, scope: !2243)
!2248 = !DILocation(line: 111, column: 10, scope: !2167)
!2249 = !DILocation(line: 111, column: 3, scope: !2167)
!2250 = !DILocation(line: 112, column: 1, scope: !2167)
!2251 = distinct !DISubprogram(name: "rpl_fflush", scope: !360, file: !360, line: 130, type: !2252, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !359, retainedNodes: !37)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!25, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2256, file: !106, line: 51, baseType: !25, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2256, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2256, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2256, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2256, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2256, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2256, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2256, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2256, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2256, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2256, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2256, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2256, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2256, file: !106, line: 70, baseType: !2272, size: 64, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2256, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2256, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2256, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2256, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2256, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2256, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2256, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2256, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2256, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2256, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2256, file: !106, line: 93, baseType: !2272, size: 64, offset: 1344)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2256, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2256, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2256, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2256, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2288 = !DILocalVariable(name: "stream", arg: 1, scope: !2251, file: !360, line: 130, type: !2254)
!2289 = !DILocation(line: 130, column: 19, scope: !2251)
!2290 = !DILocation(line: 151, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2251, file: !360, line: 151, column: 7)
!2292 = !DILocation(line: 151, column: 14, scope: !2291)
!2293 = !DILocation(line: 151, column: 22, scope: !2291)
!2294 = !DILocation(line: 151, column: 27, scope: !2291)
!2295 = !DILocation(line: 151, column: 7, scope: !2251)
!2296 = !DILocation(line: 152, column: 20, scope: !2291)
!2297 = !DILocation(line: 152, column: 12, scope: !2291)
!2298 = !DILocation(line: 152, column: 5, scope: !2291)
!2299 = !DILocation(line: 157, column: 44, scope: !2251)
!2300 = !DILocation(line: 157, column: 3, scope: !2251)
!2301 = !DILocation(line: 159, column: 18, scope: !2251)
!2302 = !DILocation(line: 159, column: 10, scope: !2251)
!2303 = !DILocation(line: 159, column: 3, scope: !2251)
!2304 = !DILocation(line: 236, column: 1, scope: !2251)
!2305 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !360, file: !360, line: 42, type: !2306, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !359, retainedNodes: !37)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2254}
!2308 = !DILocalVariable(name: "fp", arg: 1, scope: !2305, file: !360, line: 42, type: !2254)
!2309 = !DILocation(line: 42, column: 48, scope: !2305)
!2310 = !DILocation(line: 44, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !360, line: 44, column: 7)
!2312 = !DILocation(line: 44, column: 12, scope: !2311)
!2313 = !DILocation(line: 44, column: 19, scope: !2311)
!2314 = !DILocation(line: 44, column: 7, scope: !2305)
!2315 = !DILocation(line: 46, column: 13, scope: !2311)
!2316 = !DILocation(line: 46, column: 5, scope: !2311)
!2317 = !DILocation(line: 47, column: 1, scope: !2305)
!2318 = distinct !DISubprogram(name: "fpurge", scope: !362, file: !362, line: 32, type: !2319, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !361, retainedNodes: !37)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!25, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2323, file: !106, line: 51, baseType: !25, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2323, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2323, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2323, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2323, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2323, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2323, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2323, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2323, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2323, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2323, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2323, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2323, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2323, file: !106, line: 70, baseType: !2339, size: 64, offset: 832)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2323, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2323, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2323, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2323, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2323, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2323, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2323, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2323, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2323, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2323, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2323, file: !106, line: 93, baseType: !2339, size: 64, offset: 1344)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2323, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2323, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2323, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2323, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2355 = !DILocalVariable(name: "fp", arg: 1, scope: !2318, file: !362, line: 32, type: !2321)
!2356 = !DILocation(line: 32, column: 15, scope: !2318)
!2357 = !DILocation(line: 36, column: 13, scope: !2318)
!2358 = !DILocation(line: 36, column: 3, scope: !2318)
!2359 = !DILocation(line: 38, column: 3, scope: !2318)
!2360 = distinct !DISubprogram(name: "rpl_fseeko", scope: !364, file: !364, line: 28, type: !2361, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !363, retainedNodes: !37)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!25, !2363, !2106, !25}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2365, file: !106, line: 51, baseType: !25, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2365, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2365, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2365, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2365, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2365, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2365, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2365, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2365, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2365, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2365, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2365, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2365, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2365, file: !106, line: 70, baseType: !2381, size: 64, offset: 832)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2365, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2365, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2365, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2365, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2365, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2365, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2365, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2365, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2365, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2365, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2365, file: !106, line: 93, baseType: !2381, size: 64, offset: 1344)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2365, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2365, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2365, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2365, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2397 = !DILocalVariable(name: "fp", arg: 1, scope: !2360, file: !364, line: 28, type: !2363)
!2398 = !DILocation(line: 28, column: 15, scope: !2360)
!2399 = !DILocalVariable(name: "offset", arg: 2, scope: !2360, file: !364, line: 28, type: !2106)
!2400 = !DILocation(line: 28, column: 25, scope: !2360)
!2401 = !DILocalVariable(name: "whence", arg: 3, scope: !2360, file: !364, line: 28, type: !25)
!2402 = !DILocation(line: 28, column: 37, scope: !2360)
!2403 = !DILocation(line: 55, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2360, file: !364, line: 55, column: 7)
!2405 = !DILocation(line: 55, column: 12, scope: !2404)
!2406 = !DILocation(line: 55, column: 28, scope: !2404)
!2407 = !DILocation(line: 55, column: 33, scope: !2404)
!2408 = !DILocation(line: 55, column: 25, scope: !2404)
!2409 = !DILocation(line: 56, column: 7, scope: !2404)
!2410 = !DILocation(line: 56, column: 10, scope: !2404)
!2411 = !DILocation(line: 56, column: 15, scope: !2404)
!2412 = !DILocation(line: 56, column: 32, scope: !2404)
!2413 = !DILocation(line: 56, column: 37, scope: !2404)
!2414 = !DILocation(line: 56, column: 29, scope: !2404)
!2415 = !DILocation(line: 57, column: 7, scope: !2404)
!2416 = !DILocation(line: 57, column: 10, scope: !2404)
!2417 = !DILocation(line: 57, column: 15, scope: !2404)
!2418 = !DILocation(line: 57, column: 29, scope: !2404)
!2419 = !DILocation(line: 55, column: 7, scope: !2360)
!2420 = !DILocalVariable(name: "pos", scope: !2421, file: !364, line: 123, type: !2106)
!2421 = distinct !DILexicalBlock(scope: !2404, file: !364, line: 119, column: 5)
!2422 = !DILocation(line: 123, column: 13, scope: !2421)
!2423 = !DILocation(line: 123, column: 34, scope: !2421)
!2424 = !DILocation(line: 123, column: 26, scope: !2421)
!2425 = !DILocation(line: 123, column: 39, scope: !2421)
!2426 = !DILocation(line: 123, column: 47, scope: !2421)
!2427 = !DILocation(line: 123, column: 19, scope: !2421)
!2428 = !DILocation(line: 124, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !364, line: 124, column: 11)
!2430 = !DILocation(line: 124, column: 15, scope: !2429)
!2431 = !DILocation(line: 124, column: 11, scope: !2421)
!2432 = !DILocation(line: 130, column: 11, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !364, line: 125, column: 9)
!2434 = !DILocation(line: 135, column: 7, scope: !2421)
!2435 = !DILocation(line: 135, column: 12, scope: !2421)
!2436 = !DILocation(line: 135, column: 19, scope: !2421)
!2437 = !DILocation(line: 136, column: 22, scope: !2421)
!2438 = !DILocation(line: 136, column: 7, scope: !2421)
!2439 = !DILocation(line: 136, column: 12, scope: !2421)
!2440 = !DILocation(line: 136, column: 20, scope: !2421)
!2441 = !DILocation(line: 167, column: 7, scope: !2421)
!2442 = !DILocation(line: 169, column: 18, scope: !2360)
!2443 = !DILocation(line: 169, column: 22, scope: !2360)
!2444 = !DILocation(line: 169, column: 30, scope: !2360)
!2445 = !DILocation(line: 169, column: 10, scope: !2360)
!2446 = !DILocation(line: 169, column: 3, scope: !2360)
!2447 = !DILocation(line: 170, column: 1, scope: !2360)
!2448 = distinct !DISubprogram(name: "getprogname", scope: !366, file: !366, line: 54, type: !2449, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !365, retainedNodes: !37)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!35}
!2451 = !DILocation(line: 58, column: 10, scope: !2448)
!2452 = !DILocation(line: 58, column: 3, scope: !2448)
!2453 = distinct !DISubprogram(name: "mbbuf_init", scope: !846, file: !846, line: 56, type: !2454, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !367, retainedNodes: !37)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2456, !22, !160, !2462}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !846, line: 50, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !846, line: 43, size: 320, elements: !2459)
!2459 = !{!2460, !2461, !2496, !2497, !2498}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2458, file: !846, line: 45, baseType: !22, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2458, file: !846, line: 46, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !2464)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2464, file: !106, line: 51, baseType: !25, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2464, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2464, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2464, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2464, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2464, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2464, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2464, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2464, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2464, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2464, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2464, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2464, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2464, file: !106, line: 70, baseType: !2480, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2464, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2464, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2464, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2464, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2464, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2464, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2464, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2464, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2464, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2464, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2464, file: !106, line: 93, baseType: !2480, size: 64, offset: 1344)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2464, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2464, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2464, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2464, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2458, file: !846, line: 47, baseType: !160, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2458, file: !846, line: 48, baseType: !160, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2458, file: !846, line: 49, baseType: !160, size: 64, offset: 256)
!2499 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2453, file: !846, line: 56, type: !2456)
!2500 = !DILocation(line: 56, column: 22, scope: !2453)
!2501 = !DILocalVariable(name: "buffer", arg: 2, scope: !2453, file: !846, line: 56, type: !22)
!2502 = !DILocation(line: 56, column: 35, scope: !2453)
!2503 = !DILocalVariable(name: "size", arg: 3, scope: !2453, file: !846, line: 56, type: !160)
!2504 = !DILocation(line: 56, column: 49, scope: !2453)
!2505 = !DILocalVariable(name: "fp", arg: 4, scope: !2453, file: !846, line: 56, type: !2462)
!2506 = !DILocation(line: 56, column: 61, scope: !2453)
!2507 = !DILocation(line: 58, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2453, file: !846, line: 58, column: 7)
!2509 = !DILocation(line: 58, column: 12, scope: !2508)
!2510 = !DILocation(line: 58, column: 7, scope: !2453)
!2511 = !DILocation(line: 59, column: 5, scope: !2508)
!2512 = !DILocation(line: 60, column: 19, scope: !2453)
!2513 = !DILocation(line: 60, column: 3, scope: !2453)
!2514 = !DILocation(line: 60, column: 10, scope: !2453)
!2515 = !DILocation(line: 60, column: 17, scope: !2453)
!2516 = !DILocation(line: 61, column: 15, scope: !2453)
!2517 = !DILocation(line: 61, column: 3, scope: !2453)
!2518 = !DILocation(line: 61, column: 10, scope: !2453)
!2519 = !DILocation(line: 61, column: 13, scope: !2453)
!2520 = !DILocation(line: 62, column: 17, scope: !2453)
!2521 = !DILocation(line: 62, column: 3, scope: !2453)
!2522 = !DILocation(line: 62, column: 10, scope: !2453)
!2523 = !DILocation(line: 62, column: 15, scope: !2453)
!2524 = !DILocation(line: 63, column: 3, scope: !2453)
!2525 = !DILocation(line: 63, column: 10, scope: !2453)
!2526 = !DILocation(line: 63, column: 17, scope: !2453)
!2527 = !DILocation(line: 64, column: 3, scope: !2453)
!2528 = !DILocation(line: 64, column: 10, scope: !2453)
!2529 = !DILocation(line: 64, column: 17, scope: !2453)
!2530 = !DILocation(line: 65, column: 1, scope: !2453)
!2531 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !846, file: !846, line: 71, type: !2532, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !367, retainedNodes: !37)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2534, !2456}
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !371, line: 143, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 138, size: 64, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !2535, file: !371, line: 140, baseType: !864, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2535, file: !371, line: 141, baseType: !332, size: 8, offset: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2535, file: !371, line: 142, baseType: !332, size: 8, offset: 40)
!2540 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2531, file: !846, line: 71, type: !2456)
!2541 = !DILocation(line: 71, column: 26, scope: !2531)
!2542 = !DILocalVariable(name: "available", scope: !2531, file: !846, line: 73, type: !160)
!2543 = !DILocation(line: 73, column: 9, scope: !2531)
!2544 = !DILocation(line: 73, column: 21, scope: !2531)
!2545 = !DILocation(line: 73, column: 28, scope: !2531)
!2546 = !DILocation(line: 73, column: 37, scope: !2531)
!2547 = !DILocation(line: 73, column: 44, scope: !2531)
!2548 = !DILocation(line: 73, column: 35, scope: !2531)
!2549 = !DILocation(line: 75, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2531, file: !846, line: 75, column: 7)
!2551 = !DILocation(line: 75, column: 17, scope: !2550)
!2552 = !DILocation(line: 75, column: 32, scope: !2550)
!2553 = !DILocation(line: 75, column: 43, scope: !2550)
!2554 = !DILocation(line: 75, column: 50, scope: !2550)
!2555 = !DILocation(line: 75, column: 37, scope: !2550)
!2556 = !DILocation(line: 75, column: 7, scope: !2531)
!2557 = !DILocalVariable(name: "start", scope: !2558, file: !846, line: 77, type: !160)
!2558 = distinct !DILexicalBlock(scope: !2550, file: !846, line: 76, column: 5)
!2559 = !DILocation(line: 77, column: 13, scope: !2558)
!2560 = !DILocation(line: 78, column: 17, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !846, line: 78, column: 11)
!2562 = !DILocation(line: 78, column: 15, scope: !2561)
!2563 = !DILocation(line: 78, column: 11, scope: !2558)
!2564 = !DILocation(line: 79, column: 15, scope: !2561)
!2565 = !DILocation(line: 79, column: 9, scope: !2561)
!2566 = !DILocation(line: 82, column: 20, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2561, file: !846, line: 81, column: 9)
!2568 = !DILocation(line: 82, column: 27, scope: !2567)
!2569 = !DILocation(line: 82, column: 35, scope: !2567)
!2570 = !DILocation(line: 82, column: 42, scope: !2567)
!2571 = !DILocation(line: 82, column: 51, scope: !2567)
!2572 = !DILocation(line: 82, column: 58, scope: !2567)
!2573 = !DILocation(line: 82, column: 49, scope: !2567)
!2574 = !DILocation(line: 82, column: 66, scope: !2567)
!2575 = !DILocation(line: 82, column: 11, scope: !2567)
!2576 = !DILocation(line: 83, column: 19, scope: !2567)
!2577 = !DILocation(line: 83, column: 17, scope: !2567)
!2578 = !DILocation(line: 85, column: 30, scope: !2558)
!2579 = !DILocation(line: 85, column: 37, scope: !2558)
!2580 = !DILocation(line: 85, column: 46, scope: !2558)
!2581 = !DILocation(line: 85, column: 44, scope: !2558)
!2582 = !DILocation(line: 85, column: 56, scope: !2558)
!2583 = !DILocation(line: 85, column: 63, scope: !2558)
!2584 = !DILocation(line: 85, column: 70, scope: !2558)
!2585 = !DILocation(line: 85, column: 68, scope: !2558)
!2586 = !DILocation(line: 86, column: 30, scope: !2558)
!2587 = !DILocation(line: 86, column: 37, scope: !2558)
!2588 = !DILocation(line: 85, column: 23, scope: !2558)
!2589 = !DILocation(line: 86, column: 43, scope: !2558)
!2590 = !DILocation(line: 86, column: 41, scope: !2558)
!2591 = !DILocation(line: 85, column: 7, scope: !2558)
!2592 = !DILocation(line: 85, column: 14, scope: !2558)
!2593 = !DILocation(line: 85, column: 21, scope: !2558)
!2594 = !DILocation(line: 87, column: 7, scope: !2558)
!2595 = !DILocation(line: 87, column: 14, scope: !2558)
!2596 = !DILocation(line: 87, column: 21, scope: !2558)
!2597 = !DILocation(line: 88, column: 19, scope: !2558)
!2598 = !DILocation(line: 88, column: 26, scope: !2558)
!2599 = !DILocation(line: 88, column: 35, scope: !2558)
!2600 = !DILocation(line: 88, column: 42, scope: !2558)
!2601 = !DILocation(line: 88, column: 33, scope: !2558)
!2602 = !DILocation(line: 88, column: 17, scope: !2558)
!2603 = !DILocation(line: 89, column: 5, scope: !2558)
!2604 = !DILocation(line: 90, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2531, file: !846, line: 90, column: 7)
!2606 = !DILocation(line: 90, column: 17, scope: !2605)
!2607 = !DILocation(line: 90, column: 7, scope: !2531)
!2608 = !DILocation(line: 91, column: 21, scope: !2605)
!2609 = !DILocation(line: 91, column: 5, scope: !2605)
!2610 = !DILocalVariable(name: "g", scope: !2531, file: !846, line: 92, type: !2534)
!2611 = !DILocation(line: 92, column: 10, scope: !2531)
!2612 = !DILocation(line: 92, column: 25, scope: !2531)
!2613 = !DILocation(line: 92, column: 32, scope: !2531)
!2614 = !DILocation(line: 92, column: 41, scope: !2531)
!2615 = !DILocation(line: 92, column: 48, scope: !2531)
!2616 = !DILocation(line: 92, column: 39, scope: !2531)
!2617 = !DILocation(line: 93, column: 25, scope: !2531)
!2618 = !DILocation(line: 93, column: 32, scope: !2531)
!2619 = !DILocation(line: 93, column: 41, scope: !2531)
!2620 = !DILocation(line: 93, column: 48, scope: !2531)
!2621 = !DILocation(line: 93, column: 39, scope: !2531)
!2622 = !DILocation(line: 92, column: 14, scope: !2531)
!2623 = !DILocation(line: 94, column: 11, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2531, file: !846, line: 94, column: 7)
!2625 = !DILocation(line: 94, column: 9, scope: !2624)
!2626 = !DILocation(line: 94, column: 7, scope: !2531)
!2627 = !DILocation(line: 95, column: 24, scope: !2624)
!2628 = !DILocation(line: 95, column: 22, scope: !2624)
!2629 = !DILocation(line: 95, column: 5, scope: !2624)
!2630 = !DILocation(line: 95, column: 12, scope: !2624)
!2631 = !DILocation(line: 95, column: 19, scope: !2624)
!2632 = !DILocation(line: 99, column: 30, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2624, file: !846, line: 97, column: 5)
!2634 = !DILocation(line: 99, column: 37, scope: !2633)
!2635 = !DILocation(line: 99, column: 44, scope: !2633)
!2636 = !DILocation(line: 99, column: 51, scope: !2633)
!2637 = !DILocation(line: 99, column: 57, scope: !2633)
!2638 = !DILocation(line: 99, column: 14, scope: !2633)
!2639 = !DILocation(line: 99, column: 9, scope: !2633)
!2640 = !DILocation(line: 99, column: 12, scope: !2633)
!2641 = !DILocation(line: 101, column: 10, scope: !2531)
!2642 = !DILocation(line: 101, column: 3, scope: !2531)
!2643 = !DILocation(line: 102, column: 1, scope: !2531)
!2644 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !846, file: !846, line: 107, type: !2645, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !367, retainedNodes: !37)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!22, !2456, !2534}
!2647 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !2644, file: !846, line: 107, type: !2456)
!2648 = !DILocation(line: 107, column: 29, scope: !2644)
!2649 = !DILocalVariable(name: "g", arg: 2, scope: !2644, file: !846, line: 107, type: !2534)
!2650 = !DILocation(line: 107, column: 43, scope: !2644)
!2651 = !DILocation(line: 109, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2644, file: !846, line: 109, column: 7)
!2653 = !DILocation(line: 109, column: 14, scope: !2652)
!2654 = !DILocation(line: 109, column: 25, scope: !2652)
!2655 = !DILocation(line: 109, column: 23, scope: !2652)
!2656 = !DILocation(line: 109, column: 21, scope: !2652)
!2657 = !DILocation(line: 109, column: 7, scope: !2644)
!2658 = !DILocation(line: 110, column: 5, scope: !2652)
!2659 = !DILocation(line: 111, column: 10, scope: !2644)
!2660 = !DILocation(line: 111, column: 17, scope: !2644)
!2661 = !DILocation(line: 111, column: 27, scope: !2644)
!2662 = !DILocation(line: 111, column: 34, scope: !2644)
!2663 = !DILocation(line: 111, column: 45, scope: !2644)
!2664 = !DILocation(line: 111, column: 43, scope: !2644)
!2665 = !DILocation(line: 111, column: 41, scope: !2644)
!2666 = !DILocation(line: 111, column: 24, scope: !2644)
!2667 = !DILocation(line: 111, column: 3, scope: !2644)
!2668 = distinct !DISubprogram(name: "mcel_ch", scope: !371, file: !371, line: 167, type: !2669, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2671, !864, !151}
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !371, line: 143, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 138, size: 64, elements: !2673)
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !2672, file: !371, line: 140, baseType: !864, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2672, file: !371, line: 141, baseType: !332, size: 8, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2672, file: !371, line: 142, baseType: !332, size: 8, offset: 40)
!2677 = !DILocalVariable(name: "ch", arg: 1, scope: !2668, file: !371, line: 167, type: !864)
!2678 = !DILocation(line: 167, column: 19, scope: !2668)
!2679 = !DILocalVariable(name: "len", arg: 2, scope: !2668, file: !371, line: 167, type: !151)
!2680 = !DILocation(line: 167, column: 30, scope: !2668)
!2681 = !DILocation(line: 169, column: 3, scope: !2668)
!2682 = !DILocation(line: 170, column: 3, scope: !2668)
!2683 = !DILocation(line: 171, column: 3, scope: !2668)
!2684 = !DILocation(line: 172, column: 19, scope: !2668)
!2685 = !DILocation(line: 172, column: 26, scope: !2668)
!2686 = !DILocation(line: 172, column: 37, scope: !2668)
!2687 = !DILocation(line: 172, column: 3, scope: !2668)
!2688 = distinct !DISubprogram(name: "mcel_err", scope: !371, file: !371, line: 175, type: !2689, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!2671, !332}
!2691 = !DILocalVariable(name: "err", arg: 1, scope: !2688, file: !371, line: 175, type: !332)
!2692 = !DILocation(line: 175, column: 25, scope: !2688)
!2693 = !DILocation(line: 177, column: 3, scope: !2688)
!2694 = !DILocation(line: 178, column: 19, scope: !2688)
!2695 = !DILocation(line: 178, column: 27, scope: !2688)
!2696 = !DILocation(line: 178, column: 3, scope: !2688)
!2697 = distinct !DISubprogram(name: "mcel_cmp", scope: !371, file: !371, line: 184, type: !2698, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!25, !2671, !2671}
!2700 = !DILocalVariable(name: "c1", arg: 1, scope: !2697, file: !371, line: 184, type: !2671)
!2701 = !DILocation(line: 184, column: 18, scope: !2697)
!2702 = !DILocalVariable(name: "c2", arg: 2, scope: !2697, file: !371, line: 184, type: !2671)
!2703 = !DILocation(line: 184, column: 29, scope: !2697)
!2704 = !DILocalVariable(name: "ch1", scope: !2697, file: !371, line: 186, type: !25)
!2705 = !DILocation(line: 186, column: 7, scope: !2697)
!2706 = !DILocation(line: 186, column: 16, scope: !2697)
!2707 = !DILocalVariable(name: "ch2", scope: !2697, file: !371, line: 186, type: !25)
!2708 = !DILocation(line: 186, column: 20, scope: !2697)
!2709 = !DILocation(line: 186, column: 29, scope: !2697)
!2710 = !DILocation(line: 187, column: 15, scope: !2697)
!2711 = !DILocation(line: 187, column: 12, scope: !2697)
!2712 = !DILocation(line: 187, column: 24, scope: !2697)
!2713 = !DILocation(line: 187, column: 21, scope: !2697)
!2714 = !DILocation(line: 187, column: 19, scope: !2697)
!2715 = !DILocation(line: 187, column: 29, scope: !2697)
!2716 = !DILocation(line: 187, column: 57, scope: !2697)
!2717 = !DILocation(line: 187, column: 63, scope: !2697)
!2718 = !DILocation(line: 187, column: 61, scope: !2697)
!2719 = !DILocation(line: 187, column: 54, scope: !2697)
!2720 = !DILocation(line: 187, column: 3, scope: !2697)
!2721 = distinct !DISubprogram(name: "mcel_eq", scope: !371, file: !371, line: 192, type: !2722, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!27, !2671, !2671}
!2724 = !DILocalVariable(name: "c1", arg: 1, scope: !2721, file: !371, line: 192, type: !2671)
!2725 = !DILocation(line: 192, column: 17, scope: !2721)
!2726 = !DILocalVariable(name: "c2", arg: 2, scope: !2721, file: !371, line: 192, type: !2671)
!2727 = !DILocation(line: 192, column: 28, scope: !2721)
!2728 = !DILocation(line: 194, column: 12, scope: !2721)
!2729 = !DILocation(line: 194, column: 10, scope: !2721)
!2730 = !DILocation(line: 194, column: 3, scope: !2721)
!2731 = distinct !DISubprogram(name: "mcel_tocmp", scope: !371, file: !371, line: 201, type: !2732, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!25, !2734, !2671, !2671}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!1868, !1868}
!2737 = !DILocalVariable(name: "to", arg: 1, scope: !2731, file: !371, line: 201, type: !2734)
!2738 = !DILocation(line: 201, column: 22, scope: !2731)
!2739 = !DILocalVariable(name: "c1", arg: 2, scope: !2731, file: !371, line: 201, type: !2671)
!2740 = !DILocation(line: 201, column: 43, scope: !2731)
!2741 = !DILocalVariable(name: "c2", arg: 3, scope: !2731, file: !371, line: 201, type: !2671)
!2742 = !DILocation(line: 201, column: 54, scope: !2731)
!2743 = !DILocalVariable(name: "cmp", scope: !2731, file: !371, line: 203, type: !25)
!2744 = !DILocation(line: 203, column: 7, scope: !2731)
!2745 = !DILocation(line: 203, column: 13, scope: !2731)
!2746 = !DILocation(line: 204, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2731, file: !371, line: 204, column: 7)
!2748 = !DILocation(line: 204, column: 7, scope: !2731)
!2749 = !DILocation(line: 205, column: 12, scope: !2747)
!2750 = !DILocation(line: 205, column: 5, scope: !2747)
!2751 = !DILocalVariable(name: "ch1", scope: !2731, file: !371, line: 206, type: !25)
!2752 = !DILocation(line: 206, column: 7, scope: !2731)
!2753 = !DILocation(line: 206, column: 13, scope: !2731)
!2754 = !DILocation(line: 206, column: 20, scope: !2731)
!2755 = !DILocalVariable(name: "ch2", scope: !2731, file: !371, line: 206, type: !25)
!2756 = !DILocation(line: 206, column: 25, scope: !2731)
!2757 = !DILocation(line: 206, column: 31, scope: !2731)
!2758 = !DILocation(line: 206, column: 38, scope: !2731)
!2759 = !DILocation(line: 207, column: 10, scope: !2731)
!2760 = !DILocation(line: 207, column: 16, scope: !2731)
!2761 = !DILocation(line: 207, column: 14, scope: !2731)
!2762 = !DILocation(line: 207, column: 3, scope: !2731)
!2763 = !DILocation(line: 208, column: 1, scope: !2731)
!2764 = distinct !DISubprogram(name: "mcel_isbasic", scope: !371, file: !371, line: 215, type: !2765, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!27, !23}
!2767 = !DILocalVariable(name: "c", arg: 1, scope: !2764, file: !371, line: 215, type: !23)
!2768 = !DILocation(line: 215, column: 20, scope: !2764)
!2769 = !DILocation(line: 217, column: 10, scope: !2764)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 217, column: 3, scope: !2764)
!2772 = distinct !DISubprogram(name: "mcel_scan", scope: !371, file: !371, line: 230, type: !2773, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2671, !35, !35}
!2775 = !DILocalVariable(name: "p", arg: 1, scope: !2772, file: !371, line: 230, type: !35)
!2776 = !DILocation(line: 230, column: 24, scope: !2772)
!2777 = !DILocalVariable(name: "lim", arg: 2, scope: !2772, file: !371, line: 230, type: !35)
!2778 = !DILocation(line: 230, column: 39, scope: !2772)
!2779 = !DILocalVariable(name: "c", scope: !2772, file: !371, line: 235, type: !23)
!2780 = !DILocation(line: 235, column: 8, scope: !2772)
!2781 = !DILocation(line: 235, column: 13, scope: !2772)
!2782 = !DILocation(line: 235, column: 12, scope: !2772)
!2783 = !DILocation(line: 236, column: 21, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2772, file: !371, line: 236, column: 7)
!2785 = !DILocation(line: 236, column: 7, scope: !2784)
!2786 = !DILocation(line: 236, column: 7, scope: !2772)
!2787 = !DILocation(line: 237, column: 21, scope: !2784)
!2788 = !DILocation(line: 237, column: 12, scope: !2784)
!2789 = !DILocation(line: 237, column: 5, scope: !2784)
!2790 = !DILocalVariable(name: "mbs", scope: !2772, file: !371, line: 244, type: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !335, line: 6, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !337, line: 21, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 13, size: 64, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2793, file: !337, line: 15, baseType: !25, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2793, file: !337, line: 20, baseType: !2797, size: 32, offset: 32)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2793, file: !337, line: 16, size: 32, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2797, file: !337, line: 18, baseType: !7, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2797, file: !337, line: 19, baseType: !346, size: 32)
!2801 = !DILocation(line: 244, column: 13, scope: !2772)
!2802 = !DILocation(line: 244, column: 22, scope: !2772)
!2803 = !DILocation(line: 244, column: 30, scope: !2772)
!2804 = !DILocalVariable(name: "ch", scope: !2772, file: !371, line: 267, type: !864)
!2805 = !DILocation(line: 267, column: 12, scope: !2772)
!2806 = !DILocalVariable(name: "len", scope: !2772, file: !371, line: 268, type: !151)
!2807 = !DILocation(line: 268, column: 10, scope: !2772)
!2808 = !DILocation(line: 268, column: 31, scope: !2772)
!2809 = !DILocation(line: 268, column: 34, scope: !2772)
!2810 = !DILocation(line: 268, column: 40, scope: !2772)
!2811 = !DILocation(line: 268, column: 38, scope: !2772)
!2812 = !DILocation(line: 268, column: 16, scope: !2772)
!2813 = !DILocation(line: 274, column: 7, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2772, file: !371, line: 274, column: 7)
!2815 = !DILocation(line: 274, column: 7, scope: !2772)
!2816 = !DILocation(line: 275, column: 22, scope: !2814)
!2817 = !DILocation(line: 275, column: 12, scope: !2814)
!2818 = !DILocation(line: 275, column: 5, scope: !2814)
!2819 = !DILocation(line: 279, column: 19, scope: !2772)
!2820 = !DILocation(line: 279, column: 23, scope: !2772)
!2821 = !DILocation(line: 279, column: 10, scope: !2772)
!2822 = !DILocation(line: 279, column: 3, scope: !2772)
!2823 = !DILocation(line: 280, column: 1, scope: !2772)
!2824 = distinct !DISubprogram(name: "mcel_scant", scope: !371, file: !371, line: 288, type: !2825, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!2671, !35, !23}
!2827 = !DILocalVariable(name: "p", arg: 1, scope: !2824, file: !371, line: 288, type: !35)
!2828 = !DILocation(line: 288, column: 25, scope: !2824)
!2829 = !DILocalVariable(name: "terminator", arg: 2, scope: !2824, file: !371, line: 288, type: !23)
!2830 = !DILocation(line: 288, column: 33, scope: !2824)
!2831 = !DILocation(line: 291, column: 22, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2824, file: !371, line: 291, column: 7)
!2833 = !DILocation(line: 291, column: 21, scope: !2832)
!2834 = !DILocation(line: 291, column: 7, scope: !2832)
!2835 = !DILocation(line: 291, column: 7, scope: !2824)
!2836 = !DILocation(line: 292, column: 22, scope: !2832)
!2837 = !DILocation(line: 292, column: 21, scope: !2832)
!2838 = !DILocation(line: 292, column: 12, scope: !2832)
!2839 = !DILocation(line: 292, column: 5, scope: !2832)
!2840 = !DILocalVariable(name: "lim", scope: !2824, file: !371, line: 296, type: !35)
!2841 = !DILocation(line: 296, column: 15, scope: !2824)
!2842 = !DILocation(line: 296, column: 21, scope: !2824)
!2843 = !DILocation(line: 296, column: 23, scope: !2824)
!2844 = !DILocalVariable(name: "i", scope: !2845, file: !371, line: 297, type: !25)
!2845 = distinct !DILexicalBlock(scope: !2824, file: !371, line: 297, column: 3)
!2846 = !DILocation(line: 297, column: 12, scope: !2845)
!2847 = !DILocation(line: 297, column: 8, scope: !2845)
!2848 = !DILocation(line: 297, column: 19, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !371, line: 297, column: 3)
!2850 = !DILocation(line: 297, column: 21, scope: !2849)
!2851 = !DILocation(line: 297, column: 3, scope: !2845)
!2852 = !DILocation(line: 298, column: 13, scope: !2849)
!2853 = !DILocation(line: 298, column: 12, scope: !2849)
!2854 = !DILocation(line: 298, column: 20, scope: !2849)
!2855 = !DILocation(line: 298, column: 17, scope: !2849)
!2856 = !DILocation(line: 298, column: 9, scope: !2849)
!2857 = !DILocation(line: 298, column: 5, scope: !2849)
!2858 = !DILocation(line: 297, column: 42, scope: !2849)
!2859 = !DILocation(line: 297, column: 3, scope: !2849)
!2860 = distinct !{!2860, !2851, !2861, !553}
!2861 = !DILocation(line: 298, column: 20, scope: !2845)
!2862 = !DILocation(line: 299, column: 21, scope: !2824)
!2863 = !DILocation(line: 299, column: 24, scope: !2824)
!2864 = !DILocation(line: 299, column: 10, scope: !2824)
!2865 = !DILocation(line: 299, column: 3, scope: !2824)
!2866 = !DILocation(line: 300, column: 1, scope: !2824)
!2867 = distinct !DISubprogram(name: "mcel_scanz", scope: !371, file: !371, line: 307, type: !2868, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !37)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2671, !35}
!2870 = !DILocalVariable(name: "p", arg: 1, scope: !2867, file: !371, line: 307, type: !35)
!2871 = !DILocation(line: 307, column: 25, scope: !2867)
!2872 = !DILocation(line: 309, column: 22, scope: !2867)
!2873 = !DILocation(line: 309, column: 10, scope: !2867)
!2874 = !DILocation(line: 309, column: 3, scope: !2867)
!2875 = distinct !DISubprogram(name: "set_program_name", scope: !241, file: !241, line: 37, type: !670, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !240, retainedNodes: !37)
!2876 = !DILocalVariable(name: "argv0", arg: 1, scope: !2875, file: !241, line: 37, type: !35)
!2877 = !DILocation(line: 37, column: 31, scope: !2875)
!2878 = !DILocalVariable(name: "slash", scope: !2875, file: !241, line: 44, type: !35)
!2879 = !DILocation(line: 44, column: 15, scope: !2875)
!2880 = !DILocation(line: 44, column: 32, scope: !2875)
!2881 = !DILocation(line: 44, column: 23, scope: !2875)
!2882 = !DILocalVariable(name: "base", scope: !2875, file: !241, line: 45, type: !35)
!2883 = !DILocation(line: 45, column: 15, scope: !2875)
!2884 = !DILocation(line: 45, column: 22, scope: !2875)
!2885 = !DILocation(line: 45, column: 30, scope: !2875)
!2886 = !DILocation(line: 45, column: 36, scope: !2875)
!2887 = !DILocation(line: 45, column: 42, scope: !2875)
!2888 = !DILocation(line: 46, column: 12, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2875, file: !241, line: 46, column: 7)
!2890 = !DILocation(line: 46, column: 19, scope: !2889)
!2891 = !DILocation(line: 46, column: 17, scope: !2889)
!2892 = !DILocation(line: 46, column: 9, scope: !2889)
!2893 = !DILocation(line: 46, column: 25, scope: !2889)
!2894 = !DILocation(line: 46, column: 35, scope: !2889)
!2895 = !DILocation(line: 46, column: 40, scope: !2889)
!2896 = !DILocation(line: 46, column: 28, scope: !2889)
!2897 = !DILocation(line: 46, column: 7, scope: !2875)
!2898 = !DILocation(line: 48, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2889, file: !241, line: 47, column: 5)
!2900 = !DILocation(line: 48, column: 13, scope: !2899)
!2901 = !DILocation(line: 49, column: 20, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !241, line: 49, column: 11)
!2903 = !DILocation(line: 49, column: 11, scope: !2902)
!2904 = !DILocation(line: 49, column: 36, scope: !2902)
!2905 = !DILocation(line: 49, column: 11, scope: !2899)
!2906 = !DILocation(line: 51, column: 16, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !241, line: 50, column: 9)
!2908 = !DILocation(line: 52, column: 19, scope: !2907)
!2909 = !DILocation(line: 52, column: 17, scope: !2907)
!2910 = !DILocation(line: 53, column: 9, scope: !2907)
!2911 = !DILocation(line: 54, column: 5, scope: !2899)
!2912 = !DILocation(line: 65, column: 18, scope: !2875)
!2913 = !DILocation(line: 65, column: 16, scope: !2875)
!2914 = !DILocation(line: 71, column: 38, scope: !2875)
!2915 = !DILocation(line: 71, column: 27, scope: !2875)
!2916 = !DILocation(line: 74, column: 44, scope: !2875)
!2917 = !DILocation(line: 74, column: 33, scope: !2875)
!2918 = !DILocation(line: 76, column: 1, scope: !2875)
!2919 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !246, file: !247, line: 38, type: !35)
!2920 = !DILocation(line: 38, column: 31, scope: !246)
!2921 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !246, file: !247, line: 38, type: !35)
!2922 = !DILocation(line: 38, column: 66, scope: !246)
!2923 = !DILocalVariable(name: "translation", scope: !246, file: !247, line: 40, type: !35)
!2924 = !DILocation(line: 40, column: 15, scope: !246)
!2925 = !DILocation(line: 40, column: 38, scope: !246)
!2926 = !DILocation(line: 40, column: 29, scope: !246)
!2927 = !DILocation(line: 41, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !246, file: !247, line: 41, column: 7)
!2929 = !DILocation(line: 41, column: 22, scope: !2928)
!2930 = !DILocation(line: 41, column: 19, scope: !2928)
!2931 = !DILocation(line: 41, column: 7, scope: !246)
!2932 = !DILocation(line: 42, column: 12, scope: !2928)
!2933 = !DILocation(line: 42, column: 5, scope: !2928)
!2934 = !DILocalVariable(name: "w", scope: !246, file: !247, line: 47, type: !864)
!2935 = !DILocation(line: 47, column: 12, scope: !246)
!2936 = !DILocalVariable(name: "mbs", scope: !246, file: !247, line: 48, type: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !335, line: 6, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !337, line: 21, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 13, size: 64, elements: !2940)
!2940 = !{!2941, !2942}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2939, file: !337, line: 15, baseType: !25, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2939, file: !337, line: 20, baseType: !2943, size: 32, offset: 32)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2939, file: !337, line: 16, size: 32, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2943, file: !337, line: 18, baseType: !7, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2943, file: !337, line: 19, baseType: !346, size: 32)
!2947 = !DILocation(line: 48, column: 13, scope: !246)
!2948 = !DILocation(line: 48, column: 18, scope: !246)
!2949 = !DILocation(line: 49, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !246, file: !247, line: 49, column: 7)
!2951 = !DILocation(line: 49, column: 39, scope: !2950)
!2952 = !DILocation(line: 49, column: 44, scope: !2950)
!2953 = !DILocation(line: 49, column: 47, scope: !2950)
!2954 = !DILocation(line: 49, column: 49, scope: !2950)
!2955 = !DILocation(line: 49, column: 7, scope: !246)
!2956 = !DILocation(line: 50, column: 12, scope: !2950)
!2957 = !DILocation(line: 50, column: 5, scope: !2950)
!2958 = !DILocation(line: 53, column: 10, scope: !246)
!2959 = !DILocation(line: 53, column: 3, scope: !246)
!2960 = !DILocation(line: 54, column: 1, scope: !246)
!2961 = distinct !DISubprogram(name: "clone_quoting_options", scope: !256, file: !256, line: 113, type: !2962, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!2964, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!2965 = !DILocalVariable(name: "o", arg: 1, scope: !2961, file: !256, line: 113, type: !2964)
!2966 = !DILocation(line: 113, column: 48, scope: !2961)
!2967 = !DILocalVariable(name: "saved_errno", scope: !2961, file: !256, line: 115, type: !25)
!2968 = !DILocation(line: 115, column: 7, scope: !2961)
!2969 = !DILocation(line: 115, column: 21, scope: !2961)
!2970 = !DILocalVariable(name: "p", scope: !2961, file: !256, line: 116, type: !2964)
!2971 = !DILocation(line: 116, column: 27, scope: !2961)
!2972 = !DILocation(line: 116, column: 40, scope: !2961)
!2973 = !DILocation(line: 116, column: 44, scope: !2961)
!2974 = !DILocation(line: 116, column: 31, scope: !2961)
!2975 = !DILocation(line: 118, column: 11, scope: !2961)
!2976 = !DILocation(line: 118, column: 3, scope: !2961)
!2977 = !DILocation(line: 118, column: 9, scope: !2961)
!2978 = !DILocation(line: 119, column: 10, scope: !2961)
!2979 = !DILocation(line: 119, column: 3, scope: !2961)
!2980 = distinct !DISubprogram(name: "get_quoting_style", scope: !256, file: !256, line: 124, type: !2981, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!68, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!2985 = !DILocalVariable(name: "o", arg: 1, scope: !2980, file: !256, line: 124, type: !2983)
!2986 = !DILocation(line: 124, column: 50, scope: !2980)
!2987 = !DILocation(line: 126, column: 11, scope: !2980)
!2988 = !DILocation(line: 126, column: 15, scope: !2980)
!2989 = !DILocation(line: 126, column: 46, scope: !2980)
!2990 = !DILocation(line: 126, column: 3, scope: !2980)
!2991 = distinct !DISubprogram(name: "set_quoting_style", scope: !256, file: !256, line: 132, type: !2992, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !2964, !68}
!2994 = !DILocalVariable(name: "o", arg: 1, scope: !2991, file: !256, line: 132, type: !2964)
!2995 = !DILocation(line: 132, column: 44, scope: !2991)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2991, file: !256, line: 132, type: !68)
!2997 = !DILocation(line: 132, column: 66, scope: !2991)
!2998 = !DILocation(line: 134, column: 47, scope: !2991)
!2999 = !DILocation(line: 134, column: 4, scope: !2991)
!3000 = !DILocation(line: 134, column: 8, scope: !2991)
!3001 = !DILocation(line: 134, column: 39, scope: !2991)
!3002 = !DILocation(line: 134, column: 45, scope: !2991)
!3003 = !DILocation(line: 135, column: 1, scope: !2991)
!3004 = distinct !DISubprogram(name: "set_char_quoting", scope: !256, file: !256, line: 143, type: !3005, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!25, !2964, !23, !25}
!3007 = !DILocalVariable(name: "o", arg: 1, scope: !3004, file: !256, line: 143, type: !2964)
!3008 = !DILocation(line: 143, column: 43, scope: !3004)
!3009 = !DILocalVariable(name: "c", arg: 2, scope: !3004, file: !256, line: 143, type: !23)
!3010 = !DILocation(line: 143, column: 51, scope: !3004)
!3011 = !DILocalVariable(name: "i", arg: 3, scope: !3004, file: !256, line: 143, type: !25)
!3012 = !DILocation(line: 143, column: 58, scope: !3004)
!3013 = !DILocalVariable(name: "uc", scope: !3004, file: !256, line: 145, type: !332)
!3014 = !DILocation(line: 145, column: 17, scope: !3004)
!3015 = !DILocation(line: 145, column: 22, scope: !3004)
!3016 = !DILocalVariable(name: "p", scope: !3004, file: !256, line: 146, type: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3018 = !DILocation(line: 146, column: 17, scope: !3004)
!3019 = !DILocation(line: 147, column: 6, scope: !3004)
!3020 = !DILocation(line: 147, column: 10, scope: !3004)
!3021 = !DILocation(line: 147, column: 41, scope: !3004)
!3022 = !DILocation(line: 147, column: 5, scope: !3004)
!3023 = !DILocation(line: 147, column: 59, scope: !3004)
!3024 = !DILocation(line: 147, column: 62, scope: !3004)
!3025 = !DILocation(line: 147, column: 57, scope: !3004)
!3026 = !DILocalVariable(name: "shift", scope: !3004, file: !256, line: 148, type: !25)
!3027 = !DILocation(line: 148, column: 7, scope: !3004)
!3028 = !DILocation(line: 148, column: 15, scope: !3004)
!3029 = !DILocation(line: 148, column: 18, scope: !3004)
!3030 = !DILocalVariable(name: "r", scope: !3004, file: !256, line: 149, type: !7)
!3031 = !DILocation(line: 149, column: 16, scope: !3004)
!3032 = !DILocation(line: 149, column: 22, scope: !3004)
!3033 = !DILocation(line: 149, column: 21, scope: !3004)
!3034 = !DILocation(line: 149, column: 27, scope: !3004)
!3035 = !DILocation(line: 149, column: 24, scope: !3004)
!3036 = !DILocation(line: 149, column: 34, scope: !3004)
!3037 = !DILocation(line: 150, column: 11, scope: !3004)
!3038 = !DILocation(line: 150, column: 13, scope: !3004)
!3039 = !DILocation(line: 150, column: 21, scope: !3004)
!3040 = !DILocation(line: 150, column: 19, scope: !3004)
!3041 = !DILocation(line: 150, column: 27, scope: !3004)
!3042 = !DILocation(line: 150, column: 24, scope: !3004)
!3043 = !DILocation(line: 150, column: 4, scope: !3004)
!3044 = !DILocation(line: 150, column: 6, scope: !3004)
!3045 = !DILocation(line: 151, column: 10, scope: !3004)
!3046 = !DILocation(line: 151, column: 3, scope: !3004)
!3047 = distinct !DISubprogram(name: "set_quoting_flags", scope: !256, file: !256, line: 159, type: !3048, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!25, !2964, !25}
!3050 = !DILocalVariable(name: "o", arg: 1, scope: !3047, file: !256, line: 159, type: !2964)
!3051 = !DILocation(line: 159, column: 44, scope: !3047)
!3052 = !DILocalVariable(name: "i", arg: 2, scope: !3047, file: !256, line: 159, type: !25)
!3053 = !DILocation(line: 159, column: 51, scope: !3047)
!3054 = !DILocation(line: 161, column: 8, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3047, file: !256, line: 161, column: 7)
!3056 = !DILocation(line: 161, column: 7, scope: !3047)
!3057 = !DILocation(line: 162, column: 7, scope: !3055)
!3058 = !DILocation(line: 162, column: 5, scope: !3055)
!3059 = !DILocalVariable(name: "r", scope: !3047, file: !256, line: 163, type: !25)
!3060 = !DILocation(line: 163, column: 7, scope: !3047)
!3061 = !DILocation(line: 163, column: 11, scope: !3047)
!3062 = !DILocation(line: 163, column: 14, scope: !3047)
!3063 = !DILocation(line: 164, column: 14, scope: !3047)
!3064 = !DILocation(line: 164, column: 3, scope: !3047)
!3065 = !DILocation(line: 164, column: 6, scope: !3047)
!3066 = !DILocation(line: 164, column: 12, scope: !3047)
!3067 = !DILocation(line: 165, column: 10, scope: !3047)
!3068 = !DILocation(line: 165, column: 3, scope: !3047)
!3069 = distinct !DISubprogram(name: "set_custom_quoting", scope: !256, file: !256, line: 169, type: !3070, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !2964, !35, !35}
!3072 = !DILocalVariable(name: "o", arg: 1, scope: !3069, file: !256, line: 169, type: !2964)
!3073 = !DILocation(line: 169, column: 45, scope: !3069)
!3074 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3069, file: !256, line: 170, type: !35)
!3075 = !DILocation(line: 170, column: 33, scope: !3069)
!3076 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3069, file: !256, line: 170, type: !35)
!3077 = !DILocation(line: 170, column: 57, scope: !3069)
!3078 = !DILocation(line: 172, column: 8, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3069, file: !256, line: 172, column: 7)
!3080 = !DILocation(line: 172, column: 7, scope: !3069)
!3081 = !DILocation(line: 173, column: 7, scope: !3079)
!3082 = !DILocation(line: 173, column: 5, scope: !3079)
!3083 = !DILocation(line: 174, column: 3, scope: !3069)
!3084 = !DILocation(line: 174, column: 6, scope: !3069)
!3085 = !DILocation(line: 174, column: 12, scope: !3069)
!3086 = !DILocation(line: 175, column: 8, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3069, file: !256, line: 175, column: 7)
!3088 = !DILocation(line: 175, column: 19, scope: !3087)
!3089 = !DILocation(line: 175, column: 23, scope: !3087)
!3090 = !DILocation(line: 175, column: 7, scope: !3069)
!3091 = !DILocation(line: 176, column: 5, scope: !3087)
!3092 = !DILocation(line: 177, column: 19, scope: !3069)
!3093 = !DILocation(line: 177, column: 3, scope: !3069)
!3094 = !DILocation(line: 177, column: 6, scope: !3069)
!3095 = !DILocation(line: 177, column: 17, scope: !3069)
!3096 = !DILocation(line: 178, column: 20, scope: !3069)
!3097 = !DILocation(line: 178, column: 3, scope: !3069)
!3098 = !DILocation(line: 178, column: 6, scope: !3069)
!3099 = !DILocation(line: 178, column: 18, scope: !3069)
!3100 = !DILocation(line: 179, column: 1, scope: !3069)
!3101 = distinct !DISubprogram(name: "quotearg_buffer", scope: !256, file: !256, line: 774, type: !3102, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!151, !22, !151, !35, !151, !2983}
!3104 = !DILocalVariable(name: "buffer", arg: 1, scope: !3101, file: !256, line: 774, type: !22)
!3105 = !DILocation(line: 774, column: 24, scope: !3101)
!3106 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3101, file: !256, line: 774, type: !151)
!3107 = !DILocation(line: 774, column: 39, scope: !3101)
!3108 = !DILocalVariable(name: "arg", arg: 3, scope: !3101, file: !256, line: 775, type: !35)
!3109 = !DILocation(line: 775, column: 30, scope: !3101)
!3110 = !DILocalVariable(name: "argsize", arg: 4, scope: !3101, file: !256, line: 775, type: !151)
!3111 = !DILocation(line: 775, column: 42, scope: !3101)
!3112 = !DILocalVariable(name: "o", arg: 5, scope: !3101, file: !256, line: 776, type: !2983)
!3113 = !DILocation(line: 776, column: 48, scope: !3101)
!3114 = !DILocalVariable(name: "p", scope: !3101, file: !256, line: 778, type: !2983)
!3115 = !DILocation(line: 778, column: 33, scope: !3101)
!3116 = !DILocation(line: 778, column: 37, scope: !3101)
!3117 = !DILocation(line: 778, column: 41, scope: !3101)
!3118 = !DILocalVariable(name: "saved_errno", scope: !3101, file: !256, line: 779, type: !25)
!3119 = !DILocation(line: 779, column: 7, scope: !3101)
!3120 = !DILocation(line: 779, column: 21, scope: !3101)
!3121 = !DILocalVariable(name: "r", scope: !3101, file: !256, line: 780, type: !151)
!3122 = !DILocation(line: 780, column: 10, scope: !3101)
!3123 = !DILocation(line: 780, column: 40, scope: !3101)
!3124 = !DILocation(line: 780, column: 48, scope: !3101)
!3125 = !DILocation(line: 780, column: 60, scope: !3101)
!3126 = !DILocation(line: 780, column: 65, scope: !3101)
!3127 = !DILocation(line: 781, column: 40, scope: !3101)
!3128 = !DILocation(line: 781, column: 43, scope: !3101)
!3129 = !DILocation(line: 781, column: 50, scope: !3101)
!3130 = !DILocation(line: 781, column: 53, scope: !3101)
!3131 = !DILocation(line: 781, column: 60, scope: !3101)
!3132 = !DILocation(line: 781, column: 63, scope: !3101)
!3133 = !DILocation(line: 782, column: 40, scope: !3101)
!3134 = !DILocation(line: 782, column: 43, scope: !3101)
!3135 = !DILocation(line: 782, column: 55, scope: !3101)
!3136 = !DILocation(line: 782, column: 58, scope: !3101)
!3137 = !DILocation(line: 780, column: 14, scope: !3101)
!3138 = !DILocation(line: 783, column: 11, scope: !3101)
!3139 = !DILocation(line: 783, column: 3, scope: !3101)
!3140 = !DILocation(line: 783, column: 9, scope: !3101)
!3141 = !DILocation(line: 784, column: 10, scope: !3101)
!3142 = !DILocation(line: 784, column: 3, scope: !3101)
!3143 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !256, file: !256, line: 251, type: !3144, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !37)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!151, !22, !151, !35, !151, !68, !25, !3146, !35, !35}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3148 = !DILocalVariable(name: "buffer", arg: 1, scope: !3143, file: !256, line: 251, type: !22)
!3149 = !DILocation(line: 251, column: 33, scope: !3143)
!3150 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3143, file: !256, line: 251, type: !151)
!3151 = !DILocation(line: 251, column: 48, scope: !3143)
!3152 = !DILocalVariable(name: "arg", arg: 3, scope: !3143, file: !256, line: 252, type: !35)
!3153 = !DILocation(line: 252, column: 39, scope: !3143)
!3154 = !DILocalVariable(name: "argsize", arg: 4, scope: !3143, file: !256, line: 252, type: !151)
!3155 = !DILocation(line: 252, column: 51, scope: !3143)
!3156 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3143, file: !256, line: 253, type: !68)
!3157 = !DILocation(line: 253, column: 46, scope: !3143)
!3158 = !DILocalVariable(name: "flags", arg: 6, scope: !3143, file: !256, line: 253, type: !25)
!3159 = !DILocation(line: 253, column: 65, scope: !3143)
!3160 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3143, file: !256, line: 254, type: !3146)
!3161 = !DILocation(line: 254, column: 47, scope: !3143)
!3162 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3143, file: !256, line: 255, type: !35)
!3163 = !DILocation(line: 255, column: 39, scope: !3143)
!3164 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3143, file: !256, line: 256, type: !35)
!3165 = !DILocation(line: 256, column: 39, scope: !3143)
!3166 = !DILocalVariable(name: "unibyte_locale", scope: !3143, file: !256, line: 258, type: !27)
!3167 = !DILocation(line: 258, column: 8, scope: !3143)
!3168 = !DILocation(line: 258, column: 25, scope: !3143)
!3169 = !DILocation(line: 258, column: 36, scope: !3143)
!3170 = !DILocalVariable(name: "len", scope: !3143, file: !256, line: 260, type: !151)
!3171 = !DILocation(line: 260, column: 10, scope: !3143)
!3172 = !DILocalVariable(name: "orig_buffersize", scope: !3143, file: !256, line: 261, type: !151)
!3173 = !DILocation(line: 261, column: 10, scope: !3143)
!3174 = !DILocalVariable(name: "quote_string", scope: !3143, file: !256, line: 262, type: !35)
!3175 = !DILocation(line: 262, column: 15, scope: !3143)
!3176 = !DILocalVariable(name: "quote_string_len", scope: !3143, file: !256, line: 263, type: !151)
!3177 = !DILocation(line: 263, column: 10, scope: !3143)
!3178 = !DILocalVariable(name: "backslash_escapes", scope: !3143, file: !256, line: 264, type: !27)
!3179 = !DILocation(line: 264, column: 8, scope: !3143)
!3180 = !DILocalVariable(name: "elide_outer_quotes", scope: !3143, file: !256, line: 265, type: !27)
!3181 = !DILocation(line: 265, column: 8, scope: !3143)
!3182 = !DILocation(line: 265, column: 30, scope: !3143)
!3183 = !DILocation(line: 265, column: 36, scope: !3143)
!3184 = !DILocation(line: 265, column: 61, scope: !3143)
!3185 = !DILocalVariable(name: "encountered_single_quote", scope: !3143, file: !256, line: 266, type: !27)
!3186 = !DILocation(line: 266, column: 8, scope: !3143)
!3187 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3143, file: !256, line: 267, type: !27)
!3188 = !DILocation(line: 267, column: 8, scope: !3143)
!3189 = !DILocation(line: 267, column: 3, scope: !3143)
!3190 = !DILabel(scope: !3143, name: "process_input", file: !256, line: 308)
!3191 = !DILocation(line: 308, column: 2, scope: !3143)
!3192 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3143, file: !256, line: 309, type: !27)
!3193 = !DILocation(line: 309, column: 8, scope: !3143)
!3194 = !DILocation(line: 311, column: 11, scope: !3143)
!3195 = !DILocation(line: 311, column: 3, scope: !3143)
!3196 = !DILocation(line: 314, column: 21, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 312, column: 5)
!3198 = !DILocation(line: 315, column: 26, scope: !3197)
!3199 = !DILocation(line: 315, column: 7, scope: !3197)
!3200 = !DILocation(line: 318, column: 12, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !256, line: 318, column: 11)
!3202 = !DILocation(line: 318, column: 11, scope: !3197)
!3203 = !DILocation(line: 319, column: 9, scope: !3201)
!3204 = !DILocation(line: 319, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !256, line: 319, column: 9)
!3206 = distinct !DILexicalBlock(scope: !3201, file: !256, line: 319, column: 9)
!3207 = !DILocation(line: 319, column: 9, scope: !3206)
!3208 = !DILocation(line: 320, column: 25, scope: !3197)
!3209 = !DILocation(line: 321, column: 20, scope: !3197)
!3210 = !DILocation(line: 322, column: 24, scope: !3197)
!3211 = !DILocation(line: 323, column: 7, scope: !3197)
!3212 = !DILocation(line: 326, column: 25, scope: !3197)
!3213 = !DILocation(line: 327, column: 26, scope: !3197)
!3214 = !DILocation(line: 328, column: 7, scope: !3197)
!3215 = !DILocation(line: 334, column: 13, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !256, line: 334, column: 13)
!3217 = distinct !DILexicalBlock(scope: !3197, file: !256, line: 333, column: 7)
!3218 = !DILocation(line: 334, column: 27, scope: !3216)
!3219 = !DILocation(line: 334, column: 13, scope: !3217)
!3220 = !DILocation(line: 357, column: 50, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3216, file: !256, line: 335, column: 11)
!3222 = !DILocation(line: 357, column: 26, scope: !3221)
!3223 = !DILocation(line: 357, column: 24, scope: !3221)
!3224 = !DILocation(line: 358, column: 51, scope: !3221)
!3225 = !DILocation(line: 358, column: 27, scope: !3221)
!3226 = !DILocation(line: 358, column: 25, scope: !3221)
!3227 = !DILocation(line: 359, column: 11, scope: !3221)
!3228 = !DILocation(line: 360, column: 14, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3217, file: !256, line: 360, column: 13)
!3230 = !DILocation(line: 360, column: 13, scope: !3217)
!3231 = !DILocalVariable(name: "lq", scope: !3232, file: !256, line: 361, type: !35)
!3232 = distinct !DILexicalBlock(scope: !3229, file: !256, line: 361, column: 11)
!3233 = !DILocation(line: 361, column: 28, scope: !3232)
!3234 = !DILocation(line: 361, column: 33, scope: !3232)
!3235 = !DILocation(line: 361, column: 16, scope: !3232)
!3236 = !DILocation(line: 361, column: 46, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3232, file: !256, line: 361, column: 11)
!3238 = !DILocation(line: 361, column: 45, scope: !3237)
!3239 = !DILocation(line: 361, column: 11, scope: !3232)
!3240 = !DILocation(line: 362, column: 13, scope: !3237)
!3241 = !DILocation(line: 362, column: 13, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !256, line: 362, column: 13)
!3243 = distinct !DILexicalBlock(scope: !3237, file: !256, line: 362, column: 13)
!3244 = !DILocation(line: 362, column: 13, scope: !3243)
!3245 = !DILocation(line: 361, column: 52, scope: !3237)
!3246 = !DILocation(line: 361, column: 11, scope: !3237)
!3247 = distinct !{!3247, !3239, !3248, !553}
!3248 = !DILocation(line: 362, column: 13, scope: !3232)
!3249 = !DILocation(line: 363, column: 27, scope: !3217)
!3250 = !DILocation(line: 364, column: 24, scope: !3217)
!3251 = !DILocation(line: 364, column: 22, scope: !3217)
!3252 = !DILocation(line: 365, column: 36, scope: !3217)
!3253 = !DILocation(line: 365, column: 28, scope: !3217)
!3254 = !DILocation(line: 365, column: 26, scope: !3217)
!3255 = !DILocation(line: 367, column: 7, scope: !3197)
!3256 = !DILocation(line: 370, column: 25, scope: !3197)
!3257 = !DILocation(line: 370, column: 7, scope: !3197)
!3258 = !DILocation(line: 373, column: 26, scope: !3197)
!3259 = !DILocation(line: 373, column: 7, scope: !3197)
!3260 = !DILocation(line: 376, column: 12, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3197, file: !256, line: 376, column: 11)
!3262 = !DILocation(line: 376, column: 11, scope: !3197)
!3263 = !DILocation(line: 377, column: 27, scope: !3261)
!3264 = !DILocation(line: 377, column: 9, scope: !3261)
!3265 = !DILocation(line: 380, column: 21, scope: !3197)
!3266 = !DILocation(line: 381, column: 12, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3197, file: !256, line: 381, column: 11)
!3268 = !DILocation(line: 381, column: 11, scope: !3197)
!3269 = !DILocation(line: 382, column: 9, scope: !3267)
!3270 = !DILocation(line: 382, column: 9, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !256, line: 382, column: 9)
!3272 = distinct !DILexicalBlock(scope: !3267, file: !256, line: 382, column: 9)
!3273 = !DILocation(line: 382, column: 9, scope: !3272)
!3274 = !DILocation(line: 383, column: 20, scope: !3197)
!3275 = !DILocation(line: 384, column: 24, scope: !3197)
!3276 = !DILocation(line: 385, column: 7, scope: !3197)
!3277 = !DILocation(line: 388, column: 26, scope: !3197)
!3278 = !DILocation(line: 389, column: 7, scope: !3197)
!3279 = !DILocation(line: 392, column: 7, scope: !3197)
!3280 = !DILocalVariable(name: "i", scope: !3281, file: !256, line: 395, type: !151)
!3281 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 395, column: 3)
!3282 = !DILocation(line: 395, column: 15, scope: !3281)
!3283 = !DILocation(line: 395, column: 8, scope: !3281)
!3284 = !DILocation(line: 395, column: 26, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !256, line: 395, column: 3)
!3286 = !DILocation(line: 395, column: 34, scope: !3285)
!3287 = !DILocation(line: 395, column: 48, scope: !3285)
!3288 = !DILocation(line: 395, column: 52, scope: !3285)
!3289 = !DILocation(line: 395, column: 55, scope: !3285)
!3290 = !DILocation(line: 395, column: 65, scope: !3285)
!3291 = !DILocation(line: 395, column: 70, scope: !3285)
!3292 = !DILocation(line: 395, column: 67, scope: !3285)
!3293 = !DILocation(line: 395, column: 23, scope: !3285)
!3294 = !DILocation(line: 395, column: 3, scope: !3281)
!3295 = !DILocalVariable(name: "is_right_quote", scope: !3296, file: !256, line: 397, type: !27)
!3296 = distinct !DILexicalBlock(scope: !3285, file: !256, line: 396, column: 5)
!3297 = !DILocation(line: 397, column: 12, scope: !3296)
!3298 = !DILocalVariable(name: "escaping", scope: !3296, file: !256, line: 398, type: !27)
!3299 = !DILocation(line: 398, column: 12, scope: !3296)
!3300 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3296, file: !256, line: 399, type: !27)
!3301 = !DILocation(line: 399, column: 12, scope: !3296)
!3302 = !DILocation(line: 401, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 401, column: 11)
!3304 = !DILocation(line: 402, column: 11, scope: !3303)
!3305 = !DILocation(line: 402, column: 14, scope: !3303)
!3306 = !DILocation(line: 402, column: 28, scope: !3303)
!3307 = !DILocation(line: 403, column: 11, scope: !3303)
!3308 = !DILocation(line: 403, column: 14, scope: !3303)
!3309 = !DILocation(line: 404, column: 11, scope: !3303)
!3310 = !DILocation(line: 404, column: 15, scope: !3303)
!3311 = !DILocation(line: 404, column: 19, scope: !3303)
!3312 = !DILocation(line: 404, column: 17, scope: !3303)
!3313 = !DILocation(line: 405, column: 19, scope: !3303)
!3314 = !DILocation(line: 405, column: 27, scope: !3303)
!3315 = !DILocation(line: 405, column: 39, scope: !3303)
!3316 = !DILocation(line: 405, column: 46, scope: !3303)
!3317 = !DILocation(line: 405, column: 44, scope: !3303)
!3318 = !DILocation(line: 409, column: 40, scope: !3303)
!3319 = !DILocation(line: 409, column: 32, scope: !3303)
!3320 = !DILocation(line: 409, column: 30, scope: !3303)
!3321 = !DILocation(line: 409, column: 48, scope: !3303)
!3322 = !DILocation(line: 405, column: 15, scope: !3303)
!3323 = !DILocation(line: 410, column: 11, scope: !3303)
!3324 = !DILocation(line: 410, column: 21, scope: !3303)
!3325 = !DILocation(line: 410, column: 27, scope: !3303)
!3326 = !DILocation(line: 410, column: 25, scope: !3303)
!3327 = !DILocation(line: 410, column: 30, scope: !3303)
!3328 = !DILocation(line: 410, column: 44, scope: !3303)
!3329 = !DILocation(line: 410, column: 14, scope: !3303)
!3330 = !DILocation(line: 401, column: 11, scope: !3296)
!3331 = !DILocation(line: 412, column: 15, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !256, line: 412, column: 15)
!3333 = distinct !DILexicalBlock(scope: !3303, file: !256, line: 411, column: 9)
!3334 = !DILocation(line: 412, column: 15, scope: !3333)
!3335 = !DILocation(line: 413, column: 13, scope: !3332)
!3336 = !DILocation(line: 414, column: 26, scope: !3333)
!3337 = !DILocation(line: 415, column: 9, scope: !3333)
!3338 = !DILocalVariable(name: "c", scope: !3296, file: !256, line: 417, type: !332)
!3339 = !DILocation(line: 417, column: 21, scope: !3296)
!3340 = !DILocation(line: 417, column: 25, scope: !3296)
!3341 = !DILocation(line: 417, column: 29, scope: !3296)
!3342 = !DILocation(line: 418, column: 15, scope: !3296)
!3343 = !DILocation(line: 418, column: 7, scope: !3296)
!3344 = !DILocation(line: 421, column: 15, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 421, column: 15)
!3346 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 419, column: 9)
!3347 = !DILocation(line: 421, column: 15, scope: !3346)
!3348 = !DILocation(line: 423, column: 15, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !256, line: 422, column: 13)
!3350 = !DILocation(line: 423, column: 15, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !256, line: 423, column: 15)
!3352 = distinct !DILexicalBlock(scope: !3349, file: !256, line: 423, column: 15)
!3353 = !DILocation(line: 423, column: 15, scope: !3352)
!3354 = !DILocation(line: 423, column: 15, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !256, line: 423, column: 15)
!3356 = !DILocation(line: 423, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3355, file: !256, line: 423, column: 15)
!3358 = !DILocation(line: 423, column: 15, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !256, line: 423, column: 15)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !256, line: 423, column: 15)
!3361 = !DILocation(line: 423, column: 15, scope: !3360)
!3362 = !DILocation(line: 423, column: 15, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !256, line: 423, column: 15)
!3364 = distinct !DILexicalBlock(scope: !3357, file: !256, line: 423, column: 15)
!3365 = !DILocation(line: 423, column: 15, scope: !3364)
!3366 = !DILocation(line: 423, column: 15, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !256, line: 423, column: 15)
!3368 = distinct !DILexicalBlock(scope: !3357, file: !256, line: 423, column: 15)
!3369 = !DILocation(line: 423, column: 15, scope: !3368)
!3370 = !DILocation(line: 423, column: 15, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !256, line: 423, column: 15)
!3372 = distinct !DILexicalBlock(scope: !3352, file: !256, line: 423, column: 15)
!3373 = !DILocation(line: 423, column: 15, scope: !3372)
!3374 = !DILocation(line: 430, column: 19, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3349, file: !256, line: 430, column: 19)
!3376 = !DILocation(line: 430, column: 33, scope: !3375)
!3377 = !DILocation(line: 431, column: 19, scope: !3375)
!3378 = !DILocation(line: 431, column: 22, scope: !3375)
!3379 = !DILocation(line: 431, column: 24, scope: !3375)
!3380 = !DILocation(line: 431, column: 30, scope: !3375)
!3381 = !DILocation(line: 431, column: 28, scope: !3375)
!3382 = !DILocation(line: 431, column: 38, scope: !3375)
!3383 = !DILocation(line: 431, column: 48, scope: !3375)
!3384 = !DILocation(line: 431, column: 52, scope: !3375)
!3385 = !DILocation(line: 431, column: 54, scope: !3375)
!3386 = !DILocation(line: 431, column: 45, scope: !3375)
!3387 = !DILocation(line: 431, column: 59, scope: !3375)
!3388 = !DILocation(line: 431, column: 62, scope: !3375)
!3389 = !DILocation(line: 431, column: 66, scope: !3375)
!3390 = !DILocation(line: 431, column: 68, scope: !3375)
!3391 = !DILocation(line: 431, column: 73, scope: !3375)
!3392 = !DILocation(line: 430, column: 19, scope: !3349)
!3393 = !DILocation(line: 433, column: 19, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3375, file: !256, line: 432, column: 17)
!3395 = !DILocation(line: 433, column: 19, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !256, line: 433, column: 19)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !256, line: 433, column: 19)
!3398 = !DILocation(line: 433, column: 19, scope: !3397)
!3399 = !DILocation(line: 434, column: 19, scope: !3394)
!3400 = !DILocation(line: 434, column: 19, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !256, line: 434, column: 19)
!3402 = distinct !DILexicalBlock(scope: !3394, file: !256, line: 434, column: 19)
!3403 = !DILocation(line: 434, column: 19, scope: !3402)
!3404 = !DILocation(line: 435, column: 17, scope: !3394)
!3405 = !DILocation(line: 436, column: 17, scope: !3349)
!3406 = !DILocation(line: 441, column: 13, scope: !3349)
!3407 = !DILocation(line: 442, column: 20, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3345, file: !256, line: 442, column: 20)
!3409 = !DILocation(line: 442, column: 26, scope: !3408)
!3410 = !DILocation(line: 442, column: 20, scope: !3345)
!3411 = !DILocation(line: 443, column: 13, scope: !3408)
!3412 = !DILocation(line: 444, column: 11, scope: !3346)
!3413 = !DILocation(line: 447, column: 20, scope: !3346)
!3414 = !DILocation(line: 447, column: 11, scope: !3346)
!3415 = !DILocation(line: 450, column: 19, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !256, line: 450, column: 19)
!3417 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 448, column: 13)
!3418 = !DILocation(line: 450, column: 19, scope: !3417)
!3419 = !DILocation(line: 451, column: 17, scope: !3416)
!3420 = !DILocation(line: 452, column: 15, scope: !3417)
!3421 = !DILocation(line: 455, column: 20, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !256, line: 455, column: 19)
!3423 = !DILocation(line: 455, column: 26, scope: !3422)
!3424 = !DILocation(line: 456, column: 19, scope: !3422)
!3425 = !DILocation(line: 456, column: 22, scope: !3422)
!3426 = !DILocation(line: 456, column: 24, scope: !3422)
!3427 = !DILocation(line: 456, column: 30, scope: !3422)
!3428 = !DILocation(line: 456, column: 28, scope: !3422)
!3429 = !DILocation(line: 456, column: 38, scope: !3422)
!3430 = !DILocation(line: 456, column: 41, scope: !3422)
!3431 = !DILocation(line: 456, column: 45, scope: !3422)
!3432 = !DILocation(line: 456, column: 47, scope: !3422)
!3433 = !DILocation(line: 456, column: 52, scope: !3422)
!3434 = !DILocation(line: 455, column: 19, scope: !3417)
!3435 = !DILocation(line: 457, column: 25, scope: !3422)
!3436 = !DILocation(line: 457, column: 29, scope: !3422)
!3437 = !DILocation(line: 457, column: 31, scope: !3422)
!3438 = !DILocation(line: 457, column: 17, scope: !3422)
!3439 = !DILocation(line: 464, column: 25, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !256, line: 464, column: 25)
!3441 = distinct !DILexicalBlock(scope: !3422, file: !256, line: 458, column: 19)
!3442 = !DILocation(line: 464, column: 25, scope: !3441)
!3443 = !DILocation(line: 465, column: 23, scope: !3440)
!3444 = !DILocation(line: 466, column: 25, scope: !3441)
!3445 = !DILocation(line: 466, column: 29, scope: !3441)
!3446 = !DILocation(line: 466, column: 31, scope: !3441)
!3447 = !DILocation(line: 466, column: 23, scope: !3441)
!3448 = !DILocation(line: 467, column: 23, scope: !3441)
!3449 = !DILocation(line: 468, column: 21, scope: !3441)
!3450 = !DILocation(line: 468, column: 21, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !256, line: 468, column: 21)
!3452 = distinct !DILexicalBlock(scope: !3441, file: !256, line: 468, column: 21)
!3453 = !DILocation(line: 468, column: 21, scope: !3452)
!3454 = !DILocation(line: 469, column: 21, scope: !3441)
!3455 = !DILocation(line: 469, column: 21, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !256, line: 469, column: 21)
!3457 = distinct !DILexicalBlock(scope: !3441, file: !256, line: 469, column: 21)
!3458 = !DILocation(line: 469, column: 21, scope: !3457)
!3459 = !DILocation(line: 470, column: 21, scope: !3441)
!3460 = !DILocation(line: 470, column: 21, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !256, line: 470, column: 21)
!3462 = distinct !DILexicalBlock(scope: !3441, file: !256, line: 470, column: 21)
!3463 = !DILocation(line: 470, column: 21, scope: !3462)
!3464 = !DILocation(line: 471, column: 21, scope: !3441)
!3465 = !DILocation(line: 471, column: 21, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !256, line: 471, column: 21)
!3467 = distinct !DILexicalBlock(scope: !3441, file: !256, line: 471, column: 21)
!3468 = !DILocation(line: 471, column: 21, scope: !3467)
!3469 = !DILocation(line: 472, column: 21, scope: !3441)
!3470 = !DILocation(line: 473, column: 19, scope: !3441)
!3471 = !DILocation(line: 474, column: 15, scope: !3417)
!3472 = !DILocation(line: 476, column: 11, scope: !3346)
!3473 = !DILocation(line: 481, column: 26, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 478, column: 9)
!3475 = !DILocation(line: 481, column: 33, scope: !3474)
!3476 = !DILocation(line: 482, column: 26, scope: !3474)
!3477 = !DILocation(line: 482, column: 33, scope: !3474)
!3478 = !DILocation(line: 483, column: 26, scope: !3474)
!3479 = !DILocation(line: 483, column: 33, scope: !3474)
!3480 = !DILocation(line: 484, column: 26, scope: !3474)
!3481 = !DILocation(line: 484, column: 33, scope: !3474)
!3482 = !DILocation(line: 485, column: 26, scope: !3474)
!3483 = !DILocation(line: 485, column: 33, scope: !3474)
!3484 = !DILocation(line: 486, column: 26, scope: !3474)
!3485 = !DILocation(line: 486, column: 33, scope: !3474)
!3486 = !DILocation(line: 487, column: 26, scope: !3474)
!3487 = !DILocation(line: 487, column: 33, scope: !3474)
!3488 = !DILocation(line: 488, column: 28, scope: !3474)
!3489 = !DILocation(line: 488, column: 26, scope: !3474)
!3490 = !DILocation(line: 490, column: 17, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3474, file: !256, line: 490, column: 17)
!3492 = !DILocation(line: 490, column: 31, scope: !3491)
!3493 = !DILocation(line: 490, column: 17, scope: !3474)
!3494 = !DILocation(line: 492, column: 21, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !256, line: 492, column: 21)
!3496 = distinct !DILexicalBlock(scope: !3491, file: !256, line: 491, column: 15)
!3497 = !DILocation(line: 492, column: 21, scope: !3496)
!3498 = !DILocation(line: 493, column: 19, scope: !3495)
!3499 = !DILocation(line: 494, column: 17, scope: !3496)
!3500 = !DILocation(line: 499, column: 17, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3474, file: !256, line: 499, column: 17)
!3502 = !DILocation(line: 499, column: 35, scope: !3501)
!3503 = !DILocation(line: 499, column: 38, scope: !3501)
!3504 = !DILocation(line: 499, column: 57, scope: !3501)
!3505 = !DILocation(line: 499, column: 60, scope: !3501)
!3506 = !DILocation(line: 499, column: 17, scope: !3474)
!3507 = !DILocation(line: 500, column: 15, scope: !3501)
!3508 = !DILabel(scope: !3474, name: "c_and_shell_escape", file: !256, line: 502)
!3509 = !DILocation(line: 502, column: 11, scope: !3474)
!3510 = !DILocation(line: 503, column: 17, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3474, file: !256, line: 503, column: 17)
!3512 = !DILocation(line: 503, column: 31, scope: !3511)
!3513 = !DILocation(line: 504, column: 17, scope: !3511)
!3514 = !DILocation(line: 504, column: 20, scope: !3511)
!3515 = !DILocation(line: 503, column: 17, scope: !3474)
!3516 = !DILocation(line: 505, column: 15, scope: !3511)
!3517 = !DILabel(scope: !3474, name: "c_escape", file: !256, line: 507)
!3518 = !DILocation(line: 507, column: 11, scope: !3474)
!3519 = !DILocation(line: 508, column: 17, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3474, file: !256, line: 508, column: 17)
!3521 = !DILocation(line: 508, column: 17, scope: !3474)
!3522 = !DILocation(line: 510, column: 21, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !256, line: 509, column: 15)
!3524 = !DILocation(line: 510, column: 19, scope: !3523)
!3525 = !DILocation(line: 511, column: 17, scope: !3523)
!3526 = !DILocation(line: 513, column: 13, scope: !3474)
!3527 = !DILocation(line: 517, column: 18, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 517, column: 15)
!3529 = !DILocation(line: 517, column: 26, scope: !3528)
!3530 = !DILocation(line: 517, column: 15, scope: !3346)
!3531 = !DILocation(line: 517, column: 40, scope: !3528)
!3532 = !DILocation(line: 517, column: 47, scope: !3528)
!3533 = !DILocation(line: 517, column: 57, scope: !3528)
!3534 = !DILocation(line: 517, column: 65, scope: !3528)
!3535 = !DILocation(line: 518, column: 13, scope: !3528)
!3536 = !DILocation(line: 517, column: 69, scope: !3528)
!3537 = !DILocation(line: 521, column: 15, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 521, column: 15)
!3539 = !DILocation(line: 521, column: 17, scope: !3538)
!3540 = !DILocation(line: 521, column: 15, scope: !3346)
!3541 = !DILocation(line: 522, column: 13, scope: !3538)
!3542 = !DILocation(line: 521, column: 20, scope: !3538)
!3543 = !DILocation(line: 525, column: 36, scope: !3346)
!3544 = !DILocation(line: 525, column: 11, scope: !3346)
!3545 = !DILocation(line: 536, column: 15, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 536, column: 15)
!3547 = !DILocation(line: 536, column: 29, scope: !3546)
!3548 = !DILocation(line: 537, column: 15, scope: !3546)
!3549 = !DILocation(line: 537, column: 18, scope: !3546)
!3550 = !DILocation(line: 536, column: 15, scope: !3346)
!3551 = !DILocation(line: 538, column: 13, scope: !3546)
!3552 = !DILocation(line: 539, column: 11, scope: !3346)
!3553 = !DILocation(line: 542, column: 36, scope: !3346)
!3554 = !DILocation(line: 543, column: 36, scope: !3346)
!3555 = !DILocation(line: 544, column: 15, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 544, column: 15)
!3557 = !DILocation(line: 544, column: 29, scope: !3556)
!3558 = !DILocation(line: 544, column: 15, scope: !3346)
!3559 = !DILocation(line: 546, column: 19, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !256, line: 546, column: 19)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !256, line: 545, column: 13)
!3562 = !DILocation(line: 546, column: 19, scope: !3561)
!3563 = !DILocation(line: 547, column: 17, scope: !3560)
!3564 = !DILocation(line: 549, column: 19, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !256, line: 549, column: 19)
!3566 = !DILocation(line: 549, column: 30, scope: !3565)
!3567 = !DILocation(line: 549, column: 35, scope: !3565)
!3568 = !DILocation(line: 549, column: 19, scope: !3561)
!3569 = !DILocation(line: 554, column: 37, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !256, line: 550, column: 17)
!3571 = !DILocation(line: 554, column: 35, scope: !3570)
!3572 = !DILocation(line: 555, column: 30, scope: !3570)
!3573 = !DILocation(line: 556, column: 17, scope: !3570)
!3574 = !DILocation(line: 558, column: 15, scope: !3561)
!3575 = !DILocation(line: 558, column: 15, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !256, line: 558, column: 15)
!3577 = distinct !DILexicalBlock(scope: !3561, file: !256, line: 558, column: 15)
!3578 = !DILocation(line: 558, column: 15, scope: !3577)
!3579 = !DILocation(line: 559, column: 15, scope: !3561)
!3580 = !DILocation(line: 559, column: 15, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !256, line: 559, column: 15)
!3582 = distinct !DILexicalBlock(scope: !3561, file: !256, line: 559, column: 15)
!3583 = !DILocation(line: 559, column: 15, scope: !3582)
!3584 = !DILocation(line: 560, column: 15, scope: !3561)
!3585 = !DILocation(line: 560, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !256, line: 560, column: 15)
!3587 = distinct !DILexicalBlock(scope: !3561, file: !256, line: 560, column: 15)
!3588 = !DILocation(line: 560, column: 15, scope: !3587)
!3589 = !DILocation(line: 561, column: 40, scope: !3561)
!3590 = !DILocation(line: 562, column: 13, scope: !3561)
!3591 = !DILocation(line: 563, column: 11, scope: !3346)
!3592 = !DILocation(line: 587, column: 36, scope: !3346)
!3593 = !DILocation(line: 588, column: 11, scope: !3346)
!3594 = !DILocalVariable(name: "m", scope: !3595, file: !256, line: 598, type: !151)
!3595 = distinct !DILexicalBlock(scope: !3346, file: !256, line: 596, column: 11)
!3596 = !DILocation(line: 598, column: 20, scope: !3595)
!3597 = !DILocalVariable(name: "printable", scope: !3595, file: !256, line: 600, type: !27)
!3598 = !DILocation(line: 600, column: 18, scope: !3595)
!3599 = !DILocation(line: 602, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !256, line: 602, column: 17)
!3601 = !DILocation(line: 602, column: 17, scope: !3595)
!3602 = !DILocation(line: 604, column: 19, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !256, line: 603, column: 15)
!3604 = !DILocation(line: 605, column: 29, scope: !3603)
!3605 = !DILocation(line: 605, column: 41, scope: !3603)
!3606 = !DILocation(line: 605, column: 27, scope: !3603)
!3607 = !DILocation(line: 606, column: 15, scope: !3603)
!3608 = !DILocalVariable(name: "mbs", scope: !3609, file: !256, line: 609, type: !3610)
!3609 = distinct !DILexicalBlock(scope: !3600, file: !256, line: 608, column: 15)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !335, line: 6, baseType: !3611)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !337, line: 21, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 13, size: 64, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3612, file: !337, line: 15, baseType: !25, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3612, file: !337, line: 20, baseType: !3616, size: 32, offset: 32)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3612, file: !337, line: 16, size: 32, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3616, file: !337, line: 18, baseType: !7, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3616, file: !337, line: 19, baseType: !346, size: 32)
!3620 = !DILocation(line: 609, column: 27, scope: !3609)
!3621 = !DILocation(line: 609, column: 32, scope: !3609)
!3622 = !DILocation(line: 611, column: 19, scope: !3609)
!3623 = !DILocation(line: 612, column: 27, scope: !3609)
!3624 = !DILocation(line: 613, column: 21, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3609, file: !256, line: 613, column: 21)
!3626 = !DILocation(line: 613, column: 29, scope: !3625)
!3627 = !DILocation(line: 613, column: 21, scope: !3609)
!3628 = !DILocation(line: 614, column: 37, scope: !3625)
!3629 = !DILocation(line: 614, column: 29, scope: !3625)
!3630 = !DILocation(line: 614, column: 27, scope: !3625)
!3631 = !DILocation(line: 614, column: 19, scope: !3625)
!3632 = !DILocation(line: 616, column: 17, scope: !3609)
!3633 = !DILocalVariable(name: "w", scope: !3634, file: !256, line: 618, type: !864)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !256, line: 617, column: 19)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !256, line: 616, column: 17)
!3636 = distinct !DILexicalBlock(scope: !3609, file: !256, line: 616, column: 17)
!3637 = !DILocation(line: 618, column: 30, scope: !3634)
!3638 = !DILocalVariable(name: "bytes", scope: !3634, file: !256, line: 619, type: !151)
!3639 = !DILocation(line: 619, column: 28, scope: !3634)
!3640 = !DILocation(line: 619, column: 51, scope: !3634)
!3641 = !DILocation(line: 619, column: 55, scope: !3634)
!3642 = !DILocation(line: 619, column: 59, scope: !3634)
!3643 = !DILocation(line: 619, column: 57, scope: !3634)
!3644 = !DILocation(line: 620, column: 46, scope: !3634)
!3645 = !DILocation(line: 620, column: 57, scope: !3634)
!3646 = !DILocation(line: 620, column: 61, scope: !3634)
!3647 = !DILocation(line: 620, column: 59, scope: !3634)
!3648 = !DILocation(line: 620, column: 54, scope: !3634)
!3649 = !DILocation(line: 619, column: 36, scope: !3634)
!3650 = !DILocation(line: 621, column: 25, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3634, file: !256, line: 621, column: 25)
!3652 = !DILocation(line: 621, column: 31, scope: !3651)
!3653 = !DILocation(line: 621, column: 25, scope: !3634)
!3654 = !DILocation(line: 622, column: 23, scope: !3651)
!3655 = !DILocation(line: 623, column: 30, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3651, file: !256, line: 623, column: 30)
!3657 = !DILocation(line: 623, column: 36, scope: !3656)
!3658 = !DILocation(line: 623, column: 30, scope: !3651)
!3659 = !DILocation(line: 625, column: 35, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3656, file: !256, line: 624, column: 23)
!3661 = !DILocation(line: 626, column: 25, scope: !3660)
!3662 = !DILocation(line: 628, column: 30, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3656, file: !256, line: 628, column: 30)
!3664 = !DILocation(line: 628, column: 36, scope: !3663)
!3665 = !DILocation(line: 628, column: 30, scope: !3656)
!3666 = !DILocation(line: 630, column: 35, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !256, line: 629, column: 23)
!3668 = !DILocation(line: 631, column: 25, scope: !3667)
!3669 = !DILocation(line: 631, column: 32, scope: !3667)
!3670 = !DILocation(line: 631, column: 36, scope: !3667)
!3671 = !DILocation(line: 631, column: 34, scope: !3667)
!3672 = !DILocation(line: 631, column: 40, scope: !3667)
!3673 = !DILocation(line: 631, column: 38, scope: !3667)
!3674 = !DILocation(line: 631, column: 48, scope: !3667)
!3675 = !DILocation(line: 631, column: 51, scope: !3667)
!3676 = !DILocation(line: 631, column: 55, scope: !3667)
!3677 = !DILocation(line: 631, column: 59, scope: !3667)
!3678 = !DILocation(line: 631, column: 57, scope: !3667)
!3679 = !DILocation(line: 0, scope: !3667)
!3680 = !DILocation(line: 632, column: 28, scope: !3667)
!3681 = distinct !{!3681, !3668, !3680, !553}
!3682 = !DILocation(line: 633, column: 25, scope: !3667)
!3683 = !DILocation(line: 645, column: 44, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !256, line: 645, column: 29)
!3685 = distinct !DILexicalBlock(scope: !3663, file: !256, line: 636, column: 23)
!3686 = !DILocation(line: 646, column: 29, scope: !3684)
!3687 = !DILocation(line: 646, column: 32, scope: !3684)
!3688 = !DILocation(line: 646, column: 46, scope: !3684)
!3689 = !DILocation(line: 645, column: 29, scope: !3685)
!3690 = !DILocalVariable(name: "j", scope: !3691, file: !256, line: 648, type: !151)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !256, line: 648, column: 29)
!3692 = distinct !DILexicalBlock(scope: !3684, file: !256, line: 647, column: 27)
!3693 = !DILocation(line: 648, column: 41, scope: !3691)
!3694 = !DILocation(line: 648, column: 34, scope: !3691)
!3695 = !DILocation(line: 648, column: 48, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3691, file: !256, line: 648, column: 29)
!3697 = !DILocation(line: 648, column: 52, scope: !3696)
!3698 = !DILocation(line: 648, column: 50, scope: !3696)
!3699 = !DILocation(line: 648, column: 29, scope: !3691)
!3700 = !DILocation(line: 649, column: 39, scope: !3696)
!3701 = !DILocation(line: 649, column: 43, scope: !3696)
!3702 = !DILocation(line: 649, column: 47, scope: !3696)
!3703 = !DILocation(line: 649, column: 45, scope: !3696)
!3704 = !DILocation(line: 649, column: 51, scope: !3696)
!3705 = !DILocation(line: 649, column: 49, scope: !3696)
!3706 = !DILocation(line: 649, column: 31, scope: !3696)
!3707 = !DILocation(line: 653, column: 35, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3696, file: !256, line: 650, column: 33)
!3709 = !DILocation(line: 654, column: 33, scope: !3708)
!3710 = !DILocation(line: 648, column: 60, scope: !3696)
!3711 = !DILocation(line: 648, column: 29, scope: !3696)
!3712 = distinct !{!3712, !3699, !3713, !553}
!3713 = !DILocation(line: 654, column: 33, scope: !3691)
!3714 = !DILocation(line: 655, column: 27, scope: !3692)
!3715 = !DILocation(line: 657, column: 43, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3685, file: !256, line: 657, column: 29)
!3717 = !DILocation(line: 657, column: 31, scope: !3716)
!3718 = !DILocation(line: 657, column: 29, scope: !3685)
!3719 = !DILocation(line: 658, column: 37, scope: !3716)
!3720 = !DILocation(line: 658, column: 27, scope: !3716)
!3721 = !DILocation(line: 659, column: 30, scope: !3685)
!3722 = !DILocation(line: 659, column: 27, scope: !3685)
!3723 = !DILocation(line: 664, column: 23, scope: !3634)
!3724 = !DILocation(line: 668, column: 40, scope: !3595)
!3725 = !DILocation(line: 668, column: 38, scope: !3595)
!3726 = !DILocation(line: 670, column: 21, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3595, file: !256, line: 670, column: 17)
!3728 = !DILocation(line: 670, column: 19, scope: !3727)
!3729 = !DILocation(line: 670, column: 23, scope: !3727)
!3730 = !DILocation(line: 670, column: 27, scope: !3727)
!3731 = !DILocation(line: 670, column: 45, scope: !3727)
!3732 = !DILocation(line: 670, column: 50, scope: !3727)
!3733 = !DILocation(line: 670, column: 17, scope: !3595)
!3734 = !DILocalVariable(name: "ilim", scope: !3735, file: !256, line: 674, type: !151)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !256, line: 671, column: 15)
!3736 = !DILocation(line: 674, column: 24, scope: !3735)
!3737 = !DILocation(line: 674, column: 31, scope: !3735)
!3738 = !DILocation(line: 674, column: 35, scope: !3735)
!3739 = !DILocation(line: 674, column: 33, scope: !3735)
!3740 = !DILocation(line: 676, column: 17, scope: !3735)
!3741 = !DILocation(line: 678, column: 25, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !256, line: 678, column: 25)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !256, line: 677, column: 19)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !256, line: 676, column: 17)
!3745 = distinct !DILexicalBlock(scope: !3735, file: !256, line: 676, column: 17)
!3746 = !DILocation(line: 678, column: 43, scope: !3742)
!3747 = !DILocation(line: 678, column: 48, scope: !3742)
!3748 = !DILocation(line: 678, column: 25, scope: !3743)
!3749 = !DILocation(line: 680, column: 25, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3742, file: !256, line: 679, column: 23)
!3751 = !DILocation(line: 680, column: 25, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !256, line: 680, column: 25)
!3753 = distinct !DILexicalBlock(scope: !3750, file: !256, line: 680, column: 25)
!3754 = !DILocation(line: 680, column: 25, scope: !3753)
!3755 = !DILocation(line: 680, column: 25, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3753, file: !256, line: 680, column: 25)
!3757 = !DILocation(line: 680, column: 25, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3756, file: !256, line: 680, column: 25)
!3759 = !DILocation(line: 680, column: 25, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !256, line: 680, column: 25)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !256, line: 680, column: 25)
!3762 = !DILocation(line: 680, column: 25, scope: !3761)
!3763 = !DILocation(line: 680, column: 25, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !256, line: 680, column: 25)
!3765 = distinct !DILexicalBlock(scope: !3758, file: !256, line: 680, column: 25)
!3766 = !DILocation(line: 680, column: 25, scope: !3765)
!3767 = !DILocation(line: 680, column: 25, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !256, line: 680, column: 25)
!3769 = distinct !DILexicalBlock(scope: !3758, file: !256, line: 680, column: 25)
!3770 = !DILocation(line: 680, column: 25, scope: !3769)
!3771 = !DILocation(line: 680, column: 25, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !256, line: 680, column: 25)
!3773 = distinct !DILexicalBlock(scope: !3753, file: !256, line: 680, column: 25)
!3774 = !DILocation(line: 680, column: 25, scope: !3773)
!3775 = !DILocation(line: 681, column: 25, scope: !3750)
!3776 = !DILocation(line: 681, column: 25, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !256, line: 681, column: 25)
!3778 = distinct !DILexicalBlock(scope: !3750, file: !256, line: 681, column: 25)
!3779 = !DILocation(line: 681, column: 25, scope: !3778)
!3780 = !DILocation(line: 682, column: 25, scope: !3750)
!3781 = !DILocation(line: 682, column: 25, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !256, line: 682, column: 25)
!3783 = distinct !DILexicalBlock(scope: !3750, file: !256, line: 682, column: 25)
!3784 = !DILocation(line: 682, column: 25, scope: !3783)
!3785 = !DILocation(line: 683, column: 36, scope: !3750)
!3786 = !DILocation(line: 683, column: 38, scope: !3750)
!3787 = !DILocation(line: 683, column: 33, scope: !3750)
!3788 = !DILocation(line: 683, column: 29, scope: !3750)
!3789 = !DILocation(line: 683, column: 27, scope: !3750)
!3790 = !DILocation(line: 684, column: 23, scope: !3750)
!3791 = !DILocation(line: 685, column: 30, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3742, file: !256, line: 685, column: 30)
!3793 = !DILocation(line: 685, column: 30, scope: !3742)
!3794 = !DILocation(line: 687, column: 25, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3792, file: !256, line: 686, column: 23)
!3796 = !DILocation(line: 687, column: 25, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !256, line: 687, column: 25)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !256, line: 687, column: 25)
!3799 = !DILocation(line: 687, column: 25, scope: !3798)
!3800 = !DILocation(line: 688, column: 40, scope: !3795)
!3801 = !DILocation(line: 689, column: 23, scope: !3795)
!3802 = !DILocation(line: 690, column: 25, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3743, file: !256, line: 690, column: 25)
!3804 = !DILocation(line: 690, column: 33, scope: !3803)
!3805 = !DILocation(line: 690, column: 35, scope: !3803)
!3806 = !DILocation(line: 690, column: 30, scope: !3803)
!3807 = !DILocation(line: 690, column: 25, scope: !3743)
!3808 = !DILocation(line: 691, column: 23, scope: !3803)
!3809 = !DILocation(line: 692, column: 21, scope: !3743)
!3810 = !DILocation(line: 692, column: 21, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !256, line: 692, column: 21)
!3812 = distinct !DILexicalBlock(scope: !3743, file: !256, line: 692, column: 21)
!3813 = !DILocation(line: 692, column: 21, scope: !3812)
!3814 = !DILocation(line: 692, column: 21, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !256, line: 692, column: 21)
!3816 = !DILocation(line: 692, column: 21, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !256, line: 692, column: 21)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !256, line: 692, column: 21)
!3819 = !DILocation(line: 692, column: 21, scope: !3818)
!3820 = !DILocation(line: 692, column: 21, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !256, line: 692, column: 21)
!3822 = distinct !DILexicalBlock(scope: !3815, file: !256, line: 692, column: 21)
!3823 = !DILocation(line: 692, column: 21, scope: !3822)
!3824 = !DILocation(line: 693, column: 21, scope: !3743)
!3825 = !DILocation(line: 693, column: 21, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !256, line: 693, column: 21)
!3827 = distinct !DILexicalBlock(scope: !3743, file: !256, line: 693, column: 21)
!3828 = !DILocation(line: 693, column: 21, scope: !3827)
!3829 = !DILocation(line: 694, column: 25, scope: !3743)
!3830 = !DILocation(line: 694, column: 29, scope: !3743)
!3831 = !DILocation(line: 694, column: 23, scope: !3743)
!3832 = !DILocation(line: 676, column: 17, scope: !3744)
!3833 = distinct !{!3833, !3834, !3835}
!3834 = !DILocation(line: 676, column: 17, scope: !3745)
!3835 = !DILocation(line: 695, column: 19, scope: !3745)
!3836 = !DILocation(line: 697, column: 17, scope: !3735)
!3837 = !DILocation(line: 700, column: 9, scope: !3346)
!3838 = !DILocation(line: 702, column: 16, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 702, column: 11)
!3840 = !DILocation(line: 702, column: 34, scope: !3839)
!3841 = !DILocation(line: 702, column: 37, scope: !3839)
!3842 = !DILocation(line: 702, column: 51, scope: !3839)
!3843 = !DILocation(line: 703, column: 15, scope: !3839)
!3844 = !DILocation(line: 703, column: 18, scope: !3839)
!3845 = !DILocation(line: 704, column: 14, scope: !3839)
!3846 = !DILocation(line: 704, column: 17, scope: !3839)
!3847 = !DILocation(line: 705, column: 14, scope: !3839)
!3848 = !DILocation(line: 705, column: 17, scope: !3839)
!3849 = !DILocation(line: 705, column: 33, scope: !3839)
!3850 = !DILocation(line: 705, column: 35, scope: !3839)
!3851 = !DILocation(line: 705, column: 51, scope: !3839)
!3852 = !DILocation(line: 705, column: 53, scope: !3839)
!3853 = !DILocation(line: 705, column: 47, scope: !3839)
!3854 = !DILocation(line: 705, column: 65, scope: !3839)
!3855 = !DILocation(line: 706, column: 11, scope: !3839)
!3856 = !DILocation(line: 706, column: 15, scope: !3839)
!3857 = !DILocation(line: 702, column: 11, scope: !3296)
!3858 = !DILocation(line: 707, column: 9, scope: !3839)
!3859 = !DILabel(scope: !3296, name: "store_escape", file: !256, line: 709)
!3860 = !DILocation(line: 709, column: 5, scope: !3296)
!3861 = !DILocation(line: 710, column: 7, scope: !3296)
!3862 = !DILocation(line: 710, column: 7, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !256, line: 710, column: 7)
!3864 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 710, column: 7)
!3865 = !DILocation(line: 710, column: 7, scope: !3864)
!3866 = !DILocation(line: 710, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !256, line: 710, column: 7)
!3868 = !DILocation(line: 710, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3867, file: !256, line: 710, column: 7)
!3870 = !DILocation(line: 710, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !256, line: 710, column: 7)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !256, line: 710, column: 7)
!3873 = !DILocation(line: 710, column: 7, scope: !3872)
!3874 = !DILocation(line: 710, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !256, line: 710, column: 7)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !256, line: 710, column: 7)
!3877 = !DILocation(line: 710, column: 7, scope: !3876)
!3878 = !DILocation(line: 710, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !256, line: 710, column: 7)
!3880 = distinct !DILexicalBlock(scope: !3869, file: !256, line: 710, column: 7)
!3881 = !DILocation(line: 710, column: 7, scope: !3880)
!3882 = !DILocation(line: 710, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !256, line: 710, column: 7)
!3884 = distinct !DILexicalBlock(scope: !3864, file: !256, line: 710, column: 7)
!3885 = !DILocation(line: 710, column: 7, scope: !3884)
!3886 = !DILabel(scope: !3296, name: "store_c", file: !256, line: 712)
!3887 = !DILocation(line: 712, column: 5, scope: !3296)
!3888 = !DILocation(line: 713, column: 7, scope: !3296)
!3889 = !DILocation(line: 713, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !256, line: 713, column: 7)
!3891 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 713, column: 7)
!3892 = !DILocation(line: 713, column: 7, scope: !3891)
!3893 = !DILocation(line: 713, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !256, line: 713, column: 7)
!3895 = !DILocation(line: 713, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !256, line: 713, column: 7)
!3897 = distinct !DILexicalBlock(scope: !3894, file: !256, line: 713, column: 7)
!3898 = !DILocation(line: 713, column: 7, scope: !3897)
!3899 = !DILocation(line: 713, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !256, line: 713, column: 7)
!3901 = distinct !DILexicalBlock(scope: !3894, file: !256, line: 713, column: 7)
!3902 = !DILocation(line: 713, column: 7, scope: !3901)
!3903 = !DILocation(line: 714, column: 7, scope: !3296)
!3904 = !DILocation(line: 714, column: 7, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !256, line: 714, column: 7)
!3906 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 714, column: 7)
!3907 = !DILocation(line: 714, column: 7, scope: !3906)
!3908 = !DILocation(line: 716, column: 13, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3296, file: !256, line: 716, column: 11)
!3910 = !DILocation(line: 716, column: 11, scope: !3296)
!3911 = !DILocation(line: 717, column: 38, scope: !3909)
!3912 = !DILocation(line: 717, column: 9, scope: !3909)
!3913 = !DILocation(line: 718, column: 5, scope: !3296)
!3914 = !DILocation(line: 395, column: 82, scope: !3285)
!3915 = !DILocation(line: 395, column: 3, scope: !3285)
!3916 = distinct !{!3916, !3294, !3917, !553}
!3917 = !DILocation(line: 718, column: 5, scope: !3281)
!3918 = !DILocation(line: 720, column: 7, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 720, column: 7)
!3920 = !DILocation(line: 720, column: 11, scope: !3919)
!3921 = !DILocation(line: 720, column: 16, scope: !3919)
!3922 = !DILocation(line: 720, column: 19, scope: !3919)
!3923 = !DILocation(line: 720, column: 33, scope: !3919)
!3924 = !DILocation(line: 721, column: 7, scope: !3919)
!3925 = !DILocation(line: 721, column: 10, scope: !3919)
!3926 = !DILocation(line: 720, column: 7, scope: !3143)
!3927 = !DILocation(line: 722, column: 5, scope: !3919)
!3928 = !DILocation(line: 728, column: 7, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 728, column: 7)
!3930 = !DILocation(line: 728, column: 21, scope: !3929)
!3931 = !DILocation(line: 728, column: 51, scope: !3929)
!3932 = !DILocation(line: 728, column: 56, scope: !3929)
!3933 = !DILocation(line: 729, column: 7, scope: !3929)
!3934 = !DILocation(line: 729, column: 10, scope: !3929)
!3935 = !DILocation(line: 728, column: 7, scope: !3143)
!3936 = !DILocation(line: 731, column: 11, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !256, line: 731, column: 11)
!3938 = distinct !DILexicalBlock(scope: !3929, file: !256, line: 730, column: 5)
!3939 = !DILocation(line: 731, column: 11, scope: !3938)
!3940 = !DILocation(line: 732, column: 42, scope: !3937)
!3941 = !DILocation(line: 732, column: 50, scope: !3937)
!3942 = !DILocation(line: 732, column: 67, scope: !3937)
!3943 = !DILocation(line: 732, column: 72, scope: !3937)
!3944 = !DILocation(line: 734, column: 42, scope: !3937)
!3945 = !DILocation(line: 734, column: 49, scope: !3937)
!3946 = !DILocation(line: 735, column: 42, scope: !3937)
!3947 = !DILocation(line: 735, column: 54, scope: !3937)
!3948 = !DILocation(line: 732, column: 16, scope: !3937)
!3949 = !DILocation(line: 732, column: 9, scope: !3937)
!3950 = !DILocation(line: 736, column: 18, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3937, file: !256, line: 736, column: 16)
!3952 = !DILocation(line: 736, column: 29, scope: !3951)
!3953 = !DILocation(line: 736, column: 32, scope: !3951)
!3954 = !DILocation(line: 736, column: 16, scope: !3937)
!3955 = !DILocation(line: 739, column: 24, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3951, file: !256, line: 737, column: 9)
!3957 = !DILocation(line: 739, column: 22, scope: !3956)
!3958 = !DILocation(line: 740, column: 15, scope: !3956)
!3959 = !DILocation(line: 741, column: 11, scope: !3956)
!3960 = !DILocation(line: 743, column: 5, scope: !3938)
!3961 = !DILocation(line: 745, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 745, column: 7)
!3963 = !DILocation(line: 745, column: 20, scope: !3962)
!3964 = !DILocation(line: 745, column: 24, scope: !3962)
!3965 = !DILocation(line: 745, column: 7, scope: !3143)
!3966 = !DILocation(line: 746, column: 5, scope: !3962)
!3967 = !DILocation(line: 746, column: 13, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !256, line: 746, column: 5)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !256, line: 746, column: 5)
!3970 = !DILocation(line: 746, column: 12, scope: !3968)
!3971 = !DILocation(line: 746, column: 5, scope: !3969)
!3972 = !DILocation(line: 747, column: 7, scope: !3968)
!3973 = !DILocation(line: 747, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !256, line: 747, column: 7)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !256, line: 747, column: 7)
!3976 = !DILocation(line: 747, column: 7, scope: !3975)
!3977 = !DILocation(line: 746, column: 39, scope: !3968)
!3978 = !DILocation(line: 746, column: 5, scope: !3968)
!3979 = distinct !{!3979, !3971, !3980, !553}
!3980 = !DILocation(line: 747, column: 7, scope: !3969)
!3981 = !DILocation(line: 749, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 749, column: 7)
!3983 = !DILocation(line: 749, column: 13, scope: !3982)
!3984 = !DILocation(line: 749, column: 11, scope: !3982)
!3985 = !DILocation(line: 749, column: 7, scope: !3143)
!3986 = !DILocation(line: 750, column: 5, scope: !3982)
!3987 = !DILocation(line: 750, column: 12, scope: !3982)
!3988 = !DILocation(line: 750, column: 17, scope: !3982)
!3989 = !DILocation(line: 751, column: 10, scope: !3143)
!3990 = !DILocation(line: 751, column: 3, scope: !3143)
!3991 = !DILabel(scope: !3143, name: "force_outer_quoting_style", file: !256, line: 753)
!3992 = !DILocation(line: 753, column: 2, scope: !3143)
!3993 = !DILocation(line: 756, column: 7, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3143, file: !256, line: 756, column: 7)
!3995 = !DILocation(line: 756, column: 21, scope: !3994)
!3996 = !DILocation(line: 756, column: 51, scope: !3994)
!3997 = !DILocation(line: 756, column: 54, scope: !3994)
!3998 = !DILocation(line: 756, column: 7, scope: !3143)
!3999 = !DILocation(line: 757, column: 19, scope: !3994)
!4000 = !DILocation(line: 757, column: 5, scope: !3994)
!4001 = !DILocation(line: 758, column: 36, scope: !3143)
!4002 = !DILocation(line: 758, column: 44, scope: !3143)
!4003 = !DILocation(line: 758, column: 56, scope: !3143)
!4004 = !DILocation(line: 758, column: 61, scope: !3143)
!4005 = !DILocation(line: 759, column: 36, scope: !3143)
!4006 = !DILocation(line: 760, column: 36, scope: !3143)
!4007 = !DILocation(line: 760, column: 42, scope: !3143)
!4008 = !DILocation(line: 761, column: 36, scope: !3143)
!4009 = !DILocation(line: 761, column: 48, scope: !3143)
!4010 = !DILocation(line: 758, column: 10, scope: !3143)
!4011 = !DILocation(line: 758, column: 3, scope: !3143)
!4012 = !DILocation(line: 762, column: 1, scope: !3143)
!4013 = !DILocalVariable(name: "msgid", arg: 1, scope: !292, file: !256, line: 197, type: !35)
!4014 = !DILocation(line: 197, column: 28, scope: !292)
!4015 = !DILocalVariable(name: "s", arg: 2, scope: !292, file: !256, line: 197, type: !68)
!4016 = !DILocation(line: 197, column: 54, scope: !292)
!4017 = !DILocalVariable(name: "translation", scope: !292, file: !256, line: 199, type: !35)
!4018 = !DILocation(line: 199, column: 15, scope: !292)
!4019 = !DILocation(line: 199, column: 29, scope: !292)
!4020 = !DILocation(line: 201, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !292, file: !256, line: 201, column: 7)
!4022 = !DILocation(line: 201, column: 22, scope: !4021)
!4023 = !DILocation(line: 201, column: 19, scope: !4021)
!4024 = !DILocation(line: 201, column: 7, scope: !292)
!4025 = !DILocation(line: 202, column: 12, scope: !4021)
!4026 = !DILocation(line: 202, column: 5, scope: !4021)
!4027 = !DILocalVariable(name: "w", scope: !292, file: !256, line: 229, type: !864)
!4028 = !DILocation(line: 229, column: 12, scope: !292)
!4029 = !DILocalVariable(name: "mbs", scope: !292, file: !256, line: 230, type: !3610)
!4030 = !DILocation(line: 230, column: 13, scope: !292)
!4031 = !DILocation(line: 230, column: 18, scope: !292)
!4032 = !DILocation(line: 231, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !292, file: !256, line: 231, column: 7)
!4034 = !DILocation(line: 231, column: 40, scope: !4033)
!4035 = !DILocation(line: 231, column: 45, scope: !4033)
!4036 = !DILocation(line: 231, column: 48, scope: !4033)
!4037 = !DILocation(line: 231, column: 50, scope: !4033)
!4038 = !DILocation(line: 231, column: 7, scope: !292)
!4039 = !DILocation(line: 232, column: 18, scope: !4033)
!4040 = !DILocation(line: 232, column: 27, scope: !4033)
!4041 = !DILocation(line: 232, column: 12, scope: !4033)
!4042 = !DILocation(line: 232, column: 5, scope: !4033)
!4043 = !DILocation(line: 234, column: 11, scope: !292)
!4044 = !DILocation(line: 234, column: 13, scope: !292)
!4045 = !DILocation(line: 234, column: 3, scope: !292)
!4046 = !DILocation(line: 235, column: 1, scope: !292)
!4047 = distinct !DISubprogram(name: "quotearg_alloc", scope: !256, file: !256, line: 788, type: !4048, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!22, !35, !151, !2983}
!4050 = !DILocalVariable(name: "arg", arg: 1, scope: !4047, file: !256, line: 788, type: !35)
!4051 = !DILocation(line: 788, column: 29, scope: !4047)
!4052 = !DILocalVariable(name: "argsize", arg: 2, scope: !4047, file: !256, line: 788, type: !151)
!4053 = !DILocation(line: 788, column: 41, scope: !4047)
!4054 = !DILocalVariable(name: "o", arg: 3, scope: !4047, file: !256, line: 789, type: !2983)
!4055 = !DILocation(line: 789, column: 47, scope: !4047)
!4056 = !DILocation(line: 791, column: 30, scope: !4047)
!4057 = !DILocation(line: 791, column: 35, scope: !4047)
!4058 = !DILocation(line: 791, column: 50, scope: !4047)
!4059 = !DILocation(line: 791, column: 10, scope: !4047)
!4060 = !DILocation(line: 791, column: 3, scope: !4047)
!4061 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !256, file: !256, line: 801, type: !4062, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!22, !35, !151, !403, !2983}
!4064 = !DILocalVariable(name: "arg", arg: 1, scope: !4061, file: !256, line: 801, type: !35)
!4065 = !DILocation(line: 801, column: 33, scope: !4061)
!4066 = !DILocalVariable(name: "argsize", arg: 2, scope: !4061, file: !256, line: 801, type: !151)
!4067 = !DILocation(line: 801, column: 45, scope: !4061)
!4068 = !DILocalVariable(name: "size", arg: 3, scope: !4061, file: !256, line: 801, type: !403)
!4069 = !DILocation(line: 801, column: 62, scope: !4061)
!4070 = !DILocalVariable(name: "o", arg: 4, scope: !4061, file: !256, line: 802, type: !2983)
!4071 = !DILocation(line: 802, column: 51, scope: !4061)
!4072 = !DILocalVariable(name: "p", scope: !4061, file: !256, line: 804, type: !2983)
!4073 = !DILocation(line: 804, column: 33, scope: !4061)
!4074 = !DILocation(line: 804, column: 37, scope: !4061)
!4075 = !DILocation(line: 804, column: 41, scope: !4061)
!4076 = !DILocalVariable(name: "saved_errno", scope: !4061, file: !256, line: 805, type: !25)
!4077 = !DILocation(line: 805, column: 7, scope: !4061)
!4078 = !DILocation(line: 805, column: 21, scope: !4061)
!4079 = !DILocalVariable(name: "flags", scope: !4061, file: !256, line: 807, type: !25)
!4080 = !DILocation(line: 807, column: 7, scope: !4061)
!4081 = !DILocation(line: 807, column: 15, scope: !4061)
!4082 = !DILocation(line: 807, column: 18, scope: !4061)
!4083 = !DILocation(line: 807, column: 27, scope: !4061)
!4084 = !DILocation(line: 807, column: 24, scope: !4061)
!4085 = !DILocalVariable(name: "bufsize", scope: !4061, file: !256, line: 808, type: !151)
!4086 = !DILocation(line: 808, column: 10, scope: !4061)
!4087 = !DILocation(line: 808, column: 55, scope: !4061)
!4088 = !DILocation(line: 808, column: 60, scope: !4061)
!4089 = !DILocation(line: 808, column: 69, scope: !4061)
!4090 = !DILocation(line: 808, column: 72, scope: !4061)
!4091 = !DILocation(line: 809, column: 46, scope: !4061)
!4092 = !DILocation(line: 809, column: 53, scope: !4061)
!4093 = !DILocation(line: 809, column: 56, scope: !4061)
!4094 = !DILocation(line: 810, column: 46, scope: !4061)
!4095 = !DILocation(line: 810, column: 49, scope: !4061)
!4096 = !DILocation(line: 811, column: 46, scope: !4061)
!4097 = !DILocation(line: 811, column: 49, scope: !4061)
!4098 = !DILocation(line: 808, column: 20, scope: !4061)
!4099 = !DILocation(line: 811, column: 62, scope: !4061)
!4100 = !DILocalVariable(name: "buf", scope: !4061, file: !256, line: 812, type: !22)
!4101 = !DILocation(line: 812, column: 9, scope: !4061)
!4102 = !DILocation(line: 812, column: 27, scope: !4061)
!4103 = !DILocation(line: 812, column: 15, scope: !4061)
!4104 = !DILocation(line: 813, column: 29, scope: !4061)
!4105 = !DILocation(line: 813, column: 34, scope: !4061)
!4106 = !DILocation(line: 813, column: 43, scope: !4061)
!4107 = !DILocation(line: 813, column: 48, scope: !4061)
!4108 = !DILocation(line: 813, column: 57, scope: !4061)
!4109 = !DILocation(line: 813, column: 60, scope: !4061)
!4110 = !DILocation(line: 813, column: 67, scope: !4061)
!4111 = !DILocation(line: 814, column: 29, scope: !4061)
!4112 = !DILocation(line: 814, column: 32, scope: !4061)
!4113 = !DILocation(line: 815, column: 29, scope: !4061)
!4114 = !DILocation(line: 815, column: 32, scope: !4061)
!4115 = !DILocation(line: 815, column: 44, scope: !4061)
!4116 = !DILocation(line: 815, column: 47, scope: !4061)
!4117 = !DILocation(line: 813, column: 3, scope: !4061)
!4118 = !DILocation(line: 816, column: 11, scope: !4061)
!4119 = !DILocation(line: 816, column: 3, scope: !4061)
!4120 = !DILocation(line: 816, column: 9, scope: !4061)
!4121 = !DILocation(line: 817, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4061, file: !256, line: 817, column: 7)
!4123 = !DILocation(line: 817, column: 7, scope: !4061)
!4124 = !DILocation(line: 818, column: 13, scope: !4122)
!4125 = !DILocation(line: 818, column: 21, scope: !4122)
!4126 = !DILocation(line: 818, column: 6, scope: !4122)
!4127 = !DILocation(line: 818, column: 11, scope: !4122)
!4128 = !DILocation(line: 818, column: 5, scope: !4122)
!4129 = !DILocation(line: 819, column: 10, scope: !4061)
!4130 = !DILocation(line: 819, column: 3, scope: !4061)
!4131 = distinct !DISubprogram(name: "quotearg_free", scope: !256, file: !256, line: 837, type: !55, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4132 = !DILocalVariable(name: "sv", scope: !4131, file: !256, line: 839, type: !300)
!4133 = !DILocation(line: 839, column: 19, scope: !4131)
!4134 = !DILocation(line: 839, column: 24, scope: !4131)
!4135 = !DILocalVariable(name: "i", scope: !4136, file: !256, line: 840, type: !25)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !256, line: 840, column: 3)
!4137 = !DILocation(line: 840, column: 12, scope: !4136)
!4138 = !DILocation(line: 840, column: 8, scope: !4136)
!4139 = !DILocation(line: 840, column: 19, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !256, line: 840, column: 3)
!4141 = !DILocation(line: 840, column: 23, scope: !4140)
!4142 = !DILocation(line: 840, column: 21, scope: !4140)
!4143 = !DILocation(line: 840, column: 3, scope: !4136)
!4144 = !DILocation(line: 841, column: 11, scope: !4140)
!4145 = !DILocation(line: 841, column: 14, scope: !4140)
!4146 = !DILocation(line: 841, column: 17, scope: !4140)
!4147 = !DILocation(line: 841, column: 5, scope: !4140)
!4148 = !DILocation(line: 840, column: 32, scope: !4140)
!4149 = !DILocation(line: 840, column: 3, scope: !4140)
!4150 = distinct !{!4150, !4143, !4151, !553}
!4151 = !DILocation(line: 841, column: 20, scope: !4136)
!4152 = !DILocation(line: 842, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4131, file: !256, line: 842, column: 7)
!4154 = !DILocation(line: 842, column: 13, scope: !4153)
!4155 = !DILocation(line: 842, column: 17, scope: !4153)
!4156 = !DILocation(line: 842, column: 7, scope: !4131)
!4157 = !DILocation(line: 844, column: 13, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4153, file: !256, line: 843, column: 5)
!4159 = !DILocation(line: 844, column: 19, scope: !4158)
!4160 = !DILocation(line: 844, column: 7, scope: !4158)
!4161 = !DILocation(line: 845, column: 21, scope: !4158)
!4162 = !DILocation(line: 846, column: 20, scope: !4158)
!4163 = !DILocation(line: 847, column: 5, scope: !4158)
!4164 = !DILocation(line: 848, column: 7, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4131, file: !256, line: 848, column: 7)
!4166 = !DILocation(line: 848, column: 10, scope: !4165)
!4167 = !DILocation(line: 848, column: 7, scope: !4131)
!4168 = !DILocation(line: 850, column: 13, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4165, file: !256, line: 849, column: 5)
!4170 = !DILocation(line: 850, column: 7, scope: !4169)
!4171 = !DILocation(line: 851, column: 15, scope: !4169)
!4172 = !DILocation(line: 852, column: 5, scope: !4169)
!4173 = !DILocation(line: 853, column: 10, scope: !4131)
!4174 = !DILocation(line: 854, column: 1, scope: !4131)
!4175 = distinct !DISubprogram(name: "quotearg_n", scope: !256, file: !256, line: 919, type: !4176, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!22, !25, !35}
!4178 = !DILocalVariable(name: "n", arg: 1, scope: !4175, file: !256, line: 919, type: !25)
!4179 = !DILocation(line: 919, column: 17, scope: !4175)
!4180 = !DILocalVariable(name: "arg", arg: 2, scope: !4175, file: !256, line: 919, type: !35)
!4181 = !DILocation(line: 919, column: 32, scope: !4175)
!4182 = !DILocation(line: 921, column: 30, scope: !4175)
!4183 = !DILocation(line: 921, column: 33, scope: !4175)
!4184 = !DILocation(line: 921, column: 10, scope: !4175)
!4185 = !DILocation(line: 921, column: 3, scope: !4175)
!4186 = distinct !DISubprogram(name: "quotearg_n_options", scope: !256, file: !256, line: 866, type: !4187, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!22, !25, !35, !151, !2983}
!4189 = !DILocalVariable(name: "n", arg: 1, scope: !4186, file: !256, line: 866, type: !25)
!4190 = !DILocation(line: 866, column: 25, scope: !4186)
!4191 = !DILocalVariable(name: "arg", arg: 2, scope: !4186, file: !256, line: 866, type: !35)
!4192 = !DILocation(line: 866, column: 40, scope: !4186)
!4193 = !DILocalVariable(name: "argsize", arg: 3, scope: !4186, file: !256, line: 866, type: !151)
!4194 = !DILocation(line: 866, column: 52, scope: !4186)
!4195 = !DILocalVariable(name: "options", arg: 4, scope: !4186, file: !256, line: 867, type: !2983)
!4196 = !DILocation(line: 867, column: 51, scope: !4186)
!4197 = !DILocalVariable(name: "saved_errno", scope: !4186, file: !256, line: 869, type: !25)
!4198 = !DILocation(line: 869, column: 7, scope: !4186)
!4199 = !DILocation(line: 869, column: 21, scope: !4186)
!4200 = !DILocalVariable(name: "sv", scope: !4186, file: !256, line: 871, type: !300)
!4201 = !DILocation(line: 871, column: 19, scope: !4186)
!4202 = !DILocation(line: 871, column: 24, scope: !4186)
!4203 = !DILocalVariable(name: "nslots_max", scope: !4186, file: !256, line: 873, type: !25)
!4204 = !DILocation(line: 873, column: 7, scope: !4186)
!4205 = !DILocation(line: 874, column: 15, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4186, file: !256, line: 874, column: 7)
!4207 = !DILocation(line: 874, column: 12, scope: !4206)
!4208 = !DILocation(line: 874, column: 17, scope: !4206)
!4209 = !DILocation(line: 874, column: 20, scope: !4206)
!4210 = !DILocation(line: 874, column: 24, scope: !4206)
!4211 = !DILocation(line: 874, column: 22, scope: !4206)
!4212 = !DILocation(line: 874, column: 7, scope: !4186)
!4213 = !DILocation(line: 875, column: 5, scope: !4206)
!4214 = !DILocation(line: 877, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4186, file: !256, line: 877, column: 7)
!4216 = !DILocation(line: 877, column: 17, scope: !4215)
!4217 = !DILocation(line: 877, column: 14, scope: !4215)
!4218 = !DILocation(line: 877, column: 7, scope: !4186)
!4219 = !DILocalVariable(name: "preallocated", scope: !4220, file: !256, line: 879, type: !27)
!4220 = distinct !DILexicalBlock(scope: !4215, file: !256, line: 878, column: 5)
!4221 = !DILocation(line: 879, column: 12, scope: !4220)
!4222 = !DILocation(line: 879, column: 28, scope: !4220)
!4223 = !DILocation(line: 879, column: 31, scope: !4220)
!4224 = !DILocalVariable(name: "new_nslots", scope: !4220, file: !256, line: 880, type: !160)
!4225 = !DILocation(line: 880, column: 13, scope: !4220)
!4226 = !DILocation(line: 880, column: 26, scope: !4220)
!4227 = !DILocation(line: 882, column: 31, scope: !4220)
!4228 = !DILocation(line: 882, column: 53, scope: !4220)
!4229 = !DILocation(line: 883, column: 31, scope: !4220)
!4230 = !DILocation(line: 883, column: 35, scope: !4220)
!4231 = !DILocation(line: 883, column: 33, scope: !4220)
!4232 = !DILocation(line: 883, column: 42, scope: !4220)
!4233 = !DILocation(line: 883, column: 47, scope: !4220)
!4234 = !DILocation(line: 882, column: 22, scope: !4220)
!4235 = !DILocation(line: 882, column: 20, scope: !4220)
!4236 = !DILocation(line: 882, column: 15, scope: !4220)
!4237 = !DILocation(line: 884, column: 11, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4220, file: !256, line: 884, column: 11)
!4239 = !DILocation(line: 884, column: 11, scope: !4220)
!4240 = !DILocation(line: 885, column: 10, scope: !4238)
!4241 = !DILocation(line: 885, column: 15, scope: !4238)
!4242 = !DILocation(line: 885, column: 9, scope: !4238)
!4243 = !DILocation(line: 886, column: 15, scope: !4220)
!4244 = !DILocation(line: 886, column: 20, scope: !4220)
!4245 = !DILocation(line: 886, column: 18, scope: !4220)
!4246 = !DILocation(line: 886, column: 7, scope: !4220)
!4247 = !DILocation(line: 886, column: 32, scope: !4220)
!4248 = !DILocation(line: 886, column: 45, scope: !4220)
!4249 = !DILocation(line: 886, column: 43, scope: !4220)
!4250 = !DILocation(line: 886, column: 53, scope: !4220)
!4251 = !DILocation(line: 887, column: 16, scope: !4220)
!4252 = !DILocation(line: 887, column: 14, scope: !4220)
!4253 = !DILocation(line: 888, column: 5, scope: !4220)
!4254 = !DILocalVariable(name: "size", scope: !4255, file: !256, line: 891, type: !151)
!4255 = distinct !DILexicalBlock(scope: !4186, file: !256, line: 890, column: 3)
!4256 = !DILocation(line: 891, column: 12, scope: !4255)
!4257 = !DILocation(line: 891, column: 19, scope: !4255)
!4258 = !DILocation(line: 891, column: 22, scope: !4255)
!4259 = !DILocation(line: 891, column: 25, scope: !4255)
!4260 = !DILocalVariable(name: "val", scope: !4255, file: !256, line: 892, type: !22)
!4261 = !DILocation(line: 892, column: 11, scope: !4255)
!4262 = !DILocation(line: 892, column: 17, scope: !4255)
!4263 = !DILocation(line: 892, column: 20, scope: !4255)
!4264 = !DILocation(line: 892, column: 23, scope: !4255)
!4265 = !DILocalVariable(name: "flags", scope: !4255, file: !256, line: 894, type: !25)
!4266 = !DILocation(line: 894, column: 9, scope: !4255)
!4267 = !DILocation(line: 894, column: 17, scope: !4255)
!4268 = !DILocation(line: 894, column: 26, scope: !4255)
!4269 = !DILocation(line: 894, column: 32, scope: !4255)
!4270 = !DILocalVariable(name: "qsize", scope: !4255, file: !256, line: 895, type: !151)
!4271 = !DILocation(line: 895, column: 12, scope: !4255)
!4272 = !DILocation(line: 895, column: 46, scope: !4255)
!4273 = !DILocation(line: 895, column: 51, scope: !4255)
!4274 = !DILocation(line: 895, column: 57, scope: !4255)
!4275 = !DILocation(line: 895, column: 62, scope: !4255)
!4276 = !DILocation(line: 896, column: 46, scope: !4255)
!4277 = !DILocation(line: 896, column: 55, scope: !4255)
!4278 = !DILocation(line: 896, column: 62, scope: !4255)
!4279 = !DILocation(line: 897, column: 46, scope: !4255)
!4280 = !DILocation(line: 897, column: 55, scope: !4255)
!4281 = !DILocation(line: 898, column: 46, scope: !4255)
!4282 = !DILocation(line: 898, column: 55, scope: !4255)
!4283 = !DILocation(line: 899, column: 46, scope: !4255)
!4284 = !DILocation(line: 899, column: 55, scope: !4255)
!4285 = !DILocation(line: 895, column: 20, scope: !4255)
!4286 = !DILocation(line: 901, column: 9, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4255, file: !256, line: 901, column: 9)
!4288 = !DILocation(line: 901, column: 17, scope: !4287)
!4289 = !DILocation(line: 901, column: 14, scope: !4287)
!4290 = !DILocation(line: 901, column: 9, scope: !4255)
!4291 = !DILocation(line: 903, column: 29, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4287, file: !256, line: 902, column: 7)
!4293 = !DILocation(line: 903, column: 35, scope: !4292)
!4294 = !DILocation(line: 903, column: 27, scope: !4292)
!4295 = !DILocation(line: 903, column: 9, scope: !4292)
!4296 = !DILocation(line: 903, column: 12, scope: !4292)
!4297 = !DILocation(line: 903, column: 15, scope: !4292)
!4298 = !DILocation(line: 903, column: 20, scope: !4292)
!4299 = !DILocation(line: 904, column: 13, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4292, file: !256, line: 904, column: 13)
!4301 = !DILocation(line: 904, column: 17, scope: !4300)
!4302 = !DILocation(line: 904, column: 13, scope: !4292)
!4303 = !DILocation(line: 905, column: 17, scope: !4300)
!4304 = !DILocation(line: 905, column: 11, scope: !4300)
!4305 = !DILocation(line: 906, column: 39, scope: !4292)
!4306 = !DILocation(line: 906, column: 27, scope: !4292)
!4307 = !DILocation(line: 906, column: 25, scope: !4292)
!4308 = !DILocation(line: 906, column: 9, scope: !4292)
!4309 = !DILocation(line: 906, column: 12, scope: !4292)
!4310 = !DILocation(line: 906, column: 15, scope: !4292)
!4311 = !DILocation(line: 906, column: 19, scope: !4292)
!4312 = !DILocation(line: 907, column: 35, scope: !4292)
!4313 = !DILocation(line: 907, column: 40, scope: !4292)
!4314 = !DILocation(line: 907, column: 46, scope: !4292)
!4315 = !DILocation(line: 907, column: 51, scope: !4292)
!4316 = !DILocation(line: 907, column: 60, scope: !4292)
!4317 = !DILocation(line: 907, column: 69, scope: !4292)
!4318 = !DILocation(line: 908, column: 35, scope: !4292)
!4319 = !DILocation(line: 908, column: 42, scope: !4292)
!4320 = !DILocation(line: 908, column: 51, scope: !4292)
!4321 = !DILocation(line: 909, column: 35, scope: !4292)
!4322 = !DILocation(line: 909, column: 44, scope: !4292)
!4323 = !DILocation(line: 910, column: 35, scope: !4292)
!4324 = !DILocation(line: 910, column: 44, scope: !4292)
!4325 = !DILocation(line: 907, column: 9, scope: !4292)
!4326 = !DILocation(line: 911, column: 7, scope: !4292)
!4327 = !DILocation(line: 913, column: 13, scope: !4255)
!4328 = !DILocation(line: 913, column: 5, scope: !4255)
!4329 = !DILocation(line: 913, column: 11, scope: !4255)
!4330 = !DILocation(line: 914, column: 12, scope: !4255)
!4331 = !DILocation(line: 914, column: 5, scope: !4255)
!4332 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !256, file: !256, line: 925, type: !4333, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!22, !25, !35, !151}
!4335 = !DILocalVariable(name: "n", arg: 1, scope: !4332, file: !256, line: 925, type: !25)
!4336 = !DILocation(line: 925, column: 21, scope: !4332)
!4337 = !DILocalVariable(name: "arg", arg: 2, scope: !4332, file: !256, line: 925, type: !35)
!4338 = !DILocation(line: 925, column: 36, scope: !4332)
!4339 = !DILocalVariable(name: "argsize", arg: 3, scope: !4332, file: !256, line: 925, type: !151)
!4340 = !DILocation(line: 925, column: 48, scope: !4332)
!4341 = !DILocation(line: 927, column: 30, scope: !4332)
!4342 = !DILocation(line: 927, column: 33, scope: !4332)
!4343 = !DILocation(line: 927, column: 38, scope: !4332)
!4344 = !DILocation(line: 927, column: 10, scope: !4332)
!4345 = !DILocation(line: 927, column: 3, scope: !4332)
!4346 = distinct !DISubprogram(name: "quotearg", scope: !256, file: !256, line: 931, type: !4347, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!22, !35}
!4349 = !DILocalVariable(name: "arg", arg: 1, scope: !4346, file: !256, line: 931, type: !35)
!4350 = !DILocation(line: 931, column: 23, scope: !4346)
!4351 = !DILocation(line: 933, column: 25, scope: !4346)
!4352 = !DILocation(line: 933, column: 10, scope: !4346)
!4353 = !DILocation(line: 933, column: 3, scope: !4346)
!4354 = distinct !DISubprogram(name: "quotearg_mem", scope: !256, file: !256, line: 937, type: !4355, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!22, !35, !151}
!4357 = !DILocalVariable(name: "arg", arg: 1, scope: !4354, file: !256, line: 937, type: !35)
!4358 = !DILocation(line: 937, column: 27, scope: !4354)
!4359 = !DILocalVariable(name: "argsize", arg: 2, scope: !4354, file: !256, line: 937, type: !151)
!4360 = !DILocation(line: 937, column: 39, scope: !4354)
!4361 = !DILocation(line: 939, column: 29, scope: !4354)
!4362 = !DILocation(line: 939, column: 34, scope: !4354)
!4363 = !DILocation(line: 939, column: 10, scope: !4354)
!4364 = !DILocation(line: 939, column: 3, scope: !4354)
!4365 = distinct !DISubprogram(name: "quotearg_n_style", scope: !256, file: !256, line: 943, type: !4366, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!22, !25, !68, !35}
!4368 = !DILocalVariable(name: "n", arg: 1, scope: !4365, file: !256, line: 943, type: !25)
!4369 = !DILocation(line: 943, column: 23, scope: !4365)
!4370 = !DILocalVariable(name: "s", arg: 2, scope: !4365, file: !256, line: 943, type: !68)
!4371 = !DILocation(line: 943, column: 45, scope: !4365)
!4372 = !DILocalVariable(name: "arg", arg: 3, scope: !4365, file: !256, line: 943, type: !35)
!4373 = !DILocation(line: 943, column: 60, scope: !4365)
!4374 = !DILocalVariable(name: "o", scope: !4365, file: !256, line: 945, type: !2984)
!4375 = !DILocation(line: 945, column: 32, scope: !4365)
!4376 = !DILocation(line: 945, column: 64, scope: !4365)
!4377 = !DILocation(line: 945, column: 36, scope: !4365)
!4378 = !DILocation(line: 946, column: 30, scope: !4365)
!4379 = !DILocation(line: 946, column: 33, scope: !4365)
!4380 = !DILocation(line: 946, column: 10, scope: !4365)
!4381 = !DILocation(line: 946, column: 3, scope: !4365)
!4382 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !256, file: !256, line: 183, type: !4383, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!273, !68}
!4385 = !DILocalVariable(name: "style", arg: 1, scope: !4382, file: !256, line: 183, type: !68)
!4386 = !DILocation(line: 183, column: 48, scope: !4382)
!4387 = !DILocalVariable(name: "o", scope: !4382, file: !256, line: 185, type: !273)
!4388 = !DILocation(line: 185, column: 26, scope: !4382)
!4389 = !DILocation(line: 186, column: 7, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4382, file: !256, line: 186, column: 7)
!4391 = !DILocation(line: 186, column: 13, scope: !4390)
!4392 = !DILocation(line: 186, column: 7, scope: !4382)
!4393 = !DILocation(line: 187, column: 5, scope: !4390)
!4394 = !DILocation(line: 188, column: 13, scope: !4382)
!4395 = !DILocation(line: 188, column: 5, scope: !4382)
!4396 = !DILocation(line: 188, column: 11, scope: !4382)
!4397 = !DILocation(line: 189, column: 3, scope: !4382)
!4398 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !256, file: !256, line: 950, type: !4399, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!22, !25, !68, !35, !151}
!4401 = !DILocalVariable(name: "n", arg: 1, scope: !4398, file: !256, line: 950, type: !25)
!4402 = !DILocation(line: 950, column: 27, scope: !4398)
!4403 = !DILocalVariable(name: "s", arg: 2, scope: !4398, file: !256, line: 950, type: !68)
!4404 = !DILocation(line: 950, column: 49, scope: !4398)
!4405 = !DILocalVariable(name: "arg", arg: 3, scope: !4398, file: !256, line: 951, type: !35)
!4406 = !DILocation(line: 951, column: 35, scope: !4398)
!4407 = !DILocalVariable(name: "argsize", arg: 4, scope: !4398, file: !256, line: 951, type: !151)
!4408 = !DILocation(line: 951, column: 47, scope: !4398)
!4409 = !DILocalVariable(name: "o", scope: !4398, file: !256, line: 953, type: !2984)
!4410 = !DILocation(line: 953, column: 32, scope: !4398)
!4411 = !DILocation(line: 953, column: 64, scope: !4398)
!4412 = !DILocation(line: 953, column: 36, scope: !4398)
!4413 = !DILocation(line: 954, column: 30, scope: !4398)
!4414 = !DILocation(line: 954, column: 33, scope: !4398)
!4415 = !DILocation(line: 954, column: 38, scope: !4398)
!4416 = !DILocation(line: 954, column: 10, scope: !4398)
!4417 = !DILocation(line: 954, column: 3, scope: !4398)
!4418 = distinct !DISubprogram(name: "quotearg_style", scope: !256, file: !256, line: 958, type: !4419, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!22, !68, !35}
!4421 = !DILocalVariable(name: "s", arg: 1, scope: !4418, file: !256, line: 958, type: !68)
!4422 = !DILocation(line: 958, column: 36, scope: !4418)
!4423 = !DILocalVariable(name: "arg", arg: 2, scope: !4418, file: !256, line: 958, type: !35)
!4424 = !DILocation(line: 958, column: 51, scope: !4418)
!4425 = !DILocation(line: 960, column: 31, scope: !4418)
!4426 = !DILocation(line: 960, column: 34, scope: !4418)
!4427 = !DILocation(line: 960, column: 10, scope: !4418)
!4428 = !DILocation(line: 960, column: 3, scope: !4418)
!4429 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !256, file: !256, line: 964, type: !4430, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!22, !68, !35, !151}
!4432 = !DILocalVariable(name: "s", arg: 1, scope: !4429, file: !256, line: 964, type: !68)
!4433 = !DILocation(line: 964, column: 40, scope: !4429)
!4434 = !DILocalVariable(name: "arg", arg: 2, scope: !4429, file: !256, line: 964, type: !35)
!4435 = !DILocation(line: 964, column: 55, scope: !4429)
!4436 = !DILocalVariable(name: "argsize", arg: 3, scope: !4429, file: !256, line: 964, type: !151)
!4437 = !DILocation(line: 964, column: 67, scope: !4429)
!4438 = !DILocation(line: 966, column: 35, scope: !4429)
!4439 = !DILocation(line: 966, column: 38, scope: !4429)
!4440 = !DILocation(line: 966, column: 43, scope: !4429)
!4441 = !DILocation(line: 966, column: 10, scope: !4429)
!4442 = !DILocation(line: 966, column: 3, scope: !4429)
!4443 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !256, file: !256, line: 970, type: !4444, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!22, !35, !151, !23}
!4446 = !DILocalVariable(name: "arg", arg: 1, scope: !4443, file: !256, line: 970, type: !35)
!4447 = !DILocation(line: 970, column: 32, scope: !4443)
!4448 = !DILocalVariable(name: "argsize", arg: 2, scope: !4443, file: !256, line: 970, type: !151)
!4449 = !DILocation(line: 970, column: 44, scope: !4443)
!4450 = !DILocalVariable(name: "ch", arg: 3, scope: !4443, file: !256, line: 970, type: !23)
!4451 = !DILocation(line: 970, column: 58, scope: !4443)
!4452 = !DILocalVariable(name: "options", scope: !4443, file: !256, line: 972, type: !273)
!4453 = !DILocation(line: 972, column: 26, scope: !4443)
!4454 = !DILocation(line: 973, column: 13, scope: !4443)
!4455 = !DILocation(line: 974, column: 31, scope: !4443)
!4456 = !DILocation(line: 974, column: 3, scope: !4443)
!4457 = !DILocation(line: 975, column: 33, scope: !4443)
!4458 = !DILocation(line: 975, column: 38, scope: !4443)
!4459 = !DILocation(line: 975, column: 10, scope: !4443)
!4460 = !DILocation(line: 975, column: 3, scope: !4443)
!4461 = distinct !DISubprogram(name: "quotearg_char", scope: !256, file: !256, line: 979, type: !4462, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!22, !35, !23}
!4464 = !DILocalVariable(name: "arg", arg: 1, scope: !4461, file: !256, line: 979, type: !35)
!4465 = !DILocation(line: 979, column: 28, scope: !4461)
!4466 = !DILocalVariable(name: "ch", arg: 2, scope: !4461, file: !256, line: 979, type: !23)
!4467 = !DILocation(line: 979, column: 38, scope: !4461)
!4468 = !DILocation(line: 981, column: 29, scope: !4461)
!4469 = !DILocation(line: 981, column: 44, scope: !4461)
!4470 = !DILocation(line: 981, column: 10, scope: !4461)
!4471 = !DILocation(line: 981, column: 3, scope: !4461)
!4472 = distinct !DISubprogram(name: "quotearg_colon", scope: !256, file: !256, line: 985, type: !4347, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4473 = !DILocalVariable(name: "arg", arg: 1, scope: !4472, file: !256, line: 985, type: !35)
!4474 = !DILocation(line: 985, column: 29, scope: !4472)
!4475 = !DILocation(line: 987, column: 25, scope: !4472)
!4476 = !DILocation(line: 987, column: 10, scope: !4472)
!4477 = !DILocation(line: 987, column: 3, scope: !4472)
!4478 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !256, file: !256, line: 991, type: !4355, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4479 = !DILocalVariable(name: "arg", arg: 1, scope: !4478, file: !256, line: 991, type: !35)
!4480 = !DILocation(line: 991, column: 33, scope: !4478)
!4481 = !DILocalVariable(name: "argsize", arg: 2, scope: !4478, file: !256, line: 991, type: !151)
!4482 = !DILocation(line: 991, column: 45, scope: !4478)
!4483 = !DILocation(line: 993, column: 29, scope: !4478)
!4484 = !DILocation(line: 993, column: 34, scope: !4478)
!4485 = !DILocation(line: 993, column: 10, scope: !4478)
!4486 = !DILocation(line: 993, column: 3, scope: !4478)
!4487 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !256, file: !256, line: 997, type: !4366, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4488 = !DILocalVariable(name: "n", arg: 1, scope: !4487, file: !256, line: 997, type: !25)
!4489 = !DILocation(line: 997, column: 29, scope: !4487)
!4490 = !DILocalVariable(name: "s", arg: 2, scope: !4487, file: !256, line: 997, type: !68)
!4491 = !DILocation(line: 997, column: 51, scope: !4487)
!4492 = !DILocalVariable(name: "arg", arg: 3, scope: !4487, file: !256, line: 997, type: !35)
!4493 = !DILocation(line: 997, column: 66, scope: !4487)
!4494 = !DILocalVariable(name: "options", scope: !4487, file: !256, line: 999, type: !273)
!4495 = !DILocation(line: 999, column: 26, scope: !4487)
!4496 = !DILocation(line: 1000, column: 41, scope: !4487)
!4497 = !DILocation(line: 1000, column: 13, scope: !4487)
!4498 = !DILocation(line: 1001, column: 3, scope: !4487)
!4499 = !DILocation(line: 1002, column: 30, scope: !4487)
!4500 = !DILocation(line: 1002, column: 33, scope: !4487)
!4501 = !DILocation(line: 1002, column: 10, scope: !4487)
!4502 = !DILocation(line: 1002, column: 3, scope: !4487)
!4503 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !256, file: !256, line: 1006, type: !4504, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!22, !25, !35, !35, !35}
!4506 = !DILocalVariable(name: "n", arg: 1, scope: !4503, file: !256, line: 1006, type: !25)
!4507 = !DILocation(line: 1006, column: 24, scope: !4503)
!4508 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4503, file: !256, line: 1006, type: !35)
!4509 = !DILocation(line: 1006, column: 39, scope: !4503)
!4510 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4503, file: !256, line: 1007, type: !35)
!4511 = !DILocation(line: 1007, column: 32, scope: !4503)
!4512 = !DILocalVariable(name: "arg", arg: 4, scope: !4503, file: !256, line: 1007, type: !35)
!4513 = !DILocation(line: 1007, column: 57, scope: !4503)
!4514 = !DILocation(line: 1009, column: 33, scope: !4503)
!4515 = !DILocation(line: 1009, column: 36, scope: !4503)
!4516 = !DILocation(line: 1009, column: 48, scope: !4503)
!4517 = !DILocation(line: 1009, column: 61, scope: !4503)
!4518 = !DILocation(line: 1009, column: 10, scope: !4503)
!4519 = !DILocation(line: 1009, column: 3, scope: !4503)
!4520 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !256, file: !256, line: 1014, type: !4521, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!22, !25, !35, !35, !35, !151}
!4523 = !DILocalVariable(name: "n", arg: 1, scope: !4520, file: !256, line: 1014, type: !25)
!4524 = !DILocation(line: 1014, column: 28, scope: !4520)
!4525 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4520, file: !256, line: 1014, type: !35)
!4526 = !DILocation(line: 1014, column: 43, scope: !4520)
!4527 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4520, file: !256, line: 1015, type: !35)
!4528 = !DILocation(line: 1015, column: 36, scope: !4520)
!4529 = !DILocalVariable(name: "arg", arg: 4, scope: !4520, file: !256, line: 1016, type: !35)
!4530 = !DILocation(line: 1016, column: 36, scope: !4520)
!4531 = !DILocalVariable(name: "argsize", arg: 5, scope: !4520, file: !256, line: 1016, type: !151)
!4532 = !DILocation(line: 1016, column: 48, scope: !4520)
!4533 = !DILocalVariable(name: "o", scope: !4520, file: !256, line: 1018, type: !273)
!4534 = !DILocation(line: 1018, column: 26, scope: !4520)
!4535 = !DILocation(line: 1018, column: 30, scope: !4520)
!4536 = !DILocation(line: 1019, column: 27, scope: !4520)
!4537 = !DILocation(line: 1019, column: 39, scope: !4520)
!4538 = !DILocation(line: 1019, column: 3, scope: !4520)
!4539 = !DILocation(line: 1020, column: 30, scope: !4520)
!4540 = !DILocation(line: 1020, column: 33, scope: !4520)
!4541 = !DILocation(line: 1020, column: 38, scope: !4520)
!4542 = !DILocation(line: 1020, column: 10, scope: !4520)
!4543 = !DILocation(line: 1020, column: 3, scope: !4520)
!4544 = distinct !DISubprogram(name: "quotearg_custom", scope: !256, file: !256, line: 1024, type: !4545, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!22, !35, !35, !35}
!4547 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4544, file: !256, line: 1024, type: !35)
!4548 = !DILocation(line: 1024, column: 30, scope: !4544)
!4549 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4544, file: !256, line: 1024, type: !35)
!4550 = !DILocation(line: 1024, column: 54, scope: !4544)
!4551 = !DILocalVariable(name: "arg", arg: 3, scope: !4544, file: !256, line: 1025, type: !35)
!4552 = !DILocation(line: 1025, column: 30, scope: !4544)
!4553 = !DILocation(line: 1027, column: 32, scope: !4544)
!4554 = !DILocation(line: 1027, column: 44, scope: !4544)
!4555 = !DILocation(line: 1027, column: 57, scope: !4544)
!4556 = !DILocation(line: 1027, column: 10, scope: !4544)
!4557 = !DILocation(line: 1027, column: 3, scope: !4544)
!4558 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !256, file: !256, line: 1031, type: !4559, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!22, !35, !35, !35, !151}
!4561 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4558, file: !256, line: 1031, type: !35)
!4562 = !DILocation(line: 1031, column: 34, scope: !4558)
!4563 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4558, file: !256, line: 1031, type: !35)
!4564 = !DILocation(line: 1031, column: 58, scope: !4558)
!4565 = !DILocalVariable(name: "arg", arg: 3, scope: !4558, file: !256, line: 1032, type: !35)
!4566 = !DILocation(line: 1032, column: 34, scope: !4558)
!4567 = !DILocalVariable(name: "argsize", arg: 4, scope: !4558, file: !256, line: 1032, type: !151)
!4568 = !DILocation(line: 1032, column: 46, scope: !4558)
!4569 = !DILocation(line: 1034, column: 36, scope: !4558)
!4570 = !DILocation(line: 1034, column: 48, scope: !4558)
!4571 = !DILocation(line: 1034, column: 61, scope: !4558)
!4572 = !DILocation(line: 1035, column: 33, scope: !4558)
!4573 = !DILocation(line: 1034, column: 10, scope: !4558)
!4574 = !DILocation(line: 1034, column: 3, scope: !4558)
!4575 = distinct !DISubprogram(name: "quote_n_mem", scope: !256, file: !256, line: 1049, type: !4576, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!35, !25, !35, !151}
!4578 = !DILocalVariable(name: "n", arg: 1, scope: !4575, file: !256, line: 1049, type: !25)
!4579 = !DILocation(line: 1049, column: 18, scope: !4575)
!4580 = !DILocalVariable(name: "arg", arg: 2, scope: !4575, file: !256, line: 1049, type: !35)
!4581 = !DILocation(line: 1049, column: 33, scope: !4575)
!4582 = !DILocalVariable(name: "argsize", arg: 3, scope: !4575, file: !256, line: 1049, type: !151)
!4583 = !DILocation(line: 1049, column: 45, scope: !4575)
!4584 = !DILocation(line: 1051, column: 30, scope: !4575)
!4585 = !DILocation(line: 1051, column: 33, scope: !4575)
!4586 = !DILocation(line: 1051, column: 38, scope: !4575)
!4587 = !DILocation(line: 1051, column: 10, scope: !4575)
!4588 = !DILocation(line: 1051, column: 3, scope: !4575)
!4589 = distinct !DISubprogram(name: "quote_mem", scope: !256, file: !256, line: 1055, type: !4590, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!35, !35, !151}
!4592 = !DILocalVariable(name: "arg", arg: 1, scope: !4589, file: !256, line: 1055, type: !35)
!4593 = !DILocation(line: 1055, column: 24, scope: !4589)
!4594 = !DILocalVariable(name: "argsize", arg: 2, scope: !4589, file: !256, line: 1055, type: !151)
!4595 = !DILocation(line: 1055, column: 36, scope: !4589)
!4596 = !DILocation(line: 1057, column: 26, scope: !4589)
!4597 = !DILocation(line: 1057, column: 31, scope: !4589)
!4598 = !DILocation(line: 1057, column: 10, scope: !4589)
!4599 = !DILocation(line: 1057, column: 3, scope: !4589)
!4600 = distinct !DISubprogram(name: "quote_n", scope: !256, file: !256, line: 1061, type: !4601, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!35, !25, !35}
!4603 = !DILocalVariable(name: "n", arg: 1, scope: !4600, file: !256, line: 1061, type: !25)
!4604 = !DILocation(line: 1061, column: 14, scope: !4600)
!4605 = !DILocalVariable(name: "arg", arg: 2, scope: !4600, file: !256, line: 1061, type: !35)
!4606 = !DILocation(line: 1061, column: 29, scope: !4600)
!4607 = !DILocation(line: 1063, column: 23, scope: !4600)
!4608 = !DILocation(line: 1063, column: 26, scope: !4600)
!4609 = !DILocation(line: 1063, column: 10, scope: !4600)
!4610 = !DILocation(line: 1063, column: 3, scope: !4600)
!4611 = distinct !DISubprogram(name: "quote", scope: !256, file: !256, line: 1067, type: !4612, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !37)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!35, !35}
!4614 = !DILocalVariable(name: "arg", arg: 1, scope: !4611, file: !256, line: 1067, type: !35)
!4615 = !DILocation(line: 1067, column: 20, scope: !4611)
!4616 = !DILocation(line: 1069, column: 22, scope: !4611)
!4617 = !DILocation(line: 1069, column: 10, scope: !4611)
!4618 = !DILocation(line: 1069, column: 3, scope: !4611)
!4619 = distinct !DISubprogram(name: "streq", scope: !4620, file: !4620, line: 1359, type: !4621, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !388, retainedNodes: !37)
!4620 = !DIFile(filename: "./lib/string.h", directory: "/src")
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!27, !35, !35}
!4623 = !DILocalVariable(name: "__s1", arg: 1, scope: !4619, file: !4620, line: 1359, type: !35)
!4624 = !DILocation(line: 1359, column: 20, scope: !4619)
!4625 = !DILocalVariable(name: "__s2", arg: 2, scope: !4619, file: !4620, line: 1359, type: !35)
!4626 = !DILocation(line: 1359, column: 38, scope: !4619)
!4627 = !DILocation(line: 1361, column: 19, scope: !4619)
!4628 = !DILocation(line: 1361, column: 25, scope: !4619)
!4629 = !DILocation(line: 1361, column: 11, scope: !4619)
!4630 = !DILocation(line: 1361, column: 10, scope: !4619)
!4631 = !DILocation(line: 1361, column: 3, scope: !4619)
!4632 = distinct !DISubprogram(name: "version_etc_arn", scope: !391, file: !391, line: 61, type: !4633, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !390, retainedNodes: !37)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4635, !35, !35, !35, !4669, !151}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !4637)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4637, file: !106, line: 51, baseType: !25, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4637, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4637, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4637, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4637, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4637, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4637, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4637, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4637, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4637, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4637, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4637, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4637, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4637, file: !106, line: 70, baseType: !4653, size: 64, offset: 832)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4637, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4637, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4637, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4637, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4637, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4637, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4637, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4637, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4637, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4637, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4637, file: !106, line: 93, baseType: !4653, size: 64, offset: 1344)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4637, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4637, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4637, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4637, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!4670 = !DILocalVariable(name: "stream", arg: 1, scope: !4632, file: !391, line: 61, type: !4635)
!4671 = !DILocation(line: 61, column: 24, scope: !4632)
!4672 = !DILocalVariable(name: "command_name", arg: 2, scope: !4632, file: !391, line: 62, type: !35)
!4673 = !DILocation(line: 62, column: 30, scope: !4632)
!4674 = !DILocalVariable(name: "package", arg: 3, scope: !4632, file: !391, line: 62, type: !35)
!4675 = !DILocation(line: 62, column: 56, scope: !4632)
!4676 = !DILocalVariable(name: "version", arg: 4, scope: !4632, file: !391, line: 63, type: !35)
!4677 = !DILocation(line: 63, column: 30, scope: !4632)
!4678 = !DILocalVariable(name: "authors", arg: 5, scope: !4632, file: !391, line: 64, type: !4669)
!4679 = !DILocation(line: 64, column: 39, scope: !4632)
!4680 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4632, file: !391, line: 64, type: !151)
!4681 = !DILocation(line: 64, column: 55, scope: !4632)
!4682 = !DILocation(line: 66, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4632, file: !391, line: 66, column: 7)
!4684 = !DILocation(line: 66, column: 7, scope: !4632)
!4685 = !DILocation(line: 67, column: 14, scope: !4683)
!4686 = !DILocation(line: 67, column: 38, scope: !4683)
!4687 = !DILocation(line: 67, column: 52, scope: !4683)
!4688 = !DILocation(line: 67, column: 61, scope: !4683)
!4689 = !DILocation(line: 67, column: 5, scope: !4683)
!4690 = !DILocation(line: 69, column: 14, scope: !4683)
!4691 = !DILocation(line: 69, column: 33, scope: !4683)
!4692 = !DILocation(line: 69, column: 42, scope: !4683)
!4693 = !DILocation(line: 69, column: 5, scope: !4683)
!4694 = !DILocation(line: 83, column: 12, scope: !4632)
!4695 = !DILocation(line: 83, column: 43, scope: !4632)
!4696 = !DILocation(line: 83, column: 3, scope: !4632)
!4697 = !DILocation(line: 85, column: 3, scope: !4632)
!4698 = !DILocation(line: 88, column: 12, scope: !4632)
!4699 = !DILocation(line: 88, column: 20, scope: !4632)
!4700 = !DILocation(line: 88, column: 3, scope: !4632)
!4701 = !DILocation(line: 95, column: 3, scope: !4632)
!4702 = !DILocation(line: 97, column: 11, scope: !4632)
!4703 = !DILocation(line: 97, column: 3, scope: !4632)
!4704 = !DILocation(line: 102, column: 7, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4632, file: !391, line: 98, column: 5)
!4706 = !DILocation(line: 105, column: 16, scope: !4705)
!4707 = !DILocation(line: 105, column: 24, scope: !4705)
!4708 = !DILocation(line: 105, column: 47, scope: !4705)
!4709 = !DILocation(line: 105, column: 7, scope: !4705)
!4710 = !DILocation(line: 106, column: 7, scope: !4705)
!4711 = !DILocation(line: 109, column: 16, scope: !4705)
!4712 = !DILocation(line: 109, column: 24, scope: !4705)
!4713 = !DILocation(line: 109, column: 54, scope: !4705)
!4714 = !DILocation(line: 109, column: 66, scope: !4705)
!4715 = !DILocation(line: 109, column: 7, scope: !4705)
!4716 = !DILocation(line: 110, column: 7, scope: !4705)
!4717 = !DILocation(line: 113, column: 16, scope: !4705)
!4718 = !DILocation(line: 113, column: 24, scope: !4705)
!4719 = !DILocation(line: 114, column: 16, scope: !4705)
!4720 = !DILocation(line: 114, column: 28, scope: !4705)
!4721 = !DILocation(line: 114, column: 40, scope: !4705)
!4722 = !DILocation(line: 113, column: 7, scope: !4705)
!4723 = !DILocation(line: 115, column: 7, scope: !4705)
!4724 = !DILocation(line: 120, column: 16, scope: !4705)
!4725 = !DILocation(line: 120, column: 24, scope: !4705)
!4726 = !DILocation(line: 121, column: 16, scope: !4705)
!4727 = !DILocation(line: 121, column: 28, scope: !4705)
!4728 = !DILocation(line: 121, column: 40, scope: !4705)
!4729 = !DILocation(line: 121, column: 52, scope: !4705)
!4730 = !DILocation(line: 120, column: 7, scope: !4705)
!4731 = !DILocation(line: 122, column: 7, scope: !4705)
!4732 = !DILocation(line: 127, column: 16, scope: !4705)
!4733 = !DILocation(line: 127, column: 24, scope: !4705)
!4734 = !DILocation(line: 128, column: 16, scope: !4705)
!4735 = !DILocation(line: 128, column: 28, scope: !4705)
!4736 = !DILocation(line: 128, column: 40, scope: !4705)
!4737 = !DILocation(line: 128, column: 52, scope: !4705)
!4738 = !DILocation(line: 128, column: 64, scope: !4705)
!4739 = !DILocation(line: 127, column: 7, scope: !4705)
!4740 = !DILocation(line: 129, column: 7, scope: !4705)
!4741 = !DILocation(line: 134, column: 16, scope: !4705)
!4742 = !DILocation(line: 134, column: 24, scope: !4705)
!4743 = !DILocation(line: 135, column: 16, scope: !4705)
!4744 = !DILocation(line: 135, column: 28, scope: !4705)
!4745 = !DILocation(line: 135, column: 40, scope: !4705)
!4746 = !DILocation(line: 135, column: 52, scope: !4705)
!4747 = !DILocation(line: 135, column: 64, scope: !4705)
!4748 = !DILocation(line: 136, column: 16, scope: !4705)
!4749 = !DILocation(line: 134, column: 7, scope: !4705)
!4750 = !DILocation(line: 137, column: 7, scope: !4705)
!4751 = !DILocation(line: 142, column: 16, scope: !4705)
!4752 = !DILocation(line: 142, column: 24, scope: !4705)
!4753 = !DILocation(line: 143, column: 16, scope: !4705)
!4754 = !DILocation(line: 143, column: 28, scope: !4705)
!4755 = !DILocation(line: 143, column: 40, scope: !4705)
!4756 = !DILocation(line: 143, column: 52, scope: !4705)
!4757 = !DILocation(line: 143, column: 64, scope: !4705)
!4758 = !DILocation(line: 144, column: 16, scope: !4705)
!4759 = !DILocation(line: 144, column: 28, scope: !4705)
!4760 = !DILocation(line: 142, column: 7, scope: !4705)
!4761 = !DILocation(line: 145, column: 7, scope: !4705)
!4762 = !DILocation(line: 150, column: 16, scope: !4705)
!4763 = !DILocation(line: 150, column: 24, scope: !4705)
!4764 = !DILocation(line: 152, column: 17, scope: !4705)
!4765 = !DILocation(line: 152, column: 29, scope: !4705)
!4766 = !DILocation(line: 152, column: 41, scope: !4705)
!4767 = !DILocation(line: 152, column: 53, scope: !4705)
!4768 = !DILocation(line: 152, column: 65, scope: !4705)
!4769 = !DILocation(line: 153, column: 17, scope: !4705)
!4770 = !DILocation(line: 153, column: 29, scope: !4705)
!4771 = !DILocation(line: 153, column: 41, scope: !4705)
!4772 = !DILocation(line: 150, column: 7, scope: !4705)
!4773 = !DILocation(line: 154, column: 7, scope: !4705)
!4774 = !DILocation(line: 159, column: 16, scope: !4705)
!4775 = !DILocation(line: 159, column: 24, scope: !4705)
!4776 = !DILocation(line: 161, column: 16, scope: !4705)
!4777 = !DILocation(line: 161, column: 28, scope: !4705)
!4778 = !DILocation(line: 161, column: 40, scope: !4705)
!4779 = !DILocation(line: 161, column: 52, scope: !4705)
!4780 = !DILocation(line: 161, column: 64, scope: !4705)
!4781 = !DILocation(line: 162, column: 16, scope: !4705)
!4782 = !DILocation(line: 162, column: 28, scope: !4705)
!4783 = !DILocation(line: 162, column: 40, scope: !4705)
!4784 = !DILocation(line: 162, column: 52, scope: !4705)
!4785 = !DILocation(line: 159, column: 7, scope: !4705)
!4786 = !DILocation(line: 163, column: 7, scope: !4705)
!4787 = !DILocation(line: 170, column: 16, scope: !4705)
!4788 = !DILocation(line: 170, column: 24, scope: !4705)
!4789 = !DILocation(line: 172, column: 17, scope: !4705)
!4790 = !DILocation(line: 172, column: 29, scope: !4705)
!4791 = !DILocation(line: 172, column: 41, scope: !4705)
!4792 = !DILocation(line: 172, column: 53, scope: !4705)
!4793 = !DILocation(line: 172, column: 65, scope: !4705)
!4794 = !DILocation(line: 173, column: 17, scope: !4705)
!4795 = !DILocation(line: 173, column: 29, scope: !4705)
!4796 = !DILocation(line: 173, column: 41, scope: !4705)
!4797 = !DILocation(line: 173, column: 53, scope: !4705)
!4798 = !DILocation(line: 170, column: 7, scope: !4705)
!4799 = !DILocation(line: 174, column: 7, scope: !4705)
!4800 = !DILocation(line: 176, column: 1, scope: !4632)
!4801 = distinct !DISubprogram(name: "version_etc_ar", scope: !391, file: !391, line: 183, type: !4802, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !390, retainedNodes: !37)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !4635, !35, !35, !35, !4669}
!4804 = !DILocalVariable(name: "stream", arg: 1, scope: !4801, file: !391, line: 183, type: !4635)
!4805 = !DILocation(line: 183, column: 23, scope: !4801)
!4806 = !DILocalVariable(name: "command_name", arg: 2, scope: !4801, file: !391, line: 184, type: !35)
!4807 = !DILocation(line: 184, column: 29, scope: !4801)
!4808 = !DILocalVariable(name: "package", arg: 3, scope: !4801, file: !391, line: 184, type: !35)
!4809 = !DILocation(line: 184, column: 55, scope: !4801)
!4810 = !DILocalVariable(name: "version", arg: 4, scope: !4801, file: !391, line: 185, type: !35)
!4811 = !DILocation(line: 185, column: 29, scope: !4801)
!4812 = !DILocalVariable(name: "authors", arg: 5, scope: !4801, file: !391, line: 185, type: !4669)
!4813 = !DILocation(line: 185, column: 59, scope: !4801)
!4814 = !DILocalVariable(name: "n_authors", scope: !4801, file: !391, line: 187, type: !151)
!4815 = !DILocation(line: 187, column: 10, scope: !4801)
!4816 = !DILocation(line: 189, column: 18, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4801, file: !391, line: 189, column: 3)
!4818 = !DILocation(line: 189, column: 8, scope: !4817)
!4819 = !DILocation(line: 189, column: 23, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !391, line: 189, column: 3)
!4821 = !DILocation(line: 189, column: 31, scope: !4820)
!4822 = !DILocation(line: 189, column: 3, scope: !4817)
!4823 = !DILocation(line: 189, column: 52, scope: !4820)
!4824 = !DILocation(line: 189, column: 3, scope: !4820)
!4825 = distinct !{!4825, !4822, !4826, !553}
!4826 = !DILocation(line: 190, column: 5, scope: !4817)
!4827 = !DILocation(line: 191, column: 20, scope: !4801)
!4828 = !DILocation(line: 191, column: 28, scope: !4801)
!4829 = !DILocation(line: 191, column: 42, scope: !4801)
!4830 = !DILocation(line: 191, column: 51, scope: !4801)
!4831 = !DILocation(line: 191, column: 60, scope: !4801)
!4832 = !DILocation(line: 191, column: 69, scope: !4801)
!4833 = !DILocation(line: 191, column: 3, scope: !4801)
!4834 = !DILocation(line: 192, column: 1, scope: !4801)
!4835 = distinct !DISubprogram(name: "version_etc_va", scope: !391, file: !391, line: 199, type: !4836, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !390, retainedNodes: !37)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !4635, !35, !35, !35, !4838}
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !218, line: 52, baseType: !4839)
!4839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !220, line: 32, baseType: !4840)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4841, baseType: !4842)
!4841 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !224, size: 256, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847, !4848}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4842, file: !4841, line: 192, baseType: !24, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4842, file: !4841, line: 192, baseType: !24, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4842, file: !4841, line: 192, baseType: !24, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4842, file: !4841, line: 192, baseType: !25, size: 32, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4842, file: !4841, line: 192, baseType: !25, size: 32, offset: 224)
!4849 = !DILocalVariable(name: "stream", arg: 1, scope: !4835, file: !391, line: 199, type: !4635)
!4850 = !DILocation(line: 199, column: 23, scope: !4835)
!4851 = !DILocalVariable(name: "command_name", arg: 2, scope: !4835, file: !391, line: 200, type: !35)
!4852 = !DILocation(line: 200, column: 29, scope: !4835)
!4853 = !DILocalVariable(name: "package", arg: 3, scope: !4835, file: !391, line: 200, type: !35)
!4854 = !DILocation(line: 200, column: 55, scope: !4835)
!4855 = !DILocalVariable(name: "version", arg: 4, scope: !4835, file: !391, line: 201, type: !35)
!4856 = !DILocation(line: 201, column: 29, scope: !4835)
!4857 = !DILocalVariable(name: "authors", arg: 5, scope: !4835, file: !391, line: 201, type: !4838)
!4858 = !DILocation(line: 201, column: 46, scope: !4835)
!4859 = !DILocalVariable(name: "n_authors", scope: !4835, file: !391, line: 203, type: !151)
!4860 = !DILocation(line: 203, column: 10, scope: !4835)
!4861 = !DILocalVariable(name: "authtab", scope: !4835, file: !391, line: 204, type: !4862)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !269)
!4863 = !DILocation(line: 204, column: 15, scope: !4835)
!4864 = !DILocation(line: 206, column: 18, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4835, file: !391, line: 206, column: 3)
!4866 = !DILocation(line: 206, column: 8, scope: !4865)
!4867 = !DILocation(line: 207, column: 8, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !391, line: 206, column: 3)
!4869 = !DILocation(line: 207, column: 18, scope: !4868)
!4870 = !DILocation(line: 208, column: 10, scope: !4868)
!4871 = !DILocation(line: 208, column: 35, scope: !4868)
!4872 = !DILocation(line: 208, column: 22, scope: !4868)
!4873 = !DILocation(line: 208, column: 14, scope: !4868)
!4874 = !DILocation(line: 208, column: 33, scope: !4868)
!4875 = !DILocation(line: 208, column: 67, scope: !4868)
!4876 = !DILocation(line: 0, scope: !4868)
!4877 = !DILocation(line: 206, column: 3, scope: !4865)
!4878 = !DILocation(line: 209, column: 17, scope: !4868)
!4879 = !DILocation(line: 206, column: 3, scope: !4868)
!4880 = distinct !{!4880, !4877, !4881, !553}
!4881 = !DILocation(line: 210, column: 5, scope: !4865)
!4882 = !DILocation(line: 211, column: 20, scope: !4835)
!4883 = !DILocation(line: 211, column: 28, scope: !4835)
!4884 = !DILocation(line: 211, column: 42, scope: !4835)
!4885 = !DILocation(line: 211, column: 51, scope: !4835)
!4886 = !DILocation(line: 212, column: 20, scope: !4835)
!4887 = !DILocation(line: 212, column: 29, scope: !4835)
!4888 = !DILocation(line: 211, column: 3, scope: !4835)
!4889 = !DILocation(line: 213, column: 1, scope: !4835)
!4890 = distinct !DISubprogram(name: "version_etc", scope: !391, file: !391, line: 230, type: !4891, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !390, retainedNodes: !37)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{null, !4635, !35, !35, !35, null}
!4893 = !DILocalVariable(name: "stream", arg: 1, scope: !4890, file: !391, line: 230, type: !4635)
!4894 = !DILocation(line: 230, column: 20, scope: !4890)
!4895 = !DILocalVariable(name: "command_name", arg: 2, scope: !4890, file: !391, line: 231, type: !35)
!4896 = !DILocation(line: 231, column: 26, scope: !4890)
!4897 = !DILocalVariable(name: "package", arg: 3, scope: !4890, file: !391, line: 231, type: !35)
!4898 = !DILocation(line: 231, column: 52, scope: !4890)
!4899 = !DILocalVariable(name: "version", arg: 4, scope: !4890, file: !391, line: 232, type: !35)
!4900 = !DILocation(line: 232, column: 26, scope: !4890)
!4901 = !DILocalVariable(name: "authors", scope: !4890, file: !391, line: 234, type: !4838)
!4902 = !DILocation(line: 234, column: 11, scope: !4890)
!4903 = !DILocation(line: 235, column: 3, scope: !4890)
!4904 = !DILocation(line: 236, column: 19, scope: !4890)
!4905 = !DILocation(line: 236, column: 27, scope: !4890)
!4906 = !DILocation(line: 236, column: 41, scope: !4890)
!4907 = !DILocation(line: 236, column: 50, scope: !4890)
!4908 = !DILocation(line: 236, column: 3, scope: !4890)
!4909 = !DILocation(line: 237, column: 3, scope: !4890)
!4910 = !DILocation(line: 238, column: 1, scope: !4890)
!4911 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !391, file: !391, line: 241, type: !55, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !390, retainedNodes: !37)
!4912 = !DILocation(line: 243, column: 3, scope: !4911)
!4913 = !DILocation(line: 248, column: 11, scope: !4911)
!4914 = !DILocation(line: 248, column: 3, scope: !4911)
!4915 = !DILocation(line: 254, column: 11, scope: !4911)
!4916 = !DILocation(line: 254, column: 3, scope: !4911)
!4917 = !DILocation(line: 259, column: 11, scope: !4911)
!4918 = !DILocation(line: 259, column: 3, scope: !4911)
!4919 = !DILocation(line: 261, column: 1, scope: !4911)
!4920 = distinct !DISubprogram(name: "xnrealloc", scope: !4921, file: !4921, line: 147, type: !4922, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4921 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!24, !24, !151, !151}
!4924 = !DILocalVariable(name: "p", arg: 1, scope: !4920, file: !4921, line: 147, type: !24)
!4925 = !DILocation(line: 147, column: 18, scope: !4920)
!4926 = !DILocalVariable(name: "n", arg: 2, scope: !4920, file: !4921, line: 147, type: !151)
!4927 = !DILocation(line: 147, column: 28, scope: !4920)
!4928 = !DILocalVariable(name: "s", arg: 3, scope: !4920, file: !4921, line: 147, type: !151)
!4929 = !DILocation(line: 147, column: 38, scope: !4920)
!4930 = !DILocation(line: 149, column: 25, scope: !4920)
!4931 = !DILocation(line: 149, column: 28, scope: !4920)
!4932 = !DILocation(line: 149, column: 31, scope: !4920)
!4933 = !DILocation(line: 149, column: 10, scope: !4920)
!4934 = !DILocation(line: 149, column: 3, scope: !4920)
!4935 = distinct !DISubprogram(name: "xreallocarray", scope: !397, file: !397, line: 83, type: !4922, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4936 = !DILocalVariable(name: "p", arg: 1, scope: !4935, file: !397, line: 83, type: !24)
!4937 = !DILocation(line: 83, column: 22, scope: !4935)
!4938 = !DILocalVariable(name: "n", arg: 2, scope: !4935, file: !397, line: 83, type: !151)
!4939 = !DILocation(line: 83, column: 32, scope: !4935)
!4940 = !DILocalVariable(name: "s", arg: 3, scope: !4935, file: !397, line: 83, type: !151)
!4941 = !DILocation(line: 83, column: 42, scope: !4935)
!4942 = !DILocation(line: 85, column: 39, scope: !4935)
!4943 = !DILocation(line: 85, column: 42, scope: !4935)
!4944 = !DILocation(line: 85, column: 45, scope: !4935)
!4945 = !DILocation(line: 85, column: 25, scope: !4935)
!4946 = !DILocation(line: 85, column: 10, scope: !4935)
!4947 = !DILocation(line: 85, column: 3, scope: !4935)
!4948 = distinct !DISubprogram(name: "check_nonnull", scope: !397, file: !397, line: 37, type: !4949, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!24, !24}
!4951 = !DILocalVariable(name: "p", arg: 1, scope: !4948, file: !397, line: 37, type: !24)
!4952 = !DILocation(line: 37, column: 22, scope: !4948)
!4953 = !DILocation(line: 39, column: 8, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4948, file: !397, line: 39, column: 7)
!4955 = !DILocation(line: 39, column: 7, scope: !4948)
!4956 = !DILocation(line: 40, column: 5, scope: !4954)
!4957 = !DILocation(line: 41, column: 10, scope: !4948)
!4958 = !DILocation(line: 41, column: 3, scope: !4948)
!4959 = distinct !DISubprogram(name: "xmalloc", scope: !397, file: !397, line: 47, type: !4960, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!24, !151}
!4962 = !DILocalVariable(name: "s", arg: 1, scope: !4959, file: !397, line: 47, type: !151)
!4963 = !DILocation(line: 47, column: 17, scope: !4959)
!4964 = !DILocation(line: 49, column: 33, scope: !4959)
!4965 = !DILocation(line: 49, column: 25, scope: !4959)
!4966 = !DILocation(line: 49, column: 10, scope: !4959)
!4967 = !DILocation(line: 49, column: 3, scope: !4959)
!4968 = distinct !DISubprogram(name: "ximalloc", scope: !397, file: !397, line: 53, type: !4969, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!24, !160}
!4971 = !DILocalVariable(name: "s", arg: 1, scope: !4968, file: !397, line: 53, type: !160)
!4972 = !DILocation(line: 53, column: 17, scope: !4968)
!4973 = !DILocation(line: 55, column: 34, scope: !4968)
!4974 = !DILocation(line: 55, column: 25, scope: !4968)
!4975 = !DILocation(line: 55, column: 10, scope: !4968)
!4976 = !DILocation(line: 55, column: 3, scope: !4968)
!4977 = distinct !DISubprogram(name: "xcharalloc", scope: !397, file: !397, line: 59, type: !4978, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!22, !151}
!4980 = !DILocalVariable(name: "n", arg: 1, scope: !4977, file: !397, line: 59, type: !151)
!4981 = !DILocation(line: 59, column: 20, scope: !4977)
!4982 = !DILocation(line: 61, column: 10, scope: !4977)
!4983 = !DILocation(line: 61, column: 3, scope: !4977)
!4984 = distinct !DISubprogram(name: "xrealloc", scope: !397, file: !397, line: 68, type: !4985, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!24, !24, !151}
!4987 = !DILocalVariable(name: "p", arg: 1, scope: !4984, file: !397, line: 68, type: !24)
!4988 = !DILocation(line: 68, column: 17, scope: !4984)
!4989 = !DILocalVariable(name: "s", arg: 2, scope: !4984, file: !397, line: 68, type: !151)
!4990 = !DILocation(line: 68, column: 27, scope: !4984)
!4991 = !DILocation(line: 70, column: 34, scope: !4984)
!4992 = !DILocation(line: 70, column: 37, scope: !4984)
!4993 = !DILocation(line: 70, column: 25, scope: !4984)
!4994 = !DILocation(line: 70, column: 10, scope: !4984)
!4995 = !DILocation(line: 70, column: 3, scope: !4984)
!4996 = distinct !DISubprogram(name: "xirealloc", scope: !397, file: !397, line: 74, type: !4997, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!24, !24, !160}
!4999 = !DILocalVariable(name: "p", arg: 1, scope: !4996, file: !397, line: 74, type: !24)
!5000 = !DILocation(line: 74, column: 18, scope: !4996)
!5001 = !DILocalVariable(name: "s", arg: 2, scope: !4996, file: !397, line: 74, type: !160)
!5002 = !DILocation(line: 74, column: 27, scope: !4996)
!5003 = !DILocation(line: 76, column: 35, scope: !4996)
!5004 = !DILocation(line: 76, column: 38, scope: !4996)
!5005 = !DILocation(line: 76, column: 25, scope: !4996)
!5006 = !DILocation(line: 76, column: 10, scope: !4996)
!5007 = !DILocation(line: 76, column: 3, scope: !4996)
!5008 = distinct !DISubprogram(name: "xireallocarray", scope: !397, file: !397, line: 89, type: !5009, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!24, !24, !160, !160}
!5011 = !DILocalVariable(name: "p", arg: 1, scope: !5008, file: !397, line: 89, type: !24)
!5012 = !DILocation(line: 89, column: 23, scope: !5008)
!5013 = !DILocalVariable(name: "n", arg: 2, scope: !5008, file: !397, line: 89, type: !160)
!5014 = !DILocation(line: 89, column: 32, scope: !5008)
!5015 = !DILocalVariable(name: "s", arg: 3, scope: !5008, file: !397, line: 89, type: !160)
!5016 = !DILocation(line: 89, column: 41, scope: !5008)
!5017 = !DILocation(line: 91, column: 40, scope: !5008)
!5018 = !DILocation(line: 91, column: 43, scope: !5008)
!5019 = !DILocation(line: 91, column: 46, scope: !5008)
!5020 = !DILocation(line: 91, column: 25, scope: !5008)
!5021 = !DILocation(line: 91, column: 10, scope: !5008)
!5022 = !DILocation(line: 91, column: 3, scope: !5008)
!5023 = distinct !DISubprogram(name: "xnmalloc", scope: !397, file: !397, line: 98, type: !5024, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!24, !151, !151}
!5026 = !DILocalVariable(name: "n", arg: 1, scope: !5023, file: !397, line: 98, type: !151)
!5027 = !DILocation(line: 98, column: 18, scope: !5023)
!5028 = !DILocalVariable(name: "s", arg: 2, scope: !5023, file: !397, line: 98, type: !151)
!5029 = !DILocation(line: 98, column: 28, scope: !5023)
!5030 = !DILocation(line: 100, column: 31, scope: !5023)
!5031 = !DILocation(line: 100, column: 34, scope: !5023)
!5032 = !DILocation(line: 100, column: 10, scope: !5023)
!5033 = !DILocation(line: 100, column: 3, scope: !5023)
!5034 = distinct !DISubprogram(name: "xinmalloc", scope: !397, file: !397, line: 104, type: !5035, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!24, !160, !160}
!5037 = !DILocalVariable(name: "n", arg: 1, scope: !5034, file: !397, line: 104, type: !160)
!5038 = !DILocation(line: 104, column: 18, scope: !5034)
!5039 = !DILocalVariable(name: "s", arg: 2, scope: !5034, file: !397, line: 104, type: !160)
!5040 = !DILocation(line: 104, column: 27, scope: !5034)
!5041 = !DILocation(line: 106, column: 32, scope: !5034)
!5042 = !DILocation(line: 106, column: 35, scope: !5034)
!5043 = !DILocation(line: 106, column: 10, scope: !5034)
!5044 = !DILocation(line: 106, column: 3, scope: !5034)
!5045 = distinct !DISubprogram(name: "x2realloc", scope: !397, file: !397, line: 116, type: !5046, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!24, !24, !403}
!5048 = !DILocalVariable(name: "p", arg: 1, scope: !5045, file: !397, line: 116, type: !24)
!5049 = !DILocation(line: 116, column: 18, scope: !5045)
!5050 = !DILocalVariable(name: "ps", arg: 2, scope: !5045, file: !397, line: 116, type: !403)
!5051 = !DILocation(line: 116, column: 29, scope: !5045)
!5052 = !DILocation(line: 118, column: 22, scope: !5045)
!5053 = !DILocation(line: 118, column: 25, scope: !5045)
!5054 = !DILocation(line: 118, column: 10, scope: !5045)
!5055 = !DILocation(line: 118, column: 3, scope: !5045)
!5056 = !DILocalVariable(name: "p", arg: 1, scope: !400, file: !397, line: 176, type: !24)
!5057 = !DILocation(line: 176, column: 19, scope: !400)
!5058 = !DILocalVariable(name: "pn", arg: 2, scope: !400, file: !397, line: 176, type: !403)
!5059 = !DILocation(line: 176, column: 30, scope: !400)
!5060 = !DILocalVariable(name: "s", arg: 3, scope: !400, file: !397, line: 176, type: !151)
!5061 = !DILocation(line: 176, column: 41, scope: !400)
!5062 = !DILocalVariable(name: "n", scope: !400, file: !397, line: 178, type: !151)
!5063 = !DILocation(line: 178, column: 10, scope: !400)
!5064 = !DILocation(line: 178, column: 15, scope: !400)
!5065 = !DILocation(line: 178, column: 14, scope: !400)
!5066 = !DILocation(line: 180, column: 9, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !400, file: !397, line: 180, column: 7)
!5068 = !DILocation(line: 180, column: 7, scope: !400)
!5069 = !DILocation(line: 182, column: 13, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !397, line: 182, column: 11)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !397, line: 181, column: 5)
!5072 = !DILocation(line: 182, column: 11, scope: !5071)
!5073 = !DILocation(line: 190, column: 32, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !397, line: 183, column: 9)
!5075 = !DILocation(line: 190, column: 30, scope: !5074)
!5076 = !DILocation(line: 190, column: 13, scope: !5074)
!5077 = !DILocation(line: 191, column: 17, scope: !5074)
!5078 = !DILocation(line: 191, column: 16, scope: !5074)
!5079 = !DILocation(line: 191, column: 13, scope: !5074)
!5080 = !DILocation(line: 192, column: 9, scope: !5074)
!5081 = !DILocation(line: 193, column: 5, scope: !5071)
!5082 = !DILocation(line: 197, column: 11, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !397, line: 197, column: 11)
!5084 = distinct !DILexicalBlock(scope: !5067, file: !397, line: 195, column: 5)
!5085 = !DILocation(line: 197, column: 11, scope: !5084)
!5086 = !DILocation(line: 198, column: 9, scope: !5083)
!5087 = !DILocation(line: 201, column: 22, scope: !400)
!5088 = !DILocation(line: 201, column: 25, scope: !400)
!5089 = !DILocation(line: 201, column: 28, scope: !400)
!5090 = !DILocation(line: 201, column: 7, scope: !400)
!5091 = !DILocation(line: 201, column: 5, scope: !400)
!5092 = !DILocation(line: 202, column: 9, scope: !400)
!5093 = !DILocation(line: 202, column: 4, scope: !400)
!5094 = !DILocation(line: 202, column: 7, scope: !400)
!5095 = !DILocation(line: 203, column: 10, scope: !400)
!5096 = !DILocation(line: 203, column: 3, scope: !400)
!5097 = !DILocalVariable(name: "pa", arg: 1, scope: !407, file: !397, line: 223, type: !24)
!5098 = !DILocation(line: 223, column: 16, scope: !407)
!5099 = !DILocalVariable(name: "pn", arg: 2, scope: !407, file: !397, line: 223, type: !410)
!5100 = !DILocation(line: 223, column: 27, scope: !407)
!5101 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !407, file: !397, line: 223, type: !160)
!5102 = !DILocation(line: 223, column: 37, scope: !407)
!5103 = !DILocalVariable(name: "n_max", arg: 4, scope: !407, file: !397, line: 223, type: !162)
!5104 = !DILocation(line: 223, column: 59, scope: !407)
!5105 = !DILocalVariable(name: "s", arg: 5, scope: !407, file: !397, line: 223, type: !160)
!5106 = !DILocation(line: 223, column: 72, scope: !407)
!5107 = !DILocalVariable(name: "n0", scope: !407, file: !397, line: 230, type: !160)
!5108 = !DILocation(line: 230, column: 9, scope: !407)
!5109 = !DILocation(line: 230, column: 15, scope: !407)
!5110 = !DILocation(line: 230, column: 14, scope: !407)
!5111 = !DILocalVariable(name: "n", scope: !407, file: !397, line: 237, type: !160)
!5112 = !DILocation(line: 237, column: 9, scope: !407)
!5113 = !DILocation(line: 238, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !407, file: !397, line: 238, column: 7)
!5115 = !DILocation(line: 238, column: 7, scope: !407)
!5116 = !DILocation(line: 239, column: 7, scope: !5114)
!5117 = !DILocation(line: 239, column: 5, scope: !5114)
!5118 = !DILocation(line: 240, column: 12, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !407, file: !397, line: 240, column: 7)
!5120 = !DILocation(line: 240, column: 9, scope: !5119)
!5121 = !DILocation(line: 240, column: 18, scope: !5119)
!5122 = !DILocation(line: 240, column: 21, scope: !5119)
!5123 = !DILocation(line: 240, column: 29, scope: !5119)
!5124 = !DILocation(line: 240, column: 27, scope: !5119)
!5125 = !DILocation(line: 240, column: 7, scope: !407)
!5126 = !DILocation(line: 241, column: 9, scope: !5119)
!5127 = !DILocation(line: 241, column: 7, scope: !5119)
!5128 = !DILocation(line: 241, column: 5, scope: !5119)
!5129 = !DILocalVariable(name: "nbytes", scope: !407, file: !397, line: 248, type: !160)
!5130 = !DILocation(line: 248, column: 9, scope: !407)
!5131 = !DILocalVariable(name: "adjusted_nbytes", scope: !407, file: !397, line: 252, type: !160)
!5132 = !DILocation(line: 252, column: 9, scope: !407)
!5133 = !DILocation(line: 253, column: 8, scope: !407)
!5134 = !DILocation(line: 255, column: 10, scope: !407)
!5135 = !DILocation(line: 255, column: 17, scope: !407)
!5136 = !DILocation(line: 256, column: 7, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !407, file: !397, line: 256, column: 7)
!5138 = !DILocation(line: 256, column: 7, scope: !407)
!5139 = !DILocation(line: 258, column: 11, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5137, file: !397, line: 257, column: 5)
!5141 = !DILocation(line: 258, column: 29, scope: !5140)
!5142 = !DILocation(line: 258, column: 27, scope: !5140)
!5143 = !DILocation(line: 258, column: 9, scope: !5140)
!5144 = !DILocation(line: 259, column: 16, scope: !5140)
!5145 = !DILocation(line: 259, column: 34, scope: !5140)
!5146 = !DILocation(line: 259, column: 52, scope: !5140)
!5147 = !DILocation(line: 259, column: 50, scope: !5140)
!5148 = !DILocation(line: 259, column: 32, scope: !5140)
!5149 = !DILocation(line: 259, column: 14, scope: !5140)
!5150 = !DILocation(line: 260, column: 5, scope: !5140)
!5151 = !DILocation(line: 262, column: 9, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !407, file: !397, line: 262, column: 7)
!5153 = !DILocation(line: 262, column: 7, scope: !407)
!5154 = !DILocation(line: 263, column: 6, scope: !5152)
!5155 = !DILocation(line: 263, column: 9, scope: !5152)
!5156 = !DILocation(line: 263, column: 5, scope: !5152)
!5157 = !DILocation(line: 264, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !407, file: !397, line: 264, column: 7)
!5159 = !DILocation(line: 264, column: 11, scope: !5158)
!5160 = !DILocation(line: 264, column: 9, scope: !5158)
!5161 = !DILocation(line: 264, column: 16, scope: !5158)
!5162 = !DILocation(line: 264, column: 14, scope: !5158)
!5163 = !DILocation(line: 265, column: 7, scope: !5158)
!5164 = !DILocation(line: 265, column: 11, scope: !5158)
!5165 = !DILocation(line: 266, column: 11, scope: !5158)
!5166 = !DILocation(line: 266, column: 20, scope: !5158)
!5167 = !DILocation(line: 266, column: 17, scope: !5158)
!5168 = !DILocation(line: 266, column: 26, scope: !5158)
!5169 = !DILocation(line: 266, column: 29, scope: !5158)
!5170 = !DILocation(line: 266, column: 37, scope: !5158)
!5171 = !DILocation(line: 266, column: 35, scope: !5158)
!5172 = !DILocation(line: 267, column: 11, scope: !5158)
!5173 = !DILocation(line: 267, column: 14, scope: !5158)
!5174 = !DILocation(line: 264, column: 7, scope: !407)
!5175 = !DILocation(line: 268, column: 5, scope: !5158)
!5176 = !DILocation(line: 269, column: 18, scope: !407)
!5177 = !DILocation(line: 269, column: 22, scope: !407)
!5178 = !DILocation(line: 269, column: 8, scope: !407)
!5179 = !DILocation(line: 269, column: 6, scope: !407)
!5180 = !DILocation(line: 270, column: 9, scope: !407)
!5181 = !DILocation(line: 270, column: 4, scope: !407)
!5182 = !DILocation(line: 270, column: 7, scope: !407)
!5183 = !DILocation(line: 271, column: 10, scope: !407)
!5184 = !DILocation(line: 271, column: 3, scope: !407)
!5185 = distinct !DISubprogram(name: "xzalloc", scope: !397, file: !397, line: 279, type: !4960, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5186 = !DILocalVariable(name: "s", arg: 1, scope: !5185, file: !397, line: 279, type: !151)
!5187 = !DILocation(line: 279, column: 17, scope: !5185)
!5188 = !DILocation(line: 281, column: 19, scope: !5185)
!5189 = !DILocation(line: 281, column: 10, scope: !5185)
!5190 = !DILocation(line: 281, column: 3, scope: !5185)
!5191 = distinct !DISubprogram(name: "xcalloc", scope: !397, file: !397, line: 294, type: !5024, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5192 = !DILocalVariable(name: "n", arg: 1, scope: !5191, file: !397, line: 294, type: !151)
!5193 = !DILocation(line: 294, column: 17, scope: !5191)
!5194 = !DILocalVariable(name: "s", arg: 2, scope: !5191, file: !397, line: 294, type: !151)
!5195 = !DILocation(line: 294, column: 27, scope: !5191)
!5196 = !DILocation(line: 296, column: 33, scope: !5191)
!5197 = !DILocation(line: 296, column: 36, scope: !5191)
!5198 = !DILocation(line: 296, column: 25, scope: !5191)
!5199 = !DILocation(line: 296, column: 10, scope: !5191)
!5200 = !DILocation(line: 296, column: 3, scope: !5191)
!5201 = distinct !DISubprogram(name: "xizalloc", scope: !397, file: !397, line: 285, type: !4969, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5202 = !DILocalVariable(name: "s", arg: 1, scope: !5201, file: !397, line: 285, type: !160)
!5203 = !DILocation(line: 285, column: 17, scope: !5201)
!5204 = !DILocation(line: 287, column: 20, scope: !5201)
!5205 = !DILocation(line: 287, column: 10, scope: !5201)
!5206 = !DILocation(line: 287, column: 3, scope: !5201)
!5207 = distinct !DISubprogram(name: "xicalloc", scope: !397, file: !397, line: 300, type: !5035, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5208 = !DILocalVariable(name: "n", arg: 1, scope: !5207, file: !397, line: 300, type: !160)
!5209 = !DILocation(line: 300, column: 17, scope: !5207)
!5210 = !DILocalVariable(name: "s", arg: 2, scope: !5207, file: !397, line: 300, type: !160)
!5211 = !DILocation(line: 300, column: 26, scope: !5207)
!5212 = !DILocation(line: 302, column: 34, scope: !5207)
!5213 = !DILocation(line: 302, column: 37, scope: !5207)
!5214 = !DILocation(line: 302, column: 25, scope: !5207)
!5215 = !DILocation(line: 302, column: 10, scope: !5207)
!5216 = !DILocation(line: 302, column: 3, scope: !5207)
!5217 = distinct !DISubprogram(name: "xmemdup", scope: !397, file: !397, line: 310, type: !5218, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!24, !5220, !151}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5222 = !DILocalVariable(name: "p", arg: 1, scope: !5217, file: !397, line: 310, type: !5220)
!5223 = !DILocation(line: 310, column: 22, scope: !5217)
!5224 = !DILocalVariable(name: "s", arg: 2, scope: !5217, file: !397, line: 310, type: !151)
!5225 = !DILocation(line: 310, column: 32, scope: !5217)
!5226 = !DILocation(line: 312, column: 27, scope: !5217)
!5227 = !DILocation(line: 312, column: 18, scope: !5217)
!5228 = !DILocation(line: 312, column: 31, scope: !5217)
!5229 = !DILocation(line: 312, column: 34, scope: !5217)
!5230 = !DILocation(line: 312, column: 10, scope: !5217)
!5231 = !DILocation(line: 312, column: 3, scope: !5217)
!5232 = distinct !DISubprogram(name: "ximemdup", scope: !397, file: !397, line: 316, type: !5233, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!24, !5220, !160}
!5235 = !DILocalVariable(name: "p", arg: 1, scope: !5232, file: !397, line: 316, type: !5220)
!5236 = !DILocation(line: 316, column: 23, scope: !5232)
!5237 = !DILocalVariable(name: "s", arg: 2, scope: !5232, file: !397, line: 316, type: !160)
!5238 = !DILocation(line: 316, column: 32, scope: !5232)
!5239 = !DILocation(line: 318, column: 28, scope: !5232)
!5240 = !DILocation(line: 318, column: 18, scope: !5232)
!5241 = !DILocation(line: 318, column: 32, scope: !5232)
!5242 = !DILocation(line: 318, column: 35, scope: !5232)
!5243 = !DILocation(line: 318, column: 10, scope: !5232)
!5244 = !DILocation(line: 318, column: 3, scope: !5232)
!5245 = distinct !DISubprogram(name: "ximemdup0", scope: !397, file: !397, line: 325, type: !5246, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!22, !5220, !160}
!5248 = !DILocalVariable(name: "p", arg: 1, scope: !5245, file: !397, line: 325, type: !5220)
!5249 = !DILocation(line: 325, column: 24, scope: !5245)
!5250 = !DILocalVariable(name: "s", arg: 2, scope: !5245, file: !397, line: 325, type: !160)
!5251 = !DILocation(line: 325, column: 33, scope: !5245)
!5252 = !DILocalVariable(name: "result", scope: !5245, file: !397, line: 327, type: !22)
!5253 = !DILocation(line: 327, column: 9, scope: !5245)
!5254 = !DILocation(line: 327, column: 28, scope: !5245)
!5255 = !DILocation(line: 327, column: 30, scope: !5245)
!5256 = !DILocation(line: 327, column: 18, scope: !5245)
!5257 = !DILocation(line: 328, column: 3, scope: !5245)
!5258 = !DILocation(line: 328, column: 10, scope: !5245)
!5259 = !DILocation(line: 328, column: 13, scope: !5245)
!5260 = !DILocation(line: 329, column: 18, scope: !5245)
!5261 = !DILocation(line: 329, column: 26, scope: !5245)
!5262 = !DILocation(line: 329, column: 29, scope: !5245)
!5263 = !DILocation(line: 329, column: 10, scope: !5245)
!5264 = !DILocation(line: 329, column: 3, scope: !5245)
!5265 = distinct !DISubprogram(name: "xstrdup", scope: !397, file: !397, line: 335, type: !4347, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !37)
!5266 = !DILocalVariable(name: "string", arg: 1, scope: !5265, file: !397, line: 335, type: !35)
!5267 = !DILocation(line: 335, column: 22, scope: !5265)
!5268 = !DILocation(line: 337, column: 19, scope: !5265)
!5269 = !DILocation(line: 337, column: 35, scope: !5265)
!5270 = !DILocation(line: 337, column: 27, scope: !5265)
!5271 = !DILocation(line: 337, column: 43, scope: !5265)
!5272 = !DILocation(line: 337, column: 10, scope: !5265)
!5273 = !DILocation(line: 337, column: 3, scope: !5265)
!5274 = distinct !DISubprogram(name: "xalloc_die", scope: !413, file: !413, line: 32, type: !55, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !412, retainedNodes: !37)
!5275 = !DILocalVariable(name: "__errstatus", scope: !5276, file: !413, line: 34, type: !5277)
!5276 = distinct !DILexicalBlock(scope: !5274, file: !413, line: 34, column: 3)
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!5278 = !DILocation(line: 34, column: 3, scope: !5276)
!5279 = !DILocation(line: 40, column: 3, scope: !5274)
!5280 = distinct !DISubprogram(name: "rpl_fopen", scope: !415, file: !415, line: 46, type: !5281, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !414, retainedNodes: !37)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!5283, !35, !35}
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !5285)
!5285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !5286)
!5286 = !{!5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5285, file: !106, line: 51, baseType: !25, size: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5285, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5285, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5285, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5285, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5285, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5285, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5285, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5285, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5285, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5285, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5285, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5285, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5285, file: !106, line: 70, baseType: !5301, size: 64, offset: 832)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5285, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5285, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5285, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5285, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5285, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5285, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5285, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5285, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5285, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5285, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5285, file: !106, line: 93, baseType: !5301, size: 64, offset: 1344)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5285, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5285, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5285, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5285, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!5317 = !DILocalVariable(name: "filename", arg: 1, scope: !5280, file: !415, line: 46, type: !35)
!5318 = !DILocation(line: 46, column: 24, scope: !5280)
!5319 = !DILocalVariable(name: "mode", arg: 2, scope: !5280, file: !415, line: 46, type: !35)
!5320 = !DILocation(line: 46, column: 46, scope: !5280)
!5321 = !DILocalVariable(name: "open_direction", scope: !5280, file: !415, line: 54, type: !25)
!5322 = !DILocation(line: 54, column: 7, scope: !5280)
!5323 = !DILocalVariable(name: "open_flags", scope: !5280, file: !415, line: 55, type: !25)
!5324 = !DILocation(line: 55, column: 7, scope: !5280)
!5325 = !DILocalVariable(name: "open_flags_gnu", scope: !5280, file: !415, line: 57, type: !27)
!5326 = !DILocation(line: 57, column: 8, scope: !5280)
!5327 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5280, file: !415, line: 59, type: !5328)
!5328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 648, elements: !5329)
!5329 = !{!5330}
!5330 = !DISubrange(count: 81)
!5331 = !DILocation(line: 59, column: 8, scope: !5280)
!5332 = !DILocalVariable(name: "p", scope: !5333, file: !415, line: 62, type: !35)
!5333 = distinct !DILexicalBlock(scope: !5280, file: !415, line: 61, column: 3)
!5334 = !DILocation(line: 62, column: 17, scope: !5333)
!5335 = !DILocation(line: 62, column: 21, scope: !5333)
!5336 = !DILocalVariable(name: "q", scope: !5333, file: !415, line: 64, type: !22)
!5337 = !DILocation(line: 64, column: 11, scope: !5333)
!5338 = !DILocation(line: 64, column: 15, scope: !5333)
!5339 = !DILocation(line: 67, column: 5, scope: !5333)
!5340 = !DILocation(line: 67, column: 13, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !415, line: 67, column: 5)
!5342 = distinct !DILexicalBlock(scope: !5333, file: !415, line: 67, column: 5)
!5343 = !DILocation(line: 67, column: 12, scope: !5341)
!5344 = !DILocation(line: 67, column: 15, scope: !5341)
!5345 = !DILocation(line: 67, column: 5, scope: !5342)
!5346 = !DILocation(line: 69, column: 18, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5341, file: !415, line: 68, column: 7)
!5348 = !DILocation(line: 69, column: 17, scope: !5347)
!5349 = !DILocation(line: 69, column: 9, scope: !5347)
!5350 = !DILocation(line: 72, column: 28, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !415, line: 70, column: 11)
!5352 = !DILocation(line: 74, column: 17, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5351, file: !415, line: 74, column: 17)
!5354 = !DILocation(line: 74, column: 21, scope: !5353)
!5355 = !DILocation(line: 74, column: 37, scope: !5353)
!5356 = !DILocation(line: 74, column: 19, scope: !5353)
!5357 = !DILocation(line: 74, column: 17, scope: !5351)
!5358 = !DILocation(line: 75, column: 23, scope: !5353)
!5359 = !DILocation(line: 75, column: 22, scope: !5353)
!5360 = !DILocation(line: 75, column: 17, scope: !5353)
!5361 = !DILocation(line: 75, column: 20, scope: !5353)
!5362 = !DILocation(line: 75, column: 15, scope: !5353)
!5363 = !DILocation(line: 77, column: 13, scope: !5351)
!5364 = !DILocation(line: 79, column: 28, scope: !5351)
!5365 = !DILocation(line: 80, column: 24, scope: !5351)
!5366 = !DILocation(line: 82, column: 17, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5351, file: !415, line: 82, column: 17)
!5368 = !DILocation(line: 82, column: 21, scope: !5367)
!5369 = !DILocation(line: 82, column: 37, scope: !5367)
!5370 = !DILocation(line: 82, column: 19, scope: !5367)
!5371 = !DILocation(line: 82, column: 17, scope: !5351)
!5372 = !DILocation(line: 83, column: 23, scope: !5367)
!5373 = !DILocation(line: 83, column: 22, scope: !5367)
!5374 = !DILocation(line: 83, column: 17, scope: !5367)
!5375 = !DILocation(line: 83, column: 20, scope: !5367)
!5376 = !DILocation(line: 83, column: 15, scope: !5367)
!5377 = !DILocation(line: 85, column: 13, scope: !5351)
!5378 = !DILocation(line: 87, column: 28, scope: !5351)
!5379 = !DILocation(line: 88, column: 24, scope: !5351)
!5380 = !DILocation(line: 90, column: 17, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5351, file: !415, line: 90, column: 17)
!5382 = !DILocation(line: 90, column: 21, scope: !5381)
!5383 = !DILocation(line: 90, column: 37, scope: !5381)
!5384 = !DILocation(line: 90, column: 19, scope: !5381)
!5385 = !DILocation(line: 90, column: 17, scope: !5351)
!5386 = !DILocation(line: 91, column: 23, scope: !5381)
!5387 = !DILocation(line: 91, column: 22, scope: !5381)
!5388 = !DILocation(line: 91, column: 17, scope: !5381)
!5389 = !DILocation(line: 91, column: 20, scope: !5381)
!5390 = !DILocation(line: 91, column: 15, scope: !5381)
!5391 = !DILocation(line: 93, column: 13, scope: !5351)
!5392 = !DILocation(line: 98, column: 24, scope: !5351)
!5393 = !DILocation(line: 100, column: 17, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5351, file: !415, line: 100, column: 17)
!5395 = !DILocation(line: 100, column: 21, scope: !5394)
!5396 = !DILocation(line: 100, column: 37, scope: !5394)
!5397 = !DILocation(line: 100, column: 19, scope: !5394)
!5398 = !DILocation(line: 100, column: 17, scope: !5351)
!5399 = !DILocation(line: 101, column: 23, scope: !5394)
!5400 = !DILocation(line: 101, column: 22, scope: !5394)
!5401 = !DILocation(line: 101, column: 17, scope: !5394)
!5402 = !DILocation(line: 101, column: 20, scope: !5394)
!5403 = !DILocation(line: 101, column: 15, scope: !5394)
!5404 = !DILocation(line: 103, column: 13, scope: !5351)
!5405 = !DILocation(line: 105, column: 28, scope: !5351)
!5406 = !DILocation(line: 107, column: 17, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5351, file: !415, line: 107, column: 17)
!5408 = !DILocation(line: 107, column: 21, scope: !5407)
!5409 = !DILocation(line: 107, column: 37, scope: !5407)
!5410 = !DILocation(line: 107, column: 19, scope: !5407)
!5411 = !DILocation(line: 107, column: 17, scope: !5351)
!5412 = !DILocation(line: 108, column: 23, scope: !5407)
!5413 = !DILocation(line: 108, column: 22, scope: !5407)
!5414 = !DILocation(line: 108, column: 17, scope: !5407)
!5415 = !DILocation(line: 108, column: 20, scope: !5407)
!5416 = !DILocation(line: 108, column: 15, scope: !5407)
!5417 = !DILocation(line: 110, column: 13, scope: !5351)
!5418 = !DILocation(line: 113, column: 24, scope: !5351)
!5419 = !DILocation(line: 114, column: 28, scope: !5351)
!5420 = !DILocation(line: 115, column: 13, scope: !5351)
!5421 = !DILocation(line: 117, column: 24, scope: !5351)
!5422 = !DILocation(line: 118, column: 28, scope: !5351)
!5423 = !DILocation(line: 119, column: 13, scope: !5351)
!5424 = !DILocation(line: 122, column: 13, scope: !5351)
!5425 = !DILocalVariable(name: "len", scope: !5426, file: !415, line: 128, type: !151)
!5426 = distinct !DILexicalBlock(scope: !5347, file: !415, line: 127, column: 9)
!5427 = !DILocation(line: 128, column: 18, scope: !5426)
!5428 = !DILocation(line: 128, column: 32, scope: !5426)
!5429 = !DILocation(line: 128, column: 24, scope: !5426)
!5430 = !DILocation(line: 129, column: 15, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5426, file: !415, line: 129, column: 15)
!5432 = !DILocation(line: 129, column: 21, scope: !5431)
!5433 = !DILocation(line: 129, column: 37, scope: !5431)
!5434 = !DILocation(line: 129, column: 50, scope: !5431)
!5435 = !DILocation(line: 129, column: 48, scope: !5431)
!5436 = !DILocation(line: 129, column: 19, scope: !5431)
!5437 = !DILocation(line: 129, column: 15, scope: !5426)
!5438 = !DILocation(line: 130, column: 19, scope: !5431)
!5439 = !DILocation(line: 130, column: 35, scope: !5431)
!5440 = !DILocation(line: 130, column: 48, scope: !5431)
!5441 = !DILocation(line: 130, column: 46, scope: !5431)
!5442 = !DILocation(line: 130, column: 17, scope: !5431)
!5443 = !DILocation(line: 130, column: 13, scope: !5431)
!5444 = !DILocation(line: 131, column: 19, scope: !5426)
!5445 = !DILocation(line: 131, column: 22, scope: !5426)
!5446 = !DILocation(line: 131, column: 25, scope: !5426)
!5447 = !DILocation(line: 131, column: 11, scope: !5426)
!5448 = !DILocation(line: 132, column: 16, scope: !5426)
!5449 = !DILocation(line: 132, column: 13, scope: !5426)
!5450 = !DILocation(line: 135, column: 9, scope: !5347)
!5451 = !DILocation(line: 67, column: 25, scope: !5341)
!5452 = !DILocation(line: 67, column: 5, scope: !5341)
!5453 = distinct !{!5453, !5345, !5454, !553}
!5454 = !DILocation(line: 136, column: 7, scope: !5342)
!5455 = !DILocation(line: 138, column: 6, scope: !5333)
!5456 = !DILocation(line: 138, column: 8, scope: !5333)
!5457 = !DILocation(line: 197, column: 7, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5280, file: !415, line: 197, column: 7)
!5459 = !DILocation(line: 197, column: 7, scope: !5280)
!5460 = !DILocalVariable(name: "fd", scope: !5461, file: !415, line: 199, type: !25)
!5461 = distinct !DILexicalBlock(scope: !5458, file: !415, line: 198, column: 5)
!5462 = !DILocation(line: 199, column: 11, scope: !5461)
!5463 = !DILocation(line: 199, column: 22, scope: !5461)
!5464 = !DILocation(line: 199, column: 32, scope: !5461)
!5465 = !DILocation(line: 199, column: 49, scope: !5461)
!5466 = !DILocation(line: 199, column: 47, scope: !5461)
!5467 = !DILocation(line: 199, column: 16, scope: !5461)
!5468 = !DILocation(line: 201, column: 11, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5461, file: !415, line: 201, column: 11)
!5470 = !DILocation(line: 201, column: 14, scope: !5469)
!5471 = !DILocation(line: 201, column: 11, scope: !5461)
!5472 = !DILocation(line: 202, column: 9, scope: !5469)
!5473 = !DILocalVariable(name: "fp", scope: !5461, file: !415, line: 204, type: !5283)
!5474 = !DILocation(line: 204, column: 13, scope: !5461)
!5475 = !DILocation(line: 204, column: 26, scope: !5461)
!5476 = !DILocation(line: 204, column: 30, scope: !5461)
!5477 = !DILocation(line: 204, column: 18, scope: !5461)
!5478 = !DILocation(line: 205, column: 11, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5461, file: !415, line: 205, column: 11)
!5480 = !DILocation(line: 205, column: 14, scope: !5479)
!5481 = !DILocation(line: 205, column: 11, scope: !5461)
!5482 = !DILocalVariable(name: "saved_errno", scope: !5483, file: !415, line: 207, type: !25)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !415, line: 206, column: 9)
!5484 = !DILocation(line: 207, column: 15, scope: !5483)
!5485 = !DILocation(line: 207, column: 29, scope: !5483)
!5486 = !DILocation(line: 208, column: 18, scope: !5483)
!5487 = !DILocation(line: 208, column: 11, scope: !5483)
!5488 = !DILocation(line: 209, column: 19, scope: !5483)
!5489 = !DILocation(line: 209, column: 11, scope: !5483)
!5490 = !DILocation(line: 209, column: 17, scope: !5483)
!5491 = !DILocation(line: 210, column: 9, scope: !5483)
!5492 = !DILocation(line: 211, column: 14, scope: !5461)
!5493 = !DILocation(line: 211, column: 7, scope: !5461)
!5494 = !DILocation(line: 217, column: 10, scope: !5280)
!5495 = !DILocation(line: 219, column: 22, scope: !5280)
!5496 = !DILocation(line: 219, column: 32, scope: !5280)
!5497 = !DILocation(line: 219, column: 10, scope: !5280)
!5498 = !DILocation(line: 219, column: 3, scope: !5280)
!5499 = !DILocation(line: 220, column: 1, scope: !5280)
!5500 = distinct !DISubprogram(name: "orig_fopen", scope: !415, file: !415, line: 30, type: !5281, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !414, retainedNodes: !37)
!5501 = !DILocalVariable(name: "filename", arg: 1, scope: !5500, file: !415, line: 30, type: !35)
!5502 = !DILocation(line: 30, column: 25, scope: !5500)
!5503 = !DILocalVariable(name: "mode", arg: 2, scope: !5500, file: !415, line: 30, type: !35)
!5504 = !DILocation(line: 30, column: 47, scope: !5500)
!5505 = !DILocation(line: 32, column: 17, scope: !5500)
!5506 = !DILocation(line: 32, column: 27, scope: !5500)
!5507 = !DILocation(line: 32, column: 10, scope: !5500)
!5508 = !DILocation(line: 32, column: 3, scope: !5500)
!5509 = distinct !DISubprogram(name: "c32isprint", scope: !1865, file: !1865, line: 41, type: !1866, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !416, retainedNodes: !37)
!5510 = !DILocalVariable(name: "wc", arg: 1, scope: !5509, file: !1865, line: 41, type: !1868)
!5511 = !DILocation(line: 41, column: 14, scope: !5509)
!5512 = !DILocation(line: 66, column: 22, scope: !5509)
!5513 = !DILocation(line: 66, column: 10, scope: !5509)
!5514 = !DILocation(line: 66, column: 3, scope: !5509)
!5515 = distinct !DISubprogram(name: "close_stream", scope: !419, file: !419, line: 55, type: !5516, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !418, retainedNodes: !37)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!25, !5518}
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 7, baseType: !5520)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !106, line: 49, size: 1728, elements: !5521)
!5521 = !{!5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5520, file: !106, line: 51, baseType: !25, size: 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5520, file: !106, line: 54, baseType: !22, size: 64, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5520, file: !106, line: 55, baseType: !22, size: 64, offset: 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5520, file: !106, line: 56, baseType: !22, size: 64, offset: 192)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5520, file: !106, line: 57, baseType: !22, size: 64, offset: 256)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5520, file: !106, line: 58, baseType: !22, size: 64, offset: 320)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5520, file: !106, line: 59, baseType: !22, size: 64, offset: 384)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5520, file: !106, line: 60, baseType: !22, size: 64, offset: 448)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5520, file: !106, line: 61, baseType: !22, size: 64, offset: 512)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5520, file: !106, line: 64, baseType: !22, size: 64, offset: 576)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5520, file: !106, line: 65, baseType: !22, size: 64, offset: 640)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5520, file: !106, line: 66, baseType: !22, size: 64, offset: 704)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5520, file: !106, line: 68, baseType: !121, size: 64, offset: 768)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5520, file: !106, line: 70, baseType: !5536, size: 64, offset: 832)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5520, file: !106, line: 72, baseType: !25, size: 32, offset: 896)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5520, file: !106, line: 73, baseType: !25, size: 32, offset: 928)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5520, file: !106, line: 74, baseType: !128, size: 64, offset: 960)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5520, file: !106, line: 77, baseType: !26, size: 16, offset: 1024)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5520, file: !106, line: 78, baseType: !132, size: 8, offset: 1040)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5520, file: !106, line: 79, baseType: !134, size: 8, offset: 1048)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5520, file: !106, line: 81, baseType: !138, size: 64, offset: 1088)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5520, file: !106, line: 89, baseType: !141, size: 64, offset: 1152)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5520, file: !106, line: 91, baseType: !143, size: 64, offset: 1216)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5520, file: !106, line: 92, baseType: !146, size: 64, offset: 1280)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5520, file: !106, line: 93, baseType: !5536, size: 64, offset: 1344)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5520, file: !106, line: 94, baseType: !24, size: 64, offset: 1408)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5520, file: !106, line: 95, baseType: !151, size: 64, offset: 1472)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5520, file: !106, line: 96, baseType: !25, size: 32, offset: 1536)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5520, file: !106, line: 98, baseType: !155, size: 160, offset: 1568)
!5552 = !DILocalVariable(name: "stream", arg: 1, scope: !5515, file: !419, line: 55, type: !5518)
!5553 = !DILocation(line: 55, column: 21, scope: !5515)
!5554 = !DILocalVariable(name: "some_pending", scope: !5515, file: !419, line: 57, type: !5555)
!5555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!5556 = !DILocation(line: 57, column: 14, scope: !5515)
!5557 = !DILocation(line: 57, column: 42, scope: !5515)
!5558 = !DILocation(line: 57, column: 30, scope: !5515)
!5559 = !DILocation(line: 57, column: 50, scope: !5515)
!5560 = !DILocalVariable(name: "prev_fail", scope: !5515, file: !419, line: 58, type: !5555)
!5561 = !DILocation(line: 58, column: 14, scope: !5515)
!5562 = !DILocation(line: 58, column: 27, scope: !5515)
!5563 = !DILocation(line: 58, column: 43, scope: !5515)
!5564 = !DILocalVariable(name: "fclose_fail", scope: !5515, file: !419, line: 59, type: !5555)
!5565 = !DILocation(line: 59, column: 14, scope: !5515)
!5566 = !DILocation(line: 59, column: 37, scope: !5515)
!5567 = !DILocation(line: 59, column: 29, scope: !5515)
!5568 = !DILocation(line: 59, column: 45, scope: !5515)
!5569 = !DILocation(line: 69, column: 7, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5515, file: !419, line: 69, column: 7)
!5571 = !DILocation(line: 69, column: 17, scope: !5570)
!5572 = !DILocation(line: 69, column: 21, scope: !5570)
!5573 = !DILocation(line: 69, column: 33, scope: !5570)
!5574 = !DILocation(line: 69, column: 37, scope: !5570)
!5575 = !DILocation(line: 69, column: 50, scope: !5570)
!5576 = !DILocation(line: 69, column: 53, scope: !5570)
!5577 = !DILocation(line: 69, column: 59, scope: !5570)
!5578 = !DILocation(line: 69, column: 7, scope: !5515)
!5579 = !DILocation(line: 71, column: 13, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !419, line: 71, column: 11)
!5581 = distinct !DILexicalBlock(scope: !5570, file: !419, line: 70, column: 5)
!5582 = !DILocation(line: 71, column: 11, scope: !5581)
!5583 = !DILocation(line: 72, column: 9, scope: !5580)
!5584 = !DILocation(line: 72, column: 15, scope: !5580)
!5585 = !DILocation(line: 73, column: 7, scope: !5581)
!5586 = !DILocation(line: 76, column: 3, scope: !5515)
!5587 = !DILocation(line: 77, column: 1, scope: !5515)
!5588 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5589, file: !5589, line: 43, type: !5590, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !420, retainedNodes: !37)
!5589 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5590 = !DISubroutineType(types: !210)
!5591 = !DILocation(line: 45, column: 3, scope: !5588)
!5592 = !DILocation(line: 45, column: 9, scope: !5588)
!5593 = !DILocation(line: 46, column: 3, scope: !5588)
!5594 = distinct !DISubprogram(name: "imalloc", scope: !5589, file: !5589, line: 55, type: !4969, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !420, retainedNodes: !37)
!5595 = !DILocalVariable(name: "s", arg: 1, scope: !5594, file: !5589, line: 55, type: !160)
!5596 = !DILocation(line: 55, column: 16, scope: !5594)
!5597 = !DILocation(line: 57, column: 10, scope: !5594)
!5598 = !DILocation(line: 57, column: 12, scope: !5594)
!5599 = !DILocation(line: 57, column: 34, scope: !5594)
!5600 = !DILocation(line: 57, column: 26, scope: !5594)
!5601 = !DILocation(line: 57, column: 39, scope: !5594)
!5602 = !DILocation(line: 57, column: 3, scope: !5594)
!5603 = distinct !DISubprogram(name: "irealloc", scope: !5589, file: !5589, line: 66, type: !4997, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !420, retainedNodes: !37)
!5604 = !DILocalVariable(name: "p", arg: 1, scope: !5603, file: !5589, line: 66, type: !24)
!5605 = !DILocation(line: 66, column: 17, scope: !5603)
!5606 = !DILocalVariable(name: "s", arg: 2, scope: !5603, file: !5589, line: 66, type: !160)
!5607 = !DILocation(line: 66, column: 26, scope: !5603)
!5608 = !DILocation(line: 68, column: 10, scope: !5603)
!5609 = !DILocation(line: 68, column: 12, scope: !5603)
!5610 = !DILocation(line: 68, column: 35, scope: !5603)
!5611 = !DILocation(line: 68, column: 38, scope: !5603)
!5612 = !DILocation(line: 68, column: 26, scope: !5603)
!5613 = !DILocation(line: 68, column: 43, scope: !5603)
!5614 = !DILocation(line: 68, column: 3, scope: !5603)
!5615 = distinct !DISubprogram(name: "icalloc", scope: !5589, file: !5589, line: 77, type: !5035, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !420, retainedNodes: !37)
!5616 = !DILocalVariable(name: "n", arg: 1, scope: !5615, file: !5589, line: 77, type: !160)
!5617 = !DILocation(line: 77, column: 16, scope: !5615)
!5618 = !DILocalVariable(name: "s", arg: 2, scope: !5615, file: !5589, line: 77, type: !160)
!5619 = !DILocation(line: 77, column: 25, scope: !5615)
!5620 = !DILocation(line: 79, column: 18, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5615, file: !5589, line: 79, column: 7)
!5622 = !DILocation(line: 79, column: 16, scope: !5621)
!5623 = !DILocation(line: 79, column: 7, scope: !5615)
!5624 = !DILocation(line: 81, column: 11, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !5589, line: 81, column: 11)
!5626 = distinct !DILexicalBlock(scope: !5621, file: !5589, line: 80, column: 5)
!5627 = !DILocation(line: 81, column: 13, scope: !5625)
!5628 = !DILocation(line: 81, column: 11, scope: !5626)
!5629 = !DILocation(line: 82, column: 16, scope: !5625)
!5630 = !DILocation(line: 82, column: 9, scope: !5625)
!5631 = !DILocation(line: 83, column: 9, scope: !5626)
!5632 = !DILocation(line: 84, column: 5, scope: !5626)
!5633 = !DILocation(line: 85, column: 18, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5615, file: !5589, line: 85, column: 7)
!5635 = !DILocation(line: 85, column: 16, scope: !5634)
!5636 = !DILocation(line: 85, column: 7, scope: !5615)
!5637 = !DILocation(line: 87, column: 11, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5639, file: !5589, line: 87, column: 11)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !5589, line: 86, column: 5)
!5640 = !DILocation(line: 87, column: 13, scope: !5638)
!5641 = !DILocation(line: 87, column: 11, scope: !5639)
!5642 = !DILocation(line: 88, column: 16, scope: !5638)
!5643 = !DILocation(line: 88, column: 9, scope: !5638)
!5644 = !DILocation(line: 89, column: 9, scope: !5639)
!5645 = !DILocation(line: 90, column: 5, scope: !5639)
!5646 = !DILocation(line: 91, column: 18, scope: !5615)
!5647 = !DILocation(line: 91, column: 21, scope: !5615)
!5648 = !DILocation(line: 91, column: 10, scope: !5615)
!5649 = !DILocation(line: 91, column: 3, scope: !5615)
!5650 = !DILocation(line: 92, column: 1, scope: !5615)
!5651 = distinct !DISubprogram(name: "ireallocarray", scope: !5589, file: !5589, line: 98, type: !5009, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !420, retainedNodes: !37)
!5652 = !DILocalVariable(name: "p", arg: 1, scope: !5651, file: !5589, line: 98, type: !24)
!5653 = !DILocation(line: 98, column: 22, scope: !5651)
!5654 = !DILocalVariable(name: "n", arg: 2, scope: !5651, file: !5589, line: 98, type: !160)
!5655 = !DILocation(line: 98, column: 31, scope: !5651)
!5656 = !DILocalVariable(name: "s", arg: 3, scope: !5651, file: !5589, line: 98, type: !160)
!5657 = !DILocation(line: 98, column: 40, scope: !5651)
!5658 = !DILocation(line: 100, column: 11, scope: !5651)
!5659 = !DILocation(line: 100, column: 13, scope: !5651)
!5660 = !DILocation(line: 100, column: 25, scope: !5651)
!5661 = !DILocation(line: 100, column: 28, scope: !5651)
!5662 = !DILocation(line: 100, column: 30, scope: !5651)
!5663 = !DILocation(line: 101, column: 27, scope: !5651)
!5664 = !DILocation(line: 101, column: 30, scope: !5651)
!5665 = !DILocation(line: 101, column: 33, scope: !5651)
!5666 = !DILocation(line: 101, column: 13, scope: !5651)
!5667 = !DILocation(line: 102, column: 13, scope: !5651)
!5668 = !DILocation(line: 100, column: 3, scope: !5651)
!5669 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !330, file: !330, line: 100, type: !5670, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !329, retainedNodes: !37)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!151, !5672, !35, !151, !5673}
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!5674 = !DILocalVariable(name: "pwc", arg: 1, scope: !5669, file: !330, line: 100, type: !5672)
!5675 = !DILocation(line: 100, column: 21, scope: !5669)
!5676 = !DILocalVariable(name: "s", arg: 2, scope: !5669, file: !330, line: 100, type: !35)
!5677 = !DILocation(line: 100, column: 38, scope: !5669)
!5678 = !DILocalVariable(name: "n", arg: 3, scope: !5669, file: !330, line: 100, type: !151)
!5679 = !DILocation(line: 100, column: 48, scope: !5669)
!5680 = !DILocalVariable(name: "ps", arg: 4, scope: !5669, file: !330, line: 100, type: !5673)
!5681 = !DILocation(line: 100, column: 62, scope: !5669)
!5682 = !DILocation(line: 105, column: 7, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5669, file: !330, line: 105, column: 7)
!5684 = !DILocation(line: 105, column: 9, scope: !5683)
!5685 = !DILocation(line: 105, column: 7, scope: !5669)
!5686 = !DILocation(line: 107, column: 11, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !330, line: 106, column: 5)
!5688 = !DILocation(line: 108, column: 9, scope: !5687)
!5689 = !DILocation(line: 109, column: 9, scope: !5687)
!5690 = !DILocation(line: 110, column: 5, scope: !5687)
!5691 = !DILocation(line: 117, column: 7, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5669, file: !330, line: 117, column: 7)
!5693 = !DILocation(line: 117, column: 10, scope: !5692)
!5694 = !DILocation(line: 117, column: 7, scope: !5669)
!5695 = !DILocation(line: 118, column: 8, scope: !5692)
!5696 = !DILocation(line: 118, column: 5, scope: !5692)
!5697 = !DILocalVariable(name: "ret", scope: !5669, file: !330, line: 130, type: !151)
!5698 = !DILocation(line: 130, column: 10, scope: !5669)
!5699 = !DILocation(line: 130, column: 26, scope: !5669)
!5700 = !DILocation(line: 130, column: 31, scope: !5669)
!5701 = !DILocation(line: 130, column: 34, scope: !5669)
!5702 = !DILocation(line: 130, column: 37, scope: !5669)
!5703 = !DILocation(line: 130, column: 16, scope: !5669)
!5704 = !DILocation(line: 135, column: 7, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5669, file: !330, line: 135, column: 7)
!5706 = !DILocation(line: 135, column: 11, scope: !5705)
!5707 = !DILocation(line: 135, column: 25, scope: !5705)
!5708 = !DILocation(line: 135, column: 39, scope: !5705)
!5709 = !DILocation(line: 135, column: 30, scope: !5705)
!5710 = !DILocation(line: 135, column: 7, scope: !5669)
!5711 = !DILocation(line: 137, column: 14, scope: !5705)
!5712 = !DILocation(line: 137, column: 5, scope: !5705)
!5713 = !DILocation(line: 138, column: 7, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5669, file: !330, line: 138, column: 7)
!5715 = !DILocation(line: 138, column: 11, scope: !5714)
!5716 = !DILocation(line: 138, column: 7, scope: !5669)
!5717 = !DILocation(line: 139, column: 5, scope: !5714)
!5718 = !DILocation(line: 143, column: 22, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5669, file: !330, line: 143, column: 7)
!5720 = !DILocation(line: 143, column: 19, scope: !5719)
!5721 = !DILocation(line: 143, column: 26, scope: !5719)
!5722 = !DILocation(line: 143, column: 29, scope: !5719)
!5723 = !DILocation(line: 143, column: 31, scope: !5719)
!5724 = !DILocation(line: 143, column: 36, scope: !5719)
!5725 = !DILocation(line: 143, column: 41, scope: !5719)
!5726 = !DILocation(line: 143, column: 7, scope: !5669)
!5727 = !DILocation(line: 145, column: 11, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !330, line: 145, column: 11)
!5729 = distinct !DILexicalBlock(scope: !5719, file: !330, line: 144, column: 5)
!5730 = !DILocation(line: 145, column: 15, scope: !5728)
!5731 = !DILocation(line: 145, column: 11, scope: !5729)
!5732 = !DILocation(line: 146, column: 33, scope: !5728)
!5733 = !DILocation(line: 146, column: 32, scope: !5728)
!5734 = !DILocation(line: 146, column: 16, scope: !5728)
!5735 = !DILocation(line: 146, column: 10, scope: !5728)
!5736 = !DILocation(line: 146, column: 14, scope: !5728)
!5737 = !DILocation(line: 146, column: 9, scope: !5728)
!5738 = !DILocation(line: 147, column: 7, scope: !5729)
!5739 = !DILocation(line: 151, column: 10, scope: !5669)
!5740 = !DILocation(line: 151, column: 3, scope: !5669)
!5741 = !DILocation(line: 286, column: 1, scope: !5669)
!5742 = distinct !DISubprogram(name: "mbszero", scope: !5743, file: !5743, line: 1135, type: !5744, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !422, retainedNodes: !37)
!5743 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5744 = !DISubroutineType(types: !5745)
!5745 = !{null, !5746}
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !335, line: 6, baseType: !5748)
!5748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !337, line: 21, baseType: !5749)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 13, size: 64, elements: !5750)
!5750 = !{!5751, !5752}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5749, file: !337, line: 15, baseType: !25, size: 32)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5749, file: !337, line: 20, baseType: !5753, size: 32, offset: 32)
!5753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5749, file: !337, line: 16, size: 32, elements: !5754)
!5754 = !{!5755, !5756}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5753, file: !337, line: 18, baseType: !7, size: 32)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5753, file: !337, line: 19, baseType: !346, size: 32)
!5757 = !DILocalVariable(name: "ps", arg: 1, scope: !5742, file: !5743, line: 1135, type: !5746)
!5758 = !DILocation(line: 1135, column: 21, scope: !5742)
!5759 = !DILocation(line: 1137, column: 11, scope: !5742)
!5760 = !DILocation(line: 1137, column: 3, scope: !5742)
!5761 = !DILocation(line: 1138, column: 1, scope: !5742)
!5762 = distinct !DISubprogram(name: "memeq", scope: !4620, file: !4620, line: 974, type: !5763, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !424, retainedNodes: !37)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!27, !5220, !5220, !151}
!5765 = !DILocalVariable(name: "__s1", arg: 1, scope: !5762, file: !4620, line: 974, type: !5220)
!5766 = !DILocation(line: 974, column: 20, scope: !5762)
!5767 = !DILocalVariable(name: "__s2", arg: 2, scope: !5762, file: !4620, line: 974, type: !5220)
!5768 = !DILocation(line: 974, column: 38, scope: !5762)
!5769 = !DILocalVariable(name: "__n", arg: 3, scope: !5762, file: !4620, line: 974, type: !151)
!5770 = !DILocation(line: 974, column: 51, scope: !5762)
!5771 = !DILocation(line: 976, column: 19, scope: !5762)
!5772 = !DILocation(line: 976, column: 25, scope: !5762)
!5773 = !DILocation(line: 976, column: 31, scope: !5762)
!5774 = !DILocation(line: 976, column: 11, scope: !5762)
!5775 = !DILocation(line: 976, column: 10, scope: !5762)
!5776 = !DILocation(line: 976, column: 3, scope: !5762)
!5777 = distinct !DISubprogram(name: "rpl_realloc", scope: !5778, file: !5778, line: 2057, type: !4985, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !426, retainedNodes: !37)
!5778 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5779 = !DILocalVariable(name: "ptr", arg: 1, scope: !5777, file: !5778, line: 2057, type: !24)
!5780 = !DILocation(line: 2057, column: 20, scope: !5777)
!5781 = !DILocalVariable(name: "size", arg: 2, scope: !5777, file: !5778, line: 2057, type: !151)
!5782 = !DILocation(line: 2057, column: 32, scope: !5777)
!5783 = !DILocation(line: 2059, column: 19, scope: !5777)
!5784 = !DILocation(line: 2059, column: 24, scope: !5777)
!5785 = !DILocation(line: 2059, column: 31, scope: !5777)
!5786 = !DILocation(line: 2059, column: 10, scope: !5777)
!5787 = !DILocation(line: 2059, column: 3, scope: !5777)
!5788 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !429, file: !429, line: 27, type: !4922, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !428, retainedNodes: !37)
!5789 = !DILocalVariable(name: "ptr", arg: 1, scope: !5788, file: !429, line: 27, type: !24)
!5790 = !DILocation(line: 27, column: 21, scope: !5788)
!5791 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5788, file: !429, line: 27, type: !151)
!5792 = !DILocation(line: 27, column: 33, scope: !5788)
!5793 = !DILocalVariable(name: "size", arg: 3, scope: !5788, file: !429, line: 27, type: !151)
!5794 = !DILocation(line: 27, column: 47, scope: !5788)
!5795 = !DILocalVariable(name: "nbytes", scope: !5788, file: !429, line: 29, type: !151)
!5796 = !DILocation(line: 29, column: 10, scope: !5788)
!5797 = !DILocation(line: 30, column: 7, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5788, file: !429, line: 30, column: 7)
!5799 = !DILocation(line: 30, column: 7, scope: !5788)
!5800 = !DILocation(line: 32, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5798, file: !429, line: 31, column: 5)
!5802 = !DILocation(line: 32, column: 13, scope: !5801)
!5803 = !DILocation(line: 33, column: 7, scope: !5801)
!5804 = !DILocation(line: 37, column: 19, scope: !5788)
!5805 = !DILocation(line: 37, column: 24, scope: !5788)
!5806 = !DILocation(line: 37, column: 10, scope: !5788)
!5807 = !DILocation(line: 37, column: 3, scope: !5788)
!5808 = !DILocation(line: 38, column: 1, scope: !5788)
!5809 = distinct !DISubprogram(name: "hard_locale", scope: !432, file: !432, line: 28, type: !1718, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !431, retainedNodes: !37)
!5810 = !DILocalVariable(name: "category", arg: 1, scope: !5809, file: !432, line: 28, type: !25)
!5811 = !DILocation(line: 28, column: 18, scope: !5809)
!5812 = !DILocalVariable(name: "locale", scope: !5809, file: !432, line: 30, type: !5813)
!5813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !5814)
!5814 = !{!5815}
!5815 = !DISubrange(count: 257)
!5816 = !DILocation(line: 30, column: 8, scope: !5809)
!5817 = !DILocation(line: 32, column: 25, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5809, file: !432, line: 32, column: 7)
!5819 = !DILocation(line: 32, column: 35, scope: !5818)
!5820 = !DILocation(line: 32, column: 7, scope: !5818)
!5821 = !DILocation(line: 32, column: 7, scope: !5809)
!5822 = !DILocation(line: 33, column: 5, scope: !5818)
!5823 = !DILocation(line: 35, column: 16, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5809, file: !432, line: 35, column: 7)
!5825 = !DILocation(line: 35, column: 9, scope: !5824)
!5826 = !DILocation(line: 35, column: 29, scope: !5824)
!5827 = !DILocation(line: 35, column: 39, scope: !5824)
!5828 = !DILocation(line: 35, column: 32, scope: !5824)
!5829 = !DILocation(line: 35, column: 7, scope: !5809)
!5830 = !DILocation(line: 36, column: 5, scope: !5824)
!5831 = !DILocation(line: 46, column: 3, scope: !5809)
!5832 = !DILocation(line: 47, column: 1, scope: !5809)
!5833 = distinct !DISubprogram(name: "setlocale_null_r", scope: !434, file: !434, line: 154, type: !5834, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !433, retainedNodes: !37)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!25, !25, !22, !151}
!5836 = !DILocalVariable(name: "category", arg: 1, scope: !5833, file: !434, line: 154, type: !25)
!5837 = !DILocation(line: 154, column: 23, scope: !5833)
!5838 = !DILocalVariable(name: "buf", arg: 2, scope: !5833, file: !434, line: 154, type: !22)
!5839 = !DILocation(line: 154, column: 39, scope: !5833)
!5840 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5833, file: !434, line: 154, type: !151)
!5841 = !DILocation(line: 154, column: 51, scope: !5833)
!5842 = !DILocation(line: 159, column: 37, scope: !5833)
!5843 = !DILocation(line: 159, column: 47, scope: !5833)
!5844 = !DILocation(line: 159, column: 52, scope: !5833)
!5845 = !DILocation(line: 159, column: 10, scope: !5833)
!5846 = !DILocation(line: 159, column: 3, scope: !5833)
!5847 = distinct !DISubprogram(name: "setlocale_null", scope: !434, file: !434, line: 186, type: !5848, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !433, retainedNodes: !37)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!35, !25}
!5850 = !DILocalVariable(name: "category", arg: 1, scope: !5847, file: !434, line: 186, type: !25)
!5851 = !DILocation(line: 186, column: 21, scope: !5847)
!5852 = !DILocation(line: 189, column: 35, scope: !5847)
!5853 = !DILocation(line: 189, column: 10, scope: !5847)
!5854 = !DILocation(line: 189, column: 3, scope: !5847)
!5855 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !436, file: !436, line: 35, type: !5848, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !435, retainedNodes: !37)
!5856 = !DILocalVariable(name: "category", arg: 1, scope: !5855, file: !436, line: 35, type: !25)
!5857 = !DILocation(line: 35, column: 30, scope: !5855)
!5858 = !DILocalVariable(name: "result", scope: !5855, file: !436, line: 37, type: !35)
!5859 = !DILocation(line: 37, column: 15, scope: !5855)
!5860 = !DILocation(line: 37, column: 35, scope: !5855)
!5861 = !DILocation(line: 37, column: 24, scope: !5855)
!5862 = !DILocation(line: 62, column: 10, scope: !5855)
!5863 = !DILocation(line: 62, column: 3, scope: !5855)
!5864 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !436, file: !436, line: 66, type: !5834, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !435, retainedNodes: !37)
!5865 = !DILocalVariable(name: "category", arg: 1, scope: !5864, file: !436, line: 66, type: !25)
!5866 = !DILocation(line: 66, column: 32, scope: !5864)
!5867 = !DILocalVariable(name: "buf", arg: 2, scope: !5864, file: !436, line: 66, type: !22)
!5868 = !DILocation(line: 66, column: 48, scope: !5864)
!5869 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5864, file: !436, line: 66, type: !151)
!5870 = !DILocation(line: 66, column: 60, scope: !5864)
!5871 = !DILocalVariable(name: "result", scope: !5864, file: !436, line: 111, type: !35)
!5872 = !DILocation(line: 111, column: 15, scope: !5864)
!5873 = !DILocation(line: 111, column: 49, scope: !5864)
!5874 = !DILocation(line: 111, column: 24, scope: !5864)
!5875 = !DILocation(line: 113, column: 7, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5864, file: !436, line: 113, column: 7)
!5877 = !DILocation(line: 113, column: 14, scope: !5876)
!5878 = !DILocation(line: 113, column: 7, scope: !5864)
!5879 = !DILocation(line: 116, column: 11, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5881, file: !436, line: 116, column: 11)
!5881 = distinct !DILexicalBlock(scope: !5876, file: !436, line: 114, column: 5)
!5882 = !DILocation(line: 116, column: 19, scope: !5880)
!5883 = !DILocation(line: 116, column: 11, scope: !5881)
!5884 = !DILocation(line: 120, column: 9, scope: !5880)
!5885 = !DILocation(line: 120, column: 16, scope: !5880)
!5886 = !DILocation(line: 121, column: 7, scope: !5881)
!5887 = !DILocalVariable(name: "length", scope: !5888, file: !436, line: 125, type: !151)
!5888 = distinct !DILexicalBlock(scope: !5876, file: !436, line: 124, column: 5)
!5889 = !DILocation(line: 125, column: 14, scope: !5888)
!5890 = !DILocation(line: 125, column: 31, scope: !5888)
!5891 = !DILocation(line: 125, column: 23, scope: !5888)
!5892 = !DILocation(line: 126, column: 11, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5888, file: !436, line: 126, column: 11)
!5894 = !DILocation(line: 126, column: 20, scope: !5893)
!5895 = !DILocation(line: 126, column: 18, scope: !5893)
!5896 = !DILocation(line: 126, column: 11, scope: !5888)
!5897 = !DILocation(line: 128, column: 19, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !436, line: 127, column: 9)
!5899 = !DILocation(line: 128, column: 24, scope: !5898)
!5900 = !DILocation(line: 128, column: 32, scope: !5898)
!5901 = !DILocation(line: 128, column: 39, scope: !5898)
!5902 = !DILocation(line: 128, column: 11, scope: !5898)
!5903 = !DILocation(line: 129, column: 11, scope: !5898)
!5904 = !DILocation(line: 133, column: 15, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !436, line: 133, column: 15)
!5906 = distinct !DILexicalBlock(scope: !5893, file: !436, line: 132, column: 9)
!5907 = !DILocation(line: 133, column: 23, scope: !5905)
!5908 = !DILocation(line: 133, column: 15, scope: !5906)
!5909 = !DILocation(line: 138, column: 23, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5905, file: !436, line: 134, column: 13)
!5911 = !DILocation(line: 138, column: 28, scope: !5910)
!5912 = !DILocation(line: 138, column: 36, scope: !5910)
!5913 = !DILocation(line: 138, column: 44, scope: !5910)
!5914 = !DILocation(line: 138, column: 15, scope: !5910)
!5915 = !DILocation(line: 139, column: 15, scope: !5910)
!5916 = !DILocation(line: 139, column: 19, scope: !5910)
!5917 = !DILocation(line: 139, column: 27, scope: !5910)
!5918 = !DILocation(line: 139, column: 32, scope: !5910)
!5919 = !DILocation(line: 140, column: 13, scope: !5910)
!5920 = !DILocation(line: 141, column: 11, scope: !5906)
!5921 = !DILocation(line: 145, column: 1, scope: !5864)
