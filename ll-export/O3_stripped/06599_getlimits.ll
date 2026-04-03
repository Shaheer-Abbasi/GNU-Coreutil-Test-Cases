; ModuleID = 'src/getlimits.stripped.bc'
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
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.94 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.101 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.107 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.109 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.108 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.103 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.104 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.118 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.119, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.120, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.1.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.119 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.120 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.128 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.129 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.135, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.136, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.139, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.140, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.141, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.144 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.142 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.145 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.143 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.190 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.189 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.206 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33
  br label %56

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #33
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17)
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20)
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %22, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %24

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  %27 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %25) #34
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !16
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %24, !llvm.loop !18

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1
  %37 = load i8*, i8** %36, align 8, !tbaa !20
  %38 = icmp eq i8* %37, null
  %39 = select i1 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %37
  tail call void @emit_bug_reporting_address() #33
  %40 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33
  %41 = icmp eq i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = tail call i32 @strncmp(i8* noundef nonnull %40, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i64 noundef 3) #34
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i64 0, i64 0), i32 noundef 5) #33
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %48 = tail call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47) #33
  br label %49

49:                                               ; preds = %34, %42, %45
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0), i32 noundef 5) #33
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %50, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #33
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #33
  %53 = icmp eq i8* %39, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %52, i8* noundef %39, i8* noundef %54) #33
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #33
  br label %56

56:                                               ; preds = %49, %4
  tail call void @exit(i32 noundef %0) #35
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #9 {
  %3 = alloca [60 x i8], align 1
  %4 = alloca [60 x i8], align 1
  %5 = alloca [40 x i8], align 1
  %6 = alloca [40 x i8], align 1
  %7 = alloca [31 x i8], align 1
  %8 = alloca [31 x i8], align 1
  %9 = alloca [22 x i8], align 1
  %10 = getelementptr inbounds [22 x i8], [22 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %10) #33
  %11 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %11) #33
  %12 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #33
  %13 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #33
  %14 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #33
  %15 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33
  %16 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)) #33
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %16, i8* noundef null) #33
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %9, i64 0, i64 1
  %18 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #33
  %19 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %17) #33
  %20 = load i8, i8* %17, align 1, !tbaa !21
  %21 = icmp eq i8 %20, 45
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = call i64 @strlen(i8* noundef nonnull %23) #34
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8 48, i8* %26, align 1, !tbaa !21
  %27 = getelementptr inbounds i8, i8* %25, i64 -1
  %28 = load i8, i8* %27, align 1, !tbaa !21
  %29 = icmp eq i8 %28, 57
  br i1 %29, label %30, label %35

30:                                               ; preds = %2, %30
  %31 = phi i8* [ %32, %30 ], [ %27, %2 ]
  store i8 48, i8* %31, align 1, !tbaa !21
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1, !tbaa !21
  %34 = icmp eq i8 %33, 57
  br i1 %34, label %30, label %35, !llvm.loop !22

35:                                               ; preds = %30, %2
  %36 = phi i8* [ %27, %2 ], [ %32, %30 ]
  %37 = phi i8 [ %28, %2 ], [ %33, %30 ]
  %38 = add i8 %37, 1
  store i8 %38, i8* %36, align 1, !tbaa !21
  %39 = icmp ult i8* %23, %36
  %40 = select i1 %39, i8* %23, i8* %36
  br i1 %21, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, i8* %36, i64 -1
  %43 = select i1 %39, i8* %26, i8* %42
  store i8 45, i8* %43, align 1, !tbaa !21
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i8* [ %43, %41 ], [ %40, %35 ]
  %46 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %45) #33
  %47 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 127) #33
  %48 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef nonnull %17) #33
  %49 = load i8, i8* %17, align 1, !tbaa !21
  %50 = icmp eq i8 %49, 45
  %51 = zext i1 %50 to i64
  %52 = getelementptr inbounds i8, i8* %17, i64 %51
  %53 = call i64 @strlen(i8* noundef nonnull %52) #34
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = getelementptr inbounds i8, i8* %52, i64 -1
  store i8 48, i8* %55, align 1, !tbaa !21
  %56 = getelementptr inbounds i8, i8* %54, i64 -1
  %57 = load i8, i8* %56, align 1, !tbaa !21
  %58 = icmp eq i8 %57, 57
  br i1 %58, label %59, label %64

59:                                               ; preds = %44, %59
  %60 = phi i8* [ %61, %59 ], [ %56, %44 ]
  store i8 48, i8* %60, align 1, !tbaa !21
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load i8, i8* %61, align 1, !tbaa !21
  %63 = icmp eq i8 %62, 57
  br i1 %63, label %59, label %64, !llvm.loop !23

64:                                               ; preds = %59, %44
  %65 = phi i8* [ %56, %44 ], [ %61, %59 ]
  %66 = phi i8 [ %57, %44 ], [ %62, %59 ]
  %67 = add i8 %66, 1
  store i8 %67, i8* %65, align 1, !tbaa !21
  %68 = icmp ult i8* %52, %65
  %69 = select i1 %68, i8* %52, i8* %65
  br i1 %50, label %70, label %73

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, i8* %65, i64 -1
  %72 = select i1 %68, i8* %55, i8* %71
  store i8 45, i8* %72, align 1, !tbaa !21
  br label %73

73:                                               ; preds = %64, %70
  %74 = phi i8* [ %72, %70 ], [ %69, %64 ]
  %75 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %74) #33
  %76 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -128) #33
  %77 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef nonnull %17) #33
  %78 = load i8, i8* %17, align 1, !tbaa !21
  %79 = icmp eq i8 %78, 45
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, i8* %17, i64 %80
  %82 = call i64 @strlen(i8* noundef nonnull %81) #34
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8 48, i8* %84, align 1, !tbaa !21
  %85 = getelementptr inbounds i8, i8* %83, i64 -1
  %86 = load i8, i8* %85, align 1, !tbaa !21
  %87 = icmp eq i8 %86, 57
  br i1 %87, label %88, label %93

88:                                               ; preds = %73, %88
  %89 = phi i8* [ %90, %88 ], [ %85, %73 ]
  store i8 48, i8* %89, align 1, !tbaa !21
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1, !tbaa !21
  %92 = icmp eq i8 %91, 57
  br i1 %92, label %88, label %93, !llvm.loop !24

93:                                               ; preds = %88, %73
  %94 = phi i8* [ %85, %73 ], [ %90, %88 ]
  %95 = phi i8 [ %86, %73 ], [ %91, %88 ]
  %96 = add i8 %95, 1
  store i8 %96, i8* %94, align 1, !tbaa !21
  %97 = icmp ult i8* %81, %94
  %98 = select i1 %97, i8* %81, i8* %94
  br i1 %79, label %99, label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, i8* %94, i64 -1
  %101 = select i1 %97, i8* %84, i8* %100
  store i8 45, i8* %101, align 1, !tbaa !21
  br label %102

102:                                              ; preds = %93, %99
  %103 = phi i8* [ %101, %99 ], [ %98, %93 ]
  %104 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef %103) #33
  %105 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #33
  %106 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %17) #33
  %107 = load i8, i8* %17, align 1, !tbaa !21
  %108 = icmp eq i8 %107, 45
  %109 = zext i1 %108 to i64
  %110 = getelementptr inbounds i8, i8* %17, i64 %109
  %111 = call i64 @strlen(i8* noundef nonnull %110) #34
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = getelementptr inbounds i8, i8* %110, i64 -1
  store i8 48, i8* %113, align 1, !tbaa !21
  %114 = getelementptr inbounds i8, i8* %112, i64 -1
  %115 = load i8, i8* %114, align 1, !tbaa !21
  %116 = icmp eq i8 %115, 57
  br i1 %116, label %117, label %122

117:                                              ; preds = %102, %117
  %118 = phi i8* [ %119, %117 ], [ %114, %102 ]
  store i8 48, i8* %118, align 1, !tbaa !21
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8, i8* %119, align 1, !tbaa !21
  %121 = icmp eq i8 %120, 57
  br i1 %121, label %117, label %122, !llvm.loop !25

122:                                              ; preds = %117, %102
  %123 = phi i8* [ %114, %102 ], [ %119, %117 ]
  %124 = phi i8 [ %115, %102 ], [ %120, %117 ]
  %125 = add i8 %124, 1
  store i8 %125, i8* %123, align 1, !tbaa !21
  %126 = icmp ult i8* %110, %123
  %127 = select i1 %126, i8* %110, i8* %123
  br i1 %108, label %128, label %131

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, i8* %123, i64 -1
  %130 = select i1 %126, i8* %113, i8* %129
  store i8 45, i8* %130, align 1, !tbaa !21
  br label %131

131:                                              ; preds = %122, %128
  %132 = phi i8* [ %130, %128 ], [ %127, %122 ]
  %133 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %132) #33
  %134 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 32767) #33
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %17) #33
  %136 = load i8, i8* %17, align 1, !tbaa !21
  %137 = icmp eq i8 %136, 45
  %138 = zext i1 %137 to i64
  %139 = getelementptr inbounds i8, i8* %17, i64 %138
  %140 = call i64 @strlen(i8* noundef nonnull %139) #34
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = getelementptr inbounds i8, i8* %139, i64 -1
  store i8 48, i8* %142, align 1, !tbaa !21
  %143 = getelementptr inbounds i8, i8* %141, i64 -1
  %144 = load i8, i8* %143, align 1, !tbaa !21
  %145 = icmp eq i8 %144, 57
  br i1 %145, label %146, label %151

146:                                              ; preds = %131, %146
  %147 = phi i8* [ %148, %146 ], [ %143, %131 ]
  store i8 48, i8* %147, align 1, !tbaa !21
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = load i8, i8* %148, align 1, !tbaa !21
  %150 = icmp eq i8 %149, 57
  br i1 %150, label %146, label %151, !llvm.loop !26

151:                                              ; preds = %146, %131
  %152 = phi i8* [ %143, %131 ], [ %148, %146 ]
  %153 = phi i8 [ %144, %131 ], [ %149, %146 ]
  %154 = add i8 %153, 1
  store i8 %154, i8* %152, align 1, !tbaa !21
  %155 = icmp ult i8* %139, %152
  %156 = select i1 %155, i8* %139, i8* %152
  br i1 %137, label %157, label %160

157:                                              ; preds = %151
  %158 = getelementptr inbounds i8, i8* %152, i64 -1
  %159 = select i1 %155, i8* %142, i8* %158
  store i8 45, i8* %159, align 1, !tbaa !21
  br label %160

160:                                              ; preds = %151, %157
  %161 = phi i8* [ %159, %157 ], [ %156, %151 ]
  %162 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* noundef %161) #33
  %163 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -32768) #33
  %164 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %17) #33
  %165 = load i8, i8* %17, align 1, !tbaa !21
  %166 = icmp eq i8 %165, 45
  %167 = zext i1 %166 to i64
  %168 = getelementptr inbounds i8, i8* %17, i64 %167
  %169 = call i64 @strlen(i8* noundef nonnull %168) #34
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = getelementptr inbounds i8, i8* %168, i64 -1
  store i8 48, i8* %171, align 1, !tbaa !21
  %172 = getelementptr inbounds i8, i8* %170, i64 -1
  %173 = load i8, i8* %172, align 1, !tbaa !21
  %174 = icmp eq i8 %173, 57
  br i1 %174, label %175, label %180

175:                                              ; preds = %160, %175
  %176 = phi i8* [ %177, %175 ], [ %172, %160 ]
  store i8 48, i8* %176, align 1, !tbaa !21
  %177 = getelementptr inbounds i8, i8* %176, i64 -1
  %178 = load i8, i8* %177, align 1, !tbaa !21
  %179 = icmp eq i8 %178, 57
  br i1 %179, label %175, label %180, !llvm.loop !27

180:                                              ; preds = %175, %160
  %181 = phi i8* [ %172, %160 ], [ %177, %175 ]
  %182 = phi i8 [ %173, %160 ], [ %178, %175 ]
  %183 = add i8 %182, 1
  store i8 %183, i8* %181, align 1, !tbaa !21
  %184 = icmp ult i8* %168, %181
  %185 = select i1 %184, i8* %168, i8* %181
  br i1 %166, label %186, label %189

186:                                              ; preds = %180
  %187 = getelementptr inbounds i8, i8* %181, i64 -1
  %188 = select i1 %184, i8* %171, i8* %187
  store i8 45, i8* %188, align 1, !tbaa !21
  br label %189

189:                                              ; preds = %180, %186
  %190 = phi i8* [ %188, %186 ], [ %185, %180 ]
  %191 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* noundef %190) #33
  %192 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #33
  %193 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %17) #33
  %194 = load i8, i8* %17, align 1, !tbaa !21
  %195 = icmp eq i8 %194, 45
  %196 = zext i1 %195 to i64
  %197 = getelementptr inbounds i8, i8* %17, i64 %196
  %198 = call i64 @strlen(i8* noundef nonnull %197) #34
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = getelementptr inbounds i8, i8* %197, i64 -1
  store i8 48, i8* %200, align 1, !tbaa !21
  %201 = getelementptr inbounds i8, i8* %199, i64 -1
  %202 = load i8, i8* %201, align 1, !tbaa !21
  %203 = icmp eq i8 %202, 57
  br i1 %203, label %204, label %209

204:                                              ; preds = %189, %204
  %205 = phi i8* [ %206, %204 ], [ %201, %189 ]
  store i8 48, i8* %205, align 1, !tbaa !21
  %206 = getelementptr inbounds i8, i8* %205, i64 -1
  %207 = load i8, i8* %206, align 1, !tbaa !21
  %208 = icmp eq i8 %207, 57
  br i1 %208, label %204, label %209, !llvm.loop !28

209:                                              ; preds = %204, %189
  %210 = phi i8* [ %201, %189 ], [ %206, %204 ]
  %211 = phi i8 [ %202, %189 ], [ %207, %204 ]
  %212 = add i8 %211, 1
  store i8 %212, i8* %210, align 1, !tbaa !21
  %213 = icmp ult i8* %197, %210
  %214 = select i1 %213, i8* %197, i8* %210
  br i1 %195, label %215, label %218

215:                                              ; preds = %209
  %216 = getelementptr inbounds i8, i8* %210, i64 -1
  %217 = select i1 %213, i8* %200, i8* %216
  store i8 45, i8* %217, align 1, !tbaa !21
  br label %218

218:                                              ; preds = %209, %215
  %219 = phi i8* [ %217, %215 ], [ %214, %209 ]
  %220 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef %219) #33
  %221 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #33
  %222 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %17) #33
  %223 = load i8, i8* %17, align 1, !tbaa !21
  %224 = icmp eq i8 %223, 45
  %225 = zext i1 %224 to i64
  %226 = getelementptr inbounds i8, i8* %17, i64 %225
  %227 = call i64 @strlen(i8* noundef nonnull %226) #34
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = getelementptr inbounds i8, i8* %226, i64 -1
  store i8 48, i8* %229, align 1, !tbaa !21
  %230 = getelementptr inbounds i8, i8* %228, i64 -1
  %231 = load i8, i8* %230, align 1, !tbaa !21
  %232 = icmp eq i8 %231, 57
  br i1 %232, label %233, label %238

233:                                              ; preds = %218, %233
  %234 = phi i8* [ %235, %233 ], [ %230, %218 ]
  store i8 48, i8* %234, align 1, !tbaa !21
  %235 = getelementptr inbounds i8, i8* %234, i64 -1
  %236 = load i8, i8* %235, align 1, !tbaa !21
  %237 = icmp eq i8 %236, 57
  br i1 %237, label %233, label %238, !llvm.loop !29

238:                                              ; preds = %233, %218
  %239 = phi i8* [ %230, %218 ], [ %235, %233 ]
  %240 = phi i8 [ %231, %218 ], [ %236, %233 ]
  %241 = add i8 %240, 1
  store i8 %241, i8* %239, align 1, !tbaa !21
  %242 = icmp ult i8* %226, %239
  %243 = select i1 %242, i8* %226, i8* %239
  br i1 %224, label %244, label %247

244:                                              ; preds = %238
  %245 = getelementptr inbounds i8, i8* %239, i64 -1
  %246 = select i1 %242, i8* %229, i8* %245
  store i8 45, i8* %246, align 1, !tbaa !21
  br label %247

247:                                              ; preds = %238, %244
  %248 = phi i8* [ %246, %244 ], [ %243, %238 ]
  %249 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %248) #33
  %250 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33
  %251 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %17) #33
  %252 = load i8, i8* %17, align 1, !tbaa !21
  %253 = icmp eq i8 %252, 45
  %254 = zext i1 %253 to i64
  %255 = getelementptr inbounds i8, i8* %17, i64 %254
  %256 = call i64 @strlen(i8* noundef nonnull %255) #34
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = getelementptr inbounds i8, i8* %255, i64 -1
  store i8 48, i8* %258, align 1, !tbaa !21
  %259 = getelementptr inbounds i8, i8* %257, i64 -1
  %260 = load i8, i8* %259, align 1, !tbaa !21
  %261 = icmp eq i8 %260, 57
  br i1 %261, label %262, label %267

262:                                              ; preds = %247, %262
  %263 = phi i8* [ %264, %262 ], [ %259, %247 ]
  store i8 48, i8* %263, align 1, !tbaa !21
  %264 = getelementptr inbounds i8, i8* %263, i64 -1
  %265 = load i8, i8* %264, align 1, !tbaa !21
  %266 = icmp eq i8 %265, 57
  br i1 %266, label %262, label %267, !llvm.loop !30

267:                                              ; preds = %262, %247
  %268 = phi i8* [ %259, %247 ], [ %264, %262 ]
  %269 = phi i8 [ %260, %247 ], [ %265, %262 ]
  %270 = add i8 %269, 1
  store i8 %270, i8* %268, align 1, !tbaa !21
  %271 = icmp ult i8* %255, %268
  %272 = select i1 %271, i8* %255, i8* %268
  br i1 %253, label %273, label %276

273:                                              ; preds = %267
  %274 = getelementptr inbounds i8, i8* %268, i64 -1
  %275 = select i1 %271, i8* %258, i8* %274
  store i8 45, i8* %275, align 1, !tbaa !21
  br label %276

276:                                              ; preds = %267, %273
  %277 = phi i8* [ %275, %273 ], [ %272, %267 ]
  %278 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* noundef %277) #33
  %279 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %280 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %17) #33
  %281 = load i8, i8* %17, align 1, !tbaa !21
  %282 = icmp eq i8 %281, 45
  %283 = zext i1 %282 to i64
  %284 = getelementptr inbounds i8, i8* %17, i64 %283
  %285 = call i64 @strlen(i8* noundef nonnull %284) #34
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  %287 = getelementptr inbounds i8, i8* %284, i64 -1
  store i8 48, i8* %287, align 1, !tbaa !21
  %288 = getelementptr inbounds i8, i8* %286, i64 -1
  %289 = load i8, i8* %288, align 1, !tbaa !21
  %290 = icmp eq i8 %289, 57
  br i1 %290, label %291, label %296

291:                                              ; preds = %276, %291
  %292 = phi i8* [ %293, %291 ], [ %288, %276 ]
  store i8 48, i8* %292, align 1, !tbaa !21
  %293 = getelementptr inbounds i8, i8* %292, i64 -1
  %294 = load i8, i8* %293, align 1, !tbaa !21
  %295 = icmp eq i8 %294, 57
  br i1 %295, label %291, label %296, !llvm.loop !31

296:                                              ; preds = %291, %276
  %297 = phi i8* [ %288, %276 ], [ %293, %291 ]
  %298 = phi i8 [ %289, %276 ], [ %294, %291 ]
  %299 = add i8 %298, 1
  store i8 %299, i8* %297, align 1, !tbaa !21
  %300 = icmp ult i8* %284, %297
  %301 = select i1 %300, i8* %284, i8* %297
  br i1 %282, label %302, label %305

302:                                              ; preds = %296
  %303 = getelementptr inbounds i8, i8* %297, i64 -1
  %304 = select i1 %300, i8* %287, i8* %303
  store i8 45, i8* %304, align 1, !tbaa !21
  br label %305

305:                                              ; preds = %296, %302
  %306 = phi i8* [ %304, %302 ], [ %301, %296 ]
  %307 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %306) #33
  %308 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %309 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %17) #33
  %310 = load i8, i8* %17, align 1, !tbaa !21
  %311 = icmp eq i8 %310, 45
  %312 = zext i1 %311 to i64
  %313 = getelementptr inbounds i8, i8* %17, i64 %312
  %314 = call i64 @strlen(i8* noundef nonnull %313) #34
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  %316 = getelementptr inbounds i8, i8* %313, i64 -1
  store i8 48, i8* %316, align 1, !tbaa !21
  %317 = getelementptr inbounds i8, i8* %315, i64 -1
  %318 = load i8, i8* %317, align 1, !tbaa !21
  %319 = icmp eq i8 %318, 57
  br i1 %319, label %320, label %325

320:                                              ; preds = %305, %320
  %321 = phi i8* [ %322, %320 ], [ %317, %305 ]
  store i8 48, i8* %321, align 1, !tbaa !21
  %322 = getelementptr inbounds i8, i8* %321, i64 -1
  %323 = load i8, i8* %322, align 1, !tbaa !21
  %324 = icmp eq i8 %323, 57
  br i1 %324, label %320, label %325, !llvm.loop !32

325:                                              ; preds = %320, %305
  %326 = phi i8* [ %317, %305 ], [ %322, %320 ]
  %327 = phi i8 [ %318, %305 ], [ %323, %320 ]
  %328 = add i8 %327, 1
  store i8 %328, i8* %326, align 1, !tbaa !21
  %329 = icmp ult i8* %313, %326
  %330 = select i1 %329, i8* %313, i8* %326
  br i1 %311, label %331, label %334

331:                                              ; preds = %325
  %332 = getelementptr inbounds i8, i8* %326, i64 -1
  %333 = select i1 %329, i8* %316, i8* %332
  store i8 45, i8* %333, align 1, !tbaa !21
  br label %334

334:                                              ; preds = %325, %331
  %335 = phi i8* [ %333, %331 ], [ %330, %325 ]
  %336 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef %335) #33
  %337 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33
  %338 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* noundef nonnull %17) #33
  %339 = load i8, i8* %17, align 1, !tbaa !21
  %340 = icmp eq i8 %339, 45
  %341 = zext i1 %340 to i64
  %342 = getelementptr inbounds i8, i8* %17, i64 %341
  %343 = call i64 @strlen(i8* noundef nonnull %342) #34
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  %345 = getelementptr inbounds i8, i8* %342, i64 -1
  store i8 48, i8* %345, align 1, !tbaa !21
  %346 = getelementptr inbounds i8, i8* %344, i64 -1
  %347 = load i8, i8* %346, align 1, !tbaa !21
  %348 = icmp eq i8 %347, 57
  br i1 %348, label %349, label %354

349:                                              ; preds = %334, %349
  %350 = phi i8* [ %351, %349 ], [ %346, %334 ]
  store i8 48, i8* %350, align 1, !tbaa !21
  %351 = getelementptr inbounds i8, i8* %350, i64 -1
  %352 = load i8, i8* %351, align 1, !tbaa !21
  %353 = icmp eq i8 %352, 57
  br i1 %353, label %349, label %354, !llvm.loop !33

354:                                              ; preds = %349, %334
  %355 = phi i8* [ %346, %334 ], [ %351, %349 ]
  %356 = phi i8 [ %347, %334 ], [ %352, %349 ]
  %357 = add i8 %356, 1
  store i8 %357, i8* %355, align 1, !tbaa !21
  %358 = icmp ult i8* %342, %355
  %359 = select i1 %358, i8* %342, i8* %355
  br i1 %340, label %360, label %363

360:                                              ; preds = %354
  %361 = getelementptr inbounds i8, i8* %355, i64 -1
  %362 = select i1 %358, i8* %345, i8* %361
  store i8 45, i8* %362, align 1, !tbaa !21
  br label %363

363:                                              ; preds = %354, %360
  %364 = phi i8* [ %362, %360 ], [ %359, %354 ]
  %365 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* noundef %364) #33
  %366 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33
  %367 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* noundef nonnull %17) #33
  %368 = load i8, i8* %17, align 1, !tbaa !21
  %369 = icmp eq i8 %368, 45
  %370 = zext i1 %369 to i64
  %371 = getelementptr inbounds i8, i8* %17, i64 %370
  %372 = call i64 @strlen(i8* noundef nonnull %371) #34
  %373 = getelementptr inbounds i8, i8* %371, i64 %372
  %374 = getelementptr inbounds i8, i8* %371, i64 -1
  store i8 48, i8* %374, align 1, !tbaa !21
  %375 = getelementptr inbounds i8, i8* %373, i64 -1
  %376 = load i8, i8* %375, align 1, !tbaa !21
  %377 = icmp eq i8 %376, 57
  br i1 %377, label %378, label %383

378:                                              ; preds = %363, %378
  %379 = phi i8* [ %380, %378 ], [ %375, %363 ]
  store i8 48, i8* %379, align 1, !tbaa !21
  %380 = getelementptr inbounds i8, i8* %379, i64 -1
  %381 = load i8, i8* %380, align 1, !tbaa !21
  %382 = icmp eq i8 %381, 57
  br i1 %382, label %378, label %383, !llvm.loop !34

383:                                              ; preds = %378, %363
  %384 = phi i8* [ %375, %363 ], [ %380, %378 ]
  %385 = phi i8 [ %376, %363 ], [ %381, %378 ]
  %386 = add i8 %385, 1
  store i8 %386, i8* %384, align 1, !tbaa !21
  %387 = icmp ult i8* %371, %384
  %388 = select i1 %387, i8* %371, i8* %384
  br i1 %369, label %389, label %392

389:                                              ; preds = %383
  %390 = getelementptr inbounds i8, i8* %384, i64 -1
  %391 = select i1 %387, i8* %374, i8* %390
  store i8 45, i8* %391, align 1, !tbaa !21
  br label %392

392:                                              ; preds = %383, %389
  %393 = phi i8* [ %391, %389 ], [ %388, %383 ]
  %394 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef %393) #33
  %395 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %396 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %17) #33
  %397 = load i8, i8* %17, align 1, !tbaa !21
  %398 = icmp eq i8 %397, 45
  %399 = zext i1 %398 to i64
  %400 = getelementptr inbounds i8, i8* %17, i64 %399
  %401 = call i64 @strlen(i8* noundef nonnull %400) #34
  %402 = getelementptr inbounds i8, i8* %400, i64 %401
  %403 = getelementptr inbounds i8, i8* %400, i64 -1
  store i8 48, i8* %403, align 1, !tbaa !21
  %404 = getelementptr inbounds i8, i8* %402, i64 -1
  %405 = load i8, i8* %404, align 1, !tbaa !21
  %406 = icmp eq i8 %405, 57
  br i1 %406, label %407, label %412

407:                                              ; preds = %392, %407
  %408 = phi i8* [ %409, %407 ], [ %404, %392 ]
  store i8 48, i8* %408, align 1, !tbaa !21
  %409 = getelementptr inbounds i8, i8* %408, i64 -1
  %410 = load i8, i8* %409, align 1, !tbaa !21
  %411 = icmp eq i8 %410, 57
  br i1 %411, label %407, label %412, !llvm.loop !35

412:                                              ; preds = %407, %392
  %413 = phi i8* [ %404, %392 ], [ %409, %407 ]
  %414 = phi i8 [ %405, %392 ], [ %410, %407 ]
  %415 = add i8 %414, 1
  store i8 %415, i8* %413, align 1, !tbaa !21
  %416 = icmp ult i8* %400, %413
  %417 = select i1 %416, i8* %400, i8* %413
  br i1 %398, label %418, label %421

418:                                              ; preds = %412
  %419 = getelementptr inbounds i8, i8* %413, i64 -1
  %420 = select i1 %416, i8* %403, i8* %419
  store i8 45, i8* %420, align 1, !tbaa !21
  br label %421

421:                                              ; preds = %412, %418
  %422 = phi i8* [ %420, %418 ], [ %417, %412 ]
  %423 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %422) #33
  %424 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %425 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* noundef nonnull %17) #33
  %426 = load i8, i8* %17, align 1, !tbaa !21
  %427 = icmp eq i8 %426, 45
  %428 = zext i1 %427 to i64
  %429 = getelementptr inbounds i8, i8* %17, i64 %428
  %430 = call i64 @strlen(i8* noundef nonnull %429) #34
  %431 = getelementptr inbounds i8, i8* %429, i64 %430
  %432 = getelementptr inbounds i8, i8* %429, i64 -1
  store i8 48, i8* %432, align 1, !tbaa !21
  %433 = getelementptr inbounds i8, i8* %431, i64 -1
  %434 = load i8, i8* %433, align 1, !tbaa !21
  %435 = icmp eq i8 %434, 57
  br i1 %435, label %436, label %441

436:                                              ; preds = %421, %436
  %437 = phi i8* [ %438, %436 ], [ %433, %421 ]
  store i8 48, i8* %437, align 1, !tbaa !21
  %438 = getelementptr inbounds i8, i8* %437, i64 -1
  %439 = load i8, i8* %438, align 1, !tbaa !21
  %440 = icmp eq i8 %439, 57
  br i1 %440, label %436, label %441, !llvm.loop !36

441:                                              ; preds = %436, %421
  %442 = phi i8* [ %433, %421 ], [ %438, %436 ]
  %443 = phi i8 [ %434, %421 ], [ %439, %436 ]
  %444 = add i8 %443, 1
  store i8 %444, i8* %442, align 1, !tbaa !21
  %445 = icmp ult i8* %429, %442
  %446 = select i1 %445, i8* %429, i8* %442
  br i1 %427, label %447, label %450

447:                                              ; preds = %441
  %448 = getelementptr inbounds i8, i8* %442, i64 -1
  %449 = select i1 %445, i8* %432, i8* %448
  store i8 45, i8* %449, align 1, !tbaa !21
  br label %450

450:                                              ; preds = %441, %447
  %451 = phi i8* [ %449, %447 ], [ %446, %441 ]
  %452 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef %451) #33
  %453 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %454 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %17) #33
  %455 = load i8, i8* %17, align 1, !tbaa !21
  %456 = icmp eq i8 %455, 45
  %457 = zext i1 %456 to i64
  %458 = getelementptr inbounds i8, i8* %17, i64 %457
  %459 = call i64 @strlen(i8* noundef nonnull %458) #34
  %460 = getelementptr inbounds i8, i8* %458, i64 %459
  %461 = getelementptr inbounds i8, i8* %458, i64 -1
  store i8 48, i8* %461, align 1, !tbaa !21
  %462 = getelementptr inbounds i8, i8* %460, i64 -1
  %463 = load i8, i8* %462, align 1, !tbaa !21
  %464 = icmp eq i8 %463, 57
  br i1 %464, label %465, label %470

465:                                              ; preds = %450, %465
  %466 = phi i8* [ %467, %465 ], [ %462, %450 ]
  store i8 48, i8* %466, align 1, !tbaa !21
  %467 = getelementptr inbounds i8, i8* %466, i64 -1
  %468 = load i8, i8* %467, align 1, !tbaa !21
  %469 = icmp eq i8 %468, 57
  br i1 %469, label %465, label %470, !llvm.loop !37

470:                                              ; preds = %465, %450
  %471 = phi i8* [ %462, %450 ], [ %467, %465 ]
  %472 = phi i8 [ %463, %450 ], [ %468, %465 ]
  %473 = add i8 %472, 1
  store i8 %473, i8* %471, align 1, !tbaa !21
  %474 = icmp ult i8* %458, %471
  %475 = select i1 %474, i8* %458, i8* %471
  br i1 %456, label %476, label %479

476:                                              ; preds = %470
  %477 = getelementptr inbounds i8, i8* %471, i64 -1
  %478 = select i1 %474, i8* %461, i8* %477
  store i8 45, i8* %478, align 1, !tbaa !21
  br label %479

479:                                              ; preds = %470, %476
  %480 = phi i8* [ %478, %476 ], [ %475, %470 ]
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef %480) #33
  %482 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %483 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %17) #33
  %484 = load i8, i8* %17, align 1, !tbaa !21
  %485 = icmp eq i8 %484, 45
  %486 = zext i1 %485 to i64
  %487 = getelementptr inbounds i8, i8* %17, i64 %486
  %488 = call i64 @strlen(i8* noundef nonnull %487) #34
  %489 = getelementptr inbounds i8, i8* %487, i64 %488
  %490 = getelementptr inbounds i8, i8* %487, i64 -1
  store i8 48, i8* %490, align 1, !tbaa !21
  %491 = getelementptr inbounds i8, i8* %489, i64 -1
  %492 = load i8, i8* %491, align 1, !tbaa !21
  %493 = icmp eq i8 %492, 57
  br i1 %493, label %494, label %499

494:                                              ; preds = %479, %494
  %495 = phi i8* [ %496, %494 ], [ %491, %479 ]
  store i8 48, i8* %495, align 1, !tbaa !21
  %496 = getelementptr inbounds i8, i8* %495, i64 -1
  %497 = load i8, i8* %496, align 1, !tbaa !21
  %498 = icmp eq i8 %497, 57
  br i1 %498, label %494, label %499, !llvm.loop !38

499:                                              ; preds = %494, %479
  %500 = phi i8* [ %491, %479 ], [ %496, %494 ]
  %501 = phi i8 [ %492, %479 ], [ %497, %494 ]
  %502 = add i8 %501, 1
  store i8 %502, i8* %500, align 1, !tbaa !21
  %503 = icmp ult i8* %487, %500
  %504 = select i1 %503, i8* %487, i8* %500
  br i1 %485, label %505, label %508

505:                                              ; preds = %499
  %506 = getelementptr inbounds i8, i8* %500, i64 -1
  %507 = select i1 %503, i8* %490, i8* %506
  store i8 45, i8* %507, align 1, !tbaa !21
  br label %508

508:                                              ; preds = %499, %505
  %509 = phi i8* [ %507, %505 ], [ %504, %499 ]
  %510 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef %509) #33
  %511 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33
  %512 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %17) #33
  %513 = load i8, i8* %17, align 1, !tbaa !21
  %514 = icmp eq i8 %513, 45
  %515 = zext i1 %514 to i64
  %516 = getelementptr inbounds i8, i8* %17, i64 %515
  %517 = call i64 @strlen(i8* noundef nonnull %516) #34
  %518 = getelementptr inbounds i8, i8* %516, i64 %517
  %519 = getelementptr inbounds i8, i8* %516, i64 -1
  store i8 48, i8* %519, align 1, !tbaa !21
  %520 = getelementptr inbounds i8, i8* %518, i64 -1
  %521 = load i8, i8* %520, align 1, !tbaa !21
  %522 = icmp eq i8 %521, 57
  br i1 %522, label %523, label %528

523:                                              ; preds = %508, %523
  %524 = phi i8* [ %525, %523 ], [ %520, %508 ]
  store i8 48, i8* %524, align 1, !tbaa !21
  %525 = getelementptr inbounds i8, i8* %524, i64 -1
  %526 = load i8, i8* %525, align 1, !tbaa !21
  %527 = icmp eq i8 %526, 57
  br i1 %527, label %523, label %528, !llvm.loop !39

528:                                              ; preds = %523, %508
  %529 = phi i8* [ %520, %508 ], [ %525, %523 ]
  %530 = phi i8 [ %521, %508 ], [ %526, %523 ]
  %531 = add i8 %530, 1
  store i8 %531, i8* %529, align 1, !tbaa !21
  %532 = icmp ult i8* %516, %529
  %533 = select i1 %532, i8* %516, i8* %529
  br i1 %514, label %534, label %537

534:                                              ; preds = %528
  %535 = getelementptr inbounds i8, i8* %529, i64 -1
  %536 = select i1 %532, i8* %519, i8* %535
  store i8 45, i8* %536, align 1, !tbaa !21
  br label %537

537:                                              ; preds = %528, %534
  %538 = phi i8* [ %536, %534 ], [ %533, %528 ]
  %539 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %538) #33
  %540 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #33
  %541 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %17) #33
  %542 = load i8, i8* %17, align 1, !tbaa !21
  %543 = icmp eq i8 %542, 45
  %544 = zext i1 %543 to i64
  %545 = getelementptr inbounds i8, i8* %17, i64 %544
  %546 = call i64 @strlen(i8* noundef nonnull %545) #34
  %547 = getelementptr inbounds i8, i8* %545, i64 %546
  %548 = getelementptr inbounds i8, i8* %545, i64 -1
  store i8 48, i8* %548, align 1, !tbaa !21
  %549 = getelementptr inbounds i8, i8* %547, i64 -1
  %550 = load i8, i8* %549, align 1, !tbaa !21
  %551 = icmp eq i8 %550, 57
  br i1 %551, label %552, label %557

552:                                              ; preds = %537, %552
  %553 = phi i8* [ %554, %552 ], [ %549, %537 ]
  store i8 48, i8* %553, align 1, !tbaa !21
  %554 = getelementptr inbounds i8, i8* %553, i64 -1
  %555 = load i8, i8* %554, align 1, !tbaa !21
  %556 = icmp eq i8 %555, 57
  br i1 %556, label %552, label %557, !llvm.loop !40

557:                                              ; preds = %552, %537
  %558 = phi i8* [ %549, %537 ], [ %554, %552 ]
  %559 = phi i8 [ %550, %537 ], [ %555, %552 ]
  %560 = add i8 %559, 1
  store i8 %560, i8* %558, align 1, !tbaa !21
  %561 = icmp ult i8* %545, %558
  %562 = select i1 %561, i8* %545, i8* %558
  br i1 %543, label %563, label %566

563:                                              ; preds = %557
  %564 = getelementptr inbounds i8, i8* %558, i64 -1
  %565 = select i1 %561, i8* %548, i8* %564
  store i8 45, i8* %565, align 1, !tbaa !21
  br label %566

566:                                              ; preds = %557, %563
  %567 = phi i8* [ %565, %563 ], [ %562, %557 ]
  %568 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef %567) #33
  %569 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #33
  %570 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* noundef nonnull %17) #33
  %571 = load i8, i8* %17, align 1, !tbaa !21
  %572 = icmp eq i8 %571, 45
  %573 = zext i1 %572 to i64
  %574 = getelementptr inbounds i8, i8* %17, i64 %573
  %575 = call i64 @strlen(i8* noundef nonnull %574) #34
  %576 = getelementptr inbounds i8, i8* %574, i64 %575
  %577 = getelementptr inbounds i8, i8* %574, i64 -1
  store i8 48, i8* %577, align 1, !tbaa !21
  %578 = getelementptr inbounds i8, i8* %576, i64 -1
  %579 = load i8, i8* %578, align 1, !tbaa !21
  %580 = icmp eq i8 %579, 57
  br i1 %580, label %581, label %586

581:                                              ; preds = %566, %581
  %582 = phi i8* [ %583, %581 ], [ %578, %566 ]
  store i8 48, i8* %582, align 1, !tbaa !21
  %583 = getelementptr inbounds i8, i8* %582, i64 -1
  %584 = load i8, i8* %583, align 1, !tbaa !21
  %585 = icmp eq i8 %584, 57
  br i1 %585, label %581, label %586, !llvm.loop !41

586:                                              ; preds = %581, %566
  %587 = phi i8* [ %578, %566 ], [ %583, %581 ]
  %588 = phi i8 [ %579, %566 ], [ %584, %581 ]
  %589 = add i8 %588, 1
  store i8 %589, i8* %587, align 1, !tbaa !21
  %590 = icmp ult i8* %574, %587
  %591 = select i1 %590, i8* %574, i8* %587
  br i1 %572, label %592, label %595

592:                                              ; preds = %586
  %593 = getelementptr inbounds i8, i8* %587, i64 -1
  %594 = select i1 %590, i8* %577, i8* %593
  store i8 45, i8* %594, align 1, !tbaa !21
  br label %595

595:                                              ; preds = %586, %592
  %596 = phi i8* [ %594, %592 ], [ %591, %586 ]
  %597 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* noundef %596) #33
  %598 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #33
  %599 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %17) #33
  %600 = load i8, i8* %17, align 1, !tbaa !21
  %601 = icmp eq i8 %600, 45
  %602 = zext i1 %601 to i64
  %603 = getelementptr inbounds i8, i8* %17, i64 %602
  %604 = call i64 @strlen(i8* noundef nonnull %603) #34
  %605 = getelementptr inbounds i8, i8* %603, i64 %604
  %606 = getelementptr inbounds i8, i8* %603, i64 -1
  store i8 48, i8* %606, align 1, !tbaa !21
  %607 = getelementptr inbounds i8, i8* %605, i64 -1
  %608 = load i8, i8* %607, align 1, !tbaa !21
  %609 = icmp eq i8 %608, 57
  br i1 %609, label %610, label %615

610:                                              ; preds = %595, %610
  %611 = phi i8* [ %612, %610 ], [ %607, %595 ]
  store i8 48, i8* %611, align 1, !tbaa !21
  %612 = getelementptr inbounds i8, i8* %611, i64 -1
  %613 = load i8, i8* %612, align 1, !tbaa !21
  %614 = icmp eq i8 %613, 57
  br i1 %614, label %610, label %615, !llvm.loop !42

615:                                              ; preds = %610, %595
  %616 = phi i8* [ %607, %595 ], [ %612, %610 ]
  %617 = phi i8 [ %608, %595 ], [ %613, %610 ]
  %618 = add i8 %617, 1
  store i8 %618, i8* %616, align 1, !tbaa !21
  %619 = icmp ult i8* %603, %616
  %620 = select i1 %619, i8* %603, i8* %616
  br i1 %601, label %621, label %624

621:                                              ; preds = %615
  %622 = getelementptr inbounds i8, i8* %616, i64 -1
  %623 = select i1 %619, i8* %606, i8* %622
  store i8 45, i8* %623, align 1, !tbaa !21
  br label %624

624:                                              ; preds = %615, %621
  %625 = phi i8* [ %623, %621 ], [ %620, %615 ]
  %626 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* noundef %625) #33
  %627 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %628 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %17) #33
  %629 = load i8, i8* %17, align 1, !tbaa !21
  %630 = icmp eq i8 %629, 45
  %631 = zext i1 %630 to i64
  %632 = getelementptr inbounds i8, i8* %17, i64 %631
  %633 = call i64 @strlen(i8* noundef nonnull %632) #34
  %634 = getelementptr inbounds i8, i8* %632, i64 %633
  %635 = getelementptr inbounds i8, i8* %632, i64 -1
  store i8 48, i8* %635, align 1, !tbaa !21
  %636 = getelementptr inbounds i8, i8* %634, i64 -1
  %637 = load i8, i8* %636, align 1, !tbaa !21
  %638 = icmp eq i8 %637, 57
  br i1 %638, label %639, label %644

639:                                              ; preds = %624, %639
  %640 = phi i8* [ %641, %639 ], [ %636, %624 ]
  store i8 48, i8* %640, align 1, !tbaa !21
  %641 = getelementptr inbounds i8, i8* %640, i64 -1
  %642 = load i8, i8* %641, align 1, !tbaa !21
  %643 = icmp eq i8 %642, 57
  br i1 %643, label %639, label %644, !llvm.loop !43

644:                                              ; preds = %639, %624
  %645 = phi i8* [ %636, %624 ], [ %641, %639 ]
  %646 = phi i8 [ %637, %624 ], [ %642, %639 ]
  %647 = add i8 %646, 1
  store i8 %647, i8* %645, align 1, !tbaa !21
  %648 = icmp ult i8* %632, %645
  %649 = select i1 %648, i8* %632, i8* %645
  br i1 %630, label %650, label %653

650:                                              ; preds = %644
  %651 = getelementptr inbounds i8, i8* %645, i64 -1
  %652 = select i1 %648, i8* %635, i8* %651
  store i8 45, i8* %652, align 1, !tbaa !21
  br label %653

653:                                              ; preds = %644, %650
  %654 = phi i8* [ %652, %650 ], [ %649, %644 ]
  %655 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* noundef %654) #33
  %656 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %657 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* noundef nonnull %17) #33
  %658 = load i8, i8* %17, align 1, !tbaa !21
  %659 = icmp eq i8 %658, 45
  %660 = zext i1 %659 to i64
  %661 = getelementptr inbounds i8, i8* %17, i64 %660
  %662 = call i64 @strlen(i8* noundef nonnull %661) #34
  %663 = getelementptr inbounds i8, i8* %661, i64 %662
  %664 = getelementptr inbounds i8, i8* %661, i64 -1
  store i8 48, i8* %664, align 1, !tbaa !21
  %665 = getelementptr inbounds i8, i8* %663, i64 -1
  %666 = load i8, i8* %665, align 1, !tbaa !21
  %667 = icmp eq i8 %666, 57
  br i1 %667, label %668, label %673

668:                                              ; preds = %653, %668
  %669 = phi i8* [ %670, %668 ], [ %665, %653 ]
  store i8 48, i8* %669, align 1, !tbaa !21
  %670 = getelementptr inbounds i8, i8* %669, i64 -1
  %671 = load i8, i8* %670, align 1, !tbaa !21
  %672 = icmp eq i8 %671, 57
  br i1 %672, label %668, label %673, !llvm.loop !44

673:                                              ; preds = %668, %653
  %674 = phi i8* [ %665, %653 ], [ %670, %668 ]
  %675 = phi i8 [ %666, %653 ], [ %671, %668 ]
  %676 = add i8 %675, 1
  store i8 %676, i8* %674, align 1, !tbaa !21
  %677 = icmp ult i8* %661, %674
  %678 = select i1 %677, i8* %661, i8* %674
  br i1 %659, label %679, label %682

679:                                              ; preds = %673
  %680 = getelementptr inbounds i8, i8* %674, i64 -1
  %681 = select i1 %677, i8* %664, i8* %680
  store i8 45, i8* %681, align 1, !tbaa !21
  br label %682

682:                                              ; preds = %673, %679
  %683 = phi i8* [ %681, %679 ], [ %678, %673 ]
  %684 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef %683) #33
  %685 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %686 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %17) #33
  %687 = load i8, i8* %17, align 1, !tbaa !21
  %688 = icmp eq i8 %687, 45
  %689 = zext i1 %688 to i64
  %690 = getelementptr inbounds i8, i8* %17, i64 %689
  %691 = call i64 @strlen(i8* noundef nonnull %690) #34
  %692 = getelementptr inbounds i8, i8* %690, i64 %691
  %693 = getelementptr inbounds i8, i8* %690, i64 -1
  store i8 48, i8* %693, align 1, !tbaa !21
  %694 = getelementptr inbounds i8, i8* %692, i64 -1
  %695 = load i8, i8* %694, align 1, !tbaa !21
  %696 = icmp eq i8 %695, 57
  br i1 %696, label %697, label %702

697:                                              ; preds = %682, %697
  %698 = phi i8* [ %699, %697 ], [ %694, %682 ]
  store i8 48, i8* %698, align 1, !tbaa !21
  %699 = getelementptr inbounds i8, i8* %698, i64 -1
  %700 = load i8, i8* %699, align 1, !tbaa !21
  %701 = icmp eq i8 %700, 57
  br i1 %701, label %697, label %702, !llvm.loop !45

702:                                              ; preds = %697, %682
  %703 = phi i8* [ %694, %682 ], [ %699, %697 ]
  %704 = phi i8 [ %695, %682 ], [ %700, %697 ]
  %705 = add i8 %704, 1
  store i8 %705, i8* %703, align 1, !tbaa !21
  %706 = icmp ult i8* %690, %703
  %707 = select i1 %706, i8* %690, i8* %703
  br i1 %688, label %708, label %711

708:                                              ; preds = %702
  %709 = getelementptr inbounds i8, i8* %703, i64 -1
  %710 = select i1 %706, i8* %693, i8* %709
  store i8 45, i8* %710, align 1, !tbaa !21
  br label %711

711:                                              ; preds = %702, %708
  %712 = phi i8* [ %710, %708 ], [ %707, %702 ]
  %713 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef %712) #33
  %714 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %715 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef nonnull %17) #33
  %716 = load i8, i8* %17, align 1, !tbaa !21
  %717 = icmp eq i8 %716, 45
  %718 = zext i1 %717 to i64
  %719 = getelementptr inbounds i8, i8* %17, i64 %718
  %720 = call i64 @strlen(i8* noundef nonnull %719) #34
  %721 = getelementptr inbounds i8, i8* %719, i64 %720
  %722 = getelementptr inbounds i8, i8* %719, i64 -1
  store i8 48, i8* %722, align 1, !tbaa !21
  %723 = getelementptr inbounds i8, i8* %721, i64 -1
  %724 = load i8, i8* %723, align 1, !tbaa !21
  %725 = icmp eq i8 %724, 57
  br i1 %725, label %726, label %731

726:                                              ; preds = %711, %726
  %727 = phi i8* [ %728, %726 ], [ %723, %711 ]
  store i8 48, i8* %727, align 1, !tbaa !21
  %728 = getelementptr inbounds i8, i8* %727, i64 -1
  %729 = load i8, i8* %728, align 1, !tbaa !21
  %730 = icmp eq i8 %729, 57
  br i1 %730, label %726, label %731, !llvm.loop !46

731:                                              ; preds = %726, %711
  %732 = phi i8* [ %723, %711 ], [ %728, %726 ]
  %733 = phi i8 [ %724, %711 ], [ %729, %726 ]
  %734 = add i8 %733, 1
  store i8 %734, i8* %732, align 1, !tbaa !21
  %735 = icmp ult i8* %719, %732
  %736 = select i1 %735, i8* %719, i8* %732
  br i1 %717, label %737, label %740

737:                                              ; preds = %731
  %738 = getelementptr inbounds i8, i8* %732, i64 -1
  %739 = select i1 %735, i8* %722, i8* %738
  store i8 45, i8* %739, align 1, !tbaa !21
  br label %740

740:                                              ; preds = %731, %737
  %741 = phi i8* [ %739, %737 ], [ %736, %731 ]
  %742 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8* noundef %741) #33
  %743 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #33
  %744 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* noundef nonnull %17) #33
  %745 = load i8, i8* %17, align 1, !tbaa !21
  %746 = icmp eq i8 %745, 45
  %747 = zext i1 %746 to i64
  %748 = getelementptr inbounds i8, i8* %17, i64 %747
  %749 = call i64 @strlen(i8* noundef nonnull %748) #34
  %750 = getelementptr inbounds i8, i8* %748, i64 %749
  %751 = getelementptr inbounds i8, i8* %748, i64 -1
  store i8 48, i8* %751, align 1, !tbaa !21
  %752 = getelementptr inbounds i8, i8* %750, i64 -1
  %753 = load i8, i8* %752, align 1, !tbaa !21
  %754 = icmp eq i8 %753, 57
  br i1 %754, label %755, label %760

755:                                              ; preds = %740, %755
  %756 = phi i8* [ %757, %755 ], [ %752, %740 ]
  store i8 48, i8* %756, align 1, !tbaa !21
  %757 = getelementptr inbounds i8, i8* %756, i64 -1
  %758 = load i8, i8* %757, align 1, !tbaa !21
  %759 = icmp eq i8 %758, 57
  br i1 %759, label %755, label %760, !llvm.loop !47

760:                                              ; preds = %755, %740
  %761 = phi i8* [ %752, %740 ], [ %757, %755 ]
  %762 = phi i8 [ %753, %740 ], [ %758, %755 ]
  %763 = add i8 %762, 1
  store i8 %763, i8* %761, align 1, !tbaa !21
  %764 = icmp ult i8* %748, %761
  %765 = select i1 %764, i8* %748, i8* %761
  br i1 %746, label %766, label %769

766:                                              ; preds = %760
  %767 = getelementptr inbounds i8, i8* %761, i64 -1
  %768 = select i1 %764, i8* %751, i8* %767
  store i8 45, i8* %768, align 1, !tbaa !21
  br label %769

769:                                              ; preds = %760, %766
  %770 = phi i8* [ %768, %766 ], [ %765, %760 ]
  %771 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %770) #33
  %772 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #33
  %773 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %17) #33
  %774 = load i8, i8* %17, align 1, !tbaa !21
  %775 = icmp eq i8 %774, 45
  %776 = zext i1 %775 to i64
  %777 = getelementptr inbounds i8, i8* %17, i64 %776
  %778 = call i64 @strlen(i8* noundef nonnull %777) #34
  %779 = getelementptr inbounds i8, i8* %777, i64 %778
  %780 = getelementptr inbounds i8, i8* %777, i64 -1
  store i8 48, i8* %780, align 1, !tbaa !21
  %781 = getelementptr inbounds i8, i8* %779, i64 -1
  %782 = load i8, i8* %781, align 1, !tbaa !21
  %783 = icmp eq i8 %782, 57
  br i1 %783, label %784, label %789

784:                                              ; preds = %769, %784
  %785 = phi i8* [ %786, %784 ], [ %781, %769 ]
  store i8 48, i8* %785, align 1, !tbaa !21
  %786 = getelementptr inbounds i8, i8* %785, i64 -1
  %787 = load i8, i8* %786, align 1, !tbaa !21
  %788 = icmp eq i8 %787, 57
  br i1 %788, label %784, label %789, !llvm.loop !48

789:                                              ; preds = %784, %769
  %790 = phi i8* [ %781, %769 ], [ %786, %784 ]
  %791 = phi i8 [ %782, %769 ], [ %787, %784 ]
  %792 = add i8 %791, 1
  store i8 %792, i8* %790, align 1, !tbaa !21
  %793 = icmp ult i8* %777, %790
  %794 = select i1 %793, i8* %777, i8* %790
  br i1 %775, label %795, label %798

795:                                              ; preds = %789
  %796 = getelementptr inbounds i8, i8* %790, i64 -1
  %797 = select i1 %793, i8* %780, i8* %796
  store i8 45, i8* %797, align 1, !tbaa !21
  br label %798

798:                                              ; preds = %789, %795
  %799 = phi i8* [ %797, %795 ], [ %794, %789 ]
  %800 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i8* noundef %799) #33
  %801 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #33
  %802 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* noundef nonnull %17) #33
  %803 = load i8, i8* %17, align 1, !tbaa !21
  %804 = icmp eq i8 %803, 45
  %805 = zext i1 %804 to i64
  %806 = getelementptr inbounds i8, i8* %17, i64 %805
  %807 = call i64 @strlen(i8* noundef nonnull %806) #34
  %808 = getelementptr inbounds i8, i8* %806, i64 %807
  %809 = getelementptr inbounds i8, i8* %806, i64 -1
  store i8 48, i8* %809, align 1, !tbaa !21
  %810 = getelementptr inbounds i8, i8* %808, i64 -1
  %811 = load i8, i8* %810, align 1, !tbaa !21
  %812 = icmp eq i8 %811, 57
  br i1 %812, label %813, label %818

813:                                              ; preds = %798, %813
  %814 = phi i8* [ %815, %813 ], [ %810, %798 ]
  store i8 48, i8* %814, align 1, !tbaa !21
  %815 = getelementptr inbounds i8, i8* %814, i64 -1
  %816 = load i8, i8* %815, align 1, !tbaa !21
  %817 = icmp eq i8 %816, 57
  br i1 %817, label %813, label %818, !llvm.loop !49

818:                                              ; preds = %813, %798
  %819 = phi i8* [ %810, %798 ], [ %815, %813 ]
  %820 = phi i8 [ %811, %798 ], [ %816, %813 ]
  %821 = add i8 %820, 1
  store i8 %821, i8* %819, align 1, !tbaa !21
  %822 = icmp ult i8* %806, %819
  %823 = select i1 %822, i8* %806, i8* %819
  br i1 %804, label %824, label %827

824:                                              ; preds = %818
  %825 = getelementptr inbounds i8, i8* %819, i64 -1
  %826 = select i1 %822, i8* %809, i8* %825
  store i8 45, i8* %826, align 1, !tbaa !21
  br label %827

827:                                              ; preds = %818, %824
  %828 = phi i8* [ %826, %824 ], [ %823, %818 ]
  %829 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8* noundef %828) #33
  %830 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)) #33
  %831 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %831) #33
  %832 = call i32 @ftoastr(i8* noundef nonnull %831, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef 0x3810000000000000) #33
  %833 = call i32 @puts(i8* noundef nonnull %831) #33
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %831) #33
  %834 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0)) #33
  %835 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %835) #33
  %836 = call i32 @ftoastr(i8* noundef nonnull %835, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef 0x47EFFFFFE0000000) #33
  %837 = call i32 @puts(i8* noundef nonnull %835) #33
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %835) #33
  %838 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0)) #33
  %839 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %839) #33
  %840 = call i32 @dtoastr(i8* noundef nonnull %839, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef 0x10000000000000) #33
  %841 = call i32 @puts(i8* noundef nonnull %839) #33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %839) #33
  %842 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0)) #33
  %843 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %843) #33
  %844 = call i32 @dtoastr(i8* noundef nonnull %843, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef 0x7FEFFFFFFFFFFFFF) #33
  %845 = call i32 @puts(i8* noundef nonnull %843) #33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %843) #33
  %846 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i64 0, i64 0)) #33
  %847 = getelementptr inbounds [60 x i8], [60 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %847) #33
  %848 = call i32 @ldtoastr(i8* noundef nonnull %847, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef 0xL00000000000000000001000000000000) #33
  %849 = call i32 @puts(i8* noundef nonnull %847) #33
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %847) #33
  %850 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0)) #33
  %851 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %851) #33
  %852 = call i32 @ldtoastr(i8* noundef nonnull %851, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef 0xLFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFF) #33
  %853 = call i32 @puts(i8* noundef nonnull %851) #33
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %851) #33
  %854 = call i32 @__libc_current_sigrtmin() #33
  %855 = sext i32 %854 to i64
  %856 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i64 noundef %855) #33
  %857 = call i32 @__libc_current_sigrtmax() #33
  %858 = sext i32 %857 to i64
  %859 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i64 noundef %858) #33
  %860 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i64 noundef 262144) #33
  call void @errno_iterate(i32 (i8*, i32)* noundef nonnull @print_errno, i8* noundef null) #33
  %861 = call i8* @strerror(i32 noundef 95) #33
  %862 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %861) #33
  %863 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i8* noundef %862) #33
  %864 = call i8* @strerror(i32 noundef 11) #33
  %865 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %864) #33
  %866 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* noundef %865) #33
  %867 = call i8* @strerror(i32 noundef 35) #33
  %868 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %867) #33
  %869 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i8* noundef %868) #33
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %10) #33
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @print_errno(i8* noundef %0, i32 noundef %1) #9 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i8* @strerrorname_np(i32 noundef %1) #33
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2, %4
  %8 = phi i8* [ %5, %4 ], [ %0, %2 ]
  %9 = tail call i8* @strerror(i32 noundef %1) #33
  %10 = tail call i8* @quotearg_style(i32 noundef 3, i8* noundef %9) #33
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %8, i8* noundef %10) #33
  br label %12

12:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strerrorname_np(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #11 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #9 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !50, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36
  %9 = load i32, i32* %8, align 4, !tbaa !53
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.94, i64 0, i64 0), i32 noundef 5) #33
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #36
  %16 = load i32, i32* %15, align 4, !tbaa !53
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.96, i64 0, i64 0), i8* noundef %12) #33
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !53
  tail call void @_exit(i32 noundef %21) #35
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !53
  tail call void @_exit(i32 noundef %27) #35
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @dtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #14 {
  %6 = alloca [11 x i8], align 4
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #33
  %8 = fcmp olt double %4, 0.000000e+00
  %9 = fneg double %4
  %10 = select i1 %8, double %9, double %4
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %7, align 4, !tbaa !21
  store i8 45, i8* %11, align 1, !tbaa !21
  %12 = and i32 %2, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 43, i8* %14, align 1, !tbaa !21
  %15 = lshr i32 %2, 1
  %16 = and i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 32, i8* %18, align 1, !tbaa !21
  %19 = lshr i32 %2, 2
  %20 = and i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 48, i8* %22, align 1, !tbaa !21
  %23 = lshr i32 %2, 3
  %24 = and i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 42, i8* %26, align 1, !tbaa !21
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 46, i8* %27, align 1, !tbaa !21
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 42, i8* %28, align 1, !tbaa !21
  %30 = and i32 %2, 16
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i8 103, i8 71
  %33 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %32, i8* %29, align 1, !tbaa !21
  store i8 0, i8* %33, align 1, !tbaa !21
  %34 = fcmp olt double %10, 0x10000000000000
  %35 = select i1 %34, i32 1, i32 15
  %36 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %35, double noundef %4) #33
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %5, %46
  %39 = phi i32 [ %48, %46 ], [ %36, %5 ]
  %40 = phi i32 [ %47, %46 ], [ %35, %5 ]
  %41 = zext i32 %39 to i64
  %42 = icmp ult i64 %41, %1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call double @strtod(i8* nocapture noundef %0, i8** noundef null) #33
  %45 = fcmp oeq double %44, %4
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %38
  %47 = add nuw nsw i32 %40, 1
  %48 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %47, double noundef %4) #33
  %49 = icmp slt i32 %48, 0
  %50 = icmp ugt i32 %40, 15
  %51 = or i1 %50, %49
  br i1 %51, label %52, label %38

52:                                               ; preds = %46, %43, %5
  %53 = phi i32 [ %36, %5 ], [ %39, %43 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #33
  ret i32 %53
}

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @errno_iterate(i32 (i8*, i32)* noundef readonly %0, i8* noundef %1) local_unnamed_addr #9 {
  %3 = tail call i32 %0(i8* noundef %1, i32 noundef 33) #33
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %394

5:                                                ; preds = %2
  %6 = tail call i32 %0(i8* noundef %1, i32 noundef 84) #33
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %394

8:                                                ; preds = %5
  %9 = tail call i32 %0(i8* noundef %1, i32 noundef 34) #33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %394

11:                                               ; preds = %8
  %12 = tail call i32 %0(i8* noundef %1, i32 noundef 7) #33
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %394

14:                                               ; preds = %11
  %15 = tail call i32 %0(i8* noundef %1, i32 noundef 13) #33
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %394

17:                                               ; preds = %14
  %18 = tail call i32 %0(i8* noundef %1, i32 noundef 98) #33
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %394

20:                                               ; preds = %17
  %21 = tail call i32 %0(i8* noundef %1, i32 noundef 99) #33
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %394

23:                                               ; preds = %20
  %24 = tail call i32 %0(i8* noundef %1, i32 noundef 97) #33
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %394

26:                                               ; preds = %23
  %27 = tail call i32 %0(i8* noundef %1, i32 noundef 11) #33
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %394

29:                                               ; preds = %26
  %30 = tail call i32 %0(i8* noundef %1, i32 noundef 114) #33
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %394

32:                                               ; preds = %29
  %33 = tail call i32 %0(i8* noundef %1, i32 noundef 9) #33
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %394

35:                                               ; preds = %32
  %36 = tail call i32 %0(i8* noundef %1, i32 noundef 74) #33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %394

38:                                               ; preds = %35
  %39 = tail call i32 %0(i8* noundef %1, i32 noundef 16) #33
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %394

41:                                               ; preds = %38
  %42 = tail call i32 %0(i8* noundef %1, i32 noundef 125) #33
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %394

44:                                               ; preds = %41
  %45 = tail call i32 %0(i8* noundef %1, i32 noundef 10) #33
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %394

47:                                               ; preds = %44
  %48 = tail call i32 %0(i8* noundef %1, i32 noundef 103) #33
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %394

50:                                               ; preds = %47
  %51 = tail call i32 %0(i8* noundef %1, i32 noundef 111) #33
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %394

53:                                               ; preds = %50
  %54 = tail call i32 %0(i8* noundef %1, i32 noundef 104) #33
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %394

56:                                               ; preds = %53
  %57 = tail call i32 %0(i8* noundef %1, i32 noundef 35) #33
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %394

59:                                               ; preds = %56
  %60 = tail call i32 %0(i8* noundef %1, i32 noundef 89) #33
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %394

62:                                               ; preds = %59
  %63 = tail call i32 %0(i8* noundef %1, i32 noundef 122) #33
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %394

65:                                               ; preds = %62
  %66 = tail call i32 %0(i8* noundef %1, i32 noundef 17) #33
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %394

68:                                               ; preds = %65
  %69 = tail call i32 %0(i8* noundef %1, i32 noundef 14) #33
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %394

71:                                               ; preds = %68
  %72 = tail call i32 %0(i8* noundef %1, i32 noundef 27) #33
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %394

74:                                               ; preds = %71
  %75 = tail call i32 %0(i8* noundef %1, i32 noundef 113) #33
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %394

77:                                               ; preds = %74
  %78 = tail call i32 %0(i8* noundef %1, i32 noundef 43) #33
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %394

80:                                               ; preds = %77
  %81 = tail call i32 %0(i8* noundef %1, i32 noundef 115) #33
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %394

83:                                               ; preds = %80
  %84 = tail call i32 %0(i8* noundef %1, i32 noundef 4) #33
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %394

86:                                               ; preds = %83
  %87 = tail call i32 %0(i8* noundef %1, i32 noundef 22) #33
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %394

89:                                               ; preds = %86
  %90 = tail call i32 %0(i8* noundef %1, i32 noundef 5) #33
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %394

92:                                               ; preds = %89
  %93 = tail call i32 %0(i8* noundef %1, i32 noundef 106) #33
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %394

95:                                               ; preds = %92
  %96 = tail call i32 %0(i8* noundef %1, i32 noundef 21) #33
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %394

98:                                               ; preds = %95
  %99 = tail call i32 %0(i8* noundef %1, i32 noundef 40) #33
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %394

101:                                              ; preds = %98
  %102 = tail call i32 %0(i8* noundef %1, i32 noundef 24) #33
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %394

104:                                              ; preds = %101
  %105 = tail call i32 %0(i8* noundef %1, i32 noundef 31) #33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %394

107:                                              ; preds = %104
  %108 = tail call i32 %0(i8* noundef %1, i32 noundef 90) #33
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %394

110:                                              ; preds = %107
  %111 = tail call i32 %0(i8* noundef %1, i32 noundef 72) #33
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %394

113:                                              ; preds = %110
  %114 = tail call i32 %0(i8* noundef %1, i32 noundef 36) #33
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %394

116:                                              ; preds = %113
  %117 = tail call i32 %0(i8* noundef %1, i32 noundef 100) #33
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %394

119:                                              ; preds = %116
  %120 = tail call i32 %0(i8* noundef %1, i32 noundef 102) #33
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %394

122:                                              ; preds = %119
  %123 = tail call i32 %0(i8* noundef %1, i32 noundef 101) #33
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %394

125:                                              ; preds = %122
  %126 = tail call i32 %0(i8* noundef %1, i32 noundef 23) #33
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %394

128:                                              ; preds = %125
  %129 = tail call i32 %0(i8* noundef %1, i32 noundef 105) #33
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %394

131:                                              ; preds = %128
  %132 = tail call i32 %0(i8* noundef %1, i32 noundef 61) #33
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %394

134:                                              ; preds = %131
  %135 = tail call i32 %0(i8* noundef %1, i32 noundef 19) #33
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %394

137:                                              ; preds = %134
  %138 = tail call i32 %0(i8* noundef %1, i32 noundef 2) #33
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %394

140:                                              ; preds = %137
  %141 = tail call i32 %0(i8* noundef %1, i32 noundef 8) #33
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %394

143:                                              ; preds = %140
  %144 = tail call i32 %0(i8* noundef %1, i32 noundef 37) #33
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %394

146:                                              ; preds = %143
  %147 = tail call i32 %0(i8* noundef %1, i32 noundef 67) #33
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %394

149:                                              ; preds = %146
  %150 = tail call i32 %0(i8* noundef %1, i32 noundef 12) #33
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %394

152:                                              ; preds = %149
  %153 = tail call i32 %0(i8* noundef %1, i32 noundef 42) #33
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %394

155:                                              ; preds = %152
  %156 = tail call i32 %0(i8* noundef %1, i32 noundef 92) #33
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %394

158:                                              ; preds = %155
  %159 = tail call i32 %0(i8* noundef %1, i32 noundef 28) #33
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %394

161:                                              ; preds = %158
  %162 = tail call i32 %0(i8* noundef %1, i32 noundef 63) #33
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %394

164:                                              ; preds = %161
  %165 = tail call i32 %0(i8* noundef %1, i32 noundef 60) #33
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %394

167:                                              ; preds = %164
  %168 = tail call i32 %0(i8* noundef %1, i32 noundef 38) #33
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %394

170:                                              ; preds = %167
  %171 = tail call i32 %0(i8* noundef %1, i32 noundef 107) #33
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %394

173:                                              ; preds = %170
  %174 = tail call i32 %0(i8* noundef %1, i32 noundef 20) #33
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %394

176:                                              ; preds = %173
  %177 = tail call i32 %0(i8* noundef %1, i32 noundef 39) #33
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %394

179:                                              ; preds = %176
  %180 = tail call i32 %0(i8* noundef %1, i32 noundef 131) #33
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %394

182:                                              ; preds = %179
  %183 = tail call i32 %0(i8* noundef %1, i32 noundef 88) #33
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %394

185:                                              ; preds = %182
  %186 = tail call i32 %0(i8* noundef %1, i32 noundef 25) #33
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %394

188:                                              ; preds = %185
  %189 = tail call i32 %0(i8* noundef %1, i32 noundef 6) #33
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %394

191:                                              ; preds = %188
  %192 = tail call i32 %0(i8* noundef %1, i32 noundef 95) #33
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %394

194:                                              ; preds = %191
  %195 = tail call i32 %0(i8* noundef %1, i32 noundef 75) #33
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %394

197:                                              ; preds = %194
  %198 = tail call i32 %0(i8* noundef %1, i32 noundef 130) #33
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %394

200:                                              ; preds = %197
  %201 = tail call i32 %0(i8* noundef %1, i32 noundef 1) #33
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %394

203:                                              ; preds = %200
  %204 = tail call i32 %0(i8* noundef %1, i32 noundef 32) #33
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %394

206:                                              ; preds = %203
  %207 = tail call i32 %0(i8* noundef %1, i32 noundef 71) #33
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %394

209:                                              ; preds = %206
  %210 = tail call i32 %0(i8* noundef %1, i32 noundef 93) #33
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %394

212:                                              ; preds = %209
  %213 = tail call i32 %0(i8* noundef %1, i32 noundef 91) #33
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %394

215:                                              ; preds = %212
  %216 = tail call i32 %0(i8* noundef %1, i32 noundef 30) #33
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %394

218:                                              ; preds = %215
  %219 = tail call i32 %0(i8* noundef %1, i32 noundef 94) #33
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %394

221:                                              ; preds = %218
  %222 = tail call i32 %0(i8* noundef %1, i32 noundef 29) #33
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %394

224:                                              ; preds = %221
  %225 = tail call i32 %0(i8* noundef %1, i32 noundef 3) #33
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %394

227:                                              ; preds = %224
  %228 = tail call i32 %0(i8* noundef %1, i32 noundef 116) #33
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %394

230:                                              ; preds = %227
  %231 = tail call i32 %0(i8* noundef %1, i32 noundef 62) #33
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %394

233:                                              ; preds = %230
  %234 = tail call i32 %0(i8* noundef %1, i32 noundef 110) #33
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %394

236:                                              ; preds = %233
  %237 = tail call i32 %0(i8* noundef %1, i32 noundef 26) #33
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %394

239:                                              ; preds = %236
  %240 = tail call i32 %0(i8* noundef %1, i32 noundef 18) #33
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %394

242:                                              ; preds = %239
  %243 = tail call i32 %0(i8* noundef %1, i32 noundef 68) #33
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %394

245:                                              ; preds = %242
  %246 = tail call i32 %0(i8* noundef %1, i32 noundef 52) #33
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %394

248:                                              ; preds = %245
  %249 = tail call i32 %0(i8* noundef %1, i32 noundef 77) #33
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %394

251:                                              ; preds = %248
  %252 = tail call i32 %0(i8* noundef %1, i32 noundef 53) #33
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %394

254:                                              ; preds = %251
  %255 = tail call i32 %0(i8* noundef %1, i32 noundef 56) #33
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %394

257:                                              ; preds = %254
  %258 = tail call i32 %0(i8* noundef %1, i32 noundef 57) #33
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %394

260:                                              ; preds = %257
  %261 = tail call i32 %0(i8* noundef %1, i32 noundef 59) #33
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %394

263:                                              ; preds = %260
  %264 = tail call i32 %0(i8* noundef %1, i32 noundef 44) #33
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %394

266:                                              ; preds = %263
  %267 = tail call i32 %0(i8* noundef %1, i32 noundef 70) #33
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %394

269:                                              ; preds = %266
  %270 = tail call i32 %0(i8* noundef %1, i32 noundef 73) #33
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %394

272:                                              ; preds = %269
  %273 = tail call i32 %0(i8* noundef %1, i32 noundef 112) #33
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %394

275:                                              ; preds = %272
  %276 = tail call i32 %0(i8* noundef %1, i32 noundef 133) #33
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %394

278:                                              ; preds = %275
  %279 = tail call i32 %0(i8* noundef %1, i32 noundef 120) #33
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %394

281:                                              ; preds = %278
  %282 = tail call i32 %0(i8* noundef %1, i32 noundef 127) #33
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %394

284:                                              ; preds = %281
  %285 = tail call i32 %0(i8* noundef %1, i32 noundef 129) #33
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %394

287:                                              ; preds = %284
  %288 = tail call i32 %0(i8* noundef %1, i32 noundef 128) #33
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %394

290:                                              ; preds = %287
  %291 = tail call i32 %0(i8* noundef %1, i32 noundef 51) #33
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %394

293:                                              ; preds = %290
  %294 = tail call i32 %0(i8* noundef %1, i32 noundef 45) #33
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %394

296:                                              ; preds = %293
  %297 = tail call i32 %0(i8* noundef %1, i32 noundef 46) #33
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %394

299:                                              ; preds = %296
  %300 = tail call i32 %0(i8* noundef %1, i32 noundef 47) #33
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %394

302:                                              ; preds = %299
  %303 = tail call i32 %0(i8* noundef %1, i32 noundef 79) #33
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %394

305:                                              ; preds = %302
  %306 = tail call i32 %0(i8* noundef %1, i32 noundef 80) #33
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %394

308:                                              ; preds = %305
  %309 = tail call i32 %0(i8* noundef %1, i32 noundef 83) #33
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %394

311:                                              ; preds = %308
  %312 = tail call i32 %0(i8* noundef %1, i32 noundef 82) #33
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %394

314:                                              ; preds = %311
  %315 = tail call i32 %0(i8* noundef %1, i32 noundef 81) #33
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %394

317:                                              ; preds = %314
  %318 = tail call i32 %0(i8* noundef %1, i32 noundef 48) #33
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %394

320:                                              ; preds = %317
  %321 = tail call i32 %0(i8* noundef %1, i32 noundef 124) #33
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %394

323:                                              ; preds = %320
  %324 = tail call i32 %0(i8* noundef %1, i32 noundef 119) #33
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %394

326:                                              ; preds = %323
  %327 = tail call i32 %0(i8* noundef %1, i32 noundef 55) #33
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %394

329:                                              ; preds = %326
  %330 = tail call i32 %0(i8* noundef %1, i32 noundef 50) #33
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %394

332:                                              ; preds = %329
  %333 = tail call i32 %0(i8* noundef %1, i32 noundef 126) #33
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %394

335:                                              ; preds = %332
  %336 = tail call i32 %0(i8* noundef %1, i32 noundef 123) #33
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %394

338:                                              ; preds = %335
  %339 = tail call i32 %0(i8* noundef %1, i32 noundef 64) #33
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %394

341:                                              ; preds = %338
  %342 = tail call i32 %0(i8* noundef %1, i32 noundef 65) #33
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %394

344:                                              ; preds = %341
  %345 = tail call i32 %0(i8* noundef %1, i32 noundef 15) #33
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %394

347:                                              ; preds = %344
  %348 = tail call i32 %0(i8* noundef %1, i32 noundef 118) #33
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %394

350:                                              ; preds = %347
  %351 = tail call i32 %0(i8* noundef %1, i32 noundef 76) #33
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %394

353:                                              ; preds = %350
  %354 = tail call i32 %0(i8* noundef %1, i32 noundef 96) #33
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %394

356:                                              ; preds = %353
  %357 = tail call i32 %0(i8* noundef %1, i32 noundef 78) #33
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %394

359:                                              ; preds = %356
  %360 = tail call i32 %0(i8* noundef %1, i32 noundef 66) #33
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %394

362:                                              ; preds = %359
  %363 = tail call i32 %0(i8* noundef %1, i32 noundef 121) #33
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %394

365:                                              ; preds = %362
  %366 = tail call i32 %0(i8* noundef %1, i32 noundef 85) #33
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %394

368:                                              ; preds = %365
  %369 = tail call i32 %0(i8* noundef %1, i32 noundef 132) #33
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %394

371:                                              ; preds = %368
  %372 = tail call i32 %0(i8* noundef %1, i32 noundef 108) #33
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %394

374:                                              ; preds = %371
  %375 = tail call i32 %0(i8* noundef %1, i32 noundef 69) #33
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %394

377:                                              ; preds = %374
  %378 = tail call i32 %0(i8* noundef %1, i32 noundef 86) #33
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %394

380:                                              ; preds = %377
  %381 = tail call i32 %0(i8* noundef %1, i32 noundef 109) #33
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %380
  %384 = tail call i32 %0(i8* noundef %1, i32 noundef 117) #33
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %383
  %387 = tail call i32 %0(i8* noundef %1, i32 noundef 49) #33
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %386
  %390 = tail call i32 %0(i8* noundef %1, i32 noundef 87) #33
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = tail call i32 %0(i8* noundef %1, i32 noundef 54) #33
  br label %394

394:                                              ; preds = %392, %389, %386, %383, %380, %377, %374, %371, %368, %365, %362, %359, %356, %353, %350, %347, %344, %341, %338, %335, %332, %329, %326, %323, %320, %317, %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #33
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #34
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* noundef %11) #33
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !55
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #9 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #9 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !noalias !56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !noalias !56
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !53
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !53
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.103, i64 0, i64 0), i32 noundef 5) #33
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.104, i64 0, i64 0), i8* noundef %21) #33
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !64
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !65

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !60
  store i8 10, i8* %27, align 1, !tbaa !21
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35
  unreachable

40:                                               ; preds = %35
  ret void
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #9 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !55
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = load i32, i32* @error_one_per_line, align 4, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !tbaa !53
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  %15 = icmp eq i8* %14, %2
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout()
  %25 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %26 = icmp eq void ()* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void %25() #33
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #34
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.107, i64 0, i64 0), i8* noundef %30) #33
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.108, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.109, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !55
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #9 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !55
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ftoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #14 {
  %6 = alloca [11 x i8], align 4
  %7 = fpext float %4 to double
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %8) #33
  %9 = fcmp olt float %4, 0.000000e+00
  %10 = fneg float %4
  %11 = select i1 %9, float %10, float %4
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %8, align 4, !tbaa !21
  store i8 45, i8* %12, align 1, !tbaa !21
  %13 = and i32 %2, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 43, i8* %15, align 1, !tbaa !21
  %16 = lshr i32 %2, 1
  %17 = and i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 32, i8* %19, align 1, !tbaa !21
  %20 = lshr i32 %2, 2
  %21 = and i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 48, i8* %23, align 1, !tbaa !21
  %24 = lshr i32 %2, 3
  %25 = and i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 42, i8* %27, align 1, !tbaa !21
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 46, i8* %28, align 1, !tbaa !21
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 42, i8* %29, align 1, !tbaa !21
  %31 = and i32 %2, 16
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 103, i8 71
  %34 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %33, i8* %30, align 1, !tbaa !21
  store i8 0, i8* %34, align 1, !tbaa !21
  %35 = fcmp olt float %11, 0x3810000000000000
  %36 = select i1 %35, i32 1, i32 6
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %8, i32 noundef %3, i32 noundef %36, double noundef %7) #33
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  %42 = zext i32 %40 to i64
  %43 = icmp ult i64 %42, %1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call float @strtof(i8* nocapture noundef %0, i8** noundef null) #33
  %46 = fcmp oeq float %45, %4
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %8, i32 noundef %3, i32 noundef %48, double noundef %7) #33
  %50 = icmp slt i32 %49, 0
  %51 = icmp ugt i32 %41, 7
  %52 = or i1 %51, %50
  br i1 %52, label %53, label %39

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %8) #33
  ret i32 %54
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare float @strtof(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ldtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, fp128 noundef %4) local_unnamed_addr #14 {
  %6 = alloca [11 x i8], align 4
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %7) #33
  %8 = fcmp olt fp128 %4, 0xL00000000000000000000000000000000
  %9 = fneg fp128 %4
  %10 = select i1 %8, fp128 %9, fp128 %4
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %7, align 4, !tbaa !21
  store i8 45, i8* %11, align 1, !tbaa !21
  %12 = and i32 %2, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 43, i8* %14, align 1, !tbaa !21
  %15 = lshr i32 %2, 1
  %16 = and i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 32, i8* %18, align 1, !tbaa !21
  %19 = lshr i32 %2, 2
  %20 = and i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 48, i8* %22, align 1, !tbaa !21
  %23 = lshr i32 %2, 3
  %24 = and i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 42, i8* %26, align 1, !tbaa !21
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 46, i8* %27, align 1, !tbaa !21
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 42, i8* %28, align 1, !tbaa !21
  store i8 76, i8* %29, align 1, !tbaa !21
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = and i32 %2, 16
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 103, i8 71
  %34 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %33, i8* %30, align 1, !tbaa !21
  store i8 0, i8* %34, align 1, !tbaa !21
  %35 = fcmp olt fp128 %10, 0xL00000000000000000001000000000000
  %36 = select i1 %35, i32 1, i32 33
  %37 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %36, fp128 noundef %4) #33
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %5, %47
  %40 = phi i32 [ %49, %47 ], [ %37, %5 ]
  %41 = phi i32 [ %48, %47 ], [ %36, %5 ]
  %42 = zext i32 %40 to i64
  %43 = icmp ult i64 %42, %1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call fp128 @strtold(i8* nocapture noundef %0, i8** noundef null) #33
  %46 = fcmp oeq fp128 %45, %4
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %41, 1
  %49 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %7, i32 noundef %3, i32 noundef %48, fp128 noundef %4) #33
  %50 = icmp slt i32 %49, 0
  %51 = icmp ugt i32 %41, 34
  %52 = or i1 %51, %50
  br i1 %52, label %53, label %39

53:                                               ; preds = %47, %44, %5
  %54 = phi i32 [ %37, %5 ], [ %40, %44 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %7) #33
  ret i32 %54
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare fp128 @strtold(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #9 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = load i32, i32* @opterr, align 4, !tbaa !53
  store i32 0, i32* @opterr, align 4, !tbaa !53
  %10 = icmp eq i32 %0, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #33
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ]

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #33
  br label %18

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #33
  call void @llvm.va_start(i8* nonnull %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !55
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #33
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #33
  call void @exit(i32 noundef 0) #35
  unreachable

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !tbaa !53
  store i32 0, i32* @optind, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #9 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = load i32, i32* @opterr, align 4, !tbaa !53
  store i32 1, i32* @opterr, align 4, !tbaa !53
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0)
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #33
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ]

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33
  call void @llvm.va_start(i8* nonnull %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !55
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #33
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #33
  call void @exit(i32 noundef 0) #35
  unreachable

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !tbaa !53
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #33
  br label %21

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  %5 = select i1 %3, i8* %0, i8* %4
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 6
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i64 0, i64 0), i64 7) #33
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.129, i64 0, i64 0), i64 noundef 3) #34
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i64 3, i64 0
  %18 = getelementptr i8, i8* %5, i64 %17
  br label %19

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ]
  store i8* %20, i8** @program_name, align 8, !tbaa !12
  store i8* %20, i8** @program_invocation_name, align 8, !tbaa !12
  store i8* %21, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #9 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #9 {
  %2 = tail call i32* @__errno_location() #36
  %3 = load i32, i32* %2, align 4, !tbaa !53
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !53
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !66
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !53
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4, !tbaa !53
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !68
  store i32 %1, i32* %5, align 4, !tbaa !68
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !66
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #35
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !70
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #9 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #36
  %9 = load i32, i32* %8, align 4, !tbaa !53
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !68
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !70
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18)
  store i32 %9, i32* %8, align 4, !tbaa !53
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #9 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33
  %18 = icmp eq i64 %17, 1
  %19 = and i32 %5, 2
  %20 = icmp ne i32 %19, 0
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
  br label %36

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ]
  %42 = phi i8* [ null, %9 ], [ %116, %608 ]
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ]
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
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
  ]

49:                                               ; preds = %36
  br label %111

50:                                               ; preds = %36
  br i1 %45, label %111, label %51

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0
  br i1 %52, label %111, label %53

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !tbaa !21
  br label %111

54:                                               ; preds = %36, %36
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.142, i64 0, i64 0), i32 noundef 5) #33
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.142, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), i32 noundef 5) #33
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  br i1 %45, label %97, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %80, align 1, !tbaa !21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  %89 = icmp ult i64 %88, %48
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88
  store i8 %86, i8* %91, align 1, !tbaa !21
  br label %92

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1
  %94 = getelementptr inbounds i8, i8* %87, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85, !llvm.loop !71

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34
  br label %111

100:                                              ; preds = %36
  br label %102

101:                                              ; preds = %36
  br i1 %45, label %102, label %105

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  br label %111

104:                                              ; preds = %36
  br i1 %45, label %111, label %105

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !tbaa !21
  br label %111

109:                                              ; preds = %36
  br label %111

110:                                              ; preds = %36
  call void @abort() #35
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.144, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.145, i64 0, i64 0), %102 ]
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ]
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
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
  br label %132

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ]
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ]
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ]
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  %141 = icmp eq i64 %133, -1
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139
  %144 = load i8, i8* %143, align 1, !tbaa !21
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %596, label %148

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133
  br i1 %147, label %596, label %148

148:                                              ; preds = %142, %146
  br i1 %123, label %149, label %163

149:                                              ; preds = %148
  %150 = add i64 %139, %117
  %151 = select i1 %141, i1 %124, i1 false
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33
  %160 = icmp ne i32 %159, 0
  %161 = or i1 %160, %125
  %162 = xor i1 %160, true
  br i1 %161, label %163, label %647

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  %166 = getelementptr inbounds i8, i8* %2, i64 %139
  %167 = load i8, i8* %166, align 1, !tbaa !21
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
  ]

168:                                              ; preds = %163
  br i1 %118, label %169, label %215

169:                                              ; preds = %168
  br i1 %119, label %636, label %170

170:                                              ; preds = %169
  %171 = select i1 %120, i1 true, i1 %138
  br i1 %171, label %188, label %172

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 39, i8* %175, align 1, !tbaa !21
  br label %176

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1
  %178 = icmp ult i64 %177, %140
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177
  store i8 36, i8* %180, align 1, !tbaa !21
  br label %181

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2
  %183 = icmp ult i64 %182, %140
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182
  store i8 39, i8* %185, align 1, !tbaa !21
  br label %186

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3
  br label %188

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ]
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  %191 = icmp ult i64 %189, %140
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 92, i8* %193, align 1, !tbaa !21
  br label %194

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1
  br i1 %120, label %196, label %499

196:                                              ; preds = %194
  %197 = add i64 %139, 1
  %198 = icmp ult i64 %197, %164
  br i1 %198, label %199, label %456

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197
  %201 = load i8, i8* %200, align 1, !tbaa !21
  %202 = add i8 %201, -48
  %203 = icmp ult i8 %202, 10
  br i1 %203, label %204, label %456

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195
  store i8 48, i8* %207, align 1, !tbaa !21
  br label %208

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2
  %210 = icmp ult i64 %209, %140
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209
  store i8 48, i8* %212, align 1, !tbaa !21
  br label %213

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3
  br label %456

215:                                              ; preds = %168
  br i1 %31, label %467, label %586

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ]

217:                                              ; preds = %216
  br i1 %119, label %638, label %456

218:                                              ; preds = %216
  br i1 %29, label %456, label %219

219:                                              ; preds = %218
  %220 = add i64 %139, 2
  %221 = icmp ult i64 %220, %164
  br i1 %221, label %222, label %456

222:                                              ; preds = %219
  %223 = add i64 %139, 1
  %224 = getelementptr inbounds i8, i8* %2, i64 %223
  %225 = load i8, i8* %224, align 1, !tbaa !21
  %226 = icmp eq i8 %225, 63
  br i1 %226, label %227, label %456

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220
  %229 = load i8, i8* %228, align 1, !tbaa !21
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
  ]

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231

231:                                              ; preds = %230
  %232 = icmp ult i64 %134, %140
  br i1 %232, label %233, label %235

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 63, i8* %234, align 1, !tbaa !21
  br label %235

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1
  %237 = icmp ult i64 %236, %140
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1, !tbaa !21
  br label %240

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2
  %242 = icmp ult i64 %241, %140
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 34, i8* %244, align 1, !tbaa !21
  br label %245

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3
  %247 = icmp ult i64 %246, %140
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246
  store i8 63, i8* %249, align 1, !tbaa !21
  br label %250

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4
  br label %456

252:                                              ; preds = %163
  br label %263

253:                                              ; preds = %163
  br label %263

254:                                              ; preds = %163
  br label %261

255:                                              ; preds = %163
  br label %261

256:                                              ; preds = %163
  br label %263

257:                                              ; preds = %163
  br i1 %126, label %258, label %259

258:                                              ; preds = %257
  br i1 %119, label %638, label %546

259:                                              ; preds = %257
  br i1 %118, label %260, label %467

260:                                              ; preds = %259
  br i1 %127, label %546, label %510

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ]
  br i1 %128, label %263, label %638

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ]
  br i1 %118, label %510, label %467

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ]

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !tbaa !21
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %456

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0
  br i1 %270, label %271, label %456

271:                                              ; preds = %269, %163
  br label %272

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  br i1 %126, label %274, label %456

274:                                              ; preds = %272
  br i1 %119, label %638, label %456

275:                                              ; preds = %163
  br i1 %126, label %276, label %456

276:                                              ; preds = %275
  br i1 %119, label %638, label %277

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279
  %281 = select i1 %280, i64 %135, i64 %140
  %282 = select i1 %280, i64 %140, i64 0
  %283 = icmp ult i64 %134, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134
  store i8 39, i8* %285, align 1, !tbaa !21
  br label %286

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1, !tbaa !21
  br label %291

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1, !tbaa !21
  br label %296

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3
  br label %456

298:                                              ; preds = %163
  br i1 %18, label %299, label %307

299:                                              ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #36
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !72
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33
  br label %352

318:                                              ; preds = %311
  br label %346

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  %322 = getelementptr inbounds i8, i8* %2, i64 %320
  %323 = load i8, i8* %322, align 1, !tbaa !21
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %348, label %325

325:                                              ; preds = %319
  %326 = add i64 %321, 1
  %327 = add i64 %326, %139
  %328 = icmp eq i64 %326, %313
  br i1 %328, label %348, label %319, !llvm.loop !73

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false
  br i1 %331, label %332, label %340

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  %334 = add i64 %333, %139
  %335 = getelementptr inbounds i8, i8* %2, i64 %334
  %336 = load i8, i8* %335, align 1, !tbaa !21
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ]

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1
  %339 = icmp eq i64 %338, %314
  br i1 %339, label %340, label %332, !llvm.loop !74

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !53
  %342 = call i32 @iswprint(i32 noundef %341) #33
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33
  %351 = icmp ugt i64 %349, 1
  br i1 %351, label %357, label %352

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353
  br i1 %356, label %456, label %357

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139
  %362 = select i1 %130, i1 true, i1 %358
  br label %363

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ]
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ]
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ]
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ]
  br i1 %362, label %414, label %370

370:                                              ; preds = %363
  br i1 %119, label %638, label %371

371:                                              ; preds = %370
  %372 = select i1 %120, i1 true, i1 %365
  br i1 %372, label %389, label %373

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140
  br i1 %374, label %375, label %377

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364
  store i8 39, i8* %376, align 1, !tbaa !21
  br label %377

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1
  %379 = icmp ult i64 %378, %140
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378
  store i8 36, i8* %381, align 1, !tbaa !21
  br label %382

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2
  %384 = icmp ult i64 %383, %140
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383
  store i8 39, i8* %386, align 1, !tbaa !21
  br label %387

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3
  br label %389

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ]
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  %392 = icmp ult i64 %390, %140
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390
  store i8 92, i8* %394, align 1, !tbaa !21
  br label %395

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1
  %397 = icmp ult i64 %396, %140
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6
  %400 = or i8 %399, 48
  %401 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 %400, i8* %401, align 1, !tbaa !21
  br label %402

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2
  %404 = icmp ult i64 %403, %140
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3
  %407 = and i8 %406, 7
  %408 = or i8 %407, 48
  %409 = getelementptr inbounds i8, i8* %0, i64 %403
  store i8 %408, i8* %409, align 1, !tbaa !21
  br label %410

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3
  %412 = and i8 %369, 7
  %413 = or i8 %412, 48
  br label %421

414:                                              ; preds = %363
  br i1 %367, label %415, label %421

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140
  br i1 %416, label %417, label %419

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364
  store i8 92, i8* %418, align 1, !tbaa !21
  br label %419

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1
  br label %421

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ]
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ]
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ]
  %427 = add i64 %366, 1
  %428 = icmp ugt i64 %361, %427
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0
  %432 = select i1 %423, i1 %431, i1 false
  br i1 %432, label %433, label %444

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140
  br i1 %434, label %435, label %437

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422
  store i8 39, i8* %436, align 1, !tbaa !21
  br label %437

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1
  %439 = icmp ult i64 %438, %140
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438
  store i8 39, i8* %441, align 1, !tbaa !21
  br label %442

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2
  br label %444

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ]
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  %447 = icmp ult i64 %445, %140
  br i1 %447, label %448, label %450

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445
  store i8 %426, i8* %449, align 1, !tbaa !21
  br label %450

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1
  %452 = getelementptr inbounds i8, i8* %2, i64 %427
  %453 = load i8, i8* %452, align 1, !tbaa !21
  br label %363

454:                                              ; preds = %421
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ]
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ]
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ]
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ]
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ]
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  br i1 %121, label %478, label %467

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
  br i1 %131, label %479, label %499

478:                                              ; preds = %456
  br i1 %35, label %499, label %479

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
  %490 = lshr i8 %481, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4, !tbaa !53
  %494 = and i8 %481, 31
  %495 = zext i8 %494 to i32
  %496 = shl nuw i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %510

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
  br i1 %165, label %510, label %546

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ]
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ]
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ]
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ]
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ]
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  br i1 %119, label %638, label %520

520:                                              ; preds = %510
  %521 = select i1 %120, i1 true, i1 %515
  br i1 %521, label %538, label %522

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519
  br i1 %523, label %524, label %526

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512
  store i8 39, i8* %525, align 1, !tbaa !21
  br label %526

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1
  %528 = icmp ult i64 %527, %519
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 36, i8* %530, align 1, !tbaa !21
  br label %531

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2
  %533 = icmp ult i64 %532, %519
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532
  store i8 39, i8* %535, align 1, !tbaa !21
  br label %536

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3
  br label %538

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ]
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  %541 = icmp ult i64 %539, %519
  br i1 %541, label %542, label %544

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539
  store i8 92, i8* %543, align 1, !tbaa !21
  br label %544

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1
  br label %570

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ]
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ]
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ]
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ]
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ]
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  %557 = xor i1 %551, true
  %558 = select i1 %557, i1 true, i1 %553
  br i1 %558, label %570, label %559

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556
  br i1 %560, label %561, label %563

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548
  store i8 39, i8* %562, align 1, !tbaa !21
  br label %563

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1
  %565 = icmp ult i64 %564, %556
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564
  store i8 39, i8* %567, align 1, !tbaa !21
  br label %568

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2
  br label %570

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ]
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  %580 = icmp ult i64 %578, %571
  br i1 %580, label %581, label %583

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578
  store i8 %572, i8* %582, align 1, !tbaa !21
  br label %583

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1
  %585 = select i1 %573, i1 %137, i1 false
  br label %586

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ]
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ]
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ]
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ]
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  %595 = add i64 %593, 1
  br label %132, !llvm.loop !75

596:                                              ; preds = %146, %142
  %597 = icmp eq i64 %134, 0
  %598 = and i1 %126, %597
  %599 = and i1 %598, %119
  br i1 %599, label %638, label %600

600:                                              ; preds = %596
  %601 = xor i1 %126, true
  %602 = or i1 %119, %601
  %603 = xor i1 %136, true
  %604 = select i1 %602, i1 true, i1 %603
  br i1 %604, label %612, label %605

605:                                              ; preds = %600
  br i1 %137, label %606, label %608

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114)
  br label %653

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %36, label %612

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null
  %615 = or i1 %614, %613
  br i1 %615, label %631, label %616

616:                                              ; preds = %612
  %617 = load i8, i8* %116, align 1, !tbaa !21
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %631, label %619

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  %623 = icmp ult i64 %622, %140
  br i1 %623, label %624, label %626

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622
  store i8 %620, i8* %625, align 1, !tbaa !21
  br label %626

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1
  %628 = getelementptr inbounds i8, i8* %621, i64 1
  %629 = load i8, i8* %628, align 1, !tbaa !21
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %619, !llvm.loop !76

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ]
  %633 = icmp ult i64 %632, %140
  br i1 %633, label %634, label %653

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632
  store i8 0, i8* %635, align 1, !tbaa !21
  br label %653

636:                                              ; preds = %169
  %637 = icmp eq i32 %112, 2
  br i1 %637, label %643, label %647

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  %641 = icmp eq i32 %112, 2
  %642 = select i1 %118, i32 4, i32 2
  br i1 %641, label %643, label %647

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  %651 = and i32 %5, -3
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114)
  br label %653

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2
  %6 = tail call i32* @__errno_location() #36
  %7 = load i32, i32* %6, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !68
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !70
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39
  %21 = load i32, i32* %11, align 8, !tbaa !66
  %22 = load i8*, i8** %14, align 8, !tbaa !69
  %23 = load i8*, i8** %16, align 8, !tbaa !70
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33
  store i32 %7, i32* %6, align 4, !tbaa !53
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #9 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #36
  %8 = load i32, i32* %7, align 4, !tbaa !53
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !68
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !70
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39
  %24 = load i32, i32* %14, align 8, !tbaa !66
  %25 = load i8*, i8** %17, align 8, !tbaa !69
  %26 = load i8*, i8** %19, align 8, !tbaa !70
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !53
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !77
  br label %29

29:                                               ; preds = %28, %4
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %2 = load i32, i32* @nslots, align 4, !tbaa !53
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  br label %10

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !78
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !78
  tail call void @free(i8* noundef %13) #33
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !80

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !81
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !78
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #33
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !tbaa !53
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #9 {
  %5 = alloca i64, align 8
  %6 = tail call i32* @__errno_location() #36
  %7 = load i32, i32* %6, align 4, !tbaa !53
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #35
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !53
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !77
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !82
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !53
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !77
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33
  %34 = load i64, i64* %5, align 8, !tbaa !77
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !81
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !78
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !68
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !70
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !81
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39
  store i8* %60, i8** %41, align 8, !tbaa !78
  %61 = load i32, i32* %46, align 8, !tbaa !66
  %62 = load i8*, i8** %49, align 8, !tbaa !69
  %63 = load i8*, i8** %51, align 8, !tbaa !70
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ]
  store i32 %7, i32* %6, align 4, !tbaa !53
  ret i8* %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #9 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !alias.scope !83
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #35, !noalias !83
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !66, !alias.scope !83
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #9 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !alias.scope !86
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #35, !noalias !86
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !66, !alias.scope !86
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89) #33
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !alias.scope !89
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #35, !noalias !89
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !66, !alias.scope !89
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92) #33
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !alias.scope !92
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #35, !noalias !92
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !66, !alias.scope !92
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !95
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !53
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4, !tbaa !53
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !tbaa.struct !95
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4, !tbaa !53
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4, !tbaa !53
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #9 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !tbaa.struct !95
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !53
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !53
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !tbaa.struct !95
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !53
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !53
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #35, !noalias !96
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !95
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !53
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !53
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #9 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !tbaa.struct !95
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !66
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #35
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !70
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #9 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !95
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !66
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #35
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !70
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #9 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !tbaa.struct !95
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !66
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #35
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !70
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #9 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !tbaa.struct !95
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !66
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #35
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !70
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #9 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #9 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #9 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.151, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.153, i64 0, i64 0), i32 noundef 5) #33
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.155, i64 0, i64 0), i32 noundef 5) #33
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.156, i64 0, i64 0)) #33
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  ]

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.157, i64 0, i64 0), i32 noundef 5) #33
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.158, i64 0, i64 0), i32 noundef 5) #33
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.159, i64 0, i64 0), i32 noundef 5) #33
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.160, i64 0, i64 0), i32 noundef 5) #33
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.161, i64 0, i64 0), i32 noundef 5) #33
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.162, i64 0, i64 0), i32 noundef 5) #33
  %61 = load i8*, i8** %4, align 8, !tbaa !12
  %62 = getelementptr inbounds i8*, i8** %4, i64 1
  %63 = load i8*, i8** %62, align 8, !tbaa !12
  %64 = getelementptr inbounds i8*, i8** %4, i64 2
  %65 = load i8*, i8** %64, align 8, !tbaa !12
  %66 = getelementptr inbounds i8*, i8** %4, i64 3
  %67 = load i8*, i8** %66, align 8, !tbaa !12
  %68 = getelementptr inbounds i8*, i8** %4, i64 4
  %69 = load i8*, i8** %68, align 8, !tbaa !12
  %70 = getelementptr inbounds i8*, i8** %4, i64 5
  %71 = load i8*, i8** %70, align 8, !tbaa !12
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.163, i64 0, i64 0), i32 noundef 5) #33
  %75 = load i8*, i8** %4, align 8, !tbaa !12
  %76 = getelementptr inbounds i8*, i8** %4, i64 1
  %77 = load i8*, i8** %76, align 8, !tbaa !12
  %78 = getelementptr inbounds i8*, i8** %4, i64 2
  %79 = load i8*, i8** %78, align 8, !tbaa !12
  %80 = getelementptr inbounds i8*, i8** %4, i64 3
  %81 = load i8*, i8** %80, align 8, !tbaa !12
  %82 = getelementptr inbounds i8*, i8** %4, i64 4
  %83 = load i8*, i8** %82, align 8, !tbaa !12
  %84 = getelementptr inbounds i8*, i8** %4, i64 5
  %85 = load i8*, i8** %84, align 8, !tbaa !12
  %86 = getelementptr inbounds i8*, i8** %4, i64 6
  %87 = load i8*, i8** %86, align 8, !tbaa !12
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.164, i64 0, i64 0), i32 noundef 5) #33
  %91 = load i8*, i8** %4, align 8, !tbaa !12
  %92 = getelementptr inbounds i8*, i8** %4, i64 1
  %93 = load i8*, i8** %92, align 8, !tbaa !12
  %94 = getelementptr inbounds i8*, i8** %4, i64 2
  %95 = load i8*, i8** %94, align 8, !tbaa !12
  %96 = getelementptr inbounds i8*, i8** %4, i64 3
  %97 = load i8*, i8** %96, align 8, !tbaa !12
  %98 = getelementptr inbounds i8*, i8** %4, i64 4
  %99 = load i8*, i8** %98, align 8, !tbaa !12
  %100 = getelementptr inbounds i8*, i8** %4, i64 5
  %101 = load i8*, i8** %100, align 8, !tbaa !12
  %102 = getelementptr inbounds i8*, i8** %4, i64 6
  %103 = load i8*, i8** %102, align 8, !tbaa !12
  %104 = getelementptr inbounds i8*, i8** %4, i64 7
  %105 = load i8*, i8** %104, align 8, !tbaa !12
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.165, i64 0, i64 0), i32 noundef 5) #33
  %109 = load i8*, i8** %4, align 8, !tbaa !12
  %110 = getelementptr inbounds i8*, i8** %4, i64 1
  %111 = load i8*, i8** %110, align 8, !tbaa !12
  %112 = getelementptr inbounds i8*, i8** %4, i64 2
  %113 = load i8*, i8** %112, align 8, !tbaa !12
  %114 = getelementptr inbounds i8*, i8** %4, i64 3
  %115 = load i8*, i8** %114, align 8, !tbaa !12
  %116 = getelementptr inbounds i8*, i8** %4, i64 4
  %117 = load i8*, i8** %116, align 8, !tbaa !12
  %118 = getelementptr inbounds i8*, i8** %4, i64 5
  %119 = load i8*, i8** %118, align 8, !tbaa !12
  %120 = getelementptr inbounds i8*, i8** %4, i64 6
  %121 = load i8*, i8** %120, align 8, !tbaa !12
  %122 = getelementptr inbounds i8*, i8** %4, i64 7
  %123 = load i8*, i8** %122, align 8, !tbaa !12
  %124 = getelementptr inbounds i8*, i8** %4, i64 8
  %125 = load i8*, i8** %124, align 8, !tbaa !12
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.166, i64 0, i64 0), i32 noundef 5) #33
  %129 = load i8*, i8** %4, align 8, !tbaa !12
  %130 = getelementptr inbounds i8*, i8** %4, i64 1
  %131 = load i8*, i8** %130, align 8, !tbaa !12
  %132 = getelementptr inbounds i8*, i8** %4, i64 2
  %133 = load i8*, i8** %132, align 8, !tbaa !12
  %134 = getelementptr inbounds i8*, i8** %4, i64 3
  %135 = load i8*, i8** %134, align 8, !tbaa !12
  %136 = getelementptr inbounds i8*, i8** %4, i64 4
  %137 = load i8*, i8** %136, align 8, !tbaa !12
  %138 = getelementptr inbounds i8*, i8** %4, i64 5
  %139 = load i8*, i8** %138, align 8, !tbaa !12
  %140 = getelementptr inbounds i8*, i8** %4, i64 6
  %141 = load i8*, i8** %140, align 8, !tbaa !12
  %142 = getelementptr inbounds i8*, i8** %4, i64 7
  %143 = load i8*, i8** %142, align 8, !tbaa !12
  %144 = getelementptr inbounds i8*, i8** %4, i64 8
  %145 = load i8*, i8** %144, align 8, !tbaa !12
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33
  br label %147

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #9 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !99

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #9 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  store i8* %15, i8** %10, align 8
  %16 = bitcast i8* %14 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %17, i8** %18, align 8, !tbaa !12
  %19 = icmp eq i8* %17, null
  br i1 %19, label %265, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, i8* %14, i64 16
  store i8* %21, i8** %10, align 8
  %22 = bitcast i8* %15 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %23, i8** %24, align 8, !tbaa !12
  %25 = icmp eq i8* %23, null
  br i1 %25, label %265, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %14, i64 24
  store i8* %27, i8** %10, align 8
  %28 = bitcast i8* %21 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %29, i8** %30, align 8, !tbaa !12
  %31 = icmp eq i8* %29, null
  br i1 %31, label %265, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, i8* %14, i64 32
  store i8* %33, i8** %10, align 8
  %34 = bitcast i8* %27 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %35, i8** %36, align 8, !tbaa !12
  %37 = icmp eq i8* %35, null
  br i1 %37, label %265, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, i8* %14, i64 40
  store i8* %39, i8** %10, align 8
  %40 = bitcast i8* %33 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %41, i8** %42, align 8, !tbaa !12
  %43 = icmp eq i8* %41, null
  br i1 %43, label %265, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, i8* %14, i64 48
  store i8* %45, i8** %10, align 8
  %46 = bitcast i8* %39 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %47, i8** %48, align 8, !tbaa !12
  %49 = icmp eq i8* %47, null
  br i1 %49, label %265, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, i8* %14, i64 56
  store i8* %51, i8** %10, align 8
  %52 = bitcast i8* %45 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %53, i8** %54, align 8, !tbaa !12
  %55 = icmp eq i8* %53, null
  br i1 %55, label %265, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds i8, i8* %14, i64 64
  store i8* %57, i8** %10, align 8
  %58 = bitcast i8* %51 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %59, i8** %60, align 8, !tbaa !12
  %61 = icmp eq i8* %59, null
  br i1 %61, label %265, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, i8* %14, i64 72
  store i8* %63, i8** %10, align 8
  %64 = bitcast i8* %57 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %65, i8** %66, align 8, !tbaa !12
  %67 = icmp eq i8* %65, null
  br i1 %67, label %265, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds i8, i8* %14, i64 80
  store i8* %69, i8** %10, align 8
  br label %258

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8
  store i32 %71, i32* %8, align 8
  %72 = icmp ult i32 %11, -7
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = sext i32 %11 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  br label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %83, i8** %84, align 8, !tbaa !12
  %85 = icmp eq i8* %83, null
  br i1 %85, label %265, label %86

86:                                               ; preds = %80
  %87 = icmp sgt i32 %11, -9
  br i1 %87, label %95, label %88

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16
  store i32 %89, i32* %8, align 8
  %90 = icmp ult i32 %71, -7
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = sext i32 %71 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  br label %99

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %103, i8** %104, align 8, !tbaa !12
  %105 = icmp eq i8* %103, null
  br i1 %105, label %265, label %106

106:                                              ; preds = %99
  %107 = icmp sgt i32 %100, -1
  br i1 %107, label %115, label %108

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8
  store i32 %109, i32* %8, align 8
  %110 = icmp ult i32 %100, -7
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = sext i32 %100 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  br label %119

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 8
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %123, i8** %124, align 8, !tbaa !12
  %125 = icmp eq i8* %123, null
  br i1 %125, label %265, label %126

126:                                              ; preds = %119
  %127 = icmp sgt i32 %120, -1
  br i1 %127, label %135, label %128

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8
  store i32 %129, i32* %8, align 8
  %130 = icmp ult i32 %120, -7
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8
  %133 = sext i32 %120 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  br label %139

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 8
  store i8* %138, i8** %10, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %143, i8** %144, align 8, !tbaa !12
  %145 = icmp eq i8* %143, null
  br i1 %145, label %265, label %146

146:                                              ; preds = %139
  %147 = icmp sgt i32 %140, -1
  br i1 %147, label %155, label %148

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8
  store i32 %149, i32* %8, align 8
  %150 = icmp ult i32 %140, -7
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = sext i32 %140 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  br label %159

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 8
  store i8* %158, i8** %10, align 8
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %163, i8** %164, align 8, !tbaa !12
  %165 = icmp eq i8* %163, null
  br i1 %165, label %265, label %166

166:                                              ; preds = %159
  %167 = icmp sgt i32 %160, -1
  br i1 %167, label %175, label %168

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8
  store i32 %169, i32* %8, align 8
  %170 = icmp ult i32 %160, -7
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8
  %173 = sext i32 %160 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  br label %179

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  store i8* %178, i8** %10, align 8
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %183, i8** %184, align 8, !tbaa !12
  %185 = icmp eq i8* %183, null
  br i1 %185, label %265, label %186

186:                                              ; preds = %179
  %187 = icmp sgt i32 %180, -1
  br i1 %187, label %195, label %188

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8
  store i32 %189, i32* %8, align 8
  %190 = icmp ult i32 %180, -7
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8
  %193 = sext i32 %180 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  br label %199

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 8
  store i8* %198, i8** %10, align 8
  br label %199

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %203, i8** %204, align 8, !tbaa !12
  %205 = icmp eq i8* %203, null
  br i1 %205, label %265, label %206

206:                                              ; preds = %199
  %207 = icmp sgt i32 %200, -1
  br i1 %207, label %215, label %208

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8
  store i32 %209, i32* %8, align 8
  %210 = icmp ult i32 %200, -7
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8
  %213 = sext i32 %200 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  br label %219

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 8
  store i8* %218, i8** %10, align 8
  br label %219

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %223, i8** %224, align 8, !tbaa !12
  %225 = icmp eq i8* %223, null
  br i1 %225, label %265, label %226

226:                                              ; preds = %219
  %227 = icmp sgt i32 %220, -1
  br i1 %227, label %235, label %228

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8
  store i32 %229, i32* %8, align 8
  %230 = icmp ult i32 %220, -7
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8
  %233 = sext i32 %220 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  br label %239

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 8
  store i8* %238, i8** %10, align 8
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %243, i8** %244, align 8, !tbaa !12
  %245 = icmp eq i8* %243, null
  br i1 %245, label %265, label %246

246:                                              ; preds = %239
  %247 = icmp sgt i32 %240, -1
  br i1 %247, label %255, label %248

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8
  store i32 %249, i32* %8, align 8
  %250 = icmp ult i32 %240, -7
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8
  %253 = sext i32 %240 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  br label %258

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 8
  store i8* %257, i8** %10, align 8
  br label %258

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %261, i8** %262, align 8, !tbaa !12
  %263 = icmp eq i8* %261, null
  %264 = select i1 %263, i64 9, i64 10
  br label %265

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266)
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #9 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !55
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.154, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.171, i64 0, i64 0), i32 noundef 5) #33
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.172, i64 0, i64 0)) #33
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.173, i64 0, i64 0), i32 noundef 5) #33
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.174, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.175, i64 0, i64 0)) #33
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.176, i64 0, i64 0), i32 noundef 5) #33
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.177, i64 0, i64 0)) #33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #35
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #35
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #35
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #9 {
  %3 = load i64, i64* %1, align 8, !tbaa !77
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #35
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #35
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !77
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = load i64, i64* %1, align 8, !tbaa !77
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %20

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1
  %15 = add nuw i64 %14, 1
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  br i1 %17, label %19, label %20

19:                                               ; preds = %13
  tail call void @xalloc_die() #35
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #35
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !77
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 {
  %6 = load i64, i64* %1, align 8, !tbaa !77
  %7 = ashr i64 %6, 1
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 9223372036854775807, i64 %10
  %12 = icmp sgt i64 %3, -1
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false
  %15 = select i1 %14, i64 %3, i64 %11
  %16 = icmp slt i64 %4, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = sub i64 0, %4
  %21 = udiv i64 9223372036854775807, %20
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %46, label %43

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = sub i64 0, %4
  %28 = udiv i64 -9223372036854775808, %27
  %29 = icmp ult i64 %28, %15
  br i1 %29, label %46, label %43

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = sub i64 0, %15
  %38 = udiv i64 -9223372036854775808, %37
  %39 = icmp ult i64 %38, %4
  br i1 %39, label %46, label %43

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15
  br i1 %42, label %46, label %43

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  %44 = mul i64 %15, %4
  %45 = icmp slt i64 %44, 128
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  %48 = sdiv i64 %47, %4
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50
  br label %52

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ]
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ]
  %55 = icmp eq i8* %0, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !tbaa !77
  br label %57

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6
  %59 = icmp slt i64 %58, %2
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2)
  %62 = extractvalue { i64, i1 } %61, 1
  %63 = extractvalue { i64, i1 } %61, 0
  br i1 %62, label %96, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false
  br i1 %66, label %96, label %67

67:                                               ; preds = %64
  br i1 %16, label %68, label %81

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = sub i64 0, %4
  %72 = udiv i64 9223372036854775807, %71
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73
  br i1 %74, label %96, label %94

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1
  br i1 %76, label %94, label %77

77:                                               ; preds = %75
  %78 = sub i64 0, %4
  %79 = udiv i64 -9223372036854775808, %78
  %80 = icmp ult i64 %79, %63
  br i1 %80, label %96, label %94

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1
  br i1 %86, label %94, label %87

87:                                               ; preds = %85
  %88 = sub i64 0, %63
  %89 = udiv i64 -9223372036854775808, %88
  %90 = icmp ult i64 %89, %4
  br i1 %90, label %96, label %94

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63
  br i1 %93, label %96, label %94

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  %95 = mul i64 %63, %4
  br label %97

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #35
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !77
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #35
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !21
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #35
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !53
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.188, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.189, i64 0, i64 0), i32 noundef 5) #33
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.190, i64 0, i64 0), i8* noundef %2) #33
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #35
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #9 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !100
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36
  %16 = load i32, i32* %15, align 4, !tbaa !53
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36
  store i32 0, i32* %21, align 4, !tbaa !53
  br label %22

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #9 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36
  %20 = load i32, i32* %19, align 4, !tbaa !53
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #9 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !100
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33
  br label %15

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !102
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !103
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !104
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !100
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !100
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !105
  br label %30

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %30

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #9 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = bitcast %struct.__mbstate_t* %10 to i64*
  store i64 0, i64* %17, align 1
  br label %30

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @abort() #35
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !tbaa !21
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %6, align 4, !tbaa !53
  br label %30

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %3, %5
  %9 = mul i64 %2, %1
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i64 1, i64 %9
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #36
  store i32 12, i32* %14, align 4, !tbaa !53
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #9 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #9 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #9 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !21
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  store i8 0, i8* %18, align 1, !tbaa !21
  br label %19

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ]
  ret i32 %20
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11}

!0 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !13, i64 0}
!17 = !{!"infomap", !13, i64 0, !13, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!17, !13, i64 8}
!21 = !{!14, !14, i64 0}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = !{!51, !51, i64 0}
!51 = !{!"_Bool", !14, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !14, i64 0}
!55 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !53, i64 28, i64 4, !53}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"vfprintf.inline: argument 0"}
!58 = distinct !{!58, !"vfprintf.inline"}
!59 = distinct !{!59, !58, !"vfprintf.inline: argument 1"}
!60 = !{!61, !13, i64 40}
!61 = !{!"_IO_FILE", !54, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !54, i64 112, !54, i64 116, !62, i64 120, !63, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !62, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !62, i64 184, !54, i64 192, !14, i64 196}
!62 = !{!"long", !14, i64 0}
!63 = !{!"short", !14, i64 0}
!64 = !{!61, !13, i64 48}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!67, !14, i64 0}
!67 = !{!"quoting_options", !14, i64 0, !54, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!68 = !{!67, !54, i64 4}
!69 = !{!67, !13, i64 40}
!70 = !{!67, !13, i64 48}
!71 = distinct !{!71, !19}
!72 = !{!63, !63, i64 0}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = !{!62, !62, i64 0}
!78 = !{!79, !13, i64 8}
!79 = !{!"slotvec", !62, i64 0, !13, i64 8}
!80 = distinct !{!80, !19}
!81 = !{!79, !62, i64 0}
!82 = !{i64 0, i64 8, !77, i64 8, i64 8, !12}
!83 = !{!84}
!84 = distinct !{!84, !85, !"quoting_options_from_style: argument 0"}
!85 = distinct !{!85, !"quoting_options_from_style"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"quoting_options_from_style: argument 0"}
!88 = distinct !{!88, !"quoting_options_from_style"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"quoting_options_from_style: argument 0"}
!91 = distinct !{!91, !"quoting_options_from_style"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"quoting_options_from_style: argument 0"}
!94 = distinct !{!94, !"quoting_options_from_style"}
!95 = !{i64 0, i64 4, !21, i64 4, i64 4, !53, i64 8, i64 32, !21, i64 40, i64 8, !12, i64 48, i64 8, !12}
!96 = !{!97}
!97 = distinct !{!97, !98, !"quoting_options_from_style: argument 0"}
!98 = distinct !{!98, !"quoting_options_from_style"}
!99 = distinct !{!99, !19}
!100 = !{!61, !54, i64 0}
!101 = !{!61, !13, i64 16}
!102 = !{!61, !13, i64 8}
!103 = !{!61, !13, i64 32}
!104 = !{!61, !13, i64 72}
!105 = !{!61, !62, i64 144}
