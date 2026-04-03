; ModuleID = 'src/getlimits.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Output platform dependent limits in a format useful for shell scripts.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"getlimits\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"CHAR_MAX=%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"CHAR_OFLOW=%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"SCHAR_MAX=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SCHAR_OFLOW=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"SCHAR_MIN=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SCHAR_UFLOW=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"UCHAR_MAX=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"UCHAR_OFLOW=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"SHRT_MAX=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"SHRT_OFLOW=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"SHRT_MIN=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"SHRT_UFLOW=%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"INT_MAX=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"INT_OFLOW=%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"INT_MIN=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"INT_UFLOW=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"UINT_MAX=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"UINT_OFLOW=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"LONG_MAX=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"LONG_OFLOW=%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"LONG_MIN=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"LONG_UFLOW=%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"ULONG_MAX=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"ULONG_OFLOW=%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"SIZE_MAX=%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"SIZE_OFLOW=%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"SSIZE_MAX=%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"SSIZE_OFLOW=%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"SSIZE_MIN=%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"SSIZE_UFLOW=%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"TIME_T_MAX=%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"TIME_T_OFLOW=%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"TIME_T_MIN=%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"TIME_T_UFLOW=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"UID_T_MAX=%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"UID_T_OFLOW=%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"GID_T_MAX=%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"GID_T_OFLOW=%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"PID_T_MAX=%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"PID_T_OFLOW=%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"PID_T_MIN=%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"PID_T_UFLOW=%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"OFF_T_MAX=%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"OFF_T_OFLOW=%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"OFF_T_MIN=%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"OFF_T_UFLOW=%s\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"OFF64_T_MAX=%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"OFF64_T_OFLOW=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"OFF64_T_MIN=%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"OFF64_T_UFLOW=%s\0A\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"INTMAX_MAX=%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"INTMAX_OFLOW=%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"INTMAX_MIN=%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"INTMAX_UFLOW=%s\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"UINTMAX_MAX=%s\0A\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"UINTMAX_OFLOW=%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"FLT_MIN=\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"FLT_MAX=\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"DBL_MIN=\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"DBL_MAX=\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"LDBL_MIN=\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"LDBL_MAX=\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"SIGRTMIN=%jd\0A\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"SIGRTMAX=%jd\0A\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"IO_BUFSIZE=%ju\0A\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"ENOTSUP\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"EWOULDBLOCK\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"EDEADLOCK\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.85, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.91 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.92 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !5
@.str.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.94 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !11
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.101 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !51
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !19
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !47
@.str.1.107 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.109 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.108 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !49
@.str.4.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.103 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.104 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.118 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.119, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.120, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !56
@optind = external local_unnamed_addr global i32, align 4
@.str.1.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.119 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.120 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !73
@.str.128 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.129 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !80
@.str.132 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.134 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.135 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.136 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.137 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.138 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.139 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.140 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.141 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.135, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.139, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.140, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.141, i32 0, i32 0), i8* null], align 8, !dbg !117
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !162
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !180
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !210
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !217
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !182
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !219
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !168
@.str.10.144 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.142 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.145 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.143 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !187
@.str.150 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.151 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.152 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.153 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.154 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.155 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.156 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.157 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.158 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.159 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.160 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.161 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.162 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.163 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.164 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.165 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.166 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.171 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.172 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.173 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.174 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.175 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.176 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.177 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !225
@exit_failure = dso_local global i32 1, align 4, !dbg !233
@.str.190 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.189 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !239
@.str.206 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !376 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !380, metadata !DIExpression()), !dbg !381
  %3 = icmp eq i32 %0, 0, !dbg !382
  br i1 %3, label %9, label %4, !dbg !384

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !385, !tbaa !387
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !385
  %7 = load i8*, i8** @program_name, align 8, !dbg !385, !tbaa !387
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !385
  br label %56, !dbg !385

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !391
  %11 = load i8*, i8** @program_name, align 8, !dbg !391, !tbaa !387
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !391
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !393
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !393, !tbaa !387
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !393
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #33, !dbg !394
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !394, !tbaa !387
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !394
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !395
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !395, !tbaa !387
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !395
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !396, metadata !DIExpression()) #33, !dbg !416
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !418
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #33, !dbg !418
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !402, metadata !DIExpression()) #33, !dbg !419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %22, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !411, metadata !DIExpression()) #33, !dbg !416
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !412, metadata !DIExpression()) #33, !dbg !416
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !420
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !412, metadata !DIExpression()) #33, !dbg !416
  br label %24, !dbg !421

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !412, metadata !DIExpression()) #33, !dbg !416
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !422, metadata !DIExpression()) #33, !dbg !429
  call void @llvm.dbg.value(metadata i8* %25, metadata !428, metadata !DIExpression()) #33, !dbg !429
  %27 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %25) #34, !dbg !431
  %28 = icmp eq i32 %27, 0, !dbg !432
  br i1 %28, label %34, label %29, !dbg !421

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !433
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !412, metadata !DIExpression()) #33, !dbg !416
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !434
  %32 = load i8*, i8** %31, align 8, !dbg !434, !tbaa !435
  %33 = icmp eq i8* %32, null, !dbg !437
  br i1 %33, label %34, label %24, !dbg !438, !llvm.loop !439

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !441
  %37 = load i8*, i8** %36, align 8, !dbg !441, !tbaa !443
  %38 = icmp eq i8* %37, null, !dbg !444
  %39 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !445
  call void @llvm.dbg.value(metadata i8* %39, metadata !411, metadata !DIExpression()) #33, !dbg !416
  tail call void @emit_bug_reporting_address() #33, !dbg !446
  %40 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !447
  call void @llvm.dbg.value(metadata i8* %40, metadata !414, metadata !DIExpression()) #33, !dbg !416
  %41 = icmp eq i8* %40, null, !dbg !448
  br i1 %41, label %49, label %42, !dbg !450

42:                                               ; preds = %34
  %43 = tail call i32 @strncmp(i8* noundef nonnull %40, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i64 noundef 3) #34, !dbg !451
  %44 = icmp eq i32 %43, 0, !dbg !451
  br i1 %44, label %49, label %45, !dbg !452

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i64 0, i64 0), i32 noundef 5) #33, !dbg !453
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !453, !tbaa !387
  %48 = tail call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47) #33, !dbg !453
  br label %49, !dbg !455

49:                                               ; preds = %34, %42, %45
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !422, metadata !DIExpression()) #33, !dbg !456
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0), metadata !428, metadata !DIExpression()) #33, !dbg !456
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), metadata !415, metadata !DIExpression()) #33, !dbg !416
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0), i32 noundef 5) #33, !dbg !458
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %50, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #33, !dbg !458
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #33, !dbg !459
  %53 = icmp eq i8* %39, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), !dbg !459
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !459
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %52, i8* noundef %39, i8* noundef %54) #33, !dbg !459
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #33, !dbg !460
  br label %56

56:                                               ; preds = %49, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !461
  unreachable, !dbg !461
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !462 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !467 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !523 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #9 !dbg !527 {
  %3 = alloca [60 x i8], align 1
  %4 = alloca [60 x i8], align 1
  %5 = alloca [40 x i8], align 1
  %6 = alloca [40 x i8], align 1
  %7 = alloca [31 x i8], align 1
  %8 = alloca [31 x i8], align 1
  %9 = alloca [22 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !532, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i8** %1, metadata !533, metadata !DIExpression()), !dbg !538
  %10 = getelementptr inbounds [22 x i8], [22 x i8]* %9, i64 0, i64 0, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %10) #33, !dbg !539
  call void @llvm.dbg.declare(metadata [22 x i8]* %9, metadata !534, metadata !DIExpression()), !dbg !540
  %11 = load i8*, i8** %1, align 8, !dbg !541, !tbaa !387
  tail call void @set_program_name(i8* noundef %11) #33, !dbg !542
  %12 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #33, !dbg !543
  %13 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #33, !dbg !544
  %14 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #33, !dbg !545
  %15 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !546
  %16 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !547
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %16, i8* noundef null) #33, !dbg !548
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %9, i64 0, i64 1, !dbg !549
  %18 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #33, !dbg !549
  %19 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !549
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !559
  %20 = load i8, i8* %17, align 1, !dbg !561, !tbaa !562
  %21 = icmp eq i8 %20, 45, !dbg !563
  call void @llvm.dbg.value(metadata i1 %21, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !559
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !564
  call void @llvm.dbg.value(metadata i8* %23, metadata !556, metadata !DIExpression()) #33, !dbg !559
  %24 = call i64 @strlen(i8* noundef nonnull %23) #34, !dbg !565
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !566
  call void @llvm.dbg.value(metadata i8* %25, metadata !557, metadata !DIExpression()) #33, !dbg !559
  %26 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !567
  store i8 48, i8* %26, align 1, !dbg !568, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %25, metadata !557, metadata !DIExpression()) #33, !dbg !559
  %27 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !569
  call void @llvm.dbg.value(metadata i8* %27, metadata !557, metadata !DIExpression()) #33, !dbg !559
  %28 = load i8, i8* %27, align 1, !dbg !570, !tbaa !562
  %29 = icmp eq i8 %28, 57, !dbg !571
  br i1 %29, label %30, label %35, !dbg !572

30:                                               ; preds = %2, %30
  %31 = phi i8* [ %32, %30 ], [ %27, %2 ]
  store i8 48, i8* %31, align 1, !dbg !573, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %31, metadata !557, metadata !DIExpression()) #33, !dbg !559
  %32 = getelementptr inbounds i8, i8* %31, i64 -1, !dbg !569
  call void @llvm.dbg.value(metadata i8* %32, metadata !557, metadata !DIExpression()) #33, !dbg !559
  %33 = load i8, i8* %32, align 1, !dbg !570, !tbaa !562
  %34 = icmp eq i8 %33, 57, !dbg !571
  br i1 %34, label %30, label %35, !dbg !572, !llvm.loop !574

35:                                               ; preds = %30, %2
  %36 = phi i8* [ %27, %2 ], [ %32, %30 ], !dbg !569
  %37 = phi i8 [ %28, %2 ], [ %33, %30 ], !dbg !570
  %38 = add i8 %37, 1, !dbg !576
  store i8 %38, i8* %36, align 1, !dbg !576, !tbaa !562
  %39 = icmp ult i8* %23, %36, !dbg !577
  %40 = select i1 %39, i8* %23, i8* %36, !dbg !577
  call void @llvm.dbg.value(metadata i8* %40, metadata !558, metadata !DIExpression()) #33, !dbg !559
  br i1 %21, label %41, label %44, !dbg !578

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !579
  %43 = select i1 %39, i8* %26, i8* %42, !dbg !579
  call void @llvm.dbg.value(metadata i8* %43, metadata !558, metadata !DIExpression()) #33, !dbg !559
  store i8 45, i8* %43, align 1, !dbg !581, !tbaa !562
  br label %44, !dbg !582

44:                                               ; preds = %35, %41
  %45 = phi i8* [ %43, %41 ], [ %40, %35 ], !dbg !559
  call void @llvm.dbg.value(metadata i8* %45, metadata !558, metadata !DIExpression()) #33, !dbg !559
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %45) #33, !dbg !549
  %47 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 127) #33, !dbg !583
  %48 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !583
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !584
  %49 = load i8, i8* %17, align 1, !dbg !586, !tbaa !562
  %50 = icmp eq i8 %49, 45, !dbg !587
  call void @llvm.dbg.value(metadata i1 %50, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !584
  %51 = zext i1 %50 to i64
  %52 = getelementptr inbounds i8, i8* %17, i64 %51, !dbg !588
  call void @llvm.dbg.value(metadata i8* %52, metadata !556, metadata !DIExpression()) #33, !dbg !584
  %53 = call i64 @strlen(i8* noundef nonnull %52) #34, !dbg !589
  %54 = getelementptr inbounds i8, i8* %52, i64 %53, !dbg !590
  call void @llvm.dbg.value(metadata i8* %54, metadata !557, metadata !DIExpression()) #33, !dbg !584
  %55 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !591
  store i8 48, i8* %55, align 1, !dbg !592, !tbaa !562
  %56 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !593
  call void @llvm.dbg.value(metadata i8* %56, metadata !557, metadata !DIExpression()) #33, !dbg !584
  %57 = load i8, i8* %56, align 1, !dbg !594, !tbaa !562
  %58 = icmp eq i8 %57, 57, !dbg !595
  br i1 %58, label %59, label %64, !dbg !596

59:                                               ; preds = %44, %59
  %60 = phi i8* [ %61, %59 ], [ %56, %44 ]
  store i8 48, i8* %60, align 1, !dbg !597, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %60, metadata !557, metadata !DIExpression()) #33, !dbg !584
  %61 = getelementptr inbounds i8, i8* %60, i64 -1, !dbg !593
  call void @llvm.dbg.value(metadata i8* %61, metadata !557, metadata !DIExpression()) #33, !dbg !584
  %62 = load i8, i8* %61, align 1, !dbg !594, !tbaa !562
  %63 = icmp eq i8 %62, 57, !dbg !595
  br i1 %63, label %59, label %64, !dbg !596, !llvm.loop !598

64:                                               ; preds = %59, %44
  %65 = phi i8* [ %56, %44 ], [ %61, %59 ], !dbg !593
  %66 = phi i8 [ %57, %44 ], [ %62, %59 ], !dbg !594
  %67 = add i8 %66, 1, !dbg !600
  store i8 %67, i8* %65, align 1, !dbg !600, !tbaa !562
  %68 = icmp ult i8* %52, %65, !dbg !601
  %69 = select i1 %68, i8* %52, i8* %65, !dbg !601
  call void @llvm.dbg.value(metadata i8* %69, metadata !558, metadata !DIExpression()) #33, !dbg !584
  br i1 %50, label %70, label %73, !dbg !602

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !603
  %72 = select i1 %68, i8* %55, i8* %71, !dbg !603
  call void @llvm.dbg.value(metadata i8* %72, metadata !558, metadata !DIExpression()) #33, !dbg !584
  store i8 45, i8* %72, align 1, !dbg !604, !tbaa !562
  br label %73, !dbg !605

73:                                               ; preds = %64, %70
  %74 = phi i8* [ %72, %70 ], [ %69, %64 ], !dbg !584
  call void @llvm.dbg.value(metadata i8* %74, metadata !558, metadata !DIExpression()) #33, !dbg !584
  %75 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %74) #33, !dbg !583
  %76 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -128) #33, !dbg !606
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !606
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !609
  %78 = load i8, i8* %17, align 1, !dbg !611, !tbaa !562
  %79 = icmp eq i8 %78, 45, !dbg !612
  call void @llvm.dbg.value(metadata i1 %79, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !609
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, i8* %17, i64 %80, !dbg !613
  call void @llvm.dbg.value(metadata i8* %81, metadata !556, metadata !DIExpression()) #33, !dbg !609
  %82 = call i64 @strlen(i8* noundef nonnull %81) #34, !dbg !614
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !615
  call void @llvm.dbg.value(metadata i8* %83, metadata !557, metadata !DIExpression()) #33, !dbg !609
  %84 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !616
  store i8 48, i8* %84, align 1, !dbg !617, !tbaa !562
  %85 = getelementptr inbounds i8, i8* %83, i64 -1, !dbg !618
  call void @llvm.dbg.value(metadata i8* %85, metadata !557, metadata !DIExpression()) #33, !dbg !609
  %86 = load i8, i8* %85, align 1, !dbg !619, !tbaa !562
  %87 = icmp eq i8 %86, 57, !dbg !620
  br i1 %87, label %88, label %93, !dbg !621

88:                                               ; preds = %73, %88
  %89 = phi i8* [ %90, %88 ], [ %85, %73 ]
  store i8 48, i8* %89, align 1, !dbg !622, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %89, metadata !557, metadata !DIExpression()) #33, !dbg !609
  %90 = getelementptr inbounds i8, i8* %89, i64 -1, !dbg !618
  call void @llvm.dbg.value(metadata i8* %90, metadata !557, metadata !DIExpression()) #33, !dbg !609
  %91 = load i8, i8* %90, align 1, !dbg !619, !tbaa !562
  %92 = icmp eq i8 %91, 57, !dbg !620
  br i1 %92, label %88, label %93, !dbg !621, !llvm.loop !623

93:                                               ; preds = %88, %73
  %94 = phi i8* [ %85, %73 ], [ %90, %88 ], !dbg !618
  %95 = phi i8 [ %86, %73 ], [ %91, %88 ], !dbg !619
  %96 = add i8 %95, 1, !dbg !625
  store i8 %96, i8* %94, align 1, !dbg !625, !tbaa !562
  %97 = icmp ult i8* %81, %94, !dbg !626
  %98 = select i1 %97, i8* %81, i8* %94, !dbg !626
  call void @llvm.dbg.value(metadata i8* %98, metadata !558, metadata !DIExpression()) #33, !dbg !609
  br i1 %79, label %99, label %102, !dbg !627

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !628
  %101 = select i1 %97, i8* %84, i8* %100, !dbg !628
  call void @llvm.dbg.value(metadata i8* %101, metadata !558, metadata !DIExpression()) #33, !dbg !609
  store i8 45, i8* %101, align 1, !dbg !629, !tbaa !562
  br label %102, !dbg !630

102:                                              ; preds = %93, %99
  %103 = phi i8* [ %101, %99 ], [ %98, %93 ], !dbg !609
  call void @llvm.dbg.value(metadata i8* %103, metadata !558, metadata !DIExpression()) #33, !dbg !609
  %104 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef %103) #33, !dbg !606
  %105 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #33, !dbg !631
  %106 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !631
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !632
  %107 = load i8, i8* %17, align 1, !dbg !634, !tbaa !562
  %108 = icmp eq i8 %107, 45, !dbg !635
  call void @llvm.dbg.value(metadata i1 %108, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !632
  %109 = zext i1 %108 to i64
  %110 = getelementptr inbounds i8, i8* %17, i64 %109, !dbg !636
  call void @llvm.dbg.value(metadata i8* %110, metadata !556, metadata !DIExpression()) #33, !dbg !632
  %111 = call i64 @strlen(i8* noundef nonnull %110) #34, !dbg !637
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !638
  call void @llvm.dbg.value(metadata i8* %112, metadata !557, metadata !DIExpression()) #33, !dbg !632
  %113 = getelementptr inbounds i8, i8* %110, i64 -1, !dbg !639
  store i8 48, i8* %113, align 1, !dbg !640, !tbaa !562
  %114 = getelementptr inbounds i8, i8* %112, i64 -1, !dbg !641
  call void @llvm.dbg.value(metadata i8* %114, metadata !557, metadata !DIExpression()) #33, !dbg !632
  %115 = load i8, i8* %114, align 1, !dbg !642, !tbaa !562
  %116 = icmp eq i8 %115, 57, !dbg !643
  br i1 %116, label %117, label %122, !dbg !644

117:                                              ; preds = %102, %117
  %118 = phi i8* [ %119, %117 ], [ %114, %102 ]
  store i8 48, i8* %118, align 1, !dbg !645, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %118, metadata !557, metadata !DIExpression()) #33, !dbg !632
  %119 = getelementptr inbounds i8, i8* %118, i64 -1, !dbg !641
  call void @llvm.dbg.value(metadata i8* %119, metadata !557, metadata !DIExpression()) #33, !dbg !632
  %120 = load i8, i8* %119, align 1, !dbg !642, !tbaa !562
  %121 = icmp eq i8 %120, 57, !dbg !643
  br i1 %121, label %117, label %122, !dbg !644, !llvm.loop !646

122:                                              ; preds = %117, %102
  %123 = phi i8* [ %114, %102 ], [ %119, %117 ], !dbg !641
  %124 = phi i8 [ %115, %102 ], [ %120, %117 ], !dbg !642
  %125 = add i8 %124, 1, !dbg !648
  store i8 %125, i8* %123, align 1, !dbg !648, !tbaa !562
  %126 = icmp ult i8* %110, %123, !dbg !649
  %127 = select i1 %126, i8* %110, i8* %123, !dbg !649
  call void @llvm.dbg.value(metadata i8* %127, metadata !558, metadata !DIExpression()) #33, !dbg !632
  br i1 %108, label %128, label %131, !dbg !650

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, i8* %123, i64 -1, !dbg !651
  %130 = select i1 %126, i8* %113, i8* %129, !dbg !651
  call void @llvm.dbg.value(metadata i8* %130, metadata !558, metadata !DIExpression()) #33, !dbg !632
  store i8 45, i8* %130, align 1, !dbg !652, !tbaa !562
  br label %131, !dbg !653

131:                                              ; preds = %122, %128
  %132 = phi i8* [ %130, %128 ], [ %127, %122 ], !dbg !632
  call void @llvm.dbg.value(metadata i8* %132, metadata !558, metadata !DIExpression()) #33, !dbg !632
  %133 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %132) #33, !dbg !631
  %134 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 32767) #33, !dbg !654
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !654
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !655
  %136 = load i8, i8* %17, align 1, !dbg !657, !tbaa !562
  %137 = icmp eq i8 %136, 45, !dbg !658
  call void @llvm.dbg.value(metadata i1 %137, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !655
  %138 = zext i1 %137 to i64
  %139 = getelementptr inbounds i8, i8* %17, i64 %138, !dbg !659
  call void @llvm.dbg.value(metadata i8* %139, metadata !556, metadata !DIExpression()) #33, !dbg !655
  %140 = call i64 @strlen(i8* noundef nonnull %139) #34, !dbg !660
  %141 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !661
  call void @llvm.dbg.value(metadata i8* %141, metadata !557, metadata !DIExpression()) #33, !dbg !655
  %142 = getelementptr inbounds i8, i8* %139, i64 -1, !dbg !662
  store i8 48, i8* %142, align 1, !dbg !663, !tbaa !562
  %143 = getelementptr inbounds i8, i8* %141, i64 -1, !dbg !664
  call void @llvm.dbg.value(metadata i8* %143, metadata !557, metadata !DIExpression()) #33, !dbg !655
  %144 = load i8, i8* %143, align 1, !dbg !665, !tbaa !562
  %145 = icmp eq i8 %144, 57, !dbg !666
  br i1 %145, label %146, label %151, !dbg !667

146:                                              ; preds = %131, %146
  %147 = phi i8* [ %148, %146 ], [ %143, %131 ]
  store i8 48, i8* %147, align 1, !dbg !668, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %147, metadata !557, metadata !DIExpression()) #33, !dbg !655
  %148 = getelementptr inbounds i8, i8* %147, i64 -1, !dbg !664
  call void @llvm.dbg.value(metadata i8* %148, metadata !557, metadata !DIExpression()) #33, !dbg !655
  %149 = load i8, i8* %148, align 1, !dbg !665, !tbaa !562
  %150 = icmp eq i8 %149, 57, !dbg !666
  br i1 %150, label %146, label %151, !dbg !667, !llvm.loop !669

151:                                              ; preds = %146, %131
  %152 = phi i8* [ %143, %131 ], [ %148, %146 ], !dbg !664
  %153 = phi i8 [ %144, %131 ], [ %149, %146 ], !dbg !665
  %154 = add i8 %153, 1, !dbg !671
  store i8 %154, i8* %152, align 1, !dbg !671, !tbaa !562
  %155 = icmp ult i8* %139, %152, !dbg !672
  %156 = select i1 %155, i8* %139, i8* %152, !dbg !672
  call void @llvm.dbg.value(metadata i8* %156, metadata !558, metadata !DIExpression()) #33, !dbg !655
  br i1 %137, label %157, label %160, !dbg !673

157:                                              ; preds = %151
  %158 = getelementptr inbounds i8, i8* %152, i64 -1, !dbg !674
  %159 = select i1 %155, i8* %142, i8* %158, !dbg !674
  call void @llvm.dbg.value(metadata i8* %159, metadata !558, metadata !DIExpression()) #33, !dbg !655
  store i8 45, i8* %159, align 1, !dbg !675, !tbaa !562
  br label %160, !dbg !676

160:                                              ; preds = %151, %157
  %161 = phi i8* [ %159, %157 ], [ %156, %151 ], !dbg !655
  call void @llvm.dbg.value(metadata i8* %161, metadata !558, metadata !DIExpression()) #33, !dbg !655
  %162 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* noundef %161) #33, !dbg !654
  %163 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -32768) #33, !dbg !677
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !677
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !680
  %165 = load i8, i8* %17, align 1, !dbg !682, !tbaa !562
  %166 = icmp eq i8 %165, 45, !dbg !683
  call void @llvm.dbg.value(metadata i1 %166, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !680
  %167 = zext i1 %166 to i64
  %168 = getelementptr inbounds i8, i8* %17, i64 %167, !dbg !684
  call void @llvm.dbg.value(metadata i8* %168, metadata !556, metadata !DIExpression()) #33, !dbg !680
  %169 = call i64 @strlen(i8* noundef nonnull %168) #34, !dbg !685
  %170 = getelementptr inbounds i8, i8* %168, i64 %169, !dbg !686
  call void @llvm.dbg.value(metadata i8* %170, metadata !557, metadata !DIExpression()) #33, !dbg !680
  %171 = getelementptr inbounds i8, i8* %168, i64 -1, !dbg !687
  store i8 48, i8* %171, align 1, !dbg !688, !tbaa !562
  %172 = getelementptr inbounds i8, i8* %170, i64 -1, !dbg !689
  call void @llvm.dbg.value(metadata i8* %172, metadata !557, metadata !DIExpression()) #33, !dbg !680
  %173 = load i8, i8* %172, align 1, !dbg !690, !tbaa !562
  %174 = icmp eq i8 %173, 57, !dbg !691
  br i1 %174, label %175, label %180, !dbg !692

175:                                              ; preds = %160, %175
  %176 = phi i8* [ %177, %175 ], [ %172, %160 ]
  store i8 48, i8* %176, align 1, !dbg !693, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %176, metadata !557, metadata !DIExpression()) #33, !dbg !680
  %177 = getelementptr inbounds i8, i8* %176, i64 -1, !dbg !689
  call void @llvm.dbg.value(metadata i8* %177, metadata !557, metadata !DIExpression()) #33, !dbg !680
  %178 = load i8, i8* %177, align 1, !dbg !690, !tbaa !562
  %179 = icmp eq i8 %178, 57, !dbg !691
  br i1 %179, label %175, label %180, !dbg !692, !llvm.loop !694

180:                                              ; preds = %175, %160
  %181 = phi i8* [ %172, %160 ], [ %177, %175 ], !dbg !689
  %182 = phi i8 [ %173, %160 ], [ %178, %175 ], !dbg !690
  %183 = add i8 %182, 1, !dbg !696
  store i8 %183, i8* %181, align 1, !dbg !696, !tbaa !562
  %184 = icmp ult i8* %168, %181, !dbg !697
  %185 = select i1 %184, i8* %168, i8* %181, !dbg !697
  call void @llvm.dbg.value(metadata i8* %185, metadata !558, metadata !DIExpression()) #33, !dbg !680
  br i1 %166, label %186, label %189, !dbg !698

186:                                              ; preds = %180
  %187 = getelementptr inbounds i8, i8* %181, i64 -1, !dbg !699
  %188 = select i1 %184, i8* %171, i8* %187, !dbg !699
  call void @llvm.dbg.value(metadata i8* %188, metadata !558, metadata !DIExpression()) #33, !dbg !680
  store i8 45, i8* %188, align 1, !dbg !700, !tbaa !562
  br label %189, !dbg !701

189:                                              ; preds = %180, %186
  %190 = phi i8* [ %188, %186 ], [ %185, %180 ], !dbg !680
  call void @llvm.dbg.value(metadata i8* %190, metadata !558, metadata !DIExpression()) #33, !dbg !680
  %191 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* noundef %190) #33, !dbg !677
  %192 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #33, !dbg !702
  %193 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !702
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !703
  %194 = load i8, i8* %17, align 1, !dbg !705, !tbaa !562
  %195 = icmp eq i8 %194, 45, !dbg !706
  call void @llvm.dbg.value(metadata i1 %195, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !703
  %196 = zext i1 %195 to i64
  %197 = getelementptr inbounds i8, i8* %17, i64 %196, !dbg !707
  call void @llvm.dbg.value(metadata i8* %197, metadata !556, metadata !DIExpression()) #33, !dbg !703
  %198 = call i64 @strlen(i8* noundef nonnull %197) #34, !dbg !708
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !709
  call void @llvm.dbg.value(metadata i8* %199, metadata !557, metadata !DIExpression()) #33, !dbg !703
  %200 = getelementptr inbounds i8, i8* %197, i64 -1, !dbg !710
  store i8 48, i8* %200, align 1, !dbg !711, !tbaa !562
  %201 = getelementptr inbounds i8, i8* %199, i64 -1, !dbg !712
  call void @llvm.dbg.value(metadata i8* %201, metadata !557, metadata !DIExpression()) #33, !dbg !703
  %202 = load i8, i8* %201, align 1, !dbg !713, !tbaa !562
  %203 = icmp eq i8 %202, 57, !dbg !714
  br i1 %203, label %204, label %209, !dbg !715

204:                                              ; preds = %189, %204
  %205 = phi i8* [ %206, %204 ], [ %201, %189 ]
  store i8 48, i8* %205, align 1, !dbg !716, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %205, metadata !557, metadata !DIExpression()) #33, !dbg !703
  %206 = getelementptr inbounds i8, i8* %205, i64 -1, !dbg !712
  call void @llvm.dbg.value(metadata i8* %206, metadata !557, metadata !DIExpression()) #33, !dbg !703
  %207 = load i8, i8* %206, align 1, !dbg !713, !tbaa !562
  %208 = icmp eq i8 %207, 57, !dbg !714
  br i1 %208, label %204, label %209, !dbg !715, !llvm.loop !717

209:                                              ; preds = %204, %189
  %210 = phi i8* [ %201, %189 ], [ %206, %204 ], !dbg !712
  %211 = phi i8 [ %202, %189 ], [ %207, %204 ], !dbg !713
  %212 = add i8 %211, 1, !dbg !719
  store i8 %212, i8* %210, align 1, !dbg !719, !tbaa !562
  %213 = icmp ult i8* %197, %210, !dbg !720
  %214 = select i1 %213, i8* %197, i8* %210, !dbg !720
  call void @llvm.dbg.value(metadata i8* %214, metadata !558, metadata !DIExpression()) #33, !dbg !703
  br i1 %195, label %215, label %218, !dbg !721

215:                                              ; preds = %209
  %216 = getelementptr inbounds i8, i8* %210, i64 -1, !dbg !722
  %217 = select i1 %213, i8* %200, i8* %216, !dbg !722
  call void @llvm.dbg.value(metadata i8* %217, metadata !558, metadata !DIExpression()) #33, !dbg !703
  store i8 45, i8* %217, align 1, !dbg !723, !tbaa !562
  br label %218, !dbg !724

218:                                              ; preds = %209, %215
  %219 = phi i8* [ %217, %215 ], [ %214, %209 ], !dbg !703
  call void @llvm.dbg.value(metadata i8* %219, metadata !558, metadata !DIExpression()) #33, !dbg !703
  %220 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef %219) #33, !dbg !702
  %221 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #33, !dbg !725
  %222 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !725
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !728
  %223 = load i8, i8* %17, align 1, !dbg !730, !tbaa !562
  %224 = icmp eq i8 %223, 45, !dbg !731
  call void @llvm.dbg.value(metadata i1 %224, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !728
  %225 = zext i1 %224 to i64
  %226 = getelementptr inbounds i8, i8* %17, i64 %225, !dbg !732
  call void @llvm.dbg.value(metadata i8* %226, metadata !556, metadata !DIExpression()) #33, !dbg !728
  %227 = call i64 @strlen(i8* noundef nonnull %226) #34, !dbg !733
  %228 = getelementptr inbounds i8, i8* %226, i64 %227, !dbg !734
  call void @llvm.dbg.value(metadata i8* %228, metadata !557, metadata !DIExpression()) #33, !dbg !728
  %229 = getelementptr inbounds i8, i8* %226, i64 -1, !dbg !735
  store i8 48, i8* %229, align 1, !dbg !736, !tbaa !562
  %230 = getelementptr inbounds i8, i8* %228, i64 -1, !dbg !737
  call void @llvm.dbg.value(metadata i8* %230, metadata !557, metadata !DIExpression()) #33, !dbg !728
  %231 = load i8, i8* %230, align 1, !dbg !738, !tbaa !562
  %232 = icmp eq i8 %231, 57, !dbg !739
  br i1 %232, label %233, label %238, !dbg !740

233:                                              ; preds = %218, %233
  %234 = phi i8* [ %235, %233 ], [ %230, %218 ]
  store i8 48, i8* %234, align 1, !dbg !741, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %234, metadata !557, metadata !DIExpression()) #33, !dbg !728
  %235 = getelementptr inbounds i8, i8* %234, i64 -1, !dbg !737
  call void @llvm.dbg.value(metadata i8* %235, metadata !557, metadata !DIExpression()) #33, !dbg !728
  %236 = load i8, i8* %235, align 1, !dbg !738, !tbaa !562
  %237 = icmp eq i8 %236, 57, !dbg !739
  br i1 %237, label %233, label %238, !dbg !740, !llvm.loop !742

238:                                              ; preds = %233, %218
  %239 = phi i8* [ %230, %218 ], [ %235, %233 ], !dbg !737
  %240 = phi i8 [ %231, %218 ], [ %236, %233 ], !dbg !738
  %241 = add i8 %240, 1, !dbg !744
  store i8 %241, i8* %239, align 1, !dbg !744, !tbaa !562
  %242 = icmp ult i8* %226, %239, !dbg !745
  %243 = select i1 %242, i8* %226, i8* %239, !dbg !745
  call void @llvm.dbg.value(metadata i8* %243, metadata !558, metadata !DIExpression()) #33, !dbg !728
  br i1 %224, label %244, label %247, !dbg !746

244:                                              ; preds = %238
  %245 = getelementptr inbounds i8, i8* %239, i64 -1, !dbg !747
  %246 = select i1 %242, i8* %229, i8* %245, !dbg !747
  call void @llvm.dbg.value(metadata i8* %246, metadata !558, metadata !DIExpression()) #33, !dbg !728
  store i8 45, i8* %246, align 1, !dbg !748, !tbaa !562
  br label %247, !dbg !749

247:                                              ; preds = %238, %244
  %248 = phi i8* [ %246, %244 ], [ %243, %238 ], !dbg !728
  call void @llvm.dbg.value(metadata i8* %248, metadata !558, metadata !DIExpression()) #33, !dbg !728
  %249 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %248) #33, !dbg !725
  %250 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33, !dbg !750
  %251 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !751
  %252 = load i8, i8* %17, align 1, !dbg !753, !tbaa !562
  %253 = icmp eq i8 %252, 45, !dbg !754
  call void @llvm.dbg.value(metadata i1 %253, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !751
  %254 = zext i1 %253 to i64
  %255 = getelementptr inbounds i8, i8* %17, i64 %254, !dbg !755
  call void @llvm.dbg.value(metadata i8* %255, metadata !556, metadata !DIExpression()) #33, !dbg !751
  %256 = call i64 @strlen(i8* noundef nonnull %255) #34, !dbg !756
  %257 = getelementptr inbounds i8, i8* %255, i64 %256, !dbg !757
  call void @llvm.dbg.value(metadata i8* %257, metadata !557, metadata !DIExpression()) #33, !dbg !751
  %258 = getelementptr inbounds i8, i8* %255, i64 -1, !dbg !758
  store i8 48, i8* %258, align 1, !dbg !759, !tbaa !562
  %259 = getelementptr inbounds i8, i8* %257, i64 -1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %259, metadata !557, metadata !DIExpression()) #33, !dbg !751
  %260 = load i8, i8* %259, align 1, !dbg !761, !tbaa !562
  %261 = icmp eq i8 %260, 57, !dbg !762
  br i1 %261, label %262, label %267, !dbg !763

262:                                              ; preds = %247, %262
  %263 = phi i8* [ %264, %262 ], [ %259, %247 ]
  store i8 48, i8* %263, align 1, !dbg !764, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %263, metadata !557, metadata !DIExpression()) #33, !dbg !751
  %264 = getelementptr inbounds i8, i8* %263, i64 -1, !dbg !760
  call void @llvm.dbg.value(metadata i8* %264, metadata !557, metadata !DIExpression()) #33, !dbg !751
  %265 = load i8, i8* %264, align 1, !dbg !761, !tbaa !562
  %266 = icmp eq i8 %265, 57, !dbg !762
  br i1 %266, label %262, label %267, !dbg !763, !llvm.loop !765

267:                                              ; preds = %262, %247
  %268 = phi i8* [ %259, %247 ], [ %264, %262 ], !dbg !760
  %269 = phi i8 [ %260, %247 ], [ %265, %262 ], !dbg !761
  %270 = add i8 %269, 1, !dbg !767
  store i8 %270, i8* %268, align 1, !dbg !767, !tbaa !562
  %271 = icmp ult i8* %255, %268, !dbg !768
  %272 = select i1 %271, i8* %255, i8* %268, !dbg !768
  call void @llvm.dbg.value(metadata i8* %272, metadata !558, metadata !DIExpression()) #33, !dbg !751
  br i1 %253, label %273, label %276, !dbg !769

273:                                              ; preds = %267
  %274 = getelementptr inbounds i8, i8* %268, i64 -1, !dbg !770
  %275 = select i1 %271, i8* %258, i8* %274, !dbg !770
  call void @llvm.dbg.value(metadata i8* %275, metadata !558, metadata !DIExpression()) #33, !dbg !751
  store i8 45, i8* %275, align 1, !dbg !771, !tbaa !562
  br label %276, !dbg !772

276:                                              ; preds = %267, %273
  %277 = phi i8* [ %275, %273 ], [ %272, %267 ], !dbg !751
  call void @llvm.dbg.value(metadata i8* %277, metadata !558, metadata !DIExpression()) #33, !dbg !751
  %278 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* noundef %277) #33, !dbg !750
  %279 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !773
  %280 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !773
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !774
  %281 = load i8, i8* %17, align 1, !dbg !776, !tbaa !562
  %282 = icmp eq i8 %281, 45, !dbg !777
  call void @llvm.dbg.value(metadata i1 %282, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !774
  %283 = zext i1 %282 to i64
  %284 = getelementptr inbounds i8, i8* %17, i64 %283, !dbg !778
  call void @llvm.dbg.value(metadata i8* %284, metadata !556, metadata !DIExpression()) #33, !dbg !774
  %285 = call i64 @strlen(i8* noundef nonnull %284) #34, !dbg !779
  %286 = getelementptr inbounds i8, i8* %284, i64 %285, !dbg !780
  call void @llvm.dbg.value(metadata i8* %286, metadata !557, metadata !DIExpression()) #33, !dbg !774
  %287 = getelementptr inbounds i8, i8* %284, i64 -1, !dbg !781
  store i8 48, i8* %287, align 1, !dbg !782, !tbaa !562
  %288 = getelementptr inbounds i8, i8* %286, i64 -1, !dbg !783
  call void @llvm.dbg.value(metadata i8* %288, metadata !557, metadata !DIExpression()) #33, !dbg !774
  %289 = load i8, i8* %288, align 1, !dbg !784, !tbaa !562
  %290 = icmp eq i8 %289, 57, !dbg !785
  br i1 %290, label %291, label %296, !dbg !786

291:                                              ; preds = %276, %291
  %292 = phi i8* [ %293, %291 ], [ %288, %276 ]
  store i8 48, i8* %292, align 1, !dbg !787, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %292, metadata !557, metadata !DIExpression()) #33, !dbg !774
  %293 = getelementptr inbounds i8, i8* %292, i64 -1, !dbg !783
  call void @llvm.dbg.value(metadata i8* %293, metadata !557, metadata !DIExpression()) #33, !dbg !774
  %294 = load i8, i8* %293, align 1, !dbg !784, !tbaa !562
  %295 = icmp eq i8 %294, 57, !dbg !785
  br i1 %295, label %291, label %296, !dbg !786, !llvm.loop !788

296:                                              ; preds = %291, %276
  %297 = phi i8* [ %288, %276 ], [ %293, %291 ], !dbg !783
  %298 = phi i8 [ %289, %276 ], [ %294, %291 ], !dbg !784
  %299 = add i8 %298, 1, !dbg !790
  store i8 %299, i8* %297, align 1, !dbg !790, !tbaa !562
  %300 = icmp ult i8* %284, %297, !dbg !791
  %301 = select i1 %300, i8* %284, i8* %297, !dbg !791
  call void @llvm.dbg.value(metadata i8* %301, metadata !558, metadata !DIExpression()) #33, !dbg !774
  br i1 %282, label %302, label %305, !dbg !792

302:                                              ; preds = %296
  %303 = getelementptr inbounds i8, i8* %297, i64 -1, !dbg !793
  %304 = select i1 %300, i8* %287, i8* %303, !dbg !793
  call void @llvm.dbg.value(metadata i8* %304, metadata !558, metadata !DIExpression()) #33, !dbg !774
  store i8 45, i8* %304, align 1, !dbg !794, !tbaa !562
  br label %305, !dbg !795

305:                                              ; preds = %296, %302
  %306 = phi i8* [ %304, %302 ], [ %301, %296 ], !dbg !774
  call void @llvm.dbg.value(metadata i8* %306, metadata !558, metadata !DIExpression()) #33, !dbg !774
  %307 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %306) #33, !dbg !773
  %308 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !796
  %309 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !796
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !799
  %310 = load i8, i8* %17, align 1, !dbg !801, !tbaa !562
  %311 = icmp eq i8 %310, 45, !dbg !802
  call void @llvm.dbg.value(metadata i1 %311, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !799
  %312 = zext i1 %311 to i64
  %313 = getelementptr inbounds i8, i8* %17, i64 %312, !dbg !803
  call void @llvm.dbg.value(metadata i8* %313, metadata !556, metadata !DIExpression()) #33, !dbg !799
  %314 = call i64 @strlen(i8* noundef nonnull %313) #34, !dbg !804
  %315 = getelementptr inbounds i8, i8* %313, i64 %314, !dbg !805
  call void @llvm.dbg.value(metadata i8* %315, metadata !557, metadata !DIExpression()) #33, !dbg !799
  %316 = getelementptr inbounds i8, i8* %313, i64 -1, !dbg !806
  store i8 48, i8* %316, align 1, !dbg !807, !tbaa !562
  %317 = getelementptr inbounds i8, i8* %315, i64 -1, !dbg !808
  call void @llvm.dbg.value(metadata i8* %317, metadata !557, metadata !DIExpression()) #33, !dbg !799
  %318 = load i8, i8* %317, align 1, !dbg !809, !tbaa !562
  %319 = icmp eq i8 %318, 57, !dbg !810
  br i1 %319, label %320, label %325, !dbg !811

320:                                              ; preds = %305, %320
  %321 = phi i8* [ %322, %320 ], [ %317, %305 ]
  store i8 48, i8* %321, align 1, !dbg !812, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %321, metadata !557, metadata !DIExpression()) #33, !dbg !799
  %322 = getelementptr inbounds i8, i8* %321, i64 -1, !dbg !808
  call void @llvm.dbg.value(metadata i8* %322, metadata !557, metadata !DIExpression()) #33, !dbg !799
  %323 = load i8, i8* %322, align 1, !dbg !809, !tbaa !562
  %324 = icmp eq i8 %323, 57, !dbg !810
  br i1 %324, label %320, label %325, !dbg !811, !llvm.loop !813

325:                                              ; preds = %320, %305
  %326 = phi i8* [ %317, %305 ], [ %322, %320 ], !dbg !808
  %327 = phi i8 [ %318, %305 ], [ %323, %320 ], !dbg !809
  %328 = add i8 %327, 1, !dbg !815
  store i8 %328, i8* %326, align 1, !dbg !815, !tbaa !562
  %329 = icmp ult i8* %313, %326, !dbg !816
  %330 = select i1 %329, i8* %313, i8* %326, !dbg !816
  call void @llvm.dbg.value(metadata i8* %330, metadata !558, metadata !DIExpression()) #33, !dbg !799
  br i1 %311, label %331, label %334, !dbg !817

331:                                              ; preds = %325
  %332 = getelementptr inbounds i8, i8* %326, i64 -1, !dbg !818
  %333 = select i1 %329, i8* %316, i8* %332, !dbg !818
  call void @llvm.dbg.value(metadata i8* %333, metadata !558, metadata !DIExpression()) #33, !dbg !799
  store i8 45, i8* %333, align 1, !dbg !819, !tbaa !562
  br label %334, !dbg !820

334:                                              ; preds = %325, %331
  %335 = phi i8* [ %333, %331 ], [ %330, %325 ], !dbg !799
  call void @llvm.dbg.value(metadata i8* %335, metadata !558, metadata !DIExpression()) #33, !dbg !799
  %336 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef %335) #33, !dbg !796
  %337 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33, !dbg !821
  %338 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !821
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !822
  %339 = load i8, i8* %17, align 1, !dbg !824, !tbaa !562
  %340 = icmp eq i8 %339, 45, !dbg !825
  call void @llvm.dbg.value(metadata i1 %340, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !822
  %341 = zext i1 %340 to i64
  %342 = getelementptr inbounds i8, i8* %17, i64 %341, !dbg !826
  call void @llvm.dbg.value(metadata i8* %342, metadata !556, metadata !DIExpression()) #33, !dbg !822
  %343 = call i64 @strlen(i8* noundef nonnull %342) #34, !dbg !827
  %344 = getelementptr inbounds i8, i8* %342, i64 %343, !dbg !828
  call void @llvm.dbg.value(metadata i8* %344, metadata !557, metadata !DIExpression()) #33, !dbg !822
  %345 = getelementptr inbounds i8, i8* %342, i64 -1, !dbg !829
  store i8 48, i8* %345, align 1, !dbg !830, !tbaa !562
  %346 = getelementptr inbounds i8, i8* %344, i64 -1, !dbg !831
  call void @llvm.dbg.value(metadata i8* %346, metadata !557, metadata !DIExpression()) #33, !dbg !822
  %347 = load i8, i8* %346, align 1, !dbg !832, !tbaa !562
  %348 = icmp eq i8 %347, 57, !dbg !833
  br i1 %348, label %349, label %354, !dbg !834

349:                                              ; preds = %334, %349
  %350 = phi i8* [ %351, %349 ], [ %346, %334 ]
  store i8 48, i8* %350, align 1, !dbg !835, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %350, metadata !557, metadata !DIExpression()) #33, !dbg !822
  %351 = getelementptr inbounds i8, i8* %350, i64 -1, !dbg !831
  call void @llvm.dbg.value(metadata i8* %351, metadata !557, metadata !DIExpression()) #33, !dbg !822
  %352 = load i8, i8* %351, align 1, !dbg !832, !tbaa !562
  %353 = icmp eq i8 %352, 57, !dbg !833
  br i1 %353, label %349, label %354, !dbg !834, !llvm.loop !836

354:                                              ; preds = %349, %334
  %355 = phi i8* [ %346, %334 ], [ %351, %349 ], !dbg !831
  %356 = phi i8 [ %347, %334 ], [ %352, %349 ], !dbg !832
  %357 = add i8 %356, 1, !dbg !838
  store i8 %357, i8* %355, align 1, !dbg !838, !tbaa !562
  %358 = icmp ult i8* %342, %355, !dbg !839
  %359 = select i1 %358, i8* %342, i8* %355, !dbg !839
  call void @llvm.dbg.value(metadata i8* %359, metadata !558, metadata !DIExpression()) #33, !dbg !822
  br i1 %340, label %360, label %363, !dbg !840

360:                                              ; preds = %354
  %361 = getelementptr inbounds i8, i8* %355, i64 -1, !dbg !841
  %362 = select i1 %358, i8* %345, i8* %361, !dbg !841
  call void @llvm.dbg.value(metadata i8* %362, metadata !558, metadata !DIExpression()) #33, !dbg !822
  store i8 45, i8* %362, align 1, !dbg !842, !tbaa !562
  br label %363, !dbg !843

363:                                              ; preds = %354, %360
  %364 = phi i8* [ %362, %360 ], [ %359, %354 ], !dbg !822
  call void @llvm.dbg.value(metadata i8* %364, metadata !558, metadata !DIExpression()) #33, !dbg !822
  %365 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* noundef %364) #33, !dbg !821
  %366 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33, !dbg !844
  %367 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !844
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !845
  %368 = load i8, i8* %17, align 1, !dbg !847, !tbaa !562
  %369 = icmp eq i8 %368, 45, !dbg !848
  call void @llvm.dbg.value(metadata i1 %369, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !845
  %370 = zext i1 %369 to i64
  %371 = getelementptr inbounds i8, i8* %17, i64 %370, !dbg !849
  call void @llvm.dbg.value(metadata i8* %371, metadata !556, metadata !DIExpression()) #33, !dbg !845
  %372 = call i64 @strlen(i8* noundef nonnull %371) #34, !dbg !850
  %373 = getelementptr inbounds i8, i8* %371, i64 %372, !dbg !851
  call void @llvm.dbg.value(metadata i8* %373, metadata !557, metadata !DIExpression()) #33, !dbg !845
  %374 = getelementptr inbounds i8, i8* %371, i64 -1, !dbg !852
  store i8 48, i8* %374, align 1, !dbg !853, !tbaa !562
  %375 = getelementptr inbounds i8, i8* %373, i64 -1, !dbg !854
  call void @llvm.dbg.value(metadata i8* %375, metadata !557, metadata !DIExpression()) #33, !dbg !845
  %376 = load i8, i8* %375, align 1, !dbg !855, !tbaa !562
  %377 = icmp eq i8 %376, 57, !dbg !856
  br i1 %377, label %378, label %383, !dbg !857

378:                                              ; preds = %363, %378
  %379 = phi i8* [ %380, %378 ], [ %375, %363 ]
  store i8 48, i8* %379, align 1, !dbg !858, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %379, metadata !557, metadata !DIExpression()) #33, !dbg !845
  %380 = getelementptr inbounds i8, i8* %379, i64 -1, !dbg !854
  call void @llvm.dbg.value(metadata i8* %380, metadata !557, metadata !DIExpression()) #33, !dbg !845
  %381 = load i8, i8* %380, align 1, !dbg !855, !tbaa !562
  %382 = icmp eq i8 %381, 57, !dbg !856
  br i1 %382, label %378, label %383, !dbg !857, !llvm.loop !859

383:                                              ; preds = %378, %363
  %384 = phi i8* [ %375, %363 ], [ %380, %378 ], !dbg !854
  %385 = phi i8 [ %376, %363 ], [ %381, %378 ], !dbg !855
  %386 = add i8 %385, 1, !dbg !861
  store i8 %386, i8* %384, align 1, !dbg !861, !tbaa !562
  %387 = icmp ult i8* %371, %384, !dbg !862
  %388 = select i1 %387, i8* %371, i8* %384, !dbg !862
  call void @llvm.dbg.value(metadata i8* %388, metadata !558, metadata !DIExpression()) #33, !dbg !845
  br i1 %369, label %389, label %392, !dbg !863

389:                                              ; preds = %383
  %390 = getelementptr inbounds i8, i8* %384, i64 -1, !dbg !864
  %391 = select i1 %387, i8* %374, i8* %390, !dbg !864
  call void @llvm.dbg.value(metadata i8* %391, metadata !558, metadata !DIExpression()) #33, !dbg !845
  store i8 45, i8* %391, align 1, !dbg !865, !tbaa !562
  br label %392, !dbg !866

392:                                              ; preds = %383, %389
  %393 = phi i8* [ %391, %389 ], [ %388, %383 ], !dbg !845
  call void @llvm.dbg.value(metadata i8* %393, metadata !558, metadata !DIExpression()) #33, !dbg !845
  %394 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef %393) #33, !dbg !844
  %395 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !867
  %396 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !867
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !868
  %397 = load i8, i8* %17, align 1, !dbg !870, !tbaa !562
  %398 = icmp eq i8 %397, 45, !dbg !871
  call void @llvm.dbg.value(metadata i1 %398, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !868
  %399 = zext i1 %398 to i64
  %400 = getelementptr inbounds i8, i8* %17, i64 %399, !dbg !872
  call void @llvm.dbg.value(metadata i8* %400, metadata !556, metadata !DIExpression()) #33, !dbg !868
  %401 = call i64 @strlen(i8* noundef nonnull %400) #34, !dbg !873
  %402 = getelementptr inbounds i8, i8* %400, i64 %401, !dbg !874
  call void @llvm.dbg.value(metadata i8* %402, metadata !557, metadata !DIExpression()) #33, !dbg !868
  %403 = getelementptr inbounds i8, i8* %400, i64 -1, !dbg !875
  store i8 48, i8* %403, align 1, !dbg !876, !tbaa !562
  %404 = getelementptr inbounds i8, i8* %402, i64 -1, !dbg !877
  call void @llvm.dbg.value(metadata i8* %404, metadata !557, metadata !DIExpression()) #33, !dbg !868
  %405 = load i8, i8* %404, align 1, !dbg !878, !tbaa !562
  %406 = icmp eq i8 %405, 57, !dbg !879
  br i1 %406, label %407, label %412, !dbg !880

407:                                              ; preds = %392, %407
  %408 = phi i8* [ %409, %407 ], [ %404, %392 ]
  store i8 48, i8* %408, align 1, !dbg !881, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %408, metadata !557, metadata !DIExpression()) #33, !dbg !868
  %409 = getelementptr inbounds i8, i8* %408, i64 -1, !dbg !877
  call void @llvm.dbg.value(metadata i8* %409, metadata !557, metadata !DIExpression()) #33, !dbg !868
  %410 = load i8, i8* %409, align 1, !dbg !878, !tbaa !562
  %411 = icmp eq i8 %410, 57, !dbg !879
  br i1 %411, label %407, label %412, !dbg !880, !llvm.loop !882

412:                                              ; preds = %407, %392
  %413 = phi i8* [ %404, %392 ], [ %409, %407 ], !dbg !877
  %414 = phi i8 [ %405, %392 ], [ %410, %407 ], !dbg !878
  %415 = add i8 %414, 1, !dbg !884
  store i8 %415, i8* %413, align 1, !dbg !884, !tbaa !562
  %416 = icmp ult i8* %400, %413, !dbg !885
  %417 = select i1 %416, i8* %400, i8* %413, !dbg !885
  call void @llvm.dbg.value(metadata i8* %417, metadata !558, metadata !DIExpression()) #33, !dbg !868
  br i1 %398, label %418, label %421, !dbg !886

418:                                              ; preds = %412
  %419 = getelementptr inbounds i8, i8* %413, i64 -1, !dbg !887
  %420 = select i1 %416, i8* %403, i8* %419, !dbg !887
  call void @llvm.dbg.value(metadata i8* %420, metadata !558, metadata !DIExpression()) #33, !dbg !868
  store i8 45, i8* %420, align 1, !dbg !888, !tbaa !562
  br label %421, !dbg !889

421:                                              ; preds = %412, %418
  %422 = phi i8* [ %420, %418 ], [ %417, %412 ], !dbg !868
  call void @llvm.dbg.value(metadata i8* %422, metadata !558, metadata !DIExpression()) #33, !dbg !868
  %423 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %422) #33, !dbg !867
  %424 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !890
  %425 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !890
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !893
  %426 = load i8, i8* %17, align 1, !dbg !895, !tbaa !562
  %427 = icmp eq i8 %426, 45, !dbg !896
  call void @llvm.dbg.value(metadata i1 %427, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !893
  %428 = zext i1 %427 to i64
  %429 = getelementptr inbounds i8, i8* %17, i64 %428, !dbg !897
  call void @llvm.dbg.value(metadata i8* %429, metadata !556, metadata !DIExpression()) #33, !dbg !893
  %430 = call i64 @strlen(i8* noundef nonnull %429) #34, !dbg !898
  %431 = getelementptr inbounds i8, i8* %429, i64 %430, !dbg !899
  call void @llvm.dbg.value(metadata i8* %431, metadata !557, metadata !DIExpression()) #33, !dbg !893
  %432 = getelementptr inbounds i8, i8* %429, i64 -1, !dbg !900
  store i8 48, i8* %432, align 1, !dbg !901, !tbaa !562
  %433 = getelementptr inbounds i8, i8* %431, i64 -1, !dbg !902
  call void @llvm.dbg.value(metadata i8* %433, metadata !557, metadata !DIExpression()) #33, !dbg !893
  %434 = load i8, i8* %433, align 1, !dbg !903, !tbaa !562
  %435 = icmp eq i8 %434, 57, !dbg !904
  br i1 %435, label %436, label %441, !dbg !905

436:                                              ; preds = %421, %436
  %437 = phi i8* [ %438, %436 ], [ %433, %421 ]
  store i8 48, i8* %437, align 1, !dbg !906, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %437, metadata !557, metadata !DIExpression()) #33, !dbg !893
  %438 = getelementptr inbounds i8, i8* %437, i64 -1, !dbg !902
  call void @llvm.dbg.value(metadata i8* %438, metadata !557, metadata !DIExpression()) #33, !dbg !893
  %439 = load i8, i8* %438, align 1, !dbg !903, !tbaa !562
  %440 = icmp eq i8 %439, 57, !dbg !904
  br i1 %440, label %436, label %441, !dbg !905, !llvm.loop !907

441:                                              ; preds = %436, %421
  %442 = phi i8* [ %433, %421 ], [ %438, %436 ], !dbg !902
  %443 = phi i8 [ %434, %421 ], [ %439, %436 ], !dbg !903
  %444 = add i8 %443, 1, !dbg !909
  store i8 %444, i8* %442, align 1, !dbg !909, !tbaa !562
  %445 = icmp ult i8* %429, %442, !dbg !910
  %446 = select i1 %445, i8* %429, i8* %442, !dbg !910
  call void @llvm.dbg.value(metadata i8* %446, metadata !558, metadata !DIExpression()) #33, !dbg !893
  br i1 %427, label %447, label %450, !dbg !911

447:                                              ; preds = %441
  %448 = getelementptr inbounds i8, i8* %442, i64 -1, !dbg !912
  %449 = select i1 %445, i8* %432, i8* %448, !dbg !912
  call void @llvm.dbg.value(metadata i8* %449, metadata !558, metadata !DIExpression()) #33, !dbg !893
  store i8 45, i8* %449, align 1, !dbg !913, !tbaa !562
  br label %450, !dbg !914

450:                                              ; preds = %441, %447
  %451 = phi i8* [ %449, %447 ], [ %446, %441 ], !dbg !893
  call void @llvm.dbg.value(metadata i8* %451, metadata !558, metadata !DIExpression()) #33, !dbg !893
  %452 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef %451) #33, !dbg !890
  %453 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !915
  %454 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !915
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !916
  %455 = load i8, i8* %17, align 1, !dbg !918, !tbaa !562
  %456 = icmp eq i8 %455, 45, !dbg !919
  call void @llvm.dbg.value(metadata i1 %456, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !916
  %457 = zext i1 %456 to i64
  %458 = getelementptr inbounds i8, i8* %17, i64 %457, !dbg !920
  call void @llvm.dbg.value(metadata i8* %458, metadata !556, metadata !DIExpression()) #33, !dbg !916
  %459 = call i64 @strlen(i8* noundef nonnull %458) #34, !dbg !921
  %460 = getelementptr inbounds i8, i8* %458, i64 %459, !dbg !922
  call void @llvm.dbg.value(metadata i8* %460, metadata !557, metadata !DIExpression()) #33, !dbg !916
  %461 = getelementptr inbounds i8, i8* %458, i64 -1, !dbg !923
  store i8 48, i8* %461, align 1, !dbg !924, !tbaa !562
  %462 = getelementptr inbounds i8, i8* %460, i64 -1, !dbg !925
  call void @llvm.dbg.value(metadata i8* %462, metadata !557, metadata !DIExpression()) #33, !dbg !916
  %463 = load i8, i8* %462, align 1, !dbg !926, !tbaa !562
  %464 = icmp eq i8 %463, 57, !dbg !927
  br i1 %464, label %465, label %470, !dbg !928

465:                                              ; preds = %450, %465
  %466 = phi i8* [ %467, %465 ], [ %462, %450 ]
  store i8 48, i8* %466, align 1, !dbg !929, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %466, metadata !557, metadata !DIExpression()) #33, !dbg !916
  %467 = getelementptr inbounds i8, i8* %466, i64 -1, !dbg !925
  call void @llvm.dbg.value(metadata i8* %467, metadata !557, metadata !DIExpression()) #33, !dbg !916
  %468 = load i8, i8* %467, align 1, !dbg !926, !tbaa !562
  %469 = icmp eq i8 %468, 57, !dbg !927
  br i1 %469, label %465, label %470, !dbg !928, !llvm.loop !930

470:                                              ; preds = %465, %450
  %471 = phi i8* [ %462, %450 ], [ %467, %465 ], !dbg !925
  %472 = phi i8 [ %463, %450 ], [ %468, %465 ], !dbg !926
  %473 = add i8 %472, 1, !dbg !932
  store i8 %473, i8* %471, align 1, !dbg !932, !tbaa !562
  %474 = icmp ult i8* %458, %471, !dbg !933
  %475 = select i1 %474, i8* %458, i8* %471, !dbg !933
  call void @llvm.dbg.value(metadata i8* %475, metadata !558, metadata !DIExpression()) #33, !dbg !916
  br i1 %456, label %476, label %479, !dbg !934

476:                                              ; preds = %470
  %477 = getelementptr inbounds i8, i8* %471, i64 -1, !dbg !935
  %478 = select i1 %474, i8* %461, i8* %477, !dbg !935
  call void @llvm.dbg.value(metadata i8* %478, metadata !558, metadata !DIExpression()) #33, !dbg !916
  store i8 45, i8* %478, align 1, !dbg !936, !tbaa !562
  br label %479, !dbg !937

479:                                              ; preds = %470, %476
  %480 = phi i8* [ %478, %476 ], [ %475, %470 ], !dbg !916
  call void @llvm.dbg.value(metadata i8* %480, metadata !558, metadata !DIExpression()) #33, !dbg !916
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef %480) #33, !dbg !915
  %482 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !938
  %483 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !938
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !941
  %484 = load i8, i8* %17, align 1, !dbg !943, !tbaa !562
  %485 = icmp eq i8 %484, 45, !dbg !944
  call void @llvm.dbg.value(metadata i1 %485, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !941
  %486 = zext i1 %485 to i64
  %487 = getelementptr inbounds i8, i8* %17, i64 %486, !dbg !945
  call void @llvm.dbg.value(metadata i8* %487, metadata !556, metadata !DIExpression()) #33, !dbg !941
  %488 = call i64 @strlen(i8* noundef nonnull %487) #34, !dbg !946
  %489 = getelementptr inbounds i8, i8* %487, i64 %488, !dbg !947
  call void @llvm.dbg.value(metadata i8* %489, metadata !557, metadata !DIExpression()) #33, !dbg !941
  %490 = getelementptr inbounds i8, i8* %487, i64 -1, !dbg !948
  store i8 48, i8* %490, align 1, !dbg !949, !tbaa !562
  %491 = getelementptr inbounds i8, i8* %489, i64 -1, !dbg !950
  call void @llvm.dbg.value(metadata i8* %491, metadata !557, metadata !DIExpression()) #33, !dbg !941
  %492 = load i8, i8* %491, align 1, !dbg !951, !tbaa !562
  %493 = icmp eq i8 %492, 57, !dbg !952
  br i1 %493, label %494, label %499, !dbg !953

494:                                              ; preds = %479, %494
  %495 = phi i8* [ %496, %494 ], [ %491, %479 ]
  store i8 48, i8* %495, align 1, !dbg !954, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %495, metadata !557, metadata !DIExpression()) #33, !dbg !941
  %496 = getelementptr inbounds i8, i8* %495, i64 -1, !dbg !950
  call void @llvm.dbg.value(metadata i8* %496, metadata !557, metadata !DIExpression()) #33, !dbg !941
  %497 = load i8, i8* %496, align 1, !dbg !951, !tbaa !562
  %498 = icmp eq i8 %497, 57, !dbg !952
  br i1 %498, label %494, label %499, !dbg !953, !llvm.loop !955

499:                                              ; preds = %494, %479
  %500 = phi i8* [ %491, %479 ], [ %496, %494 ], !dbg !950
  %501 = phi i8 [ %492, %479 ], [ %497, %494 ], !dbg !951
  %502 = add i8 %501, 1, !dbg !957
  store i8 %502, i8* %500, align 1, !dbg !957, !tbaa !562
  %503 = icmp ult i8* %487, %500, !dbg !958
  %504 = select i1 %503, i8* %487, i8* %500, !dbg !958
  call void @llvm.dbg.value(metadata i8* %504, metadata !558, metadata !DIExpression()) #33, !dbg !941
  br i1 %485, label %505, label %508, !dbg !959

505:                                              ; preds = %499
  %506 = getelementptr inbounds i8, i8* %500, i64 -1, !dbg !960
  %507 = select i1 %503, i8* %490, i8* %506, !dbg !960
  call void @llvm.dbg.value(metadata i8* %507, metadata !558, metadata !DIExpression()) #33, !dbg !941
  store i8 45, i8* %507, align 1, !dbg !961, !tbaa !562
  br label %508, !dbg !962

508:                                              ; preds = %499, %505
  %509 = phi i8* [ %507, %505 ], [ %504, %499 ], !dbg !941
  call void @llvm.dbg.value(metadata i8* %509, metadata !558, metadata !DIExpression()) #33, !dbg !941
  %510 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef %509) #33, !dbg !938
  %511 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33, !dbg !963
  %512 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !963
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !964
  %513 = load i8, i8* %17, align 1, !dbg !966, !tbaa !562
  %514 = icmp eq i8 %513, 45, !dbg !967
  call void @llvm.dbg.value(metadata i1 %514, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !964
  %515 = zext i1 %514 to i64
  %516 = getelementptr inbounds i8, i8* %17, i64 %515, !dbg !968
  call void @llvm.dbg.value(metadata i8* %516, metadata !556, metadata !DIExpression()) #33, !dbg !964
  %517 = call i64 @strlen(i8* noundef nonnull %516) #34, !dbg !969
  %518 = getelementptr inbounds i8, i8* %516, i64 %517, !dbg !970
  call void @llvm.dbg.value(metadata i8* %518, metadata !557, metadata !DIExpression()) #33, !dbg !964
  %519 = getelementptr inbounds i8, i8* %516, i64 -1, !dbg !971
  store i8 48, i8* %519, align 1, !dbg !972, !tbaa !562
  %520 = getelementptr inbounds i8, i8* %518, i64 -1, !dbg !973
  call void @llvm.dbg.value(metadata i8* %520, metadata !557, metadata !DIExpression()) #33, !dbg !964
  %521 = load i8, i8* %520, align 1, !dbg !974, !tbaa !562
  %522 = icmp eq i8 %521, 57, !dbg !975
  br i1 %522, label %523, label %528, !dbg !976

523:                                              ; preds = %508, %523
  %524 = phi i8* [ %525, %523 ], [ %520, %508 ]
  store i8 48, i8* %524, align 1, !dbg !977, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %524, metadata !557, metadata !DIExpression()) #33, !dbg !964
  %525 = getelementptr inbounds i8, i8* %524, i64 -1, !dbg !973
  call void @llvm.dbg.value(metadata i8* %525, metadata !557, metadata !DIExpression()) #33, !dbg !964
  %526 = load i8, i8* %525, align 1, !dbg !974, !tbaa !562
  %527 = icmp eq i8 %526, 57, !dbg !975
  br i1 %527, label %523, label %528, !dbg !976, !llvm.loop !978

528:                                              ; preds = %523, %508
  %529 = phi i8* [ %520, %508 ], [ %525, %523 ], !dbg !973
  %530 = phi i8 [ %521, %508 ], [ %526, %523 ], !dbg !974
  %531 = add i8 %530, 1, !dbg !980
  store i8 %531, i8* %529, align 1, !dbg !980, !tbaa !562
  %532 = icmp ult i8* %516, %529, !dbg !981
  %533 = select i1 %532, i8* %516, i8* %529, !dbg !981
  call void @llvm.dbg.value(metadata i8* %533, metadata !558, metadata !DIExpression()) #33, !dbg !964
  br i1 %514, label %534, label %537, !dbg !982

534:                                              ; preds = %528
  %535 = getelementptr inbounds i8, i8* %529, i64 -1, !dbg !983
  %536 = select i1 %532, i8* %519, i8* %535, !dbg !983
  call void @llvm.dbg.value(metadata i8* %536, metadata !558, metadata !DIExpression()) #33, !dbg !964
  store i8 45, i8* %536, align 1, !dbg !984, !tbaa !562
  br label %537, !dbg !985

537:                                              ; preds = %528, %534
  %538 = phi i8* [ %536, %534 ], [ %533, %528 ], !dbg !964
  call void @llvm.dbg.value(metadata i8* %538, metadata !558, metadata !DIExpression()) #33, !dbg !964
  %539 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %538) #33, !dbg !963
  %540 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33, !dbg !986
  %541 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !986
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !987
  %542 = load i8, i8* %17, align 1, !dbg !989, !tbaa !562
  %543 = icmp eq i8 %542, 45, !dbg !990
  call void @llvm.dbg.value(metadata i1 %543, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !987
  %544 = zext i1 %543 to i64
  %545 = getelementptr inbounds i8, i8* %17, i64 %544, !dbg !991
  call void @llvm.dbg.value(metadata i8* %545, metadata !556, metadata !DIExpression()) #33, !dbg !987
  %546 = call i64 @strlen(i8* noundef nonnull %545) #34, !dbg !992
  %547 = getelementptr inbounds i8, i8* %545, i64 %546, !dbg !993
  call void @llvm.dbg.value(metadata i8* %547, metadata !557, metadata !DIExpression()) #33, !dbg !987
  %548 = getelementptr inbounds i8, i8* %545, i64 -1, !dbg !994
  store i8 48, i8* %548, align 1, !dbg !995, !tbaa !562
  %549 = getelementptr inbounds i8, i8* %547, i64 -1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %549, metadata !557, metadata !DIExpression()) #33, !dbg !987
  %550 = load i8, i8* %549, align 1, !dbg !997, !tbaa !562
  %551 = icmp eq i8 %550, 57, !dbg !998
  br i1 %551, label %552, label %557, !dbg !999

552:                                              ; preds = %537, %552
  %553 = phi i8* [ %554, %552 ], [ %549, %537 ]
  store i8 48, i8* %553, align 1, !dbg !1000, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %553, metadata !557, metadata !DIExpression()) #33, !dbg !987
  %554 = getelementptr inbounds i8, i8* %553, i64 -1, !dbg !996
  call void @llvm.dbg.value(metadata i8* %554, metadata !557, metadata !DIExpression()) #33, !dbg !987
  %555 = load i8, i8* %554, align 1, !dbg !997, !tbaa !562
  %556 = icmp eq i8 %555, 57, !dbg !998
  br i1 %556, label %552, label %557, !dbg !999, !llvm.loop !1001

557:                                              ; preds = %552, %537
  %558 = phi i8* [ %549, %537 ], [ %554, %552 ], !dbg !996
  %559 = phi i8 [ %550, %537 ], [ %555, %552 ], !dbg !997
  %560 = add i8 %559, 1, !dbg !1003
  store i8 %560, i8* %558, align 1, !dbg !1003, !tbaa !562
  %561 = icmp ult i8* %545, %558, !dbg !1004
  %562 = select i1 %561, i8* %545, i8* %558, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %562, metadata !558, metadata !DIExpression()) #33, !dbg !987
  br i1 %543, label %563, label %566, !dbg !1005

563:                                              ; preds = %557
  %564 = getelementptr inbounds i8, i8* %558, i64 -1, !dbg !1006
  %565 = select i1 %561, i8* %548, i8* %564, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %565, metadata !558, metadata !DIExpression()) #33, !dbg !987
  store i8 45, i8* %565, align 1, !dbg !1007, !tbaa !562
  br label %566, !dbg !1008

566:                                              ; preds = %557, %563
  %567 = phi i8* [ %565, %563 ], [ %562, %557 ], !dbg !987
  call void @llvm.dbg.value(metadata i8* %567, metadata !558, metadata !DIExpression()) #33, !dbg !987
  %568 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef %567) #33, !dbg !986
  %569 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #33, !dbg !1009
  %570 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1010
  %571 = load i8, i8* %17, align 1, !dbg !1012, !tbaa !562
  %572 = icmp eq i8 %571, 45, !dbg !1013
  call void @llvm.dbg.value(metadata i1 %572, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1010
  %573 = zext i1 %572 to i64
  %574 = getelementptr inbounds i8, i8* %17, i64 %573, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %574, metadata !556, metadata !DIExpression()) #33, !dbg !1010
  %575 = call i64 @strlen(i8* noundef nonnull %574) #34, !dbg !1015
  %576 = getelementptr inbounds i8, i8* %574, i64 %575, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %576, metadata !557, metadata !DIExpression()) #33, !dbg !1010
  %577 = getelementptr inbounds i8, i8* %574, i64 -1, !dbg !1017
  store i8 48, i8* %577, align 1, !dbg !1018, !tbaa !562
  %578 = getelementptr inbounds i8, i8* %576, i64 -1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %578, metadata !557, metadata !DIExpression()) #33, !dbg !1010
  %579 = load i8, i8* %578, align 1, !dbg !1020, !tbaa !562
  %580 = icmp eq i8 %579, 57, !dbg !1021
  br i1 %580, label %581, label %586, !dbg !1022

581:                                              ; preds = %566, %581
  %582 = phi i8* [ %583, %581 ], [ %578, %566 ]
  store i8 48, i8* %582, align 1, !dbg !1023, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %582, metadata !557, metadata !DIExpression()) #33, !dbg !1010
  %583 = getelementptr inbounds i8, i8* %582, i64 -1, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %583, metadata !557, metadata !DIExpression()) #33, !dbg !1010
  %584 = load i8, i8* %583, align 1, !dbg !1020, !tbaa !562
  %585 = icmp eq i8 %584, 57, !dbg !1021
  br i1 %585, label %581, label %586, !dbg !1022, !llvm.loop !1024

586:                                              ; preds = %581, %566
  %587 = phi i8* [ %578, %566 ], [ %583, %581 ], !dbg !1019
  %588 = phi i8 [ %579, %566 ], [ %584, %581 ], !dbg !1020
  %589 = add i8 %588, 1, !dbg !1026
  store i8 %589, i8* %587, align 1, !dbg !1026, !tbaa !562
  %590 = icmp ult i8* %574, %587, !dbg !1027
  %591 = select i1 %590, i8* %574, i8* %587, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %591, metadata !558, metadata !DIExpression()) #33, !dbg !1010
  br i1 %572, label %592, label %595, !dbg !1028

592:                                              ; preds = %586
  %593 = getelementptr inbounds i8, i8* %587, i64 -1, !dbg !1029
  %594 = select i1 %590, i8* %577, i8* %593, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %594, metadata !558, metadata !DIExpression()) #33, !dbg !1010
  store i8 45, i8* %594, align 1, !dbg !1030, !tbaa !562
  br label %595, !dbg !1031

595:                                              ; preds = %586, %592
  %596 = phi i8* [ %594, %592 ], [ %591, %586 ], !dbg !1010
  call void @llvm.dbg.value(metadata i8* %596, metadata !558, metadata !DIExpression()) #33, !dbg !1010
  %597 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* noundef %596) #33, !dbg !1009
  %598 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #33, !dbg !1032
  %599 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1035
  %600 = load i8, i8* %17, align 1, !dbg !1037, !tbaa !562
  %601 = icmp eq i8 %600, 45, !dbg !1038
  call void @llvm.dbg.value(metadata i1 %601, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1035
  %602 = zext i1 %601 to i64
  %603 = getelementptr inbounds i8, i8* %17, i64 %602, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %603, metadata !556, metadata !DIExpression()) #33, !dbg !1035
  %604 = call i64 @strlen(i8* noundef nonnull %603) #34, !dbg !1040
  %605 = getelementptr inbounds i8, i8* %603, i64 %604, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %605, metadata !557, metadata !DIExpression()) #33, !dbg !1035
  %606 = getelementptr inbounds i8, i8* %603, i64 -1, !dbg !1042
  store i8 48, i8* %606, align 1, !dbg !1043, !tbaa !562
  %607 = getelementptr inbounds i8, i8* %605, i64 -1, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %607, metadata !557, metadata !DIExpression()) #33, !dbg !1035
  %608 = load i8, i8* %607, align 1, !dbg !1045, !tbaa !562
  %609 = icmp eq i8 %608, 57, !dbg !1046
  br i1 %609, label %610, label %615, !dbg !1047

610:                                              ; preds = %595, %610
  %611 = phi i8* [ %612, %610 ], [ %607, %595 ]
  store i8 48, i8* %611, align 1, !dbg !1048, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %611, metadata !557, metadata !DIExpression()) #33, !dbg !1035
  %612 = getelementptr inbounds i8, i8* %611, i64 -1, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %612, metadata !557, metadata !DIExpression()) #33, !dbg !1035
  %613 = load i8, i8* %612, align 1, !dbg !1045, !tbaa !562
  %614 = icmp eq i8 %613, 57, !dbg !1046
  br i1 %614, label %610, label %615, !dbg !1047, !llvm.loop !1049

615:                                              ; preds = %610, %595
  %616 = phi i8* [ %607, %595 ], [ %612, %610 ], !dbg !1044
  %617 = phi i8 [ %608, %595 ], [ %613, %610 ], !dbg !1045
  %618 = add i8 %617, 1, !dbg !1051
  store i8 %618, i8* %616, align 1, !dbg !1051, !tbaa !562
  %619 = icmp ult i8* %603, %616, !dbg !1052
  %620 = select i1 %619, i8* %603, i8* %616, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %620, metadata !558, metadata !DIExpression()) #33, !dbg !1035
  br i1 %601, label %621, label %624, !dbg !1053

621:                                              ; preds = %615
  %622 = getelementptr inbounds i8, i8* %616, i64 -1, !dbg !1054
  %623 = select i1 %619, i8* %606, i8* %622, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %623, metadata !558, metadata !DIExpression()) #33, !dbg !1035
  store i8 45, i8* %623, align 1, !dbg !1055, !tbaa !562
  br label %624, !dbg !1056

624:                                              ; preds = %615, %621
  %625 = phi i8* [ %623, %621 ], [ %620, %615 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %625, metadata !558, metadata !DIExpression()) #33, !dbg !1035
  %626 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* noundef %625) #33, !dbg !1032
  %627 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !1057
  %628 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1058
  %629 = load i8, i8* %17, align 1, !dbg !1060, !tbaa !562
  %630 = icmp eq i8 %629, 45, !dbg !1061
  call void @llvm.dbg.value(metadata i1 %630, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1058
  %631 = zext i1 %630 to i64
  %632 = getelementptr inbounds i8, i8* %17, i64 %631, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %632, metadata !556, metadata !DIExpression()) #33, !dbg !1058
  %633 = call i64 @strlen(i8* noundef nonnull %632) #34, !dbg !1063
  %634 = getelementptr inbounds i8, i8* %632, i64 %633, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %634, metadata !557, metadata !DIExpression()) #33, !dbg !1058
  %635 = getelementptr inbounds i8, i8* %632, i64 -1, !dbg !1065
  store i8 48, i8* %635, align 1, !dbg !1066, !tbaa !562
  %636 = getelementptr inbounds i8, i8* %634, i64 -1, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %636, metadata !557, metadata !DIExpression()) #33, !dbg !1058
  %637 = load i8, i8* %636, align 1, !dbg !1068, !tbaa !562
  %638 = icmp eq i8 %637, 57, !dbg !1069
  br i1 %638, label %639, label %644, !dbg !1070

639:                                              ; preds = %624, %639
  %640 = phi i8* [ %641, %639 ], [ %636, %624 ]
  store i8 48, i8* %640, align 1, !dbg !1071, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %640, metadata !557, metadata !DIExpression()) #33, !dbg !1058
  %641 = getelementptr inbounds i8, i8* %640, i64 -1, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %641, metadata !557, metadata !DIExpression()) #33, !dbg !1058
  %642 = load i8, i8* %641, align 1, !dbg !1068, !tbaa !562
  %643 = icmp eq i8 %642, 57, !dbg !1069
  br i1 %643, label %639, label %644, !dbg !1070, !llvm.loop !1072

644:                                              ; preds = %639, %624
  %645 = phi i8* [ %636, %624 ], [ %641, %639 ], !dbg !1067
  %646 = phi i8 [ %637, %624 ], [ %642, %639 ], !dbg !1068
  %647 = add i8 %646, 1, !dbg !1074
  store i8 %647, i8* %645, align 1, !dbg !1074, !tbaa !562
  %648 = icmp ult i8* %632, %645, !dbg !1075
  %649 = select i1 %648, i8* %632, i8* %645, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %649, metadata !558, metadata !DIExpression()) #33, !dbg !1058
  br i1 %630, label %650, label %653, !dbg !1076

650:                                              ; preds = %644
  %651 = getelementptr inbounds i8, i8* %645, i64 -1, !dbg !1077
  %652 = select i1 %648, i8* %635, i8* %651, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %652, metadata !558, metadata !DIExpression()) #33, !dbg !1058
  store i8 45, i8* %652, align 1, !dbg !1078, !tbaa !562
  br label %653, !dbg !1079

653:                                              ; preds = %644, %650
  %654 = phi i8* [ %652, %650 ], [ %649, %644 ], !dbg !1058
  call void @llvm.dbg.value(metadata i8* %654, metadata !558, metadata !DIExpression()) #33, !dbg !1058
  %655 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* noundef %654) #33, !dbg !1057
  %656 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !1080
  %657 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1083
  %658 = load i8, i8* %17, align 1, !dbg !1085, !tbaa !562
  %659 = icmp eq i8 %658, 45, !dbg !1086
  call void @llvm.dbg.value(metadata i1 %659, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1083
  %660 = zext i1 %659 to i64
  %661 = getelementptr inbounds i8, i8* %17, i64 %660, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %661, metadata !556, metadata !DIExpression()) #33, !dbg !1083
  %662 = call i64 @strlen(i8* noundef nonnull %661) #34, !dbg !1088
  %663 = getelementptr inbounds i8, i8* %661, i64 %662, !dbg !1089
  call void @llvm.dbg.value(metadata i8* %663, metadata !557, metadata !DIExpression()) #33, !dbg !1083
  %664 = getelementptr inbounds i8, i8* %661, i64 -1, !dbg !1090
  store i8 48, i8* %664, align 1, !dbg !1091, !tbaa !562
  %665 = getelementptr inbounds i8, i8* %663, i64 -1, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %665, metadata !557, metadata !DIExpression()) #33, !dbg !1083
  %666 = load i8, i8* %665, align 1, !dbg !1093, !tbaa !562
  %667 = icmp eq i8 %666, 57, !dbg !1094
  br i1 %667, label %668, label %673, !dbg !1095

668:                                              ; preds = %653, %668
  %669 = phi i8* [ %670, %668 ], [ %665, %653 ]
  store i8 48, i8* %669, align 1, !dbg !1096, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %669, metadata !557, metadata !DIExpression()) #33, !dbg !1083
  %670 = getelementptr inbounds i8, i8* %669, i64 -1, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %670, metadata !557, metadata !DIExpression()) #33, !dbg !1083
  %671 = load i8, i8* %670, align 1, !dbg !1093, !tbaa !562
  %672 = icmp eq i8 %671, 57, !dbg !1094
  br i1 %672, label %668, label %673, !dbg !1095, !llvm.loop !1097

673:                                              ; preds = %668, %653
  %674 = phi i8* [ %665, %653 ], [ %670, %668 ], !dbg !1092
  %675 = phi i8 [ %666, %653 ], [ %671, %668 ], !dbg !1093
  %676 = add i8 %675, 1, !dbg !1099
  store i8 %676, i8* %674, align 1, !dbg !1099, !tbaa !562
  %677 = icmp ult i8* %661, %674, !dbg !1100
  %678 = select i1 %677, i8* %661, i8* %674, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %678, metadata !558, metadata !DIExpression()) #33, !dbg !1083
  br i1 %659, label %679, label %682, !dbg !1101

679:                                              ; preds = %673
  %680 = getelementptr inbounds i8, i8* %674, i64 -1, !dbg !1102
  %681 = select i1 %677, i8* %664, i8* %680, !dbg !1102
  call void @llvm.dbg.value(metadata i8* %681, metadata !558, metadata !DIExpression()) #33, !dbg !1083
  store i8 45, i8* %681, align 1, !dbg !1103, !tbaa !562
  br label %682, !dbg !1104

682:                                              ; preds = %673, %679
  %683 = phi i8* [ %681, %679 ], [ %678, %673 ], !dbg !1083
  call void @llvm.dbg.value(metadata i8* %683, metadata !558, metadata !DIExpression()) #33, !dbg !1083
  %684 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef %683) #33, !dbg !1080
  %685 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !1105
  %686 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1106
  %687 = load i8, i8* %17, align 1, !dbg !1108, !tbaa !562
  %688 = icmp eq i8 %687, 45, !dbg !1109
  call void @llvm.dbg.value(metadata i1 %688, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1106
  %689 = zext i1 %688 to i64
  %690 = getelementptr inbounds i8, i8* %17, i64 %689, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %690, metadata !556, metadata !DIExpression()) #33, !dbg !1106
  %691 = call i64 @strlen(i8* noundef nonnull %690) #34, !dbg !1111
  %692 = getelementptr inbounds i8, i8* %690, i64 %691, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %692, metadata !557, metadata !DIExpression()) #33, !dbg !1106
  %693 = getelementptr inbounds i8, i8* %690, i64 -1, !dbg !1113
  store i8 48, i8* %693, align 1, !dbg !1114, !tbaa !562
  %694 = getelementptr inbounds i8, i8* %692, i64 -1, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %694, metadata !557, metadata !DIExpression()) #33, !dbg !1106
  %695 = load i8, i8* %694, align 1, !dbg !1116, !tbaa !562
  %696 = icmp eq i8 %695, 57, !dbg !1117
  br i1 %696, label %697, label %702, !dbg !1118

697:                                              ; preds = %682, %697
  %698 = phi i8* [ %699, %697 ], [ %694, %682 ]
  store i8 48, i8* %698, align 1, !dbg !1119, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %698, metadata !557, metadata !DIExpression()) #33, !dbg !1106
  %699 = getelementptr inbounds i8, i8* %698, i64 -1, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %699, metadata !557, metadata !DIExpression()) #33, !dbg !1106
  %700 = load i8, i8* %699, align 1, !dbg !1116, !tbaa !562
  %701 = icmp eq i8 %700, 57, !dbg !1117
  br i1 %701, label %697, label %702, !dbg !1118, !llvm.loop !1120

702:                                              ; preds = %697, %682
  %703 = phi i8* [ %694, %682 ], [ %699, %697 ], !dbg !1115
  %704 = phi i8 [ %695, %682 ], [ %700, %697 ], !dbg !1116
  %705 = add i8 %704, 1, !dbg !1122
  store i8 %705, i8* %703, align 1, !dbg !1122, !tbaa !562
  %706 = icmp ult i8* %690, %703, !dbg !1123
  %707 = select i1 %706, i8* %690, i8* %703, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %707, metadata !558, metadata !DIExpression()) #33, !dbg !1106
  br i1 %688, label %708, label %711, !dbg !1124

708:                                              ; preds = %702
  %709 = getelementptr inbounds i8, i8* %703, i64 -1, !dbg !1125
  %710 = select i1 %706, i8* %693, i8* %709, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %710, metadata !558, metadata !DIExpression()) #33, !dbg !1106
  store i8 45, i8* %710, align 1, !dbg !1126, !tbaa !562
  br label %711, !dbg !1127

711:                                              ; preds = %702, %708
  %712 = phi i8* [ %710, %708 ], [ %707, %702 ], !dbg !1106
  call void @llvm.dbg.value(metadata i8* %712, metadata !558, metadata !DIExpression()) #33, !dbg !1106
  %713 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef %712) #33, !dbg !1105
  %714 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !1128
  %715 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1131
  %716 = load i8, i8* %17, align 1, !dbg !1133, !tbaa !562
  %717 = icmp eq i8 %716, 45, !dbg !1134
  call void @llvm.dbg.value(metadata i1 %717, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1131
  %718 = zext i1 %717 to i64
  %719 = getelementptr inbounds i8, i8* %17, i64 %718, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %719, metadata !556, metadata !DIExpression()) #33, !dbg !1131
  %720 = call i64 @strlen(i8* noundef nonnull %719) #34, !dbg !1136
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %721, metadata !557, metadata !DIExpression()) #33, !dbg !1131
  %722 = getelementptr inbounds i8, i8* %719, i64 -1, !dbg !1138
  store i8 48, i8* %722, align 1, !dbg !1139, !tbaa !562
  %723 = getelementptr inbounds i8, i8* %721, i64 -1, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %723, metadata !557, metadata !DIExpression()) #33, !dbg !1131
  %724 = load i8, i8* %723, align 1, !dbg !1141, !tbaa !562
  %725 = icmp eq i8 %724, 57, !dbg !1142
  br i1 %725, label %726, label %731, !dbg !1143

726:                                              ; preds = %711, %726
  %727 = phi i8* [ %728, %726 ], [ %723, %711 ]
  store i8 48, i8* %727, align 1, !dbg !1144, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %727, metadata !557, metadata !DIExpression()) #33, !dbg !1131
  %728 = getelementptr inbounds i8, i8* %727, i64 -1, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %728, metadata !557, metadata !DIExpression()) #33, !dbg !1131
  %729 = load i8, i8* %728, align 1, !dbg !1141, !tbaa !562
  %730 = icmp eq i8 %729, 57, !dbg !1142
  br i1 %730, label %726, label %731, !dbg !1143, !llvm.loop !1145

731:                                              ; preds = %726, %711
  %732 = phi i8* [ %723, %711 ], [ %728, %726 ], !dbg !1140
  %733 = phi i8 [ %724, %711 ], [ %729, %726 ], !dbg !1141
  %734 = add i8 %733, 1, !dbg !1147
  store i8 %734, i8* %732, align 1, !dbg !1147, !tbaa !562
  %735 = icmp ult i8* %719, %732, !dbg !1148
  %736 = select i1 %735, i8* %719, i8* %732, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %736, metadata !558, metadata !DIExpression()) #33, !dbg !1131
  br i1 %717, label %737, label %740, !dbg !1149

737:                                              ; preds = %731
  %738 = getelementptr inbounds i8, i8* %732, i64 -1, !dbg !1150
  %739 = select i1 %735, i8* %722, i8* %738, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %739, metadata !558, metadata !DIExpression()) #33, !dbg !1131
  store i8 45, i8* %739, align 1, !dbg !1151, !tbaa !562
  br label %740, !dbg !1152

740:                                              ; preds = %731, %737
  %741 = phi i8* [ %739, %737 ], [ %736, %731 ], !dbg !1131
  call void @llvm.dbg.value(metadata i8* %741, metadata !558, metadata !DIExpression()) #33, !dbg !1131
  %742 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8* noundef %741) #33, !dbg !1128
  %743 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33, !dbg !1153
  %744 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1153
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1154
  %745 = load i8, i8* %17, align 1, !dbg !1156, !tbaa !562
  %746 = icmp eq i8 %745, 45, !dbg !1157
  call void @llvm.dbg.value(metadata i1 %746, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1154
  %747 = zext i1 %746 to i64
  %748 = getelementptr inbounds i8, i8* %17, i64 %747, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %748, metadata !556, metadata !DIExpression()) #33, !dbg !1154
  %749 = call i64 @strlen(i8* noundef nonnull %748) #34, !dbg !1159
  %750 = getelementptr inbounds i8, i8* %748, i64 %749, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %750, metadata !557, metadata !DIExpression()) #33, !dbg !1154
  %751 = getelementptr inbounds i8, i8* %748, i64 -1, !dbg !1161
  store i8 48, i8* %751, align 1, !dbg !1162, !tbaa !562
  %752 = getelementptr inbounds i8, i8* %750, i64 -1, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %752, metadata !557, metadata !DIExpression()) #33, !dbg !1154
  %753 = load i8, i8* %752, align 1, !dbg !1164, !tbaa !562
  %754 = icmp eq i8 %753, 57, !dbg !1165
  br i1 %754, label %755, label %760, !dbg !1166

755:                                              ; preds = %740, %755
  %756 = phi i8* [ %757, %755 ], [ %752, %740 ]
  store i8 48, i8* %756, align 1, !dbg !1167, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %756, metadata !557, metadata !DIExpression()) #33, !dbg !1154
  %757 = getelementptr inbounds i8, i8* %756, i64 -1, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %757, metadata !557, metadata !DIExpression()) #33, !dbg !1154
  %758 = load i8, i8* %757, align 1, !dbg !1164, !tbaa !562
  %759 = icmp eq i8 %758, 57, !dbg !1165
  br i1 %759, label %755, label %760, !dbg !1166, !llvm.loop !1168

760:                                              ; preds = %755, %740
  %761 = phi i8* [ %752, %740 ], [ %757, %755 ], !dbg !1163
  %762 = phi i8 [ %753, %740 ], [ %758, %755 ], !dbg !1164
  %763 = add i8 %762, 1, !dbg !1170
  store i8 %763, i8* %761, align 1, !dbg !1170, !tbaa !562
  %764 = icmp ult i8* %748, %761, !dbg !1171
  %765 = select i1 %764, i8* %748, i8* %761, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %765, metadata !558, metadata !DIExpression()) #33, !dbg !1154
  br i1 %746, label %766, label %769, !dbg !1172

766:                                              ; preds = %760
  %767 = getelementptr inbounds i8, i8* %761, i64 -1, !dbg !1173
  %768 = select i1 %764, i8* %751, i8* %767, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %768, metadata !558, metadata !DIExpression()) #33, !dbg !1154
  store i8 45, i8* %768, align 1, !dbg !1174, !tbaa !562
  br label %769, !dbg !1175

769:                                              ; preds = %760, %766
  %770 = phi i8* [ %768, %766 ], [ %765, %760 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8* %770, metadata !558, metadata !DIExpression()) #33, !dbg !1154
  %771 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %770) #33, !dbg !1153
  %772 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33, !dbg !1176
  %773 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1179
  %774 = load i8, i8* %17, align 1, !dbg !1181, !tbaa !562
  %775 = icmp eq i8 %774, 45, !dbg !1182
  call void @llvm.dbg.value(metadata i1 %775, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1179
  %776 = zext i1 %775 to i64
  %777 = getelementptr inbounds i8, i8* %17, i64 %776, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %777, metadata !556, metadata !DIExpression()) #33, !dbg !1179
  %778 = call i64 @strlen(i8* noundef nonnull %777) #34, !dbg !1184
  %779 = getelementptr inbounds i8, i8* %777, i64 %778, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %779, metadata !557, metadata !DIExpression()) #33, !dbg !1179
  %780 = getelementptr inbounds i8, i8* %777, i64 -1, !dbg !1186
  store i8 48, i8* %780, align 1, !dbg !1187, !tbaa !562
  %781 = getelementptr inbounds i8, i8* %779, i64 -1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %781, metadata !557, metadata !DIExpression()) #33, !dbg !1179
  %782 = load i8, i8* %781, align 1, !dbg !1189, !tbaa !562
  %783 = icmp eq i8 %782, 57, !dbg !1190
  br i1 %783, label %784, label %789, !dbg !1191

784:                                              ; preds = %769, %784
  %785 = phi i8* [ %786, %784 ], [ %781, %769 ]
  store i8 48, i8* %785, align 1, !dbg !1192, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %785, metadata !557, metadata !DIExpression()) #33, !dbg !1179
  %786 = getelementptr inbounds i8, i8* %785, i64 -1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %786, metadata !557, metadata !DIExpression()) #33, !dbg !1179
  %787 = load i8, i8* %786, align 1, !dbg !1189, !tbaa !562
  %788 = icmp eq i8 %787, 57, !dbg !1190
  br i1 %788, label %784, label %789, !dbg !1191, !llvm.loop !1193

789:                                              ; preds = %784, %769
  %790 = phi i8* [ %781, %769 ], [ %786, %784 ], !dbg !1188
  %791 = phi i8 [ %782, %769 ], [ %787, %784 ], !dbg !1189
  %792 = add i8 %791, 1, !dbg !1195
  store i8 %792, i8* %790, align 1, !dbg !1195, !tbaa !562
  %793 = icmp ult i8* %777, %790, !dbg !1196
  %794 = select i1 %793, i8* %777, i8* %790, !dbg !1196
  call void @llvm.dbg.value(metadata i8* %794, metadata !558, metadata !DIExpression()) #33, !dbg !1179
  br i1 %775, label %795, label %798, !dbg !1197

795:                                              ; preds = %789
  %796 = getelementptr inbounds i8, i8* %790, i64 -1, !dbg !1198
  %797 = select i1 %793, i8* %780, i8* %796, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %797, metadata !558, metadata !DIExpression()) #33, !dbg !1179
  store i8 45, i8* %797, align 1, !dbg !1199, !tbaa !562
  br label %798, !dbg !1200

798:                                              ; preds = %789, %795
  %799 = phi i8* [ %797, %795 ], [ %794, %789 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8* %799, metadata !558, metadata !DIExpression()) #33, !dbg !1179
  %800 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i8* noundef %799) #33, !dbg !1176
  %801 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33, !dbg !1201
  %802 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* noundef nonnull %17) #33, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %10, metadata !550, metadata !DIExpression()) #33, !dbg !1202
  %803 = load i8, i8* %17, align 1, !dbg !1204, !tbaa !562
  %804 = icmp eq i8 %803, 45, !dbg !1205
  call void @llvm.dbg.value(metadata i1 %804, metadata !555, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1202
  %805 = zext i1 %804 to i64
  %806 = getelementptr inbounds i8, i8* %17, i64 %805, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %806, metadata !556, metadata !DIExpression()) #33, !dbg !1202
  %807 = call i64 @strlen(i8* noundef nonnull %806) #34, !dbg !1207
  %808 = getelementptr inbounds i8, i8* %806, i64 %807, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %808, metadata !557, metadata !DIExpression()) #33, !dbg !1202
  %809 = getelementptr inbounds i8, i8* %806, i64 -1, !dbg !1209
  store i8 48, i8* %809, align 1, !dbg !1210, !tbaa !562
  %810 = getelementptr inbounds i8, i8* %808, i64 -1, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %810, metadata !557, metadata !DIExpression()) #33, !dbg !1202
  %811 = load i8, i8* %810, align 1, !dbg !1212, !tbaa !562
  %812 = icmp eq i8 %811, 57, !dbg !1213
  br i1 %812, label %813, label %818, !dbg !1214

813:                                              ; preds = %798, %813
  %814 = phi i8* [ %815, %813 ], [ %810, %798 ]
  store i8 48, i8* %814, align 1, !dbg !1215, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %814, metadata !557, metadata !DIExpression()) #33, !dbg !1202
  %815 = getelementptr inbounds i8, i8* %814, i64 -1, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %815, metadata !557, metadata !DIExpression()) #33, !dbg !1202
  %816 = load i8, i8* %815, align 1, !dbg !1212, !tbaa !562
  %817 = icmp eq i8 %816, 57, !dbg !1213
  br i1 %817, label %813, label %818, !dbg !1214, !llvm.loop !1216

818:                                              ; preds = %813, %798
  %819 = phi i8* [ %810, %798 ], [ %815, %813 ], !dbg !1211
  %820 = phi i8 [ %811, %798 ], [ %816, %813 ], !dbg !1212
  %821 = add i8 %820, 1, !dbg !1218
  store i8 %821, i8* %819, align 1, !dbg !1218, !tbaa !562
  %822 = icmp ult i8* %806, %819, !dbg !1219
  %823 = select i1 %822, i8* %806, i8* %819, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %823, metadata !558, metadata !DIExpression()) #33, !dbg !1202
  br i1 %804, label %824, label %827, !dbg !1220

824:                                              ; preds = %818
  %825 = getelementptr inbounds i8, i8* %819, i64 -1, !dbg !1221
  %826 = select i1 %822, i8* %809, i8* %825, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %826, metadata !558, metadata !DIExpression()) #33, !dbg !1202
  store i8 45, i8* %826, align 1, !dbg !1222, !tbaa !562
  br label %827, !dbg !1223

827:                                              ; preds = %818, %824
  %828 = phi i8* [ %826, %824 ], [ %823, %818 ], !dbg !1202
  call void @llvm.dbg.value(metadata i8* %828, metadata !558, metadata !DIExpression()) #33, !dbg !1202
  %829 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8* noundef %828) #33, !dbg !1201
  %830 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #33, !dbg !1224
  call void @llvm.dbg.value(metadata float 0x3810000000000000, metadata !1225, metadata !DIExpression()) #33, !dbg !1235
  %831 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i64 0, i64 0, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %831) #33, !dbg !1237
  call void @llvm.dbg.declare(metadata [31 x i8]* %8, metadata !1231, metadata !DIExpression()) #33, !dbg !1237
  %832 = call i32 @ftoastr(i8* noundef nonnull %831, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef 0x3810000000000000) #33, !dbg !1237
  %833 = call i32 @puts(i8* noundef nonnull %831) #33, !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %831) #33, !dbg !1237
  %834 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0)) #33, !dbg !1224
  call void @llvm.dbg.value(metadata float 0x47EFFFFFE0000000, metadata !1225, metadata !DIExpression()) #33, !dbg !1238
  %835 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i64 0, i64 0, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %835) #33, !dbg !1240
  call void @llvm.dbg.declare(metadata [31 x i8]* %7, metadata !1231, metadata !DIExpression()) #33, !dbg !1240
  %836 = call i32 @ftoastr(i8* noundef nonnull %835, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef 0x47EFFFFFE0000000) #33, !dbg !1240
  %837 = call i32 @puts(i8* noundef nonnull %835) #33, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %835) #33, !dbg !1240
  %838 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0)) #33, !dbg !1241
  call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !1242, metadata !DIExpression()) #33, !dbg !1252
  %839 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0, !dbg !1254
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %839) #33, !dbg !1254
  call void @llvm.dbg.declare(metadata [40 x i8]* %6, metadata !1248, metadata !DIExpression()) #33, !dbg !1254
  %840 = call i32 @dtoastr(i8* noundef nonnull %839, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef 0x10000000000000) #33, !dbg !1254
  %841 = call i32 @puts(i8* noundef nonnull %839) #33, !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %839) #33, !dbg !1254
  %842 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0)) #33, !dbg !1241
  call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1242, metadata !DIExpression()) #33, !dbg !1255
  %843 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0, !dbg !1257
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %843) #33, !dbg !1257
  call void @llvm.dbg.declare(metadata [40 x i8]* %5, metadata !1248, metadata !DIExpression()) #33, !dbg !1257
  %844 = call i32 @dtoastr(i8* noundef nonnull %843, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef 0x7FEFFFFFFFFFFFFF) #33, !dbg !1257
  %845 = call i32 @puts(i8* noundef nonnull %843) #33, !dbg !1257
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %843) #33, !dbg !1257
  %846 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i64 0, i64 0)) #33, !dbg !1258
  call void @llvm.dbg.value(metadata fp128 0xL00000000000000000001000000000000, metadata !1259, metadata !DIExpression()) #33, !dbg !1269
  %847 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i64 0, i64 0, !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %847) #33, !dbg !1271
  call void @llvm.dbg.declare(metadata [60 x i8]* %4, metadata !1265, metadata !DIExpression()) #33, !dbg !1271
  %848 = call i32 @ldtoastr(i8* noundef nonnull %847, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef 0xL00000000000000000001000000000000) #33, !dbg !1271
  %849 = call i32 @puts(i8* noundef nonnull %847) #33, !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %847) #33, !dbg !1271
  %850 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0)) #33, !dbg !1258
  call void @llvm.dbg.value(metadata fp128 0xLFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFF, metadata !1259, metadata !DIExpression()) #33, !dbg !1272
  %851 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %851) #33, !dbg !1274
  call void @llvm.dbg.declare(metadata [60 x i8]* %3, metadata !1265, metadata !DIExpression()) #33, !dbg !1274
  %852 = call i32 @ldtoastr(i8* noundef nonnull %851, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef 0xLFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFF) #33, !dbg !1274
  %853 = call i32 @puts(i8* noundef nonnull %851) #33, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %851) #33, !dbg !1274
  %854 = call i32 @__libc_current_sigrtmin() #33, !dbg !1275
  %855 = sext i32 %854 to i64, !dbg !1275
  %856 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i64 noundef %855) #33, !dbg !1275
  %857 = call i32 @__libc_current_sigrtmax() #33, !dbg !1276
  %858 = sext i32 %857 to i64, !dbg !1276
  %859 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i64 noundef %858) #33, !dbg !1276
  %860 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i64 noundef 262144) #33, !dbg !1277
  call void @errno_iterate(i32 (i8*, i32)* noundef nonnull @print_errno, i8* noundef null) #33, !dbg !1278
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), metadata !1279, metadata !DIExpression()) #33, !dbg !1286
  call void @llvm.dbg.value(metadata i32 95, metadata !1284, metadata !DIExpression()) #33, !dbg !1286
  %861 = call i8* @strerror(i32 noundef 95) #33, !dbg !1288
  %862 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %861) #33, !dbg !1288
  %863 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i8* noundef %862) #33, !dbg !1288
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), metadata !1279, metadata !DIExpression()) #33, !dbg !1290
  call void @llvm.dbg.value(metadata i32 11, metadata !1284, metadata !DIExpression()) #33, !dbg !1290
  %864 = call i8* @strerror(i32 noundef 11) #33, !dbg !1292
  %865 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %864) #33, !dbg !1292
  %866 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* noundef %865) #33, !dbg !1292
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), metadata !1279, metadata !DIExpression()) #33, !dbg !1293
  call void @llvm.dbg.value(metadata i32 35, metadata !1284, metadata !DIExpression()) #33, !dbg !1293
  %867 = call i8* @strerror(i32 noundef 35) #33, !dbg !1295
  %868 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %867) #33, !dbg !1295
  %869 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i8* noundef %868) #33, !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %10) #33, !dbg !1296
  ret i32 0, !dbg !1297
}

; Function Attrs: nounwind
declare !dbg !1298 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1301 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1304 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !1308 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @print_errno(i8* noundef %0, i32 noundef %1) #9 !dbg !1280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1279, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %1, metadata !1284, metadata !DIExpression()), !dbg !1311
  %3 = icmp eq i8* %0, null, !dbg !1312
  br i1 %3, label %4, label %7, !dbg !1312

4:                                                ; preds = %2
  %5 = tail call i8* @strerrorname_np(i32 noundef %1) #33, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %5, metadata !1285, metadata !DIExpression()), !dbg !1311
  %6 = icmp eq i8* %5, null, !dbg !1314
  br i1 %6, label %12, label %7, !dbg !1315

7:                                                ; preds = %2, %4
  %8 = phi i8* [ %5, %4 ], [ %0, %2 ]
  %9 = tail call i8* @strerror(i32 noundef %1) #33, !dbg !1316
  %10 = tail call i8* @quotearg_style(i32 noundef 3, i8* noundef %9) #33, !dbg !1316
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %8, i8* noundef %10) #33, !dbg !1316
  br label %12, !dbg !1316

12:                                               ; preds = %7, %4
  ret i32 0, !dbg !1317
}

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1318 i8* @strerrorname_np(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #11 !dbg !1322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i8* %0, i8** @file_name, align 8, !dbg !1326, !tbaa !387
  ret void, !dbg !1327
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1328 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1334, !tbaa !1335
  ret void, !dbg !1337
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #9 !dbg !1338 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1343, !tbaa !387
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1344
  %3 = icmp eq i32 %2, 0, !dbg !1345
  br i1 %3, label %22, label %4, !dbg !1346

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1347, !tbaa !1335, !range !1348
  %6 = icmp eq i8 %5, 0, !dbg !1347
  br i1 %6, label %11, label %7, !dbg !1349

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1350
  %9 = load i32, i32* %8, align 4, !dbg !1350, !tbaa !1351
  %10 = icmp eq i32 %9, 32, !dbg !1353
  br i1 %10, label %22, label %11, !dbg !1354

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.94, i64 0, i64 0), i32 noundef 5) #33, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %12, metadata !1340, metadata !DIExpression()), !dbg !1356
  %13 = load i8*, i8** @file_name, align 8, !dbg !1357, !tbaa !387
  %14 = icmp eq i8* %13, null, !dbg !1357
  %15 = tail call i32* @__errno_location() #36, !dbg !1359
  %16 = load i32, i32* %15, align 4, !dbg !1359, !tbaa !1351
  br i1 %14, label %19, label %17, !dbg !1360

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1361
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1361
  br label %20, !dbg !1361

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.96, i64 0, i64 0), i8* noundef %12) #33, !dbg !1362
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1363, !tbaa !1351
  tail call void @_exit(i32 noundef %21) #35, !dbg !1364
  unreachable, !dbg !1364

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1365, !tbaa !387
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1367
  %25 = icmp eq i32 %24, 0, !dbg !1368
  br i1 %25, label %28, label %26, !dbg !1369

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1370, !tbaa !1351
  tail call void @_exit(i32 noundef %27) #35, !dbg !1371
  unreachable, !dbg !1371

28:                                               ; preds = %22
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @dtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #14 !dbg !1373 {
  %6 = alloca [11 x i8], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1378, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %1, metadata !1379, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %2, metadata !1380, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !1381, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata double %4, metadata !1382, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata double %4, metadata !1383, metadata !DIExpression()), !dbg !1393
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #33, !dbg !1394
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !1384, metadata !DIExpression()), !dbg !1395
  %8 = fcmp olt double %4, 0.000000e+00, !dbg !1396
  %9 = fneg double %4, !dbg !1397
  %10 = select i1 %8, double %9, double %4, !dbg !1397
  call void @llvm.dbg.value(metadata double %10, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %7, metadata !1387, metadata !DIExpression()), !dbg !1393
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %11, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 37, i8* %7, align 4, !dbg !1399, !tbaa !562
  store i8 45, i8* %11, align 1, !dbg !1400, !tbaa !562
  %12 = and i32 %2, 1, !dbg !1401
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %14, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 43, i8* %14, align 1, !dbg !1403, !tbaa !562
  %15 = lshr i32 %2, 1, !dbg !1404
  %16 = and i32 %15, 1, !dbg !1404
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %18, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 32, i8* %18, align 1, !dbg !1406, !tbaa !562
  %19 = lshr i32 %2, 2, !dbg !1407
  %20 = and i32 %19, 1, !dbg !1407
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %22, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 48, i8* %22, align 1, !dbg !1409, !tbaa !562
  %23 = lshr i32 %2, 3, !dbg !1410
  %24 = and i32 %23, 1, !dbg !1410
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %26, metadata !1387, metadata !DIExpression()), !dbg !1393
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1412
  call void @llvm.dbg.value(metadata i8* %27, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 42, i8* %26, align 1, !dbg !1413, !tbaa !562
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %28, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 46, i8* %27, align 1, !dbg !1415, !tbaa !562
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %29, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 42, i8* %28, align 1, !dbg !1417, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %29, metadata !1387, metadata !DIExpression()), !dbg !1393
  %30 = and i32 %2, 16, !dbg !1418
  %31 = icmp eq i32 %30, 0, !dbg !1419
  %32 = select i1 %31, i8 103, i8 71, !dbg !1419
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %33, metadata !1387, metadata !DIExpression()), !dbg !1393
  store i8 %32, i8* %29, align 1, !dbg !1421, !tbaa !562
  store i8 0, i8* %33, align 1, !dbg !1422, !tbaa !562
  %34 = fcmp olt double %10, 0x10000000000000, !dbg !1423
  %35 = select i1 %34, i32 1, i32 15, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %35, metadata !1388, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %35, metadata !1388, metadata !DIExpression()), !dbg !1425
  %36 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %35, double noundef %4) #33, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %36, metadata !1390, metadata !DIExpression()), !dbg !1427
  %37 = icmp slt i32 %36, 0, !dbg !1428
  br i1 %37, label %52, label %38, !dbg !1430

38:                                               ; preds = %5, %46
  %39 = phi i32 [ %48, %46 ], [ %36, %5 ]
  %40 = phi i32 [ %47, %46 ], [ %35, %5 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !1388, metadata !DIExpression()), !dbg !1425
  %41 = zext i32 %39 to i64, !dbg !1431
  %42 = icmp ult i64 %41, %1, !dbg !1432
  br i1 %42, label %43, label %46, !dbg !1433

43:                                               ; preds = %38
  %44 = call double @strtod(i8* nocapture noundef %0, i8** noundef null) #33, !dbg !1434
  %45 = fcmp oeq double %44, %4, !dbg !1435
  br i1 %45, label %52, label %46, !dbg !1436

46:                                               ; preds = %43, %38
  %47 = add nuw nsw i32 %40, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %47, metadata !1388, metadata !DIExpression()), !dbg !1425
  %48 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %47, double noundef %4) #33, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %48, metadata !1390, metadata !DIExpression()), !dbg !1427
  %49 = icmp slt i32 %48, 0, !dbg !1428
  %50 = icmp ugt i32 %40, 15
  %51 = or i1 %50, %49, !dbg !1430
  br i1 %51, label %52, label %38, !dbg !1430, !llvm.loop !1438

52:                                               ; preds = %46, %43, %5
  %53 = phi i32 [ %36, %5 ], [ %39, %43 ], [ %48, %46 ], !dbg !1426
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #33, !dbg !1441
  ret i32 %53, !dbg !1441
}

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @errno_iterate(i32 (i8*, i32)* noundef readonly %0, i8* noundef %1) local_unnamed_addr #9 !dbg !1442 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32)* %0, metadata !1449, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8* %1, metadata !1450, metadata !DIExpression()), !dbg !1451
  %3 = tail call i32 %0(i8* noundef %1, i32 noundef 33) #33, !dbg !1452
  %4 = icmp eq i32 %3, 0, !dbg !1452
  br i1 %4, label %5, label %394, !dbg !1454

5:                                                ; preds = %2
  %6 = tail call i32 %0(i8* noundef %1, i32 noundef 84) #33, !dbg !1455
  %7 = icmp eq i32 %6, 0, !dbg !1455
  br i1 %7, label %8, label %394, !dbg !1457

8:                                                ; preds = %5
  %9 = tail call i32 %0(i8* noundef %1, i32 noundef 34) #33, !dbg !1458
  %10 = icmp eq i32 %9, 0, !dbg !1458
  br i1 %10, label %11, label %394, !dbg !1460

11:                                               ; preds = %8
  %12 = tail call i32 %0(i8* noundef %1, i32 noundef 7) #33, !dbg !1461
  %13 = icmp eq i32 %12, 0, !dbg !1461
  br i1 %13, label %14, label %394, !dbg !1463

14:                                               ; preds = %11
  %15 = tail call i32 %0(i8* noundef %1, i32 noundef 13) #33, !dbg !1464
  %16 = icmp eq i32 %15, 0, !dbg !1464
  br i1 %16, label %17, label %394, !dbg !1466

17:                                               ; preds = %14
  %18 = tail call i32 %0(i8* noundef %1, i32 noundef 98) #33, !dbg !1467
  %19 = icmp eq i32 %18, 0, !dbg !1467
  br i1 %19, label %20, label %394, !dbg !1469

20:                                               ; preds = %17
  %21 = tail call i32 %0(i8* noundef %1, i32 noundef 99) #33, !dbg !1470
  %22 = icmp eq i32 %21, 0, !dbg !1470
  br i1 %22, label %23, label %394, !dbg !1472

23:                                               ; preds = %20
  %24 = tail call i32 %0(i8* noundef %1, i32 noundef 97) #33, !dbg !1473
  %25 = icmp eq i32 %24, 0, !dbg !1473
  br i1 %25, label %26, label %394, !dbg !1475

26:                                               ; preds = %23
  %27 = tail call i32 %0(i8* noundef %1, i32 noundef 11) #33, !dbg !1476
  %28 = icmp eq i32 %27, 0, !dbg !1476
  br i1 %28, label %29, label %394, !dbg !1478

29:                                               ; preds = %26
  %30 = tail call i32 %0(i8* noundef %1, i32 noundef 114) #33, !dbg !1479
  %31 = icmp eq i32 %30, 0, !dbg !1479
  br i1 %31, label %32, label %394, !dbg !1481

32:                                               ; preds = %29
  %33 = tail call i32 %0(i8* noundef %1, i32 noundef 9) #33, !dbg !1482
  %34 = icmp eq i32 %33, 0, !dbg !1482
  br i1 %34, label %35, label %394, !dbg !1484

35:                                               ; preds = %32
  %36 = tail call i32 %0(i8* noundef %1, i32 noundef 74) #33, !dbg !1485
  %37 = icmp eq i32 %36, 0, !dbg !1485
  br i1 %37, label %38, label %394, !dbg !1487

38:                                               ; preds = %35
  %39 = tail call i32 %0(i8* noundef %1, i32 noundef 16) #33, !dbg !1488
  %40 = icmp eq i32 %39, 0, !dbg !1488
  br i1 %40, label %41, label %394, !dbg !1490

41:                                               ; preds = %38
  %42 = tail call i32 %0(i8* noundef %1, i32 noundef 125) #33, !dbg !1491
  %43 = icmp eq i32 %42, 0, !dbg !1491
  br i1 %43, label %44, label %394, !dbg !1493

44:                                               ; preds = %41
  %45 = tail call i32 %0(i8* noundef %1, i32 noundef 10) #33, !dbg !1494
  %46 = icmp eq i32 %45, 0, !dbg !1494
  br i1 %46, label %47, label %394, !dbg !1496

47:                                               ; preds = %44
  %48 = tail call i32 %0(i8* noundef %1, i32 noundef 103) #33, !dbg !1497
  %49 = icmp eq i32 %48, 0, !dbg !1497
  br i1 %49, label %50, label %394, !dbg !1499

50:                                               ; preds = %47
  %51 = tail call i32 %0(i8* noundef %1, i32 noundef 111) #33, !dbg !1500
  %52 = icmp eq i32 %51, 0, !dbg !1500
  br i1 %52, label %53, label %394, !dbg !1502

53:                                               ; preds = %50
  %54 = tail call i32 %0(i8* noundef %1, i32 noundef 104) #33, !dbg !1503
  %55 = icmp eq i32 %54, 0, !dbg !1503
  br i1 %55, label %56, label %394, !dbg !1505

56:                                               ; preds = %53
  %57 = tail call i32 %0(i8* noundef %1, i32 noundef 35) #33, !dbg !1506
  %58 = icmp eq i32 %57, 0, !dbg !1506
  br i1 %58, label %59, label %394, !dbg !1508

59:                                               ; preds = %56
  %60 = tail call i32 %0(i8* noundef %1, i32 noundef 89) #33, !dbg !1509
  %61 = icmp eq i32 %60, 0, !dbg !1509
  br i1 %61, label %62, label %394, !dbg !1511

62:                                               ; preds = %59
  %63 = tail call i32 %0(i8* noundef %1, i32 noundef 122) #33, !dbg !1512
  %64 = icmp eq i32 %63, 0, !dbg !1512
  br i1 %64, label %65, label %394, !dbg !1514

65:                                               ; preds = %62
  %66 = tail call i32 %0(i8* noundef %1, i32 noundef 17) #33, !dbg !1515
  %67 = icmp eq i32 %66, 0, !dbg !1515
  br i1 %67, label %68, label %394, !dbg !1517

68:                                               ; preds = %65
  %69 = tail call i32 %0(i8* noundef %1, i32 noundef 14) #33, !dbg !1518
  %70 = icmp eq i32 %69, 0, !dbg !1518
  br i1 %70, label %71, label %394, !dbg !1520

71:                                               ; preds = %68
  %72 = tail call i32 %0(i8* noundef %1, i32 noundef 27) #33, !dbg !1521
  %73 = icmp eq i32 %72, 0, !dbg !1521
  br i1 %73, label %74, label %394, !dbg !1523

74:                                               ; preds = %71
  %75 = tail call i32 %0(i8* noundef %1, i32 noundef 113) #33, !dbg !1524
  %76 = icmp eq i32 %75, 0, !dbg !1524
  br i1 %76, label %77, label %394, !dbg !1526

77:                                               ; preds = %74
  %78 = tail call i32 %0(i8* noundef %1, i32 noundef 43) #33, !dbg !1527
  %79 = icmp eq i32 %78, 0, !dbg !1527
  br i1 %79, label %80, label %394, !dbg !1529

80:                                               ; preds = %77
  %81 = tail call i32 %0(i8* noundef %1, i32 noundef 115) #33, !dbg !1530
  %82 = icmp eq i32 %81, 0, !dbg !1530
  br i1 %82, label %83, label %394, !dbg !1532

83:                                               ; preds = %80
  %84 = tail call i32 %0(i8* noundef %1, i32 noundef 4) #33, !dbg !1533
  %85 = icmp eq i32 %84, 0, !dbg !1533
  br i1 %85, label %86, label %394, !dbg !1535

86:                                               ; preds = %83
  %87 = tail call i32 %0(i8* noundef %1, i32 noundef 22) #33, !dbg !1536
  %88 = icmp eq i32 %87, 0, !dbg !1536
  br i1 %88, label %89, label %394, !dbg !1538

89:                                               ; preds = %86
  %90 = tail call i32 %0(i8* noundef %1, i32 noundef 5) #33, !dbg !1539
  %91 = icmp eq i32 %90, 0, !dbg !1539
  br i1 %91, label %92, label %394, !dbg !1541

92:                                               ; preds = %89
  %93 = tail call i32 %0(i8* noundef %1, i32 noundef 106) #33, !dbg !1542
  %94 = icmp eq i32 %93, 0, !dbg !1542
  br i1 %94, label %95, label %394, !dbg !1544

95:                                               ; preds = %92
  %96 = tail call i32 %0(i8* noundef %1, i32 noundef 21) #33, !dbg !1545
  %97 = icmp eq i32 %96, 0, !dbg !1545
  br i1 %97, label %98, label %394, !dbg !1547

98:                                               ; preds = %95
  %99 = tail call i32 %0(i8* noundef %1, i32 noundef 40) #33, !dbg !1548
  %100 = icmp eq i32 %99, 0, !dbg !1548
  br i1 %100, label %101, label %394, !dbg !1550

101:                                              ; preds = %98
  %102 = tail call i32 %0(i8* noundef %1, i32 noundef 24) #33, !dbg !1551
  %103 = icmp eq i32 %102, 0, !dbg !1551
  br i1 %103, label %104, label %394, !dbg !1553

104:                                              ; preds = %101
  %105 = tail call i32 %0(i8* noundef %1, i32 noundef 31) #33, !dbg !1554
  %106 = icmp eq i32 %105, 0, !dbg !1554
  br i1 %106, label %107, label %394, !dbg !1556

107:                                              ; preds = %104
  %108 = tail call i32 %0(i8* noundef %1, i32 noundef 90) #33, !dbg !1557
  %109 = icmp eq i32 %108, 0, !dbg !1557
  br i1 %109, label %110, label %394, !dbg !1559

110:                                              ; preds = %107
  %111 = tail call i32 %0(i8* noundef %1, i32 noundef 72) #33, !dbg !1560
  %112 = icmp eq i32 %111, 0, !dbg !1560
  br i1 %112, label %113, label %394, !dbg !1562

113:                                              ; preds = %110
  %114 = tail call i32 %0(i8* noundef %1, i32 noundef 36) #33, !dbg !1563
  %115 = icmp eq i32 %114, 0, !dbg !1563
  br i1 %115, label %116, label %394, !dbg !1565

116:                                              ; preds = %113
  %117 = tail call i32 %0(i8* noundef %1, i32 noundef 100) #33, !dbg !1566
  %118 = icmp eq i32 %117, 0, !dbg !1566
  br i1 %118, label %119, label %394, !dbg !1568

119:                                              ; preds = %116
  %120 = tail call i32 %0(i8* noundef %1, i32 noundef 102) #33, !dbg !1569
  %121 = icmp eq i32 %120, 0, !dbg !1569
  br i1 %121, label %122, label %394, !dbg !1571

122:                                              ; preds = %119
  %123 = tail call i32 %0(i8* noundef %1, i32 noundef 101) #33, !dbg !1572
  %124 = icmp eq i32 %123, 0, !dbg !1572
  br i1 %124, label %125, label %394, !dbg !1574

125:                                              ; preds = %122
  %126 = tail call i32 %0(i8* noundef %1, i32 noundef 23) #33, !dbg !1575
  %127 = icmp eq i32 %126, 0, !dbg !1575
  br i1 %127, label %128, label %394, !dbg !1577

128:                                              ; preds = %125
  %129 = tail call i32 %0(i8* noundef %1, i32 noundef 105) #33, !dbg !1578
  %130 = icmp eq i32 %129, 0, !dbg !1578
  br i1 %130, label %131, label %394, !dbg !1580

131:                                              ; preds = %128
  %132 = tail call i32 %0(i8* noundef %1, i32 noundef 61) #33, !dbg !1581
  %133 = icmp eq i32 %132, 0, !dbg !1581
  br i1 %133, label %134, label %394, !dbg !1583

134:                                              ; preds = %131
  %135 = tail call i32 %0(i8* noundef %1, i32 noundef 19) #33, !dbg !1584
  %136 = icmp eq i32 %135, 0, !dbg !1584
  br i1 %136, label %137, label %394, !dbg !1586

137:                                              ; preds = %134
  %138 = tail call i32 %0(i8* noundef %1, i32 noundef 2) #33, !dbg !1587
  %139 = icmp eq i32 %138, 0, !dbg !1587
  br i1 %139, label %140, label %394, !dbg !1589

140:                                              ; preds = %137
  %141 = tail call i32 %0(i8* noundef %1, i32 noundef 8) #33, !dbg !1590
  %142 = icmp eq i32 %141, 0, !dbg !1590
  br i1 %142, label %143, label %394, !dbg !1592

143:                                              ; preds = %140
  %144 = tail call i32 %0(i8* noundef %1, i32 noundef 37) #33, !dbg !1593
  %145 = icmp eq i32 %144, 0, !dbg !1593
  br i1 %145, label %146, label %394, !dbg !1595

146:                                              ; preds = %143
  %147 = tail call i32 %0(i8* noundef %1, i32 noundef 67) #33, !dbg !1596
  %148 = icmp eq i32 %147, 0, !dbg !1596
  br i1 %148, label %149, label %394, !dbg !1598

149:                                              ; preds = %146
  %150 = tail call i32 %0(i8* noundef %1, i32 noundef 12) #33, !dbg !1599
  %151 = icmp eq i32 %150, 0, !dbg !1599
  br i1 %151, label %152, label %394, !dbg !1601

152:                                              ; preds = %149
  %153 = tail call i32 %0(i8* noundef %1, i32 noundef 42) #33, !dbg !1602
  %154 = icmp eq i32 %153, 0, !dbg !1602
  br i1 %154, label %155, label %394, !dbg !1604

155:                                              ; preds = %152
  %156 = tail call i32 %0(i8* noundef %1, i32 noundef 92) #33, !dbg !1605
  %157 = icmp eq i32 %156, 0, !dbg !1605
  br i1 %157, label %158, label %394, !dbg !1607

158:                                              ; preds = %155
  %159 = tail call i32 %0(i8* noundef %1, i32 noundef 28) #33, !dbg !1608
  %160 = icmp eq i32 %159, 0, !dbg !1608
  br i1 %160, label %161, label %394, !dbg !1610

161:                                              ; preds = %158
  %162 = tail call i32 %0(i8* noundef %1, i32 noundef 63) #33, !dbg !1611
  %163 = icmp eq i32 %162, 0, !dbg !1611
  br i1 %163, label %164, label %394, !dbg !1613

164:                                              ; preds = %161
  %165 = tail call i32 %0(i8* noundef %1, i32 noundef 60) #33, !dbg !1614
  %166 = icmp eq i32 %165, 0, !dbg !1614
  br i1 %166, label %167, label %394, !dbg !1616

167:                                              ; preds = %164
  %168 = tail call i32 %0(i8* noundef %1, i32 noundef 38) #33, !dbg !1617
  %169 = icmp eq i32 %168, 0, !dbg !1617
  br i1 %169, label %170, label %394, !dbg !1619

170:                                              ; preds = %167
  %171 = tail call i32 %0(i8* noundef %1, i32 noundef 107) #33, !dbg !1620
  %172 = icmp eq i32 %171, 0, !dbg !1620
  br i1 %172, label %173, label %394, !dbg !1622

173:                                              ; preds = %170
  %174 = tail call i32 %0(i8* noundef %1, i32 noundef 20) #33, !dbg !1623
  %175 = icmp eq i32 %174, 0, !dbg !1623
  br i1 %175, label %176, label %394, !dbg !1625

176:                                              ; preds = %173
  %177 = tail call i32 %0(i8* noundef %1, i32 noundef 39) #33, !dbg !1626
  %178 = icmp eq i32 %177, 0, !dbg !1626
  br i1 %178, label %179, label %394, !dbg !1628

179:                                              ; preds = %176
  %180 = tail call i32 %0(i8* noundef %1, i32 noundef 131) #33, !dbg !1629
  %181 = icmp eq i32 %180, 0, !dbg !1629
  br i1 %181, label %182, label %394, !dbg !1631

182:                                              ; preds = %179
  %183 = tail call i32 %0(i8* noundef %1, i32 noundef 88) #33, !dbg !1632
  %184 = icmp eq i32 %183, 0, !dbg !1632
  br i1 %184, label %185, label %394, !dbg !1634

185:                                              ; preds = %182
  %186 = tail call i32 %0(i8* noundef %1, i32 noundef 25) #33, !dbg !1635
  %187 = icmp eq i32 %186, 0, !dbg !1635
  br i1 %187, label %188, label %394, !dbg !1637

188:                                              ; preds = %185
  %189 = tail call i32 %0(i8* noundef %1, i32 noundef 6) #33, !dbg !1638
  %190 = icmp eq i32 %189, 0, !dbg !1638
  br i1 %190, label %191, label %394, !dbg !1640

191:                                              ; preds = %188
  %192 = tail call i32 %0(i8* noundef %1, i32 noundef 95) #33, !dbg !1641
  %193 = icmp eq i32 %192, 0, !dbg !1641
  br i1 %193, label %194, label %394, !dbg !1643

194:                                              ; preds = %191
  %195 = tail call i32 %0(i8* noundef %1, i32 noundef 75) #33, !dbg !1644
  %196 = icmp eq i32 %195, 0, !dbg !1644
  br i1 %196, label %197, label %394, !dbg !1646

197:                                              ; preds = %194
  %198 = tail call i32 %0(i8* noundef %1, i32 noundef 130) #33, !dbg !1647
  %199 = icmp eq i32 %198, 0, !dbg !1647
  br i1 %199, label %200, label %394, !dbg !1649

200:                                              ; preds = %197
  %201 = tail call i32 %0(i8* noundef %1, i32 noundef 1) #33, !dbg !1650
  %202 = icmp eq i32 %201, 0, !dbg !1650
  br i1 %202, label %203, label %394, !dbg !1652

203:                                              ; preds = %200
  %204 = tail call i32 %0(i8* noundef %1, i32 noundef 32) #33, !dbg !1653
  %205 = icmp eq i32 %204, 0, !dbg !1653
  br i1 %205, label %206, label %394, !dbg !1655

206:                                              ; preds = %203
  %207 = tail call i32 %0(i8* noundef %1, i32 noundef 71) #33, !dbg !1656
  %208 = icmp eq i32 %207, 0, !dbg !1656
  br i1 %208, label %209, label %394, !dbg !1658

209:                                              ; preds = %206
  %210 = tail call i32 %0(i8* noundef %1, i32 noundef 93) #33, !dbg !1659
  %211 = icmp eq i32 %210, 0, !dbg !1659
  br i1 %211, label %212, label %394, !dbg !1661

212:                                              ; preds = %209
  %213 = tail call i32 %0(i8* noundef %1, i32 noundef 91) #33, !dbg !1662
  %214 = icmp eq i32 %213, 0, !dbg !1662
  br i1 %214, label %215, label %394, !dbg !1664

215:                                              ; preds = %212
  %216 = tail call i32 %0(i8* noundef %1, i32 noundef 30) #33, !dbg !1665
  %217 = icmp eq i32 %216, 0, !dbg !1665
  br i1 %217, label %218, label %394, !dbg !1667

218:                                              ; preds = %215
  %219 = tail call i32 %0(i8* noundef %1, i32 noundef 94) #33, !dbg !1668
  %220 = icmp eq i32 %219, 0, !dbg !1668
  br i1 %220, label %221, label %394, !dbg !1670

221:                                              ; preds = %218
  %222 = tail call i32 %0(i8* noundef %1, i32 noundef 29) #33, !dbg !1671
  %223 = icmp eq i32 %222, 0, !dbg !1671
  br i1 %223, label %224, label %394, !dbg !1673

224:                                              ; preds = %221
  %225 = tail call i32 %0(i8* noundef %1, i32 noundef 3) #33, !dbg !1674
  %226 = icmp eq i32 %225, 0, !dbg !1674
  br i1 %226, label %227, label %394, !dbg !1676

227:                                              ; preds = %224
  %228 = tail call i32 %0(i8* noundef %1, i32 noundef 116) #33, !dbg !1677
  %229 = icmp eq i32 %228, 0, !dbg !1677
  br i1 %229, label %230, label %394, !dbg !1679

230:                                              ; preds = %227
  %231 = tail call i32 %0(i8* noundef %1, i32 noundef 62) #33, !dbg !1680
  %232 = icmp eq i32 %231, 0, !dbg !1680
  br i1 %232, label %233, label %394, !dbg !1682

233:                                              ; preds = %230
  %234 = tail call i32 %0(i8* noundef %1, i32 noundef 110) #33, !dbg !1683
  %235 = icmp eq i32 %234, 0, !dbg !1683
  br i1 %235, label %236, label %394, !dbg !1685

236:                                              ; preds = %233
  %237 = tail call i32 %0(i8* noundef %1, i32 noundef 26) #33, !dbg !1686
  %238 = icmp eq i32 %237, 0, !dbg !1686
  br i1 %238, label %239, label %394, !dbg !1688

239:                                              ; preds = %236
  %240 = tail call i32 %0(i8* noundef %1, i32 noundef 18) #33, !dbg !1689
  %241 = icmp eq i32 %240, 0, !dbg !1689
  br i1 %241, label %242, label %394, !dbg !1691

242:                                              ; preds = %239
  %243 = tail call i32 %0(i8* noundef %1, i32 noundef 68) #33, !dbg !1692
  %244 = icmp eq i32 %243, 0, !dbg !1692
  br i1 %244, label %245, label %394, !dbg !1694

245:                                              ; preds = %242
  %246 = tail call i32 %0(i8* noundef %1, i32 noundef 52) #33, !dbg !1695
  %247 = icmp eq i32 %246, 0, !dbg !1695
  br i1 %247, label %248, label %394, !dbg !1697

248:                                              ; preds = %245
  %249 = tail call i32 %0(i8* noundef %1, i32 noundef 77) #33, !dbg !1698
  %250 = icmp eq i32 %249, 0, !dbg !1698
  br i1 %250, label %251, label %394, !dbg !1700

251:                                              ; preds = %248
  %252 = tail call i32 %0(i8* noundef %1, i32 noundef 53) #33, !dbg !1701
  %253 = icmp eq i32 %252, 0, !dbg !1701
  br i1 %253, label %254, label %394, !dbg !1703

254:                                              ; preds = %251
  %255 = tail call i32 %0(i8* noundef %1, i32 noundef 56) #33, !dbg !1704
  %256 = icmp eq i32 %255, 0, !dbg !1704
  br i1 %256, label %257, label %394, !dbg !1706

257:                                              ; preds = %254
  %258 = tail call i32 %0(i8* noundef %1, i32 noundef 57) #33, !dbg !1707
  %259 = icmp eq i32 %258, 0, !dbg !1707
  br i1 %259, label %260, label %394, !dbg !1709

260:                                              ; preds = %257
  %261 = tail call i32 %0(i8* noundef %1, i32 noundef 59) #33, !dbg !1710
  %262 = icmp eq i32 %261, 0, !dbg !1710
  br i1 %262, label %263, label %394, !dbg !1712

263:                                              ; preds = %260
  %264 = tail call i32 %0(i8* noundef %1, i32 noundef 44) #33, !dbg !1713
  %265 = icmp eq i32 %264, 0, !dbg !1713
  br i1 %265, label %266, label %394, !dbg !1715

266:                                              ; preds = %263
  %267 = tail call i32 %0(i8* noundef %1, i32 noundef 70) #33, !dbg !1716
  %268 = icmp eq i32 %267, 0, !dbg !1716
  br i1 %268, label %269, label %394, !dbg !1718

269:                                              ; preds = %266
  %270 = tail call i32 %0(i8* noundef %1, i32 noundef 73) #33, !dbg !1719
  %271 = icmp eq i32 %270, 0, !dbg !1719
  br i1 %271, label %272, label %394, !dbg !1721

272:                                              ; preds = %269
  %273 = tail call i32 %0(i8* noundef %1, i32 noundef 112) #33, !dbg !1722
  %274 = icmp eq i32 %273, 0, !dbg !1722
  br i1 %274, label %275, label %394, !dbg !1724

275:                                              ; preds = %272
  %276 = tail call i32 %0(i8* noundef %1, i32 noundef 133) #33, !dbg !1725
  %277 = icmp eq i32 %276, 0, !dbg !1725
  br i1 %277, label %278, label %394, !dbg !1727

278:                                              ; preds = %275
  %279 = tail call i32 %0(i8* noundef %1, i32 noundef 120) #33, !dbg !1728
  %280 = icmp eq i32 %279, 0, !dbg !1728
  br i1 %280, label %281, label %394, !dbg !1730

281:                                              ; preds = %278
  %282 = tail call i32 %0(i8* noundef %1, i32 noundef 127) #33, !dbg !1731
  %283 = icmp eq i32 %282, 0, !dbg !1731
  br i1 %283, label %284, label %394, !dbg !1733

284:                                              ; preds = %281
  %285 = tail call i32 %0(i8* noundef %1, i32 noundef 129) #33, !dbg !1734
  %286 = icmp eq i32 %285, 0, !dbg !1734
  br i1 %286, label %287, label %394, !dbg !1736

287:                                              ; preds = %284
  %288 = tail call i32 %0(i8* noundef %1, i32 noundef 128) #33, !dbg !1737
  %289 = icmp eq i32 %288, 0, !dbg !1737
  br i1 %289, label %290, label %394, !dbg !1739

290:                                              ; preds = %287
  %291 = tail call i32 %0(i8* noundef %1, i32 noundef 51) #33, !dbg !1740
  %292 = icmp eq i32 %291, 0, !dbg !1740
  br i1 %292, label %293, label %394, !dbg !1742

293:                                              ; preds = %290
  %294 = tail call i32 %0(i8* noundef %1, i32 noundef 45) #33, !dbg !1743
  %295 = icmp eq i32 %294, 0, !dbg !1743
  br i1 %295, label %296, label %394, !dbg !1745

296:                                              ; preds = %293
  %297 = tail call i32 %0(i8* noundef %1, i32 noundef 46) #33, !dbg !1746
  %298 = icmp eq i32 %297, 0, !dbg !1746
  br i1 %298, label %299, label %394, !dbg !1748

299:                                              ; preds = %296
  %300 = tail call i32 %0(i8* noundef %1, i32 noundef 47) #33, !dbg !1749
  %301 = icmp eq i32 %300, 0, !dbg !1749
  br i1 %301, label %302, label %394, !dbg !1751

302:                                              ; preds = %299
  %303 = tail call i32 %0(i8* noundef %1, i32 noundef 79) #33, !dbg !1752
  %304 = icmp eq i32 %303, 0, !dbg !1752
  br i1 %304, label %305, label %394, !dbg !1754

305:                                              ; preds = %302
  %306 = tail call i32 %0(i8* noundef %1, i32 noundef 80) #33, !dbg !1755
  %307 = icmp eq i32 %306, 0, !dbg !1755
  br i1 %307, label %308, label %394, !dbg !1757

308:                                              ; preds = %305
  %309 = tail call i32 %0(i8* noundef %1, i32 noundef 83) #33, !dbg !1758
  %310 = icmp eq i32 %309, 0, !dbg !1758
  br i1 %310, label %311, label %394, !dbg !1760

311:                                              ; preds = %308
  %312 = tail call i32 %0(i8* noundef %1, i32 noundef 82) #33, !dbg !1761
  %313 = icmp eq i32 %312, 0, !dbg !1761
  br i1 %313, label %314, label %394, !dbg !1763

314:                                              ; preds = %311
  %315 = tail call i32 %0(i8* noundef %1, i32 noundef 81) #33, !dbg !1764
  %316 = icmp eq i32 %315, 0, !dbg !1764
  br i1 %316, label %317, label %394, !dbg !1766

317:                                              ; preds = %314
  %318 = tail call i32 %0(i8* noundef %1, i32 noundef 48) #33, !dbg !1767
  %319 = icmp eq i32 %318, 0, !dbg !1767
  br i1 %319, label %320, label %394, !dbg !1769

320:                                              ; preds = %317
  %321 = tail call i32 %0(i8* noundef %1, i32 noundef 124) #33, !dbg !1770
  %322 = icmp eq i32 %321, 0, !dbg !1770
  br i1 %322, label %323, label %394, !dbg !1772

323:                                              ; preds = %320
  %324 = tail call i32 %0(i8* noundef %1, i32 noundef 119) #33, !dbg !1773
  %325 = icmp eq i32 %324, 0, !dbg !1773
  br i1 %325, label %326, label %394, !dbg !1775

326:                                              ; preds = %323
  %327 = tail call i32 %0(i8* noundef %1, i32 noundef 55) #33, !dbg !1776
  %328 = icmp eq i32 %327, 0, !dbg !1776
  br i1 %328, label %329, label %394, !dbg !1778

329:                                              ; preds = %326
  %330 = tail call i32 %0(i8* noundef %1, i32 noundef 50) #33, !dbg !1779
  %331 = icmp eq i32 %330, 0, !dbg !1779
  br i1 %331, label %332, label %394, !dbg !1781

332:                                              ; preds = %329
  %333 = tail call i32 %0(i8* noundef %1, i32 noundef 126) #33, !dbg !1782
  %334 = icmp eq i32 %333, 0, !dbg !1782
  br i1 %334, label %335, label %394, !dbg !1784

335:                                              ; preds = %332
  %336 = tail call i32 %0(i8* noundef %1, i32 noundef 123) #33, !dbg !1785
  %337 = icmp eq i32 %336, 0, !dbg !1785
  br i1 %337, label %338, label %394, !dbg !1787

338:                                              ; preds = %335
  %339 = tail call i32 %0(i8* noundef %1, i32 noundef 64) #33, !dbg !1788
  %340 = icmp eq i32 %339, 0, !dbg !1788
  br i1 %340, label %341, label %394, !dbg !1790

341:                                              ; preds = %338
  %342 = tail call i32 %0(i8* noundef %1, i32 noundef 65) #33, !dbg !1791
  %343 = icmp eq i32 %342, 0, !dbg !1791
  br i1 %343, label %344, label %394, !dbg !1793

344:                                              ; preds = %341
  %345 = tail call i32 %0(i8* noundef %1, i32 noundef 15) #33, !dbg !1794
  %346 = icmp eq i32 %345, 0, !dbg !1794
  br i1 %346, label %347, label %394, !dbg !1796

347:                                              ; preds = %344
  %348 = tail call i32 %0(i8* noundef %1, i32 noundef 118) #33, !dbg !1797
  %349 = icmp eq i32 %348, 0, !dbg !1797
  br i1 %349, label %350, label %394, !dbg !1799

350:                                              ; preds = %347
  %351 = tail call i32 %0(i8* noundef %1, i32 noundef 76) #33, !dbg !1800
  %352 = icmp eq i32 %351, 0, !dbg !1800
  br i1 %352, label %353, label %394, !dbg !1802

353:                                              ; preds = %350
  %354 = tail call i32 %0(i8* noundef %1, i32 noundef 96) #33, !dbg !1803
  %355 = icmp eq i32 %354, 0, !dbg !1803
  br i1 %355, label %356, label %394, !dbg !1805

356:                                              ; preds = %353
  %357 = tail call i32 %0(i8* noundef %1, i32 noundef 78) #33, !dbg !1806
  %358 = icmp eq i32 %357, 0, !dbg !1806
  br i1 %358, label %359, label %394, !dbg !1808

359:                                              ; preds = %356
  %360 = tail call i32 %0(i8* noundef %1, i32 noundef 66) #33, !dbg !1809
  %361 = icmp eq i32 %360, 0, !dbg !1809
  br i1 %361, label %362, label %394, !dbg !1811

362:                                              ; preds = %359
  %363 = tail call i32 %0(i8* noundef %1, i32 noundef 121) #33, !dbg !1812
  %364 = icmp eq i32 %363, 0, !dbg !1812
  br i1 %364, label %365, label %394, !dbg !1814

365:                                              ; preds = %362
  %366 = tail call i32 %0(i8* noundef %1, i32 noundef 85) #33, !dbg !1815
  %367 = icmp eq i32 %366, 0, !dbg !1815
  br i1 %367, label %368, label %394, !dbg !1817

368:                                              ; preds = %365
  %369 = tail call i32 %0(i8* noundef %1, i32 noundef 132) #33, !dbg !1818
  %370 = icmp eq i32 %369, 0, !dbg !1818
  br i1 %370, label %371, label %394, !dbg !1820

371:                                              ; preds = %368
  %372 = tail call i32 %0(i8* noundef %1, i32 noundef 108) #33, !dbg !1821
  %373 = icmp eq i32 %372, 0, !dbg !1821
  br i1 %373, label %374, label %394, !dbg !1823

374:                                              ; preds = %371
  %375 = tail call i32 %0(i8* noundef %1, i32 noundef 69) #33, !dbg !1824
  %376 = icmp eq i32 %375, 0, !dbg !1824
  br i1 %376, label %377, label %394, !dbg !1826

377:                                              ; preds = %374
  %378 = tail call i32 %0(i8* noundef %1, i32 noundef 86) #33, !dbg !1827
  %379 = icmp eq i32 %378, 0, !dbg !1827
  br i1 %379, label %380, label %394, !dbg !1829

380:                                              ; preds = %377
  %381 = tail call i32 %0(i8* noundef %1, i32 noundef 109) #33, !dbg !1830
  %382 = icmp eq i32 %381, 0, !dbg !1830
  br i1 %382, label %383, label %394, !dbg !1832

383:                                              ; preds = %380
  %384 = tail call i32 %0(i8* noundef %1, i32 noundef 117) #33, !dbg !1833
  %385 = icmp eq i32 %384, 0, !dbg !1833
  br i1 %385, label %386, label %394, !dbg !1835

386:                                              ; preds = %383
  %387 = tail call i32 %0(i8* noundef %1, i32 noundef 49) #33, !dbg !1836
  %388 = icmp eq i32 %387, 0, !dbg !1836
  br i1 %388, label %389, label %394, !dbg !1838

389:                                              ; preds = %386
  %390 = tail call i32 %0(i8* noundef %1, i32 noundef 87) #33, !dbg !1839
  %391 = icmp eq i32 %390, 0, !dbg !1839
  br i1 %391, label %392, label %394, !dbg !1841

392:                                              ; preds = %389
  %393 = tail call i32 %0(i8* noundef %1, i32 noundef 54) #33, !dbg !1842
  br label %394, !dbg !1844

394:                                              ; preds = %392, %389, %386, %383, %380, %377, %374, %371, %368, %365, %362, %359, %356, %353, %350, %347, %344, %341, %338, %335, %332, %329, %326, %323, %320, %317, %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  ret void, !dbg !1845
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1846 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1850, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %1, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %2, metadata !1852, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1853, metadata !DIExpression()), !dbg !1855
  tail call fastcc void @flush_stdout(), !dbg !1856
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1857, !tbaa !387
  %7 = icmp eq void ()* %6, null, !dbg !1857
  br i1 %7, label %9, label %8, !dbg !1859

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1860
  br label %13, !dbg !1860

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1861, !tbaa !387
  %11 = tail call i8* @getprogname() #34, !dbg !1861
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* noundef %11) #33, !dbg !1861
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1863
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1863
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1863, !tbaa.struct !1864
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1863
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1863
  ret void, !dbg !1865
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #9 !dbg !1866 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1868, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 1, metadata !1870, metadata !DIExpression()) #33, !dbg !1875
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1878
  %2 = icmp slt i32 %1, 0, !dbg !1879
  br i1 %2, label %6, label %3, !dbg !1880

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1881, !tbaa !387
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1881
  br label %6, !dbg !1881

6:                                                ; preds = %3, %0
  ret void, !dbg !1882
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #9 !dbg !1883 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1885, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %1, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %2, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1888, metadata !DIExpression()), !dbg !1890
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1891, !tbaa !387
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1892
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1893, metadata !DIExpression()) #33, !dbg !1936
  call void @llvm.dbg.value(metadata i8* %2, metadata !1934, metadata !DIExpression()) #33, !dbg !1936
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1938, !noalias !1939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1938
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1938
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1938, !noalias !1939
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1943, !tbaa !1351
  %12 = add i32 %11, 1, !dbg !1943
  store i32 %12, i32* @error_message_count, align 4, !dbg !1943, !tbaa !1351
  %13 = icmp eq i32 %1, 0, !dbg !1944
  br i1 %13, label %24, label %14, !dbg !1946

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1947, metadata !DIExpression()) #33, !dbg !1955
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1957
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1957
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1951, metadata !DIExpression()) #33, !dbg !1958
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %16, metadata !1950, metadata !DIExpression()) #33, !dbg !1955
  %17 = icmp eq i8* %16, null, !dbg !1960
  br i1 %17, label %18, label %20, !dbg !1962

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %19, metadata !1950, metadata !DIExpression()) #33, !dbg !1955
  br label %20, !dbg !1964

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8* %21, metadata !1950, metadata !DIExpression()) #33, !dbg !1955
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1965, !tbaa !387
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.104, i64 0, i64 0), i8* noundef %21) #33, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1966
  br label %24, !dbg !1967

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1968, !tbaa !387
  call void @llvm.dbg.value(metadata i32 10, metadata !1969, metadata !DIExpression()) #33, !dbg !1976
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1975, metadata !DIExpression()) #33, !dbg !1976
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1978
  %27 = load i8*, i8** %26, align 8, !dbg !1978, !tbaa !1979
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1978
  %29 = load i8*, i8** %28, align 8, !dbg !1978, !tbaa !1983
  %30 = icmp ult i8* %27, %29, !dbg !1978
  br i1 %30, label %33, label %31, !dbg !1978, !prof !1984

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1978
  br label %35, !dbg !1978

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1978
  store i8* %34, i8** %26, align 8, !dbg !1978, !tbaa !1979
  store i8 10, i8* %27, align 1, !dbg !1978, !tbaa !562
  br label %35, !dbg !1978

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1985, !tbaa !387
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1985
  %38 = icmp eq i32 %0, 0, !dbg !1986
  br i1 %38, label %40, label %39, !dbg !1988

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1989
  unreachable, !dbg !1989

40:                                               ; preds = %35
  ret void, !dbg !1990
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1991 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1994 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1997 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #9 !dbg !2001 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %1, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* %2, metadata !2007, metadata !DIExpression()), !dbg !2009
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2010
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2010
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2008, metadata !DIExpression()), !dbg !2011
  call void @llvm.va_start(i8* nonnull %6), !dbg !2012
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2013
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2013, !tbaa.struct !1864
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !2013
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2013
  call void @llvm.va_end(i8* nonnull %6), !dbg !2014
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2015
  ret void, !dbg !2015
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !21 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !41, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %1, metadata !42, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %2, metadata !43, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %3, metadata !44, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8* %4, metadata !45, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !46, metadata !DIExpression()), !dbg !2017
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2018, !tbaa !1351
  %9 = icmp eq i32 %8, 0, !dbg !2018
  br i1 %9, label %24, label %10, !dbg !2020

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2021, !tbaa !1351
  %12 = icmp eq i32 %11, %3, !dbg !2024
  br i1 %12, label %13, label %23, !dbg !2025

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2026, !tbaa !387
  %15 = icmp eq i8* %14, %2, !dbg !2027
  br i1 %15, label %39, label %16, !dbg !2028

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2029
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2030
  br i1 %19, label %20, label %23, !dbg !2030

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !2031
  %22 = icmp eq i32 %21, 0, !dbg !2032
  br i1 %22, label %39, label %23, !dbg !2033

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2034, !tbaa !387
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2035, !tbaa !1351
  br label %24, !dbg !2036

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2037
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2038, !tbaa !387
  %26 = icmp eq void ()* %25, null, !dbg !2038
  br i1 %26, label %28, label %27, !dbg !2040

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !2041
  br label %32, !dbg !2041

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2042, !tbaa !387
  %30 = tail call i8* @getprogname() #34, !dbg !2042
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.107, i64 0, i64 0), i8* noundef %30) #33, !dbg !2042
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2044, !tbaa !387
  %34 = icmp eq i8* %2, null, !dbg !2044
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.109, i64 0, i64 0), !dbg !2044
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !2044
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2045
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2045, !tbaa.struct !1864
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2045
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2045
  br label %39, !dbg !2046

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2046
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #9 !dbg !2047 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2051, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %2, metadata !2053, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %3, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* %4, metadata !2055, metadata !DIExpression()), !dbg !2057
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2058
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2058
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.va_start(i8* nonnull %8), !dbg !2060
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2061
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2061, !tbaa.struct !1864
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2061
  call void @llvm.va_end(i8* nonnull %8), !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2063
  ret void, !dbg !2063
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ftoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #14 !dbg !2064 {
  %6 = alloca [11 x i8], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2068, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %1, metadata !2069, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %2, metadata !2070, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %3, metadata !2071, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata float %4, metadata !2072, metadata !DIExpression()), !dbg !2082
  %7 = fpext float %4 to double, !dbg !2083
  call void @llvm.dbg.value(metadata double %7, metadata !2073, metadata !DIExpression()), !dbg !2082
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #33, !dbg !2084
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !2074, metadata !DIExpression()), !dbg !2085
  %9 = fcmp olt float %4, 0.000000e+00, !dbg !2086
  %10 = fneg float %4, !dbg !2087
  %11 = select i1 %9, float %10, float %4, !dbg !2087
  call void @llvm.dbg.value(metadata float %11, metadata !2075, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %8, metadata !2076, metadata !DIExpression()), !dbg !2082
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %12, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 37, i8* %8, align 4, !dbg !2089, !tbaa !562
  store i8 45, i8* %12, align 1, !dbg !2090, !tbaa !562
  %13 = and i32 %2, 1, !dbg !2091
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !2092
  call void @llvm.dbg.value(metadata i8* %15, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 43, i8* %15, align 1, !dbg !2093, !tbaa !562
  %16 = lshr i32 %2, 1, !dbg !2094
  %17 = and i32 %16, 1, !dbg !2094
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %19, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 32, i8* %19, align 1, !dbg !2096, !tbaa !562
  %20 = lshr i32 %2, 2, !dbg !2097
  %21 = and i32 %20, 1, !dbg !2097
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2098
  call void @llvm.dbg.value(metadata i8* %23, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 48, i8* %23, align 1, !dbg !2099, !tbaa !562
  %24 = lshr i32 %2, 3, !dbg !2100
  %25 = and i32 %24, 1, !dbg !2100
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %27, metadata !2076, metadata !DIExpression()), !dbg !2082
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2102
  call void @llvm.dbg.value(metadata i8* %28, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 42, i8* %27, align 1, !dbg !2103, !tbaa !562
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2104
  call void @llvm.dbg.value(metadata i8* %29, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 46, i8* %28, align 1, !dbg !2105, !tbaa !562
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %30, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 42, i8* %29, align 1, !dbg !2107, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %30, metadata !2076, metadata !DIExpression()), !dbg !2082
  %31 = and i32 %2, 16, !dbg !2108
  %32 = icmp eq i32 %31, 0, !dbg !2109
  %33 = select i1 %32, i8 103, i8 71, !dbg !2109
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %34, metadata !2076, metadata !DIExpression()), !dbg !2082
  store i8 %33, i8* %30, align 1, !dbg !2111, !tbaa !562
  store i8 0, i8* %34, align 1, !dbg !2112, !tbaa !562
  %35 = fcmp olt float %11, 0x3810000000000000, !dbg !2113
  %36 = select i1 %35, i32 1, i32 6, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %36, metadata !2077, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i32 %36, metadata !2077, metadata !DIExpression()), !dbg !2115
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %8, i32 noundef %3, i32 noundef %36, double noundef %7) #33, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %37, metadata !2079, metadata !DIExpression()), !dbg !2117
  %38 = icmp slt i32 %37, 0, !dbg !2118
  br i1 %38, label %53, label %39, !dbg !2120

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !2077, metadata !DIExpression()), !dbg !2115
  %42 = zext i32 %40 to i64, !dbg !2121
  %43 = icmp ult i64 %42, %1, !dbg !2122
  br i1 %43, label %44, label %47, !dbg !2123

44:                                               ; preds = %39
  %45 = call float @strtof(i8* nocapture noundef %0, i8** noundef null) #33, !dbg !2124
  %46 = fcmp oeq float %45, %4, !dbg !2125
  br i1 %46, label %53, label %47, !dbg !2126

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %48, metadata !2077, metadata !DIExpression()), !dbg !2115
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %8, i32 noundef %3, i32 noundef %48, double noundef %7) #33, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %49, metadata !2079, metadata !DIExpression()), !dbg !2117
  %50 = icmp slt i32 %49, 0, !dbg !2118
  %51 = icmp ugt i32 %41, 7
  %52 = or i1 %51, %50, !dbg !2120
  br i1 %52, label %53, label %39, !dbg !2120, !llvm.loop !2128

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #33, !dbg !2131
  ret i32 %54, !dbg !2131
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare float @strtof(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !2132 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2135, !tbaa !387
  ret i8* %1, !dbg !2136
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ldtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, fp128 noundef %4) local_unnamed_addr #14 !dbg !2137 {
  %6 = alloca [11 x i8], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2141, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %1, metadata !2142, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %2, metadata !2143, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %3, metadata !2144, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata fp128 %4, metadata !2145, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata fp128 %4, metadata !2146, metadata !DIExpression()), !dbg !2155
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0, !dbg !2156
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #33, !dbg !2156
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !2147, metadata !DIExpression()), !dbg !2157
  %8 = fcmp olt fp128 %4, 0xL00000000000000000000000000000000, !dbg !2158
  %9 = fneg fp128 %4, !dbg !2159
  %10 = select i1 %8, fp128 %9, fp128 %4, !dbg !2159
  call void @llvm.dbg.value(metadata fp128 %10, metadata !2148, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8* %7, metadata !2149, metadata !DIExpression()), !dbg !2155
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1, !dbg !2160
  call void @llvm.dbg.value(metadata i8* %11, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 37, i8* %7, align 4, !dbg !2161, !tbaa !562
  store i8 45, i8* %11, align 1, !dbg !2162, !tbaa !562
  %12 = and i32 %2, 1, !dbg !2163
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !2164
  call void @llvm.dbg.value(metadata i8* %14, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 43, i8* %14, align 1, !dbg !2165, !tbaa !562
  %15 = lshr i32 %2, 1, !dbg !2166
  %16 = and i32 %15, 1, !dbg !2166
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17, !dbg !2167
  call void @llvm.dbg.value(metadata i8* %18, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 32, i8* %18, align 1, !dbg !2168, !tbaa !562
  %19 = lshr i32 %2, 2, !dbg !2169
  %20 = and i32 %19, 1, !dbg !2169
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21, !dbg !2170
  call void @llvm.dbg.value(metadata i8* %22, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 48, i8* %22, align 1, !dbg !2171, !tbaa !562
  %23 = lshr i32 %2, 3, !dbg !2172
  %24 = and i32 %23, 1, !dbg !2172
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !2173
  call void @llvm.dbg.value(metadata i8* %26, metadata !2149, metadata !DIExpression()), !dbg !2155
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2174
  call void @llvm.dbg.value(metadata i8* %27, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 42, i8* %26, align 1, !dbg !2175, !tbaa !562
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %28, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 46, i8* %27, align 1, !dbg !2177, !tbaa !562
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2178
  call void @llvm.dbg.value(metadata i8* %29, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 42, i8* %28, align 1, !dbg !2179, !tbaa !562
  store i8 76, i8* %29, align 1, !dbg !2180, !tbaa !562
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %30, metadata !2149, metadata !DIExpression()), !dbg !2155
  %31 = and i32 %2, 16, !dbg !2182
  %32 = icmp eq i32 %31, 0, !dbg !2183
  %33 = select i1 %32, i8 103, i8 71, !dbg !2183
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !2184
  call void @llvm.dbg.value(metadata i8* %34, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i8 %33, i8* %30, align 1, !dbg !2185, !tbaa !562
  store i8 0, i8* %34, align 1, !dbg !2186, !tbaa !562
  %35 = fcmp olt fp128 %10, 0xL00000000000000000001000000000000, !dbg !2187
  %36 = select i1 %35, i32 1, i32 33, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %36, metadata !2150, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %36, metadata !2150, metadata !DIExpression()), !dbg !2189
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %36, fp128 noundef %4) #33, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %37, metadata !2152, metadata !DIExpression()), !dbg !2191
  %38 = icmp slt i32 %37, 0, !dbg !2192
  br i1 %38, label %53, label %39, !dbg !2194

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !2150, metadata !DIExpression()), !dbg !2189
  %42 = zext i32 %40 to i64, !dbg !2195
  %43 = icmp ult i64 %42, %1, !dbg !2196
  br i1 %43, label %44, label %47, !dbg !2197

44:                                               ; preds = %39
  %45 = call fp128 @strtold(i8* nocapture noundef %0, i8** noundef null) #33, !dbg !2198
  %46 = fcmp oeq fp128 %45, %4, !dbg !2199
  br i1 %46, label %53, label %47, !dbg !2200

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %48, metadata !2150, metadata !DIExpression()), !dbg !2189
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %48, fp128 noundef %4) #33, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %49, metadata !2152, metadata !DIExpression()), !dbg !2191
  %50 = icmp slt i32 %49, 0, !dbg !2192
  %51 = icmp ugt i32 %41, 34
  %52 = or i1 %51, %50, !dbg !2194
  br i1 %52, label %53, label %39, !dbg !2194, !llvm.loop !2202

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ], !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #33, !dbg !2205
  ret i32 %54, !dbg !2205
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare fp128 @strtold(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #9 !dbg !2206 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2211, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8** %1, metadata !2212, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %2, metadata !2213, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %3, metadata !2214, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %4, metadata !2215, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2216, metadata !DIExpression()), !dbg !2237
  %9 = load i32, i32* @opterr, align 4, !dbg !2238, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %9, metadata !2217, metadata !DIExpression()), !dbg !2237
  store i32 0, i32* @opterr, align 4, !dbg !2239, !tbaa !1351
  %10 = icmp eq i32 %0, 2, !dbg !2240
  br i1 %10, label %11, label %18, !dbg !2241

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #33, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %12, metadata !2218, metadata !DIExpression()), !dbg !2243
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !2244

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #33, !dbg !2245
  br label %18, !dbg !2246

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #33, !dbg !2247
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !2221, metadata !DIExpression()), !dbg !2248
  call void @llvm.va_start(i8* nonnull %15), !dbg !2249
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2250, !tbaa !387
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #33, !dbg !2251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !2251, !tbaa.struct !1864
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #33, !dbg !2251
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #33, !dbg !2251
  call void @exit(i32 noundef 0) #35, !dbg !2252
  unreachable, !dbg !2252

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !2253, !tbaa !1351
  store i32 0, i32* @optind, align 4, !dbg !2254, !tbaa !1351
  ret void, !dbg !2255
}

; Function Attrs: nounwind
declare !dbg !2256 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #9 !dbg !2262 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8** %1, metadata !2267, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %2, metadata !2268, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %3, metadata !2269, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %4, metadata !2270, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i1 %5, metadata !2271, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2281
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !2272, metadata !DIExpression()), !dbg !2281
  %10 = load i32, i32* @opterr, align 4, !dbg !2282, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %10, metadata !2273, metadata !DIExpression()), !dbg !2281
  store i32 1, i32* @opterr, align 4, !dbg !2283, !tbaa !1351
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %11, metadata !2274, metadata !DIExpression()), !dbg !2281
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #33, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %12, metadata !2275, metadata !DIExpression()), !dbg !2281
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !2286

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !2287
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !2287
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !2276, metadata !DIExpression()), !dbg !2288
  call void @llvm.va_start(i8* nonnull %14), !dbg !2289
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2290, !tbaa !387
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #33, !dbg !2291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !2291, !tbaa.struct !1864
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #33, !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #33, !dbg !2291
  call void @exit(i32 noundef 0) #35, !dbg !2292
  unreachable, !dbg !2292

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !2293, !tbaa !1351
  br label %19, !dbg !2294

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #33, !dbg !2295
  br label %21, !dbg !2296

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !2296, !tbaa !1351
  ret void, !dbg !2297
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !2298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()), !dbg !2303
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %2, metadata !2301, metadata !DIExpression()), !dbg !2303
  %3 = icmp eq i8* %2, null, !dbg !2305
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2305
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %5, metadata !2302, metadata !DIExpression()), !dbg !2303
  %6 = ptrtoint i8* %5 to i64, !dbg !2306
  %7 = ptrtoint i8* %0 to i64, !dbg !2306
  %8 = sub i64 %6, %7, !dbg !2306
  %9 = icmp sgt i64 %8, 6, !dbg !2308
  br i1 %9, label %10, label %19, !dbg !2309

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %11, metadata !2311, metadata !DIExpression()) #33, !dbg !2320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), metadata !2318, metadata !DIExpression()) #33, !dbg !2320
  call void @llvm.dbg.value(metadata i64 7, metadata !2319, metadata !DIExpression()) #33, !dbg !2320
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), i64 7) #33, !dbg !2322
  %13 = icmp eq i32 %12, 0, !dbg !2323
  br i1 %13, label %14, label %19, !dbg !2324

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2300, metadata !DIExpression()), !dbg !2303
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.129, i64 0, i64 0), i64 noundef 3) #34, !dbg !2325
  %16 = icmp eq i32 %15, 0, !dbg !2328
  %17 = select i1 %16, i64 3, i64 0, !dbg !2329
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2329
  br label %19, !dbg !2329

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2303
  call void @llvm.dbg.value(metadata i8* %21, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %20, metadata !2300, metadata !DIExpression()), !dbg !2303
  store i8* %20, i8** @program_name, align 8, !dbg !2330, !tbaa !387
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2331, !tbaa !387
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2332, !tbaa !387
  ret void, !dbg !2333
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #9 !dbg !82 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !90, metadata !DIExpression()), !dbg !2334
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %5, metadata !91, metadata !DIExpression()), !dbg !2334
  %6 = icmp eq i8* %5, %0, !dbg !2336
  br i1 %6, label %7, label %17, !dbg !2338

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2339
  %10 = bitcast i64* %4 to i8*, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2340
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !98, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2342, metadata !DIExpression()) #33, !dbg !2349
  call void @llvm.dbg.value(metadata i8* %10, metadata !2351, metadata !DIExpression()) #33, !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()) #33, !dbg !2359
  call void @llvm.dbg.value(metadata i64 8, metadata !2358, metadata !DIExpression()) #33, !dbg !2359
  store i64 0, i64* %4, align 8, !dbg !2361
  call void @llvm.dbg.value(metadata i32* %3, metadata !92, metadata !DIExpression(DW_OP_deref)), !dbg !2334
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !2362
  %12 = icmp eq i64 %11, 2, !dbg !2364
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !92, metadata !DIExpression()), !dbg !2334
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2365
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2366
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2334
  ret i8* %18, !dbg !2366
}

; Function Attrs: nounwind
declare !dbg !2367 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #9 !dbg !2373 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2378, metadata !DIExpression()), !dbg !2381
  %2 = tail call i32* @__errno_location() #36, !dbg !2382
  %3 = load i32, i32* %2, align 4, !dbg !2382, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %3, metadata !2379, metadata !DIExpression()), !dbg !2381
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2383
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2383
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2383
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !2384
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2380, metadata !DIExpression()), !dbg !2381
  store i32 %3, i32* %2, align 4, !dbg !2385, !tbaa !1351
  ret %struct.quoting_options* %8, !dbg !2386
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !2387 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2393, metadata !DIExpression()), !dbg !2394
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2395
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2395
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2396
  %5 = load i32, i32* %4, align 8, !dbg !2396, !tbaa !2397
  ret i32 %5, !dbg !2399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #11 !dbg !2400 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2405, metadata !DIExpression()), !dbg !2406
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2407
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2407
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2408
  store i32 %1, i32* %5, align 8, !dbg !2409, !tbaa !2397
  ret void, !dbg !2410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !2411 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2415, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %1, metadata !2416, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %2, metadata !2417, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 %1, metadata !2418, metadata !DIExpression()), !dbg !2423
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2424
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2424
  %6 = lshr i8 %1, 5, !dbg !2425
  %7 = zext i8 %6 to i64, !dbg !2425
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2426
  call void @llvm.dbg.value(metadata i32* %8, metadata !2419, metadata !DIExpression()), !dbg !2423
  %9 = and i8 %1, 31, !dbg !2427
  %10 = zext i8 %9 to i32, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %10, metadata !2421, metadata !DIExpression()), !dbg !2423
  %11 = load i32, i32* %8, align 4, !dbg !2428, !tbaa !1351
  %12 = lshr i32 %11, %10, !dbg !2429
  %13 = and i32 %12, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %13, metadata !2422, metadata !DIExpression()), !dbg !2423
  %14 = and i32 %2, 1, !dbg !2431
  %15 = xor i32 %13, %14, !dbg !2432
  %16 = shl i32 %15, %10, !dbg !2433
  %17 = xor i32 %16, %11, !dbg !2434
  store i32 %17, i32* %8, align 4, !dbg !2434, !tbaa !1351
  ret i32 %13, !dbg !2435
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2436 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %1, metadata !2441, metadata !DIExpression()), !dbg !2443
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2444
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2446
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2440, metadata !DIExpression()), !dbg !2443
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2447
  %6 = load i32, i32* %5, align 4, !dbg !2447, !tbaa !2448
  call void @llvm.dbg.value(metadata i32 %6, metadata !2442, metadata !DIExpression()), !dbg !2443
  store i32 %1, i32* %5, align 4, !dbg !2449, !tbaa !2448
  ret i32 %6, !dbg !2450
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #9 !dbg !2451 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2457, metadata !DIExpression()), !dbg !2458
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2459
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()), !dbg !2458
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2462
  store i32 10, i32* %6, align 8, !dbg !2463, !tbaa !2397
  %7 = icmp ne i8* %1, null, !dbg !2464
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2466
  br i1 %9, label %11, label %10, !dbg !2466

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2467
  unreachable, !dbg !2467

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2468
  store i8* %1, i8** %12, align 8, !dbg !2469, !tbaa !2470
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2471
  store i8* %2, i8** %13, align 8, !dbg !2472, !tbaa !2473
  ret void, !dbg !2474
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #9 !dbg !2475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2479, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %1, metadata !2480, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8* %2, metadata !2481, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %3, metadata !2482, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2483, metadata !DIExpression()), !dbg !2487
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2488
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2484, metadata !DIExpression()), !dbg !2487
  %8 = tail call i32* @__errno_location() #36, !dbg !2489
  %9 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %9, metadata !2485, metadata !DIExpression()), !dbg !2487
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2490
  %11 = load i32, i32* %10, align 8, !dbg !2490, !tbaa !2397
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2491
  %13 = load i32, i32* %12, align 4, !dbg !2491, !tbaa !2448
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2492
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2493
  %16 = load i8*, i8** %15, align 8, !dbg !2493, !tbaa !2470
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2494
  %18 = load i8*, i8** %17, align 8, !dbg !2494, !tbaa !2473
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %19, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i32 %9, i32* %8, align 4, !dbg !2496, !tbaa !1351
  ret i64 %19, !dbg !2497
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #9 !dbg !2498 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %1, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %2, metadata !2506, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %3, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %4, metadata !2508, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %5, metadata !2509, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32* %6, metadata !2510, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %7, metadata !2511, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %8, metadata !2512, metadata !DIExpression()), !dbg !2566
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !2567
  %18 = icmp eq i64 %17, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i1 %18, metadata !2513, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* null, metadata !2516, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2517, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %5, metadata !2519, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2521, metadata !DIExpression()), !dbg !2566
  %19 = and i32 %5, 2, !dbg !2569
  %20 = icmp ne i32 %19, 0, !dbg !2569
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
  br label %36, !dbg !2569

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2570
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2571
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2572
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2521, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %43, metadata !2517, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %42, metadata !2516, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %41, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %40, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %39, metadata !2512, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %38, metadata !2511, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %37, metadata !2508, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2559), !dbg !2573
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2566
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
  ], !dbg !2574

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 5, metadata !2508, metadata !DIExpression()), !dbg !2566
  br label %111, !dbg !2575

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 5, metadata !2508, metadata !DIExpression()), !dbg !2566
  br i1 %45, label %111, label %51, !dbg !2575

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2576
  br i1 %52, label %111, label %53, !dbg !2580

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2576, !tbaa !562
  br label %111, !dbg !2576

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.142, i64 0, i64 0), metadata !193, metadata !DIExpression()) #33, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %37, metadata !194, metadata !DIExpression()) #33, !dbg !2581
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.142, i64 0, i64 0), i32 noundef 5) #33, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %55, metadata !195, metadata !DIExpression()) #33, !dbg !2581
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.142, i64 0, i64 0), !dbg !2586
  br i1 %56, label %57, label %66, !dbg !2588

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2590
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !197, metadata !DIExpression()) #33, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2592, metadata !DIExpression()) #33, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %23, metadata !2600, metadata !DIExpression()) #33, !dbg !2605
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #33, !dbg !2605
  call void @llvm.dbg.value(metadata i64 8, metadata !2604, metadata !DIExpression()) #33, !dbg !2605
  store i64 0, i64* %13, align 8, !dbg !2607
  call void @llvm.dbg.value(metadata i32* %12, metadata !196, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2581
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !2608
  %59 = icmp eq i64 %58, 3, !dbg !2610
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !196, metadata !DIExpression()) #33, !dbg !2581
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2611
  %63 = icmp eq i32 %37, 9, !dbg !2611
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), !dbg !2611
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2612
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2581
  call void @llvm.dbg.value(metadata i8* %67, metadata !2511, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), metadata !193, metadata !DIExpression()) #33, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %37, metadata !194, metadata !DIExpression()) #33, !dbg !2613
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), i32 noundef 5) #33, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %68, metadata !195, metadata !DIExpression()) #33, !dbg !2613
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), !dbg !2616
  br i1 %69, label %70, label %79, !dbg !2617

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2619
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !197, metadata !DIExpression()) #33, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2592, metadata !DIExpression()) #33, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %26, metadata !2600, metadata !DIExpression()) #33, !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #33, !dbg !2623
  call void @llvm.dbg.value(metadata i64 8, metadata !2604, metadata !DIExpression()) #33, !dbg !2623
  store i64 0, i64* %11, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata i32* %10, metadata !196, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2613
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !2626
  %72 = icmp eq i64 %71, 3, !dbg !2627
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !196, metadata !DIExpression()) #33, !dbg !2613
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2628
  %76 = icmp eq i32 %37, 9, !dbg !2628
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), !dbg !2628
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2628
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2629
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2512, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %80, metadata !2511, metadata !DIExpression()), !dbg !2566
  br i1 %45, label %97, label %82, !dbg !2630

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2523, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 0, metadata !2514, metadata !DIExpression()), !dbg !2566
  %83 = load i8, i8* %80, align 1, !dbg !2632, !tbaa !562
  %84 = icmp eq i8 %83, 0, !dbg !2634
  br i1 %84, label %97, label %85, !dbg !2634

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2523, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %88, metadata !2514, metadata !DIExpression()), !dbg !2566
  %89 = icmp ult i64 %88, %48, !dbg !2635
  br i1 %89, label %90, label %92, !dbg !2638

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2635
  store i8 %86, i8* %91, align 1, !dbg !2635, !tbaa !562
  br label %92, !dbg !2635

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %93, metadata !2514, metadata !DIExpression()), !dbg !2566
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %94, metadata !2523, metadata !DIExpression()), !dbg !2631
  %95 = load i8, i8* %94, align 1, !dbg !2632, !tbaa !562
  %96 = icmp eq i8 %95, 0, !dbg !2634
  br i1 %96, label %97, label %85, !dbg !2634, !llvm.loop !2640

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2642
  call void @llvm.dbg.value(metadata i64 %98, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %81, metadata !2516, metadata !DIExpression()), !dbg !2566
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %99, metadata !2517, metadata !DIExpression()), !dbg !2566
  br label %111, !dbg !2644

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2518, metadata !DIExpression()), !dbg !2566
  br label %102, !dbg !2645

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2518, metadata !DIExpression()), !dbg !2566
  br i1 %45, label %102, label %105, !dbg !2646

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 2, metadata !2508, metadata !DIExpression()), !dbg !2566
  br label %111, !dbg !2647

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 2, metadata !2508, metadata !DIExpression()), !dbg !2566
  br i1 %45, label %111, label %105, !dbg !2647

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2648
  br i1 %107, label %111, label %108, !dbg !2652

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2648, !tbaa !562
  br label %111, !dbg !2648

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2519, metadata !DIExpression()), !dbg !2566
  br label %111, !dbg !2653

110:                                              ; preds = %36
  call void @abort() #35, !dbg !2654
  unreachable, !dbg !2654

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2642
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %102 ], !dbg !2566
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2566
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2519, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2518, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %117, metadata !2517, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %116, metadata !2516, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %115, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %114, metadata !2512, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %113, metadata !2511, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %112, metadata !2508, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2528, metadata !DIExpression()), !dbg !2655
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
  br label %132, !dbg !2656

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2642
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2570
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2655
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %139, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2521, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %135, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %134, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %133, metadata !2507, metadata !DIExpression()), !dbg !2566
  %141 = icmp eq i64 %133, -1, !dbg !2657
  br i1 %141, label %142, label %146, !dbg !2658

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2659
  %144 = load i8, i8* %143, align 1, !dbg !2659, !tbaa !562
  %145 = icmp eq i8 %144, 0, !dbg !2660
  br i1 %145, label %596, label %148, !dbg !2661

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2662
  br i1 %147, label %596, label %148, !dbg !2661

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2663
  br i1 %123, label %149, label %163, !dbg !2664

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2666
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2667
  br i1 %151, label %152, label %154, !dbg !2667

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %153, metadata !2507, metadata !DIExpression()), !dbg !2566
  br label %154, !dbg !2669

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2669
  call void @llvm.dbg.value(metadata i64 %155, metadata !2507, metadata !DIExpression()), !dbg !2566
  %156 = icmp ugt i64 %150, %155, !dbg !2670
  br i1 %156, label %163, label %157, !dbg !2671

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %158, metadata !2673, metadata !DIExpression()) #33, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %116, metadata !2676, metadata !DIExpression()) #33, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %117, metadata !2677, metadata !DIExpression()) #33, !dbg !2678
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !2680
  %160 = icmp ne i32 %159, 0, !dbg !2681
  %161 = or i1 %160, %125, !dbg !2682
  %162 = xor i1 %160, true, !dbg !2682
  br i1 %161, label %163, label %647, !dbg !2682

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %164, metadata !2507, metadata !DIExpression()), !dbg !2566
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2683
  %167 = load i8, i8* %166, align 1, !dbg !2683, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %167, metadata !2535, metadata !DIExpression()), !dbg !2663
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
  ], !dbg !2684

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2685

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2686

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2533, metadata !DIExpression()), !dbg !2663
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2690
  br i1 %171, label %188, label %172, !dbg !2690

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2692
  br i1 %173, label %174, label %176, !dbg !2696

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2692
  store i8 39, i8* %175, align 1, !dbg !2692, !tbaa !562
  br label %176, !dbg !2692

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %177, metadata !2514, metadata !DIExpression()), !dbg !2566
  %178 = icmp ult i64 %177, %140, !dbg !2697
  br i1 %178, label %179, label %181, !dbg !2700

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2697
  store i8 36, i8* %180, align 1, !dbg !2697, !tbaa !562
  br label %181, !dbg !2697

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %182, metadata !2514, metadata !DIExpression()), !dbg !2566
  %183 = icmp ult i64 %182, %140, !dbg !2701
  br i1 %183, label %184, label %186, !dbg !2704

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2701
  store i8 39, i8* %185, align 1, !dbg !2701, !tbaa !562
  br label %186, !dbg !2701

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %187, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %188, !dbg !2705

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2566
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %189, metadata !2514, metadata !DIExpression()), !dbg !2566
  %191 = icmp ult i64 %189, %140, !dbg !2706
  br i1 %191, label %192, label %194, !dbg !2709

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2706
  store i8 92, i8* %193, align 1, !dbg !2706, !tbaa !562
  br label %194, !dbg !2706

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %195, metadata !2514, metadata !DIExpression()), !dbg !2566
  br i1 %120, label %196, label %499, !dbg !2710

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2712
  %198 = icmp ult i64 %197, %164, !dbg !2713
  br i1 %198, label %199, label %456, !dbg !2714

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2715
  %201 = load i8, i8* %200, align 1, !dbg !2715, !tbaa !562
  %202 = add i8 %201, -48, !dbg !2716
  %203 = icmp ult i8 %202, 10, !dbg !2716
  br i1 %203, label %204, label %456, !dbg !2716

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2717
  br i1 %205, label %206, label %208, !dbg !2721

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2717
  store i8 48, i8* %207, align 1, !dbg !2717, !tbaa !562
  br label %208, !dbg !2717

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %209, metadata !2514, metadata !DIExpression()), !dbg !2566
  %210 = icmp ult i64 %209, %140, !dbg !2722
  br i1 %210, label %211, label %213, !dbg !2725

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2722
  store i8 48, i8* %212, align 1, !dbg !2722, !tbaa !562
  br label %213, !dbg !2722

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %214, metadata !2514, metadata !DIExpression()), !dbg !2566
  br label %456, !dbg !2726

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2727

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2728

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2729

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2731

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2733
  %221 = icmp ult i64 %220, %164, !dbg !2734
  br i1 %221, label %222, label %456, !dbg !2735

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2736
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2737
  %225 = load i8, i8* %224, align 1, !dbg !2737, !tbaa !562
  %226 = icmp eq i8 %225, 63, !dbg !2738
  br i1 %226, label %227, label %456, !dbg !2739

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2740
  %229 = load i8, i8* %228, align 1, !dbg !2740, !tbaa !562
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
  ], !dbg !2741

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2742

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %220, metadata !2528, metadata !DIExpression()), !dbg !2655
  %232 = icmp ult i64 %134, %140, !dbg !2744
  br i1 %232, label %233, label %235, !dbg !2747

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2744
  store i8 63, i8* %234, align 1, !dbg !2744, !tbaa !562
  br label %235, !dbg !2744

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %236, metadata !2514, metadata !DIExpression()), !dbg !2566
  %237 = icmp ult i64 %236, %140, !dbg !2748
  br i1 %237, label %238, label %240, !dbg !2751

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2748
  store i8 34, i8* %239, align 1, !dbg !2748, !tbaa !562
  br label %240, !dbg !2748

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %241, metadata !2514, metadata !DIExpression()), !dbg !2566
  %242 = icmp ult i64 %241, %140, !dbg !2752
  br i1 %242, label %243, label %245, !dbg !2755

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2752
  store i8 34, i8* %244, align 1, !dbg !2752, !tbaa !562
  br label %245, !dbg !2752

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %246, metadata !2514, metadata !DIExpression()), !dbg !2566
  %247 = icmp ult i64 %246, %140, !dbg !2756
  br i1 %247, label %248, label %250, !dbg !2759

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2756
  store i8 63, i8* %249, align 1, !dbg !2756, !tbaa !562
  br label %250, !dbg !2756

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %251, metadata !2514, metadata !DIExpression()), !dbg !2566
  br label %456, !dbg !2760

252:                                              ; preds = %163
  br label %263, !dbg !2761

253:                                              ; preds = %163
  br label %263, !dbg !2762

254:                                              ; preds = %163
  br label %261, !dbg !2763

255:                                              ; preds = %163
  br label %261, !dbg !2764

256:                                              ; preds = %163
  br label %263, !dbg !2765

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2766

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2767

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2770

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2772

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2773
  call void @llvm.dbg.label(metadata !2560), !dbg !2774
  br i1 %128, label %263, label %638, !dbg !2775

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2773
  call void @llvm.dbg.label(metadata !2562), !dbg !2777
  br i1 %118, label %510, label %467, !dbg !2778

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2779

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2780, !tbaa !562
  %268 = icmp eq i8 %267, 0, !dbg !2782
  br i1 %268, label %269, label %456, !dbg !2783

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2784
  br i1 %270, label %271, label %456, !dbg !2786

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2534, metadata !DIExpression()), !dbg !2663
  br label %272, !dbg !2787

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2534, metadata !DIExpression()), !dbg !2663
  br i1 %126, label %274, label %456, !dbg !2788

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2790

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2534, metadata !DIExpression()), !dbg !2663
  br i1 %126, label %276, label %456, !dbg !2791

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2792

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2795
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2797
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2797
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %282, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %281, metadata !2515, metadata !DIExpression()), !dbg !2566
  %283 = icmp ult i64 %134, %282, !dbg !2798
  br i1 %283, label %284, label %286, !dbg !2801

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2798
  store i8 39, i8* %285, align 1, !dbg !2798, !tbaa !562
  br label %286, !dbg !2798

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %287, metadata !2514, metadata !DIExpression()), !dbg !2566
  %288 = icmp ult i64 %287, %282, !dbg !2802
  br i1 %288, label %289, label %291, !dbg !2805

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2802
  store i8 92, i8* %290, align 1, !dbg !2802, !tbaa !562
  br label %291, !dbg !2802

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %292, metadata !2514, metadata !DIExpression()), !dbg !2566
  %293 = icmp ult i64 %292, %282, !dbg !2806
  br i1 %293, label %294, label %296, !dbg !2809

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2806
  store i8 39, i8* %295, align 1, !dbg !2806, !tbaa !562
  br label %296, !dbg !2806

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %297, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %456, !dbg !2810

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2811

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2536, metadata !DIExpression()), !dbg !2812
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !2813
  %301 = load i16*, i16** %300, align 8, !dbg !2813, !tbaa !387
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2813
  %304 = load i16, i16* %303, align 2, !dbg !2813, !tbaa !2815
  %305 = and i16 %304, 16384, !dbg !2813
  %306 = icmp ne i16 %305, 0, !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %349, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %312, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i1 %350, metadata !2534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  br label %352, !dbg !2817

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2540, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2592, metadata !DIExpression()) #33, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %32, metadata !2600, metadata !DIExpression()) #33, !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #33, !dbg !2822
  call void @llvm.dbg.value(metadata i64 8, metadata !2604, metadata !DIExpression()) #33, !dbg !2822
  store i64 0, i64* %14, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2812
  %308 = icmp eq i64 %164, -1, !dbg !2825
  br i1 %308, label %309, label %311, !dbg !2827

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %310, metadata !2507, metadata !DIExpression()), !dbg !2566
  br label %311, !dbg !2829

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2663
  call void @llvm.dbg.value(metadata i64 %312, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2830
  %313 = sub i64 %312, %139, !dbg !2831
  call void @llvm.dbg.value(metadata i32* %16, metadata !2543, metadata !DIExpression(DW_OP_deref)), !dbg !2832
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %314, metadata !2547, metadata !DIExpression()), !dbg !2832
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2834

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  %316 = icmp ugt i64 %312, %139, !dbg !2835
  br i1 %316, label %319, label %317, !dbg !2837

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %349, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %312, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i1 %350, metadata !2534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  br label %352, !dbg !2817

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2812
  br label %346, !dbg !2840

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2536, metadata !DIExpression()), !dbg !2812
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2842
  %323 = load i8, i8* %322, align 1, !dbg !2842, !tbaa !562
  %324 = icmp eq i8 %323, 0, !dbg !2837
  br i1 %324, label %348, label %325, !dbg !2843

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %326, metadata !2536, metadata !DIExpression()), !dbg !2812
  %327 = add i64 %326, %139, !dbg !2845
  %328 = icmp eq i64 %326, %313, !dbg !2835
  br i1 %328, label %348, label %319, !dbg !2837, !llvm.loop !2846

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2847
  call void @llvm.dbg.value(metadata i64 1, metadata !2548, metadata !DIExpression()), !dbg !2848
  br i1 %331, label %332, label %340, !dbg !2847

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2548, metadata !DIExpression()), !dbg !2848
  %334 = add i64 %333, %139, !dbg !2849
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2851
  %336 = load i8, i8* %335, align 1, !dbg !2851, !tbaa !562
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2852

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %338, metadata !2548, metadata !DIExpression()), !dbg !2848
  %339 = icmp eq i64 %338, %314, !dbg !2854
  br i1 %339, label %340, label %332, !dbg !2855, !llvm.loop !2856

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2858, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %341, metadata !2543, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %341, metadata !2860, metadata !DIExpression()) #33, !dbg !2868
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !2870
  %343 = icmp ne i32 %342, 0, !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %314, metadata !2536, metadata !DIExpression()), !dbg !2812
  br label %348, !dbg !2872

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2839
  call void @llvm.dbg.label(metadata !2565), !dbg !2873
  %345 = select i1 %118, i32 4, i32 2, !dbg !2874
  br label %643, !dbg !2874

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %349, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %312, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i1 %350, metadata !2534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  br label %352, !dbg !2817

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %349, metadata !2536, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %312, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i1 %350, metadata !2534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  %351 = icmp ugt i64 %349, 1, !dbg !2876
  br i1 %351, label %357, label %352, !dbg !2817

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2877
  br i1 %356, label %456, label %357, !dbg !2877

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %361, metadata !2556, metadata !DIExpression()), !dbg !2879
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2880

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2566
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2655
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2881
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2663
  call void @llvm.dbg.value(metadata i8 %369, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %368, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %366, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %364, metadata !2514, metadata !DIExpression()), !dbg !2566
  br i1 %362, label %414, label %370, !dbg !2882

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2887

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2533, metadata !DIExpression()), !dbg !2663
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2890
  br i1 %372, label %389, label %373, !dbg !2890

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2892
  br i1 %374, label %375, label %377, !dbg !2896

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2892
  store i8 39, i8* %376, align 1, !dbg !2892, !tbaa !562
  br label %377, !dbg !2892

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %378, metadata !2514, metadata !DIExpression()), !dbg !2566
  %379 = icmp ult i64 %378, %140, !dbg !2897
  br i1 %379, label %380, label %382, !dbg !2900

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2897
  store i8 36, i8* %381, align 1, !dbg !2897, !tbaa !562
  br label %382, !dbg !2897

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %383, metadata !2514, metadata !DIExpression()), !dbg !2566
  %384 = icmp ult i64 %383, %140, !dbg !2901
  br i1 %384, label %385, label %387, !dbg !2904

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2901
  store i8 39, i8* %386, align 1, !dbg !2901, !tbaa !562
  br label %387, !dbg !2901

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %388, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %389, !dbg !2905

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2566
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %390, metadata !2514, metadata !DIExpression()), !dbg !2566
  %392 = icmp ult i64 %390, %140, !dbg !2906
  br i1 %392, label %393, label %395, !dbg !2909

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2906
  store i8 92, i8* %394, align 1, !dbg !2906, !tbaa !562
  br label %395, !dbg !2906

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %396, metadata !2514, metadata !DIExpression()), !dbg !2566
  %397 = icmp ult i64 %396, %140, !dbg !2910
  br i1 %397, label %398, label %402, !dbg !2913

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2910
  %400 = or i8 %399, 48, !dbg !2910
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2910
  store i8 %400, i8* %401, align 1, !dbg !2910, !tbaa !562
  br label %402, !dbg !2910

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %403, metadata !2514, metadata !DIExpression()), !dbg !2566
  %404 = icmp ult i64 %403, %140, !dbg !2914
  br i1 %404, label %405, label %410, !dbg !2917

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2914
  %407 = and i8 %406, 7, !dbg !2914
  %408 = or i8 %407, 48, !dbg !2914
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2914
  store i8 %408, i8* %409, align 1, !dbg !2914, !tbaa !562
  br label %410, !dbg !2914

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %411, metadata !2514, metadata !DIExpression()), !dbg !2566
  %412 = and i8 %369, 7, !dbg !2918
  %413 = or i8 %412, 48, !dbg !2919
  call void @llvm.dbg.value(metadata i8 %413, metadata !2535, metadata !DIExpression()), !dbg !2663
  br label %421, !dbg !2920

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2921

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2922
  br i1 %416, label %417, label %419, !dbg !2927

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2922
  store i8 92, i8* %418, align 1, !dbg !2922, !tbaa !562
  br label %419, !dbg !2922

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %420, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2663
  br label %421, !dbg !2928

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2566
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2663
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2663
  call void @llvm.dbg.value(metadata i8 %426, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %425, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %422, metadata !2514, metadata !DIExpression()), !dbg !2566
  %427 = add i64 %366, 1, !dbg !2929
  %428 = icmp ugt i64 %361, %427, !dbg !2931
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2932

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2933
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2933
  br i1 %432, label %433, label %444, !dbg !2933

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2936
  br i1 %434, label %435, label %437, !dbg !2940

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2936
  store i8 39, i8* %436, align 1, !dbg !2936, !tbaa !562
  br label %437, !dbg !2936

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %438, metadata !2514, metadata !DIExpression()), !dbg !2566
  %439 = icmp ult i64 %438, %140, !dbg !2941
  br i1 %439, label %440, label %442, !dbg !2944

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2941
  store i8 39, i8* %441, align 1, !dbg !2941, !tbaa !562
  br label %442, !dbg !2941

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %443, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %444, !dbg !2945

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2946
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %445, metadata !2514, metadata !DIExpression()), !dbg !2566
  %447 = icmp ult i64 %445, %140, !dbg !2947
  br i1 %447, label %448, label %450, !dbg !2950

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2947
  store i8 %426, i8* %449, align 1, !dbg !2947, !tbaa !562
  br label %450, !dbg !2947

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %451, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %427, metadata !2528, metadata !DIExpression()), !dbg !2655
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2951
  %453 = load i8, i8* %452, align 1, !dbg !2951, !tbaa !562
  call void @llvm.dbg.value(metadata i8 %453, metadata !2535, metadata !DIExpression()), !dbg !2663
  br label %363, !dbg !2952, !llvm.loop !2953

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i1 %358, metadata !2534, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %425, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %366, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %422, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %360, metadata !2507, metadata !DIExpression()), !dbg !2566
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2956
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2566
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2570
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2655
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2663
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %465, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2534, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %462, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %459, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %458, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %457, metadata !2507, metadata !DIExpression()), !dbg !2566
  br i1 %121, label %478, label %467, !dbg !2957

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
  br i1 %131, label %479, label %499, !dbg !2959

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2960

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
  %490 = lshr i8 %481, 5, !dbg !2961
  %491 = zext i8 %490 to i64, !dbg !2961
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2962
  %493 = load i32, i32* %492, align 4, !dbg !2962, !tbaa !1351
  %494 = and i8 %481, 31, !dbg !2963
  %495 = zext i8 %494 to i32, !dbg !2963
  %496 = shl nuw i32 1, %495, !dbg !2964
  %497 = and i32 %493, %496, !dbg !2964
  %498 = icmp eq i32 %497, 0, !dbg !2964
  br i1 %498, label %499, label %510, !dbg !2965

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
  br i1 %165, label %510, label %546, !dbg !2966

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2956
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2566
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2570
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2967
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2663
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %518, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2534, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %516, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %513, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %512, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %511, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2563), !dbg !2968
  br i1 %119, label %638, label %520, !dbg !2969

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2533, metadata !DIExpression()), !dbg !2663
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2971
  br i1 %521, label %538, label %522, !dbg !2971

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2973
  br i1 %523, label %524, label %526, !dbg !2977

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2973
  store i8 39, i8* %525, align 1, !dbg !2973, !tbaa !562
  br label %526, !dbg !2973

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %527, metadata !2514, metadata !DIExpression()), !dbg !2566
  %528 = icmp ult i64 %527, %519, !dbg !2978
  br i1 %528, label %529, label %531, !dbg !2981

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2978
  store i8 36, i8* %530, align 1, !dbg !2978, !tbaa !562
  br label %531, !dbg !2978

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %532, metadata !2514, metadata !DIExpression()), !dbg !2566
  %533 = icmp ult i64 %532, %519, !dbg !2982
  br i1 %533, label %534, label %536, !dbg !2985

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2982
  store i8 39, i8* %535, align 1, !dbg !2982, !tbaa !562
  br label %536, !dbg !2982

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %537, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 1, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %538, !dbg !2986

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2663
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %539, metadata !2514, metadata !DIExpression()), !dbg !2566
  %541 = icmp ult i64 %539, %519, !dbg !2987
  br i1 %541, label %542, label %544, !dbg !2990

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2987
  store i8 92, i8* %543, align 1, !dbg !2987, !tbaa !562
  br label %544, !dbg !2987

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %556, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %555, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2534, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %552, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %549, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %548, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %547, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2564), !dbg !2991
  br label %570, !dbg !2992

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2956
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2566
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2570
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2967
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2995
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %555, metadata !2535, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2534, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 poison, metadata !2533, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %552, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %549, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %548, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %547, metadata !2507, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.label(metadata !2564), !dbg !2991
  %557 = xor i1 %551, true, !dbg !2992
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2992
  br i1 %558, label %570, label %559, !dbg !2992

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2996
  br i1 %560, label %561, label %563, !dbg !3000

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2996
  store i8 39, i8* %562, align 1, !dbg !2996, !tbaa !562
  br label %563, !dbg !2996

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %564, metadata !2514, metadata !DIExpression()), !dbg !2566
  %565 = icmp ult i64 %564, %556, !dbg !3001
  br i1 %565, label %566, label %568, !dbg !3004

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3001
  store i8 39, i8* %567, align 1, !dbg !3001, !tbaa !562
  br label %568, !dbg !3001

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %569, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2566
  br label %570, !dbg !3005

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2663
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %578, metadata !2514, metadata !DIExpression()), !dbg !2566
  %580 = icmp ult i64 %578, %571, !dbg !3006
  br i1 %580, label %581, label %583, !dbg !3009

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3006
  store i8 %572, i8* %582, align 1, !dbg !3006, !tbaa !562
  br label %583, !dbg !3006

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %584, metadata !2514, metadata !DIExpression()), !dbg !2566
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3010
  call void @llvm.dbg.value(metadata i8 poison, metadata !2521, metadata !DIExpression()), !dbg !2566
  br label %586, !dbg !3011

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2956
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2566
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2570
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2967
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %593, metadata !2528, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 poison, metadata !2522, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2521, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %589, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %588, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %587, metadata !2507, metadata !DIExpression()), !dbg !2566
  %595 = add i64 %593, 1, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %595, metadata !2528, metadata !DIExpression()), !dbg !2655
  br label %132, !dbg !3013, !llvm.loop !3014

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2505, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2521, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 poison, metadata !2520, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 undef, metadata !2515, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 undef, metadata !2514, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 undef, metadata !2507, metadata !DIExpression()), !dbg !2566
  %597 = icmp eq i64 %134, 0, !dbg !3016
  %598 = and i1 %126, %597, !dbg !3018
  %599 = and i1 %598, %119, !dbg !3018
  br i1 %599, label %638, label %600, !dbg !3018

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3019
  %602 = or i1 %119, %601, !dbg !3019
  %603 = xor i1 %136, true, !dbg !3019
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3019
  br i1 %604, label %612, label %605, !dbg !3019

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3021

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3023
  br label %653, !dbg !3025

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3026
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3028
  br i1 %611, label %36, label %612, !dbg !3028

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3029
  %615 = or i1 %614, %613, !dbg !3031
  br i1 %615, label %631, label %616, !dbg !3031

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2516, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %134, metadata !2514, metadata !DIExpression()), !dbg !2566
  %617 = load i8, i8* %116, align 1, !dbg !3032, !tbaa !562
  %618 = icmp eq i8 %617, 0, !dbg !3035
  br i1 %618, label %631, label %619, !dbg !3035

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2516, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %622, metadata !2514, metadata !DIExpression()), !dbg !2566
  %623 = icmp ult i64 %622, %140, !dbg !3036
  br i1 %623, label %624, label %626, !dbg !3039

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3036
  store i8 %620, i8* %625, align 1, !dbg !3036, !tbaa !562
  br label %626, !dbg !3036

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %627, metadata !2514, metadata !DIExpression()), !dbg !2566
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %628, metadata !2516, metadata !DIExpression()), !dbg !2566
  %629 = load i8, i8* %628, align 1, !dbg !3032, !tbaa !562
  %630 = icmp eq i8 %629, 0, !dbg !3035
  br i1 %630, label %631, label %619, !dbg !3035, !llvm.loop !3041

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2642
  call void @llvm.dbg.value(metadata i64 %632, metadata !2514, metadata !DIExpression()), !dbg !2566
  %633 = icmp ult i64 %632, %140, !dbg !3043
  br i1 %633, label %634, label %653, !dbg !3045

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3046
  store i8 0, i8* %635, align 1, !dbg !3047, !tbaa !562
  br label %653, !dbg !3046

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2565), !dbg !2873
  %637 = icmp eq i32 %112, 2, !dbg !3048
  br i1 %637, label %643, label %647, !dbg !2874

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2565), !dbg !2873
  %641 = icmp eq i32 %112, 2, !dbg !3048
  %642 = select i1 %118, i32 4, i32 2, !dbg !2874
  br i1 %641, label %643, label %647, !dbg !2874

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2874

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2508, metadata !DIExpression()), !dbg !2566
  %651 = and i32 %5, -3, !dbg !3049
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3050
  br label %653, !dbg !3051

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3052
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !3053 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #9 !dbg !3055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()) #33, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()) #33, !dbg !3076
  call void @llvm.dbg.value(metadata i64* null, metadata !3069, metadata !DIExpression()) #33, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3070, metadata !DIExpression()) #33, !dbg !3076
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3078
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3078
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3071, metadata !DIExpression()) #33, !dbg !3076
  %6 = tail call i32* @__errno_location() #36, !dbg !3079
  %7 = load i32, i32* %6, align 4, !dbg !3079, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %7, metadata !3072, metadata !DIExpression()) #33, !dbg !3076
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3080
  %9 = load i32, i32* %8, align 4, !dbg !3080, !tbaa !2448
  %10 = or i32 %9, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %10, metadata !3073, metadata !DIExpression()) #33, !dbg !3076
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3082
  %12 = load i32, i32* %11, align 8, !dbg !3082, !tbaa !2397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3084
  %15 = load i8*, i8** %14, align 8, !dbg !3084, !tbaa !2470
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3085
  %17 = load i8*, i8** %16, align 8, !dbg !3085, !tbaa !2473
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !3086
  %19 = add i64 %18, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %19, metadata !3074, metadata !DIExpression()) #33, !dbg !3076
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %20, metadata !3075, metadata !DIExpression()) #33, !dbg !3076
  %21 = load i32, i32* %11, align 8, !dbg !3089, !tbaa !2397
  %22 = load i8*, i8** %14, align 8, !dbg !3090, !tbaa !2470
  %23 = load i8*, i8** %16, align 8, !dbg !3091, !tbaa !2473
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !3092
  store i32 %7, i32* %6, align 4, !dbg !3093, !tbaa !1351
  ret i8* %20, !dbg !3094
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #9 !dbg !3064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64* %2, metadata !3069, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3070, metadata !DIExpression()), !dbg !3095
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3096
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3071, metadata !DIExpression()), !dbg !3095
  %7 = tail call i32* @__errno_location() #36, !dbg !3097
  %8 = load i32, i32* %7, align 4, !dbg !3097, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %8, metadata !3072, metadata !DIExpression()), !dbg !3095
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3098
  %10 = load i32, i32* %9, align 4, !dbg !3098, !tbaa !2448
  %11 = icmp eq i64* %2, null, !dbg !3099
  %12 = zext i1 %11 to i32, !dbg !3099
  %13 = or i32 %10, %12, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %13, metadata !3073, metadata !DIExpression()), !dbg !3095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3101
  %15 = load i32, i32* %14, align 8, !dbg !3101, !tbaa !2397
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3102
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3103
  %18 = load i8*, i8** %17, align 8, !dbg !3103, !tbaa !2470
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3104
  %20 = load i8*, i8** %19, align 8, !dbg !3104, !tbaa !2473
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3105
  %22 = add i64 %21, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %22, metadata !3074, metadata !DIExpression()), !dbg !3095
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %23, metadata !3075, metadata !DIExpression()), !dbg !3095
  %24 = load i32, i32* %14, align 8, !dbg !3108, !tbaa !2397
  %25 = load i8*, i8** %17, align 8, !dbg !3109, !tbaa !2470
  %26 = load i8*, i8** %19, align 8, !dbg !3110, !tbaa !2473
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3111
  store i32 %8, i32* %7, align 4, !dbg !3112, !tbaa !1351
  br i1 %11, label %29, label %28, !dbg !3113

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3114, !tbaa !3116
  br label %29, !dbg !3117

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !3119 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3124, !tbaa !387
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 1, metadata !3122, metadata !DIExpression()), !dbg !3126
  %2 = load i32, i32* @nslots, align 4, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 1, metadata !3122, metadata !DIExpression()), !dbg !3126
  %3 = icmp sgt i32 %2, 1, !dbg !3127
  br i1 %3, label %4, label %6, !dbg !3129

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3127
  br label %10, !dbg !3129

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3130
  %8 = load i8*, i8** %7, align 8, !dbg !3130, !tbaa !3132
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3134
  br i1 %9, label %17, label %16, !dbg !3135

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3122, metadata !DIExpression()), !dbg !3126
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3136
  %13 = load i8*, i8** %12, align 8, !dbg !3136, !tbaa !3132
  tail call void @free(i8* noundef %13) #33, !dbg !3137
  %14 = add nuw nsw i64 %11, 1, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %14, metadata !3122, metadata !DIExpression()), !dbg !3126
  %15 = icmp eq i64 %14, %5, !dbg !3127
  br i1 %15, label %6, label %10, !dbg !3129, !llvm.loop !3139

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !3141
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3143, !tbaa !3144
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3145, !tbaa !3132
  br label %17, !dbg !3146

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3147
  br i1 %18, label %21, label %19, !dbg !3149

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3150
  tail call void @free(i8* noundef %20) #33, !dbg !3152
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3153, !tbaa !387
  br label %21, !dbg !3154

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3155, !tbaa !1351
  ret void, !dbg !3156
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 !dbg !3157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3161
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3162
  ret i8* %3, !dbg !3163
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #9 !dbg !3164 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %2, metadata !3170, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3171, metadata !DIExpression()), !dbg !3184
  %6 = tail call i32* @__errno_location() #36, !dbg !3185
  %7 = load i32, i32* %6, align 4, !dbg !3185, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %7, metadata !3172, metadata !DIExpression()), !dbg !3184
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3186, !tbaa !387
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3173, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3174, metadata !DIExpression()), !dbg !3184
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3187
  br i1 %9, label %10, label %11, !dbg !3187

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3189
  unreachable, !dbg !3189

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3190, !tbaa !1351
  %13 = icmp sgt i32 %12, %0, !dbg !3191
  br i1 %13, label %36, label %14, !dbg !3192

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3193
  call void @llvm.dbg.value(metadata i1 %15, metadata !3175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3194
  %16 = bitcast i64* %5 to i8*, !dbg !3195
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3195
  %17 = sext i32 %12 to i64, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %17, metadata !3178, metadata !DIExpression()), !dbg !3194
  store i64 %17, i64* %5, align 8, !dbg !3197, !tbaa !3116
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3198
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3198
  %20 = add nuw nsw i32 %0, 1, !dbg !3199
  %21 = sub i32 %20, %12, !dbg !3200
  %22 = sext i32 %21 to i64, !dbg !3201
  call void @llvm.dbg.value(metadata i64* %5, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3194
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !3202
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3202
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3173, metadata !DIExpression()), !dbg !3184
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3203, !tbaa !387
  br i1 %15, label %25, label %26, !dbg !3204

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3205, !tbaa.struct !3207
  br label %26, !dbg !3208

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3209, !tbaa !1351
  %28 = sext i32 %27 to i64, !dbg !3210
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3210
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3211
  %31 = load i64, i64* %5, align 8, !dbg !3212, !tbaa !3116
  call void @llvm.dbg.value(metadata i64 %31, metadata !3178, metadata !DIExpression()), !dbg !3194
  %32 = sub nsw i64 %31, %28, !dbg !3213
  %33 = shl i64 %32, 4, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %30, metadata !2600, metadata !DIExpression()) #33, !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()) #33, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %33, metadata !2604, metadata !DIExpression()) #33, !dbg !3215
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !3217
  %34 = load i64, i64* %5, align 8, !dbg !3218, !tbaa !3116
  call void @llvm.dbg.value(metadata i64 %34, metadata !3178, metadata !DIExpression()), !dbg !3194
  %35 = trunc i64 %34 to i32, !dbg !3218
  store i32 %35, i32* @nslots, align 4, !dbg !3219, !tbaa !1351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3220
  br label %36, !dbg !3221

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3184
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3173, metadata !DIExpression()), !dbg !3184
  %38 = zext i32 %0 to i64, !dbg !3222
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3223
  %40 = load i64, i64* %39, align 8, !dbg !3223, !tbaa !3144
  call void @llvm.dbg.value(metadata i64 %40, metadata !3179, metadata !DIExpression()), !dbg !3224
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3225
  %42 = load i8*, i8** %41, align 8, !dbg !3225, !tbaa !3132
  call void @llvm.dbg.value(metadata i8* %42, metadata !3181, metadata !DIExpression()), !dbg !3224
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3226
  %44 = load i32, i32* %43, align 4, !dbg !3226, !tbaa !2448
  %45 = or i32 %44, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %45, metadata !3182, metadata !DIExpression()), !dbg !3224
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3228
  %47 = load i32, i32* %46, align 8, !dbg !3228, !tbaa !2397
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3229
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3230
  %50 = load i8*, i8** %49, align 8, !dbg !3230, !tbaa !2470
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3231
  %52 = load i8*, i8** %51, align 8, !dbg !3231, !tbaa !2473
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %53, metadata !3183, metadata !DIExpression()), !dbg !3224
  %54 = icmp ugt i64 %40, %53, !dbg !3233
  br i1 %54, label %65, label %55, !dbg !3235

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %56, metadata !3179, metadata !DIExpression()), !dbg !3224
  store i64 %56, i64* %39, align 8, !dbg !3238, !tbaa !3144
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3239
  br i1 %57, label %59, label %58, !dbg !3241

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !3242
  br label %59, !dbg !3242

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %60, metadata !3181, metadata !DIExpression()), !dbg !3224
  store i8* %60, i8** %41, align 8, !dbg !3244, !tbaa !3132
  %61 = load i32, i32* %46, align 8, !dbg !3245, !tbaa !2397
  %62 = load i8*, i8** %49, align 8, !dbg !3246, !tbaa !2470
  %63 = load i8*, i8** %51, align 8, !dbg !3247, !tbaa !2473
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3248
  br label %65, !dbg !3249

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3224
  call void @llvm.dbg.value(metadata i8* %66, metadata !3181, metadata !DIExpression()), !dbg !3224
  store i32 %7, i32* %6, align 4, !dbg !3250, !tbaa !1351
  ret i8* %66, !dbg !3251
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 !dbg !3252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %2, metadata !3258, metadata !DIExpression()), !dbg !3259
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3260
  ret i8* %4, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #9 !dbg !3262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3159, metadata !DIExpression()) #33, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #33, !dbg !3266
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3268
  ret i8* %2, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 !dbg !3270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()) #33, !dbg !3277
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #33, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3258, metadata !DIExpression()) #33, !dbg !3277
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3279
  ret i8* %3, !dbg !3280
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #9 !dbg !3281 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %1, metadata !3286, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()), !dbg !3289
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3288, metadata !DIExpression()), !dbg !3291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3292), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %1, metadata !3296, metadata !DIExpression()) #33, !dbg !3302
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3301, metadata !DIExpression()) #33, !dbg !3304
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3304, !alias.scope !3292
  %6 = icmp eq i32 %1, 10, !dbg !3305
  br i1 %6, label %7, label %8, !dbg !3307

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3308, !noalias !3292
  unreachable, !dbg !3308

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3309
  store i32 %1, i32* %9, align 8, !dbg !3310, !tbaa !2397, !alias.scope !3292
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3312
  ret i8* %10, !dbg !3313
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #9 !dbg !3314 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !3321, metadata !DIExpression()), !dbg !3323
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3324
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3322, metadata !DIExpression()), !dbg !3325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %1, metadata !3296, metadata !DIExpression()) #33, !dbg !3330
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3301, metadata !DIExpression()) #33, !dbg !3332
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !3332, !alias.scope !3326
  %7 = icmp eq i32 %1, 10, !dbg !3333
  br i1 %7, label %8, label %9, !dbg !3334

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !3335, !noalias !3326
  unreachable, !dbg !3335

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3336
  store i32 %1, i32* %10, align 8, !dbg !3337, !tbaa !2397, !alias.scope !3326
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3338
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3339
  ret i8* %11, !dbg !3340
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 !dbg !3341 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3345, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8* %1, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()) #33, !dbg !3348
  call void @llvm.dbg.value(metadata i32 %0, metadata !3286, metadata !DIExpression()) #33, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #33, !dbg !3348
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3350
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3288, metadata !DIExpression()) #33, !dbg !3351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352) #33, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()) #33, !dbg !3356
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3301, metadata !DIExpression()) #33, !dbg !3358
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !3358, !alias.scope !3352
  %5 = icmp eq i32 %0, 10, !dbg !3359
  br i1 %5, label %6, label %7, !dbg !3360

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !3361, !noalias !3352
  unreachable, !dbg !3361

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3362
  store i32 %0, i32* %8, align 8, !dbg !3363, !tbaa !2397, !alias.scope !3352
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3364
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3365
  ret i8* %9, !dbg !3366
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 !dbg !3367 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %1, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %2, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 0, metadata !3318, metadata !DIExpression()) #33, !dbg !3375
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()) #33, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %1, metadata !3320, metadata !DIExpression()) #33, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %2, metadata !3321, metadata !DIExpression()) #33, !dbg !3375
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3377
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3322, metadata !DIExpression()) #33, !dbg !3378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3379) #33, !dbg !3382
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()) #33, !dbg !3383
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3301, metadata !DIExpression()) #33, !dbg !3385
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3385, !alias.scope !3379
  %6 = icmp eq i32 %0, 10, !dbg !3386
  br i1 %6, label %7, label %8, !dbg !3387

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3388, !noalias !3379
  unreachable, !dbg !3388

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3389
  store i32 %0, i32* %9, align 8, !dbg !3390, !tbaa !2397, !alias.scope !3379
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3392
  ret i8* %10, !dbg !3393
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #9 !dbg !3394 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8 %2, metadata !3400, metadata !DIExpression()), !dbg !3402
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3403
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3401, metadata !DIExpression()), !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3405, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2415, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8 %2, metadata !2416, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 1, metadata !2417, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8 %2, metadata !2418, metadata !DIExpression()), !dbg !3407
  %6 = lshr i8 %2, 5, !dbg !3409
  %7 = zext i8 %6 to i64, !dbg !3409
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3410
  call void @llvm.dbg.value(metadata i32* %8, metadata !2419, metadata !DIExpression()), !dbg !3407
  %9 = and i8 %2, 31, !dbg !3411
  %10 = zext i8 %9 to i32, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %10, metadata !2421, metadata !DIExpression()), !dbg !3407
  %11 = load i32, i32* %8, align 4, !dbg !3412, !tbaa !1351
  %12 = lshr i32 %11, %10, !dbg !3413
  %13 = and i32 %12, 1, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %13, metadata !2422, metadata !DIExpression()), !dbg !3407
  %14 = xor i32 %13, 1, !dbg !3415
  %15 = shl i32 %14, %10, !dbg !3416
  %16 = xor i32 %15, %11, !dbg !3417
  store i32 %16, i32* %8, align 4, !dbg !3417, !tbaa !1351
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3419
  ret i8* %17, !dbg !3420
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #9 !dbg !3421 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8 %1, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #33, !dbg !3428
  call void @llvm.dbg.value(metadata i64 -1, metadata !3399, metadata !DIExpression()) #33, !dbg !3428
  call void @llvm.dbg.value(metadata i8 %1, metadata !3400, metadata !DIExpression()) #33, !dbg !3428
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3430
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3401, metadata !DIExpression()) #33, !dbg !3431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3432, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2415, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i8 %1, metadata !2416, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i32 1, metadata !2417, metadata !DIExpression()) #33, !dbg !3433
  call void @llvm.dbg.value(metadata i8 %1, metadata !2418, metadata !DIExpression()) #33, !dbg !3433
  %5 = lshr i8 %1, 5, !dbg !3435
  %6 = zext i8 %5 to i64, !dbg !3435
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3436
  call void @llvm.dbg.value(metadata i32* %7, metadata !2419, metadata !DIExpression()) #33, !dbg !3433
  %8 = and i8 %1, 31, !dbg !3437
  %9 = zext i8 %8 to i32, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %9, metadata !2421, metadata !DIExpression()) #33, !dbg !3433
  %10 = load i32, i32* %7, align 4, !dbg !3438, !tbaa !1351
  %11 = lshr i32 %10, %9, !dbg !3439
  %12 = and i32 %11, 1, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %12, metadata !2422, metadata !DIExpression()) #33, !dbg !3433
  %13 = xor i32 %12, 1, !dbg !3441
  %14 = shl i32 %13, %9, !dbg !3442
  %15 = xor i32 %14, %10, !dbg !3443
  store i32 %15, i32* %7, align 4, !dbg !3443, !tbaa !1351
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3445
  ret i8* %16, !dbg !3446
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #9 !dbg !3447 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()) #33, !dbg !3451
  call void @llvm.dbg.value(metadata i8 58, metadata !3426, metadata !DIExpression()) #33, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #33, !dbg !3453
  call void @llvm.dbg.value(metadata i64 -1, metadata !3399, metadata !DIExpression()) #33, !dbg !3453
  call void @llvm.dbg.value(metadata i8 58, metadata !3400, metadata !DIExpression()) #33, !dbg !3453
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3455
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3401, metadata !DIExpression()) #33, !dbg !3456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3457, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2415, metadata !DIExpression()) #33, !dbg !3458
  call void @llvm.dbg.value(metadata i8 58, metadata !2416, metadata !DIExpression()) #33, !dbg !3458
  call void @llvm.dbg.value(metadata i32 1, metadata !2417, metadata !DIExpression()) #33, !dbg !3458
  call void @llvm.dbg.value(metadata i8 58, metadata !2418, metadata !DIExpression()) #33, !dbg !3458
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3460
  call void @llvm.dbg.value(metadata i32* %4, metadata !2419, metadata !DIExpression()) #33, !dbg !3458
  call void @llvm.dbg.value(metadata i32 26, metadata !2421, metadata !DIExpression()) #33, !dbg !3458
  %5 = load i32, i32* %4, align 4, !dbg !3461, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %5, metadata !2422, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3458
  %6 = or i32 %5, 67108864, !dbg !3462
  store i32 %6, i32* %4, align 4, !dbg !3462, !tbaa !1351
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !3463
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3464
  ret i8* %7, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 !dbg !3466 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %1, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()) #33, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3399, metadata !DIExpression()) #33, !dbg !3471
  call void @llvm.dbg.value(metadata i8 58, metadata !3400, metadata !DIExpression()) #33, !dbg !3471
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3473
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3401, metadata !DIExpression()) #33, !dbg !3474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3475, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2415, metadata !DIExpression()) #33, !dbg !3476
  call void @llvm.dbg.value(metadata i8 58, metadata !2416, metadata !DIExpression()) #33, !dbg !3476
  call void @llvm.dbg.value(metadata i32 1, metadata !2417, metadata !DIExpression()) #33, !dbg !3476
  call void @llvm.dbg.value(metadata i8 58, metadata !2418, metadata !DIExpression()) #33, !dbg !3476
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3478
  call void @llvm.dbg.value(metadata i32* %5, metadata !2419, metadata !DIExpression()) #33, !dbg !3476
  call void @llvm.dbg.value(metadata i32 26, metadata !2421, metadata !DIExpression()) #33, !dbg !3476
  %6 = load i32, i32* %5, align 4, !dbg !3479, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %6, metadata !2422, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3476
  %7 = or i32 %6, 67108864, !dbg !3480
  store i32 %7, i32* %5, align 4, !dbg !3480, !tbaa !1351
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3481
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3482
  ret i8* %8, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #9 !dbg !3484 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %1, metadata !3487, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !3488, metadata !DIExpression()), !dbg !3490
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3491
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3489, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %1, metadata !3296, metadata !DIExpression()) #33, !dbg !3493
  call void @llvm.dbg.value(metadata i32 0, metadata !3301, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3493
  %6 = icmp eq i32 %1, 10, !dbg !3495
  br i1 %6, label %7, label %8, !dbg !3496

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3497, !noalias !3498
  unreachable, !dbg !3497

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3301, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3493
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3501
  store i32 %1, i32* %9, align 8, !dbg !3501, !tbaa.struct !3406
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3501
  %11 = bitcast i32* %10 to i8*, !dbg !3501
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2415, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8 58, metadata !2416, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 1, metadata !2417, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8 58, metadata !2418, metadata !DIExpression()), !dbg !3502
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3504
  call void @llvm.dbg.value(metadata i32* %12, metadata !2419, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 26, metadata !2421, metadata !DIExpression()), !dbg !3502
  %13 = load i32, i32* %12, align 4, !dbg !3505, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %13, metadata !2422, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3502
  %14 = or i32 %13, 67108864, !dbg !3506
  store i32 %14, i32* %12, align 4, !dbg !3506, !tbaa !1351
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3508
  ret i8* %15, !dbg !3509
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #9 !dbg !3510 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3514, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8* %3, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 %0, metadata !3519, metadata !DIExpression()) #33, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()) #33, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %2, metadata !3525, metadata !DIExpression()) #33, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %3, metadata !3526, metadata !DIExpression()) #33, !dbg !3529
  call void @llvm.dbg.value(metadata i64 -1, metadata !3527, metadata !DIExpression()) #33, !dbg !3529
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3531
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3528, metadata !DIExpression()) #33, !dbg !3532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3533, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()) #33, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()) #33, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2457, metadata !DIExpression()) #33, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()) #33, !dbg !3534
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3536
  store i32 10, i32* %7, align 8, !dbg !3537, !tbaa !2397
  %8 = icmp ne i8* %1, null, !dbg !3538
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3539
  br i1 %10, label %12, label %11, !dbg !3539

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3540
  unreachable, !dbg !3540

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3541
  store i8* %1, i8** %13, align 8, !dbg !3542, !tbaa !2470
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3543
  store i8* %2, i8** %14, align 8, !dbg !3544, !tbaa !2473
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3546
  ret i8* %15, !dbg !3547
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #9 !dbg !3520 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3519, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %2, metadata !3525, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %3, metadata !3526, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %4, metadata !3527, metadata !DIExpression()), !dbg !3548
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3549
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3528, metadata !DIExpression()), !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3551, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2455, metadata !DIExpression()) #33, !dbg !3552
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()) #33, !dbg !3552
  call void @llvm.dbg.value(metadata i8* %2, metadata !2457, metadata !DIExpression()) #33, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2455, metadata !DIExpression()) #33, !dbg !3552
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3554
  store i32 10, i32* %8, align 8, !dbg !3555, !tbaa !2397
  %9 = icmp ne i8* %1, null, !dbg !3556
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3557
  br i1 %11, label %13, label %12, !dbg !3557

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !3558
  unreachable, !dbg !3558

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3559
  store i8* %1, i8** %14, align 8, !dbg !3560, !tbaa !2470
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3561
  store i8* %2, i8** %15, align 8, !dbg !3562, !tbaa !2473
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3564
  ret i8* %16, !dbg !3565
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #9 !dbg !3566 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %1, metadata !3571, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %2, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %2, metadata !3517, metadata !DIExpression()) #33, !dbg !3574
  call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()) #33, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #33, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !3525, metadata !DIExpression()) #33, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %2, metadata !3526, metadata !DIExpression()) #33, !dbg !3576
  call void @llvm.dbg.value(metadata i64 -1, metadata !3527, metadata !DIExpression()) #33, !dbg !3576
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3578
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3578
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3528, metadata !DIExpression()) #33, !dbg !3579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3580, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %1, metadata !2457, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression()) #33, !dbg !3581
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3583
  store i32 10, i32* %6, align 8, !dbg !3584, !tbaa !2397
  %7 = icmp ne i8* %0, null, !dbg !3585
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3586
  br i1 %9, label %11, label %10, !dbg !3586

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !3587
  unreachable, !dbg !3587

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3588
  store i8* %0, i8** %12, align 8, !dbg !3589, !tbaa !2470
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3590
  store i8* %1, i8** %13, align 8, !dbg !3591, !tbaa !2473
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3592
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3593
  ret i8* %14, !dbg !3594
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #9 !dbg !3595 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8* %1, metadata !3600, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8* %2, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %3, metadata !3602, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()) #33, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #33, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %1, metadata !3525, metadata !DIExpression()) #33, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %2, metadata !3526, metadata !DIExpression()) #33, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %3, metadata !3527, metadata !DIExpression()) #33, !dbg !3604
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3528, metadata !DIExpression()) #33, !dbg !3607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3608, !tbaa.struct !3406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()) #33, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()) #33, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2457, metadata !DIExpression()) #33, !dbg !3609
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression()) #33, !dbg !3609
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3611
  store i32 10, i32* %7, align 8, !dbg !3612, !tbaa !2397
  %8 = icmp ne i8* %0, null, !dbg !3613
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3614
  br i1 %10, label %12, label %11, !dbg !3614

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3615
  unreachable, !dbg !3615

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3616
  store i8* %0, i8** %13, align 8, !dbg !3617, !tbaa !2470
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3618
  store i8* %1, i8** %14, align 8, !dbg !3619, !tbaa !2473
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3620
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3621
  ret i8* %15, !dbg !3622
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 !dbg !3623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3627, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i8* %1, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %2, metadata !3629, metadata !DIExpression()), !dbg !3630
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3631
  ret i8* %4, !dbg !3632
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 !dbg !3633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3637, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()) #33, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()) #33, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()) #33, !dbg !3640
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3642
  ret i8* %3, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %1, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %0, metadata !3627, metadata !DIExpression()) #33, !dbg !3651
  call void @llvm.dbg.value(metadata i8* %1, metadata !3628, metadata !DIExpression()) #33, !dbg !3651
  call void @llvm.dbg.value(metadata i64 -1, metadata !3629, metadata !DIExpression()) #33, !dbg !3651
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3653
  ret i8* %3, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #9 !dbg !3655 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()) #33, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %0, metadata !3649, metadata !DIExpression()) #33, !dbg !3661
  call void @llvm.dbg.value(metadata i32 0, metadata !3627, metadata !DIExpression()) #33, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()) #33, !dbg !3663
  call void @llvm.dbg.value(metadata i64 -1, metadata !3629, metadata !DIExpression()) #33, !dbg !3663
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3665
  ret i8* %2, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #9 !dbg !3667 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3706, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %1, metadata !3707, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %2, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %3, metadata !3709, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8** %4, metadata !3710, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %5, metadata !3711, metadata !DIExpression()), !dbg !3712
  %7 = icmp eq i8* %1, null, !dbg !3713
  br i1 %7, label %10, label %8, !dbg !3715

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !3716
  br label %12, !dbg !3716

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.151, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !3717
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.153, i64 0, i64 0), i32 noundef 5) #33, !dbg !3718
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !3718
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3719
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.155, i64 0, i64 0), i32 noundef 5) #33, !dbg !3720
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.156, i64 0, i64 0)) #33, !dbg !3720
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3721
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
  ], !dbg !3722

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.157, i64 0, i64 0), i32 noundef 5) #33, !dbg !3723
  %21 = load i8*, i8** %4, align 8, !dbg !3723, !tbaa !387
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !3723
  br label %147, !dbg !3725

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.158, i64 0, i64 0), i32 noundef 5) #33, !dbg !3726
  %25 = load i8*, i8** %4, align 8, !dbg !3726, !tbaa !387
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3726
  %27 = load i8*, i8** %26, align 8, !dbg !3726, !tbaa !387
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !3726
  br label %147, !dbg !3727

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.159, i64 0, i64 0), i32 noundef 5) #33, !dbg !3728
  %31 = load i8*, i8** %4, align 8, !dbg !3728, !tbaa !387
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3728
  %33 = load i8*, i8** %32, align 8, !dbg !3728, !tbaa !387
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3728
  %35 = load i8*, i8** %34, align 8, !dbg !3728, !tbaa !387
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !3728
  br label %147, !dbg !3729

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.160, i64 0, i64 0), i32 noundef 5) #33, !dbg !3730
  %39 = load i8*, i8** %4, align 8, !dbg !3730, !tbaa !387
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3730
  %41 = load i8*, i8** %40, align 8, !dbg !3730, !tbaa !387
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3730
  %43 = load i8*, i8** %42, align 8, !dbg !3730, !tbaa !387
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3730
  %45 = load i8*, i8** %44, align 8, !dbg !3730, !tbaa !387
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !3730
  br label %147, !dbg !3731

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.161, i64 0, i64 0), i32 noundef 5) #33, !dbg !3732
  %49 = load i8*, i8** %4, align 8, !dbg !3732, !tbaa !387
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3732
  %51 = load i8*, i8** %50, align 8, !dbg !3732, !tbaa !387
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3732
  %53 = load i8*, i8** %52, align 8, !dbg !3732, !tbaa !387
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3732
  %55 = load i8*, i8** %54, align 8, !dbg !3732, !tbaa !387
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3732
  %57 = load i8*, i8** %56, align 8, !dbg !3732, !tbaa !387
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !3732
  br label %147, !dbg !3733

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.162, i64 0, i64 0), i32 noundef 5) #33, !dbg !3734
  %61 = load i8*, i8** %4, align 8, !dbg !3734, !tbaa !387
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3734
  %63 = load i8*, i8** %62, align 8, !dbg !3734, !tbaa !387
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3734
  %65 = load i8*, i8** %64, align 8, !dbg !3734, !tbaa !387
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3734
  %67 = load i8*, i8** %66, align 8, !dbg !3734, !tbaa !387
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3734
  %69 = load i8*, i8** %68, align 8, !dbg !3734, !tbaa !387
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3734
  %71 = load i8*, i8** %70, align 8, !dbg !3734, !tbaa !387
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !3734
  br label %147, !dbg !3735

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.163, i64 0, i64 0), i32 noundef 5) #33, !dbg !3736
  %75 = load i8*, i8** %4, align 8, !dbg !3736, !tbaa !387
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3736
  %77 = load i8*, i8** %76, align 8, !dbg !3736, !tbaa !387
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3736
  %79 = load i8*, i8** %78, align 8, !dbg !3736, !tbaa !387
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3736
  %81 = load i8*, i8** %80, align 8, !dbg !3736, !tbaa !387
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3736
  %83 = load i8*, i8** %82, align 8, !dbg !3736, !tbaa !387
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3736
  %85 = load i8*, i8** %84, align 8, !dbg !3736, !tbaa !387
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3736
  %87 = load i8*, i8** %86, align 8, !dbg !3736, !tbaa !387
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !3736
  br label %147, !dbg !3737

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.164, i64 0, i64 0), i32 noundef 5) #33, !dbg !3738
  %91 = load i8*, i8** %4, align 8, !dbg !3738, !tbaa !387
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3738
  %93 = load i8*, i8** %92, align 8, !dbg !3738, !tbaa !387
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3738
  %95 = load i8*, i8** %94, align 8, !dbg !3738, !tbaa !387
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3738
  %97 = load i8*, i8** %96, align 8, !dbg !3738, !tbaa !387
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3738
  %99 = load i8*, i8** %98, align 8, !dbg !3738, !tbaa !387
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3738
  %101 = load i8*, i8** %100, align 8, !dbg !3738, !tbaa !387
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3738
  %103 = load i8*, i8** %102, align 8, !dbg !3738, !tbaa !387
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3738
  %105 = load i8*, i8** %104, align 8, !dbg !3738, !tbaa !387
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !3738
  br label %147, !dbg !3739

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.165, i64 0, i64 0), i32 noundef 5) #33, !dbg !3740
  %109 = load i8*, i8** %4, align 8, !dbg !3740, !tbaa !387
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3740
  %111 = load i8*, i8** %110, align 8, !dbg !3740, !tbaa !387
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3740
  %113 = load i8*, i8** %112, align 8, !dbg !3740, !tbaa !387
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3740
  %115 = load i8*, i8** %114, align 8, !dbg !3740, !tbaa !387
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3740
  %117 = load i8*, i8** %116, align 8, !dbg !3740, !tbaa !387
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3740
  %119 = load i8*, i8** %118, align 8, !dbg !3740, !tbaa !387
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3740
  %121 = load i8*, i8** %120, align 8, !dbg !3740, !tbaa !387
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3740
  %123 = load i8*, i8** %122, align 8, !dbg !3740, !tbaa !387
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3740
  %125 = load i8*, i8** %124, align 8, !dbg !3740, !tbaa !387
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !3740
  br label %147, !dbg !3741

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.166, i64 0, i64 0), i32 noundef 5) #33, !dbg !3742
  %129 = load i8*, i8** %4, align 8, !dbg !3742, !tbaa !387
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3742
  %131 = load i8*, i8** %130, align 8, !dbg !3742, !tbaa !387
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3742
  %133 = load i8*, i8** %132, align 8, !dbg !3742, !tbaa !387
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3742
  %135 = load i8*, i8** %134, align 8, !dbg !3742, !tbaa !387
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3742
  %137 = load i8*, i8** %136, align 8, !dbg !3742, !tbaa !387
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3742
  %139 = load i8*, i8** %138, align 8, !dbg !3742, !tbaa !387
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3742
  %141 = load i8*, i8** %140, align 8, !dbg !3742, !tbaa !387
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3742
  %143 = load i8*, i8** %142, align 8, !dbg !3742, !tbaa !387
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3742
  %145 = load i8*, i8** %144, align 8, !dbg !3742, !tbaa !387
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !3742
  br label %147, !dbg !3743

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3744
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #9 !dbg !3745 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3749, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %1, metadata !3750, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %2, metadata !3751, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* %3, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8** %4, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3755
  br label %6, !dbg !3756

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3758
  call void @llvm.dbg.value(metadata i64 %7, metadata !3754, metadata !DIExpression()), !dbg !3755
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3759
  %9 = load i8*, i8** %8, align 8, !dbg !3759, !tbaa !387
  %10 = icmp eq i8* %9, null, !dbg !3761
  %11 = add i64 %7, 1, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %11, metadata !3754, metadata !DIExpression()), !dbg !3755
  br i1 %10, label %12, label %6, !dbg !3761, !llvm.loop !3763

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3765
  ret void, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #9 !dbg !3767 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3782, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %1, metadata !3783, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %2, metadata !3784, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %3, metadata !3785, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3786, metadata !DIExpression()), !dbg !3791
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3792
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3788, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 0, metadata !3787, metadata !DIExpression()), !dbg !3790
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !3794
  %12 = icmp sgt i32 %11, -1, !dbg !3794
  call void @llvm.dbg.value(metadata i64 0, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 0, metadata !3787, metadata !DIExpression()), !dbg !3790
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3794
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3794
  store i8* %15, i8** %10, align 8, !dbg !3794
  %16 = bitcast i8* %14 to i8**, !dbg !3794
  %17 = load i8*, i8** %16, align 8, !dbg !3794
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3797
  store i8* %17, i8** %18, align 8, !dbg !3798, !tbaa !387
  %19 = icmp eq i8* %17, null, !dbg !3799
  br i1 %19, label %265, label %20, !dbg !3800

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !3787, metadata !DIExpression()), !dbg !3790
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3794
  store i8* %21, i8** %10, align 8, !dbg !3794
  %22 = bitcast i8* %15 to i8**, !dbg !3794
  %23 = load i8*, i8** %22, align 8, !dbg !3794
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3797
  store i8* %23, i8** %24, align 8, !dbg !3798, !tbaa !387
  %25 = icmp eq i8* %23, null, !dbg !3799
  br i1 %25, label %265, label %26, !dbg !3800

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !3787, metadata !DIExpression()), !dbg !3790
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !3794
  store i8* %27, i8** %10, align 8, !dbg !3794
  %28 = bitcast i8* %21 to i8**, !dbg !3794
  %29 = load i8*, i8** %28, align 8, !dbg !3794
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3797
  store i8* %29, i8** %30, align 8, !dbg !3798, !tbaa !387
  %31 = icmp eq i8* %29, null, !dbg !3799
  br i1 %31, label %265, label %32, !dbg !3800

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !3787, metadata !DIExpression()), !dbg !3790
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !3794
  store i8* %33, i8** %10, align 8, !dbg !3794
  %34 = bitcast i8* %27 to i8**, !dbg !3794
  %35 = load i8*, i8** %34, align 8, !dbg !3794
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3797
  store i8* %35, i8** %36, align 8, !dbg !3798, !tbaa !387
  %37 = icmp eq i8* %35, null, !dbg !3799
  br i1 %37, label %265, label %38, !dbg !3800

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !3787, metadata !DIExpression()), !dbg !3790
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !3794
  store i8* %39, i8** %10, align 8, !dbg !3794
  %40 = bitcast i8* %33 to i8**, !dbg !3794
  %41 = load i8*, i8** %40, align 8, !dbg !3794
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3797
  store i8* %41, i8** %42, align 8, !dbg !3798, !tbaa !387
  %43 = icmp eq i8* %41, null, !dbg !3799
  br i1 %43, label %265, label %44, !dbg !3800

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !3787, metadata !DIExpression()), !dbg !3790
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !3794
  store i8* %45, i8** %10, align 8, !dbg !3794
  %46 = bitcast i8* %39 to i8**, !dbg !3794
  %47 = load i8*, i8** %46, align 8, !dbg !3794
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3797
  store i8* %47, i8** %48, align 8, !dbg !3798, !tbaa !387
  %49 = icmp eq i8* %47, null, !dbg !3799
  br i1 %49, label %265, label %50, !dbg !3800

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !3787, metadata !DIExpression()), !dbg !3790
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !3794
  store i8* %51, i8** %10, align 8, !dbg !3794
  %52 = bitcast i8* %45 to i8**, !dbg !3794
  %53 = load i8*, i8** %52, align 8, !dbg !3794
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3797
  store i8* %53, i8** %54, align 8, !dbg !3798, !tbaa !387
  %55 = icmp eq i8* %53, null, !dbg !3799
  br i1 %55, label %265, label %56, !dbg !3800

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !3787, metadata !DIExpression()), !dbg !3790
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !3794
  store i8* %57, i8** %10, align 8, !dbg !3794
  %58 = bitcast i8* %51 to i8**, !dbg !3794
  %59 = load i8*, i8** %58, align 8, !dbg !3794
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3797
  store i8* %59, i8** %60, align 8, !dbg !3798, !tbaa !387
  %61 = icmp eq i8* %59, null, !dbg !3799
  br i1 %61, label %265, label %62, !dbg !3800

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !3787, metadata !DIExpression()), !dbg !3790
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !3794
  store i8* %63, i8** %10, align 8, !dbg !3794
  %64 = bitcast i8* %57 to i8**, !dbg !3794
  %65 = load i8*, i8** %64, align 8, !dbg !3794
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3797
  store i8* %65, i8** %66, align 8, !dbg !3798, !tbaa !387
  %67 = icmp eq i8* %65, null, !dbg !3799
  br i1 %67, label %265, label %68, !dbg !3800

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !3787, metadata !DIExpression()), !dbg !3790
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !3794
  store i8* %69, i8** %10, align 8, !dbg !3794
  br label %258, !dbg !3800

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !3794
  store i32 %71, i32* %8, align 8, !dbg !3794
  %72 = icmp ult i32 %11, -7, !dbg !3794
  br i1 %72, label %73, label %77, !dbg !3794

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !3794
  %75 = sext i32 %11 to i64, !dbg !3794
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !3794
  br label %80, !dbg !3794

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3794
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3794
  store i8* %79, i8** %10, align 8, !dbg !3794
  br label %80, !dbg !3794

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !3794
  %83 = load i8*, i8** %82, align 8, !dbg !3794
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3797
  store i8* %83, i8** %84, align 8, !dbg !3798, !tbaa !387
  %85 = icmp eq i8* %83, null, !dbg !3799
  br i1 %85, label %265, label %86, !dbg !3800

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !3787, metadata !DIExpression()), !dbg !3790
  %87 = icmp sgt i32 %11, -9, !dbg !3794
  br i1 %87, label %95, label %88, !dbg !3794

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !3794
  store i32 %89, i32* %8, align 8, !dbg !3794
  %90 = icmp ult i32 %71, -7, !dbg !3794
  br i1 %90, label %91, label %95, !dbg !3794

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !3794
  %93 = sext i32 %71 to i64, !dbg !3794
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !3794
  br label %99, !dbg !3794

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !3794
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3794
  store i8* %98, i8** %10, align 8, !dbg !3794
  br label %99, !dbg !3794

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !3794
  %103 = load i8*, i8** %102, align 8, !dbg !3794
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3797
  store i8* %103, i8** %104, align 8, !dbg !3798, !tbaa !387
  %105 = icmp eq i8* %103, null, !dbg !3799
  br i1 %105, label %265, label %106, !dbg !3800

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !3787, metadata !DIExpression()), !dbg !3790
  %107 = icmp sgt i32 %100, -1, !dbg !3794
  br i1 %107, label %115, label %108, !dbg !3794

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !3794
  store i32 %109, i32* %8, align 8, !dbg !3794
  %110 = icmp ult i32 %100, -7, !dbg !3794
  br i1 %110, label %111, label %115, !dbg !3794

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !3794
  %113 = sext i32 %100 to i64, !dbg !3794
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !3794
  br label %119, !dbg !3794

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !3794
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !3794
  store i8* %118, i8** %10, align 8, !dbg !3794
  br label %119, !dbg !3794

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !3794
  %123 = load i8*, i8** %122, align 8, !dbg !3794
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3797
  store i8* %123, i8** %124, align 8, !dbg !3798, !tbaa !387
  %125 = icmp eq i8* %123, null, !dbg !3799
  br i1 %125, label %265, label %126, !dbg !3800

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !3787, metadata !DIExpression()), !dbg !3790
  %127 = icmp sgt i32 %120, -1, !dbg !3794
  br i1 %127, label %135, label %128, !dbg !3794

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !3794
  store i32 %129, i32* %8, align 8, !dbg !3794
  %130 = icmp ult i32 %120, -7, !dbg !3794
  br i1 %130, label %131, label %135, !dbg !3794

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !3794
  %133 = sext i32 %120 to i64, !dbg !3794
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !3794
  br label %139, !dbg !3794

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !3794
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !3794
  store i8* %138, i8** %10, align 8, !dbg !3794
  br label %139, !dbg !3794

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !3794
  %143 = load i8*, i8** %142, align 8, !dbg !3794
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3797
  store i8* %143, i8** %144, align 8, !dbg !3798, !tbaa !387
  %145 = icmp eq i8* %143, null, !dbg !3799
  br i1 %145, label %265, label %146, !dbg !3800

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !3787, metadata !DIExpression()), !dbg !3790
  %147 = icmp sgt i32 %140, -1, !dbg !3794
  br i1 %147, label %155, label %148, !dbg !3794

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !3794
  store i32 %149, i32* %8, align 8, !dbg !3794
  %150 = icmp ult i32 %140, -7, !dbg !3794
  br i1 %150, label %151, label %155, !dbg !3794

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !3794
  %153 = sext i32 %140 to i64, !dbg !3794
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !3794
  br label %159, !dbg !3794

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !3794
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !3794
  store i8* %158, i8** %10, align 8, !dbg !3794
  br label %159, !dbg !3794

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !3794
  %163 = load i8*, i8** %162, align 8, !dbg !3794
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3797
  store i8* %163, i8** %164, align 8, !dbg !3798, !tbaa !387
  %165 = icmp eq i8* %163, null, !dbg !3799
  br i1 %165, label %265, label %166, !dbg !3800

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !3787, metadata !DIExpression()), !dbg !3790
  %167 = icmp sgt i32 %160, -1, !dbg !3794
  br i1 %167, label %175, label %168, !dbg !3794

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !3794
  store i32 %169, i32* %8, align 8, !dbg !3794
  %170 = icmp ult i32 %160, -7, !dbg !3794
  br i1 %170, label %171, label %175, !dbg !3794

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !3794
  %173 = sext i32 %160 to i64, !dbg !3794
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !3794
  br label %179, !dbg !3794

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !3794
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !3794
  store i8* %178, i8** %10, align 8, !dbg !3794
  br label %179, !dbg !3794

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !3794
  %183 = load i8*, i8** %182, align 8, !dbg !3794
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3797
  store i8* %183, i8** %184, align 8, !dbg !3798, !tbaa !387
  %185 = icmp eq i8* %183, null, !dbg !3799
  br i1 %185, label %265, label %186, !dbg !3800

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !3787, metadata !DIExpression()), !dbg !3790
  %187 = icmp sgt i32 %180, -1, !dbg !3794
  br i1 %187, label %195, label %188, !dbg !3794

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !3794
  store i32 %189, i32* %8, align 8, !dbg !3794
  %190 = icmp ult i32 %180, -7, !dbg !3794
  br i1 %190, label %191, label %195, !dbg !3794

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !3794
  %193 = sext i32 %180 to i64, !dbg !3794
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !3794
  br label %199, !dbg !3794

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !3794
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !3794
  store i8* %198, i8** %10, align 8, !dbg !3794
  br label %199, !dbg !3794

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !3794
  %203 = load i8*, i8** %202, align 8, !dbg !3794
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3797
  store i8* %203, i8** %204, align 8, !dbg !3798, !tbaa !387
  %205 = icmp eq i8* %203, null, !dbg !3799
  br i1 %205, label %265, label %206, !dbg !3800

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !3787, metadata !DIExpression()), !dbg !3790
  %207 = icmp sgt i32 %200, -1, !dbg !3794
  br i1 %207, label %215, label %208, !dbg !3794

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !3794
  store i32 %209, i32* %8, align 8, !dbg !3794
  %210 = icmp ult i32 %200, -7, !dbg !3794
  br i1 %210, label %211, label %215, !dbg !3794

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !3794
  %213 = sext i32 %200 to i64, !dbg !3794
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !3794
  br label %219, !dbg !3794

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !3794
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !3794
  store i8* %218, i8** %10, align 8, !dbg !3794
  br label %219, !dbg !3794

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !3794
  %223 = load i8*, i8** %222, align 8, !dbg !3794
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3797
  store i8* %223, i8** %224, align 8, !dbg !3798, !tbaa !387
  %225 = icmp eq i8* %223, null, !dbg !3799
  br i1 %225, label %265, label %226, !dbg !3800

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !3787, metadata !DIExpression()), !dbg !3790
  %227 = icmp sgt i32 %220, -1, !dbg !3794
  br i1 %227, label %235, label %228, !dbg !3794

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !3794
  store i32 %229, i32* %8, align 8, !dbg !3794
  %230 = icmp ult i32 %220, -7, !dbg !3794
  br i1 %230, label %231, label %235, !dbg !3794

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !3794
  %233 = sext i32 %220 to i64, !dbg !3794
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !3794
  br label %239, !dbg !3794

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !3794
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !3794
  store i8* %238, i8** %10, align 8, !dbg !3794
  br label %239, !dbg !3794

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !3794
  %243 = load i8*, i8** %242, align 8, !dbg !3794
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3797
  store i8* %243, i8** %244, align 8, !dbg !3798, !tbaa !387
  %245 = icmp eq i8* %243, null, !dbg !3799
  br i1 %245, label %265, label %246, !dbg !3800

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !3787, metadata !DIExpression()), !dbg !3790
  %247 = icmp sgt i32 %240, -1, !dbg !3794
  br i1 %247, label %255, label %248, !dbg !3794

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !3794
  store i32 %249, i32* %8, align 8, !dbg !3794
  %250 = icmp ult i32 %240, -7, !dbg !3794
  br i1 %250, label %251, label %255, !dbg !3794

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !3794
  %253 = sext i32 %240 to i64, !dbg !3794
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !3794
  br label %258, !dbg !3794

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !3794
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !3794
  store i8* %257, i8** %10, align 8, !dbg !3794
  br label %258, !dbg !3794

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !3794
  %261 = load i8*, i8** %260, align 8, !dbg !3794
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3797
  store i8* %261, i8** %262, align 8, !dbg !3798, !tbaa !387
  %263 = icmp eq i8* %261, null, !dbg !3799
  %264 = select i1 %263, i64 9, i64 10, !dbg !3800
  br label %265, !dbg !3801

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3801
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3803
  ret void, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #9 !dbg !3804 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3808, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i8* %1, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i8* %3, metadata !3811, metadata !DIExpression()), !dbg !3813
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3814
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3814
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3812, metadata !DIExpression()), !dbg !3815
  call void @llvm.va_start(i8* nonnull %7), !dbg !3816
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3817
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3817, !tbaa.struct !1864
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3817
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3817
  call void @llvm.va_end(i8* nonnull %7), !dbg !3818
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3819
  ret void, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !3820 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3821, !tbaa !387
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3821
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.171, i64 0, i64 0), i32 noundef 5) #33, !dbg !3822
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.172, i64 0, i64 0)) #33, !dbg !3822
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.173, i64 0, i64 0), i32 noundef 5) #33, !dbg !3823
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.174, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.175, i64 0, i64 0)) #33, !dbg !3823
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.176, i64 0, i64 0), i32 noundef 5) #33, !dbg !3824
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.177, i64 0, i64 0)) #33, !dbg !3824
  ret void, !dbg !3825
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3831, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 %1, metadata !3832, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 %2, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #33, !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()) #33, !dbg !3840
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()) #33, !dbg !3840
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %4, metadata !3843, metadata !DIExpression()) #33, !dbg !3848
  %5 = icmp eq i8* %4, null, !dbg !3850
  br i1 %5, label %6, label %7, !dbg !3852

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3853
  unreachable, !dbg !3853

7:                                                ; preds = %3
  ret i8* %4, !dbg !3854
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3855
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %4, metadata !3843, metadata !DIExpression()) #33, !dbg !3857
  %5 = icmp eq i8* %4, null, !dbg !3859
  br i1 %5, label %6, label %7, !dbg !3860

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3861
  unreachable, !dbg !3861

7:                                                ; preds = %3
  ret i8* %4, !dbg !3862
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3863 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3867, metadata !DIExpression()), !dbg !3868
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3869
  call void @llvm.dbg.value(metadata i8* %2, metadata !3843, metadata !DIExpression()) #33, !dbg !3870
  %3 = icmp eq i8* %2, null, !dbg !3872
  br i1 %3, label %4, label %5, !dbg !3873

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3874
  unreachable, !dbg !3874

5:                                                ; preds = %1
  ret i8* %2, !dbg !3875
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3876 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()) #33, !dbg !3886
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %2, metadata !3843, metadata !DIExpression()) #33, !dbg !3889
  %3 = icmp eq i8* %2, null, !dbg !3891
  br i1 %3, label %4, label %5, !dbg !3892

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3893
  unreachable, !dbg !3893

5:                                                ; preds = %1
  ret i8* %2, !dbg !3894
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3895 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %0, metadata !3867, metadata !DIExpression()) #33, !dbg !3901
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %2, metadata !3843, metadata !DIExpression()) #33, !dbg !3904
  %3 = icmp eq i8* %2, null, !dbg !3906
  br i1 %3, label %4, label %5, !dbg !3907

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3908
  unreachable, !dbg !3908

5:                                                ; preds = %1
  ret i8* %2, !dbg !3909
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3914, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i64 %1, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i8* %0, metadata !3917, metadata !DIExpression()) #33, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3921, metadata !DIExpression()) #33, !dbg !3922
  %3 = icmp eq i64 %1, 0, !dbg !3924
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3924
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %5, metadata !3843, metadata !DIExpression()) #33, !dbg !3926
  %6 = icmp eq i8* %5, null, !dbg !3928
  br i1 %6, label %7, label %8, !dbg !3929

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3930
  unreachable, !dbg !3930

8:                                                ; preds = %2
  ret i8* %5, !dbg !3931
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8* %0, metadata !3939, metadata !DIExpression()) #33, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()) #33, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %0, metadata !3917, metadata !DIExpression()) #33, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %1, metadata !3921, metadata !DIExpression()) #33, !dbg !3945
  %3 = icmp eq i64 %1, 0, !dbg !3947
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3947
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %5, metadata !3843, metadata !DIExpression()) #33, !dbg !3949
  %6 = icmp eq i8* %5, null, !dbg !3951
  br i1 %6, label %7, label %8, !dbg !3952

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3953
  unreachable, !dbg !3953

8:                                                ; preds = %2
  ret i8* %5, !dbg !3954
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3959, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %2, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i8* %0, metadata !3963, metadata !DIExpression()) #33, !dbg !3968
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()) #33, !dbg !3968
  call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()) #33, !dbg !3968
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %4, metadata !3843, metadata !DIExpression()) #33, !dbg !3971
  %5 = icmp eq i8* %4, null, !dbg !3973
  br i1 %5, label %6, label %7, !dbg !3974

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3975
  unreachable, !dbg !3975

7:                                                ; preds = %3
  ret i8* %4, !dbg !3976
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3977 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i8* null, metadata !3835, metadata !DIExpression()) #33, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %0, metadata !3838, metadata !DIExpression()) #33, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3839, metadata !DIExpression()) #33, !dbg !3984
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3986
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !3987
  %4 = icmp eq i8* %3, null, !dbg !3989
  br i1 %4, label %5, label %6, !dbg !3990

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3991
  unreachable, !dbg !3991

6:                                                ; preds = %2
  ret i8* %3, !dbg !3992
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3993 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* null, metadata !3959, metadata !DIExpression()) #33, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %0, metadata !3960, metadata !DIExpression()) #33, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3961, metadata !DIExpression()) #33, !dbg !4000
  call void @llvm.dbg.value(metadata i8* null, metadata !3963, metadata !DIExpression()) #33, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %0, metadata !3966, metadata !DIExpression()) #33, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()) #33, !dbg !4002
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !4005
  %4 = icmp eq i8* %3, null, !dbg !4007
  br i1 %4, label %5, label %6, !dbg !4008

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4009
  unreachable, !dbg !4009

6:                                                ; preds = %2
  ret i8* %3, !dbg !4010
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #9 !dbg !4011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4015, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64* %1, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()) #33, !dbg !4018
  call void @llvm.dbg.value(metadata i64* %1, metadata !321, metadata !DIExpression()) #33, !dbg !4018
  call void @llvm.dbg.value(metadata i64 1, metadata !322, metadata !DIExpression()) #33, !dbg !4018
  %3 = load i64, i64* %1, align 8, !dbg !4020, !tbaa !3116
  call void @llvm.dbg.value(metadata i64 %3, metadata !323, metadata !DIExpression()) #33, !dbg !4018
  %4 = icmp eq i8* %0, null, !dbg !4021
  br i1 %4, label %5, label %8, !dbg !4023

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4024
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4027
  br label %15, !dbg !4027

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4028
  %10 = add nuw i64 %9, 1, !dbg !4028
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !4028
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4028
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4028
  call void @llvm.dbg.value(metadata i64 %13, metadata !323, metadata !DIExpression()) #33, !dbg !4018
  br i1 %12, label %14, label %15, !dbg !4031

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !4032
  unreachable, !dbg !4032

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4018
  call void @llvm.dbg.value(metadata i64 %16, metadata !323, metadata !DIExpression()) #33, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #33, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %16, metadata !3838, metadata !DIExpression()) #33, !dbg !4033
  call void @llvm.dbg.value(metadata i64 1, metadata !3839, metadata !DIExpression()) #33, !dbg !4033
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %17, metadata !3843, metadata !DIExpression()) #33, !dbg !4036
  %18 = icmp eq i8* %17, null, !dbg !4038
  br i1 %18, label %19, label %20, !dbg !4039

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !4040
  unreachable, !dbg !4040

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !320, metadata !DIExpression()) #33, !dbg !4018
  store i64 %16, i64* %1, align 8, !dbg !4041, !tbaa !3116
  ret i8* %17, !dbg !4042
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #9 !dbg !315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64* %1, metadata !321, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %2, metadata !322, metadata !DIExpression()), !dbg !4043
  %4 = load i64, i64* %1, align 8, !dbg !4044, !tbaa !3116
  call void @llvm.dbg.value(metadata i64 %4, metadata !323, metadata !DIExpression()), !dbg !4043
  %5 = icmp eq i8* %0, null, !dbg !4045
  br i1 %5, label %6, label %13, !dbg !4046

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4047
  br i1 %7, label %8, label %20, !dbg !4048

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %9, metadata !323, metadata !DIExpression()), !dbg !4043
  %10 = icmp ugt i64 %2, 128, !dbg !4051
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %12, metadata !323, metadata !DIExpression()), !dbg !4043
  br label %20, !dbg !4053

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4054
  %15 = add nuw i64 %14, 1, !dbg !4054
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4054
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4054
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %18, metadata !323, metadata !DIExpression()), !dbg !4043
  br i1 %17, label %19, label %20, !dbg !4055

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !4056
  unreachable, !dbg !4056

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4043
  call void @llvm.dbg.value(metadata i64 %21, metadata !323, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #33, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %21, metadata !3838, metadata !DIExpression()) #33, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()) #33, !dbg !4057
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %22, metadata !3843, metadata !DIExpression()) #33, !dbg !4060
  %23 = icmp eq i8* %22, null, !dbg !4062
  br i1 %23, label %24, label %25, !dbg !4063

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !4064
  unreachable, !dbg !4064

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !320, metadata !DIExpression()), !dbg !4043
  store i64 %21, i64* %1, align 8, !dbg !4065, !tbaa !3116
  ret i8* %22, !dbg !4066
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 !dbg !327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !335, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64* %1, metadata !336, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %2, metadata !337, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %3, metadata !338, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %4, metadata !339, metadata !DIExpression()), !dbg !4067
  %6 = load i64, i64* %1, align 8, !dbg !4068, !tbaa !3116
  call void @llvm.dbg.value(metadata i64 %6, metadata !340, metadata !DIExpression()), !dbg !4067
  %7 = ashr i64 %6, 1, !dbg !4069
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4069
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4069
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4069
  call void @llvm.dbg.value(metadata i64 %10, metadata !341, metadata !DIExpression()), !dbg !4067
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %11, metadata !341, metadata !DIExpression()), !dbg !4067
  %12 = icmp sgt i64 %3, -1, !dbg !4072
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4074
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %15, metadata !341, metadata !DIExpression()), !dbg !4067
  %16 = icmp slt i64 %4, 0, !dbg !4075
  br i1 %16, label %17, label %30, !dbg !4075

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4075
  br i1 %18, label %19, label %24, !dbg !4075

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4075
  %21 = udiv i64 9223372036854775807, %20, !dbg !4075
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4075
  br i1 %23, label %46, label %43, !dbg !4075

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4075
  br i1 %25, label %43, label %26, !dbg !4075

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4075
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4075
  %29 = icmp ult i64 %28, %15, !dbg !4075
  br i1 %29, label %46, label %43, !dbg !4075

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4075
  br i1 %31, label %43, label %32, !dbg !4075

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4075
  br i1 %33, label %34, label %40, !dbg !4075

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4075
  br i1 %35, label %43, label %36, !dbg !4075

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4075
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4075
  %39 = icmp ult i64 %38, %4, !dbg !4075
  br i1 %39, label %46, label %43, !dbg !4075

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4075
  %42 = icmp ult i64 %41, %15, !dbg !4075
  br i1 %42, label %46, label %43, !dbg !4075

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4067
  %44 = mul i64 %15, %4, !dbg !4075
  call void @llvm.dbg.value(metadata i64 %44, metadata !342, metadata !DIExpression()), !dbg !4067
  %45 = icmp slt i64 %44, 128, !dbg !4075
  br i1 %45, label %46, label %52, !dbg !4075

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !343, metadata !DIExpression()), !dbg !4067
  %48 = sdiv i64 %47, %4, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %48, metadata !341, metadata !DIExpression()), !dbg !4067
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %51, metadata !342, metadata !DIExpression()), !dbg !4067
  br label %52, !dbg !4080

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4067
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4067
  call void @llvm.dbg.value(metadata i64 %54, metadata !342, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %53, metadata !341, metadata !DIExpression()), !dbg !4067
  %55 = icmp eq i8* %0, null, !dbg !4081
  br i1 %55, label %56, label %57, !dbg !4083

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4084, !tbaa !3116
  br label %57, !dbg !4085

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4086
  %59 = icmp slt i64 %58, %2, !dbg !4088
  br i1 %59, label %60, label %97, !dbg !4089

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4090
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4090
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %63, metadata !341, metadata !DIExpression()), !dbg !4067
  br i1 %62, label %96, label %64, !dbg !4091

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4092
  br i1 %66, label %96, label %67, !dbg !4092

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4093

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4093
  br i1 %69, label %70, label %75, !dbg !4093

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4093
  %72 = udiv i64 9223372036854775807, %71, !dbg !4093
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4093
  br i1 %74, label %96, label %94, !dbg !4093

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4093
  br i1 %76, label %94, label %77, !dbg !4093

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4093
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4093
  %80 = icmp ult i64 %79, %63, !dbg !4093
  br i1 %80, label %96, label %94, !dbg !4093

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4093
  br i1 %82, label %94, label %83, !dbg !4093

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4093
  br i1 %84, label %85, label %91, !dbg !4093

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4093
  br i1 %86, label %94, label %87, !dbg !4093

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4093
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4093
  %90 = icmp ult i64 %89, %4, !dbg !4093
  br i1 %90, label %96, label %94, !dbg !4093

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4093
  %93 = icmp ult i64 %92, %63, !dbg !4093
  br i1 %93, label %96, label %94, !dbg !4093

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4067
  %95 = mul i64 %63, %4, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %95, metadata !342, metadata !DIExpression()), !dbg !4067
  br label %97, !dbg !4094

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !4095
  unreachable, !dbg !4095

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4067
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4067
  call void @llvm.dbg.value(metadata i64 %99, metadata !342, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 %98, metadata !341, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i8* %0, metadata !3914, metadata !DIExpression()) #33, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %99, metadata !3915, metadata !DIExpression()) #33, !dbg !4096
  call void @llvm.dbg.value(metadata i8* %0, metadata !3917, metadata !DIExpression()) #33, !dbg !4098
  call void @llvm.dbg.value(metadata i64 %99, metadata !3921, metadata !DIExpression()) #33, !dbg !4098
  %100 = icmp eq i64 %99, 0, !dbg !4100
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4100
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %102, metadata !3843, metadata !DIExpression()) #33, !dbg !4102
  %103 = icmp eq i8* %102, null, !dbg !4104
  br i1 %103, label %104, label %105, !dbg !4105

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !4106
  unreachable, !dbg !4106

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !335, metadata !DIExpression()), !dbg !4067
  store i64 %98, i64* %1, align 8, !dbg !4107, !tbaa !3116
  ret i8* %102, !dbg !4108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4109 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i64 %0, metadata !4113, metadata !DIExpression()) #33, !dbg !4117
  call void @llvm.dbg.value(metadata i64 1, metadata !4116, metadata !DIExpression()) #33, !dbg !4117
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %2, metadata !3843, metadata !DIExpression()) #33, !dbg !4120
  %3 = icmp eq i8* %2, null, !dbg !4122
  br i1 %3, label %4, label %5, !dbg !4123

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4124
  unreachable, !dbg !4124

5:                                                ; preds = %1
  ret i8* %2, !dbg !4125
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4114 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4113, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4116, metadata !DIExpression()), !dbg !4126
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !4128
  %4 = icmp eq i8* %3, null, !dbg !4130
  br i1 %4, label %5, label %6, !dbg !4131

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4132
  unreachable, !dbg !4132

6:                                                ; preds = %2
  ret i8* %3, !dbg !4133
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !4134 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %0, metadata !4138, metadata !DIExpression()) #33, !dbg !4142
  call void @llvm.dbg.value(metadata i64 1, metadata !4141, metadata !DIExpression()) #33, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()) #33, !dbg !4148
  call void @llvm.dbg.value(metadata i64 1, metadata !4147, metadata !DIExpression()) #33, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()) #33, !dbg !4148
  call void @llvm.dbg.value(metadata i64 1, metadata !4147, metadata !DIExpression()) #33, !dbg !4148
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4150
  call void @llvm.dbg.value(metadata i8* %2, metadata !3843, metadata !DIExpression()) #33, !dbg !4151
  %3 = icmp eq i8* %2, null, !dbg !4153
  br i1 %3, label %4, label %5, !dbg !4154

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4155
  unreachable, !dbg !4155

5:                                                ; preds = %1
  ret i8* %2, !dbg !4156
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4138, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()) #33, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4147, metadata !DIExpression()) #33, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()) #33, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4147, metadata !DIExpression()) #33, !dbg !4158
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4160
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !4161
  %4 = icmp eq i8* %3, null, !dbg !4163
  br i1 %4, label %5, label %6, !dbg !4164

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4165
  unreachable, !dbg !4165

6:                                                ; preds = %2
  ret i8* %3, !dbg !4166
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()) #33, !dbg !4174
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !4177
  %4 = icmp eq i8* %3, null, !dbg !4179
  br i1 %4, label %5, label %6, !dbg !4180

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4181
  unreachable, !dbg !4181

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4182, metadata !DIExpression()) #33, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()) #33, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()) #33, !dbg !4191
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4193
  ret i8* %3, !dbg !4194
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !3880, metadata !DIExpression()) #33, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()) #33, !dbg !4204
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4206
  call void @llvm.dbg.value(metadata i8* %3, metadata !3843, metadata !DIExpression()) #33, !dbg !4207
  %4 = icmp eq i8* %3, null, !dbg !4209
  br i1 %4, label %5, label %6, !dbg !4210

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4211
  unreachable, !dbg !4211

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4182, metadata !DIExpression()) #33, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()) #33, !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()) #33, !dbg !4212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4214
  ret i8* %3, !dbg !4215
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 !dbg !4216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4220, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4223
  %3 = add nsw i64 %1, 1, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %3, metadata !3880, metadata !DIExpression()) #33, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %3, metadata !3882, metadata !DIExpression()) #33, !dbg !4227
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4229
  call void @llvm.dbg.value(metadata i8* %4, metadata !3843, metadata !DIExpression()) #33, !dbg !4230
  %5 = icmp eq i8* %4, null, !dbg !4232
  br i1 %5, label %6, label %7, !dbg !4233

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4234
  unreachable, !dbg !4234

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4222, metadata !DIExpression()), !dbg !4223
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4235
  store i8 0, i8* %8, align 1, !dbg !4236, !tbaa !562
  call void @llvm.dbg.value(metadata i8* %4, metadata !4182, metadata !DIExpression()) #33, !dbg !4237
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()) #33, !dbg !4237
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()) #33, !dbg !4237
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4239
  ret i8* %4, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #9 !dbg !4241 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4243, metadata !DIExpression()), !dbg !4244
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !4245
  %3 = add i64 %2, 1, !dbg !4246
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()) #33, !dbg !4247
  call void @llvm.dbg.value(metadata i64 %3, metadata !4172, metadata !DIExpression()) #33, !dbg !4247
  call void @llvm.dbg.value(metadata i64 %3, metadata !3867, metadata !DIExpression()) #33, !dbg !4249
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4251
  call void @llvm.dbg.value(metadata i8* %4, metadata !3843, metadata !DIExpression()) #33, !dbg !4252
  %5 = icmp eq i8* %4, null, !dbg !4254
  br i1 %5, label %6, label %7, !dbg !4255

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4256
  unreachable, !dbg !4256

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4182, metadata !DIExpression()) #33, !dbg !4257
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()) #33, !dbg !4257
  call void @llvm.dbg.value(metadata i64 %3, metadata !4190, metadata !DIExpression()) #33, !dbg !4257
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !4259
  ret i8* %4, !dbg !4260
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4261 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4266, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %1, metadata !4263, metadata !DIExpression()), !dbg !4267
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.188, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.189, i64 0, i64 0), i32 noundef 5) #33, !dbg !4266
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.190, i64 0, i64 0), i8* noundef %2) #33, !dbg !4266
  %3 = icmp eq i32 %1, 0, !dbg !4266
  tail call void @llvm.assume(i1 %3), !dbg !4266
  tail call void @abort() #35, !dbg !4268
  unreachable, !dbg !4268
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #9 !dbg !4269 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4307, metadata !DIExpression()), !dbg !4312
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !4313
  call void @llvm.dbg.value(metadata i1 undef, metadata !4308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4314, metadata !DIExpression()), !dbg !4317
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4319
  %4 = load i32, i32* %3, align 8, !dbg !4319, !tbaa !4320
  %5 = and i32 %4, 32, !dbg !4321
  %6 = icmp eq i32 %5, 0, !dbg !4321
  call void @llvm.dbg.value(metadata i1 %6, metadata !4310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !4322
  %8 = icmp eq i32 %7, 0, !dbg !4323
  call void @llvm.dbg.value(metadata i1 %8, metadata !4311, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  br i1 %6, label %9, label %19, !dbg !4324

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4326
  call void @llvm.dbg.value(metadata i1 %10, metadata !4308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4327
  %12 = xor i1 %8, true, !dbg !4327
  %13 = sext i1 %12 to i32, !dbg !4327
  br i1 %11, label %22, label %14, !dbg !4327

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !4328
  %16 = load i32, i32* %15, align 4, !dbg !4328, !tbaa !1351
  %17 = icmp ne i32 %16, 9, !dbg !4329
  %18 = sext i1 %17 to i32, !dbg !4330
  br label %22, !dbg !4330

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4331

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !4333
  store i32 0, i32* %21, align 4, !dbg !4335, !tbaa !1351
  br label %22, !dbg !4333

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4312
  ret i32 %23, !dbg !4336
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #9 !dbg !4337 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4375, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4376, metadata !DIExpression()), !dbg !4379
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %2, metadata !4377, metadata !DIExpression()), !dbg !4379
  %3 = icmp slt i32 %2, 0, !dbg !4381
  br i1 %3, label %4, label %6, !dbg !4383

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4384
  br label %24, !dbg !4385

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4386
  %8 = icmp eq i32 %7, 0, !dbg !4386
  br i1 %8, label %13, label %9, !dbg !4388

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4389
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !4390
  %12 = icmp eq i64 %11, -1, !dbg !4391
  br i1 %12, label %16, label %13, !dbg !4392

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4393
  %15 = icmp eq i32 %14, 0, !dbg !4393
  br i1 %15, label %16, label %18, !dbg !4394

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4376, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4378, metadata !DIExpression()), !dbg !4379
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4395
  call void @llvm.dbg.value(metadata i32 %21, metadata !4378, metadata !DIExpression()), !dbg !4379
  br label %24, !dbg !4396

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !4397
  %20 = load i32, i32* %19, align 4, !dbg !4397, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 %20, metadata !4376, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4378, metadata !DIExpression()), !dbg !4379
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4395
  call void @llvm.dbg.value(metadata i32 %21, metadata !4378, metadata !DIExpression()), !dbg !4379
  %22 = icmp eq i32 %20, 0, !dbg !4398
  br i1 %22, label %24, label %23, !dbg !4396

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4400, !tbaa !1351
  call void @llvm.dbg.value(metadata i32 -1, metadata !4378, metadata !DIExpression()), !dbg !4379
  br label %24, !dbg !4402

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4379
  ret i32 %25, !dbg !4403
}

; Function Attrs: nofree nounwind
declare !dbg !4404 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4405 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4406 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #9 !dbg !4410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4448, metadata !DIExpression()), !dbg !4449
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4450
  br i1 %2, label %6, label %3, !dbg !4452

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4453
  %5 = icmp eq i32 %4, 0, !dbg !4453
  br i1 %5, label %6, label %8, !dbg !4454

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4455
  br label %17, !dbg !4456

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4457, metadata !DIExpression()) #33, !dbg !4462
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4464
  %10 = load i32, i32* %9, align 8, !dbg !4464, !tbaa !4320
  %11 = and i32 %10, 256, !dbg !4466
  %12 = icmp eq i32 %11, 0, !dbg !4466
  br i1 %12, label %15, label %13, !dbg !4467

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !4468
  br label %15, !dbg !4468

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4469
  br label %17, !dbg !4470

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4449
  ret i32 %18, !dbg !4471
}

; Function Attrs: nofree nounwind
declare !dbg !4472 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4473 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4512, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %1, metadata !4513, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 %2, metadata !4514, metadata !DIExpression()), !dbg !4518
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4519
  %5 = load i8*, i8** %4, align 8, !dbg !4519, !tbaa !4520
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4521
  %7 = load i8*, i8** %6, align 8, !dbg !4521, !tbaa !4522
  %8 = icmp eq i8* %5, %7, !dbg !4523
  br i1 %8, label %9, label %28, !dbg !4524

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4525
  %11 = load i8*, i8** %10, align 8, !dbg !4525, !tbaa !1979
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4526
  %13 = load i8*, i8** %12, align 8, !dbg !4526, !tbaa !4527
  %14 = icmp eq i8* %11, %13, !dbg !4528
  br i1 %14, label %15, label %28, !dbg !4529

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4530
  %17 = load i8*, i8** %16, align 8, !dbg !4530, !tbaa !4531
  %18 = icmp eq i8* %17, null, !dbg !4532
  br i1 %18, label %19, label %28, !dbg !4533

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !4534
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !4535
  call void @llvm.dbg.value(metadata i64 %21, metadata !4515, metadata !DIExpression()), !dbg !4536
  %22 = icmp eq i64 %21, -1, !dbg !4537
  br i1 %22, label %30, label %23, !dbg !4539

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4540
  %25 = load i32, i32* %24, align 8, !dbg !4541, !tbaa !4320
  %26 = and i32 %25, -17, !dbg !4541
  store i32 %26, i32* %24, align 8, !dbg !4541, !tbaa !4320
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4542
  store i64 %21, i64* %27, align 8, !dbg !4543, !tbaa !4544
  br label %30, !dbg !4545

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4546
  br label %30, !dbg !4547

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4518
  ret i32 %31, !dbg !4548
}

; Function Attrs: nofree nounwind
declare !dbg !4549 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #9 !dbg !4552 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4557, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %1, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %2, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4560, metadata !DIExpression()), !dbg !4562
  %5 = icmp eq i8* %1, null, !dbg !4563
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4565
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), i8* %1, !dbg !4565
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4565
  call void @llvm.dbg.value(metadata i64 %8, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %7, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32* %6, metadata !4557, metadata !DIExpression()), !dbg !4562
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4566
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4568
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4560, metadata !DIExpression()), !dbg !4562
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !4569
  call void @llvm.dbg.value(metadata i64 %11, metadata !4561, metadata !DIExpression()), !dbg !4562
  %12 = icmp ult i64 %11, -3, !dbg !4570
  br i1 %12, label %13, label %18, !dbg !4572

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !4573
  %15 = icmp eq i32 %14, 0, !dbg !4573
  br i1 %15, label %16, label %30, !dbg !4574

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4575, metadata !DIExpression()) #33, !dbg !4580
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4582, metadata !DIExpression()) #33, !dbg !4587
  call void @llvm.dbg.value(metadata i32 0, metadata !4585, metadata !DIExpression()) #33, !dbg !4587
  call void @llvm.dbg.value(metadata i64 8, metadata !4586, metadata !DIExpression()) #33, !dbg !4587
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4589
  store i64 0, i64* %17, align 1, !dbg !4589
  br label %30, !dbg !4590

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4591
  br i1 %19, label %20, label %21, !dbg !4593

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !4594
  unreachable, !dbg !4594

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4595

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !4597
  br i1 %24, label %30, label %25, !dbg !4598

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4599
  br i1 %26, label %30, label %27, !dbg !4602

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4603, !tbaa !562
  %29 = zext i8 %28 to i32, !dbg !4604
  store i32 %29, i32* %6, align 4, !dbg !4605, !tbaa !1351
  br label %30, !dbg !4606

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4562
  ret i64 %31, !dbg !4607
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4608 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4616, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %1, metadata !4617, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %2, metadata !4618, metadata !DIExpression()), !dbg !4620
  %4 = icmp eq i64 %2, 0, !dbg !4621
  br i1 %4, label %8, label %5, !dbg !4621

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4621
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4621
  br i1 %7, label %13, label %8, !dbg !4621

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4620
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4620
  %9 = mul i64 %2, %1, !dbg !4621
  call void @llvm.dbg.value(metadata i64 %9, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i8* %0, metadata !4623, metadata !DIExpression()) #33, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %9, metadata !4626, metadata !DIExpression()) #33, !dbg !4627
  %10 = icmp eq i64 %9, 0, !dbg !4629
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4629
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !4630
  br label %15, !dbg !4631

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4620
  %14 = tail call i32* @__errno_location() #36, !dbg !4632
  store i32 12, i32* %14, align 4, !dbg !4634, !tbaa !1351
  br label %15, !dbg !4635

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4620
  ret i8* %16, !dbg !4636
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #9 !dbg !4637 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4641, metadata !DIExpression()), !dbg !4646
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4647
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4647
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4642, metadata !DIExpression()), !dbg !4648
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !4649
  %5 = icmp eq i32 %4, 0, !dbg !4649
  br i1 %5, label %6, label %13, !dbg !4651

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4652, metadata !DIExpression()) #33, !dbg !4656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), metadata !4655, metadata !DIExpression()) #33, !dbg !4656
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), i64 2), !dbg !4659
  %8 = icmp eq i32 %7, 0, !dbg !4660
  br i1 %8, label %12, label %9, !dbg !4661

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4652, metadata !DIExpression()) #33, !dbg !4662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0), metadata !4655, metadata !DIExpression()) #33, !dbg !4662
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0), i64 6), !dbg !4664
  %11 = icmp eq i32 %10, 0, !dbg !4665
  br i1 %11, label %12, label %13, !dbg !4666

12:                                               ; preds = %9, %6
  br label %13, !dbg !4667

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4646
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4668
  ret i1 %14, !dbg !4668
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #9 !dbg !4669 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4673, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i8* %1, metadata !4674, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %2, metadata !4675, metadata !DIExpression()), !dbg !4676
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !4677
  ret i32 %4, !dbg !4678
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #9 !dbg !4679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4681, metadata !DIExpression()), !dbg !4682
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !4683
  ret i8* %2, !dbg !4684
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #9 !dbg !4685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4687, metadata !DIExpression()), !dbg !4689
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4690
  call void @llvm.dbg.value(metadata i8* %2, metadata !4688, metadata !DIExpression()), !dbg !4689
  ret i8* %2, !dbg !4691
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #9 !dbg !4692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4694, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i8* %1, metadata !4695, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 %2, metadata !4696, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 %0, metadata !4687, metadata !DIExpression()) #33, !dbg !4702
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4704
  call void @llvm.dbg.value(metadata i8* %4, metadata !4688, metadata !DIExpression()) #33, !dbg !4702
  call void @llvm.dbg.value(metadata i8* %4, metadata !4697, metadata !DIExpression()), !dbg !4701
  %5 = icmp eq i8* %4, null, !dbg !4705
  br i1 %5, label %6, label %9, !dbg !4706

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4707
  br i1 %7, label %19, label %8, !dbg !4710

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4711, !tbaa !562
  br label %19, !dbg !4712

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4713
  call void @llvm.dbg.value(metadata i64 %10, metadata !4698, metadata !DIExpression()), !dbg !4714
  %11 = icmp ult i64 %10, %2, !dbg !4715
  br i1 %11, label %12, label %14, !dbg !4717

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4718
  call void @llvm.dbg.value(metadata i8* %1, metadata !4720, metadata !DIExpression()) #33, !dbg !4725
  call void @llvm.dbg.value(metadata i8* %4, metadata !4723, metadata !DIExpression()) #33, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %13, metadata !4724, metadata !DIExpression()) #33, !dbg !4725
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4727
  br label %19, !dbg !4728

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4729
  br i1 %15, label %19, label %16, !dbg !4732

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %1, metadata !4720, metadata !DIExpression()) #33, !dbg !4735
  call void @llvm.dbg.value(metadata i8* %4, metadata !4723, metadata !DIExpression()) #33, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %17, metadata !4724, metadata !DIExpression()) #33, !dbg !4735
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4737
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4738
  store i8 0, i8* %18, align 1, !dbg !4739, !tbaa !562
  br label %19, !dbg !4740

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4741
  ret i32 %20, !dbg !4742
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!255, !2, !293, !296, !13, !235, !298, !300, !302, !58, !75, !86, !119, !304, !227, !311, !345, !347, !349, !351, !353, !241, !355, !358, !360, !362}
!llvm.ident = !{!364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364, !364}
!llvm.module.flags = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !3, line: 45, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !3, line: 55, type: !7, isLocal: true, isDefinition: true)
!7 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !13, file: !14, line: 66, type: !53, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !18, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19, !47, !11, !49, !51}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "old_file_name", scope: !21, file: !14, line: 304, type: !8, isLocal: true, isDefinition: true)
!21 = distinct !DISubprogram(name: "verror_at_line", scope: !14, file: !14, line: 298, type: !22, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !40)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !8, !25, !8, !26}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 52, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !29, line: 32, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !31, baseType: !32)
!31 = !DIFile(filename: "lib/error.c", directory: "/src")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !33, size: 256, elements: !34)
!33 = !DINamespace(name: "std", scope: null)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !32, file: !31, baseType: !16, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !32, file: !31, baseType: !16, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !32, file: !31, baseType: !16, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !32, file: !31, baseType: !24, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !32, file: !31, baseType: !24, size: 32, offset: 224)
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DILocalVariable(name: "status", arg: 1, scope: !21, file: !14, line: 298, type: !24)
!42 = !DILocalVariable(name: "errnum", arg: 2, scope: !21, file: !14, line: 298, type: !24)
!43 = !DILocalVariable(name: "file_name", arg: 3, scope: !21, file: !14, line: 298, type: !8)
!44 = !DILocalVariable(name: "line_number", arg: 4, scope: !21, file: !14, line: 298, type: !25)
!45 = !DILocalVariable(name: "message", arg: 5, scope: !21, file: !14, line: 298, type: !8)
!46 = !DILocalVariable(name: "args", arg: 6, scope: !21, file: !14, line: 298, type: !26)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "old_line_number", scope: !21, file: !14, line: 305, type: !25, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "error_message_count", scope: !13, file: !14, line: 69, type: !25, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !13, file: !14, line: 295, type: !24, isLocal: false, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "long_options", scope: !58, file: !59, line: 34, type: !61, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !60, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!60 = !{!56}
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !71)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !64, line: 50, size: 256, elements: !65)
!64 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!65 = !{!66, !67, !68, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !64, line: 52, baseType: !8, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !63, file: !64, line: 55, baseType: !24, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !63, file: !64, line: 56, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !63, file: !64, line: 57, baseType: !24, size: 32, offset: 192)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "program_name", scope: !75, file: !76, line: 31, type: !8, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !77, globals: !79, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!79 = !{!73}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "utf07FF", scope: !82, file: !83, line: 46, type: !114, isLocal: true, isDefinition: true)
!82 = distinct !DISubprogram(name: "proper_name_lite", scope: !83, file: !83, line: 38, type: !84, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !88)
!83 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!84 = !DISubroutineType(types: !85)
!85 = !{!8, !8, !8}
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !87, splitDebugInlining: false, nameTableKind: None)
!87 = !{!80}
!88 = !{!89, !90, !91, !92, !98}
!89 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !82, file: !83, line: 38, type: !8)
!90 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !82, file: !83, line: 38, type: !8)
!91 = !DILocalVariable(name: "translation", scope: !82, file: !83, line: 40, type: !8)
!92 = !DILocalVariable(name: "w", scope: !82, file: !83, line: 47, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !94, line: 37, baseType: !95)
!94 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !96, line: 57, baseType: !97)
!96 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 42, baseType: !25)
!98 = !DILocalVariable(name: "mbs", scope: !82, file: !83, line: 48, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !100, line: 6, baseType: !101)
!100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 13, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !103, file: !102, line: 15, baseType: !24, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !103, file: !102, line: 20, baseType: !107, size: 32, offset: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !102, line: 16, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !107, file: !102, line: 18, baseType: !25, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !107, file: !102, line: 19, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 2)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !119, file: !120, line: 76, type: !221, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !156, globals: !161, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!121 = !{!122, !136, !141}
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !123, line: 42, baseType: !25, size: 32, elements: !124)
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
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !123, line: 254, baseType: !25, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!139 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!140 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 46, baseType: !25, size: 32, elements: !143)
!142 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DIEnumerator(name: "_ISupper", value: 256)
!145 = !DIEnumerator(name: "_ISlower", value: 512)
!146 = !DIEnumerator(name: "_ISalpha", value: 1024)
!147 = !DIEnumerator(name: "_ISdigit", value: 2048)
!148 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!149 = !DIEnumerator(name: "_ISspace", value: 8192)
!150 = !DIEnumerator(name: "_ISprint", value: 16384)
!151 = !DIEnumerator(name: "_ISgraph", value: 32768)
!152 = !DIEnumerator(name: "_ISblank", value: 1)
!153 = !DIEnumerator(name: "_IScntrl", value: 2)
!154 = !DIEnumerator(name: "_ISpunct", value: 4)
!155 = !DIEnumerator(name: "_ISalnum", value: 8)
!156 = !{!24, !157, !158}
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!161 = !{!117, !162, !168, !180, !182, !187, !210, !217, !219}
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !119, file: !120, line: 92, type: !164, isLocal: false, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 320, elements: !166)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!166 = !{!167}
!167 = !DISubrange(count: 10)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !119, file: !120, line: 1040, type: !170, isLocal: false, isDefinition: true)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !120, line: 56, size: 448, elements: !171)
!171 = !{!172, !173, !174, !178, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !170, file: !120, line: 59, baseType: !122, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !120, line: 62, baseType: !24, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !170, file: !120, line: 66, baseType: !175, size: 256, offset: 64)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !170, file: !120, line: 69, baseType: !8, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !170, file: !120, line: 72, baseType: !8, size: 64, offset: 384)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !119, file: !120, line: 107, type: !170, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "slot0", scope: !119, file: !120, line: 831, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 256)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "quote", scope: !189, file: !120, line: 228, type: !208, isLocal: true, isDefinition: true)
!189 = distinct !DISubprogram(name: "gettext_quote", scope: !120, file: !120, line: 197, type: !190, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!8, !8, !122}
!192 = !{!193, !194, !195, !196, !197}
!193 = !DILocalVariable(name: "msgid", arg: 1, scope: !189, file: !120, line: 197, type: !8)
!194 = !DILocalVariable(name: "s", arg: 2, scope: !189, file: !120, line: 197, type: !122)
!195 = !DILocalVariable(name: "translation", scope: !189, file: !120, line: 199, type: !8)
!196 = !DILocalVariable(name: "w", scope: !189, file: !120, line: 229, type: !93)
!197 = !DILocalVariable(name: "mbs", scope: !189, file: !120, line: 230, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !100, line: 6, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !102, line: 21, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 13, size: 64, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !200, file: !102, line: 15, baseType: !24, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !200, file: !102, line: 20, baseType: !204, size: 32, offset: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !102, line: 16, size: 32, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !204, file: !102, line: 18, baseType: !25, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !204, file: !102, line: 19, baseType: !111, size: 32)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !209)
!209 = !{!116, !113}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "slotvec", scope: !119, file: !120, line: 834, type: !212, isLocal: true, isDefinition: true)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !120, line: 823, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !120, line: 825, baseType: !158, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !120, line: 826, baseType: !78, size: 64, offset: 64)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "nslots", scope: !119, file: !120, line: 832, type: !24, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "slotvec0", scope: !119, file: !120, line: 833, type: !213, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 704, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!223 = !{!224}
!224 = !DISubrange(count: 11)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !227, file: !228, line: 26, type: !230, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!229 = !{!225}
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 376, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 47)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "exit_failure", scope: !235, file: !236, line: 24, type: !238, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !237, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!237 = !{!233}
!238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "internal_state", scope: !241, file: !242, line: 97, type: !245, isLocal: true, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !243, globals: !244, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!243 = !{!16, !158, !17}
!244 = !{!239}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !100, line: 6, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !102, line: 21, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 13, size: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !247, file: !102, line: 15, baseType: !24, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !247, file: !102, line: 20, baseType: !251, size: 32, offset: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !102, line: 16, size: 32, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !251, file: !102, line: 18, baseType: !25, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !251, file: !102, line: 19, baseType: !111, size: 32)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "src/getlimits.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ed6d94e0e906a370641c37b64ce0bd77")
!257 = !{!258, !262, !122}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !259, line: 79, baseType: !25, size: 32, elements: !260)
!259 = !DIFile(filename: "src/ioblksize.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f13fda6387359f0e51e261e99a350a45")
!260 = !{!261}
!261 = !DIEnumerator(name: "IO_BUFSIZE", value: 262144)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 64, baseType: !25, size: 32, elements: !264)
!263 = !DIFile(filename: "./lib/ftoastr.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d8852edab60e1bfe07894c612610ce33")
!264 = !{!265, !266, !267, !268, !269}
!265 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1)
!266 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2)
!267 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4)
!268 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8)
!269 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16)
!270 = !{!8, !16, !271, !274, !277, !280, !283, !285, !287, !289, !291, !78}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !272, line: 102, baseType: !273)
!272 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !96, line: 73, baseType: !160)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !272, line: 101, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !96, line: 72, baseType: !276)
!276 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !278, line: 108, baseType: !279)
!278 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !96, line: 194, baseType: !276)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !281, line: 10, baseType: !282)
!281 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !96, line: 160, baseType: !276)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !278, line: 79, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !96, line: 146, baseType: !25)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !278, line: 64, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !96, line: 147, baseType: !25)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !278, line: 97, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !96, line: 154, baseType: !24)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !278, line: 85, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !96, line: 152, baseType: !276)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !278, line: 92, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !96, line: 153, baseType: !276)
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/dtoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "367e58fad54b60d82e990a7817df6f7e")
!295 = !{!262}
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/errno-iter.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ec4d98da369fe14aa3b798718c6fb0d9")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/ftoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "70bb2ecb9a59521192f153bc763df3dd")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !295, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/ldtoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ed53b0dc1afc729b2798d210ca78543")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !306, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!306 = !{!307}
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !305, line: 40, baseType: !25, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!310 = !{!16}
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!313 = !{!314, !326}
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !315, file: !312, line: 188, baseType: !25, size: 32, elements: !324)
!315 = distinct !DISubprogram(name: "x2nrealloc", scope: !312, file: !312, line: 176, type: !316, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !319)
!316 = !DISubroutineType(types: !317)
!317 = !{!16, !16, !318, !158}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!319 = !{!320, !321, !322, !323}
!320 = !DILocalVariable(name: "p", arg: 1, scope: !315, file: !312, line: 176, type: !16)
!321 = !DILocalVariable(name: "pn", arg: 2, scope: !315, file: !312, line: 176, type: !318)
!322 = !DILocalVariable(name: "s", arg: 3, scope: !315, file: !312, line: 176, type: !158)
!323 = !DILocalVariable(name: "n", scope: !315, file: !312, line: 178, type: !158)
!324 = !{!325}
!325 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !327, file: !312, line: 228, baseType: !25, size: 32, elements: !324)
!327 = distinct !DISubprogram(name: "xpalloc", scope: !312, file: !312, line: 223, type: !328, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !334)
!328 = !DISubroutineType(types: !329)
!329 = !{!16, !16, !330, !331, !333, !331}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !332, line: 130, baseType: !333)
!332 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !159, line: 35, baseType: !276)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343}
!335 = !DILocalVariable(name: "pa", arg: 1, scope: !327, file: !312, line: 223, type: !16)
!336 = !DILocalVariable(name: "pn", arg: 2, scope: !327, file: !312, line: 223, type: !330)
!337 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !327, file: !312, line: 223, type: !331)
!338 = !DILocalVariable(name: "n_max", arg: 4, scope: !327, file: !312, line: 223, type: !333)
!339 = !DILocalVariable(name: "s", arg: 5, scope: !327, file: !312, line: 223, type: !331)
!340 = !DILocalVariable(name: "n0", scope: !327, file: !312, line: 230, type: !331)
!341 = !DILocalVariable(name: "n", scope: !327, file: !312, line: 237, type: !331)
!342 = !DILocalVariable(name: "nbytes", scope: !327, file: !312, line: 248, type: !331)
!343 = !DILocalVariable(name: "adjusted_nbytes", scope: !327, file: !312, line: 252, type: !331)
!344 = !{!78, !16, !7, !276, !160}
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !357, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!357 = !{!7, !160, !16}
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !310, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!364 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!365 = !{i32 7, !"Dwarf Version", i32 5}
!366 = !{i32 2, !"Debug Info Version", i32 3}
!367 = !{i32 1, !"wchar_size", i32 4}
!368 = !{i32 1, !"branch-target-enforcement", i32 0}
!369 = !{i32 1, !"sign-return-address", i32 0}
!370 = !{i32 1, !"sign-return-address-all", i32 0}
!371 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"PIC Level", i32 2}
!373 = !{i32 7, !"PIE Level", i32 2}
!374 = !{i32 7, !"uwtable", i32 1}
!375 = !{i32 7, !"frame-pointer", i32 1}
!376 = distinct !DISubprogram(name: "usage", scope: !256, file: !256, line: 79, type: !377, scopeLine: 80, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !24}
!379 = !{!380}
!380 = !DILocalVariable(name: "status", arg: 1, scope: !376, file: !256, line: 79, type: !24)
!381 = !DILocation(line: 0, scope: !376)
!382 = !DILocation(line: 81, column: 14, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !256, line: 81, column: 7)
!384 = !DILocation(line: 81, column: 7, scope: !376)
!385 = !DILocation(line: 82, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !256, line: 82, column: 5)
!387 = !{!388, !388, i64 0}
!388 = !{!"any pointer", !389, i64 0}
!389 = !{!"omnipotent char", !390, i64 0}
!390 = !{!"Simple C/C++ TBAA"}
!391 = !DILocation(line: 85, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !256, line: 84, column: 5)
!393 = !DILocation(line: 89, column: 7, scope: !392)
!394 = !DILocation(line: 93, column: 7, scope: !392)
!395 = !DILocation(line: 94, column: 7, scope: !392)
!396 = !DILocalVariable(name: "program", arg: 1, scope: !397, file: !398, line: 836, type: !8)
!397 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !398, file: !398, line: 836, type: !399, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !401)
!398 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!399 = !DISubroutineType(types: !400)
!400 = !{null, !8}
!401 = !{!396, !402, !411, !412, !414, !415}
!402 = !DILocalVariable(name: "infomap", scope: !397, file: !398, line: 838, type: !403)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 896, elements: !409)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !397, file: !398, line: 838, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !405, file: !398, line: 838, baseType: !8, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !405, file: !398, line: 838, baseType: !8, size: 64, offset: 64)
!409 = !{!410}
!410 = !DISubrange(count: 7)
!411 = !DILocalVariable(name: "node", scope: !397, file: !398, line: 848, type: !8)
!412 = !DILocalVariable(name: "map_prog", scope: !397, file: !398, line: 849, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!414 = !DILocalVariable(name: "lc_messages", scope: !397, file: !398, line: 861, type: !8)
!415 = !DILocalVariable(name: "url_program", scope: !397, file: !398, line: 874, type: !8)
!416 = !DILocation(line: 0, scope: !397, inlinedAt: !417)
!417 = distinct !DILocation(line: 95, column: 7, scope: !392)
!418 = !DILocation(line: 838, column: 3, scope: !397, inlinedAt: !417)
!419 = !DILocation(line: 838, column: 67, scope: !397, inlinedAt: !417)
!420 = !DILocation(line: 849, column: 36, scope: !397, inlinedAt: !417)
!421 = !DILocation(line: 851, column: 3, scope: !397, inlinedAt: !417)
!422 = !DILocalVariable(name: "__s1", arg: 1, scope: !423, file: !424, line: 1359, type: !8)
!423 = distinct !DISubprogram(name: "streq", scope: !424, file: !424, line: 1359, type: !425, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !427)
!424 = !DIFile(filename: "./lib/string.h", directory: "/src")
!425 = !DISubroutineType(types: !426)
!426 = !{!7, !8, !8}
!427 = !{!422, !428}
!428 = !DILocalVariable(name: "__s2", arg: 2, scope: !423, file: !424, line: 1359, type: !8)
!429 = !DILocation(line: 0, scope: !423, inlinedAt: !430)
!430 = distinct !DILocation(line: 851, column: 33, scope: !397, inlinedAt: !417)
!431 = !DILocation(line: 1361, column: 11, scope: !423, inlinedAt: !430)
!432 = !DILocation(line: 1361, column: 10, scope: !423, inlinedAt: !430)
!433 = !DILocation(line: 852, column: 13, scope: !397, inlinedAt: !417)
!434 = !DILocation(line: 851, column: 20, scope: !397, inlinedAt: !417)
!435 = !{!436, !388, i64 0}
!436 = !{!"infomap", !388, i64 0, !388, i64 8}
!437 = !DILocation(line: 851, column: 10, scope: !397, inlinedAt: !417)
!438 = !DILocation(line: 851, column: 28, scope: !397, inlinedAt: !417)
!439 = distinct !{!439, !421, !433, !440}
!440 = !{!"llvm.loop.mustprogress"}
!441 = !DILocation(line: 854, column: 17, scope: !442, inlinedAt: !417)
!442 = distinct !DILexicalBlock(scope: !397, file: !398, line: 854, column: 7)
!443 = !{!436, !388, i64 8}
!444 = !DILocation(line: 854, column: 7, scope: !442, inlinedAt: !417)
!445 = !DILocation(line: 854, column: 7, scope: !397, inlinedAt: !417)
!446 = !DILocation(line: 857, column: 3, scope: !397, inlinedAt: !417)
!447 = !DILocation(line: 861, column: 29, scope: !397, inlinedAt: !417)
!448 = !DILocation(line: 862, column: 7, scope: !449, inlinedAt: !417)
!449 = distinct !DILexicalBlock(scope: !397, file: !398, line: 862, column: 7)
!450 = !DILocation(line: 862, column: 19, scope: !449, inlinedAt: !417)
!451 = !DILocation(line: 862, column: 22, scope: !449, inlinedAt: !417)
!452 = !DILocation(line: 862, column: 7, scope: !397, inlinedAt: !417)
!453 = !DILocation(line: 868, column: 7, scope: !454, inlinedAt: !417)
!454 = distinct !DILexicalBlock(scope: !449, file: !398, line: 863, column: 5)
!455 = !DILocation(line: 870, column: 5, scope: !454, inlinedAt: !417)
!456 = !DILocation(line: 0, scope: !423, inlinedAt: !457)
!457 = distinct !DILocation(line: 874, column: 29, scope: !397, inlinedAt: !417)
!458 = !DILocation(line: 875, column: 3, scope: !397, inlinedAt: !417)
!459 = !DILocation(line: 877, column: 3, scope: !397, inlinedAt: !417)
!460 = !DILocation(line: 879, column: 1, scope: !397, inlinedAt: !417)
!461 = !DILocation(line: 97, column: 3, scope: !376)
!462 = !DISubprogram(name: "dcgettext", scope: !463, file: !463, line: 51, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!463 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!464 = !DISubroutineType(types: !465)
!465 = !{!78, !8, !8, !24}
!466 = !{}
!467 = !DISubprogram(name: "fputs_unlocked", scope: !27, file: !27, line: 691, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!468 = !DISubroutineType(types: !469)
!469 = !{!24, !470, !471}
!470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !475)
!474 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !477)
!476 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !493, !495, !496, !497, !498, !499, !501, !505, !508, !509, !512, !515, !516, !517, !518, !519}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !475, file: !476, line: 51, baseType: !24, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !475, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !475, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !475, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !475, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !475, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !475, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !475, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !475, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !475, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !475, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !475, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !475, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !476, line: 36, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !475, file: !476, line: 70, baseType: !494, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !475, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !475, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !475, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !475, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !475, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!500 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !475, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 1)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !475, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !476, line: 43, baseType: null)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !475, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !475, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !476, line: 37, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !475, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !476, line: 38, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !475, file: !476, line: 93, baseType: !494, size: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !475, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !475, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !475, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !475, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 20)
!523 = !DISubprogram(name: "setlocale", scope: !524, file: !524, line: 122, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!524 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!525 = !DISubroutineType(types: !526)
!526 = !{!78, !24, !8}
!527 = distinct !DISubprogram(name: "main", scope: !256, file: !256, line: 144, type: !528, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !531)
!528 = !DISubroutineType(types: !529)
!529 = !{!24, !24, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!531 = !{!532, !533, !534}
!532 = !DILocalVariable(name: "argc", arg: 1, scope: !527, file: !256, line: 144, type: !24)
!533 = !DILocalVariable(name: "argv", arg: 2, scope: !527, file: !256, line: 144, type: !530)
!534 = !DILocalVariable(name: "limit", scope: !527, file: !256, line: 146, type: !535)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 22)
!538 = !DILocation(line: 0, scope: !527)
!539 = !DILocation(line: 146, column: 3, scope: !527)
!540 = !DILocation(line: 146, column: 8, scope: !527)
!541 = !DILocation(line: 150, column: 21, scope: !527)
!542 = !DILocation(line: 150, column: 3, scope: !527)
!543 = !DILocation(line: 151, column: 3, scope: !527)
!544 = !DILocation(line: 152, column: 3, scope: !527)
!545 = !DILocation(line: 153, column: 3, scope: !527)
!546 = !DILocation(line: 155, column: 3, scope: !527)
!547 = !DILocation(line: 158, column: 58, scope: !527)
!548 = !DILocation(line: 157, column: 3, scope: !527)
!549 = !DILocation(line: 177, column: 3, scope: !527)
!550 = !DILocalVariable(name: "buf", arg: 1, scope: !551, file: !256, line: 105, type: !78)
!551 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !256, file: !256, line: 105, type: !552, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!8, !78}
!554 = !{!550, !555, !556, !557, !558}
!555 = !DILocalVariable(name: "negative", scope: !551, file: !256, line: 107, type: !7)
!556 = !DILocalVariable(name: "absnum", scope: !551, file: !256, line: 108, type: !78)
!557 = !DILocalVariable(name: "p", scope: !551, file: !256, line: 109, type: !78)
!558 = !DILocalVariable(name: "result", scope: !551, file: !256, line: 114, type: !78)
!559 = !DILocation(line: 0, scope: !551, inlinedAt: !560)
!560 = distinct !DILocation(line: 177, column: 3, scope: !527)
!561 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !560)
!562 = !{!389, !389, i64 0}
!563 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !560)
!564 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !560)
!565 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !560)
!566 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !560)
!567 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !560)
!568 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !560)
!569 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !560)
!570 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !560)
!571 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !560)
!572 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !560)
!573 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !560)
!574 = distinct !{!574, !572, !575, !440}
!575 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !560)
!576 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !560)
!577 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !560)
!578 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !560)
!579 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !560)
!580 = distinct !DILexicalBlock(scope: !551, file: !256, line: 115, column: 7)
!581 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !560)
!582 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !560)
!583 = !DILocation(line: 178, column: 3, scope: !527)
!584 = !DILocation(line: 0, scope: !551, inlinedAt: !585)
!585 = distinct !DILocation(line: 178, column: 3, scope: !527)
!586 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !585)
!587 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !585)
!588 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !585)
!589 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !585)
!590 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !585)
!591 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !585)
!592 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !585)
!593 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !585)
!594 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !585)
!595 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !585)
!596 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !585)
!597 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !585)
!598 = distinct !{!598, !596, !599, !440}
!599 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !585)
!600 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !585)
!601 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !585)
!602 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !585)
!603 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !585)
!604 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !585)
!605 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !585)
!606 = !DILocation(line: 178, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !256, line: 178, column: 3)
!608 = distinct !DILexicalBlock(scope: !527, file: !256, line: 178, column: 3)
!609 = !DILocation(line: 0, scope: !551, inlinedAt: !610)
!610 = distinct !DILocation(line: 178, column: 3, scope: !607)
!611 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !610)
!612 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !610)
!613 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !610)
!614 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !610)
!615 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !610)
!616 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !610)
!617 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !610)
!618 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !610)
!619 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !610)
!620 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !610)
!621 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !610)
!622 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !610)
!623 = distinct !{!623, !621, !624, !440}
!624 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !610)
!625 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !610)
!626 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !610)
!627 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !610)
!628 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !610)
!629 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !610)
!630 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !610)
!631 = !DILocation(line: 179, column: 3, scope: !527)
!632 = !DILocation(line: 0, scope: !551, inlinedAt: !633)
!633 = distinct !DILocation(line: 179, column: 3, scope: !527)
!634 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !633)
!635 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !633)
!636 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !633)
!637 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !633)
!638 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !633)
!639 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !633)
!640 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !633)
!641 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !633)
!642 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !633)
!643 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !633)
!644 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !633)
!645 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !633)
!646 = distinct !{!646, !644, !647, !440}
!647 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !633)
!648 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !633)
!649 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !633)
!650 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !633)
!651 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !633)
!652 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !633)
!653 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !633)
!654 = !DILocation(line: 180, column: 3, scope: !527)
!655 = !DILocation(line: 0, scope: !551, inlinedAt: !656)
!656 = distinct !DILocation(line: 180, column: 3, scope: !527)
!657 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !656)
!658 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !656)
!659 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !656)
!660 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !656)
!661 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !656)
!662 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !656)
!663 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !656)
!664 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !656)
!665 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !656)
!666 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !656)
!667 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !656)
!668 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !656)
!669 = distinct !{!669, !667, !670, !440}
!670 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !656)
!671 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !656)
!672 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !656)
!673 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !656)
!674 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !656)
!675 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !656)
!676 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !656)
!677 = !DILocation(line: 180, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !256, line: 180, column: 3)
!679 = distinct !DILexicalBlock(scope: !527, file: !256, line: 180, column: 3)
!680 = !DILocation(line: 0, scope: !551, inlinedAt: !681)
!681 = distinct !DILocation(line: 180, column: 3, scope: !678)
!682 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !681)
!683 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !681)
!684 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !681)
!685 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !681)
!686 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !681)
!687 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !681)
!688 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !681)
!689 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !681)
!690 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !681)
!691 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !681)
!692 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !681)
!693 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !681)
!694 = distinct !{!694, !692, !695, !440}
!695 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !681)
!696 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !681)
!697 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !681)
!698 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !681)
!699 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !681)
!700 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !681)
!701 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !681)
!702 = !DILocation(line: 181, column: 3, scope: !527)
!703 = !DILocation(line: 0, scope: !551, inlinedAt: !704)
!704 = distinct !DILocation(line: 181, column: 3, scope: !527)
!705 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !704)
!706 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !704)
!707 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !704)
!708 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !704)
!709 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !704)
!710 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !704)
!711 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !704)
!712 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !704)
!713 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !704)
!714 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !704)
!715 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !704)
!716 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !704)
!717 = distinct !{!717, !715, !718, !440}
!718 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !704)
!719 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !704)
!720 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !704)
!721 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !704)
!722 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !704)
!723 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !704)
!724 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !704)
!725 = !DILocation(line: 181, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !256, line: 181, column: 3)
!727 = distinct !DILexicalBlock(scope: !527, file: !256, line: 181, column: 3)
!728 = !DILocation(line: 0, scope: !551, inlinedAt: !729)
!729 = distinct !DILocation(line: 181, column: 3, scope: !726)
!730 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !729)
!731 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !729)
!732 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !729)
!733 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !729)
!734 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !729)
!735 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !729)
!736 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !729)
!737 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !729)
!738 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !729)
!739 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !729)
!740 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !729)
!741 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !729)
!742 = distinct !{!742, !740, !743, !440}
!743 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !729)
!744 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !729)
!745 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !729)
!746 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !729)
!747 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !729)
!748 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !729)
!749 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !729)
!750 = !DILocation(line: 182, column: 3, scope: !527)
!751 = !DILocation(line: 0, scope: !551, inlinedAt: !752)
!752 = distinct !DILocation(line: 182, column: 3, scope: !527)
!753 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !752)
!754 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !752)
!755 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !752)
!756 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !752)
!757 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !752)
!758 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !752)
!759 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !752)
!760 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !752)
!761 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !752)
!762 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !752)
!763 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !752)
!764 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !752)
!765 = distinct !{!765, !763, !766, !440}
!766 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !752)
!767 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !752)
!768 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !752)
!769 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !752)
!770 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !752)
!771 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !752)
!772 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !752)
!773 = !DILocation(line: 183, column: 3, scope: !527)
!774 = !DILocation(line: 0, scope: !551, inlinedAt: !775)
!775 = distinct !DILocation(line: 183, column: 3, scope: !527)
!776 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !775)
!777 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !775)
!778 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !775)
!779 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !775)
!780 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !775)
!781 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !775)
!782 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !775)
!783 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !775)
!784 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !775)
!785 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !775)
!786 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !775)
!787 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !775)
!788 = distinct !{!788, !786, !789, !440}
!789 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !775)
!790 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !775)
!791 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !775)
!792 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !775)
!793 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !775)
!794 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !775)
!795 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !775)
!796 = !DILocation(line: 183, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !256, line: 183, column: 3)
!798 = distinct !DILexicalBlock(scope: !527, file: !256, line: 183, column: 3)
!799 = !DILocation(line: 0, scope: !551, inlinedAt: !800)
!800 = distinct !DILocation(line: 183, column: 3, scope: !797)
!801 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !800)
!802 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !800)
!803 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !800)
!804 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !800)
!805 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !800)
!806 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !800)
!807 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !800)
!808 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !800)
!809 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !800)
!810 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !800)
!811 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !800)
!812 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !800)
!813 = distinct !{!813, !811, !814, !440}
!814 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !800)
!815 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !800)
!816 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !800)
!817 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !800)
!818 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !800)
!819 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !800)
!820 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !800)
!821 = !DILocation(line: 184, column: 3, scope: !527)
!822 = !DILocation(line: 0, scope: !551, inlinedAt: !823)
!823 = distinct !DILocation(line: 184, column: 3, scope: !527)
!824 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !823)
!825 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !823)
!826 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !823)
!827 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !823)
!828 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !823)
!829 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !823)
!830 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !823)
!831 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !823)
!832 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !823)
!833 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !823)
!834 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !823)
!835 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !823)
!836 = distinct !{!836, !834, !837, !440}
!837 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !823)
!838 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !823)
!839 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !823)
!840 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !823)
!841 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !823)
!842 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !823)
!843 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !823)
!844 = !DILocation(line: 185, column: 3, scope: !527)
!845 = !DILocation(line: 0, scope: !551, inlinedAt: !846)
!846 = distinct !DILocation(line: 185, column: 3, scope: !527)
!847 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !846)
!848 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !846)
!849 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !846)
!850 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !846)
!851 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !846)
!852 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !846)
!853 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !846)
!854 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !846)
!855 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !846)
!856 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !846)
!857 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !846)
!858 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !846)
!859 = distinct !{!859, !857, !860, !440}
!860 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !846)
!861 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !846)
!862 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !846)
!863 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !846)
!864 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !846)
!865 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !846)
!866 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !846)
!867 = !DILocation(line: 186, column: 3, scope: !527)
!868 = !DILocation(line: 0, scope: !551, inlinedAt: !869)
!869 = distinct !DILocation(line: 186, column: 3, scope: !527)
!870 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !869)
!871 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !869)
!872 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !869)
!873 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !869)
!874 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !869)
!875 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !869)
!876 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !869)
!877 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !869)
!878 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !869)
!879 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !869)
!880 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !869)
!881 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !869)
!882 = distinct !{!882, !880, !883, !440}
!883 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !869)
!884 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !869)
!885 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !869)
!886 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !869)
!887 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !869)
!888 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !869)
!889 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !869)
!890 = !DILocation(line: 186, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !256, line: 186, column: 3)
!892 = distinct !DILexicalBlock(scope: !527, file: !256, line: 186, column: 3)
!893 = !DILocation(line: 0, scope: !551, inlinedAt: !894)
!894 = distinct !DILocation(line: 186, column: 3, scope: !891)
!895 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !894)
!896 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !894)
!897 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !894)
!898 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !894)
!899 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !894)
!900 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !894)
!901 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !894)
!902 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !894)
!903 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !894)
!904 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !894)
!905 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !894)
!906 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !894)
!907 = distinct !{!907, !905, !908, !440}
!908 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !894)
!909 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !894)
!910 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !894)
!911 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !894)
!912 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !894)
!913 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !894)
!914 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !894)
!915 = !DILocation(line: 187, column: 3, scope: !527)
!916 = !DILocation(line: 0, scope: !551, inlinedAt: !917)
!917 = distinct !DILocation(line: 187, column: 3, scope: !527)
!918 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !917)
!919 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !917)
!920 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !917)
!921 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !917)
!922 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !917)
!923 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !917)
!924 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !917)
!925 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !917)
!926 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !917)
!927 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !917)
!928 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !917)
!929 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !917)
!930 = distinct !{!930, !928, !931, !440}
!931 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !917)
!932 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !917)
!933 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !917)
!934 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !917)
!935 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !917)
!936 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !917)
!937 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !917)
!938 = !DILocation(line: 187, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !256, line: 187, column: 3)
!940 = distinct !DILexicalBlock(scope: !527, file: !256, line: 187, column: 3)
!941 = !DILocation(line: 0, scope: !551, inlinedAt: !942)
!942 = distinct !DILocation(line: 187, column: 3, scope: !939)
!943 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !942)
!944 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !942)
!945 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !942)
!946 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !942)
!947 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !942)
!948 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !942)
!949 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !942)
!950 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !942)
!951 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !942)
!952 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !942)
!953 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !942)
!954 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !942)
!955 = distinct !{!955, !953, !956, !440}
!956 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !942)
!957 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !942)
!958 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !942)
!959 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !942)
!960 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !942)
!961 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !942)
!962 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !942)
!963 = !DILocation(line: 188, column: 3, scope: !527)
!964 = !DILocation(line: 0, scope: !551, inlinedAt: !965)
!965 = distinct !DILocation(line: 188, column: 3, scope: !527)
!966 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !965)
!967 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !965)
!968 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !965)
!969 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !965)
!970 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !965)
!971 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !965)
!972 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !965)
!973 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !965)
!974 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !965)
!975 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !965)
!976 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !965)
!977 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !965)
!978 = distinct !{!978, !976, !979, !440}
!979 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !965)
!980 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !965)
!981 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !965)
!982 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !965)
!983 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !965)
!984 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !965)
!985 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !965)
!986 = !DILocation(line: 189, column: 3, scope: !527)
!987 = !DILocation(line: 0, scope: !551, inlinedAt: !988)
!988 = distinct !DILocation(line: 189, column: 3, scope: !527)
!989 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !988)
!990 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !988)
!991 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !988)
!992 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !988)
!993 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !988)
!994 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !988)
!995 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !988)
!996 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !988)
!997 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !988)
!998 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !988)
!999 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !988)
!1000 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !988)
!1001 = distinct !{!1001, !999, !1002, !440}
!1002 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !988)
!1003 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !988)
!1004 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !988)
!1005 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !988)
!1006 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !988)
!1007 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !988)
!1008 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !988)
!1009 = !DILocation(line: 190, column: 3, scope: !527)
!1010 = !DILocation(line: 0, scope: !551, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 190, column: 3, scope: !527)
!1012 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1011)
!1013 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1011)
!1014 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1011)
!1015 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1011)
!1016 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1011)
!1017 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1011)
!1018 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1011)
!1019 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1011)
!1020 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1011)
!1021 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1011)
!1022 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1011)
!1023 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1011)
!1024 = distinct !{!1024, !1022, !1025, !440}
!1025 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1011)
!1026 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1011)
!1027 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1011)
!1028 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1011)
!1029 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1011)
!1030 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1011)
!1031 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1011)
!1032 = !DILocation(line: 190, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !256, line: 190, column: 3)
!1034 = distinct !DILexicalBlock(scope: !527, file: !256, line: 190, column: 3)
!1035 = !DILocation(line: 0, scope: !551, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 190, column: 3, scope: !1033)
!1037 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1036)
!1038 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1036)
!1039 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1036)
!1040 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1036)
!1041 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1036)
!1042 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1036)
!1043 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1036)
!1044 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1036)
!1045 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1036)
!1046 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1036)
!1047 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1036)
!1048 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1036)
!1049 = distinct !{!1049, !1047, !1050, !440}
!1050 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1036)
!1051 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1036)
!1052 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1036)
!1053 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1036)
!1054 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1036)
!1055 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1036)
!1056 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1036)
!1057 = !DILocation(line: 191, column: 3, scope: !527)
!1058 = !DILocation(line: 0, scope: !551, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 191, column: 3, scope: !527)
!1060 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1059)
!1061 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1059)
!1062 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1059)
!1063 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1059)
!1064 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1059)
!1065 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1059)
!1066 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1059)
!1067 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1059)
!1068 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1059)
!1069 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1059)
!1070 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1059)
!1071 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1059)
!1072 = distinct !{!1072, !1070, !1073, !440}
!1073 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1059)
!1074 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1059)
!1075 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1059)
!1076 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1059)
!1077 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1059)
!1078 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1059)
!1079 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1059)
!1080 = !DILocation(line: 191, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !256, line: 191, column: 3)
!1082 = distinct !DILexicalBlock(scope: !527, file: !256, line: 191, column: 3)
!1083 = !DILocation(line: 0, scope: !551, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 191, column: 3, scope: !1081)
!1085 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1084)
!1086 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1084)
!1087 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1084)
!1088 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1084)
!1089 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1084)
!1090 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1084)
!1091 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1084)
!1092 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1084)
!1093 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1084)
!1094 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1084)
!1095 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1084)
!1096 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1084)
!1097 = distinct !{!1097, !1095, !1098, !440}
!1098 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1084)
!1099 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1084)
!1100 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1084)
!1101 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1084)
!1102 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1084)
!1103 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1084)
!1104 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1084)
!1105 = !DILocation(line: 192, column: 3, scope: !527)
!1106 = !DILocation(line: 0, scope: !551, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 192, column: 3, scope: !527)
!1108 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1107)
!1109 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1107)
!1110 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1107)
!1111 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1107)
!1112 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1107)
!1113 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1107)
!1114 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1107)
!1115 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1107)
!1116 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1107)
!1117 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1107)
!1118 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1107)
!1119 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1107)
!1120 = distinct !{!1120, !1118, !1121, !440}
!1121 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1107)
!1122 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1107)
!1123 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1107)
!1124 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1107)
!1125 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1107)
!1126 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1107)
!1127 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1107)
!1128 = !DILocation(line: 192, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !256, line: 192, column: 3)
!1130 = distinct !DILexicalBlock(scope: !527, file: !256, line: 192, column: 3)
!1131 = !DILocation(line: 0, scope: !551, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 192, column: 3, scope: !1129)
!1133 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1132)
!1134 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1132)
!1135 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1132)
!1136 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1132)
!1137 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1132)
!1138 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1132)
!1139 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1132)
!1140 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1132)
!1141 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1132)
!1142 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1132)
!1143 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1132)
!1144 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1132)
!1145 = distinct !{!1145, !1143, !1146, !440}
!1146 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1132)
!1147 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1132)
!1148 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1132)
!1149 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1132)
!1150 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1132)
!1151 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1132)
!1152 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1132)
!1153 = !DILocation(line: 193, column: 3, scope: !527)
!1154 = !DILocation(line: 0, scope: !551, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 193, column: 3, scope: !527)
!1156 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1155)
!1157 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1155)
!1158 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1155)
!1159 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1155)
!1160 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1155)
!1161 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1155)
!1162 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1155)
!1163 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1155)
!1164 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1155)
!1165 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1155)
!1166 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1155)
!1167 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1155)
!1168 = distinct !{!1168, !1166, !1169, !440}
!1169 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1155)
!1170 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1155)
!1171 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1155)
!1172 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1155)
!1173 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1155)
!1174 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1155)
!1175 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1155)
!1176 = !DILocation(line: 193, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !256, line: 193, column: 3)
!1178 = distinct !DILexicalBlock(scope: !527, file: !256, line: 193, column: 3)
!1179 = !DILocation(line: 0, scope: !551, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 193, column: 3, scope: !1177)
!1181 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1180)
!1182 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1180)
!1183 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1180)
!1184 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1180)
!1185 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1180)
!1186 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1180)
!1187 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1180)
!1188 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1180)
!1189 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1180)
!1190 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1180)
!1191 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1180)
!1192 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1180)
!1193 = distinct !{!1193, !1191, !1194, !440}
!1194 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1180)
!1195 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1180)
!1196 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1180)
!1197 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1180)
!1198 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1180)
!1199 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1180)
!1200 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1180)
!1201 = !DILocation(line: 194, column: 3, scope: !527)
!1202 = !DILocation(line: 0, scope: !551, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 194, column: 3, scope: !527)
!1204 = !DILocation(line: 107, column: 20, scope: !551, inlinedAt: !1203)
!1205 = !DILocation(line: 107, column: 27, scope: !551, inlinedAt: !1203)
!1206 = !DILocation(line: 108, column: 26, scope: !551, inlinedAt: !1203)
!1207 = !DILocation(line: 109, column: 22, scope: !551, inlinedAt: !1203)
!1208 = !DILocation(line: 109, column: 20, scope: !551, inlinedAt: !1203)
!1209 = !DILocation(line: 110, column: 3, scope: !551, inlinedAt: !1203)
!1210 = !DILocation(line: 110, column: 14, scope: !551, inlinedAt: !1203)
!1211 = !DILocation(line: 111, column: 11, scope: !551, inlinedAt: !1203)
!1212 = !DILocation(line: 111, column: 10, scope: !551, inlinedAt: !1203)
!1213 = !DILocation(line: 111, column: 15, scope: !551, inlinedAt: !1203)
!1214 = !DILocation(line: 111, column: 3, scope: !551, inlinedAt: !1203)
!1215 = !DILocation(line: 112, column: 8, scope: !551, inlinedAt: !1203)
!1216 = distinct !{!1216, !1214, !1217, !440}
!1217 = !DILocation(line: 112, column: 10, scope: !551, inlinedAt: !1203)
!1218 = !DILocation(line: 113, column: 3, scope: !551, inlinedAt: !1203)
!1219 = !DILocation(line: 114, column: 18, scope: !551, inlinedAt: !1203)
!1220 = !DILocation(line: 115, column: 7, scope: !551, inlinedAt: !1203)
!1221 = !DILocation(line: 116, column: 6, scope: !580, inlinedAt: !1203)
!1222 = !DILocation(line: 116, column: 15, scope: !580, inlinedAt: !1203)
!1223 = !DILocation(line: 116, column: 5, scope: !580, inlinedAt: !1203)
!1224 = !DILocation(line: 197, column: 3, scope: !527)
!1225 = !DILocalVariable(name: "x", arg: 1, scope: !1226, file: !256, line: 129, type: !1229)
!1226 = distinct !DISubprogram(name: "print_FLT", scope: !256, file: !256, line: 129, type: !1227, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1230)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1229}
!1229 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1230 = !{!1225, !1231}
!1231 = !DILocalVariable(name: "buf", scope: !1226, file: !256, line: 129, type: !1232)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 248, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 31)
!1235 = !DILocation(line: 0, scope: !1226, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 197, column: 3, scope: !527)
!1237 = !DILocation(line: 129, column: 1, scope: !1226, inlinedAt: !1236)
!1238 = !DILocation(line: 0, scope: !1226, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 197, column: 3, scope: !527)
!1240 = !DILocation(line: 129, column: 1, scope: !1226, inlinedAt: !1239)
!1241 = !DILocation(line: 198, column: 3, scope: !527)
!1242 = !DILocalVariable(name: "x", arg: 1, scope: !1243, file: !256, line: 130, type: !1246)
!1243 = distinct !DISubprogram(name: "print_DBL", scope: !256, file: !256, line: 130, type: !1244, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1247)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !1246}
!1246 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1247 = !{!1242, !1248}
!1248 = !DILocalVariable(name: "buf", scope: !1243, file: !256, line: 130, type: !1249)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 40)
!1252 = !DILocation(line: 0, scope: !1243, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 198, column: 3, scope: !527)
!1254 = !DILocation(line: 130, column: 1, scope: !1243, inlinedAt: !1253)
!1255 = !DILocation(line: 0, scope: !1243, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 198, column: 3, scope: !527)
!1257 = !DILocation(line: 130, column: 1, scope: !1243, inlinedAt: !1256)
!1258 = !DILocation(line: 199, column: 3, scope: !527)
!1259 = !DILocalVariable(name: "x", arg: 1, scope: !1260, file: !256, line: 131, type: !1263)
!1260 = distinct !DISubprogram(name: "print_LDBL", scope: !256, file: !256, line: 131, type: !1261, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1264)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1263}
!1263 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1264 = !{!1259, !1265}
!1265 = !DILocalVariable(name: "buf", scope: !1260, file: !256, line: 131, type: !1266)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 480, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 60)
!1269 = !DILocation(line: 0, scope: !1260, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 199, column: 3, scope: !527)
!1271 = !DILocation(line: 131, column: 1, scope: !1260, inlinedAt: !1270)
!1272 = !DILocation(line: 0, scope: !1260, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 199, column: 3, scope: !527)
!1274 = !DILocation(line: 131, column: 1, scope: !1260, inlinedAt: !1273)
!1275 = !DILocation(line: 202, column: 3, scope: !527)
!1276 = !DILocation(line: 203, column: 3, scope: !527)
!1277 = !DILocation(line: 204, column: 3, scope: !527)
!1278 = !DILocation(line: 207, column: 3, scope: !527)
!1279 = !DILocalVariable(name: "name", arg: 1, scope: !1280, file: !256, line: 134, type: !16)
!1280 = distinct !DISubprogram(name: "print_errno", scope: !256, file: !256, line: 134, type: !1281, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!24, !16, !24}
!1283 = !{!1279, !1284, !1285}
!1284 = !DILocalVariable(name: "e", arg: 2, scope: !1280, file: !256, line: 134, type: !24)
!1285 = !DILocalVariable(name: "err_name", scope: !1280, file: !256, line: 136, type: !8)
!1286 = !DILocation(line: 0, scope: !1280, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 213, column: 3, scope: !527)
!1288 = !DILocation(line: 138, column: 5, scope: !1289, inlinedAt: !1287)
!1289 = distinct !DILexicalBlock(scope: !1280, file: !256, line: 137, column: 7)
!1290 = !DILocation(line: 0, scope: !1280, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 216, column: 3, scope: !527)
!1292 = !DILocation(line: 138, column: 5, scope: !1289, inlinedAt: !1291)
!1293 = !DILocation(line: 0, scope: !1280, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 219, column: 3, scope: !527)
!1295 = !DILocation(line: 138, column: 5, scope: !1289, inlinedAt: !1294)
!1296 = !DILocation(line: 223, column: 1, scope: !527)
!1297 = !DILocation(line: 222, column: 3, scope: !527)
!1298 = !DISubprogram(name: "bindtextdomain", scope: !463, file: !463, line: 86, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!78, !8, !8}
!1301 = !DISubprogram(name: "textdomain", scope: !463, file: !463, line: 82, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!78, !8}
!1304 = !DISubprogram(name: "atexit", scope: !1305, file: !1305, line: 602, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1305 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!24, !53}
!1308 = !DISubprogram(name: "puts", scope: !27, file: !27, line: 661, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!24, !8}
!1311 = !DILocation(line: 0, scope: !1280)
!1312 = !DILocation(line: 136, column: 26, scope: !1280)
!1313 = !DILocation(line: 136, column: 40, scope: !1280)
!1314 = !DILocation(line: 137, column: 7, scope: !1289)
!1315 = !DILocation(line: 137, column: 7, scope: !1280)
!1316 = !DILocation(line: 138, column: 5, scope: !1289)
!1317 = !DILocation(line: 140, column: 3, scope: !1280)
!1318 = !DISubprogram(name: "strerrorname_np", scope: !1319, file: !1319, line: 452, type: !1320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1319 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!8, !24}
!1322 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !3, file: !3, line: 50, type: !399, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1323)
!1323 = !{!1324}
!1324 = !DILocalVariable(name: "file", arg: 1, scope: !1322, file: !3, line: 50, type: !8)
!1325 = !DILocation(line: 0, scope: !1322)
!1326 = !DILocation(line: 52, column: 13, scope: !1322)
!1327 = !DILocation(line: 53, column: 1, scope: !1322)
!1328 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !3, file: !3, line: 87, type: !1329, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !7}
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "ignore", arg: 1, scope: !1328, file: !3, line: 87, type: !7)
!1333 = !DILocation(line: 0, scope: !1328)
!1334 = !DILocation(line: 89, column: 16, scope: !1328)
!1335 = !{!1336, !1336, i64 0}
!1336 = !{!"_Bool", !389, i64 0}
!1337 = !DILocation(line: 90, column: 1, scope: !1328)
!1338 = distinct !DISubprogram(name: "close_stdout", scope: !3, file: !3, line: 116, type: !54, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "write_error", scope: !1341, file: !3, line: 121, type: !8)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 120, column: 5)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 118, column: 7)
!1343 = !DILocation(line: 118, column: 21, scope: !1342)
!1344 = !DILocation(line: 118, column: 7, scope: !1342)
!1345 = !DILocation(line: 118, column: 29, scope: !1342)
!1346 = !DILocation(line: 119, column: 7, scope: !1342)
!1347 = !DILocation(line: 119, column: 12, scope: !1342)
!1348 = !{i8 0, i8 2}
!1349 = !DILocation(line: 119, column: 25, scope: !1342)
!1350 = !DILocation(line: 119, column: 28, scope: !1342)
!1351 = !{!1352, !1352, i64 0}
!1352 = !{!"int", !389, i64 0}
!1353 = !DILocation(line: 119, column: 34, scope: !1342)
!1354 = !DILocation(line: 118, column: 7, scope: !1338)
!1355 = !DILocation(line: 121, column: 33, scope: !1341)
!1356 = !DILocation(line: 0, scope: !1341)
!1357 = !DILocation(line: 122, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 122, column: 11)
!1359 = !DILocation(line: 0, scope: !1358)
!1360 = !DILocation(line: 122, column: 11, scope: !1341)
!1361 = !DILocation(line: 123, column: 9, scope: !1358)
!1362 = !DILocation(line: 126, column: 9, scope: !1358)
!1363 = !DILocation(line: 128, column: 14, scope: !1341)
!1364 = !DILocation(line: 128, column: 7, scope: !1341)
!1365 = !DILocation(line: 133, column: 42, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 133, column: 7)
!1367 = !DILocation(line: 133, column: 28, scope: !1366)
!1368 = !DILocation(line: 133, column: 50, scope: !1366)
!1369 = !DILocation(line: 133, column: 7, scope: !1338)
!1370 = !DILocation(line: 134, column: 12, scope: !1366)
!1371 = !DILocation(line: 134, column: 5, scope: !1366)
!1372 = !DILocation(line: 135, column: 1, scope: !1338)
!1373 = distinct !DISubprogram(name: "dtoastr", scope: !1374, file: !1374, line: 112, type: !1375, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !293, retainedNodes: !1377)
!1374 = !DIFile(filename: "./lib/ftoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "70bb2ecb9a59521192f153bc763df3dd")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!24, !78, !158, !24, !24, !1246}
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386, !1387, !1388, !1390}
!1378 = !DILocalVariable(name: "buf", arg: 1, scope: !1373, file: !1374, line: 112, type: !78)
!1379 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1373, file: !1374, line: 112, type: !158)
!1380 = !DILocalVariable(name: "flags", arg: 3, scope: !1373, file: !1374, line: 112, type: !24)
!1381 = !DILocalVariable(name: "width", arg: 4, scope: !1373, file: !1374, line: 112, type: !24)
!1382 = !DILocalVariable(name: "x", arg: 5, scope: !1373, file: !1374, line: 112, type: !1246)
!1383 = !DILocalVariable(name: "promoted_x", scope: !1373, file: !1374, line: 124, type: !1246)
!1384 = !DILocalVariable(name: "format", scope: !1373, file: !1374, line: 125, type: !1385)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 88, elements: !223)
!1386 = !DILocalVariable(name: "abs_x", scope: !1373, file: !1374, line: 126, type: !1246)
!1387 = !DILocalVariable(name: "p", scope: !1373, file: !1374, line: 128, type: !78)
!1388 = !DILocalVariable(name: "prec", scope: !1389, file: !1374, line: 144, type: !24)
!1389 = distinct !DILexicalBlock(scope: !1373, file: !1374, line: 144, column: 3)
!1390 = !DILocalVariable(name: "n", scope: !1391, file: !1374, line: 146, type: !24)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1374, line: 145, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !1374, line: 144, column: 3)
!1393 = !DILocation(line: 0, scope: !1373)
!1394 = !DILocation(line: 125, column: 3, scope: !1373)
!1395 = !DILocation(line: 125, column: 8, scope: !1373)
!1396 = !DILocation(line: 126, column: 19, scope: !1373)
!1397 = !DILocation(line: 126, column: 17, scope: !1373)
!1398 = !DILocation(line: 129, column: 5, scope: !1373)
!1399 = !DILocation(line: 129, column: 8, scope: !1373)
!1400 = !DILocation(line: 132, column: 6, scope: !1373)
!1401 = !DILocation(line: 132, column: 25, scope: !1373)
!1402 = !DILocation(line: 132, column: 15, scope: !1373)
!1403 = !DILocation(line: 133, column: 6, scope: !1373)
!1404 = !DILocation(line: 133, column: 51, scope: !1373)
!1405 = !DILocation(line: 133, column: 15, scope: !1373)
!1406 = !DILocation(line: 134, column: 6, scope: !1373)
!1407 = !DILocation(line: 134, column: 51, scope: !1373)
!1408 = !DILocation(line: 134, column: 15, scope: !1373)
!1409 = !DILocation(line: 135, column: 6, scope: !1373)
!1410 = !DILocation(line: 135, column: 51, scope: !1373)
!1411 = !DILocation(line: 135, column: 15, scope: !1373)
!1412 = !DILocation(line: 137, column: 5, scope: !1373)
!1413 = !DILocation(line: 137, column: 8, scope: !1373)
!1414 = !DILocation(line: 138, column: 5, scope: !1373)
!1415 = !DILocation(line: 138, column: 8, scope: !1373)
!1416 = !DILocation(line: 139, column: 5, scope: !1373)
!1417 = !DILocation(line: 139, column: 8, scope: !1373)
!1418 = !DILocation(line: 141, column: 16, scope: !1373)
!1419 = !DILocation(line: 141, column: 10, scope: !1373)
!1420 = !DILocation(line: 141, column: 5, scope: !1373)
!1421 = !DILocation(line: 141, column: 8, scope: !1373)
!1422 = !DILocation(line: 142, column: 6, scope: !1373)
!1423 = !DILocation(line: 144, column: 25, scope: !1389)
!1424 = !DILocation(line: 144, column: 19, scope: !1389)
!1425 = !DILocation(line: 0, scope: !1389)
!1426 = !DILocation(line: 146, column: 15, scope: !1391)
!1427 = !DILocation(line: 0, scope: !1391)
!1428 = !DILocation(line: 147, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1391, file: !1374, line: 147, column: 11)
!1430 = !DILocation(line: 148, column: 11, scope: !1429)
!1431 = !DILocation(line: 149, column: 15, scope: !1429)
!1432 = !DILocation(line: 149, column: 17, scope: !1429)
!1433 = !DILocation(line: 149, column: 27, scope: !1429)
!1434 = !DILocation(line: 149, column: 30, scope: !1429)
!1435 = !DILocation(line: 149, column: 49, scope: !1429)
!1436 = !DILocation(line: 147, column: 11, scope: !1391)
!1437 = !DILocation(line: 144, column: 60, scope: !1392)
!1438 = distinct !{!1438, !1439, !1440}
!1439 = !DILocation(line: 144, column: 3, scope: !1389)
!1440 = !DILocation(line: 151, column: 5, scope: !1389)
!1441 = !DILocation(line: 152, column: 1, scope: !1373)
!1442 = distinct !DISubprogram(name: "errno_iterate", scope: !297, file: !297, line: 27, type: !1443, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1448)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1445, !16}
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "errno_iterate_callback_fn", file: !1446, line: 27, baseType: !1447)
!1446 = !DIFile(filename: "./lib/errno-iter.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e29148ef5417619fa680a0323aac9540")
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1448 = !{!1449, !1450}
!1449 = !DILocalVariable(name: "callback", arg: 1, scope: !1442, file: !297, line: 27, type: !1445)
!1450 = !DILocalVariable(name: "data", arg: 2, scope: !1442, file: !297, line: 27, type: !16)
!1451 = !DILocation(line: 0, scope: !1442)
!1452 = !DILocation(line: 32, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 32, column: 7)
!1454 = !DILocation(line: 32, column: 7, scope: !1442)
!1455 = !DILocation(line: 33, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 33, column: 7)
!1457 = !DILocation(line: 33, column: 7, scope: !1442)
!1458 = !DILocation(line: 34, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 34, column: 7)
!1460 = !DILocation(line: 34, column: 7, scope: !1442)
!1461 = !DILocation(line: 39, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 39, column: 7)
!1463 = !DILocation(line: 39, column: 7, scope: !1442)
!1464 = !DILocation(line: 42, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 42, column: 7)
!1466 = !DILocation(line: 42, column: 7, scope: !1442)
!1467 = !DILocation(line: 45, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 45, column: 7)
!1469 = !DILocation(line: 45, column: 7, scope: !1442)
!1470 = !DILocation(line: 48, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 48, column: 7)
!1472 = !DILocation(line: 48, column: 7, scope: !1442)
!1473 = !DILocation(line: 51, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 51, column: 7)
!1475 = !DILocation(line: 51, column: 7, scope: !1442)
!1476 = !DILocation(line: 54, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 54, column: 7)
!1478 = !DILocation(line: 54, column: 7, scope: !1442)
!1479 = !DILocation(line: 57, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 57, column: 7)
!1481 = !DILocation(line: 57, column: 7, scope: !1442)
!1482 = !DILocation(line: 60, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 60, column: 7)
!1484 = !DILocation(line: 60, column: 7, scope: !1442)
!1485 = !DILocation(line: 63, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 63, column: 7)
!1487 = !DILocation(line: 63, column: 7, scope: !1442)
!1488 = !DILocation(line: 66, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 66, column: 7)
!1490 = !DILocation(line: 66, column: 7, scope: !1442)
!1491 = !DILocation(line: 69, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 69, column: 7)
!1493 = !DILocation(line: 69, column: 7, scope: !1442)
!1494 = !DILocation(line: 72, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 72, column: 7)
!1496 = !DILocation(line: 72, column: 7, scope: !1442)
!1497 = !DILocation(line: 75, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 75, column: 7)
!1499 = !DILocation(line: 75, column: 7, scope: !1442)
!1500 = !DILocation(line: 78, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 78, column: 7)
!1502 = !DILocation(line: 78, column: 7, scope: !1442)
!1503 = !DILocation(line: 81, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 81, column: 7)
!1505 = !DILocation(line: 81, column: 7, scope: !1442)
!1506 = !DILocation(line: 84, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 84, column: 7)
!1508 = !DILocation(line: 84, column: 7, scope: !1442)
!1509 = !DILocation(line: 87, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 87, column: 7)
!1511 = !DILocation(line: 87, column: 7, scope: !1442)
!1512 = !DILocation(line: 90, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 90, column: 7)
!1514 = !DILocation(line: 90, column: 7, scope: !1442)
!1515 = !DILocation(line: 93, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 93, column: 7)
!1517 = !DILocation(line: 93, column: 7, scope: !1442)
!1518 = !DILocation(line: 96, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 96, column: 7)
!1520 = !DILocation(line: 96, column: 7, scope: !1442)
!1521 = !DILocation(line: 99, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 99, column: 7)
!1523 = !DILocation(line: 99, column: 7, scope: !1442)
!1524 = !DILocation(line: 102, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 102, column: 7)
!1526 = !DILocation(line: 102, column: 7, scope: !1442)
!1527 = !DILocation(line: 105, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 105, column: 7)
!1529 = !DILocation(line: 105, column: 7, scope: !1442)
!1530 = !DILocation(line: 108, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 108, column: 7)
!1532 = !DILocation(line: 108, column: 7, scope: !1442)
!1533 = !DILocation(line: 111, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 111, column: 7)
!1535 = !DILocation(line: 111, column: 7, scope: !1442)
!1536 = !DILocation(line: 114, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 114, column: 7)
!1538 = !DILocation(line: 114, column: 7, scope: !1442)
!1539 = !DILocation(line: 117, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 117, column: 7)
!1541 = !DILocation(line: 117, column: 7, scope: !1442)
!1542 = !DILocation(line: 120, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 120, column: 7)
!1544 = !DILocation(line: 120, column: 7, scope: !1442)
!1545 = !DILocation(line: 123, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 123, column: 7)
!1547 = !DILocation(line: 123, column: 7, scope: !1442)
!1548 = !DILocation(line: 126, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 126, column: 7)
!1550 = !DILocation(line: 126, column: 7, scope: !1442)
!1551 = !DILocation(line: 129, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 129, column: 7)
!1553 = !DILocation(line: 129, column: 7, scope: !1442)
!1554 = !DILocation(line: 132, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 132, column: 7)
!1556 = !DILocation(line: 132, column: 7, scope: !1442)
!1557 = !DILocation(line: 135, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 135, column: 7)
!1559 = !DILocation(line: 135, column: 7, scope: !1442)
!1560 = !DILocation(line: 138, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 138, column: 7)
!1562 = !DILocation(line: 138, column: 7, scope: !1442)
!1563 = !DILocation(line: 141, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 141, column: 7)
!1565 = !DILocation(line: 141, column: 7, scope: !1442)
!1566 = !DILocation(line: 144, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 144, column: 7)
!1568 = !DILocation(line: 144, column: 7, scope: !1442)
!1569 = !DILocation(line: 147, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 147, column: 7)
!1571 = !DILocation(line: 147, column: 7, scope: !1442)
!1572 = !DILocation(line: 150, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 150, column: 7)
!1574 = !DILocation(line: 150, column: 7, scope: !1442)
!1575 = !DILocation(line: 153, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 153, column: 7)
!1577 = !DILocation(line: 153, column: 7, scope: !1442)
!1578 = !DILocation(line: 156, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 156, column: 7)
!1580 = !DILocation(line: 156, column: 7, scope: !1442)
!1581 = !DILocation(line: 159, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 159, column: 7)
!1583 = !DILocation(line: 159, column: 7, scope: !1442)
!1584 = !DILocation(line: 162, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 162, column: 7)
!1586 = !DILocation(line: 162, column: 7, scope: !1442)
!1587 = !DILocation(line: 165, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 165, column: 7)
!1589 = !DILocation(line: 165, column: 7, scope: !1442)
!1590 = !DILocation(line: 168, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 168, column: 7)
!1592 = !DILocation(line: 168, column: 7, scope: !1442)
!1593 = !DILocation(line: 171, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 171, column: 7)
!1595 = !DILocation(line: 171, column: 7, scope: !1442)
!1596 = !DILocation(line: 174, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 174, column: 7)
!1598 = !DILocation(line: 174, column: 7, scope: !1442)
!1599 = !DILocation(line: 177, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 177, column: 7)
!1601 = !DILocation(line: 177, column: 7, scope: !1442)
!1602 = !DILocation(line: 180, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 180, column: 7)
!1604 = !DILocation(line: 180, column: 7, scope: !1442)
!1605 = !DILocation(line: 183, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 183, column: 7)
!1607 = !DILocation(line: 183, column: 7, scope: !1442)
!1608 = !DILocation(line: 186, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 186, column: 7)
!1610 = !DILocation(line: 186, column: 7, scope: !1442)
!1611 = !DILocation(line: 189, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 189, column: 7)
!1613 = !DILocation(line: 189, column: 7, scope: !1442)
!1614 = !DILocation(line: 192, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 192, column: 7)
!1616 = !DILocation(line: 192, column: 7, scope: !1442)
!1617 = !DILocation(line: 195, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 195, column: 7)
!1619 = !DILocation(line: 195, column: 7, scope: !1442)
!1620 = !DILocation(line: 198, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 198, column: 7)
!1622 = !DILocation(line: 198, column: 7, scope: !1442)
!1623 = !DILocation(line: 201, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 201, column: 7)
!1625 = !DILocation(line: 201, column: 7, scope: !1442)
!1626 = !DILocation(line: 204, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 204, column: 7)
!1628 = !DILocation(line: 204, column: 7, scope: !1442)
!1629 = !DILocation(line: 207, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 207, column: 7)
!1631 = !DILocation(line: 207, column: 7, scope: !1442)
!1632 = !DILocation(line: 210, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 210, column: 7)
!1634 = !DILocation(line: 210, column: 7, scope: !1442)
!1635 = !DILocation(line: 216, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 216, column: 7)
!1637 = !DILocation(line: 216, column: 7, scope: !1442)
!1638 = !DILocation(line: 219, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 219, column: 7)
!1640 = !DILocation(line: 219, column: 7, scope: !1442)
!1641 = !DILocation(line: 222, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 222, column: 7)
!1643 = !DILocation(line: 222, column: 7, scope: !1442)
!1644 = !DILocation(line: 225, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 225, column: 7)
!1646 = !DILocation(line: 225, column: 7, scope: !1442)
!1647 = !DILocation(line: 228, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 228, column: 7)
!1649 = !DILocation(line: 228, column: 7, scope: !1442)
!1650 = !DILocation(line: 231, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 231, column: 7)
!1652 = !DILocation(line: 231, column: 7, scope: !1442)
!1653 = !DILocation(line: 234, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 234, column: 7)
!1655 = !DILocation(line: 234, column: 7, scope: !1442)
!1656 = !DILocation(line: 237, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 237, column: 7)
!1658 = !DILocation(line: 237, column: 7, scope: !1442)
!1659 = !DILocation(line: 240, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 240, column: 7)
!1661 = !DILocation(line: 240, column: 7, scope: !1442)
!1662 = !DILocation(line: 243, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 243, column: 7)
!1664 = !DILocation(line: 243, column: 7, scope: !1442)
!1665 = !DILocation(line: 246, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 246, column: 7)
!1667 = !DILocation(line: 246, column: 7, scope: !1442)
!1668 = !DILocation(line: 249, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 249, column: 7)
!1670 = !DILocation(line: 249, column: 7, scope: !1442)
!1671 = !DILocation(line: 252, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 252, column: 7)
!1673 = !DILocation(line: 252, column: 7, scope: !1442)
!1674 = !DILocation(line: 255, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 255, column: 7)
!1676 = !DILocation(line: 255, column: 7, scope: !1442)
!1677 = !DILocation(line: 258, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 258, column: 7)
!1679 = !DILocation(line: 258, column: 7, scope: !1442)
!1680 = !DILocation(line: 261, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 261, column: 7)
!1682 = !DILocation(line: 261, column: 7, scope: !1442)
!1683 = !DILocation(line: 264, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 264, column: 7)
!1685 = !DILocation(line: 264, column: 7, scope: !1442)
!1686 = !DILocation(line: 267, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 267, column: 7)
!1688 = !DILocation(line: 267, column: 7, scope: !1442)
!1689 = !DILocation(line: 273, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 273, column: 7)
!1691 = !DILocation(line: 273, column: 7, scope: !1442)
!1692 = !DILocation(line: 283, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 283, column: 7)
!1694 = !DILocation(line: 283, column: 7, scope: !1442)
!1695 = !DILocation(line: 307, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 307, column: 7)
!1697 = !DILocation(line: 307, column: 7, scope: !1442)
!1698 = !DILocation(line: 319, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 319, column: 7)
!1700 = !DILocation(line: 319, column: 7, scope: !1442)
!1701 = !DILocation(line: 335, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 335, column: 7)
!1703 = !DILocation(line: 335, column: 7, scope: !1442)
!1704 = !DILocation(line: 347, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 347, column: 7)
!1706 = !DILocation(line: 347, column: 7, scope: !1442)
!1707 = !DILocation(line: 351, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 351, column: 7)
!1709 = !DILocation(line: 351, column: 7, scope: !1442)
!1710 = !DILocation(line: 359, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 359, column: 7)
!1712 = !DILocation(line: 359, column: 7, scope: !1442)
!1713 = !DILocation(line: 375, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 375, column: 7)
!1715 = !DILocation(line: 375, column: 7, scope: !1442)
!1716 = !DILocation(line: 383, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 383, column: 7)
!1718 = !DILocation(line: 383, column: 7, scope: !1442)
!1719 = !DILocation(line: 435, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 435, column: 7)
!1721 = !DILocation(line: 435, column: 7, scope: !1442)
!1722 = !DILocation(line: 507, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 507, column: 7)
!1724 = !DILocation(line: 507, column: 7, scope: !1442)
!1725 = !DILocation(line: 511, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 511, column: 7)
!1727 = !DILocation(line: 511, column: 7, scope: !1442)
!1728 = !DILocation(line: 523, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 523, column: 7)
!1730 = !DILocation(line: 523, column: 7, scope: !1442)
!1731 = !DILocation(line: 635, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 635, column: 7)
!1733 = !DILocation(line: 635, column: 7, scope: !1442)
!1734 = !DILocation(line: 639, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 639, column: 7)
!1736 = !DILocation(line: 639, column: 7, scope: !1442)
!1737 = !DILocation(line: 643, column: 7, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 643, column: 7)
!1739 = !DILocation(line: 643, column: 7, scope: !1442)
!1740 = !DILocation(line: 647, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 647, column: 7)
!1742 = !DILocation(line: 647, column: 7, scope: !1442)
!1743 = !DILocation(line: 651, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 651, column: 7)
!1745 = !DILocation(line: 651, column: 7, scope: !1442)
!1746 = !DILocation(line: 655, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 655, column: 7)
!1748 = !DILocation(line: 655, column: 7, scope: !1442)
!1749 = !DILocation(line: 659, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 659, column: 7)
!1751 = !DILocation(line: 659, column: 7, scope: !1442)
!1752 = !DILocation(line: 671, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 671, column: 7)
!1754 = !DILocation(line: 671, column: 7, scope: !1442)
!1755 = !DILocation(line: 675, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 675, column: 7)
!1757 = !DILocation(line: 675, column: 7, scope: !1442)
!1758 = !DILocation(line: 679, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 679, column: 7)
!1760 = !DILocation(line: 679, column: 7, scope: !1442)
!1761 = !DILocation(line: 683, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 683, column: 7)
!1763 = !DILocation(line: 683, column: 7, scope: !1442)
!1764 = !DILocation(line: 687, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 687, column: 7)
!1766 = !DILocation(line: 687, column: 7, scope: !1442)
!1767 = !DILocation(line: 691, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 691, column: 7)
!1769 = !DILocation(line: 691, column: 7, scope: !1442)
!1770 = !DILocation(line: 819, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 819, column: 7)
!1772 = !DILocation(line: 819, column: 7, scope: !1442)
!1773 = !DILocation(line: 863, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 863, column: 7)
!1775 = !DILocation(line: 863, column: 7, scope: !1442)
!1776 = !DILocation(line: 875, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 875, column: 7)
!1778 = !DILocation(line: 875, column: 7, scope: !1442)
!1779 = !DILocation(line: 895, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 895, column: 7)
!1781 = !DILocation(line: 895, column: 7, scope: !1442)
!1782 = !DILocation(line: 903, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 903, column: 7)
!1784 = !DILocation(line: 903, column: 7, scope: !1442)
!1785 = !DILocation(line: 915, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 915, column: 7)
!1787 = !DILocation(line: 915, column: 7, scope: !1442)
!1788 = !DILocation(line: 919, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 919, column: 7)
!1790 = !DILocation(line: 919, column: 7, scope: !1442)
!1791 = !DILocation(line: 923, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 923, column: 7)
!1793 = !DILocation(line: 923, column: 7, scope: !1442)
!1794 = !DILocation(line: 947, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 947, column: 7)
!1796 = !DILocation(line: 947, column: 7, scope: !1442)
!1797 = !DILocation(line: 955, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 955, column: 7)
!1799 = !DILocation(line: 955, column: 7, scope: !1442)
!1800 = !DILocation(line: 967, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 967, column: 7)
!1802 = !DILocation(line: 967, column: 7, scope: !1442)
!1803 = !DILocation(line: 991, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 991, column: 7)
!1805 = !DILocation(line: 991, column: 7, scope: !1442)
!1806 = !DILocation(line: 1027, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1027, column: 7)
!1808 = !DILocation(line: 1027, column: 7, scope: !1442)
!1809 = !DILocation(line: 1031, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1031, column: 7)
!1811 = !DILocation(line: 1031, column: 7, scope: !1442)
!1812 = !DILocation(line: 1035, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1035, column: 7)
!1814 = !DILocation(line: 1035, column: 7, scope: !1442)
!1815 = !DILocation(line: 1043, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1043, column: 7)
!1817 = !DILocation(line: 1043, column: 7, scope: !1442)
!1818 = !DILocation(line: 1047, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1047, column: 7)
!1820 = !DILocation(line: 1047, column: 7, scope: !1442)
!1821 = !DILocation(line: 1063, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1063, column: 7)
!1823 = !DILocation(line: 1063, column: 7, scope: !1442)
!1824 = !DILocation(line: 1075, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1075, column: 7)
!1826 = !DILocation(line: 1075, column: 7, scope: !1442)
!1827 = !DILocation(line: 1079, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1079, column: 7)
!1829 = !DILocation(line: 1079, column: 7, scope: !1442)
!1830 = !DILocation(line: 1087, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1087, column: 7)
!1832 = !DILocation(line: 1087, column: 7, scope: !1442)
!1833 = !DILocation(line: 1095, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1095, column: 7)
!1835 = !DILocation(line: 1095, column: 7, scope: !1442)
!1836 = !DILocation(line: 1099, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1099, column: 7)
!1838 = !DILocation(line: 1099, column: 7, scope: !1442)
!1839 = !DILocation(line: 1107, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1107, column: 7)
!1841 = !DILocation(line: 1107, column: 7, scope: !1442)
!1842 = !DILocation(line: 1115, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1442, file: !297, line: 1115, column: 7)
!1844 = !DILocation(line: 1115, column: 7, scope: !1442)
!1845 = !DILocation(line: 1117, column: 1, scope: !1442)
!1846 = distinct !DISubprogram(name: "verror", scope: !14, file: !14, line: 251, type: !1847, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !24, !24, !8, !26}
!1849 = !{!1850, !1851, !1852, !1853}
!1850 = !DILocalVariable(name: "status", arg: 1, scope: !1846, file: !14, line: 251, type: !24)
!1851 = !DILocalVariable(name: "errnum", arg: 2, scope: !1846, file: !14, line: 251, type: !24)
!1852 = !DILocalVariable(name: "message", arg: 3, scope: !1846, file: !14, line: 251, type: !8)
!1853 = !DILocalVariable(name: "args", arg: 4, scope: !1846, file: !14, line: 251, type: !26)
!1854 = !DILocation(line: 0, scope: !1846)
!1855 = !DILocation(line: 251, column: 1, scope: !1846)
!1856 = !DILocation(line: 261, column: 3, scope: !1846)
!1857 = !DILocation(line: 265, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1846, file: !14, line: 265, column: 7)
!1859 = !DILocation(line: 265, column: 7, scope: !1846)
!1860 = !DILocation(line: 266, column: 5, scope: !1858)
!1861 = !DILocation(line: 272, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !14, line: 268, column: 5)
!1863 = !DILocation(line: 276, column: 3, scope: !1846)
!1864 = !{i64 0, i64 8, !387, i64 8, i64 8, !387, i64 16, i64 8, !387, i64 24, i64 4, !1351, i64 28, i64 4, !1351}
!1865 = !DILocation(line: 282, column: 1, scope: !1846)
!1866 = distinct !DISubprogram(name: "flush_stdout", scope: !14, file: !14, line: 163, type: !54, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1867)
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "stdout_fd", scope: !1866, file: !14, line: 166, type: !24)
!1869 = !DILocation(line: 0, scope: !1866)
!1870 = !DILocalVariable(name: "fd", arg: 1, scope: !1871, file: !14, line: 145, type: !24)
!1871 = distinct !DISubprogram(name: "is_open", scope: !14, file: !14, line: 145, type: !1872, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!24, !24}
!1874 = !{!1870}
!1875 = !DILocation(line: 0, scope: !1871, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 182, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !14, line: 182, column: 7)
!1878 = !DILocation(line: 157, column: 15, scope: !1871, inlinedAt: !1876)
!1879 = !DILocation(line: 182, column: 25, scope: !1877)
!1880 = !DILocation(line: 182, column: 7, scope: !1866)
!1881 = !DILocation(line: 184, column: 5, scope: !1877)
!1882 = !DILocation(line: 185, column: 1, scope: !1866)
!1883 = distinct !DISubprogram(name: "error_tail", scope: !14, file: !14, line: 219, type: !1847, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DILocalVariable(name: "status", arg: 1, scope: !1883, file: !14, line: 219, type: !24)
!1886 = !DILocalVariable(name: "errnum", arg: 2, scope: !1883, file: !14, line: 219, type: !24)
!1887 = !DILocalVariable(name: "message", arg: 3, scope: !1883, file: !14, line: 219, type: !8)
!1888 = !DILocalVariable(name: "args", arg: 4, scope: !1883, file: !14, line: 219, type: !26)
!1889 = !DILocation(line: 0, scope: !1883)
!1890 = !DILocation(line: 219, column: 1, scope: !1883)
!1891 = !DILocation(line: 229, column: 13, scope: !1883)
!1892 = !DILocation(line: 229, column: 3, scope: !1883)
!1893 = !DILocalVariable(name: "__stream", arg: 1, scope: !1894, file: !1895, line: 132, type: !1898)
!1894 = distinct !DISubprogram(name: "vfprintf", scope: !1895, file: !1895, line: 132, type: !1896, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1933)
!1895 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!24, !1898, !470, !28}
!1898 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1901, file: !476, line: 51, baseType: !24, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1901, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1901, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1901, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1901, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1901, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1901, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1901, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1901, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1901, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1901, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1901, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1901, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1901, file: !476, line: 70, baseType: !1917, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1901, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1901, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1901, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1901, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1901, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1901, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1901, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1901, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1901, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1901, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1901, file: !476, line: 93, baseType: !1917, size: 64, offset: 1344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1901, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1901, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1901, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1901, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!1933 = !{!1893, !1934, !1935}
!1934 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1894, file: !1895, line: 133, type: !470)
!1935 = !DILocalVariable(name: "__ap", arg: 3, scope: !1894, file: !1895, line: 133, type: !28)
!1936 = !DILocation(line: 0, scope: !1894, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 229, column: 3, scope: !1883)
!1938 = !DILocation(line: 135, column: 10, scope: !1894, inlinedAt: !1937)
!1939 = !{!1940, !1942}
!1940 = distinct !{!1940, !1941, !"vfprintf.inline: argument 0"}
!1941 = distinct !{!1941, !"vfprintf.inline"}
!1942 = distinct !{!1942, !1941, !"vfprintf.inline: argument 1"}
!1943 = !DILocation(line: 232, column: 3, scope: !1883)
!1944 = !DILocation(line: 233, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1883, file: !14, line: 233, column: 7)
!1946 = !DILocation(line: 233, column: 7, scope: !1883)
!1947 = !DILocalVariable(name: "errnum", arg: 1, scope: !1948, file: !14, line: 188, type: !24)
!1948 = distinct !DISubprogram(name: "print_errno_message", scope: !14, file: !14, line: 188, type: !377, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1949)
!1949 = !{!1947, !1950, !1951}
!1950 = !DILocalVariable(name: "s", scope: !1948, file: !14, line: 190, type: !8)
!1951 = !DILocalVariable(name: "errbuf", scope: !1948, file: !14, line: 193, type: !1952)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !1953)
!1953 = !{!1954}
!1954 = !DISubrange(count: 1024)
!1955 = !DILocation(line: 0, scope: !1948, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 234, column: 5, scope: !1945)
!1957 = !DILocation(line: 193, column: 3, scope: !1948, inlinedAt: !1956)
!1958 = !DILocation(line: 193, column: 8, scope: !1948, inlinedAt: !1956)
!1959 = !DILocation(line: 195, column: 7, scope: !1948, inlinedAt: !1956)
!1960 = !DILocation(line: 207, column: 9, scope: !1961, inlinedAt: !1956)
!1961 = distinct !DILexicalBlock(scope: !1948, file: !14, line: 207, column: 7)
!1962 = !DILocation(line: 207, column: 7, scope: !1948, inlinedAt: !1956)
!1963 = !DILocation(line: 208, column: 9, scope: !1961, inlinedAt: !1956)
!1964 = !DILocation(line: 208, column: 5, scope: !1961, inlinedAt: !1956)
!1965 = !DILocation(line: 214, column: 3, scope: !1948, inlinedAt: !1956)
!1966 = !DILocation(line: 216, column: 1, scope: !1948, inlinedAt: !1956)
!1967 = !DILocation(line: 234, column: 5, scope: !1945)
!1968 = !DILocation(line: 238, column: 3, scope: !1883)
!1969 = !DILocalVariable(name: "__c", arg: 1, scope: !1970, file: !1971, line: 101, type: !24)
!1970 = distinct !DISubprogram(name: "putc_unlocked", scope: !1971, file: !1971, line: 101, type: !1972, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1974)
!1971 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!24, !24, !1899}
!1974 = !{!1969, !1975}
!1975 = !DILocalVariable(name: "__stream", arg: 2, scope: !1970, file: !1971, line: 101, type: !1899)
!1976 = !DILocation(line: 0, scope: !1970, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 238, column: 3, scope: !1883)
!1978 = !DILocation(line: 103, column: 10, scope: !1970, inlinedAt: !1977)
!1979 = !{!1980, !388, i64 40}
!1980 = !{!"_IO_FILE", !1352, i64 0, !388, i64 8, !388, i64 16, !388, i64 24, !388, i64 32, !388, i64 40, !388, i64 48, !388, i64 56, !388, i64 64, !388, i64 72, !388, i64 80, !388, i64 88, !388, i64 96, !388, i64 104, !1352, i64 112, !1352, i64 116, !1981, i64 120, !1982, i64 128, !389, i64 130, !389, i64 131, !388, i64 136, !1981, i64 144, !388, i64 152, !388, i64 160, !388, i64 168, !388, i64 176, !1981, i64 184, !1352, i64 192, !389, i64 196}
!1981 = !{!"long", !389, i64 0}
!1982 = !{!"short", !389, i64 0}
!1983 = !{!1980, !388, i64 48}
!1984 = !{!"branch_weights", i32 2000, i32 1}
!1985 = !DILocation(line: 240, column: 3, scope: !1883)
!1986 = !DILocation(line: 241, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1883, file: !14, line: 241, column: 7)
!1988 = !DILocation(line: 241, column: 7, scope: !1883)
!1989 = !DILocation(line: 242, column: 5, scope: !1987)
!1990 = !DILocation(line: 243, column: 1, scope: !1883)
!1991 = !DISubprogram(name: "strerror_r", scope: !1319, file: !1319, line: 444, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!78, !24, !78, !158}
!1994 = !DISubprogram(name: "fflush_unlocked", scope: !27, file: !27, line: 239, type: !1995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!24, !1899}
!1997 = !DISubprogram(name: "fcntl", scope: !1998, file: !1998, line: 149, type: !1999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!1998 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!24, !24, !24, null}
!2001 = distinct !DISubprogram(name: "error", scope: !14, file: !14, line: 285, type: !2002, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !24, !24, !8, null}
!2004 = !{!2005, !2006, !2007, !2008}
!2005 = !DILocalVariable(name: "status", arg: 1, scope: !2001, file: !14, line: 285, type: !24)
!2006 = !DILocalVariable(name: "errnum", arg: 2, scope: !2001, file: !14, line: 285, type: !24)
!2007 = !DILocalVariable(name: "message", arg: 3, scope: !2001, file: !14, line: 285, type: !8)
!2008 = !DILocalVariable(name: "ap", scope: !2001, file: !14, line: 287, type: !26)
!2009 = !DILocation(line: 0, scope: !2001)
!2010 = !DILocation(line: 287, column: 3, scope: !2001)
!2011 = !DILocation(line: 287, column: 11, scope: !2001)
!2012 = !DILocation(line: 288, column: 3, scope: !2001)
!2013 = !DILocation(line: 289, column: 3, scope: !2001)
!2014 = !DILocation(line: 290, column: 3, scope: !2001)
!2015 = !DILocation(line: 291, column: 1, scope: !2001)
!2016 = !DILocation(line: 0, scope: !21)
!2017 = !DILocation(line: 298, column: 1, scope: !21)
!2018 = !DILocation(line: 302, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !21, file: !14, line: 302, column: 7)
!2020 = !DILocation(line: 302, column: 7, scope: !21)
!2021 = !DILocation(line: 307, column: 11, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !14, line: 307, column: 11)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !14, line: 303, column: 5)
!2024 = !DILocation(line: 307, column: 27, scope: !2022)
!2025 = !DILocation(line: 308, column: 11, scope: !2022)
!2026 = !DILocation(line: 308, column: 28, scope: !2022)
!2027 = !DILocation(line: 308, column: 25, scope: !2022)
!2028 = !DILocation(line: 309, column: 15, scope: !2022)
!2029 = !DILocation(line: 309, column: 33, scope: !2022)
!2030 = !DILocation(line: 310, column: 19, scope: !2022)
!2031 = !DILocation(line: 311, column: 22, scope: !2022)
!2032 = !DILocation(line: 311, column: 56, scope: !2022)
!2033 = !DILocation(line: 307, column: 11, scope: !2023)
!2034 = !DILocation(line: 316, column: 21, scope: !2023)
!2035 = !DILocation(line: 317, column: 23, scope: !2023)
!2036 = !DILocation(line: 318, column: 5, scope: !2023)
!2037 = !DILocation(line: 327, column: 3, scope: !21)
!2038 = !DILocation(line: 331, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !21, file: !14, line: 331, column: 7)
!2040 = !DILocation(line: 331, column: 7, scope: !21)
!2041 = !DILocation(line: 332, column: 5, scope: !2039)
!2042 = !DILocation(line: 338, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !14, line: 334, column: 5)
!2044 = !DILocation(line: 346, column: 3, scope: !21)
!2045 = !DILocation(line: 350, column: 3, scope: !21)
!2046 = !DILocation(line: 356, column: 1, scope: !21)
!2047 = distinct !DISubprogram(name: "error_at_line", scope: !14, file: !14, line: 359, type: !2048, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !24, !24, !8, !25, !8, null}
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056}
!2051 = !DILocalVariable(name: "status", arg: 1, scope: !2047, file: !14, line: 359, type: !24)
!2052 = !DILocalVariable(name: "errnum", arg: 2, scope: !2047, file: !14, line: 359, type: !24)
!2053 = !DILocalVariable(name: "file_name", arg: 3, scope: !2047, file: !14, line: 359, type: !8)
!2054 = !DILocalVariable(name: "line_number", arg: 4, scope: !2047, file: !14, line: 360, type: !25)
!2055 = !DILocalVariable(name: "message", arg: 5, scope: !2047, file: !14, line: 360, type: !8)
!2056 = !DILocalVariable(name: "ap", scope: !2047, file: !14, line: 362, type: !26)
!2057 = !DILocation(line: 0, scope: !2047)
!2058 = !DILocation(line: 362, column: 3, scope: !2047)
!2059 = !DILocation(line: 362, column: 11, scope: !2047)
!2060 = !DILocation(line: 363, column: 3, scope: !2047)
!2061 = !DILocation(line: 364, column: 3, scope: !2047)
!2062 = !DILocation(line: 366, column: 3, scope: !2047)
!2063 = !DILocation(line: 367, column: 1, scope: !2047)
!2064 = distinct !DISubprogram(name: "ftoastr", scope: !299, file: !299, line: 112, type: !2065, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!24, !78, !158, !24, !24, !1229}
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2079}
!2068 = !DILocalVariable(name: "buf", arg: 1, scope: !2064, file: !299, line: 112, type: !78)
!2069 = !DILocalVariable(name: "bufsize", arg: 2, scope: !2064, file: !299, line: 112, type: !158)
!2070 = !DILocalVariable(name: "flags", arg: 3, scope: !2064, file: !299, line: 112, type: !24)
!2071 = !DILocalVariable(name: "width", arg: 4, scope: !2064, file: !299, line: 112, type: !24)
!2072 = !DILocalVariable(name: "x", arg: 5, scope: !2064, file: !299, line: 112, type: !1229)
!2073 = !DILocalVariable(name: "promoted_x", scope: !2064, file: !299, line: 124, type: !1246)
!2074 = !DILocalVariable(name: "format", scope: !2064, file: !299, line: 125, type: !1385)
!2075 = !DILocalVariable(name: "abs_x", scope: !2064, file: !299, line: 126, type: !1229)
!2076 = !DILocalVariable(name: "p", scope: !2064, file: !299, line: 128, type: !78)
!2077 = !DILocalVariable(name: "prec", scope: !2078, file: !299, line: 144, type: !24)
!2078 = distinct !DILexicalBlock(scope: !2064, file: !299, line: 144, column: 3)
!2079 = !DILocalVariable(name: "n", scope: !2080, file: !299, line: 146, type: !24)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !299, line: 145, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !299, line: 144, column: 3)
!2082 = !DILocation(line: 0, scope: !2064)
!2083 = !DILocation(line: 124, column: 31, scope: !2064)
!2084 = !DILocation(line: 125, column: 3, scope: !2064)
!2085 = !DILocation(line: 125, column: 8, scope: !2064)
!2086 = !DILocation(line: 126, column: 19, scope: !2064)
!2087 = !DILocation(line: 126, column: 17, scope: !2064)
!2088 = !DILocation(line: 129, column: 5, scope: !2064)
!2089 = !DILocation(line: 129, column: 8, scope: !2064)
!2090 = !DILocation(line: 132, column: 6, scope: !2064)
!2091 = !DILocation(line: 132, column: 25, scope: !2064)
!2092 = !DILocation(line: 132, column: 15, scope: !2064)
!2093 = !DILocation(line: 133, column: 6, scope: !2064)
!2094 = !DILocation(line: 133, column: 51, scope: !2064)
!2095 = !DILocation(line: 133, column: 15, scope: !2064)
!2096 = !DILocation(line: 134, column: 6, scope: !2064)
!2097 = !DILocation(line: 134, column: 51, scope: !2064)
!2098 = !DILocation(line: 134, column: 15, scope: !2064)
!2099 = !DILocation(line: 135, column: 6, scope: !2064)
!2100 = !DILocation(line: 135, column: 51, scope: !2064)
!2101 = !DILocation(line: 135, column: 15, scope: !2064)
!2102 = !DILocation(line: 137, column: 5, scope: !2064)
!2103 = !DILocation(line: 137, column: 8, scope: !2064)
!2104 = !DILocation(line: 138, column: 5, scope: !2064)
!2105 = !DILocation(line: 138, column: 8, scope: !2064)
!2106 = !DILocation(line: 139, column: 5, scope: !2064)
!2107 = !DILocation(line: 139, column: 8, scope: !2064)
!2108 = !DILocation(line: 141, column: 16, scope: !2064)
!2109 = !DILocation(line: 141, column: 10, scope: !2064)
!2110 = !DILocation(line: 141, column: 5, scope: !2064)
!2111 = !DILocation(line: 141, column: 8, scope: !2064)
!2112 = !DILocation(line: 142, column: 6, scope: !2064)
!2113 = !DILocation(line: 144, column: 25, scope: !2078)
!2114 = !DILocation(line: 144, column: 19, scope: !2078)
!2115 = !DILocation(line: 0, scope: !2078)
!2116 = !DILocation(line: 146, column: 15, scope: !2080)
!2117 = !DILocation(line: 0, scope: !2080)
!2118 = !DILocation(line: 147, column: 13, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2080, file: !299, line: 147, column: 11)
!2120 = !DILocation(line: 148, column: 11, scope: !2119)
!2121 = !DILocation(line: 149, column: 15, scope: !2119)
!2122 = !DILocation(line: 149, column: 17, scope: !2119)
!2123 = !DILocation(line: 149, column: 27, scope: !2119)
!2124 = !DILocation(line: 149, column: 30, scope: !2119)
!2125 = !DILocation(line: 149, column: 49, scope: !2119)
!2126 = !DILocation(line: 147, column: 11, scope: !2080)
!2127 = !DILocation(line: 144, column: 60, scope: !2081)
!2128 = distinct !{!2128, !2129, !2130}
!2129 = !DILocation(line: 144, column: 3, scope: !2078)
!2130 = !DILocation(line: 151, column: 5, scope: !2078)
!2131 = !DILocation(line: 152, column: 1, scope: !2064)
!2132 = distinct !DISubprogram(name: "getprogname", scope: !301, file: !301, line: 54, type: !2133, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !300, retainedNodes: !466)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!8}
!2135 = !DILocation(line: 58, column: 10, scope: !2132)
!2136 = !DILocation(line: 58, column: 3, scope: !2132)
!2137 = distinct !DISubprogram(name: "ldtoastr", scope: !1374, file: !1374, line: 112, type: !2138, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!24, !78, !158, !24, !24, !1263}
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2152}
!2141 = !DILocalVariable(name: "buf", arg: 1, scope: !2137, file: !1374, line: 112, type: !78)
!2142 = !DILocalVariable(name: "bufsize", arg: 2, scope: !2137, file: !1374, line: 112, type: !158)
!2143 = !DILocalVariable(name: "flags", arg: 3, scope: !2137, file: !1374, line: 112, type: !24)
!2144 = !DILocalVariable(name: "width", arg: 4, scope: !2137, file: !1374, line: 112, type: !24)
!2145 = !DILocalVariable(name: "x", arg: 5, scope: !2137, file: !1374, line: 112, type: !1263)
!2146 = !DILocalVariable(name: "promoted_x", scope: !2137, file: !1374, line: 124, type: !1263)
!2147 = !DILocalVariable(name: "format", scope: !2137, file: !1374, line: 125, type: !1385)
!2148 = !DILocalVariable(name: "abs_x", scope: !2137, file: !1374, line: 126, type: !1263)
!2149 = !DILocalVariable(name: "p", scope: !2137, file: !1374, line: 128, type: !78)
!2150 = !DILocalVariable(name: "prec", scope: !2151, file: !1374, line: 144, type: !24)
!2151 = distinct !DILexicalBlock(scope: !2137, file: !1374, line: 144, column: 3)
!2152 = !DILocalVariable(name: "n", scope: !2153, file: !1374, line: 146, type: !24)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !1374, line: 145, column: 5)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !1374, line: 144, column: 3)
!2155 = !DILocation(line: 0, scope: !2137)
!2156 = !DILocation(line: 125, column: 3, scope: !2137)
!2157 = !DILocation(line: 125, column: 8, scope: !2137)
!2158 = !DILocation(line: 126, column: 19, scope: !2137)
!2159 = !DILocation(line: 126, column: 17, scope: !2137)
!2160 = !DILocation(line: 129, column: 5, scope: !2137)
!2161 = !DILocation(line: 129, column: 8, scope: !2137)
!2162 = !DILocation(line: 132, column: 6, scope: !2137)
!2163 = !DILocation(line: 132, column: 25, scope: !2137)
!2164 = !DILocation(line: 132, column: 15, scope: !2137)
!2165 = !DILocation(line: 133, column: 6, scope: !2137)
!2166 = !DILocation(line: 133, column: 51, scope: !2137)
!2167 = !DILocation(line: 133, column: 15, scope: !2137)
!2168 = !DILocation(line: 134, column: 6, scope: !2137)
!2169 = !DILocation(line: 134, column: 51, scope: !2137)
!2170 = !DILocation(line: 134, column: 15, scope: !2137)
!2171 = !DILocation(line: 135, column: 6, scope: !2137)
!2172 = !DILocation(line: 135, column: 51, scope: !2137)
!2173 = !DILocation(line: 135, column: 15, scope: !2137)
!2174 = !DILocation(line: 137, column: 5, scope: !2137)
!2175 = !DILocation(line: 137, column: 8, scope: !2137)
!2176 = !DILocation(line: 138, column: 5, scope: !2137)
!2177 = !DILocation(line: 138, column: 8, scope: !2137)
!2178 = !DILocation(line: 139, column: 5, scope: !2137)
!2179 = !DILocation(line: 139, column: 8, scope: !2137)
!2180 = !DILocation(line: 140, column: 6, scope: !2137)
!2181 = !DILocation(line: 140, column: 15, scope: !2137)
!2182 = !DILocation(line: 141, column: 16, scope: !2137)
!2183 = !DILocation(line: 141, column: 10, scope: !2137)
!2184 = !DILocation(line: 141, column: 5, scope: !2137)
!2185 = !DILocation(line: 141, column: 8, scope: !2137)
!2186 = !DILocation(line: 142, column: 6, scope: !2137)
!2187 = !DILocation(line: 144, column: 25, scope: !2151)
!2188 = !DILocation(line: 144, column: 19, scope: !2151)
!2189 = !DILocation(line: 0, scope: !2151)
!2190 = !DILocation(line: 146, column: 15, scope: !2153)
!2191 = !DILocation(line: 0, scope: !2153)
!2192 = !DILocation(line: 147, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2153, file: !1374, line: 147, column: 11)
!2194 = !DILocation(line: 148, column: 11, scope: !2193)
!2195 = !DILocation(line: 149, column: 15, scope: !2193)
!2196 = !DILocation(line: 149, column: 17, scope: !2193)
!2197 = !DILocation(line: 149, column: 27, scope: !2193)
!2198 = !DILocation(line: 149, column: 30, scope: !2193)
!2199 = !DILocation(line: 149, column: 49, scope: !2193)
!2200 = !DILocation(line: 147, column: 11, scope: !2153)
!2201 = !DILocation(line: 144, column: 60, scope: !2154)
!2202 = distinct !{!2202, !2203, !2204}
!2203 = !DILocation(line: 144, column: 3, scope: !2151)
!2204 = !DILocation(line: 151, column: 5, scope: !2151)
!2205 = !DILocation(line: 152, column: 1, scope: !2137)
!2206 = distinct !DISubprogram(name: "parse_long_options", scope: !59, file: !59, line: 45, type: !2207, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2210)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !24, !530, !8, !8, !8, !2209, null}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2221}
!2211 = !DILocalVariable(name: "argc", arg: 1, scope: !2206, file: !59, line: 45, type: !24)
!2212 = !DILocalVariable(name: "argv", arg: 2, scope: !2206, file: !59, line: 46, type: !530)
!2213 = !DILocalVariable(name: "command_name", arg: 3, scope: !2206, file: !59, line: 47, type: !8)
!2214 = !DILocalVariable(name: "package", arg: 4, scope: !2206, file: !59, line: 48, type: !8)
!2215 = !DILocalVariable(name: "version", arg: 5, scope: !2206, file: !59, line: 49, type: !8)
!2216 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2206, file: !59, line: 50, type: !2209)
!2217 = !DILocalVariable(name: "saved_opterr", scope: !2206, file: !59, line: 53, type: !24)
!2218 = !DILocalVariable(name: "c", scope: !2219, file: !59, line: 60, type: !24)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !59, line: 59, column: 5)
!2220 = distinct !DILexicalBlock(scope: !2206, file: !59, line: 58, column: 7)
!2221 = !DILocalVariable(name: "authors", scope: !2222, file: !59, line: 71, type: !2226)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !59, line: 70, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !59, line: 64, column: 13)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !59, line: 62, column: 9)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !59, line: 61, column: 11)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 52, baseType: !2227)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !29, line: 32, baseType: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2229, baseType: !2230)
!2229 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !33, size: 256, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2230, file: !2229, line: 71, baseType: !16, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2230, file: !2229, line: 71, baseType: !16, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2230, file: !2229, line: 71, baseType: !16, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2230, file: !2229, line: 71, baseType: !24, size: 32, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2230, file: !2229, line: 71, baseType: !24, size: 32, offset: 224)
!2237 = !DILocation(line: 0, scope: !2206)
!2238 = !DILocation(line: 53, column: 22, scope: !2206)
!2239 = !DILocation(line: 56, column: 10, scope: !2206)
!2240 = !DILocation(line: 58, column: 12, scope: !2220)
!2241 = !DILocation(line: 58, column: 7, scope: !2206)
!2242 = !DILocation(line: 60, column: 15, scope: !2219)
!2243 = !DILocation(line: 0, scope: !2219)
!2244 = !DILocation(line: 61, column: 11, scope: !2219)
!2245 = !DILocation(line: 66, column: 15, scope: !2223)
!2246 = !DILocation(line: 67, column: 15, scope: !2223)
!2247 = !DILocation(line: 71, column: 17, scope: !2222)
!2248 = !DILocation(line: 71, column: 25, scope: !2222)
!2249 = !DILocation(line: 72, column: 17, scope: !2222)
!2250 = !DILocation(line: 73, column: 33, scope: !2222)
!2251 = !DILocation(line: 73, column: 17, scope: !2222)
!2252 = !DILocation(line: 74, column: 17, scope: !2222)
!2253 = !DILocation(line: 85, column: 10, scope: !2206)
!2254 = !DILocation(line: 89, column: 10, scope: !2206)
!2255 = !DILocation(line: 90, column: 1, scope: !2206)
!2256 = !DISubprogram(name: "getopt_long", scope: !64, file: !64, line: 66, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!24, !24, !2259, !8, !2261, !69}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!2262 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !59, file: !59, line: 98, type: !2263, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !24, !530, !8, !8, !8, !7, !2209, null}
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2266 = !DILocalVariable(name: "argc", arg: 1, scope: !2262, file: !59, line: 98, type: !24)
!2267 = !DILocalVariable(name: "argv", arg: 2, scope: !2262, file: !59, line: 99, type: !530)
!2268 = !DILocalVariable(name: "command_name", arg: 3, scope: !2262, file: !59, line: 100, type: !8)
!2269 = !DILocalVariable(name: "package", arg: 4, scope: !2262, file: !59, line: 101, type: !8)
!2270 = !DILocalVariable(name: "version", arg: 5, scope: !2262, file: !59, line: 102, type: !8)
!2271 = !DILocalVariable(name: "scan_all", arg: 6, scope: !2262, file: !59, line: 103, type: !7)
!2272 = !DILocalVariable(name: "usage_func", arg: 7, scope: !2262, file: !59, line: 104, type: !2209)
!2273 = !DILocalVariable(name: "saved_opterr", scope: !2262, file: !59, line: 107, type: !24)
!2274 = !DILocalVariable(name: "optstring", scope: !2262, file: !59, line: 112, type: !8)
!2275 = !DILocalVariable(name: "c", scope: !2262, file: !59, line: 114, type: !24)
!2276 = !DILocalVariable(name: "authors", scope: !2277, file: !59, line: 125, type: !2226)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !59, line: 124, column: 11)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !59, line: 118, column: 9)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !59, line: 116, column: 5)
!2280 = distinct !DILexicalBlock(scope: !2262, file: !59, line: 115, column: 7)
!2281 = !DILocation(line: 0, scope: !2262)
!2282 = !DILocation(line: 107, column: 22, scope: !2262)
!2283 = !DILocation(line: 110, column: 10, scope: !2262)
!2284 = !DILocation(line: 112, column: 27, scope: !2262)
!2285 = !DILocation(line: 114, column: 11, scope: !2262)
!2286 = !DILocation(line: 115, column: 7, scope: !2262)
!2287 = !DILocation(line: 125, column: 13, scope: !2277)
!2288 = !DILocation(line: 125, column: 21, scope: !2277)
!2289 = !DILocation(line: 126, column: 13, scope: !2277)
!2290 = !DILocation(line: 127, column: 29, scope: !2277)
!2291 = !DILocation(line: 127, column: 13, scope: !2277)
!2292 = !DILocation(line: 128, column: 13, scope: !2277)
!2293 = !DILocation(line: 132, column: 26, scope: !2278)
!2294 = !DILocation(line: 133, column: 11, scope: !2278)
!2295 = !DILocation(line: 0, scope: !2278)
!2296 = !DILocation(line: 138, column: 10, scope: !2262)
!2297 = !DILocation(line: 139, column: 1, scope: !2262)
!2298 = distinct !DISubprogram(name: "set_program_name", scope: !76, file: !76, line: 37, type: !399, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DILocalVariable(name: "argv0", arg: 1, scope: !2298, file: !76, line: 37, type: !8)
!2301 = !DILocalVariable(name: "slash", scope: !2298, file: !76, line: 44, type: !8)
!2302 = !DILocalVariable(name: "base", scope: !2298, file: !76, line: 45, type: !8)
!2303 = !DILocation(line: 0, scope: !2298)
!2304 = !DILocation(line: 44, column: 23, scope: !2298)
!2305 = !DILocation(line: 45, column: 22, scope: !2298)
!2306 = !DILocation(line: 46, column: 17, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2298, file: !76, line: 46, column: 7)
!2308 = !DILocation(line: 46, column: 9, scope: !2307)
!2309 = !DILocation(line: 46, column: 25, scope: !2307)
!2310 = !DILocation(line: 46, column: 40, scope: !2307)
!2311 = !DILocalVariable(name: "__s1", arg: 1, scope: !2312, file: !424, line: 974, type: !2315)
!2312 = distinct !DISubprogram(name: "memeq", scope: !424, file: !424, line: 974, type: !2313, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2317)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!7, !2315, !2315, !158}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2317 = !{!2311, !2318, !2319}
!2318 = !DILocalVariable(name: "__s2", arg: 2, scope: !2312, file: !424, line: 974, type: !2315)
!2319 = !DILocalVariable(name: "__n", arg: 3, scope: !2312, file: !424, line: 974, type: !158)
!2320 = !DILocation(line: 0, scope: !2312, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 46, column: 28, scope: !2307)
!2322 = !DILocation(line: 976, column: 11, scope: !2312, inlinedAt: !2321)
!2323 = !DILocation(line: 976, column: 10, scope: !2312, inlinedAt: !2321)
!2324 = !DILocation(line: 46, column: 7, scope: !2298)
!2325 = !DILocation(line: 49, column: 11, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !76, line: 49, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2307, file: !76, line: 47, column: 5)
!2328 = !DILocation(line: 49, column: 36, scope: !2326)
!2329 = !DILocation(line: 49, column: 11, scope: !2327)
!2330 = !DILocation(line: 65, column: 16, scope: !2298)
!2331 = !DILocation(line: 71, column: 27, scope: !2298)
!2332 = !DILocation(line: 74, column: 33, scope: !2298)
!2333 = !DILocation(line: 76, column: 1, scope: !2298)
!2334 = !DILocation(line: 0, scope: !82)
!2335 = !DILocation(line: 40, column: 29, scope: !82)
!2336 = !DILocation(line: 41, column: 19, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !82, file: !83, line: 41, column: 7)
!2338 = !DILocation(line: 41, column: 7, scope: !82)
!2339 = !DILocation(line: 47, column: 3, scope: !82)
!2340 = !DILocation(line: 48, column: 3, scope: !82)
!2341 = !DILocation(line: 48, column: 13, scope: !82)
!2342 = !DILocalVariable(name: "ps", arg: 1, scope: !2343, file: !2344, line: 1135, type: !2347)
!2343 = distinct !DISubprogram(name: "mbszero", scope: !2344, file: !2344, line: 1135, type: !2345, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !2348)
!2344 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2348 = !{!2342}
!2349 = !DILocation(line: 0, scope: !2343, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 48, column: 18, scope: !82)
!2351 = !DILocalVariable(name: "__dest", arg: 1, scope: !2352, file: !2353, line: 57, type: !16)
!2352 = distinct !DISubprogram(name: "memset", scope: !2353, file: !2353, line: 57, type: !2354, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !86, retainedNodes: !2356)
!2353 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!16, !16, !24, !158}
!2356 = !{!2351, !2357, !2358}
!2357 = !DILocalVariable(name: "__ch", arg: 2, scope: !2352, file: !2353, line: 57, type: !24)
!2358 = !DILocalVariable(name: "__len", arg: 3, scope: !2352, file: !2353, line: 57, type: !158)
!2359 = !DILocation(line: 0, scope: !2352, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 1137, column: 3, scope: !2343, inlinedAt: !2350)
!2361 = !DILocation(line: 59, column: 10, scope: !2352, inlinedAt: !2360)
!2362 = !DILocation(line: 49, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !82, file: !83, line: 49, column: 7)
!2364 = !DILocation(line: 49, column: 39, scope: !2363)
!2365 = !DILocation(line: 49, column: 44, scope: !2363)
!2366 = !DILocation(line: 54, column: 1, scope: !82)
!2367 = !DISubprogram(name: "mbrtoc32", scope: !94, file: !94, line: 57, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!158, !2370, !470, !158, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2347)
!2373 = distinct !DISubprogram(name: "clone_quoting_options", scope: !120, file: !120, line: 113, type: !2374, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2377)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2376, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "o", arg: 1, scope: !2373, file: !120, line: 113, type: !2376)
!2379 = !DILocalVariable(name: "saved_errno", scope: !2373, file: !120, line: 115, type: !24)
!2380 = !DILocalVariable(name: "p", scope: !2373, file: !120, line: 116, type: !2376)
!2381 = !DILocation(line: 0, scope: !2373)
!2382 = !DILocation(line: 115, column: 21, scope: !2373)
!2383 = !DILocation(line: 116, column: 40, scope: !2373)
!2384 = !DILocation(line: 116, column: 31, scope: !2373)
!2385 = !DILocation(line: 118, column: 9, scope: !2373)
!2386 = !DILocation(line: 119, column: 3, scope: !2373)
!2387 = distinct !DISubprogram(name: "get_quoting_style", scope: !120, file: !120, line: 124, type: !2388, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2392)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!122, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "o", arg: 1, scope: !2387, file: !120, line: 124, type: !2390)
!2394 = !DILocation(line: 0, scope: !2387)
!2395 = !DILocation(line: 126, column: 11, scope: !2387)
!2396 = !DILocation(line: 126, column: 46, scope: !2387)
!2397 = !{!2398, !389, i64 0}
!2398 = !{!"quoting_options", !389, i64 0, !1352, i64 4, !389, i64 8, !388, i64 40, !388, i64 48}
!2399 = !DILocation(line: 126, column: 3, scope: !2387)
!2400 = distinct !DISubprogram(name: "set_quoting_style", scope: !120, file: !120, line: 132, type: !2401, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2376, !122}
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "o", arg: 1, scope: !2400, file: !120, line: 132, type: !2376)
!2405 = !DILocalVariable(name: "s", arg: 2, scope: !2400, file: !120, line: 132, type: !122)
!2406 = !DILocation(line: 0, scope: !2400)
!2407 = !DILocation(line: 134, column: 4, scope: !2400)
!2408 = !DILocation(line: 134, column: 39, scope: !2400)
!2409 = !DILocation(line: 134, column: 45, scope: !2400)
!2410 = !DILocation(line: 135, column: 1, scope: !2400)
!2411 = distinct !DISubprogram(name: "set_char_quoting", scope: !120, file: !120, line: 143, type: !2412, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!24, !2376, !10, !24}
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2421, !2422}
!2415 = !DILocalVariable(name: "o", arg: 1, scope: !2411, file: !120, line: 143, type: !2376)
!2416 = !DILocalVariable(name: "c", arg: 2, scope: !2411, file: !120, line: 143, type: !10)
!2417 = !DILocalVariable(name: "i", arg: 3, scope: !2411, file: !120, line: 143, type: !24)
!2418 = !DILocalVariable(name: "uc", scope: !2411, file: !120, line: 145, type: !17)
!2419 = !DILocalVariable(name: "p", scope: !2411, file: !120, line: 146, type: !2420)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2421 = !DILocalVariable(name: "shift", scope: !2411, file: !120, line: 148, type: !24)
!2422 = !DILocalVariable(name: "r", scope: !2411, file: !120, line: 149, type: !25)
!2423 = !DILocation(line: 0, scope: !2411)
!2424 = !DILocation(line: 147, column: 6, scope: !2411)
!2425 = !DILocation(line: 147, column: 62, scope: !2411)
!2426 = !DILocation(line: 147, column: 57, scope: !2411)
!2427 = !DILocation(line: 148, column: 15, scope: !2411)
!2428 = !DILocation(line: 149, column: 21, scope: !2411)
!2429 = !DILocation(line: 149, column: 24, scope: !2411)
!2430 = !DILocation(line: 149, column: 34, scope: !2411)
!2431 = !DILocation(line: 150, column: 13, scope: !2411)
!2432 = !DILocation(line: 150, column: 19, scope: !2411)
!2433 = !DILocation(line: 150, column: 24, scope: !2411)
!2434 = !DILocation(line: 150, column: 6, scope: !2411)
!2435 = !DILocation(line: 151, column: 3, scope: !2411)
!2436 = distinct !DISubprogram(name: "set_quoting_flags", scope: !120, file: !120, line: 159, type: !2437, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!24, !2376, !24}
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "o", arg: 1, scope: !2436, file: !120, line: 159, type: !2376)
!2441 = !DILocalVariable(name: "i", arg: 2, scope: !2436, file: !120, line: 159, type: !24)
!2442 = !DILocalVariable(name: "r", scope: !2436, file: !120, line: 163, type: !24)
!2443 = !DILocation(line: 0, scope: !2436)
!2444 = !DILocation(line: 161, column: 8, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2436, file: !120, line: 161, column: 7)
!2446 = !DILocation(line: 161, column: 7, scope: !2436)
!2447 = !DILocation(line: 163, column: 14, scope: !2436)
!2448 = !{!2398, !1352, i64 4}
!2449 = !DILocation(line: 164, column: 12, scope: !2436)
!2450 = !DILocation(line: 165, column: 3, scope: !2436)
!2451 = distinct !DISubprogram(name: "set_custom_quoting", scope: !120, file: !120, line: 169, type: !2452, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !2376, !8, !8}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "o", arg: 1, scope: !2451, file: !120, line: 169, type: !2376)
!2456 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2451, file: !120, line: 170, type: !8)
!2457 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2451, file: !120, line: 170, type: !8)
!2458 = !DILocation(line: 0, scope: !2451)
!2459 = !DILocation(line: 172, column: 8, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2451, file: !120, line: 172, column: 7)
!2461 = !DILocation(line: 172, column: 7, scope: !2451)
!2462 = !DILocation(line: 174, column: 6, scope: !2451)
!2463 = !DILocation(line: 174, column: 12, scope: !2451)
!2464 = !DILocation(line: 175, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2451, file: !120, line: 175, column: 7)
!2466 = !DILocation(line: 175, column: 19, scope: !2465)
!2467 = !DILocation(line: 176, column: 5, scope: !2465)
!2468 = !DILocation(line: 177, column: 6, scope: !2451)
!2469 = !DILocation(line: 177, column: 17, scope: !2451)
!2470 = !{!2398, !388, i64 40}
!2471 = !DILocation(line: 178, column: 6, scope: !2451)
!2472 = !DILocation(line: 178, column: 18, scope: !2451)
!2473 = !{!2398, !388, i64 48}
!2474 = !DILocation(line: 179, column: 1, scope: !2451)
!2475 = distinct !DISubprogram(name: "quotearg_buffer", scope: !120, file: !120, line: 774, type: !2476, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!158, !78, !158, !8, !158, !2390}
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2479 = !DILocalVariable(name: "buffer", arg: 1, scope: !2475, file: !120, line: 774, type: !78)
!2480 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2475, file: !120, line: 774, type: !158)
!2481 = !DILocalVariable(name: "arg", arg: 3, scope: !2475, file: !120, line: 775, type: !8)
!2482 = !DILocalVariable(name: "argsize", arg: 4, scope: !2475, file: !120, line: 775, type: !158)
!2483 = !DILocalVariable(name: "o", arg: 5, scope: !2475, file: !120, line: 776, type: !2390)
!2484 = !DILocalVariable(name: "p", scope: !2475, file: !120, line: 778, type: !2390)
!2485 = !DILocalVariable(name: "saved_errno", scope: !2475, file: !120, line: 779, type: !24)
!2486 = !DILocalVariable(name: "r", scope: !2475, file: !120, line: 780, type: !158)
!2487 = !DILocation(line: 0, scope: !2475)
!2488 = !DILocation(line: 778, column: 37, scope: !2475)
!2489 = !DILocation(line: 779, column: 21, scope: !2475)
!2490 = !DILocation(line: 781, column: 43, scope: !2475)
!2491 = !DILocation(line: 781, column: 53, scope: !2475)
!2492 = !DILocation(line: 781, column: 60, scope: !2475)
!2493 = !DILocation(line: 782, column: 43, scope: !2475)
!2494 = !DILocation(line: 782, column: 58, scope: !2475)
!2495 = !DILocation(line: 780, column: 14, scope: !2475)
!2496 = !DILocation(line: 783, column: 9, scope: !2475)
!2497 = !DILocation(line: 784, column: 3, scope: !2475)
!2498 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !120, file: !120, line: 251, type: !2499, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2503)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!158, !78, !158, !8, !158, !122, !24, !2501, !8, !8}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2528, !2530, !2533, !2534, !2535, !2536, !2539, !2540, !2543, !2547, !2548, !2556, !2559, !2560, !2562, !2563, !2564, !2565}
!2504 = !DILocalVariable(name: "buffer", arg: 1, scope: !2498, file: !120, line: 251, type: !78)
!2505 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2498, file: !120, line: 251, type: !158)
!2506 = !DILocalVariable(name: "arg", arg: 3, scope: !2498, file: !120, line: 252, type: !8)
!2507 = !DILocalVariable(name: "argsize", arg: 4, scope: !2498, file: !120, line: 252, type: !158)
!2508 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2498, file: !120, line: 253, type: !122)
!2509 = !DILocalVariable(name: "flags", arg: 6, scope: !2498, file: !120, line: 253, type: !24)
!2510 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2498, file: !120, line: 254, type: !2501)
!2511 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2498, file: !120, line: 255, type: !8)
!2512 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2498, file: !120, line: 256, type: !8)
!2513 = !DILocalVariable(name: "unibyte_locale", scope: !2498, file: !120, line: 258, type: !7)
!2514 = !DILocalVariable(name: "len", scope: !2498, file: !120, line: 260, type: !158)
!2515 = !DILocalVariable(name: "orig_buffersize", scope: !2498, file: !120, line: 261, type: !158)
!2516 = !DILocalVariable(name: "quote_string", scope: !2498, file: !120, line: 262, type: !8)
!2517 = !DILocalVariable(name: "quote_string_len", scope: !2498, file: !120, line: 263, type: !158)
!2518 = !DILocalVariable(name: "backslash_escapes", scope: !2498, file: !120, line: 264, type: !7)
!2519 = !DILocalVariable(name: "elide_outer_quotes", scope: !2498, file: !120, line: 265, type: !7)
!2520 = !DILocalVariable(name: "encountered_single_quote", scope: !2498, file: !120, line: 266, type: !7)
!2521 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2498, file: !120, line: 267, type: !7)
!2522 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2498, file: !120, line: 309, type: !7)
!2523 = !DILocalVariable(name: "lq", scope: !2524, file: !120, line: 361, type: !8)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !120, line: 361, column: 11)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !120, line: 360, column: 13)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !120, line: 333, column: 7)
!2527 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 312, column: 5)
!2528 = !DILocalVariable(name: "i", scope: !2529, file: !120, line: 395, type: !158)
!2529 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 395, column: 3)
!2530 = !DILocalVariable(name: "is_right_quote", scope: !2531, file: !120, line: 397, type: !7)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !120, line: 396, column: 5)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !120, line: 395, column: 3)
!2533 = !DILocalVariable(name: "escaping", scope: !2531, file: !120, line: 398, type: !7)
!2534 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2531, file: !120, line: 399, type: !7)
!2535 = !DILocalVariable(name: "c", scope: !2531, file: !120, line: 417, type: !17)
!2536 = !DILocalVariable(name: "m", scope: !2537, file: !120, line: 598, type: !158)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 596, column: 11)
!2538 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 419, column: 9)
!2539 = !DILocalVariable(name: "printable", scope: !2537, file: !120, line: 600, type: !7)
!2540 = !DILocalVariable(name: "mbs", scope: !2541, file: !120, line: 609, type: !198)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !120, line: 608, column: 15)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !120, line: 602, column: 17)
!2543 = !DILocalVariable(name: "w", scope: !2544, file: !120, line: 618, type: !93)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !120, line: 617, column: 19)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !120, line: 616, column: 17)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !120, line: 616, column: 17)
!2547 = !DILocalVariable(name: "bytes", scope: !2544, file: !120, line: 619, type: !158)
!2548 = !DILocalVariable(name: "j", scope: !2549, file: !120, line: 648, type: !158)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !120, line: 648, column: 29)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !120, line: 647, column: 27)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !120, line: 645, column: 29)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !120, line: 636, column: 23)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !120, line: 628, column: 30)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !120, line: 623, column: 30)
!2555 = distinct !DILexicalBlock(scope: !2544, file: !120, line: 621, column: 25)
!2556 = !DILocalVariable(name: "ilim", scope: !2557, file: !120, line: 674, type: !158)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !120, line: 671, column: 15)
!2558 = distinct !DILexicalBlock(scope: !2537, file: !120, line: 670, column: 17)
!2559 = !DILabel(scope: !2498, name: "process_input", file: !120, line: 308)
!2560 = !DILabel(scope: !2561, name: "c_and_shell_escape", file: !120, line: 502)
!2561 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 478, column: 9)
!2562 = !DILabel(scope: !2561, name: "c_escape", file: !120, line: 507)
!2563 = !DILabel(scope: !2531, name: "store_escape", file: !120, line: 709)
!2564 = !DILabel(scope: !2531, name: "store_c", file: !120, line: 712)
!2565 = !DILabel(scope: !2498, name: "force_outer_quoting_style", file: !120, line: 753)
!2566 = !DILocation(line: 0, scope: !2498)
!2567 = !DILocation(line: 258, column: 25, scope: !2498)
!2568 = !DILocation(line: 258, column: 36, scope: !2498)
!2569 = !DILocation(line: 267, column: 3, scope: !2498)
!2570 = !DILocation(line: 261, column: 10, scope: !2498)
!2571 = !DILocation(line: 262, column: 15, scope: !2498)
!2572 = !DILocation(line: 263, column: 10, scope: !2498)
!2573 = !DILocation(line: 308, column: 2, scope: !2498)
!2574 = !DILocation(line: 311, column: 3, scope: !2498)
!2575 = !DILocation(line: 318, column: 11, scope: !2527)
!2576 = !DILocation(line: 319, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !120, line: 319, column: 9)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !120, line: 319, column: 9)
!2579 = distinct !DILexicalBlock(scope: !2527, file: !120, line: 318, column: 11)
!2580 = !DILocation(line: 319, column: 9, scope: !2578)
!2581 = !DILocation(line: 0, scope: !189, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 357, column: 26, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !120, line: 335, column: 11)
!2584 = distinct !DILexicalBlock(scope: !2526, file: !120, line: 334, column: 13)
!2585 = !DILocation(line: 199, column: 29, scope: !189, inlinedAt: !2582)
!2586 = !DILocation(line: 201, column: 19, scope: !2587, inlinedAt: !2582)
!2587 = distinct !DILexicalBlock(scope: !189, file: !120, line: 201, column: 7)
!2588 = !DILocation(line: 201, column: 7, scope: !189, inlinedAt: !2582)
!2589 = !DILocation(line: 229, column: 3, scope: !189, inlinedAt: !2582)
!2590 = !DILocation(line: 230, column: 3, scope: !189, inlinedAt: !2582)
!2591 = !DILocation(line: 230, column: 13, scope: !189, inlinedAt: !2582)
!2592 = !DILocalVariable(name: "ps", arg: 1, scope: !2593, file: !2344, line: 1135, type: !2596)
!2593 = distinct !DISubprogram(name: "mbszero", scope: !2344, file: !2344, line: 1135, type: !2594, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2597)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!2597 = !{!2592}
!2598 = !DILocation(line: 0, scope: !2593, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 230, column: 18, scope: !189, inlinedAt: !2582)
!2600 = !DILocalVariable(name: "__dest", arg: 1, scope: !2601, file: !2353, line: 57, type: !16)
!2601 = distinct !DISubprogram(name: "memset", scope: !2353, file: !2353, line: 57, type: !2354, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2602)
!2602 = !{!2600, !2603, !2604}
!2603 = !DILocalVariable(name: "__ch", arg: 2, scope: !2601, file: !2353, line: 57, type: !24)
!2604 = !DILocalVariable(name: "__len", arg: 3, scope: !2601, file: !2353, line: 57, type: !158)
!2605 = !DILocation(line: 0, scope: !2601, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1137, column: 3, scope: !2593, inlinedAt: !2599)
!2607 = !DILocation(line: 59, column: 10, scope: !2601, inlinedAt: !2606)
!2608 = !DILocation(line: 231, column: 7, scope: !2609, inlinedAt: !2582)
!2609 = distinct !DILexicalBlock(scope: !189, file: !120, line: 231, column: 7)
!2610 = !DILocation(line: 231, column: 40, scope: !2609, inlinedAt: !2582)
!2611 = !DILocation(line: 231, column: 45, scope: !2609, inlinedAt: !2582)
!2612 = !DILocation(line: 235, column: 1, scope: !189, inlinedAt: !2582)
!2613 = !DILocation(line: 0, scope: !189, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 358, column: 27, scope: !2583)
!2615 = !DILocation(line: 199, column: 29, scope: !189, inlinedAt: !2614)
!2616 = !DILocation(line: 201, column: 19, scope: !2587, inlinedAt: !2614)
!2617 = !DILocation(line: 201, column: 7, scope: !189, inlinedAt: !2614)
!2618 = !DILocation(line: 229, column: 3, scope: !189, inlinedAt: !2614)
!2619 = !DILocation(line: 230, column: 3, scope: !189, inlinedAt: !2614)
!2620 = !DILocation(line: 230, column: 13, scope: !189, inlinedAt: !2614)
!2621 = !DILocation(line: 0, scope: !2593, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 230, column: 18, scope: !189, inlinedAt: !2614)
!2623 = !DILocation(line: 0, scope: !2601, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1137, column: 3, scope: !2593, inlinedAt: !2622)
!2625 = !DILocation(line: 59, column: 10, scope: !2601, inlinedAt: !2624)
!2626 = !DILocation(line: 231, column: 7, scope: !2609, inlinedAt: !2614)
!2627 = !DILocation(line: 231, column: 40, scope: !2609, inlinedAt: !2614)
!2628 = !DILocation(line: 231, column: 45, scope: !2609, inlinedAt: !2614)
!2629 = !DILocation(line: 235, column: 1, scope: !189, inlinedAt: !2614)
!2630 = !DILocation(line: 360, column: 13, scope: !2526)
!2631 = !DILocation(line: 0, scope: !2524)
!2632 = !DILocation(line: 361, column: 45, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2524, file: !120, line: 361, column: 11)
!2634 = !DILocation(line: 361, column: 11, scope: !2524)
!2635 = !DILocation(line: 362, column: 13, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !120, line: 362, column: 13)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !120, line: 362, column: 13)
!2638 = !DILocation(line: 362, column: 13, scope: !2637)
!2639 = !DILocation(line: 361, column: 52, scope: !2633)
!2640 = distinct !{!2640, !2634, !2641, !440}
!2641 = !DILocation(line: 362, column: 13, scope: !2524)
!2642 = !DILocation(line: 260, column: 10, scope: !2498)
!2643 = !DILocation(line: 365, column: 28, scope: !2526)
!2644 = !DILocation(line: 367, column: 7, scope: !2527)
!2645 = !DILocation(line: 370, column: 7, scope: !2527)
!2646 = !DILocation(line: 376, column: 11, scope: !2527)
!2647 = !DILocation(line: 381, column: 11, scope: !2527)
!2648 = !DILocation(line: 382, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !120, line: 382, column: 9)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !120, line: 382, column: 9)
!2651 = distinct !DILexicalBlock(scope: !2527, file: !120, line: 381, column: 11)
!2652 = !DILocation(line: 382, column: 9, scope: !2650)
!2653 = !DILocation(line: 389, column: 7, scope: !2527)
!2654 = !DILocation(line: 392, column: 7, scope: !2527)
!2655 = !DILocation(line: 0, scope: !2529)
!2656 = !DILocation(line: 395, column: 8, scope: !2529)
!2657 = !DILocation(line: 395, column: 34, scope: !2532)
!2658 = !DILocation(line: 395, column: 26, scope: !2532)
!2659 = !DILocation(line: 395, column: 48, scope: !2532)
!2660 = !DILocation(line: 395, column: 55, scope: !2532)
!2661 = !DILocation(line: 395, column: 3, scope: !2529)
!2662 = !DILocation(line: 395, column: 67, scope: !2532)
!2663 = !DILocation(line: 0, scope: !2531)
!2664 = !DILocation(line: 402, column: 11, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 401, column: 11)
!2666 = !DILocation(line: 404, column: 17, scope: !2665)
!2667 = !DILocation(line: 405, column: 39, scope: !2665)
!2668 = !DILocation(line: 409, column: 32, scope: !2665)
!2669 = !DILocation(line: 405, column: 19, scope: !2665)
!2670 = !DILocation(line: 405, column: 15, scope: !2665)
!2671 = !DILocation(line: 410, column: 11, scope: !2665)
!2672 = !DILocation(line: 410, column: 25, scope: !2665)
!2673 = !DILocalVariable(name: "__s1", arg: 1, scope: !2674, file: !424, line: 974, type: !2315)
!2674 = distinct !DISubprogram(name: "memeq", scope: !424, file: !424, line: 974, type: !2313, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2675)
!2675 = !{!2673, !2676, !2677}
!2676 = !DILocalVariable(name: "__s2", arg: 2, scope: !2674, file: !424, line: 974, type: !2315)
!2677 = !DILocalVariable(name: "__n", arg: 3, scope: !2674, file: !424, line: 974, type: !158)
!2678 = !DILocation(line: 0, scope: !2674, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 410, column: 14, scope: !2665)
!2680 = !DILocation(line: 976, column: 11, scope: !2674, inlinedAt: !2679)
!2681 = !DILocation(line: 976, column: 10, scope: !2674, inlinedAt: !2679)
!2682 = !DILocation(line: 401, column: 11, scope: !2531)
!2683 = !DILocation(line: 417, column: 25, scope: !2531)
!2684 = !DILocation(line: 418, column: 7, scope: !2531)
!2685 = !DILocation(line: 421, column: 15, scope: !2538)
!2686 = !DILocation(line: 423, column: 15, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !120, line: 423, column: 15)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !120, line: 422, column: 13)
!2689 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 421, column: 15)
!2690 = !DILocation(line: 423, column: 15, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !120, line: 423, column: 15)
!2692 = !DILocation(line: 423, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !120, line: 423, column: 15)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !120, line: 423, column: 15)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !120, line: 423, column: 15)
!2696 = !DILocation(line: 423, column: 15, scope: !2694)
!2697 = !DILocation(line: 423, column: 15, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !120, line: 423, column: 15)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !120, line: 423, column: 15)
!2700 = !DILocation(line: 423, column: 15, scope: !2699)
!2701 = !DILocation(line: 423, column: 15, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !120, line: 423, column: 15)
!2703 = distinct !DILexicalBlock(scope: !2695, file: !120, line: 423, column: 15)
!2704 = !DILocation(line: 423, column: 15, scope: !2703)
!2705 = !DILocation(line: 423, column: 15, scope: !2695)
!2706 = !DILocation(line: 423, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !120, line: 423, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2687, file: !120, line: 423, column: 15)
!2709 = !DILocation(line: 423, column: 15, scope: !2708)
!2710 = !DILocation(line: 431, column: 19, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2688, file: !120, line: 430, column: 19)
!2712 = !DILocation(line: 431, column: 24, scope: !2711)
!2713 = !DILocation(line: 431, column: 28, scope: !2711)
!2714 = !DILocation(line: 431, column: 38, scope: !2711)
!2715 = !DILocation(line: 431, column: 48, scope: !2711)
!2716 = !DILocation(line: 431, column: 59, scope: !2711)
!2717 = !DILocation(line: 433, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !120, line: 433, column: 19)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !120, line: 433, column: 19)
!2720 = distinct !DILexicalBlock(scope: !2711, file: !120, line: 432, column: 17)
!2721 = !DILocation(line: 433, column: 19, scope: !2719)
!2722 = !DILocation(line: 434, column: 19, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !120, line: 434, column: 19)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !120, line: 434, column: 19)
!2725 = !DILocation(line: 434, column: 19, scope: !2724)
!2726 = !DILocation(line: 435, column: 17, scope: !2720)
!2727 = !DILocation(line: 442, column: 20, scope: !2689)
!2728 = !DILocation(line: 447, column: 11, scope: !2538)
!2729 = !DILocation(line: 450, column: 19, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 448, column: 13)
!2731 = !DILocation(line: 456, column: 19, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2730, file: !120, line: 455, column: 19)
!2733 = !DILocation(line: 456, column: 24, scope: !2732)
!2734 = !DILocation(line: 456, column: 28, scope: !2732)
!2735 = !DILocation(line: 456, column: 38, scope: !2732)
!2736 = !DILocation(line: 456, column: 47, scope: !2732)
!2737 = !DILocation(line: 456, column: 41, scope: !2732)
!2738 = !DILocation(line: 456, column: 52, scope: !2732)
!2739 = !DILocation(line: 455, column: 19, scope: !2730)
!2740 = !DILocation(line: 457, column: 25, scope: !2732)
!2741 = !DILocation(line: 457, column: 17, scope: !2732)
!2742 = !DILocation(line: 464, column: 25, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2732, file: !120, line: 458, column: 19)
!2744 = !DILocation(line: 468, column: 21, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !120, line: 468, column: 21)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !120, line: 468, column: 21)
!2747 = !DILocation(line: 468, column: 21, scope: !2746)
!2748 = !DILocation(line: 469, column: 21, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !120, line: 469, column: 21)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !120, line: 469, column: 21)
!2751 = !DILocation(line: 469, column: 21, scope: !2750)
!2752 = !DILocation(line: 470, column: 21, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !120, line: 470, column: 21)
!2754 = distinct !DILexicalBlock(scope: !2743, file: !120, line: 470, column: 21)
!2755 = !DILocation(line: 470, column: 21, scope: !2754)
!2756 = !DILocation(line: 471, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !120, line: 471, column: 21)
!2758 = distinct !DILexicalBlock(scope: !2743, file: !120, line: 471, column: 21)
!2759 = !DILocation(line: 471, column: 21, scope: !2758)
!2760 = !DILocation(line: 472, column: 21, scope: !2743)
!2761 = !DILocation(line: 482, column: 33, scope: !2561)
!2762 = !DILocation(line: 483, column: 33, scope: !2561)
!2763 = !DILocation(line: 485, column: 33, scope: !2561)
!2764 = !DILocation(line: 486, column: 33, scope: !2561)
!2765 = !DILocation(line: 487, column: 33, scope: !2561)
!2766 = !DILocation(line: 490, column: 17, scope: !2561)
!2767 = !DILocation(line: 492, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !120, line: 491, column: 15)
!2769 = distinct !DILexicalBlock(scope: !2561, file: !120, line: 490, column: 17)
!2770 = !DILocation(line: 499, column: 35, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2561, file: !120, line: 499, column: 17)
!2772 = !DILocation(line: 499, column: 57, scope: !2771)
!2773 = !DILocation(line: 0, scope: !2561)
!2774 = !DILocation(line: 502, column: 11, scope: !2561)
!2775 = !DILocation(line: 504, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2561, file: !120, line: 503, column: 17)
!2777 = !DILocation(line: 507, column: 11, scope: !2561)
!2778 = !DILocation(line: 508, column: 17, scope: !2561)
!2779 = !DILocation(line: 517, column: 15, scope: !2538)
!2780 = !DILocation(line: 517, column: 40, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 517, column: 15)
!2782 = !DILocation(line: 517, column: 47, scope: !2781)
!2783 = !DILocation(line: 517, column: 18, scope: !2781)
!2784 = !DILocation(line: 521, column: 17, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 521, column: 15)
!2786 = !DILocation(line: 521, column: 15, scope: !2538)
!2787 = !DILocation(line: 525, column: 11, scope: !2538)
!2788 = !DILocation(line: 537, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 536, column: 15)
!2790 = !DILocation(line: 536, column: 15, scope: !2538)
!2791 = !DILocation(line: 544, column: 15, scope: !2538)
!2792 = !DILocation(line: 546, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !120, line: 545, column: 13)
!2794 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 544, column: 15)
!2795 = !DILocation(line: 549, column: 19, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !120, line: 549, column: 19)
!2797 = !DILocation(line: 549, column: 30, scope: !2796)
!2798 = !DILocation(line: 558, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !120, line: 558, column: 15)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !120, line: 558, column: 15)
!2801 = !DILocation(line: 558, column: 15, scope: !2800)
!2802 = !DILocation(line: 559, column: 15, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !120, line: 559, column: 15)
!2804 = distinct !DILexicalBlock(scope: !2793, file: !120, line: 559, column: 15)
!2805 = !DILocation(line: 559, column: 15, scope: !2804)
!2806 = !DILocation(line: 560, column: 15, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !120, line: 560, column: 15)
!2808 = distinct !DILexicalBlock(scope: !2793, file: !120, line: 560, column: 15)
!2809 = !DILocation(line: 560, column: 15, scope: !2808)
!2810 = !DILocation(line: 562, column: 13, scope: !2793)
!2811 = !DILocation(line: 602, column: 17, scope: !2537)
!2812 = !DILocation(line: 0, scope: !2537)
!2813 = !DILocation(line: 605, column: 29, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2542, file: !120, line: 603, column: 15)
!2815 = !{!1982, !1982, i64 0}
!2816 = !DILocation(line: 605, column: 41, scope: !2814)
!2817 = !DILocation(line: 670, column: 23, scope: !2558)
!2818 = !DILocation(line: 609, column: 17, scope: !2541)
!2819 = !DILocation(line: 609, column: 27, scope: !2541)
!2820 = !DILocation(line: 0, scope: !2593, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 609, column: 32, scope: !2541)
!2822 = !DILocation(line: 0, scope: !2601, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1137, column: 3, scope: !2593, inlinedAt: !2821)
!2824 = !DILocation(line: 59, column: 10, scope: !2601, inlinedAt: !2823)
!2825 = !DILocation(line: 613, column: 29, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2541, file: !120, line: 613, column: 21)
!2827 = !DILocation(line: 613, column: 21, scope: !2541)
!2828 = !DILocation(line: 614, column: 29, scope: !2826)
!2829 = !DILocation(line: 614, column: 19, scope: !2826)
!2830 = !DILocation(line: 618, column: 21, scope: !2544)
!2831 = !DILocation(line: 620, column: 54, scope: !2544)
!2832 = !DILocation(line: 0, scope: !2544)
!2833 = !DILocation(line: 619, column: 36, scope: !2544)
!2834 = !DILocation(line: 621, column: 25, scope: !2544)
!2835 = !DILocation(line: 631, column: 38, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2553, file: !120, line: 629, column: 23)
!2837 = !DILocation(line: 631, column: 48, scope: !2836)
!2838 = !DILocation(line: 665, column: 19, scope: !2545)
!2839 = !DILocation(line: 666, column: 15, scope: !2542)
!2840 = !DILocation(line: 626, column: 25, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2554, file: !120, line: 624, column: 23)
!2842 = !DILocation(line: 631, column: 51, scope: !2836)
!2843 = !DILocation(line: 631, column: 25, scope: !2836)
!2844 = !DILocation(line: 632, column: 28, scope: !2836)
!2845 = !DILocation(line: 631, column: 34, scope: !2836)
!2846 = distinct !{!2846, !2843, !2844, !440}
!2847 = !DILocation(line: 646, column: 29, scope: !2551)
!2848 = !DILocation(line: 0, scope: !2549)
!2849 = !DILocation(line: 649, column: 49, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2549, file: !120, line: 648, column: 29)
!2851 = !DILocation(line: 649, column: 39, scope: !2850)
!2852 = !DILocation(line: 649, column: 31, scope: !2850)
!2853 = !DILocation(line: 648, column: 60, scope: !2850)
!2854 = !DILocation(line: 648, column: 50, scope: !2850)
!2855 = !DILocation(line: 648, column: 29, scope: !2549)
!2856 = distinct !{!2856, !2855, !2857, !440}
!2857 = !DILocation(line: 654, column: 33, scope: !2549)
!2858 = !DILocation(line: 657, column: 43, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2552, file: !120, line: 657, column: 29)
!2860 = !DILocalVariable(name: "wc", arg: 1, scope: !2861, file: !2862, line: 865, type: !2865)
!2861 = distinct !DISubprogram(name: "c32isprint", scope: !2862, file: !2862, line: 865, type: !2863, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !2867)
!2862 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!24, !2865}
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2866, line: 20, baseType: !25)
!2866 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2867 = !{!2860}
!2868 = !DILocation(line: 0, scope: !2861, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 657, column: 31, scope: !2859)
!2870 = !DILocation(line: 871, column: 10, scope: !2861, inlinedAt: !2869)
!2871 = !DILocation(line: 657, column: 31, scope: !2859)
!2872 = !DILocation(line: 664, column: 23, scope: !2544)
!2873 = !DILocation(line: 753, column: 2, scope: !2498)
!2874 = !DILocation(line: 756, column: 51, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 756, column: 7)
!2876 = !DILocation(line: 670, column: 19, scope: !2558)
!2877 = !DILocation(line: 670, column: 45, scope: !2558)
!2878 = !DILocation(line: 674, column: 33, scope: !2557)
!2879 = !DILocation(line: 0, scope: !2557)
!2880 = !DILocation(line: 676, column: 17, scope: !2557)
!2881 = !DILocation(line: 398, column: 12, scope: !2531)
!2882 = !DILocation(line: 678, column: 43, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !120, line: 678, column: 25)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !120, line: 677, column: 19)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !120, line: 676, column: 17)
!2886 = distinct !DILexicalBlock(scope: !2557, file: !120, line: 676, column: 17)
!2887 = !DILocation(line: 680, column: 25, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !120, line: 680, column: 25)
!2889 = distinct !DILexicalBlock(scope: !2883, file: !120, line: 679, column: 23)
!2890 = !DILocation(line: 680, column: 25, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !120, line: 680, column: 25)
!2892 = !DILocation(line: 680, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !120, line: 680, column: 25)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !120, line: 680, column: 25)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !120, line: 680, column: 25)
!2896 = !DILocation(line: 680, column: 25, scope: !2894)
!2897 = !DILocation(line: 680, column: 25, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !120, line: 680, column: 25)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !120, line: 680, column: 25)
!2900 = !DILocation(line: 680, column: 25, scope: !2899)
!2901 = !DILocation(line: 680, column: 25, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !120, line: 680, column: 25)
!2903 = distinct !DILexicalBlock(scope: !2895, file: !120, line: 680, column: 25)
!2904 = !DILocation(line: 680, column: 25, scope: !2903)
!2905 = !DILocation(line: 680, column: 25, scope: !2895)
!2906 = !DILocation(line: 680, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !120, line: 680, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2888, file: !120, line: 680, column: 25)
!2909 = !DILocation(line: 680, column: 25, scope: !2908)
!2910 = !DILocation(line: 681, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !120, line: 681, column: 25)
!2912 = distinct !DILexicalBlock(scope: !2889, file: !120, line: 681, column: 25)
!2913 = !DILocation(line: 681, column: 25, scope: !2912)
!2914 = !DILocation(line: 682, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !120, line: 682, column: 25)
!2916 = distinct !DILexicalBlock(scope: !2889, file: !120, line: 682, column: 25)
!2917 = !DILocation(line: 682, column: 25, scope: !2916)
!2918 = !DILocation(line: 683, column: 38, scope: !2889)
!2919 = !DILocation(line: 683, column: 33, scope: !2889)
!2920 = !DILocation(line: 684, column: 23, scope: !2889)
!2921 = !DILocation(line: 685, column: 30, scope: !2883)
!2922 = !DILocation(line: 687, column: 25, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !120, line: 687, column: 25)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !120, line: 687, column: 25)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !120, line: 686, column: 23)
!2926 = distinct !DILexicalBlock(scope: !2883, file: !120, line: 685, column: 30)
!2927 = !DILocation(line: 687, column: 25, scope: !2924)
!2928 = !DILocation(line: 689, column: 23, scope: !2925)
!2929 = !DILocation(line: 690, column: 35, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2884, file: !120, line: 690, column: 25)
!2931 = !DILocation(line: 690, column: 30, scope: !2930)
!2932 = !DILocation(line: 690, column: 25, scope: !2884)
!2933 = !DILocation(line: 692, column: 21, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !120, line: 692, column: 21)
!2935 = distinct !DILexicalBlock(scope: !2884, file: !120, line: 692, column: 21)
!2936 = !DILocation(line: 692, column: 21, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !120, line: 692, column: 21)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !120, line: 692, column: 21)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !120, line: 692, column: 21)
!2940 = !DILocation(line: 692, column: 21, scope: !2938)
!2941 = !DILocation(line: 692, column: 21, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !120, line: 692, column: 21)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !120, line: 692, column: 21)
!2944 = !DILocation(line: 692, column: 21, scope: !2943)
!2945 = !DILocation(line: 692, column: 21, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2884)
!2947 = !DILocation(line: 693, column: 21, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !120, line: 693, column: 21)
!2949 = distinct !DILexicalBlock(scope: !2884, file: !120, line: 693, column: 21)
!2950 = !DILocation(line: 693, column: 21, scope: !2949)
!2951 = !DILocation(line: 694, column: 25, scope: !2884)
!2952 = !DILocation(line: 676, column: 17, scope: !2885)
!2953 = distinct !{!2953, !2954, !2955}
!2954 = !DILocation(line: 676, column: 17, scope: !2886)
!2955 = !DILocation(line: 695, column: 19, scope: !2886)
!2956 = !DILocation(line: 409, column: 30, scope: !2665)
!2957 = !DILocation(line: 702, column: 34, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 702, column: 11)
!2959 = !DILocation(line: 704, column: 14, scope: !2958)
!2960 = !DILocation(line: 705, column: 14, scope: !2958)
!2961 = !DILocation(line: 705, column: 35, scope: !2958)
!2962 = !DILocation(line: 705, column: 17, scope: !2958)
!2963 = !DILocation(line: 705, column: 47, scope: !2958)
!2964 = !DILocation(line: 705, column: 65, scope: !2958)
!2965 = !DILocation(line: 706, column: 11, scope: !2958)
!2966 = !DILocation(line: 702, column: 11, scope: !2531)
!2967 = !DILocation(line: 395, column: 15, scope: !2529)
!2968 = !DILocation(line: 709, column: 5, scope: !2531)
!2969 = !DILocation(line: 710, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 710, column: 7)
!2971 = !DILocation(line: 710, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !120, line: 710, column: 7)
!2973 = !DILocation(line: 710, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !120, line: 710, column: 7)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !120, line: 710, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !120, line: 710, column: 7)
!2977 = !DILocation(line: 710, column: 7, scope: !2975)
!2978 = !DILocation(line: 710, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !120, line: 710, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !120, line: 710, column: 7)
!2981 = !DILocation(line: 710, column: 7, scope: !2980)
!2982 = !DILocation(line: 710, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !120, line: 710, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !120, line: 710, column: 7)
!2985 = !DILocation(line: 710, column: 7, scope: !2984)
!2986 = !DILocation(line: 710, column: 7, scope: !2976)
!2987 = !DILocation(line: 710, column: 7, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !120, line: 710, column: 7)
!2989 = distinct !DILexicalBlock(scope: !2970, file: !120, line: 710, column: 7)
!2990 = !DILocation(line: 710, column: 7, scope: !2989)
!2991 = !DILocation(line: 712, column: 5, scope: !2531)
!2992 = !DILocation(line: 713, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !120, line: 713, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 713, column: 7)
!2995 = !DILocation(line: 417, column: 21, scope: !2531)
!2996 = !DILocation(line: 713, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !120, line: 713, column: 7)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !120, line: 713, column: 7)
!2999 = distinct !DILexicalBlock(scope: !2993, file: !120, line: 713, column: 7)
!3000 = !DILocation(line: 713, column: 7, scope: !2998)
!3001 = !DILocation(line: 713, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !120, line: 713, column: 7)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !120, line: 713, column: 7)
!3004 = !DILocation(line: 713, column: 7, scope: !3003)
!3005 = !DILocation(line: 713, column: 7, scope: !2999)
!3006 = !DILocation(line: 714, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !120, line: 714, column: 7)
!3008 = distinct !DILexicalBlock(scope: !2531, file: !120, line: 714, column: 7)
!3009 = !DILocation(line: 714, column: 7, scope: !3008)
!3010 = !DILocation(line: 716, column: 11, scope: !2531)
!3011 = !DILocation(line: 718, column: 5, scope: !2532)
!3012 = !DILocation(line: 395, column: 82, scope: !2532)
!3013 = !DILocation(line: 395, column: 3, scope: !2532)
!3014 = distinct !{!3014, !2661, !3015, !440}
!3015 = !DILocation(line: 718, column: 5, scope: !2529)
!3016 = !DILocation(line: 720, column: 11, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 720, column: 7)
!3018 = !DILocation(line: 720, column: 16, scope: !3017)
!3019 = !DILocation(line: 728, column: 51, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 728, column: 7)
!3021 = !DILocation(line: 731, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3020, file: !120, line: 730, column: 5)
!3023 = !DILocation(line: 732, column: 16, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3022, file: !120, line: 731, column: 11)
!3025 = !DILocation(line: 732, column: 9, scope: !3024)
!3026 = !DILocation(line: 736, column: 18, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !120, line: 736, column: 16)
!3028 = !DILocation(line: 736, column: 29, scope: !3027)
!3029 = !DILocation(line: 745, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 745, column: 7)
!3031 = !DILocation(line: 745, column: 20, scope: !3030)
!3032 = !DILocation(line: 746, column: 12, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !120, line: 746, column: 5)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !120, line: 746, column: 5)
!3035 = !DILocation(line: 746, column: 5, scope: !3034)
!3036 = !DILocation(line: 747, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !120, line: 747, column: 7)
!3038 = distinct !DILexicalBlock(scope: !3033, file: !120, line: 747, column: 7)
!3039 = !DILocation(line: 747, column: 7, scope: !3038)
!3040 = !DILocation(line: 746, column: 39, scope: !3033)
!3041 = distinct !{!3041, !3035, !3042, !440}
!3042 = !DILocation(line: 747, column: 7, scope: !3034)
!3043 = !DILocation(line: 749, column: 11, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2498, file: !120, line: 749, column: 7)
!3045 = !DILocation(line: 749, column: 7, scope: !2498)
!3046 = !DILocation(line: 750, column: 5, scope: !3044)
!3047 = !DILocation(line: 750, column: 17, scope: !3044)
!3048 = !DILocation(line: 756, column: 21, scope: !2875)
!3049 = !DILocation(line: 760, column: 42, scope: !2498)
!3050 = !DILocation(line: 758, column: 10, scope: !2498)
!3051 = !DILocation(line: 758, column: 3, scope: !2498)
!3052 = !DILocation(line: 762, column: 1, scope: !2498)
!3053 = !DISubprogram(name: "iswprint", scope: !3054, file: !3054, line: 120, type: !2863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!3054 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3055 = distinct !DISubprogram(name: "quotearg_alloc", scope: !120, file: !120, line: 788, type: !3056, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!78, !8, !158, !2390}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "arg", arg: 1, scope: !3055, file: !120, line: 788, type: !8)
!3060 = !DILocalVariable(name: "argsize", arg: 2, scope: !3055, file: !120, line: 788, type: !158)
!3061 = !DILocalVariable(name: "o", arg: 3, scope: !3055, file: !120, line: 789, type: !2390)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocalVariable(name: "arg", arg: 1, scope: !3064, file: !120, line: 801, type: !8)
!3064 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !120, file: !120, line: 801, type: !3065, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!78, !8, !158, !318, !2390}
!3067 = !{!3063, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075}
!3068 = !DILocalVariable(name: "argsize", arg: 2, scope: !3064, file: !120, line: 801, type: !158)
!3069 = !DILocalVariable(name: "size", arg: 3, scope: !3064, file: !120, line: 801, type: !318)
!3070 = !DILocalVariable(name: "o", arg: 4, scope: !3064, file: !120, line: 802, type: !2390)
!3071 = !DILocalVariable(name: "p", scope: !3064, file: !120, line: 804, type: !2390)
!3072 = !DILocalVariable(name: "saved_errno", scope: !3064, file: !120, line: 805, type: !24)
!3073 = !DILocalVariable(name: "flags", scope: !3064, file: !120, line: 807, type: !24)
!3074 = !DILocalVariable(name: "bufsize", scope: !3064, file: !120, line: 808, type: !158)
!3075 = !DILocalVariable(name: "buf", scope: !3064, file: !120, line: 812, type: !78)
!3076 = !DILocation(line: 0, scope: !3064, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 791, column: 10, scope: !3055)
!3078 = !DILocation(line: 804, column: 37, scope: !3064, inlinedAt: !3077)
!3079 = !DILocation(line: 805, column: 21, scope: !3064, inlinedAt: !3077)
!3080 = !DILocation(line: 807, column: 18, scope: !3064, inlinedAt: !3077)
!3081 = !DILocation(line: 807, column: 24, scope: !3064, inlinedAt: !3077)
!3082 = !DILocation(line: 808, column: 72, scope: !3064, inlinedAt: !3077)
!3083 = !DILocation(line: 809, column: 53, scope: !3064, inlinedAt: !3077)
!3084 = !DILocation(line: 810, column: 49, scope: !3064, inlinedAt: !3077)
!3085 = !DILocation(line: 811, column: 49, scope: !3064, inlinedAt: !3077)
!3086 = !DILocation(line: 808, column: 20, scope: !3064, inlinedAt: !3077)
!3087 = !DILocation(line: 811, column: 62, scope: !3064, inlinedAt: !3077)
!3088 = !DILocation(line: 812, column: 15, scope: !3064, inlinedAt: !3077)
!3089 = !DILocation(line: 813, column: 60, scope: !3064, inlinedAt: !3077)
!3090 = !DILocation(line: 815, column: 32, scope: !3064, inlinedAt: !3077)
!3091 = !DILocation(line: 815, column: 47, scope: !3064, inlinedAt: !3077)
!3092 = !DILocation(line: 813, column: 3, scope: !3064, inlinedAt: !3077)
!3093 = !DILocation(line: 816, column: 9, scope: !3064, inlinedAt: !3077)
!3094 = !DILocation(line: 791, column: 3, scope: !3055)
!3095 = !DILocation(line: 0, scope: !3064)
!3096 = !DILocation(line: 804, column: 37, scope: !3064)
!3097 = !DILocation(line: 805, column: 21, scope: !3064)
!3098 = !DILocation(line: 807, column: 18, scope: !3064)
!3099 = !DILocation(line: 807, column: 27, scope: !3064)
!3100 = !DILocation(line: 807, column: 24, scope: !3064)
!3101 = !DILocation(line: 808, column: 72, scope: !3064)
!3102 = !DILocation(line: 809, column: 53, scope: !3064)
!3103 = !DILocation(line: 810, column: 49, scope: !3064)
!3104 = !DILocation(line: 811, column: 49, scope: !3064)
!3105 = !DILocation(line: 808, column: 20, scope: !3064)
!3106 = !DILocation(line: 811, column: 62, scope: !3064)
!3107 = !DILocation(line: 812, column: 15, scope: !3064)
!3108 = !DILocation(line: 813, column: 60, scope: !3064)
!3109 = !DILocation(line: 815, column: 32, scope: !3064)
!3110 = !DILocation(line: 815, column: 47, scope: !3064)
!3111 = !DILocation(line: 813, column: 3, scope: !3064)
!3112 = !DILocation(line: 816, column: 9, scope: !3064)
!3113 = !DILocation(line: 817, column: 7, scope: !3064)
!3114 = !DILocation(line: 818, column: 11, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3064, file: !120, line: 817, column: 7)
!3116 = !{!1981, !1981, i64 0}
!3117 = !DILocation(line: 818, column: 5, scope: !3115)
!3118 = !DILocation(line: 819, column: 3, scope: !3064)
!3119 = distinct !DISubprogram(name: "quotearg_free", scope: !120, file: !120, line: 837, type: !54, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3120)
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "sv", scope: !3119, file: !120, line: 839, type: !212)
!3122 = !DILocalVariable(name: "i", scope: !3123, file: !120, line: 840, type: !24)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !120, line: 840, column: 3)
!3124 = !DILocation(line: 839, column: 24, scope: !3119)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 0, scope: !3123)
!3127 = !DILocation(line: 840, column: 21, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !120, line: 840, column: 3)
!3129 = !DILocation(line: 840, column: 3, scope: !3123)
!3130 = !DILocation(line: 842, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3119, file: !120, line: 842, column: 7)
!3132 = !{!3133, !388, i64 8}
!3133 = !{!"slotvec", !1981, i64 0, !388, i64 8}
!3134 = !DILocation(line: 842, column: 17, scope: !3131)
!3135 = !DILocation(line: 842, column: 7, scope: !3119)
!3136 = !DILocation(line: 841, column: 17, scope: !3128)
!3137 = !DILocation(line: 841, column: 5, scope: !3128)
!3138 = !DILocation(line: 840, column: 32, scope: !3128)
!3139 = distinct !{!3139, !3129, !3140, !440}
!3140 = !DILocation(line: 841, column: 20, scope: !3123)
!3141 = !DILocation(line: 844, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3131, file: !120, line: 843, column: 5)
!3143 = !DILocation(line: 845, column: 21, scope: !3142)
!3144 = !{!3133, !1981, i64 0}
!3145 = !DILocation(line: 846, column: 20, scope: !3142)
!3146 = !DILocation(line: 847, column: 5, scope: !3142)
!3147 = !DILocation(line: 848, column: 10, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3119, file: !120, line: 848, column: 7)
!3149 = !DILocation(line: 848, column: 7, scope: !3119)
!3150 = !DILocation(line: 850, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !120, line: 849, column: 5)
!3152 = !DILocation(line: 850, column: 7, scope: !3151)
!3153 = !DILocation(line: 851, column: 15, scope: !3151)
!3154 = !DILocation(line: 852, column: 5, scope: !3151)
!3155 = !DILocation(line: 853, column: 10, scope: !3119)
!3156 = !DILocation(line: 854, column: 1, scope: !3119)
!3157 = distinct !DISubprogram(name: "quotearg_n", scope: !120, file: !120, line: 919, type: !525, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3158)
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !120, line: 919, type: !24)
!3160 = !DILocalVariable(name: "arg", arg: 2, scope: !3157, file: !120, line: 919, type: !8)
!3161 = !DILocation(line: 0, scope: !3157)
!3162 = !DILocation(line: 921, column: 10, scope: !3157)
!3163 = !DILocation(line: 921, column: 3, scope: !3157)
!3164 = distinct !DISubprogram(name: "quotearg_n_options", scope: !120, file: !120, line: 866, type: !3165, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!78, !24, !8, !158, !2390}
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3179, !3181, !3182, !3183}
!3168 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !120, line: 866, type: !24)
!3169 = !DILocalVariable(name: "arg", arg: 2, scope: !3164, file: !120, line: 866, type: !8)
!3170 = !DILocalVariable(name: "argsize", arg: 3, scope: !3164, file: !120, line: 866, type: !158)
!3171 = !DILocalVariable(name: "options", arg: 4, scope: !3164, file: !120, line: 867, type: !2390)
!3172 = !DILocalVariable(name: "saved_errno", scope: !3164, file: !120, line: 869, type: !24)
!3173 = !DILocalVariable(name: "sv", scope: !3164, file: !120, line: 871, type: !212)
!3174 = !DILocalVariable(name: "nslots_max", scope: !3164, file: !120, line: 873, type: !24)
!3175 = !DILocalVariable(name: "preallocated", scope: !3176, file: !120, line: 879, type: !7)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !120, line: 878, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3164, file: !120, line: 877, column: 7)
!3178 = !DILocalVariable(name: "new_nslots", scope: !3176, file: !120, line: 880, type: !331)
!3179 = !DILocalVariable(name: "size", scope: !3180, file: !120, line: 891, type: !158)
!3180 = distinct !DILexicalBlock(scope: !3164, file: !120, line: 890, column: 3)
!3181 = !DILocalVariable(name: "val", scope: !3180, file: !120, line: 892, type: !78)
!3182 = !DILocalVariable(name: "flags", scope: !3180, file: !120, line: 894, type: !24)
!3183 = !DILocalVariable(name: "qsize", scope: !3180, file: !120, line: 895, type: !158)
!3184 = !DILocation(line: 0, scope: !3164)
!3185 = !DILocation(line: 869, column: 21, scope: !3164)
!3186 = !DILocation(line: 871, column: 24, scope: !3164)
!3187 = !DILocation(line: 874, column: 17, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3164, file: !120, line: 874, column: 7)
!3189 = !DILocation(line: 875, column: 5, scope: !3188)
!3190 = !DILocation(line: 877, column: 7, scope: !3177)
!3191 = !DILocation(line: 877, column: 14, scope: !3177)
!3192 = !DILocation(line: 877, column: 7, scope: !3164)
!3193 = !DILocation(line: 879, column: 31, scope: !3176)
!3194 = !DILocation(line: 0, scope: !3176)
!3195 = !DILocation(line: 880, column: 7, scope: !3176)
!3196 = !DILocation(line: 880, column: 26, scope: !3176)
!3197 = !DILocation(line: 880, column: 13, scope: !3176)
!3198 = !DILocation(line: 882, column: 31, scope: !3176)
!3199 = !DILocation(line: 883, column: 33, scope: !3176)
!3200 = !DILocation(line: 883, column: 42, scope: !3176)
!3201 = !DILocation(line: 883, column: 31, scope: !3176)
!3202 = !DILocation(line: 882, column: 22, scope: !3176)
!3203 = !DILocation(line: 882, column: 15, scope: !3176)
!3204 = !DILocation(line: 884, column: 11, scope: !3176)
!3205 = !DILocation(line: 885, column: 15, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3176, file: !120, line: 884, column: 11)
!3207 = !{i64 0, i64 8, !3116, i64 8, i64 8, !387}
!3208 = !DILocation(line: 885, column: 9, scope: !3206)
!3209 = !DILocation(line: 886, column: 20, scope: !3176)
!3210 = !DILocation(line: 886, column: 18, scope: !3176)
!3211 = !DILocation(line: 886, column: 15, scope: !3176)
!3212 = !DILocation(line: 886, column: 32, scope: !3176)
!3213 = !DILocation(line: 886, column: 43, scope: !3176)
!3214 = !DILocation(line: 886, column: 53, scope: !3176)
!3215 = !DILocation(line: 0, scope: !2601, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 886, column: 7, scope: !3176)
!3217 = !DILocation(line: 59, column: 10, scope: !2601, inlinedAt: !3216)
!3218 = !DILocation(line: 887, column: 16, scope: !3176)
!3219 = !DILocation(line: 887, column: 14, scope: !3176)
!3220 = !DILocation(line: 888, column: 5, scope: !3177)
!3221 = !DILocation(line: 888, column: 5, scope: !3176)
!3222 = !DILocation(line: 891, column: 19, scope: !3180)
!3223 = !DILocation(line: 891, column: 25, scope: !3180)
!3224 = !DILocation(line: 0, scope: !3180)
!3225 = !DILocation(line: 892, column: 23, scope: !3180)
!3226 = !DILocation(line: 894, column: 26, scope: !3180)
!3227 = !DILocation(line: 894, column: 32, scope: !3180)
!3228 = !DILocation(line: 896, column: 55, scope: !3180)
!3229 = !DILocation(line: 897, column: 46, scope: !3180)
!3230 = !DILocation(line: 898, column: 55, scope: !3180)
!3231 = !DILocation(line: 899, column: 55, scope: !3180)
!3232 = !DILocation(line: 895, column: 20, scope: !3180)
!3233 = !DILocation(line: 901, column: 14, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3180, file: !120, line: 901, column: 9)
!3235 = !DILocation(line: 901, column: 9, scope: !3180)
!3236 = !DILocation(line: 903, column: 35, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !120, line: 902, column: 7)
!3238 = !DILocation(line: 903, column: 20, scope: !3237)
!3239 = !DILocation(line: 904, column: 17, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3237, file: !120, line: 904, column: 13)
!3241 = !DILocation(line: 904, column: 13, scope: !3237)
!3242 = !DILocation(line: 905, column: 11, scope: !3240)
!3243 = !DILocation(line: 906, column: 27, scope: !3237)
!3244 = !DILocation(line: 906, column: 19, scope: !3237)
!3245 = !DILocation(line: 907, column: 69, scope: !3237)
!3246 = !DILocation(line: 909, column: 44, scope: !3237)
!3247 = !DILocation(line: 910, column: 44, scope: !3237)
!3248 = !DILocation(line: 907, column: 9, scope: !3237)
!3249 = !DILocation(line: 911, column: 7, scope: !3237)
!3250 = !DILocation(line: 913, column: 11, scope: !3180)
!3251 = !DILocation(line: 914, column: 5, scope: !3180)
!3252 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !120, file: !120, line: 925, type: !3253, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!78, !24, !8, !158}
!3255 = !{!3256, !3257, !3258}
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3252, file: !120, line: 925, type: !24)
!3257 = !DILocalVariable(name: "arg", arg: 2, scope: !3252, file: !120, line: 925, type: !8)
!3258 = !DILocalVariable(name: "argsize", arg: 3, scope: !3252, file: !120, line: 925, type: !158)
!3259 = !DILocation(line: 0, scope: !3252)
!3260 = !DILocation(line: 927, column: 10, scope: !3252)
!3261 = !DILocation(line: 927, column: 3, scope: !3252)
!3262 = distinct !DISubprogram(name: "quotearg", scope: !120, file: !120, line: 931, type: !1302, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3263)
!3263 = !{!3264}
!3264 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !120, line: 931, type: !8)
!3265 = !DILocation(line: 0, scope: !3262)
!3266 = !DILocation(line: 0, scope: !3157, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 933, column: 10, scope: !3262)
!3268 = !DILocation(line: 921, column: 10, scope: !3157, inlinedAt: !3267)
!3269 = !DILocation(line: 933, column: 3, scope: !3262)
!3270 = distinct !DISubprogram(name: "quotearg_mem", scope: !120, file: !120, line: 937, type: !3271, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!78, !8, !158}
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "arg", arg: 1, scope: !3270, file: !120, line: 937, type: !8)
!3275 = !DILocalVariable(name: "argsize", arg: 2, scope: !3270, file: !120, line: 937, type: !158)
!3276 = !DILocation(line: 0, scope: !3270)
!3277 = !DILocation(line: 0, scope: !3252, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 939, column: 10, scope: !3270)
!3279 = !DILocation(line: 927, column: 10, scope: !3252, inlinedAt: !3278)
!3280 = !DILocation(line: 939, column: 3, scope: !3270)
!3281 = distinct !DISubprogram(name: "quotearg_n_style", scope: !120, file: !120, line: 943, type: !3282, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!78, !24, !122, !8}
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !120, line: 943, type: !24)
!3286 = !DILocalVariable(name: "s", arg: 2, scope: !3281, file: !120, line: 943, type: !122)
!3287 = !DILocalVariable(name: "arg", arg: 3, scope: !3281, file: !120, line: 943, type: !8)
!3288 = !DILocalVariable(name: "o", scope: !3281, file: !120, line: 945, type: !2391)
!3289 = !DILocation(line: 0, scope: !3281)
!3290 = !DILocation(line: 945, column: 3, scope: !3281)
!3291 = !DILocation(line: 945, column: 32, scope: !3281)
!3292 = !{!3293}
!3293 = distinct !{!3293, !3294, !"quoting_options_from_style: argument 0"}
!3294 = distinct !{!3294, !"quoting_options_from_style"}
!3295 = !DILocation(line: 945, column: 36, scope: !3281)
!3296 = !DILocalVariable(name: "style", arg: 1, scope: !3297, file: !120, line: 183, type: !122)
!3297 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !120, file: !120, line: 183, type: !3298, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!170, !122}
!3300 = !{!3296, !3301}
!3301 = !DILocalVariable(name: "o", scope: !3297, file: !120, line: 185, type: !170)
!3302 = !DILocation(line: 0, scope: !3297, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 945, column: 36, scope: !3281)
!3304 = !DILocation(line: 185, column: 26, scope: !3297, inlinedAt: !3303)
!3305 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3303)
!3306 = distinct !DILexicalBlock(scope: !3297, file: !120, line: 186, column: 7)
!3307 = !DILocation(line: 186, column: 7, scope: !3297, inlinedAt: !3303)
!3308 = !DILocation(line: 187, column: 5, scope: !3306, inlinedAt: !3303)
!3309 = !DILocation(line: 188, column: 5, scope: !3297, inlinedAt: !3303)
!3310 = !DILocation(line: 188, column: 11, scope: !3297, inlinedAt: !3303)
!3311 = !DILocation(line: 946, column: 10, scope: !3281)
!3312 = !DILocation(line: 947, column: 1, scope: !3281)
!3313 = !DILocation(line: 946, column: 3, scope: !3281)
!3314 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !120, file: !120, line: 950, type: !3315, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!78, !24, !122, !8, !158}
!3317 = !{!3318, !3319, !3320, !3321, !3322}
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3314, file: !120, line: 950, type: !24)
!3319 = !DILocalVariable(name: "s", arg: 2, scope: !3314, file: !120, line: 950, type: !122)
!3320 = !DILocalVariable(name: "arg", arg: 3, scope: !3314, file: !120, line: 951, type: !8)
!3321 = !DILocalVariable(name: "argsize", arg: 4, scope: !3314, file: !120, line: 951, type: !158)
!3322 = !DILocalVariable(name: "o", scope: !3314, file: !120, line: 953, type: !2391)
!3323 = !DILocation(line: 0, scope: !3314)
!3324 = !DILocation(line: 953, column: 3, scope: !3314)
!3325 = !DILocation(line: 953, column: 32, scope: !3314)
!3326 = !{!3327}
!3327 = distinct !{!3327, !3328, !"quoting_options_from_style: argument 0"}
!3328 = distinct !{!3328, !"quoting_options_from_style"}
!3329 = !DILocation(line: 953, column: 36, scope: !3314)
!3330 = !DILocation(line: 0, scope: !3297, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 953, column: 36, scope: !3314)
!3332 = !DILocation(line: 185, column: 26, scope: !3297, inlinedAt: !3331)
!3333 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3331)
!3334 = !DILocation(line: 186, column: 7, scope: !3297, inlinedAt: !3331)
!3335 = !DILocation(line: 187, column: 5, scope: !3306, inlinedAt: !3331)
!3336 = !DILocation(line: 188, column: 5, scope: !3297, inlinedAt: !3331)
!3337 = !DILocation(line: 188, column: 11, scope: !3297, inlinedAt: !3331)
!3338 = !DILocation(line: 954, column: 10, scope: !3314)
!3339 = !DILocation(line: 955, column: 1, scope: !3314)
!3340 = !DILocation(line: 954, column: 3, scope: !3314)
!3341 = distinct !DISubprogram(name: "quotearg_style", scope: !120, file: !120, line: 958, type: !3342, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!78, !122, !8}
!3344 = !{!3345, !3346}
!3345 = !DILocalVariable(name: "s", arg: 1, scope: !3341, file: !120, line: 958, type: !122)
!3346 = !DILocalVariable(name: "arg", arg: 2, scope: !3341, file: !120, line: 958, type: !8)
!3347 = !DILocation(line: 0, scope: !3341)
!3348 = !DILocation(line: 0, scope: !3281, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 960, column: 10, scope: !3341)
!3350 = !DILocation(line: 945, column: 3, scope: !3281, inlinedAt: !3349)
!3351 = !DILocation(line: 945, column: 32, scope: !3281, inlinedAt: !3349)
!3352 = !{!3353}
!3353 = distinct !{!3353, !3354, !"quoting_options_from_style: argument 0"}
!3354 = distinct !{!3354, !"quoting_options_from_style"}
!3355 = !DILocation(line: 945, column: 36, scope: !3281, inlinedAt: !3349)
!3356 = !DILocation(line: 0, scope: !3297, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 945, column: 36, scope: !3281, inlinedAt: !3349)
!3358 = !DILocation(line: 185, column: 26, scope: !3297, inlinedAt: !3357)
!3359 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3357)
!3360 = !DILocation(line: 186, column: 7, scope: !3297, inlinedAt: !3357)
!3361 = !DILocation(line: 187, column: 5, scope: !3306, inlinedAt: !3357)
!3362 = !DILocation(line: 188, column: 5, scope: !3297, inlinedAt: !3357)
!3363 = !DILocation(line: 188, column: 11, scope: !3297, inlinedAt: !3357)
!3364 = !DILocation(line: 946, column: 10, scope: !3281, inlinedAt: !3349)
!3365 = !DILocation(line: 947, column: 1, scope: !3281, inlinedAt: !3349)
!3366 = !DILocation(line: 960, column: 3, scope: !3341)
!3367 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !120, file: !120, line: 964, type: !3368, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!78, !122, !8, !158}
!3370 = !{!3371, !3372, !3373}
!3371 = !DILocalVariable(name: "s", arg: 1, scope: !3367, file: !120, line: 964, type: !122)
!3372 = !DILocalVariable(name: "arg", arg: 2, scope: !3367, file: !120, line: 964, type: !8)
!3373 = !DILocalVariable(name: "argsize", arg: 3, scope: !3367, file: !120, line: 964, type: !158)
!3374 = !DILocation(line: 0, scope: !3367)
!3375 = !DILocation(line: 0, scope: !3314, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 966, column: 10, scope: !3367)
!3377 = !DILocation(line: 953, column: 3, scope: !3314, inlinedAt: !3376)
!3378 = !DILocation(line: 953, column: 32, scope: !3314, inlinedAt: !3376)
!3379 = !{!3380}
!3380 = distinct !{!3380, !3381, !"quoting_options_from_style: argument 0"}
!3381 = distinct !{!3381, !"quoting_options_from_style"}
!3382 = !DILocation(line: 953, column: 36, scope: !3314, inlinedAt: !3376)
!3383 = !DILocation(line: 0, scope: !3297, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 953, column: 36, scope: !3314, inlinedAt: !3376)
!3385 = !DILocation(line: 185, column: 26, scope: !3297, inlinedAt: !3384)
!3386 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3384)
!3387 = !DILocation(line: 186, column: 7, scope: !3297, inlinedAt: !3384)
!3388 = !DILocation(line: 187, column: 5, scope: !3306, inlinedAt: !3384)
!3389 = !DILocation(line: 188, column: 5, scope: !3297, inlinedAt: !3384)
!3390 = !DILocation(line: 188, column: 11, scope: !3297, inlinedAt: !3384)
!3391 = !DILocation(line: 954, column: 10, scope: !3314, inlinedAt: !3376)
!3392 = !DILocation(line: 955, column: 1, scope: !3314, inlinedAt: !3376)
!3393 = !DILocation(line: 966, column: 3, scope: !3367)
!3394 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !120, file: !120, line: 970, type: !3395, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!78, !8, !158, !10}
!3397 = !{!3398, !3399, !3400, !3401}
!3398 = !DILocalVariable(name: "arg", arg: 1, scope: !3394, file: !120, line: 970, type: !8)
!3399 = !DILocalVariable(name: "argsize", arg: 2, scope: !3394, file: !120, line: 970, type: !158)
!3400 = !DILocalVariable(name: "ch", arg: 3, scope: !3394, file: !120, line: 970, type: !10)
!3401 = !DILocalVariable(name: "options", scope: !3394, file: !120, line: 972, type: !170)
!3402 = !DILocation(line: 0, scope: !3394)
!3403 = !DILocation(line: 972, column: 3, scope: !3394)
!3404 = !DILocation(line: 972, column: 26, scope: !3394)
!3405 = !DILocation(line: 973, column: 13, scope: !3394)
!3406 = !{i64 0, i64 4, !562, i64 4, i64 4, !1351, i64 8, i64 32, !562, i64 40, i64 8, !387, i64 48, i64 8, !387}
!3407 = !DILocation(line: 0, scope: !2411, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 974, column: 3, scope: !3394)
!3409 = !DILocation(line: 147, column: 62, scope: !2411, inlinedAt: !3408)
!3410 = !DILocation(line: 147, column: 57, scope: !2411, inlinedAt: !3408)
!3411 = !DILocation(line: 148, column: 15, scope: !2411, inlinedAt: !3408)
!3412 = !DILocation(line: 149, column: 21, scope: !2411, inlinedAt: !3408)
!3413 = !DILocation(line: 149, column: 24, scope: !2411, inlinedAt: !3408)
!3414 = !DILocation(line: 149, column: 34, scope: !2411, inlinedAt: !3408)
!3415 = !DILocation(line: 150, column: 19, scope: !2411, inlinedAt: !3408)
!3416 = !DILocation(line: 150, column: 24, scope: !2411, inlinedAt: !3408)
!3417 = !DILocation(line: 150, column: 6, scope: !2411, inlinedAt: !3408)
!3418 = !DILocation(line: 975, column: 10, scope: !3394)
!3419 = !DILocation(line: 976, column: 1, scope: !3394)
!3420 = !DILocation(line: 975, column: 3, scope: !3394)
!3421 = distinct !DISubprogram(name: "quotearg_char", scope: !120, file: !120, line: 979, type: !3422, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!78, !8, !10}
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "arg", arg: 1, scope: !3421, file: !120, line: 979, type: !8)
!3426 = !DILocalVariable(name: "ch", arg: 2, scope: !3421, file: !120, line: 979, type: !10)
!3427 = !DILocation(line: 0, scope: !3421)
!3428 = !DILocation(line: 0, scope: !3394, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 981, column: 10, scope: !3421)
!3430 = !DILocation(line: 972, column: 3, scope: !3394, inlinedAt: !3429)
!3431 = !DILocation(line: 972, column: 26, scope: !3394, inlinedAt: !3429)
!3432 = !DILocation(line: 973, column: 13, scope: !3394, inlinedAt: !3429)
!3433 = !DILocation(line: 0, scope: !2411, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 974, column: 3, scope: !3394, inlinedAt: !3429)
!3435 = !DILocation(line: 147, column: 62, scope: !2411, inlinedAt: !3434)
!3436 = !DILocation(line: 147, column: 57, scope: !2411, inlinedAt: !3434)
!3437 = !DILocation(line: 148, column: 15, scope: !2411, inlinedAt: !3434)
!3438 = !DILocation(line: 149, column: 21, scope: !2411, inlinedAt: !3434)
!3439 = !DILocation(line: 149, column: 24, scope: !2411, inlinedAt: !3434)
!3440 = !DILocation(line: 149, column: 34, scope: !2411, inlinedAt: !3434)
!3441 = !DILocation(line: 150, column: 19, scope: !2411, inlinedAt: !3434)
!3442 = !DILocation(line: 150, column: 24, scope: !2411, inlinedAt: !3434)
!3443 = !DILocation(line: 150, column: 6, scope: !2411, inlinedAt: !3434)
!3444 = !DILocation(line: 975, column: 10, scope: !3394, inlinedAt: !3429)
!3445 = !DILocation(line: 976, column: 1, scope: !3394, inlinedAt: !3429)
!3446 = !DILocation(line: 981, column: 3, scope: !3421)
!3447 = distinct !DISubprogram(name: "quotearg_colon", scope: !120, file: !120, line: 985, type: !1302, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3448)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "arg", arg: 1, scope: !3447, file: !120, line: 985, type: !8)
!3450 = !DILocation(line: 0, scope: !3447)
!3451 = !DILocation(line: 0, scope: !3421, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 987, column: 10, scope: !3447)
!3453 = !DILocation(line: 0, scope: !3394, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 981, column: 10, scope: !3421, inlinedAt: !3452)
!3455 = !DILocation(line: 972, column: 3, scope: !3394, inlinedAt: !3454)
!3456 = !DILocation(line: 972, column: 26, scope: !3394, inlinedAt: !3454)
!3457 = !DILocation(line: 973, column: 13, scope: !3394, inlinedAt: !3454)
!3458 = !DILocation(line: 0, scope: !2411, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 974, column: 3, scope: !3394, inlinedAt: !3454)
!3460 = !DILocation(line: 147, column: 57, scope: !2411, inlinedAt: !3459)
!3461 = !DILocation(line: 149, column: 21, scope: !2411, inlinedAt: !3459)
!3462 = !DILocation(line: 150, column: 6, scope: !2411, inlinedAt: !3459)
!3463 = !DILocation(line: 975, column: 10, scope: !3394, inlinedAt: !3454)
!3464 = !DILocation(line: 976, column: 1, scope: !3394, inlinedAt: !3454)
!3465 = !DILocation(line: 987, column: 3, scope: !3447)
!3466 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !120, file: !120, line: 991, type: !3271, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3467)
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "arg", arg: 1, scope: !3466, file: !120, line: 991, type: !8)
!3469 = !DILocalVariable(name: "argsize", arg: 2, scope: !3466, file: !120, line: 991, type: !158)
!3470 = !DILocation(line: 0, scope: !3466)
!3471 = !DILocation(line: 0, scope: !3394, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 993, column: 10, scope: !3466)
!3473 = !DILocation(line: 972, column: 3, scope: !3394, inlinedAt: !3472)
!3474 = !DILocation(line: 972, column: 26, scope: !3394, inlinedAt: !3472)
!3475 = !DILocation(line: 973, column: 13, scope: !3394, inlinedAt: !3472)
!3476 = !DILocation(line: 0, scope: !2411, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 974, column: 3, scope: !3394, inlinedAt: !3472)
!3478 = !DILocation(line: 147, column: 57, scope: !2411, inlinedAt: !3477)
!3479 = !DILocation(line: 149, column: 21, scope: !2411, inlinedAt: !3477)
!3480 = !DILocation(line: 150, column: 6, scope: !2411, inlinedAt: !3477)
!3481 = !DILocation(line: 975, column: 10, scope: !3394, inlinedAt: !3472)
!3482 = !DILocation(line: 976, column: 1, scope: !3394, inlinedAt: !3472)
!3483 = !DILocation(line: 993, column: 3, scope: !3466)
!3484 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !120, file: !120, line: 997, type: !3282, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3485)
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3484, file: !120, line: 997, type: !24)
!3487 = !DILocalVariable(name: "s", arg: 2, scope: !3484, file: !120, line: 997, type: !122)
!3488 = !DILocalVariable(name: "arg", arg: 3, scope: !3484, file: !120, line: 997, type: !8)
!3489 = !DILocalVariable(name: "options", scope: !3484, file: !120, line: 999, type: !170)
!3490 = !DILocation(line: 0, scope: !3484)
!3491 = !DILocation(line: 999, column: 3, scope: !3484)
!3492 = !DILocation(line: 999, column: 26, scope: !3484)
!3493 = !DILocation(line: 0, scope: !3297, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 1000, column: 13, scope: !3484)
!3495 = !DILocation(line: 186, column: 13, scope: !3306, inlinedAt: !3494)
!3496 = !DILocation(line: 186, column: 7, scope: !3297, inlinedAt: !3494)
!3497 = !DILocation(line: 187, column: 5, scope: !3306, inlinedAt: !3494)
!3498 = !{!3499}
!3499 = distinct !{!3499, !3500, !"quoting_options_from_style: argument 0"}
!3500 = distinct !{!3500, !"quoting_options_from_style"}
!3501 = !DILocation(line: 1000, column: 13, scope: !3484)
!3502 = !DILocation(line: 0, scope: !2411, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1001, column: 3, scope: !3484)
!3504 = !DILocation(line: 147, column: 57, scope: !2411, inlinedAt: !3503)
!3505 = !DILocation(line: 149, column: 21, scope: !2411, inlinedAt: !3503)
!3506 = !DILocation(line: 150, column: 6, scope: !2411, inlinedAt: !3503)
!3507 = !DILocation(line: 1002, column: 10, scope: !3484)
!3508 = !DILocation(line: 1003, column: 1, scope: !3484)
!3509 = !DILocation(line: 1002, column: 3, scope: !3484)
!3510 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !120, file: !120, line: 1006, type: !3511, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!78, !24, !8, !8, !8}
!3513 = !{!3514, !3515, !3516, !3517}
!3514 = !DILocalVariable(name: "n", arg: 1, scope: !3510, file: !120, line: 1006, type: !24)
!3515 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3510, file: !120, line: 1006, type: !8)
!3516 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3510, file: !120, line: 1007, type: !8)
!3517 = !DILocalVariable(name: "arg", arg: 4, scope: !3510, file: !120, line: 1007, type: !8)
!3518 = !DILocation(line: 0, scope: !3510)
!3519 = !DILocalVariable(name: "n", arg: 1, scope: !3520, file: !120, line: 1014, type: !24)
!3520 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !120, file: !120, line: 1014, type: !3521, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3523)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!78, !24, !8, !8, !8, !158}
!3523 = !{!3519, !3524, !3525, !3526, !3527, !3528}
!3524 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3520, file: !120, line: 1014, type: !8)
!3525 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3520, file: !120, line: 1015, type: !8)
!3526 = !DILocalVariable(name: "arg", arg: 4, scope: !3520, file: !120, line: 1016, type: !8)
!3527 = !DILocalVariable(name: "argsize", arg: 5, scope: !3520, file: !120, line: 1016, type: !158)
!3528 = !DILocalVariable(name: "o", scope: !3520, file: !120, line: 1018, type: !170)
!3529 = !DILocation(line: 0, scope: !3520, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1009, column: 10, scope: !3510)
!3531 = !DILocation(line: 1018, column: 3, scope: !3520, inlinedAt: !3530)
!3532 = !DILocation(line: 1018, column: 26, scope: !3520, inlinedAt: !3530)
!3533 = !DILocation(line: 1018, column: 30, scope: !3520, inlinedAt: !3530)
!3534 = !DILocation(line: 0, scope: !2451, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 1019, column: 3, scope: !3520, inlinedAt: !3530)
!3536 = !DILocation(line: 174, column: 6, scope: !2451, inlinedAt: !3535)
!3537 = !DILocation(line: 174, column: 12, scope: !2451, inlinedAt: !3535)
!3538 = !DILocation(line: 175, column: 8, scope: !2465, inlinedAt: !3535)
!3539 = !DILocation(line: 175, column: 19, scope: !2465, inlinedAt: !3535)
!3540 = !DILocation(line: 176, column: 5, scope: !2465, inlinedAt: !3535)
!3541 = !DILocation(line: 177, column: 6, scope: !2451, inlinedAt: !3535)
!3542 = !DILocation(line: 177, column: 17, scope: !2451, inlinedAt: !3535)
!3543 = !DILocation(line: 178, column: 6, scope: !2451, inlinedAt: !3535)
!3544 = !DILocation(line: 178, column: 18, scope: !2451, inlinedAt: !3535)
!3545 = !DILocation(line: 1020, column: 10, scope: !3520, inlinedAt: !3530)
!3546 = !DILocation(line: 1021, column: 1, scope: !3520, inlinedAt: !3530)
!3547 = !DILocation(line: 1009, column: 3, scope: !3510)
!3548 = !DILocation(line: 0, scope: !3520)
!3549 = !DILocation(line: 1018, column: 3, scope: !3520)
!3550 = !DILocation(line: 1018, column: 26, scope: !3520)
!3551 = !DILocation(line: 1018, column: 30, scope: !3520)
!3552 = !DILocation(line: 0, scope: !2451, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1019, column: 3, scope: !3520)
!3554 = !DILocation(line: 174, column: 6, scope: !2451, inlinedAt: !3553)
!3555 = !DILocation(line: 174, column: 12, scope: !2451, inlinedAt: !3553)
!3556 = !DILocation(line: 175, column: 8, scope: !2465, inlinedAt: !3553)
!3557 = !DILocation(line: 175, column: 19, scope: !2465, inlinedAt: !3553)
!3558 = !DILocation(line: 176, column: 5, scope: !2465, inlinedAt: !3553)
!3559 = !DILocation(line: 177, column: 6, scope: !2451, inlinedAt: !3553)
!3560 = !DILocation(line: 177, column: 17, scope: !2451, inlinedAt: !3553)
!3561 = !DILocation(line: 178, column: 6, scope: !2451, inlinedAt: !3553)
!3562 = !DILocation(line: 178, column: 18, scope: !2451, inlinedAt: !3553)
!3563 = !DILocation(line: 1020, column: 10, scope: !3520)
!3564 = !DILocation(line: 1021, column: 1, scope: !3520)
!3565 = !DILocation(line: 1020, column: 3, scope: !3520)
!3566 = distinct !DISubprogram(name: "quotearg_custom", scope: !120, file: !120, line: 1024, type: !3567, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!78, !8, !8, !8}
!3569 = !{!3570, !3571, !3572}
!3570 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3566, file: !120, line: 1024, type: !8)
!3571 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3566, file: !120, line: 1024, type: !8)
!3572 = !DILocalVariable(name: "arg", arg: 3, scope: !3566, file: !120, line: 1025, type: !8)
!3573 = !DILocation(line: 0, scope: !3566)
!3574 = !DILocation(line: 0, scope: !3510, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1027, column: 10, scope: !3566)
!3576 = !DILocation(line: 0, scope: !3520, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 1009, column: 10, scope: !3510, inlinedAt: !3575)
!3578 = !DILocation(line: 1018, column: 3, scope: !3520, inlinedAt: !3577)
!3579 = !DILocation(line: 1018, column: 26, scope: !3520, inlinedAt: !3577)
!3580 = !DILocation(line: 1018, column: 30, scope: !3520, inlinedAt: !3577)
!3581 = !DILocation(line: 0, scope: !2451, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1019, column: 3, scope: !3520, inlinedAt: !3577)
!3583 = !DILocation(line: 174, column: 6, scope: !2451, inlinedAt: !3582)
!3584 = !DILocation(line: 174, column: 12, scope: !2451, inlinedAt: !3582)
!3585 = !DILocation(line: 175, column: 8, scope: !2465, inlinedAt: !3582)
!3586 = !DILocation(line: 175, column: 19, scope: !2465, inlinedAt: !3582)
!3587 = !DILocation(line: 176, column: 5, scope: !2465, inlinedAt: !3582)
!3588 = !DILocation(line: 177, column: 6, scope: !2451, inlinedAt: !3582)
!3589 = !DILocation(line: 177, column: 17, scope: !2451, inlinedAt: !3582)
!3590 = !DILocation(line: 178, column: 6, scope: !2451, inlinedAt: !3582)
!3591 = !DILocation(line: 178, column: 18, scope: !2451, inlinedAt: !3582)
!3592 = !DILocation(line: 1020, column: 10, scope: !3520, inlinedAt: !3577)
!3593 = !DILocation(line: 1021, column: 1, scope: !3520, inlinedAt: !3577)
!3594 = !DILocation(line: 1027, column: 3, scope: !3566)
!3595 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !120, file: !120, line: 1031, type: !3596, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!78, !8, !8, !8, !158}
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3595, file: !120, line: 1031, type: !8)
!3600 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3595, file: !120, line: 1031, type: !8)
!3601 = !DILocalVariable(name: "arg", arg: 3, scope: !3595, file: !120, line: 1032, type: !8)
!3602 = !DILocalVariable(name: "argsize", arg: 4, scope: !3595, file: !120, line: 1032, type: !158)
!3603 = !DILocation(line: 0, scope: !3595)
!3604 = !DILocation(line: 0, scope: !3520, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1034, column: 10, scope: !3595)
!3606 = !DILocation(line: 1018, column: 3, scope: !3520, inlinedAt: !3605)
!3607 = !DILocation(line: 1018, column: 26, scope: !3520, inlinedAt: !3605)
!3608 = !DILocation(line: 1018, column: 30, scope: !3520, inlinedAt: !3605)
!3609 = !DILocation(line: 0, scope: !2451, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1019, column: 3, scope: !3520, inlinedAt: !3605)
!3611 = !DILocation(line: 174, column: 6, scope: !2451, inlinedAt: !3610)
!3612 = !DILocation(line: 174, column: 12, scope: !2451, inlinedAt: !3610)
!3613 = !DILocation(line: 175, column: 8, scope: !2465, inlinedAt: !3610)
!3614 = !DILocation(line: 175, column: 19, scope: !2465, inlinedAt: !3610)
!3615 = !DILocation(line: 176, column: 5, scope: !2465, inlinedAt: !3610)
!3616 = !DILocation(line: 177, column: 6, scope: !2451, inlinedAt: !3610)
!3617 = !DILocation(line: 177, column: 17, scope: !2451, inlinedAt: !3610)
!3618 = !DILocation(line: 178, column: 6, scope: !2451, inlinedAt: !3610)
!3619 = !DILocation(line: 178, column: 18, scope: !2451, inlinedAt: !3610)
!3620 = !DILocation(line: 1020, column: 10, scope: !3520, inlinedAt: !3605)
!3621 = !DILocation(line: 1021, column: 1, scope: !3520, inlinedAt: !3605)
!3622 = !DILocation(line: 1034, column: 3, scope: !3595)
!3623 = distinct !DISubprogram(name: "quote_n_mem", scope: !120, file: !120, line: 1049, type: !3624, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!8, !24, !8, !158}
!3626 = !{!3627, !3628, !3629}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !120, line: 1049, type: !24)
!3628 = !DILocalVariable(name: "arg", arg: 2, scope: !3623, file: !120, line: 1049, type: !8)
!3629 = !DILocalVariable(name: "argsize", arg: 3, scope: !3623, file: !120, line: 1049, type: !158)
!3630 = !DILocation(line: 0, scope: !3623)
!3631 = !DILocation(line: 1051, column: 10, scope: !3623)
!3632 = !DILocation(line: 1051, column: 3, scope: !3623)
!3633 = distinct !DISubprogram(name: "quote_mem", scope: !120, file: !120, line: 1055, type: !3634, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!8, !8, !158}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "arg", arg: 1, scope: !3633, file: !120, line: 1055, type: !8)
!3638 = !DILocalVariable(name: "argsize", arg: 2, scope: !3633, file: !120, line: 1055, type: !158)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 0, scope: !3623, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 1057, column: 10, scope: !3633)
!3642 = !DILocation(line: 1051, column: 10, scope: !3623, inlinedAt: !3641)
!3643 = !DILocation(line: 1057, column: 3, scope: !3633)
!3644 = distinct !DISubprogram(name: "quote_n", scope: !120, file: !120, line: 1061, type: !3645, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!8, !24, !8}
!3647 = !{!3648, !3649}
!3648 = !DILocalVariable(name: "n", arg: 1, scope: !3644, file: !120, line: 1061, type: !24)
!3649 = !DILocalVariable(name: "arg", arg: 2, scope: !3644, file: !120, line: 1061, type: !8)
!3650 = !DILocation(line: 0, scope: !3644)
!3651 = !DILocation(line: 0, scope: !3623, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 1063, column: 10, scope: !3644)
!3653 = !DILocation(line: 1051, column: 10, scope: !3623, inlinedAt: !3652)
!3654 = !DILocation(line: 1063, column: 3, scope: !3644)
!3655 = distinct !DISubprogram(name: "quote", scope: !120, file: !120, line: 1067, type: !3656, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !119, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!8, !8}
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "arg", arg: 1, scope: !3655, file: !120, line: 1067, type: !8)
!3660 = !DILocation(line: 0, scope: !3655)
!3661 = !DILocation(line: 0, scope: !3644, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1069, column: 10, scope: !3655)
!3663 = !DILocation(line: 0, scope: !3623, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1063, column: 10, scope: !3644, inlinedAt: !3662)
!3665 = !DILocation(line: 1051, column: 10, scope: !3623, inlinedAt: !3664)
!3666 = !DILocation(line: 1069, column: 3, scope: !3655)
!3667 = distinct !DISubprogram(name: "version_etc_arn", scope: !305, file: !305, line: 61, type: !3668, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3705)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3670, !8, !8, !8, !3704, !158}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3672, file: !476, line: 51, baseType: !24, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3672, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3672, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3672, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3672, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3672, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3672, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3672, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3672, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3672, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3672, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3672, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3672, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3672, file: !476, line: 70, baseType: !3688, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3672, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3672, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3672, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3672, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3672, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3672, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3672, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3672, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3672, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3672, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3672, file: !476, line: 93, baseType: !3688, size: 64, offset: 1344)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3672, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3672, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3672, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3672, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711}
!3706 = !DILocalVariable(name: "stream", arg: 1, scope: !3667, file: !305, line: 61, type: !3670)
!3707 = !DILocalVariable(name: "command_name", arg: 2, scope: !3667, file: !305, line: 62, type: !8)
!3708 = !DILocalVariable(name: "package", arg: 3, scope: !3667, file: !305, line: 62, type: !8)
!3709 = !DILocalVariable(name: "version", arg: 4, scope: !3667, file: !305, line: 63, type: !8)
!3710 = !DILocalVariable(name: "authors", arg: 5, scope: !3667, file: !305, line: 64, type: !3704)
!3711 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3667, file: !305, line: 64, type: !158)
!3712 = !DILocation(line: 0, scope: !3667)
!3713 = !DILocation(line: 66, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3667, file: !305, line: 66, column: 7)
!3715 = !DILocation(line: 66, column: 7, scope: !3667)
!3716 = !DILocation(line: 67, column: 5, scope: !3714)
!3717 = !DILocation(line: 69, column: 5, scope: !3714)
!3718 = !DILocation(line: 83, column: 3, scope: !3667)
!3719 = !DILocation(line: 85, column: 3, scope: !3667)
!3720 = !DILocation(line: 88, column: 3, scope: !3667)
!3721 = !DILocation(line: 95, column: 3, scope: !3667)
!3722 = !DILocation(line: 97, column: 3, scope: !3667)
!3723 = !DILocation(line: 105, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3667, file: !305, line: 98, column: 5)
!3725 = !DILocation(line: 106, column: 7, scope: !3724)
!3726 = !DILocation(line: 109, column: 7, scope: !3724)
!3727 = !DILocation(line: 110, column: 7, scope: !3724)
!3728 = !DILocation(line: 113, column: 7, scope: !3724)
!3729 = !DILocation(line: 115, column: 7, scope: !3724)
!3730 = !DILocation(line: 120, column: 7, scope: !3724)
!3731 = !DILocation(line: 122, column: 7, scope: !3724)
!3732 = !DILocation(line: 127, column: 7, scope: !3724)
!3733 = !DILocation(line: 129, column: 7, scope: !3724)
!3734 = !DILocation(line: 134, column: 7, scope: !3724)
!3735 = !DILocation(line: 137, column: 7, scope: !3724)
!3736 = !DILocation(line: 142, column: 7, scope: !3724)
!3737 = !DILocation(line: 145, column: 7, scope: !3724)
!3738 = !DILocation(line: 150, column: 7, scope: !3724)
!3739 = !DILocation(line: 154, column: 7, scope: !3724)
!3740 = !DILocation(line: 159, column: 7, scope: !3724)
!3741 = !DILocation(line: 163, column: 7, scope: !3724)
!3742 = !DILocation(line: 170, column: 7, scope: !3724)
!3743 = !DILocation(line: 174, column: 7, scope: !3724)
!3744 = !DILocation(line: 176, column: 1, scope: !3667)
!3745 = distinct !DISubprogram(name: "version_etc_ar", scope: !305, file: !305, line: 183, type: !3746, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !3670, !8, !8, !8, !3704}
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754}
!3749 = !DILocalVariable(name: "stream", arg: 1, scope: !3745, file: !305, line: 183, type: !3670)
!3750 = !DILocalVariable(name: "command_name", arg: 2, scope: !3745, file: !305, line: 184, type: !8)
!3751 = !DILocalVariable(name: "package", arg: 3, scope: !3745, file: !305, line: 184, type: !8)
!3752 = !DILocalVariable(name: "version", arg: 4, scope: !3745, file: !305, line: 185, type: !8)
!3753 = !DILocalVariable(name: "authors", arg: 5, scope: !3745, file: !305, line: 185, type: !3704)
!3754 = !DILocalVariable(name: "n_authors", scope: !3745, file: !305, line: 187, type: !158)
!3755 = !DILocation(line: 0, scope: !3745)
!3756 = !DILocation(line: 189, column: 8, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3745, file: !305, line: 189, column: 3)
!3758 = !DILocation(line: 0, scope: !3757)
!3759 = !DILocation(line: 189, column: 23, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !305, line: 189, column: 3)
!3761 = !DILocation(line: 189, column: 3, scope: !3757)
!3762 = !DILocation(line: 189, column: 52, scope: !3760)
!3763 = distinct !{!3763, !3761, !3764, !440}
!3764 = !DILocation(line: 190, column: 5, scope: !3757)
!3765 = !DILocation(line: 191, column: 3, scope: !3745)
!3766 = !DILocation(line: 192, column: 1, scope: !3745)
!3767 = distinct !DISubprogram(name: "version_etc_va", scope: !305, file: !305, line: 199, type: !3768, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3781)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3670, !8, !8, !8, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 52, baseType: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !29, line: 32, baseType: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3773, baseType: !3774)
!3773 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !33, size: 256, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779, !3780}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3774, file: !3773, line: 192, baseType: !16, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3774, file: !3773, line: 192, baseType: !16, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3774, file: !3773, line: 192, baseType: !16, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3774, file: !3773, line: 192, baseType: !24, size: 32, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3774, file: !3773, line: 192, baseType: !24, size: 32, offset: 224)
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3782 = !DILocalVariable(name: "stream", arg: 1, scope: !3767, file: !305, line: 199, type: !3670)
!3783 = !DILocalVariable(name: "command_name", arg: 2, scope: !3767, file: !305, line: 200, type: !8)
!3784 = !DILocalVariable(name: "package", arg: 3, scope: !3767, file: !305, line: 200, type: !8)
!3785 = !DILocalVariable(name: "version", arg: 4, scope: !3767, file: !305, line: 201, type: !8)
!3786 = !DILocalVariable(name: "authors", arg: 5, scope: !3767, file: !305, line: 201, type: !3770)
!3787 = !DILocalVariable(name: "n_authors", scope: !3767, file: !305, line: 203, type: !158)
!3788 = !DILocalVariable(name: "authtab", scope: !3767, file: !305, line: 204, type: !3789)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !166)
!3790 = !DILocation(line: 0, scope: !3767)
!3791 = !DILocation(line: 201, column: 46, scope: !3767)
!3792 = !DILocation(line: 204, column: 3, scope: !3767)
!3793 = !DILocation(line: 204, column: 15, scope: !3767)
!3794 = !DILocation(line: 208, column: 35, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !305, line: 206, column: 3)
!3796 = distinct !DILexicalBlock(scope: !3767, file: !305, line: 206, column: 3)
!3797 = !DILocation(line: 208, column: 14, scope: !3795)
!3798 = !DILocation(line: 208, column: 33, scope: !3795)
!3799 = !DILocation(line: 208, column: 67, scope: !3795)
!3800 = !DILocation(line: 206, column: 3, scope: !3796)
!3801 = !DILocation(line: 212, column: 20, scope: !3767)
!3802 = !DILocation(line: 211, column: 3, scope: !3767)
!3803 = !DILocation(line: 213, column: 1, scope: !3767)
!3804 = distinct !DISubprogram(name: "version_etc", scope: !305, file: !305, line: 230, type: !3805, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3670, !8, !8, !8, null}
!3807 = !{!3808, !3809, !3810, !3811, !3812}
!3808 = !DILocalVariable(name: "stream", arg: 1, scope: !3804, file: !305, line: 230, type: !3670)
!3809 = !DILocalVariable(name: "command_name", arg: 2, scope: !3804, file: !305, line: 231, type: !8)
!3810 = !DILocalVariable(name: "package", arg: 3, scope: !3804, file: !305, line: 231, type: !8)
!3811 = !DILocalVariable(name: "version", arg: 4, scope: !3804, file: !305, line: 232, type: !8)
!3812 = !DILocalVariable(name: "authors", scope: !3804, file: !305, line: 234, type: !3770)
!3813 = !DILocation(line: 0, scope: !3804)
!3814 = !DILocation(line: 234, column: 3, scope: !3804)
!3815 = !DILocation(line: 234, column: 11, scope: !3804)
!3816 = !DILocation(line: 235, column: 3, scope: !3804)
!3817 = !DILocation(line: 236, column: 3, scope: !3804)
!3818 = !DILocation(line: 237, column: 3, scope: !3804)
!3819 = !DILocation(line: 238, column: 1, scope: !3804)
!3820 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !305, file: !305, line: 241, type: !54, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !466)
!3821 = !DILocation(line: 243, column: 3, scope: !3820)
!3822 = !DILocation(line: 248, column: 3, scope: !3820)
!3823 = !DILocation(line: 254, column: 3, scope: !3820)
!3824 = !DILocation(line: 259, column: 3, scope: !3820)
!3825 = !DILocation(line: 261, column: 1, scope: !3820)
!3826 = distinct !DISubprogram(name: "xnrealloc", scope: !3827, file: !3827, line: 147, type: !3828, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3830)
!3827 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!16, !16, !158, !158}
!3830 = !{!3831, !3832, !3833}
!3831 = !DILocalVariable(name: "p", arg: 1, scope: !3826, file: !3827, line: 147, type: !16)
!3832 = !DILocalVariable(name: "n", arg: 2, scope: !3826, file: !3827, line: 147, type: !158)
!3833 = !DILocalVariable(name: "s", arg: 3, scope: !3826, file: !3827, line: 147, type: !158)
!3834 = !DILocation(line: 0, scope: !3826)
!3835 = !DILocalVariable(name: "p", arg: 1, scope: !3836, file: !312, line: 83, type: !16)
!3836 = distinct !DISubprogram(name: "xreallocarray", scope: !312, file: !312, line: 83, type: !3828, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3837)
!3837 = !{!3835, !3838, !3839}
!3838 = !DILocalVariable(name: "n", arg: 2, scope: !3836, file: !312, line: 83, type: !158)
!3839 = !DILocalVariable(name: "s", arg: 3, scope: !3836, file: !312, line: 83, type: !158)
!3840 = !DILocation(line: 0, scope: !3836, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 149, column: 10, scope: !3826)
!3842 = !DILocation(line: 85, column: 25, scope: !3836, inlinedAt: !3841)
!3843 = !DILocalVariable(name: "p", arg: 1, scope: !3844, file: !312, line: 37, type: !16)
!3844 = distinct !DISubprogram(name: "check_nonnull", scope: !312, file: !312, line: 37, type: !3845, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!16, !16}
!3847 = !{!3843}
!3848 = !DILocation(line: 0, scope: !3844, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 85, column: 10, scope: !3836, inlinedAt: !3841)
!3850 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3849)
!3851 = distinct !DILexicalBlock(scope: !3844, file: !312, line: 39, column: 7)
!3852 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3849)
!3853 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3849)
!3854 = !DILocation(line: 149, column: 3, scope: !3826)
!3855 = !DILocation(line: 0, scope: !3836)
!3856 = !DILocation(line: 85, column: 25, scope: !3836)
!3857 = !DILocation(line: 0, scope: !3844, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 85, column: 10, scope: !3836)
!3859 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3858)
!3860 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3858)
!3861 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3858)
!3862 = !DILocation(line: 85, column: 3, scope: !3836)
!3863 = distinct !DISubprogram(name: "xmalloc", scope: !312, file: !312, line: 47, type: !3864, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!16, !158}
!3866 = !{!3867}
!3867 = !DILocalVariable(name: "s", arg: 1, scope: !3863, file: !312, line: 47, type: !158)
!3868 = !DILocation(line: 0, scope: !3863)
!3869 = !DILocation(line: 49, column: 25, scope: !3863)
!3870 = !DILocation(line: 0, scope: !3844, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 49, column: 10, scope: !3863)
!3872 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3871)
!3873 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3871)
!3874 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3871)
!3875 = !DILocation(line: 49, column: 3, scope: !3863)
!3876 = distinct !DISubprogram(name: "ximalloc", scope: !312, file: !312, line: 53, type: !3877, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!16, !331}
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "s", arg: 1, scope: !3876, file: !312, line: 53, type: !331)
!3881 = !DILocation(line: 0, scope: !3876)
!3882 = !DILocalVariable(name: "s", arg: 1, scope: !3883, file: !3884, line: 55, type: !331)
!3883 = distinct !DISubprogram(name: "imalloc", scope: !3884, file: !3884, line: 55, type: !3877, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3885)
!3884 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3885 = !{!3882}
!3886 = !DILocation(line: 0, scope: !3883, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 55, column: 25, scope: !3876)
!3888 = !DILocation(line: 57, column: 26, scope: !3883, inlinedAt: !3887)
!3889 = !DILocation(line: 0, scope: !3844, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 55, column: 10, scope: !3876)
!3891 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3890)
!3892 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3890)
!3893 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3890)
!3894 = !DILocation(line: 55, column: 3, scope: !3876)
!3895 = distinct !DISubprogram(name: "xcharalloc", scope: !312, file: !312, line: 59, type: !3896, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!78, !158}
!3898 = !{!3899}
!3899 = !DILocalVariable(name: "n", arg: 1, scope: !3895, file: !312, line: 59, type: !158)
!3900 = !DILocation(line: 0, scope: !3895)
!3901 = !DILocation(line: 0, scope: !3863, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 61, column: 10, scope: !3895)
!3903 = !DILocation(line: 49, column: 25, scope: !3863, inlinedAt: !3902)
!3904 = !DILocation(line: 0, scope: !3844, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 49, column: 10, scope: !3863, inlinedAt: !3902)
!3906 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3905)
!3907 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3905)
!3908 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3905)
!3909 = !DILocation(line: 61, column: 3, scope: !3895)
!3910 = distinct !DISubprogram(name: "xrealloc", scope: !312, file: !312, line: 68, type: !3911, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!16, !16, !158}
!3913 = !{!3914, !3915}
!3914 = !DILocalVariable(name: "p", arg: 1, scope: !3910, file: !312, line: 68, type: !16)
!3915 = !DILocalVariable(name: "s", arg: 2, scope: !3910, file: !312, line: 68, type: !158)
!3916 = !DILocation(line: 0, scope: !3910)
!3917 = !DILocalVariable(name: "ptr", arg: 1, scope: !3918, file: !3919, line: 2057, type: !16)
!3918 = distinct !DISubprogram(name: "rpl_realloc", scope: !3919, file: !3919, line: 2057, type: !3911, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3920)
!3919 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3920 = !{!3917, !3921}
!3921 = !DILocalVariable(name: "size", arg: 2, scope: !3918, file: !3919, line: 2057, type: !158)
!3922 = !DILocation(line: 0, scope: !3918, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 70, column: 25, scope: !3910)
!3924 = !DILocation(line: 2059, column: 24, scope: !3918, inlinedAt: !3923)
!3925 = !DILocation(line: 2059, column: 10, scope: !3918, inlinedAt: !3923)
!3926 = !DILocation(line: 0, scope: !3844, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 70, column: 10, scope: !3910)
!3928 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3927)
!3931 = !DILocation(line: 70, column: 3, scope: !3910)
!3932 = distinct !DISubprogram(name: "xirealloc", scope: !312, file: !312, line: 74, type: !3933, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!16, !16, !331}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "p", arg: 1, scope: !3932, file: !312, line: 74, type: !16)
!3937 = !DILocalVariable(name: "s", arg: 2, scope: !3932, file: !312, line: 74, type: !331)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !3884, line: 66, type: !16)
!3940 = distinct !DISubprogram(name: "irealloc", scope: !3884, file: !3884, line: 66, type: !3933, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3941)
!3941 = !{!3939, !3942}
!3942 = !DILocalVariable(name: "s", arg: 2, scope: !3940, file: !3884, line: 66, type: !331)
!3943 = !DILocation(line: 0, scope: !3940, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 76, column: 25, scope: !3932)
!3945 = !DILocation(line: 0, scope: !3918, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 68, column: 26, scope: !3940, inlinedAt: !3944)
!3947 = !DILocation(line: 2059, column: 24, scope: !3918, inlinedAt: !3946)
!3948 = !DILocation(line: 2059, column: 10, scope: !3918, inlinedAt: !3946)
!3949 = !DILocation(line: 0, scope: !3844, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 76, column: 10, scope: !3932)
!3951 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3950)
!3952 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3950)
!3953 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3950)
!3954 = !DILocation(line: 76, column: 3, scope: !3932)
!3955 = distinct !DISubprogram(name: "xireallocarray", scope: !312, file: !312, line: 89, type: !3956, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!16, !16, !331, !331}
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3955, file: !312, line: 89, type: !16)
!3960 = !DILocalVariable(name: "n", arg: 2, scope: !3955, file: !312, line: 89, type: !331)
!3961 = !DILocalVariable(name: "s", arg: 3, scope: !3955, file: !312, line: 89, type: !331)
!3962 = !DILocation(line: 0, scope: !3955)
!3963 = !DILocalVariable(name: "p", arg: 1, scope: !3964, file: !3884, line: 98, type: !16)
!3964 = distinct !DISubprogram(name: "ireallocarray", scope: !3884, file: !3884, line: 98, type: !3956, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3965)
!3965 = !{!3963, !3966, !3967}
!3966 = !DILocalVariable(name: "n", arg: 2, scope: !3964, file: !3884, line: 98, type: !331)
!3967 = !DILocalVariable(name: "s", arg: 3, scope: !3964, file: !3884, line: 98, type: !331)
!3968 = !DILocation(line: 0, scope: !3964, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 91, column: 25, scope: !3955)
!3970 = !DILocation(line: 101, column: 13, scope: !3964, inlinedAt: !3969)
!3971 = !DILocation(line: 0, scope: !3844, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 91, column: 10, scope: !3955)
!3973 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3972)
!3974 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3972)
!3975 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3972)
!3976 = !DILocation(line: 91, column: 3, scope: !3955)
!3977 = distinct !DISubprogram(name: "xnmalloc", scope: !312, file: !312, line: 98, type: !3978, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!16, !158, !158}
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "n", arg: 1, scope: !3977, file: !312, line: 98, type: !158)
!3982 = !DILocalVariable(name: "s", arg: 2, scope: !3977, file: !312, line: 98, type: !158)
!3983 = !DILocation(line: 0, scope: !3977)
!3984 = !DILocation(line: 0, scope: !3836, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 100, column: 10, scope: !3977)
!3986 = !DILocation(line: 85, column: 25, scope: !3836, inlinedAt: !3985)
!3987 = !DILocation(line: 0, scope: !3844, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 85, column: 10, scope: !3836, inlinedAt: !3985)
!3989 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !3988)
!3990 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !3988)
!3991 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !3988)
!3992 = !DILocation(line: 100, column: 3, scope: !3977)
!3993 = distinct !DISubprogram(name: "xinmalloc", scope: !312, file: !312, line: 104, type: !3994, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!16, !331, !331}
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "n", arg: 1, scope: !3993, file: !312, line: 104, type: !331)
!3998 = !DILocalVariable(name: "s", arg: 2, scope: !3993, file: !312, line: 104, type: !331)
!3999 = !DILocation(line: 0, scope: !3993)
!4000 = !DILocation(line: 0, scope: !3955, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 106, column: 10, scope: !3993)
!4002 = !DILocation(line: 0, scope: !3964, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 91, column: 25, scope: !3955, inlinedAt: !4001)
!4004 = !DILocation(line: 101, column: 13, scope: !3964, inlinedAt: !4003)
!4005 = !DILocation(line: 0, scope: !3844, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 91, column: 10, scope: !3955, inlinedAt: !4001)
!4007 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4006)
!4008 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4006)
!4009 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4006)
!4010 = !DILocation(line: 106, column: 3, scope: !3993)
!4011 = distinct !DISubprogram(name: "x2realloc", scope: !312, file: !312, line: 116, type: !4012, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!16, !16, !318}
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "p", arg: 1, scope: !4011, file: !312, line: 116, type: !16)
!4016 = !DILocalVariable(name: "ps", arg: 2, scope: !4011, file: !312, line: 116, type: !318)
!4017 = !DILocation(line: 0, scope: !4011)
!4018 = !DILocation(line: 0, scope: !315, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 118, column: 10, scope: !4011)
!4020 = !DILocation(line: 178, column: 14, scope: !315, inlinedAt: !4019)
!4021 = !DILocation(line: 180, column: 9, scope: !4022, inlinedAt: !4019)
!4022 = distinct !DILexicalBlock(scope: !315, file: !312, line: 180, column: 7)
!4023 = !DILocation(line: 180, column: 7, scope: !315, inlinedAt: !4019)
!4024 = !DILocation(line: 182, column: 13, scope: !4025, inlinedAt: !4019)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !312, line: 182, column: 11)
!4026 = distinct !DILexicalBlock(scope: !4022, file: !312, line: 181, column: 5)
!4027 = !DILocation(line: 182, column: 11, scope: !4026, inlinedAt: !4019)
!4028 = !DILocation(line: 197, column: 11, scope: !4029, inlinedAt: !4019)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !312, line: 197, column: 11)
!4030 = distinct !DILexicalBlock(scope: !4022, file: !312, line: 195, column: 5)
!4031 = !DILocation(line: 197, column: 11, scope: !4030, inlinedAt: !4019)
!4032 = !DILocation(line: 198, column: 9, scope: !4029, inlinedAt: !4019)
!4033 = !DILocation(line: 0, scope: !3836, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 201, column: 7, scope: !315, inlinedAt: !4019)
!4035 = !DILocation(line: 85, column: 25, scope: !3836, inlinedAt: !4034)
!4036 = !DILocation(line: 0, scope: !3844, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 85, column: 10, scope: !3836, inlinedAt: !4034)
!4038 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4037)
!4039 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4037)
!4040 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4037)
!4041 = !DILocation(line: 202, column: 7, scope: !315, inlinedAt: !4019)
!4042 = !DILocation(line: 118, column: 3, scope: !4011)
!4043 = !DILocation(line: 0, scope: !315)
!4044 = !DILocation(line: 178, column: 14, scope: !315)
!4045 = !DILocation(line: 180, column: 9, scope: !4022)
!4046 = !DILocation(line: 180, column: 7, scope: !315)
!4047 = !DILocation(line: 182, column: 13, scope: !4025)
!4048 = !DILocation(line: 182, column: 11, scope: !4026)
!4049 = !DILocation(line: 190, column: 30, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4025, file: !312, line: 183, column: 9)
!4051 = !DILocation(line: 191, column: 16, scope: !4050)
!4052 = !DILocation(line: 191, column: 13, scope: !4050)
!4053 = !DILocation(line: 192, column: 9, scope: !4050)
!4054 = !DILocation(line: 197, column: 11, scope: !4029)
!4055 = !DILocation(line: 197, column: 11, scope: !4030)
!4056 = !DILocation(line: 198, column: 9, scope: !4029)
!4057 = !DILocation(line: 0, scope: !3836, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 201, column: 7, scope: !315)
!4059 = !DILocation(line: 85, column: 25, scope: !3836, inlinedAt: !4058)
!4060 = !DILocation(line: 0, scope: !3844, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 85, column: 10, scope: !3836, inlinedAt: !4058)
!4062 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4061)
!4063 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4061)
!4064 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4061)
!4065 = !DILocation(line: 202, column: 7, scope: !315)
!4066 = !DILocation(line: 203, column: 3, scope: !315)
!4067 = !DILocation(line: 0, scope: !327)
!4068 = !DILocation(line: 230, column: 14, scope: !327)
!4069 = !DILocation(line: 238, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !327, file: !312, line: 238, column: 7)
!4071 = !DILocation(line: 238, column: 7, scope: !327)
!4072 = !DILocation(line: 240, column: 9, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !327, file: !312, line: 240, column: 7)
!4074 = !DILocation(line: 240, column: 18, scope: !4073)
!4075 = !DILocation(line: 253, column: 8, scope: !327)
!4076 = !DILocation(line: 258, column: 27, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !312, line: 257, column: 5)
!4078 = distinct !DILexicalBlock(scope: !327, file: !312, line: 256, column: 7)
!4079 = !DILocation(line: 259, column: 32, scope: !4077)
!4080 = !DILocation(line: 260, column: 5, scope: !4077)
!4081 = !DILocation(line: 262, column: 9, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !327, file: !312, line: 262, column: 7)
!4083 = !DILocation(line: 262, column: 7, scope: !327)
!4084 = !DILocation(line: 263, column: 9, scope: !4082)
!4085 = !DILocation(line: 263, column: 5, scope: !4082)
!4086 = !DILocation(line: 264, column: 9, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !327, file: !312, line: 264, column: 7)
!4088 = !DILocation(line: 264, column: 14, scope: !4087)
!4089 = !DILocation(line: 265, column: 7, scope: !4087)
!4090 = !DILocation(line: 265, column: 11, scope: !4087)
!4091 = !DILocation(line: 266, column: 11, scope: !4087)
!4092 = !DILocation(line: 266, column: 26, scope: !4087)
!4093 = !DILocation(line: 267, column: 14, scope: !4087)
!4094 = !DILocation(line: 264, column: 7, scope: !327)
!4095 = !DILocation(line: 268, column: 5, scope: !4087)
!4096 = !DILocation(line: 0, scope: !3910, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 269, column: 8, scope: !327)
!4098 = !DILocation(line: 0, scope: !3918, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 70, column: 25, scope: !3910, inlinedAt: !4097)
!4100 = !DILocation(line: 2059, column: 24, scope: !3918, inlinedAt: !4099)
!4101 = !DILocation(line: 2059, column: 10, scope: !3918, inlinedAt: !4099)
!4102 = !DILocation(line: 0, scope: !3844, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 70, column: 10, scope: !3910, inlinedAt: !4097)
!4104 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4103)
!4105 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4103)
!4106 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4103)
!4107 = !DILocation(line: 270, column: 7, scope: !327)
!4108 = !DILocation(line: 271, column: 3, scope: !327)
!4109 = distinct !DISubprogram(name: "xzalloc", scope: !312, file: !312, line: 279, type: !3864, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4110)
!4110 = !{!4111}
!4111 = !DILocalVariable(name: "s", arg: 1, scope: !4109, file: !312, line: 279, type: !158)
!4112 = !DILocation(line: 0, scope: !4109)
!4113 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !312, line: 294, type: !158)
!4114 = distinct !DISubprogram(name: "xcalloc", scope: !312, file: !312, line: 294, type: !3978, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4115)
!4115 = !{!4113, !4116}
!4116 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !312, line: 294, type: !158)
!4117 = !DILocation(line: 0, scope: !4114, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 281, column: 10, scope: !4109)
!4119 = !DILocation(line: 296, column: 25, scope: !4114, inlinedAt: !4118)
!4120 = !DILocation(line: 0, scope: !3844, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 296, column: 10, scope: !4114, inlinedAt: !4118)
!4122 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4121)
!4123 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4121)
!4124 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4121)
!4125 = !DILocation(line: 281, column: 3, scope: !4109)
!4126 = !DILocation(line: 0, scope: !4114)
!4127 = !DILocation(line: 296, column: 25, scope: !4114)
!4128 = !DILocation(line: 0, scope: !3844, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 296, column: 10, scope: !4114)
!4130 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4129)
!4131 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4129)
!4132 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4129)
!4133 = !DILocation(line: 296, column: 3, scope: !4114)
!4134 = distinct !DISubprogram(name: "xizalloc", scope: !312, file: !312, line: 285, type: !3877, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4135)
!4135 = !{!4136}
!4136 = !DILocalVariable(name: "s", arg: 1, scope: !4134, file: !312, line: 285, type: !331)
!4137 = !DILocation(line: 0, scope: !4134)
!4138 = !DILocalVariable(name: "n", arg: 1, scope: !4139, file: !312, line: 300, type: !331)
!4139 = distinct !DISubprogram(name: "xicalloc", scope: !312, file: !312, line: 300, type: !3994, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4140)
!4140 = !{!4138, !4141}
!4141 = !DILocalVariable(name: "s", arg: 2, scope: !4139, file: !312, line: 300, type: !331)
!4142 = !DILocation(line: 0, scope: !4139, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 287, column: 10, scope: !4134)
!4144 = !DILocalVariable(name: "n", arg: 1, scope: !4145, file: !3884, line: 77, type: !331)
!4145 = distinct !DISubprogram(name: "icalloc", scope: !3884, file: !3884, line: 77, type: !3994, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4146)
!4146 = !{!4144, !4147}
!4147 = !DILocalVariable(name: "s", arg: 2, scope: !4145, file: !3884, line: 77, type: !331)
!4148 = !DILocation(line: 0, scope: !4145, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 302, column: 25, scope: !4139, inlinedAt: !4143)
!4150 = !DILocation(line: 91, column: 10, scope: !4145, inlinedAt: !4149)
!4151 = !DILocation(line: 0, scope: !3844, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 302, column: 10, scope: !4139, inlinedAt: !4143)
!4153 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4152)
!4154 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4152)
!4155 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4152)
!4156 = !DILocation(line: 287, column: 3, scope: !4134)
!4157 = !DILocation(line: 0, scope: !4139)
!4158 = !DILocation(line: 0, scope: !4145, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 302, column: 25, scope: !4139)
!4160 = !DILocation(line: 91, column: 10, scope: !4145, inlinedAt: !4159)
!4161 = !DILocation(line: 0, scope: !3844, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 302, column: 10, scope: !4139)
!4163 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4162)
!4164 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4162)
!4165 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4162)
!4166 = !DILocation(line: 302, column: 3, scope: !4139)
!4167 = distinct !DISubprogram(name: "xmemdup", scope: !312, file: !312, line: 310, type: !4168, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!16, !2315, !158}
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "p", arg: 1, scope: !4167, file: !312, line: 310, type: !2315)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !312, line: 310, type: !158)
!4173 = !DILocation(line: 0, scope: !4167)
!4174 = !DILocation(line: 0, scope: !3863, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 312, column: 18, scope: !4167)
!4176 = !DILocation(line: 49, column: 25, scope: !3863, inlinedAt: !4175)
!4177 = !DILocation(line: 0, scope: !3844, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 49, column: 10, scope: !3863, inlinedAt: !4175)
!4179 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4178)
!4180 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4178)
!4181 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4178)
!4182 = !DILocalVariable(name: "__dest", arg: 1, scope: !4183, file: !2353, line: 26, type: !4186)
!4183 = distinct !DISubprogram(name: "memcpy", scope: !2353, file: !2353, line: 26, type: !4184, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4188)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!16, !4186, !4187, !158}
!4186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!4187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2315)
!4188 = !{!4182, !4189, !4190}
!4189 = !DILocalVariable(name: "__src", arg: 2, scope: !4183, file: !2353, line: 26, type: !4187)
!4190 = !DILocalVariable(name: "__len", arg: 3, scope: !4183, file: !2353, line: 26, type: !158)
!4191 = !DILocation(line: 0, scope: !4183, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 312, column: 10, scope: !4167)
!4193 = !DILocation(line: 29, column: 10, scope: !4183, inlinedAt: !4192)
!4194 = !DILocation(line: 312, column: 3, scope: !4167)
!4195 = distinct !DISubprogram(name: "ximemdup", scope: !312, file: !312, line: 316, type: !4196, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!16, !2315, !331}
!4198 = !{!4199, !4200}
!4199 = !DILocalVariable(name: "p", arg: 1, scope: !4195, file: !312, line: 316, type: !2315)
!4200 = !DILocalVariable(name: "s", arg: 2, scope: !4195, file: !312, line: 316, type: !331)
!4201 = !DILocation(line: 0, scope: !4195)
!4202 = !DILocation(line: 0, scope: !3876, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 318, column: 18, scope: !4195)
!4204 = !DILocation(line: 0, scope: !3883, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 55, column: 25, scope: !3876, inlinedAt: !4203)
!4206 = !DILocation(line: 57, column: 26, scope: !3883, inlinedAt: !4205)
!4207 = !DILocation(line: 0, scope: !3844, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 55, column: 10, scope: !3876, inlinedAt: !4203)
!4209 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4208)
!4210 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4208)
!4211 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4208)
!4212 = !DILocation(line: 0, scope: !4183, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 318, column: 10, scope: !4195)
!4214 = !DILocation(line: 29, column: 10, scope: !4183, inlinedAt: !4213)
!4215 = !DILocation(line: 318, column: 3, scope: !4195)
!4216 = distinct !DISubprogram(name: "ximemdup0", scope: !312, file: !312, line: 325, type: !4217, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!78, !2315, !331}
!4219 = !{!4220, !4221, !4222}
!4220 = !DILocalVariable(name: "p", arg: 1, scope: !4216, file: !312, line: 325, type: !2315)
!4221 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !312, line: 325, type: !331)
!4222 = !DILocalVariable(name: "result", scope: !4216, file: !312, line: 327, type: !78)
!4223 = !DILocation(line: 0, scope: !4216)
!4224 = !DILocation(line: 327, column: 30, scope: !4216)
!4225 = !DILocation(line: 0, scope: !3876, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 327, column: 18, scope: !4216)
!4227 = !DILocation(line: 0, scope: !3883, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 55, column: 25, scope: !3876, inlinedAt: !4226)
!4229 = !DILocation(line: 57, column: 26, scope: !3883, inlinedAt: !4228)
!4230 = !DILocation(line: 0, scope: !3844, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 55, column: 10, scope: !3876, inlinedAt: !4226)
!4232 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4231)
!4235 = !DILocation(line: 328, column: 3, scope: !4216)
!4236 = !DILocation(line: 328, column: 13, scope: !4216)
!4237 = !DILocation(line: 0, scope: !4183, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 329, column: 10, scope: !4216)
!4239 = !DILocation(line: 29, column: 10, scope: !4183, inlinedAt: !4238)
!4240 = !DILocation(line: 329, column: 3, scope: !4216)
!4241 = distinct !DISubprogram(name: "xstrdup", scope: !312, file: !312, line: 335, type: !1302, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4242)
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "string", arg: 1, scope: !4241, file: !312, line: 335, type: !8)
!4244 = !DILocation(line: 0, scope: !4241)
!4245 = !DILocation(line: 337, column: 27, scope: !4241)
!4246 = !DILocation(line: 337, column: 43, scope: !4241)
!4247 = !DILocation(line: 0, scope: !4167, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 337, column: 10, scope: !4241)
!4249 = !DILocation(line: 0, scope: !3863, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 312, column: 18, scope: !4167, inlinedAt: !4248)
!4251 = !DILocation(line: 49, column: 25, scope: !3863, inlinedAt: !4250)
!4252 = !DILocation(line: 0, scope: !3844, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 49, column: 10, scope: !3863, inlinedAt: !4250)
!4254 = !DILocation(line: 39, column: 8, scope: !3851, inlinedAt: !4253)
!4255 = !DILocation(line: 39, column: 7, scope: !3844, inlinedAt: !4253)
!4256 = !DILocation(line: 40, column: 5, scope: !3851, inlinedAt: !4253)
!4257 = !DILocation(line: 0, scope: !4183, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 312, column: 10, scope: !4167, inlinedAt: !4248)
!4259 = !DILocation(line: 29, column: 10, scope: !4183, inlinedAt: !4258)
!4260 = !DILocation(line: 337, column: 3, scope: !4241)
!4261 = distinct !DISubprogram(name: "xalloc_die", scope: !346, file: !346, line: 32, type: !54, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4262)
!4262 = !{!4263}
!4263 = !DILocalVariable(name: "__errstatus", scope: !4264, file: !346, line: 34, type: !4265)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !346, line: 34, column: 3)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!4266 = !DILocation(line: 34, column: 3, scope: !4264)
!4267 = !DILocation(line: 0, scope: !4264)
!4268 = !DILocation(line: 40, column: 3, scope: !4261)
!4269 = distinct !DISubprogram(name: "close_stream", scope: !348, file: !348, line: 55, type: !4270, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !4306)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!24, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4274, file: !476, line: 51, baseType: !24, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4274, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4274, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4274, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4274, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4274, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4274, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4274, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4274, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4274, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4274, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4274, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4274, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4274, file: !476, line: 70, baseType: !4290, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4274, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4274, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4274, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4274, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4274, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4274, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4274, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4274, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4274, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4274, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4274, file: !476, line: 93, baseType: !4290, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4274, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4274, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4274, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4274, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!4306 = !{!4307, !4308, !4310, !4311}
!4307 = !DILocalVariable(name: "stream", arg: 1, scope: !4269, file: !348, line: 55, type: !4272)
!4308 = !DILocalVariable(name: "some_pending", scope: !4269, file: !348, line: 57, type: !4309)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4310 = !DILocalVariable(name: "prev_fail", scope: !4269, file: !348, line: 58, type: !4309)
!4311 = !DILocalVariable(name: "fclose_fail", scope: !4269, file: !348, line: 59, type: !4309)
!4312 = !DILocation(line: 0, scope: !4269)
!4313 = !DILocation(line: 57, column: 30, scope: !4269)
!4314 = !DILocalVariable(name: "__stream", arg: 1, scope: !4315, file: !1971, line: 135, type: !4272)
!4315 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1971, file: !1971, line: 135, type: !4270, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !4316)
!4316 = !{!4314}
!4317 = !DILocation(line: 0, scope: !4315, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 58, column: 27, scope: !4269)
!4319 = !DILocation(line: 137, column: 10, scope: !4315, inlinedAt: !4318)
!4320 = !{!1980, !1352, i64 0}
!4321 = !DILocation(line: 58, column: 43, scope: !4269)
!4322 = !DILocation(line: 59, column: 29, scope: !4269)
!4323 = !DILocation(line: 59, column: 45, scope: !4269)
!4324 = !DILocation(line: 69, column: 17, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4269, file: !348, line: 69, column: 7)
!4326 = !DILocation(line: 57, column: 50, scope: !4269)
!4327 = !DILocation(line: 69, column: 33, scope: !4325)
!4328 = !DILocation(line: 69, column: 53, scope: !4325)
!4329 = !DILocation(line: 69, column: 59, scope: !4325)
!4330 = !DILocation(line: 69, column: 7, scope: !4269)
!4331 = !DILocation(line: 71, column: 11, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4325, file: !348, line: 70, column: 5)
!4333 = !DILocation(line: 72, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4332, file: !348, line: 71, column: 11)
!4335 = !DILocation(line: 72, column: 15, scope: !4334)
!4336 = !DILocation(line: 77, column: 1, scope: !4269)
!4337 = distinct !DISubprogram(name: "rpl_fclose", scope: !350, file: !350, line: 58, type: !4338, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4374)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!24, !4340}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4342, file: !476, line: 51, baseType: !24, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4342, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4342, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4342, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4342, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4342, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4342, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4342, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4342, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4342, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4342, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4342, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4342, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4342, file: !476, line: 70, baseType: !4358, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4342, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4342, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4342, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4342, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4342, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4342, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4342, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4342, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4342, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4342, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4342, file: !476, line: 93, baseType: !4358, size: 64, offset: 1344)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4342, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4342, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4342, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4342, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!4374 = !{!4375, !4376, !4377, !4378}
!4375 = !DILocalVariable(name: "fp", arg: 1, scope: !4337, file: !350, line: 58, type: !4340)
!4376 = !DILocalVariable(name: "saved_errno", scope: !4337, file: !350, line: 60, type: !24)
!4377 = !DILocalVariable(name: "fd", scope: !4337, file: !350, line: 63, type: !24)
!4378 = !DILocalVariable(name: "result", scope: !4337, file: !350, line: 74, type: !24)
!4379 = !DILocation(line: 0, scope: !4337)
!4380 = !DILocation(line: 63, column: 12, scope: !4337)
!4381 = !DILocation(line: 64, column: 10, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4337, file: !350, line: 64, column: 7)
!4383 = !DILocation(line: 64, column: 7, scope: !4337)
!4384 = !DILocation(line: 65, column: 12, scope: !4382)
!4385 = !DILocation(line: 65, column: 5, scope: !4382)
!4386 = !DILocation(line: 70, column: 9, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4337, file: !350, line: 70, column: 7)
!4388 = !DILocation(line: 70, column: 23, scope: !4387)
!4389 = !DILocation(line: 70, column: 33, scope: !4387)
!4390 = !DILocation(line: 70, column: 26, scope: !4387)
!4391 = !DILocation(line: 70, column: 59, scope: !4387)
!4392 = !DILocation(line: 71, column: 7, scope: !4387)
!4393 = !DILocation(line: 71, column: 10, scope: !4387)
!4394 = !DILocation(line: 70, column: 7, scope: !4337)
!4395 = !DILocation(line: 100, column: 12, scope: !4337)
!4396 = !DILocation(line: 105, column: 7, scope: !4337)
!4397 = !DILocation(line: 72, column: 19, scope: !4387)
!4398 = !DILocation(line: 105, column: 19, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4337, file: !350, line: 105, column: 7)
!4400 = !DILocation(line: 107, column: 13, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4399, file: !350, line: 106, column: 5)
!4402 = !DILocation(line: 109, column: 5, scope: !4401)
!4403 = !DILocation(line: 112, column: 1, scope: !4337)
!4404 = !DISubprogram(name: "fileno", scope: !27, file: !27, line: 809, type: !4338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4405 = !DISubprogram(name: "fclose", scope: !27, file: !27, line: 178, type: !4338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4406 = !DISubprogram(name: "lseek", scope: !4407, file: !4407, line: 339, type: !4408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4407 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!290, !24, !290, !24}
!4410 = distinct !DISubprogram(name: "rpl_fflush", scope: !352, file: !352, line: 130, type: !4411, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !4447)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!24, !4413}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4415, file: !476, line: 51, baseType: !24, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4415, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4415, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4415, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4415, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4415, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4415, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4415, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4415, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4415, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4415, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4415, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4415, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4415, file: !476, line: 70, baseType: !4431, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4415, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4415, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4415, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4415, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4415, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4415, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4415, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4415, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4415, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4415, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4415, file: !476, line: 93, baseType: !4431, size: 64, offset: 1344)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4415, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4415, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4415, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4415, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "stream", arg: 1, scope: !4410, file: !352, line: 130, type: !4413)
!4449 = !DILocation(line: 0, scope: !4410)
!4450 = !DILocation(line: 151, column: 14, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4410, file: !352, line: 151, column: 7)
!4452 = !DILocation(line: 151, column: 22, scope: !4451)
!4453 = !DILocation(line: 151, column: 27, scope: !4451)
!4454 = !DILocation(line: 151, column: 7, scope: !4410)
!4455 = !DILocation(line: 152, column: 12, scope: !4451)
!4456 = !DILocation(line: 152, column: 5, scope: !4451)
!4457 = !DILocalVariable(name: "fp", arg: 1, scope: !4458, file: !352, line: 42, type: !4413)
!4458 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !352, file: !352, line: 42, type: !4459, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4413}
!4461 = !{!4457}
!4462 = !DILocation(line: 0, scope: !4458, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 157, column: 3, scope: !4410)
!4464 = !DILocation(line: 44, column: 12, scope: !4465, inlinedAt: !4463)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !352, line: 44, column: 7)
!4466 = !DILocation(line: 44, column: 19, scope: !4465, inlinedAt: !4463)
!4467 = !DILocation(line: 44, column: 7, scope: !4458, inlinedAt: !4463)
!4468 = !DILocation(line: 46, column: 5, scope: !4465, inlinedAt: !4463)
!4469 = !DILocation(line: 159, column: 10, scope: !4410)
!4470 = !DILocation(line: 159, column: 3, scope: !4410)
!4471 = !DILocation(line: 236, column: 1, scope: !4410)
!4472 = !DISubprogram(name: "fflush", scope: !27, file: !27, line: 230, type: !4411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4473 = distinct !DISubprogram(name: "rpl_fseeko", scope: !354, file: !354, line: 28, type: !4474, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !4511)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!24, !4476, !4510, !24}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !4478)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4478, file: !476, line: 51, baseType: !24, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4478, file: !476, line: 54, baseType: !78, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4478, file: !476, line: 55, baseType: !78, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4478, file: !476, line: 56, baseType: !78, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4478, file: !476, line: 57, baseType: !78, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4478, file: !476, line: 58, baseType: !78, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4478, file: !476, line: 59, baseType: !78, size: 64, offset: 384)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4478, file: !476, line: 60, baseType: !78, size: 64, offset: 448)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4478, file: !476, line: 61, baseType: !78, size: 64, offset: 512)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4478, file: !476, line: 64, baseType: !78, size: 64, offset: 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4478, file: !476, line: 65, baseType: !78, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4478, file: !476, line: 66, baseType: !78, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4478, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4478, file: !476, line: 70, baseType: !4494, size: 64, offset: 832)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4478, file: !476, line: 72, baseType: !24, size: 32, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4478, file: !476, line: 73, baseType: !24, size: 32, offset: 928)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4478, file: !476, line: 74, baseType: !290, size: 64, offset: 960)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4478, file: !476, line: 77, baseType: !157, size: 16, offset: 1024)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4478, file: !476, line: 78, baseType: !500, size: 8, offset: 1040)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4478, file: !476, line: 79, baseType: !502, size: 8, offset: 1048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4478, file: !476, line: 81, baseType: !506, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4478, file: !476, line: 89, baseType: !292, size: 64, offset: 1152)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4478, file: !476, line: 91, baseType: !510, size: 64, offset: 1216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4478, file: !476, line: 92, baseType: !513, size: 64, offset: 1280)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4478, file: !476, line: 93, baseType: !4494, size: 64, offset: 1344)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4478, file: !476, line: 94, baseType: !16, size: 64, offset: 1408)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4478, file: !476, line: 95, baseType: !158, size: 64, offset: 1472)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4478, file: !476, line: 96, baseType: !24, size: 32, offset: 1536)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4478, file: !476, line: 98, baseType: !520, size: 160, offset: 1568)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !27, line: 63, baseType: !290)
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DILocalVariable(name: "fp", arg: 1, scope: !4473, file: !354, line: 28, type: !4476)
!4513 = !DILocalVariable(name: "offset", arg: 2, scope: !4473, file: !354, line: 28, type: !4510)
!4514 = !DILocalVariable(name: "whence", arg: 3, scope: !4473, file: !354, line: 28, type: !24)
!4515 = !DILocalVariable(name: "pos", scope: !4516, file: !354, line: 123, type: !4510)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !354, line: 119, column: 5)
!4517 = distinct !DILexicalBlock(scope: !4473, file: !354, line: 55, column: 7)
!4518 = !DILocation(line: 0, scope: !4473)
!4519 = !DILocation(line: 55, column: 12, scope: !4517)
!4520 = !{!1980, !388, i64 16}
!4521 = !DILocation(line: 55, column: 33, scope: !4517)
!4522 = !{!1980, !388, i64 8}
!4523 = !DILocation(line: 55, column: 25, scope: !4517)
!4524 = !DILocation(line: 56, column: 7, scope: !4517)
!4525 = !DILocation(line: 56, column: 15, scope: !4517)
!4526 = !DILocation(line: 56, column: 37, scope: !4517)
!4527 = !{!1980, !388, i64 32}
!4528 = !DILocation(line: 56, column: 29, scope: !4517)
!4529 = !DILocation(line: 57, column: 7, scope: !4517)
!4530 = !DILocation(line: 57, column: 15, scope: !4517)
!4531 = !{!1980, !388, i64 72}
!4532 = !DILocation(line: 57, column: 29, scope: !4517)
!4533 = !DILocation(line: 55, column: 7, scope: !4473)
!4534 = !DILocation(line: 123, column: 26, scope: !4516)
!4535 = !DILocation(line: 123, column: 19, scope: !4516)
!4536 = !DILocation(line: 0, scope: !4516)
!4537 = !DILocation(line: 124, column: 15, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4516, file: !354, line: 124, column: 11)
!4539 = !DILocation(line: 124, column: 11, scope: !4516)
!4540 = !DILocation(line: 135, column: 12, scope: !4516)
!4541 = !DILocation(line: 135, column: 19, scope: !4516)
!4542 = !DILocation(line: 136, column: 12, scope: !4516)
!4543 = !DILocation(line: 136, column: 20, scope: !4516)
!4544 = !{!1980, !1981, i64 144}
!4545 = !DILocation(line: 167, column: 7, scope: !4516)
!4546 = !DILocation(line: 169, column: 10, scope: !4473)
!4547 = !DILocation(line: 169, column: 3, scope: !4473)
!4548 = !DILocation(line: 170, column: 1, scope: !4473)
!4549 = !DISubprogram(name: "fseeko", scope: !27, file: !27, line: 736, type: !4550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!24, !4476, !290, !24}
!4552 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !242, file: !242, line: 100, type: !4553, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !4556)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!158, !2371, !8, !158, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!4556 = !{!4557, !4558, !4559, !4560, !4561}
!4557 = !DILocalVariable(name: "pwc", arg: 1, scope: !4552, file: !242, line: 100, type: !2371)
!4558 = !DILocalVariable(name: "s", arg: 2, scope: !4552, file: !242, line: 100, type: !8)
!4559 = !DILocalVariable(name: "n", arg: 3, scope: !4552, file: !242, line: 100, type: !158)
!4560 = !DILocalVariable(name: "ps", arg: 4, scope: !4552, file: !242, line: 100, type: !4555)
!4561 = !DILocalVariable(name: "ret", scope: !4552, file: !242, line: 130, type: !158)
!4562 = !DILocation(line: 0, scope: !4552)
!4563 = !DILocation(line: 105, column: 9, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4552, file: !242, line: 105, column: 7)
!4565 = !DILocation(line: 105, column: 7, scope: !4552)
!4566 = !DILocation(line: 117, column: 10, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4552, file: !242, line: 117, column: 7)
!4568 = !DILocation(line: 117, column: 7, scope: !4552)
!4569 = !DILocation(line: 130, column: 16, scope: !4552)
!4570 = !DILocation(line: 135, column: 11, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4552, file: !242, line: 135, column: 7)
!4572 = !DILocation(line: 135, column: 25, scope: !4571)
!4573 = !DILocation(line: 135, column: 30, scope: !4571)
!4574 = !DILocation(line: 135, column: 7, scope: !4552)
!4575 = !DILocalVariable(name: "ps", arg: 1, scope: !4576, file: !2344, line: 1135, type: !4555)
!4576 = distinct !DISubprogram(name: "mbszero", scope: !2344, file: !2344, line: 1135, type: !4577, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !4579)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4555}
!4579 = !{!4575}
!4580 = !DILocation(line: 0, scope: !4576, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 137, column: 5, scope: !4571)
!4582 = !DILocalVariable(name: "__dest", arg: 1, scope: !4583, file: !2353, line: 57, type: !16)
!4583 = distinct !DISubprogram(name: "memset", scope: !2353, file: !2353, line: 57, type: !2354, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !4584)
!4584 = !{!4582, !4585, !4586}
!4585 = !DILocalVariable(name: "__ch", arg: 2, scope: !4583, file: !2353, line: 57, type: !24)
!4586 = !DILocalVariable(name: "__len", arg: 3, scope: !4583, file: !2353, line: 57, type: !158)
!4587 = !DILocation(line: 0, scope: !4583, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 1137, column: 3, scope: !4576, inlinedAt: !4581)
!4589 = !DILocation(line: 59, column: 10, scope: !4583, inlinedAt: !4588)
!4590 = !DILocation(line: 137, column: 5, scope: !4571)
!4591 = !DILocation(line: 138, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4552, file: !242, line: 138, column: 7)
!4593 = !DILocation(line: 138, column: 7, scope: !4552)
!4594 = !DILocation(line: 139, column: 5, scope: !4592)
!4595 = !DILocation(line: 143, column: 26, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4552, file: !242, line: 143, column: 7)
!4597 = !DILocation(line: 143, column: 41, scope: !4596)
!4598 = !DILocation(line: 143, column: 7, scope: !4552)
!4599 = !DILocation(line: 145, column: 15, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !242, line: 145, column: 11)
!4601 = distinct !DILexicalBlock(scope: !4596, file: !242, line: 144, column: 5)
!4602 = !DILocation(line: 145, column: 11, scope: !4601)
!4603 = !DILocation(line: 146, column: 32, scope: !4600)
!4604 = !DILocation(line: 146, column: 16, scope: !4600)
!4605 = !DILocation(line: 146, column: 14, scope: !4600)
!4606 = !DILocation(line: 146, column: 9, scope: !4600)
!4607 = !DILocation(line: 286, column: 1, scope: !4552)
!4608 = !DISubprogram(name: "mbsinit", scope: !4609, file: !4609, line: 293, type: !4610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !466)
!4609 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!24, !4612}
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!4614 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !356, file: !356, line: 27, type: !3828, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4615)
!4615 = !{!4616, !4617, !4618, !4619}
!4616 = !DILocalVariable(name: "ptr", arg: 1, scope: !4614, file: !356, line: 27, type: !16)
!4617 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4614, file: !356, line: 27, type: !158)
!4618 = !DILocalVariable(name: "size", arg: 3, scope: !4614, file: !356, line: 27, type: !158)
!4619 = !DILocalVariable(name: "nbytes", scope: !4614, file: !356, line: 29, type: !158)
!4620 = !DILocation(line: 0, scope: !4614)
!4621 = !DILocation(line: 30, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4614, file: !356, line: 30, column: 7)
!4623 = !DILocalVariable(name: "ptr", arg: 1, scope: !4624, file: !3919, line: 2057, type: !16)
!4624 = distinct !DISubprogram(name: "rpl_realloc", scope: !3919, file: !3919, line: 2057, type: !3911, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !4625)
!4625 = !{!4623, !4626}
!4626 = !DILocalVariable(name: "size", arg: 2, scope: !4624, file: !3919, line: 2057, type: !158)
!4627 = !DILocation(line: 0, scope: !4624, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 37, column: 10, scope: !4614)
!4629 = !DILocation(line: 2059, column: 24, scope: !4624, inlinedAt: !4628)
!4630 = !DILocation(line: 2059, column: 10, scope: !4624, inlinedAt: !4628)
!4631 = !DILocation(line: 37, column: 3, scope: !4614)
!4632 = !DILocation(line: 32, column: 7, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4622, file: !356, line: 31, column: 5)
!4634 = !DILocation(line: 32, column: 13, scope: !4633)
!4635 = !DILocation(line: 33, column: 7, scope: !4633)
!4636 = !DILocation(line: 38, column: 1, scope: !4614)
!4637 = distinct !DISubprogram(name: "hard_locale", scope: !359, file: !359, line: 28, type: !4638, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!7, !24}
!4640 = !{!4641, !4642}
!4641 = !DILocalVariable(name: "category", arg: 1, scope: !4637, file: !359, line: 28, type: !24)
!4642 = !DILocalVariable(name: "locale", scope: !4637, file: !359, line: 30, type: !4643)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2056, elements: !4644)
!4644 = !{!4645}
!4645 = !DISubrange(count: 257)
!4646 = !DILocation(line: 0, scope: !4637)
!4647 = !DILocation(line: 30, column: 3, scope: !4637)
!4648 = !DILocation(line: 30, column: 8, scope: !4637)
!4649 = !DILocation(line: 32, column: 7, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4637, file: !359, line: 32, column: 7)
!4651 = !DILocation(line: 32, column: 7, scope: !4637)
!4652 = !DILocalVariable(name: "__s1", arg: 1, scope: !4653, file: !424, line: 1359, type: !8)
!4653 = distinct !DISubprogram(name: "streq", scope: !424, file: !424, line: 1359, type: !425, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4654)
!4654 = !{!4652, !4655}
!4655 = !DILocalVariable(name: "__s2", arg: 2, scope: !4653, file: !424, line: 1359, type: !8)
!4656 = !DILocation(line: 0, scope: !4653, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 35, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4637, file: !359, line: 35, column: 7)
!4659 = !DILocation(line: 1361, column: 11, scope: !4653, inlinedAt: !4657)
!4660 = !DILocation(line: 1361, column: 10, scope: !4653, inlinedAt: !4657)
!4661 = !DILocation(line: 35, column: 29, scope: !4658)
!4662 = !DILocation(line: 0, scope: !4653, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 35, column: 32, scope: !4658)
!4664 = !DILocation(line: 1361, column: 11, scope: !4653, inlinedAt: !4663)
!4665 = !DILocation(line: 1361, column: 10, scope: !4653, inlinedAt: !4663)
!4666 = !DILocation(line: 35, column: 7, scope: !4637)
!4667 = !DILocation(line: 46, column: 3, scope: !4637)
!4668 = !DILocation(line: 47, column: 1, scope: !4637)
!4669 = distinct !DISubprogram(name: "setlocale_null_r", scope: !361, file: !361, line: 154, type: !4670, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!24, !24, !78, !158}
!4672 = !{!4673, !4674, !4675}
!4673 = !DILocalVariable(name: "category", arg: 1, scope: !4669, file: !361, line: 154, type: !24)
!4674 = !DILocalVariable(name: "buf", arg: 2, scope: !4669, file: !361, line: 154, type: !78)
!4675 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4669, file: !361, line: 154, type: !158)
!4676 = !DILocation(line: 0, scope: !4669)
!4677 = !DILocation(line: 159, column: 10, scope: !4669)
!4678 = !DILocation(line: 159, column: 3, scope: !4669)
!4679 = distinct !DISubprogram(name: "setlocale_null", scope: !361, file: !361, line: 186, type: !1320, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !4680)
!4680 = !{!4681}
!4681 = !DILocalVariable(name: "category", arg: 1, scope: !4679, file: !361, line: 186, type: !24)
!4682 = !DILocation(line: 0, scope: !4679)
!4683 = !DILocation(line: 189, column: 10, scope: !4679)
!4684 = !DILocation(line: 189, column: 3, scope: !4679)
!4685 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !363, file: !363, line: 35, type: !1320, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !4686)
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "category", arg: 1, scope: !4685, file: !363, line: 35, type: !24)
!4688 = !DILocalVariable(name: "result", scope: !4685, file: !363, line: 37, type: !8)
!4689 = !DILocation(line: 0, scope: !4685)
!4690 = !DILocation(line: 37, column: 24, scope: !4685)
!4691 = !DILocation(line: 62, column: 3, scope: !4685)
!4692 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !363, file: !363, line: 66, type: !4670, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698}
!4694 = !DILocalVariable(name: "category", arg: 1, scope: !4692, file: !363, line: 66, type: !24)
!4695 = !DILocalVariable(name: "buf", arg: 2, scope: !4692, file: !363, line: 66, type: !78)
!4696 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4692, file: !363, line: 66, type: !158)
!4697 = !DILocalVariable(name: "result", scope: !4692, file: !363, line: 111, type: !8)
!4698 = !DILocalVariable(name: "length", scope: !4699, file: !363, line: 125, type: !158)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !363, line: 124, column: 5)
!4700 = distinct !DILexicalBlock(scope: !4692, file: !363, line: 113, column: 7)
!4701 = !DILocation(line: 0, scope: !4692)
!4702 = !DILocation(line: 0, scope: !4685, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 111, column: 24, scope: !4692)
!4704 = !DILocation(line: 37, column: 24, scope: !4685, inlinedAt: !4703)
!4705 = !DILocation(line: 113, column: 14, scope: !4700)
!4706 = !DILocation(line: 113, column: 7, scope: !4692)
!4707 = !DILocation(line: 116, column: 19, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !363, line: 116, column: 11)
!4709 = distinct !DILexicalBlock(scope: !4700, file: !363, line: 114, column: 5)
!4710 = !DILocation(line: 116, column: 11, scope: !4709)
!4711 = !DILocation(line: 120, column: 16, scope: !4708)
!4712 = !DILocation(line: 120, column: 9, scope: !4708)
!4713 = !DILocation(line: 125, column: 23, scope: !4699)
!4714 = !DILocation(line: 0, scope: !4699)
!4715 = !DILocation(line: 126, column: 18, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4699, file: !363, line: 126, column: 11)
!4717 = !DILocation(line: 126, column: 11, scope: !4699)
!4718 = !DILocation(line: 128, column: 39, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4716, file: !363, line: 127, column: 9)
!4720 = !DILocalVariable(name: "__dest", arg: 1, scope: !4721, file: !2353, line: 26, type: !4186)
!4721 = distinct !DISubprogram(name: "memcpy", scope: !2353, file: !2353, line: 26, type: !4184, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !4722)
!4722 = !{!4720, !4723, !4724}
!4723 = !DILocalVariable(name: "__src", arg: 2, scope: !4721, file: !2353, line: 26, type: !4187)
!4724 = !DILocalVariable(name: "__len", arg: 3, scope: !4721, file: !2353, line: 26, type: !158)
!4725 = !DILocation(line: 0, scope: !4721, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 128, column: 11, scope: !4719)
!4727 = !DILocation(line: 29, column: 10, scope: !4721, inlinedAt: !4726)
!4728 = !DILocation(line: 129, column: 11, scope: !4719)
!4729 = !DILocation(line: 133, column: 23, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !363, line: 133, column: 15)
!4731 = distinct !DILexicalBlock(scope: !4716, file: !363, line: 132, column: 9)
!4732 = !DILocation(line: 133, column: 15, scope: !4731)
!4733 = !DILocation(line: 138, column: 44, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !363, line: 134, column: 13)
!4735 = !DILocation(line: 0, scope: !4721, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 138, column: 15, scope: !4734)
!4737 = !DILocation(line: 29, column: 10, scope: !4721, inlinedAt: !4736)
!4738 = !DILocation(line: 139, column: 15, scope: !4734)
!4739 = !DILocation(line: 139, column: 32, scope: !4734)
!4740 = !DILocation(line: 140, column: 13, scope: !4734)
!4741 = !DILocation(line: 0, scope: !4700)
!4742 = !DILocation(line: 145, column: 1, scope: !4692)
