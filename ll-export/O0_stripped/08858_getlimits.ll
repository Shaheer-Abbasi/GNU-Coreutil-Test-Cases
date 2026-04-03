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
@.str.93 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.107 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4
@verror_at_line.old_file_name = internal global i8* null, align 8
@verror_at_line.old_line_number = internal global i32 0, align 4
@.str.1.113 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.114 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.115 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4
@.str.4.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.109 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.110 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.124 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.125, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.126, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8
@optind = external global i32, align 4
@.str.1.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.125 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.126 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.134 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.135 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.140 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.141 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.142 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.144 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.145 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.146 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.147 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.141, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.144, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.146, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.147, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.148 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.149 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.150 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.151 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.196 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.219 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.230 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.231 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18
  %9 = load i8*, i8** @program_name, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9)
  br label %11

11:                                               ; preds = %6
  br label %25

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #18
  %14 = load i8*, i8** @program_name, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14)
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0)) #18
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17)
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0)) #18
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20)
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23)
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %26) #19
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false)
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %4, align 8
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0
  store %struct.infomap* %10, %struct.infomap** %5, align 8
  br label %11

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20)
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1
  store %struct.infomap* %27, %struct.infomap** %5, align 8
  br label %11, !llvm.loop !12

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address()
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i64 noundef 3) #20
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i64 0, i64 0)) #18
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i8*, i8** %2, align 8
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0))
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), %52 ], [ %54, %53 ]
  store i8* %56, i8** %7, align 8
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0)) #18
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.95, i64 0, i64 0), i8* noundef %58)
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0)) #18
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = icmp eq i8* %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [22 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  call void @set_program_name(i8* noundef %9)
  %10 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18
  %11 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18
  %12 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18
  %13 = call i32 @atexit(void ()* noundef @close_stdout) #18
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %14, i8** noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i1 noundef true, void (i32)* noundef @usage, i8* noundef %16, i8* noundef null)
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #18
  %20 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %21)
  %23 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %24 = call i8* @decimal_absval_add_one(i8* noundef %23)
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %24)
  %26 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 127) #18
  %29 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %30)
  %32 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %33 = call i8* @decimal_absval_add_one(i8* noundef %32)
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %33)
  %35 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -128) #18
  %38 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef %39)
  %41 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %42 = call i8* @decimal_absval_add_one(i8* noundef %41)
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef %42)
  %44 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #18
  %47 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef %48)
  %50 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %51 = call i8* @decimal_absval_add_one(i8* noundef %50)
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %51)
  %53 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %54, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 32767) #18
  %56 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* noundef %57)
  %59 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %60 = call i8* @decimal_absval_add_one(i8* noundef %59)
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* noundef %60)
  %62 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -32768) #18
  %65 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef %66)
  %68 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %69 = call i8* @decimal_absval_add_one(i8* noundef %68)
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* noundef %69)
  %71 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #18
  %74 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %75)
  %77 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %78 = call i8* @decimal_absval_add_one(i8* noundef %77)
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef %78)
  %80 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %81, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #18
  %83 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %84)
  %86 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %87 = call i8* @decimal_absval_add_one(i8* noundef %86)
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %87)
  %89 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %90, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18
  %92 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef %93)
  %95 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %96 = call i8* @decimal_absval_add_one(i8* noundef %95)
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* noundef %96)
  %98 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %99, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %101 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef %102)
  %104 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %105 = call i8* @decimal_absval_add_one(i8* noundef %104)
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %105)
  %107 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %108, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %110 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef %111)
  %113 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %114 = call i8* @decimal_absval_add_one(i8* noundef %113)
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef %114)
  %116 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %117, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18
  %119 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* noundef %120)
  %122 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %123 = call i8* @decimal_absval_add_one(i8* noundef %122)
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* noundef %123)
  %125 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %126, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18
  %128 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* noundef %129)
  %131 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %132 = call i8* @decimal_absval_add_one(i8* noundef %131)
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef %132)
  %134 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %137 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* noundef %138)
  %140 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %141 = call i8* @decimal_absval_add_one(i8* noundef %140)
  %142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %141)
  %143 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %144, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %146 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* noundef %147)
  %149 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %150 = call i8* @decimal_absval_add_one(i8* noundef %149)
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef %150)
  %152 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %153, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %155 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef %156)
  %158 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %159 = call i8* @decimal_absval_add_one(i8* noundef %158)
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef %159)
  %161 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %162, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %164 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* noundef %165)
  %167 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %168 = call i8* @decimal_absval_add_one(i8* noundef %167)
  %169 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef %168)
  %170 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %171, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18
  %173 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8* noundef %174)
  %176 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %177 = call i8* @decimal_absval_add_one(i8* noundef %176)
  %178 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %177)
  %179 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %180, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18
  %182 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef %183)
  %185 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %186 = call i8* @decimal_absval_add_one(i8* noundef %185)
  %187 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef %186)
  %188 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %189, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #18
  %191 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* noundef %192)
  %194 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %195 = call i8* @decimal_absval_add_one(i8* noundef %194)
  %196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* noundef %195)
  %197 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %198, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #18
  %200 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8* noundef %201)
  %203 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %204 = call i8* @decimal_absval_add_one(i8* noundef %203)
  %205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* noundef %204)
  %206 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %207, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %209 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* noundef %210)
  %212 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %213 = call i8* @decimal_absval_add_one(i8* noundef %212)
  %214 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* noundef %213)
  %215 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %216, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %218 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* noundef %219)
  %221 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %222 = call i8* @decimal_absval_add_one(i8* noundef %221)
  %223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef %222)
  %224 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %225, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %227 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  %229 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* noundef %228)
  %230 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %231 = call i8* @decimal_absval_add_one(i8* noundef %230)
  %232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef %231)
  %233 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %234, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %236 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef %237)
  %239 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %240 = call i8* @decimal_absval_add_one(i8* noundef %239)
  %241 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8* noundef %240)
  %242 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %243, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18
  %245 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* noundef %246)
  %248 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %249 = call i8* @decimal_absval_add_one(i8* noundef %248)
  %250 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %249)
  %251 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %252, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18
  %254 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* noundef %255)
  %257 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %258 = call i8* @decimal_absval_add_one(i8* noundef %257)
  %259 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i8* noundef %258)
  %260 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  %262 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %261, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18
  %263 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* noundef %264)
  %266 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %267 = call i8* @decimal_absval_add_one(i8* noundef %266)
  %268 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8* noundef %267)
  %269 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0))
  call void @print_FLT(float noundef 0x3810000000000000)
  %270 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0))
  call void @print_FLT(float noundef 0x47EFFFFFE0000000)
  %271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0))
  call void @print_DBL(double noundef 0x10000000000000)
  %272 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0))
  call void @print_DBL(double noundef 0x7FEFFFFFFFFFFFFF)
  %273 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i64 0, i64 0))
  call void @print_LDBL(fp128 noundef 0xL00000000000000000001000000000000)
  %274 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0))
  call void @print_LDBL(fp128 noundef 0xLFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFF)
  %275 = call i32 @__libc_current_sigrtmin() #18
  %276 = sext i32 %275 to i64
  %277 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i64 noundef %276)
  %278 = call i32 @__libc_current_sigrtmax() #18
  %279 = sext i32 %278 to i64
  %280 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i64 noundef %279)
  %281 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i64 noundef 262144)
  call void @errno_iterate(i32 (i8*, i32)* noundef @print_errno, i8* noundef null)
  %282 = call i32 @print_errno(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef 95)
  %283 = call i32 @print_errno(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 noundef 11)
  %284 = call i32 @print_errno(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 noundef 35)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decimal_absval_add_one(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %3, align 1
  %16 = trunc i8 %15 to i1
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* noundef %21) #20
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8 48, i8* %25, align 1
  br label %26

26:                                               ; preds = %32, %1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 57
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  store i8 48, i8* %33, align 1
  br label %26, !llvm.loop !14

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = add i8 %36, 1
  store i8 %37, i8* %35, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  br label %45

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %3, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %6, align 8
  store i8 45, i8* %51, align 1
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %6, align 8
  ret i8* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_FLT(float noundef %0) #4 {
  %2 = alloca float, align 4
  %3 = alloca [31 x i8], align 1
  store float %0, float* %2, align 4
  %4 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %5 = load float, float* %2, align 4
  %6 = call i32 @ftoastr(i8* noundef %4, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef %5)
  %7 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0
  %8 = call i32 @puts(i8* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_DBL(double noundef %0) #4 {
  %2 = alloca double, align 8
  %3 = alloca [40 x i8], align 1
  store double %0, double* %2, align 8
  %4 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %5 = load double, double* %2, align 8
  %6 = call i32 @dtoastr(i8* noundef %4, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef %5)
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %8 = call i32 @puts(i8* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_LDBL(fp128 noundef %0) #4 {
  %2 = alloca fp128, align 16
  %3 = alloca [60 x i8], align 1
  store fp128 %0, fp128* %2, align 16
  %4 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0
  %5 = load fp128, fp128* %2, align 16
  %6 = call i32 @ldtoastr(i8* noundef %4, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef %5)
  %7 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0
  %8 = call i32 @puts(i8* noundef %7)
  ret void
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_errno(i8* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @strerrorname_np(i32 noundef %11) #18
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i8* [ %9, %8 ], [ %12, %10 ]
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @strerror(i32 noundef %19) #18
  %21 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %20)
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef %18, i8* noundef %21)
  br label %23

23:                                               ; preds = %17, %13
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strerrorname_np(i32 noundef) #2

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) #2

declare i32 @puts(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @file_name, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = trunc i8 %4 to i1
  %6 = zext i1 %5 to i8
  store i8 %6, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %5
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.100, i64 0, i64 0)) #18
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** @file_name, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** @file_name, align 8
  %20 = call i8* @quotearg_colon(i8* noundef %19)
  %21 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef %20, i8* noundef %21)
  br label %26

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.102, i64 0, i64 0), i8* noundef %25)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %27) #22
  unreachable

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %33) #22
  unreachable

34:                                               ; preds = %28
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store double %4, double* %10, align 8
  %17 = load double, double* %10, align 8
  store double %17, double* %11, align 8
  %18 = load double, double* %10, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load double, double* %10, align 8
  %22 = fneg double %21
  br label %25

23:                                               ; preds = %5
  %24 = load double, double* %10, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi double [ %22, %20 ], [ %24, %23 ]
  store double %26, double* %13, align 8
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %14, align 8
  store i8 37, i8* %28, align 1
  %30 = load i8*, i8** %14, align 8
  store i8 45, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %14, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  store i8 43, i8* %38, align 1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %14, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  store i8 32, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %14, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  store i8 48, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i8*, i8** %14, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %14, align 8
  store i8 42, i8* %62, align 1
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  store i8 46, i8* %64, align 1
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  store i8 42, i8* %66, align 1
  %68 = load i8*, i8** %14, align 8
  store i8 76, i8* %68, align 1
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 16
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 71, i32 103
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %14, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %14, align 8
  store i8 0, i8* %79, align 1
  %80 = load double, double* %13, align 8
  %81 = fcmp olt double %80, 0x10000000000000
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 15
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %110, %25
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load double, double* %11, align 8
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %85, i64 noundef %86, i8* noundef %87, i32 noundef %88, i32 noundef %89, double noundef %90) #18
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 17, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %7, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = call double @strtod(i8* noundef %103, i8** noundef null) #18
  %105 = load double, double* %10, align 8
  %106 = fcmp oeq double %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102, %94, %84
  %108 = load i32, i32* %16, align 4
  ret i32 %108

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %84
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare double @strtod(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errno_iterate(i32 (i8*, i32)* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32 (i8*, i32)*, align 8
  %4 = alloca i8*, align 8
  store i32 (i8*, i32)* %0, i32 (i8*, i32)** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 %5(i8* noundef %6, i32 noundef 33)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %790

10:                                               ; preds = %2
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 %11(i8* noundef %12, i32 noundef 84)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %790

16:                                               ; preds = %10
  %17 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 %17(i8* noundef %18, i32 noundef 34)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %790

22:                                               ; preds = %16
  %23 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 %23(i8* noundef %24, i32 noundef 7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %790

28:                                               ; preds = %22
  %29 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 %29(i8* noundef %30, i32 noundef 13)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %790

34:                                               ; preds = %28
  %35 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 %35(i8* noundef %36, i32 noundef 98)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %790

40:                                               ; preds = %34
  %41 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 %41(i8* noundef %42, i32 noundef 99)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %790

46:                                               ; preds = %40
  %47 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 %47(i8* noundef %48, i32 noundef 97)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %790

52:                                               ; preds = %46
  %53 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 %53(i8* noundef %54, i32 noundef 11)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %790

58:                                               ; preds = %52
  %59 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 %59(i8* noundef %60, i32 noundef 114)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %790

64:                                               ; preds = %58
  %65 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 %65(i8* noundef %66, i32 noundef 9)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %790

70:                                               ; preds = %64
  %71 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 %71(i8* noundef %72, i32 noundef 74)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %790

76:                                               ; preds = %70
  %77 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 %77(i8* noundef %78, i32 noundef 16)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %790

82:                                               ; preds = %76
  %83 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 %83(i8* noundef %84, i32 noundef 125)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %790

88:                                               ; preds = %82
  %89 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 %89(i8* noundef %90, i32 noundef 10)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %790

94:                                               ; preds = %88
  %95 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 %95(i8* noundef %96, i32 noundef 103)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %790

100:                                              ; preds = %94
  %101 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 %101(i8* noundef %102, i32 noundef 111)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %790

106:                                              ; preds = %100
  %107 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 %107(i8* noundef %108, i32 noundef 104)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %790

112:                                              ; preds = %106
  %113 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 %113(i8* noundef %114, i32 noundef 35)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %790

118:                                              ; preds = %112
  %119 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 %119(i8* noundef %120, i32 noundef 89)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %790

124:                                              ; preds = %118
  %125 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 %125(i8* noundef %126, i32 noundef 122)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %790

130:                                              ; preds = %124
  %131 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 %131(i8* noundef %132, i32 noundef 17)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %790

136:                                              ; preds = %130
  %137 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 %137(i8* noundef %138, i32 noundef 14)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %790

142:                                              ; preds = %136
  %143 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 %143(i8* noundef %144, i32 noundef 27)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %790

148:                                              ; preds = %142
  %149 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 %149(i8* noundef %150, i32 noundef 113)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %790

154:                                              ; preds = %148
  %155 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 %155(i8* noundef %156, i32 noundef 43)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %790

160:                                              ; preds = %154
  %161 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 %161(i8* noundef %162, i32 noundef 115)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %790

166:                                              ; preds = %160
  %167 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 %167(i8* noundef %168, i32 noundef 4)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %790

172:                                              ; preds = %166
  %173 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = call i32 %173(i8* noundef %174, i32 noundef 22)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %790

178:                                              ; preds = %172
  %179 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 %179(i8* noundef %180, i32 noundef 5)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %790

184:                                              ; preds = %178
  %185 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %186 = load i8*, i8** %4, align 8
  %187 = call i32 %185(i8* noundef %186, i32 noundef 106)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %790

190:                                              ; preds = %184
  %191 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %192 = load i8*, i8** %4, align 8
  %193 = call i32 %191(i8* noundef %192, i32 noundef 21)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %790

196:                                              ; preds = %190
  %197 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 %197(i8* noundef %198, i32 noundef 40)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %790

202:                                              ; preds = %196
  %203 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %204 = load i8*, i8** %4, align 8
  %205 = call i32 %203(i8* noundef %204, i32 noundef 24)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %790

208:                                              ; preds = %202
  %209 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 %209(i8* noundef %210, i32 noundef 31)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %790

214:                                              ; preds = %208
  %215 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = call i32 %215(i8* noundef %216, i32 noundef 90)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %790

220:                                              ; preds = %214
  %221 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %222 = load i8*, i8** %4, align 8
  %223 = call i32 %221(i8* noundef %222, i32 noundef 72)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %790

226:                                              ; preds = %220
  %227 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = call i32 %227(i8* noundef %228, i32 noundef 36)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %790

232:                                              ; preds = %226
  %233 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = call i32 %233(i8* noundef %234, i32 noundef 100)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %790

238:                                              ; preds = %232
  %239 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %240 = load i8*, i8** %4, align 8
  %241 = call i32 %239(i8* noundef %240, i32 noundef 102)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %790

244:                                              ; preds = %238
  %245 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %246 = load i8*, i8** %4, align 8
  %247 = call i32 %245(i8* noundef %246, i32 noundef 101)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %790

250:                                              ; preds = %244
  %251 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %252 = load i8*, i8** %4, align 8
  %253 = call i32 %251(i8* noundef %252, i32 noundef 23)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %790

256:                                              ; preds = %250
  %257 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %258 = load i8*, i8** %4, align 8
  %259 = call i32 %257(i8* noundef %258, i32 noundef 105)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %790

262:                                              ; preds = %256
  %263 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %264 = load i8*, i8** %4, align 8
  %265 = call i32 %263(i8* noundef %264, i32 noundef 61)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %790

268:                                              ; preds = %262
  %269 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %270 = load i8*, i8** %4, align 8
  %271 = call i32 %269(i8* noundef %270, i32 noundef 19)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %790

274:                                              ; preds = %268
  %275 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %276 = load i8*, i8** %4, align 8
  %277 = call i32 %275(i8* noundef %276, i32 noundef 2)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %790

280:                                              ; preds = %274
  %281 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %282 = load i8*, i8** %4, align 8
  %283 = call i32 %281(i8* noundef %282, i32 noundef 8)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %790

286:                                              ; preds = %280
  %287 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %288 = load i8*, i8** %4, align 8
  %289 = call i32 %287(i8* noundef %288, i32 noundef 37)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %790

292:                                              ; preds = %286
  %293 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %294 = load i8*, i8** %4, align 8
  %295 = call i32 %293(i8* noundef %294, i32 noundef 67)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %790

298:                                              ; preds = %292
  %299 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = call i32 %299(i8* noundef %300, i32 noundef 12)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %790

304:                                              ; preds = %298
  %305 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %306 = load i8*, i8** %4, align 8
  %307 = call i32 %305(i8* noundef %306, i32 noundef 42)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %790

310:                                              ; preds = %304
  %311 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %312 = load i8*, i8** %4, align 8
  %313 = call i32 %311(i8* noundef %312, i32 noundef 92)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %790

316:                                              ; preds = %310
  %317 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %318 = load i8*, i8** %4, align 8
  %319 = call i32 %317(i8* noundef %318, i32 noundef 28)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %790

322:                                              ; preds = %316
  %323 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %324 = load i8*, i8** %4, align 8
  %325 = call i32 %323(i8* noundef %324, i32 noundef 63)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %790

328:                                              ; preds = %322
  %329 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %330 = load i8*, i8** %4, align 8
  %331 = call i32 %329(i8* noundef %330, i32 noundef 60)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  br label %790

334:                                              ; preds = %328
  %335 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %336 = load i8*, i8** %4, align 8
  %337 = call i32 %335(i8* noundef %336, i32 noundef 38)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  br label %790

340:                                              ; preds = %334
  %341 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %342 = load i8*, i8** %4, align 8
  %343 = call i32 %341(i8* noundef %342, i32 noundef 107)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  br label %790

346:                                              ; preds = %340
  %347 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %348 = load i8*, i8** %4, align 8
  %349 = call i32 %347(i8* noundef %348, i32 noundef 20)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  br label %790

352:                                              ; preds = %346
  %353 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %354 = load i8*, i8** %4, align 8
  %355 = call i32 %353(i8* noundef %354, i32 noundef 39)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  br label %790

358:                                              ; preds = %352
  %359 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %360 = load i8*, i8** %4, align 8
  %361 = call i32 %359(i8* noundef %360, i32 noundef 131)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  br label %790

364:                                              ; preds = %358
  %365 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %366 = load i8*, i8** %4, align 8
  %367 = call i32 %365(i8* noundef %366, i32 noundef 88)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  br label %790

370:                                              ; preds = %364
  %371 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %372 = load i8*, i8** %4, align 8
  %373 = call i32 %371(i8* noundef %372, i32 noundef 25)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  br label %790

376:                                              ; preds = %370
  %377 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %378 = load i8*, i8** %4, align 8
  %379 = call i32 %377(i8* noundef %378, i32 noundef 6)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %790

382:                                              ; preds = %376
  %383 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %384 = load i8*, i8** %4, align 8
  %385 = call i32 %383(i8* noundef %384, i32 noundef 95)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  br label %790

388:                                              ; preds = %382
  %389 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %390 = load i8*, i8** %4, align 8
  %391 = call i32 %389(i8* noundef %390, i32 noundef 75)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %388
  br label %790

394:                                              ; preds = %388
  %395 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %396 = load i8*, i8** %4, align 8
  %397 = call i32 %395(i8* noundef %396, i32 noundef 130)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %394
  br label %790

400:                                              ; preds = %394
  %401 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %402 = load i8*, i8** %4, align 8
  %403 = call i32 %401(i8* noundef %402, i32 noundef 1)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  br label %790

406:                                              ; preds = %400
  %407 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %408 = load i8*, i8** %4, align 8
  %409 = call i32 %407(i8* noundef %408, i32 noundef 32)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %790

412:                                              ; preds = %406
  %413 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %414 = load i8*, i8** %4, align 8
  %415 = call i32 %413(i8* noundef %414, i32 noundef 71)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %412
  br label %790

418:                                              ; preds = %412
  %419 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %420 = load i8*, i8** %4, align 8
  %421 = call i32 %419(i8* noundef %420, i32 noundef 93)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %418
  br label %790

424:                                              ; preds = %418
  %425 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %426 = load i8*, i8** %4, align 8
  %427 = call i32 %425(i8* noundef %426, i32 noundef 91)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  br label %790

430:                                              ; preds = %424
  %431 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %432 = load i8*, i8** %4, align 8
  %433 = call i32 %431(i8* noundef %432, i32 noundef 30)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %430
  br label %790

436:                                              ; preds = %430
  %437 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %438 = load i8*, i8** %4, align 8
  %439 = call i32 %437(i8* noundef %438, i32 noundef 94)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  br label %790

442:                                              ; preds = %436
  %443 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %444 = load i8*, i8** %4, align 8
  %445 = call i32 %443(i8* noundef %444, i32 noundef 29)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  br label %790

448:                                              ; preds = %442
  %449 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %450 = load i8*, i8** %4, align 8
  %451 = call i32 %449(i8* noundef %450, i32 noundef 3)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  br label %790

454:                                              ; preds = %448
  %455 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %456 = load i8*, i8** %4, align 8
  %457 = call i32 %455(i8* noundef %456, i32 noundef 116)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %454
  br label %790

460:                                              ; preds = %454
  %461 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %462 = load i8*, i8** %4, align 8
  %463 = call i32 %461(i8* noundef %462, i32 noundef 62)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %460
  br label %790

466:                                              ; preds = %460
  %467 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %468 = load i8*, i8** %4, align 8
  %469 = call i32 %467(i8* noundef %468, i32 noundef 110)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %466
  br label %790

472:                                              ; preds = %466
  %473 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %474 = load i8*, i8** %4, align 8
  %475 = call i32 %473(i8* noundef %474, i32 noundef 26)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  br label %790

478:                                              ; preds = %472
  %479 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %480 = load i8*, i8** %4, align 8
  %481 = call i32 %479(i8* noundef %480, i32 noundef 18)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %478
  br label %790

484:                                              ; preds = %478
  %485 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %486 = load i8*, i8** %4, align 8
  %487 = call i32 %485(i8* noundef %486, i32 noundef 68)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %484
  br label %790

490:                                              ; preds = %484
  %491 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %492 = load i8*, i8** %4, align 8
  %493 = call i32 %491(i8* noundef %492, i32 noundef 52)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %490
  br label %790

496:                                              ; preds = %490
  %497 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %498 = load i8*, i8** %4, align 8
  %499 = call i32 %497(i8* noundef %498, i32 noundef 77)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %496
  br label %790

502:                                              ; preds = %496
  %503 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %504 = load i8*, i8** %4, align 8
  %505 = call i32 %503(i8* noundef %504, i32 noundef 53)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  br label %790

508:                                              ; preds = %502
  %509 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %510 = load i8*, i8** %4, align 8
  %511 = call i32 %509(i8* noundef %510, i32 noundef 56)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %508
  br label %790

514:                                              ; preds = %508
  %515 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %516 = load i8*, i8** %4, align 8
  %517 = call i32 %515(i8* noundef %516, i32 noundef 57)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %514
  br label %790

520:                                              ; preds = %514
  %521 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %522 = load i8*, i8** %4, align 8
  %523 = call i32 %521(i8* noundef %522, i32 noundef 59)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %520
  br label %790

526:                                              ; preds = %520
  %527 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %528 = load i8*, i8** %4, align 8
  %529 = call i32 %527(i8* noundef %528, i32 noundef 44)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %526
  br label %790

532:                                              ; preds = %526
  %533 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %534 = load i8*, i8** %4, align 8
  %535 = call i32 %533(i8* noundef %534, i32 noundef 70)
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %532
  br label %790

538:                                              ; preds = %532
  %539 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %540 = load i8*, i8** %4, align 8
  %541 = call i32 %539(i8* noundef %540, i32 noundef 73)
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %538
  br label %790

544:                                              ; preds = %538
  %545 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %546 = load i8*, i8** %4, align 8
  %547 = call i32 %545(i8* noundef %546, i32 noundef 112)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %544
  br label %790

550:                                              ; preds = %544
  %551 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %552 = load i8*, i8** %4, align 8
  %553 = call i32 %551(i8* noundef %552, i32 noundef 133)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %550
  br label %790

556:                                              ; preds = %550
  %557 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %558 = load i8*, i8** %4, align 8
  %559 = call i32 %557(i8* noundef %558, i32 noundef 120)
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %556
  br label %790

562:                                              ; preds = %556
  %563 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %564 = load i8*, i8** %4, align 8
  %565 = call i32 %563(i8* noundef %564, i32 noundef 127)
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %562
  br label %790

568:                                              ; preds = %562
  %569 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %570 = load i8*, i8** %4, align 8
  %571 = call i32 %569(i8* noundef %570, i32 noundef 129)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %574

573:                                              ; preds = %568
  br label %790

574:                                              ; preds = %568
  %575 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %576 = load i8*, i8** %4, align 8
  %577 = call i32 %575(i8* noundef %576, i32 noundef 128)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %574
  br label %790

580:                                              ; preds = %574
  %581 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %582 = load i8*, i8** %4, align 8
  %583 = call i32 %581(i8* noundef %582, i32 noundef 51)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %580
  br label %790

586:                                              ; preds = %580
  %587 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %588 = load i8*, i8** %4, align 8
  %589 = call i32 %587(i8* noundef %588, i32 noundef 45)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %586
  br label %790

592:                                              ; preds = %586
  %593 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %594 = load i8*, i8** %4, align 8
  %595 = call i32 %593(i8* noundef %594, i32 noundef 46)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %598

597:                                              ; preds = %592
  br label %790

598:                                              ; preds = %592
  %599 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %600 = load i8*, i8** %4, align 8
  %601 = call i32 %599(i8* noundef %600, i32 noundef 47)
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %604

603:                                              ; preds = %598
  br label %790

604:                                              ; preds = %598
  %605 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %606 = load i8*, i8** %4, align 8
  %607 = call i32 %605(i8* noundef %606, i32 noundef 79)
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  br label %790

610:                                              ; preds = %604
  %611 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %612 = load i8*, i8** %4, align 8
  %613 = call i32 %611(i8* noundef %612, i32 noundef 80)
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %610
  br label %790

616:                                              ; preds = %610
  %617 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %618 = load i8*, i8** %4, align 8
  %619 = call i32 %617(i8* noundef %618, i32 noundef 83)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %616
  br label %790

622:                                              ; preds = %616
  %623 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %624 = load i8*, i8** %4, align 8
  %625 = call i32 %623(i8* noundef %624, i32 noundef 82)
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  br label %790

628:                                              ; preds = %622
  %629 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %630 = load i8*, i8** %4, align 8
  %631 = call i32 %629(i8* noundef %630, i32 noundef 81)
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %628
  br label %790

634:                                              ; preds = %628
  %635 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %636 = load i8*, i8** %4, align 8
  %637 = call i32 %635(i8* noundef %636, i32 noundef 48)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %634
  br label %790

640:                                              ; preds = %634
  %641 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %642 = load i8*, i8** %4, align 8
  %643 = call i32 %641(i8* noundef %642, i32 noundef 124)
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %646

645:                                              ; preds = %640
  br label %790

646:                                              ; preds = %640
  %647 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %648 = load i8*, i8** %4, align 8
  %649 = call i32 %647(i8* noundef %648, i32 noundef 119)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  br label %790

652:                                              ; preds = %646
  %653 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %654 = load i8*, i8** %4, align 8
  %655 = call i32 %653(i8* noundef %654, i32 noundef 55)
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %658

657:                                              ; preds = %652
  br label %790

658:                                              ; preds = %652
  %659 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %660 = load i8*, i8** %4, align 8
  %661 = call i32 %659(i8* noundef %660, i32 noundef 50)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %658
  br label %790

664:                                              ; preds = %658
  %665 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %666 = load i8*, i8** %4, align 8
  %667 = call i32 %665(i8* noundef %666, i32 noundef 126)
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %670

669:                                              ; preds = %664
  br label %790

670:                                              ; preds = %664
  %671 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %672 = load i8*, i8** %4, align 8
  %673 = call i32 %671(i8* noundef %672, i32 noundef 123)
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %670
  br label %790

676:                                              ; preds = %670
  %677 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %678 = load i8*, i8** %4, align 8
  %679 = call i32 %677(i8* noundef %678, i32 noundef 64)
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %682

681:                                              ; preds = %676
  br label %790

682:                                              ; preds = %676
  %683 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %684 = load i8*, i8** %4, align 8
  %685 = call i32 %683(i8* noundef %684, i32 noundef 65)
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %682
  br label %790

688:                                              ; preds = %682
  %689 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %690 = load i8*, i8** %4, align 8
  %691 = call i32 %689(i8* noundef %690, i32 noundef 15)
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %694

693:                                              ; preds = %688
  br label %790

694:                                              ; preds = %688
  %695 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %696 = load i8*, i8** %4, align 8
  %697 = call i32 %695(i8* noundef %696, i32 noundef 118)
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %700

699:                                              ; preds = %694
  br label %790

700:                                              ; preds = %694
  %701 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %702 = load i8*, i8** %4, align 8
  %703 = call i32 %701(i8* noundef %702, i32 noundef 76)
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %706

705:                                              ; preds = %700
  br label %790

706:                                              ; preds = %700
  %707 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %708 = load i8*, i8** %4, align 8
  %709 = call i32 %707(i8* noundef %708, i32 noundef 96)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %712

711:                                              ; preds = %706
  br label %790

712:                                              ; preds = %706
  %713 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %714 = load i8*, i8** %4, align 8
  %715 = call i32 %713(i8* noundef %714, i32 noundef 78)
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %712
  br label %790

718:                                              ; preds = %712
  %719 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %720 = load i8*, i8** %4, align 8
  %721 = call i32 %719(i8* noundef %720, i32 noundef 66)
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %718
  br label %790

724:                                              ; preds = %718
  %725 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %726 = load i8*, i8** %4, align 8
  %727 = call i32 %725(i8* noundef %726, i32 noundef 121)
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %730

729:                                              ; preds = %724
  br label %790

730:                                              ; preds = %724
  %731 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %732 = load i8*, i8** %4, align 8
  %733 = call i32 %731(i8* noundef %732, i32 noundef 85)
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %730
  br label %790

736:                                              ; preds = %730
  %737 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %738 = load i8*, i8** %4, align 8
  %739 = call i32 %737(i8* noundef %738, i32 noundef 132)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %736
  br label %790

742:                                              ; preds = %736
  %743 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %744 = load i8*, i8** %4, align 8
  %745 = call i32 %743(i8* noundef %744, i32 noundef 108)
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %748

747:                                              ; preds = %742
  br label %790

748:                                              ; preds = %742
  %749 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %750 = load i8*, i8** %4, align 8
  %751 = call i32 %749(i8* noundef %750, i32 noundef 69)
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %754

753:                                              ; preds = %748
  br label %790

754:                                              ; preds = %748
  %755 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %756 = load i8*, i8** %4, align 8
  %757 = call i32 %755(i8* noundef %756, i32 noundef 86)
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %759, label %760

759:                                              ; preds = %754
  br label %790

760:                                              ; preds = %754
  %761 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %762 = load i8*, i8** %4, align 8
  %763 = call i32 %761(i8* noundef %762, i32 noundef 109)
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %766

765:                                              ; preds = %760
  br label %790

766:                                              ; preds = %760
  %767 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %768 = load i8*, i8** %4, align 8
  %769 = call i32 %767(i8* noundef %768, i32 noundef 117)
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %766
  br label %790

772:                                              ; preds = %766
  %773 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %774 = load i8*, i8** %4, align 8
  %775 = call i32 %773(i8* noundef %774, i32 noundef 49)
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %778

777:                                              ; preds = %772
  br label %790

778:                                              ; preds = %772
  %779 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %780 = load i8*, i8** %4, align 8
  %781 = call i32 %779(i8* noundef %780, i32 noundef 87)
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %784

783:                                              ; preds = %778
  br label %790

784:                                              ; preds = %778
  %785 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8
  %786 = load i8*, i8** %4, align 8
  %787 = call i32 %785(i8* noundef %786, i32 noundef 54)
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %790

789:                                              ; preds = %784
  br label %790

790:                                              ; preds = %9, %15, %21, %27, %33, %39, %45, %51, %57, %63, %69, %75, %81, %87, %93, %99, %105, %111, %117, %123, %129, %135, %141, %147, %153, %159, %165, %171, %177, %183, %189, %195, %201, %207, %213, %219, %225, %231, %237, %243, %249, %255, %261, %267, %273, %279, %285, %291, %297, %303, %309, %315, %321, %327, %333, %339, %345, %351, %357, %363, %369, %375, %381, %387, %393, %399, %405, %411, %417, %423, %429, %435, %441, %447, %453, %459, %465, %471, %477, %483, %489, %495, %501, %507, %513, %519, %525, %531, %537, %543, %549, %555, %561, %567, %573, %579, %585, %591, %597, %603, %609, %615, %621, %627, %633, %639, %645, %651, %657, %663, %669, %675, %681, %687, %693, %699, %705, %711, %717, %723, %729, %735, %741, %747, %753, %759, %765, %771, %777, %783, %789, %784
  ret void
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  call void @flush_stdout()
  %9 = load void ()*, void ()** @error_print_progname, align 8
  %10 = icmp ne void ()* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8
  call void %12()
  br label %17

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i8* @getprogname() #20
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0), i8* noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false)
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp sle i32 0, %2
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @is_open(i32 noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9)
  br label %11

11:                                               ; preds = %8, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8)
  %14 = load i32, i32* @error_message_count, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* @error_message_count, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  call void @print_errno_message(i32 noundef %19)
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  call void @exit(i32 noundef %28) #19
  unreachable

29:                                               ; preds = %20
  ret void
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.109, i64 0, i64 0)) #18
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.110, i64 0, i64 0), i8* noundef %14)
  ret void
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3)
  %5 = icmp sle i32 0, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.va_end(i8* %15)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @error_one_per_line, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %19
  br label %61

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** @verror_at_line.old_file_name, align 8
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* @verror_at_line.old_line_number, align 4
  br label %38

38:                                               ; preds = %35, %6
  call void @flush_stdout()
  %39 = load void ()*, void ()** @error_print_progname, align 8
  %40 = icmp ne void ()* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8
  call void %42()
  br label %47

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i8* @getprogname() #20
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.113, i64 0, i64 0), i8* noundef %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0)
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false)
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12)
  br label %61

61:                                               ; preds = %47, %34
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.va_end(i8* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float %4, float* %10, align 4
  %17 = load float, float* %10, align 4
  %18 = fpext float %17 to double
  store double %18, double* %11, align 8
  %19 = load float, float* %10, align 4
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load float, float* %10, align 4
  %23 = fneg float %22
  br label %26

24:                                               ; preds = %5
  %25 = load float, float* %10, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi float [ %23, %21 ], [ %25, %24 ]
  store float %27, float* %13, align 4
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %14, align 8
  store i8 37, i8* %29, align 1
  %31 = load i8*, i8** %14, align 8
  store i8 45, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %14, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  store i8 43, i8* %39, align 1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %14, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  store i8 32, i8* %47, align 1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %14, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  store i8 48, i8* %55, align 1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i8*, i8** %14, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %14, align 8
  store i8 42, i8* %63, align 1
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  store i8 46, i8* %65, align 1
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %14, align 8
  store i8 42, i8* %67, align 1
  %69 = load i8*, i8** %14, align 8
  store i8 76, i8* %69, align 1
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8* %71, i8** %14, align 8
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 16
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 71, i32 103
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %14, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i8*, i8** %14, align 8
  store i8 0, i8* %80, align 1
  %81 = load float, float* %13, align 4
  %82 = fcmp olt float %81, 0x3810000000000000
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 6
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %111, %26
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load double, double* %11, align 8
  %92 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %86, i64 noundef %87, i8* noundef %88, i32 noundef %89, i32 noundef %90, double noundef %91) #18
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4
  %97 = icmp sle i32 9, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %7, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = call float @strtof(i8* noundef %104, i8** noundef null) #18
  %106 = load float, float* %10, align 4
  %107 = fcmp oeq float %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %95, %85
  %109 = load i32, i32* %16, align 4
  ret i32 %109

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %85
}

; Function Attrs: nounwind
declare float @strtof(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, fp128 noundef %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca fp128, align 16
  %11 = alloca fp128, align 16
  %12 = alloca [11 x i8], align 1
  %13 = alloca fp128, align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store fp128 %4, fp128* %10, align 16
  %17 = load fp128, fp128* %10, align 16
  store fp128 %17, fp128* %11, align 16
  %18 = load fp128, fp128* %10, align 16
  %19 = fcmp olt fp128 %18, 0xL00000000000000000000000000000000
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load fp128, fp128* %10, align 16
  %22 = fneg fp128 %21
  br label %25

23:                                               ; preds = %5
  %24 = load fp128, fp128* %10, align 16
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi fp128 [ %22, %20 ], [ %24, %23 ]
  store fp128 %26, fp128* %13, align 16
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %14, align 8
  store i8 37, i8* %28, align 1
  %30 = load i8*, i8** %14, align 8
  store i8 45, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %14, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  store i8 43, i8* %38, align 1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %14, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  store i8 32, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %14, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  store i8 48, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i8*, i8** %14, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %14, align 8
  store i8 42, i8* %62, align 1
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  store i8 46, i8* %64, align 1
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  store i8 42, i8* %66, align 1
  %68 = load i8*, i8** %14, align 8
  store i8 76, i8* %68, align 1
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 16
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 71, i32 103
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %14, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %14, align 8
  store i8 0, i8* %79, align 1
  %80 = load fp128, fp128* %13, align 16
  %81 = fcmp olt fp128 %80, 0xL00000000000000000001000000000000
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 33
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %110, %25
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load fp128, fp128* %11, align 16
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %85, i64 noundef %86, i8* noundef %87, i32 noundef %88, i32 noundef %89, fp128 noundef %90) #18
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 36, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %7, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = call fp128 @strtold(i8* noundef %103, i8** noundef null) #18
  %105 = load fp128, fp128* %10, align 16
  %106 = fcmp oeq fp128 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102, %94, %84
  %108 = load i32, i32* %16, align 4
  ret i32 %108

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %84
}

; Function Attrs: nounwind
declare fp128 @strtold(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"struct.std::__va_list", align 8
  %16 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store void (i32)* %5, void (i32)** %12, align 8
  %17 = load i32, i32* @opterr, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* @opterr, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %41

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  %22 = load i8**, i8*** %8, align 8
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ]

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8
  call void %29(i32 noundef 0)
  br label %39

30:                                               ; preds = %26
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*
  call void @llvm.va_start(i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false)
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16)
  call void @exit(i32 noundef 0) #19
  unreachable

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* @opterr, align 4
  store i32 0, i32* @optind, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca void (i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %"struct.std::__va_list", align 8
  %19 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  store void (i32)* %6, void (i32)** %14, align 8
  %21 = load i32, i32* @opterr, align 4
  store i32 %21, i32* %15, align 4
  store i32 1, i32* @opterr, align 4
  %22 = load i8, i8* %13, align 1
  %23 = trunc i8 %22 to i1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.129, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0)
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %48

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ]

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8
  call void %35(i32 noundef 0)
  br label %47

36:                                               ; preds = %32
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*
  call void @llvm.va_start(i8* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19)
  call void @exit(i32 noundef 0) #19
  unreachable

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8
  %46 = load volatile i32, i32* @exit_failure, align 4
  call void %45(i32 noundef %46)
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* @opterr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  br label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ]
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp sle i64 7, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -7
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i64 0, i64 0), i64 noundef 7)
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.135, i64 0, i64 0), i64 noundef 3) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** @program_name, align 8
  %38 = load i8*, i8** %2, align 8
  store i8* %38, i8** @program_invocation_name, align 8
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** @program_invocation_short_name, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @gettext(i8* noundef %9) #18
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %26

16:                                               ; preds = %2
  call void @mbszero(%struct.__mbstate_t* noundef %8)
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 2047
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %3, align 8
  br label %26

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  %5 = call i32* @__errno_location() #21
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  %8 = icmp ne %struct.quoting_options* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ]
  %14 = bitcast %struct.quoting_options* %13 to i8*
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24
  %16 = bitcast i8* %15 to %struct.quoting_options*
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @__errno_location() #21
  store i32 %17, i32* %18, align 4
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  ret %struct.quoting_options* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  %4 = icmp ne %struct.quoting_options* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ]
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %7 = icmp ne %struct.quoting_options* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ]
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0
  store i32 %5, i32* %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %13 = icmp ne %struct.quoting_options* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ]
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i64
  %23 = udiv i64 %22, 32
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i64
  %27 = urem i64 %26, 32
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = lshr i32 %30, %31
  %33 = and i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %37, %38
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %7 = icmp ne %struct.quoting_options* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %8 = icmp ne %struct.quoting_options* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8
  br label %10

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0
  store i32 10, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %10
  call void @abort() #19
  unreachable

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8
  %15 = icmp ne %struct.quoting_options* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8
  br label %19

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ]
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8
  %21 = call i32* @__errno_location() #21
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41)
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32* @__errno_location() #21
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* %13, align 8
  ret i64 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 {
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
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %44 = call i64 @__ctype_get_mb_cur_max() #18
  %45 = icmp eq i64 %44, 1
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %20, align 1
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i64 0, i64* %24, align 8
  store i8 0, i8* %25, align 1
  %47 = load i32, i32* %16, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %26, align 1
  store i8 0, i8* %27, align 1
  store i8 1, i8* %28, align 1
  br label %51

51:                                               ; preds = %1034, %9
  store i8 0, i8* %29, align 1
  %52 = load i32, i32* %15, align 4
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
  ]

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4
  store i8 1, i8* %26, align 1
  br label %54

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = load i64, i64* %21, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 34, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), i8** %23, align 8
  store i64 1, i64* %24, align 8
  br label %138

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1
  store i8 0, i8* %26, align 1
  br label %138

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.149, i64 0, i64 0), i32 noundef %76)
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0), i32 noundef %78)
  store i8* %79, i8** %19, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1
  %82 = trunc i8 %81 to i1
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %18, align 8
  store i8* %84, i8** %30, align 8
  br label %85

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %21, align 8
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %30, align 8
  br label %85, !llvm.loop !15

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1
  %109 = load i8*, i8** %19, align 8
  store i8* %109, i8** %23, align 8
  %110 = load i8*, i8** %23, align 8
  %111 = call i64 @strlen(i8* noundef %110) #20
  store i64 %111, i64* %24, align 8
  br label %138

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1
  br label %113

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1
  br label %114

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1
  br label %118

118:                                              ; preds = %117, %114
  br label %119

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4
  %120 = load i8, i8* %26, align 1
  %121 = trunc i8 %120 to i1
  br i1 %121, label %135, label %122

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = load i64, i64* %21, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 39, i8* %130, align 1
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %21, align 8
  br label %134

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0), i8** %23, align 8
  store i64 1, i64* %24, align 8
  br label %138

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1
  br label %138

137:                                              ; preds = %51
  call void @abort() #19
  unreachable

138:                                              ; preds = %136, %135, %108, %71, %70
  store i64 0, i64* %31, align 8
  br label %139

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8
  %141 = icmp eq i64 %140, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8
  %144 = load i64, i64* %31, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  br label %155

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* %14, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  br label %155

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ]
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %159, label %996

159:                                              ; preds = %155
  store i8 0, i8* %32, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %34, align 1
  %160 = load i8, i8* %25, align 1
  %161 = trunc i8 %160 to i1
  br i1 %161, label %162, label %197

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 2
  br i1 %164, label %165, label %197

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %24, align 8
  %171 = add i64 %169, %170
  %172 = load i64, i64* %14, align 8
  %173 = icmp eq i64 %172, -1
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8
  %176 = icmp ult i64 1, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8
  %179 = call i64 @strlen(i8* noundef %178) #20
  store i64 %179, i64* %14, align 8
  br label %182

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ]
  %184 = icmp ule i64 %171, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* %31, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i8*, i8** %23, align 8
  %190 = load i64, i64* %24, align 8
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190)
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1
  %194 = trunc i8 %193 to i1
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %1078

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1
  br label %197

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  %198 = load i8*, i8** %13, align 8
  %199 = load i64, i64* %31, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  store i8 %201, i8* %35, align 1
  %202 = load i8, i8* %35, align 1
  %203 = zext i8 %202 to i32
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
  ]

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1
  %206 = trunc i8 %205 to i1
  br i1 %206, label %207, label %318

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1
  %210 = trunc i8 %209 to i1
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %1078

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1
  %213 = load i32, i32* %15, align 4
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %255

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1
  %217 = trunc i8 %216 to i1
  br i1 %217, label %255, label %218

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8
  %221 = load i64, i64* %12, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8
  %225 = load i64, i64* %21, align 8
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 39, i8* %226, align 1
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %21, align 8
  br label %230

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* %12, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8
  %237 = load i64, i64* %21, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8 36, i8* %238, align 1
  br label %239

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %21, align 8
  br label %242

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8
  %245 = load i64, i64* %12, align 8
  %246 = icmp ult i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8
  %249 = load i64, i64* %21, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8 39, i8* %250, align 1
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %21, align 8
  br label %254

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1
  br label %255

255:                                              ; preds = %254, %215, %212
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8
  %258 = load i64, i64* %12, align 8
  %259 = icmp ult i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8
  %262 = load i64, i64* %21, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8 92, i8* %263, align 1
  br label %264

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %21, align 8
  br label %267

267:                                              ; preds = %264
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 2
  br i1 %270, label %271, label %317

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8
  %273 = add i64 %272, 1
  %274 = load i64, i64* %14, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %317

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8
  %278 = load i64, i64* %31, align 8
  %279 = add i64 %278, 1
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp sle i32 48, %282
  br i1 %283, label %284, label %317

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8
  %286 = load i64, i64* %31, align 8
  %287 = add i64 %286, 1
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp sle i32 %290, 57
  br i1 %291, label %292, label %317

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8
  %295 = load i64, i64* %12, align 8
  %296 = icmp ult i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8
  %299 = load i64, i64* %21, align 8
  %300 = getelementptr inbounds i8, i8* %298, i64 %299
  store i8 48, i8* %300, align 1
  br label %301

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %21, align 8
  br label %304

304:                                              ; preds = %301
  br label %305

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8
  %307 = load i64, i64* %12, align 8
  %308 = icmp ult i64 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8
  %311 = load i64, i64* %21, align 8
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8 48, i8* %312, align 1
  br label %313

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %21, align 8
  br label %316

316:                                              ; preds = %313
  br label %317

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1
  br label %324

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4
  %320 = and i32 %319, 1
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  br label %993

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ]

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1
  %329 = trunc i8 %328 to i1
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  br label %1078

331:                                              ; preds = %327
  br label %418

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4
  %334 = and i32 %333, 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %417

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8
  %338 = add i64 %337, 2
  %339 = load i64, i64* %14, align 8
  %340 = icmp ult i64 %338, %339
  br i1 %340, label %341, label %417

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8
  %343 = load i64, i64* %31, align 8
  %344 = add i64 %343, 1
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = icmp eq i32 %347, 63
  br i1 %348, label %349, label %417

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8
  %351 = load i64, i64* %31, align 8
  %352 = add i64 %351, 2
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
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
  ]

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1
  %358 = trunc i8 %357 to i1
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %1078

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8
  %362 = load i64, i64* %31, align 8
  %363 = add i64 %362, 2
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = load i8, i8* %364, align 1
  store i8 %365, i8* %35, align 1
  %366 = load i64, i64* %31, align 8
  %367 = add i64 %366, 2
  store i64 %367, i64* %31, align 8
  br label %368

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8
  %370 = load i64, i64* %12, align 8
  %371 = icmp ult i64 %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8
  %374 = load i64, i64* %21, align 8
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  store i8 63, i8* %375, align 1
  br label %376

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %21, align 8
  br label %379

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8
  %382 = load i64, i64* %12, align 8
  %383 = icmp ult i64 %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8
  %386 = load i64, i64* %21, align 8
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8 34, i8* %387, align 1
  br label %388

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8
  %390 = add i64 %389, 1
  store i64 %390, i64* %21, align 8
  br label %391

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8
  %394 = load i64, i64* %12, align 8
  %395 = icmp ult i64 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8
  %398 = load i64, i64* %21, align 8
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8 34, i8* %399, align 1
  br label %400

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8
  %402 = add i64 %401, 1
  store i64 %402, i64* %21, align 8
  br label %403

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8
  %406 = load i64, i64* %12, align 8
  %407 = icmp ult i64 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8
  %410 = load i64, i64* %21, align 8
  %411 = getelementptr inbounds i8, i8* %409, i64 %410
  store i8 63, i8* %411, align 1
  br label %412

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %21, align 8
  br label %415

415:                                              ; preds = %412
  br label %416

416:                                              ; preds = %349, %415
  br label %417

417:                                              ; preds = %416, %341, %336, %332
  br label %418

418:                                              ; preds = %325, %417, %331
  br label %849

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1
  br label %454

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1
  br label %454

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1
  br label %454

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1
  br label %446

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1
  br label %446

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1
  br label %446

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1
  br label %454

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1
  store i8 %427, i8* %36, align 1
  %428 = load i32, i32* %15, align 4
  %429 = icmp eq i32 %428, 2
  br i1 %429, label %430, label %435

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1
  %432 = trunc i8 %431 to i1
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  br label %1078

434:                                              ; preds = %430
  br label %942

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1
  %437 = trunc i8 %436 to i1
  br i1 %437, label %438, label %445

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1
  %440 = trunc i8 %439 to i1
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  br label %942

445:                                              ; preds = %441, %438, %435
  br label %446

446:                                              ; preds = %445, %424, %423, %422
  %447 = load i32, i32* %15, align 4
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %453

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1
  %451 = trunc i8 %450 to i1
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  br label %1078

453:                                              ; preds = %449, %446
  br label %454

454:                                              ; preds = %453, %425, %421, %420, %419
  %455 = load i8, i8* %25, align 1
  %456 = trunc i8 %455 to i1
  br i1 %456, label %457, label %459

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1
  store i8 %458, i8* %35, align 1
  br label %880

459:                                              ; preds = %454
  br label %849

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8
  %462 = icmp eq i64 %461, -1
  br i1 %462, label %463, label %469

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8
  %465 = getelementptr inbounds i8, i8* %464, i64 1
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %472

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8
  %471 = icmp eq i64 %470, 1
  br i1 %471, label %473, label %472

472:                                              ; preds = %469, %463
  br label %849

473:                                              ; preds = %469, %463
  br label %474

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  br label %849

478:                                              ; preds = %474
  br label %479

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1
  br label %480

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4
  %482 = icmp eq i32 %481, 2
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1
  %485 = trunc i8 %484 to i1
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  br label %1078

487:                                              ; preds = %483, %480
  br label %849

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1
  store i8 1, i8* %34, align 1
  %489 = load i32, i32* %15, align 4
  %490 = icmp eq i32 %489, 2
  br i1 %490, label %491, label %540

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1
  %493 = trunc i8 %492 to i1
  br i1 %493, label %494, label %495

494:                                              ; preds = %491
  br label %1078

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %503, label %501

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8
  store i64 %502, i64* %22, align 8
  store i64 0, i64* %12, align 8
  br label %503

503:                                              ; preds = %501, %498, %495
  br label %504

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8
  %506 = load i64, i64* %12, align 8
  %507 = icmp ult i64 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8
  %510 = load i64, i64* %21, align 8
  %511 = getelementptr inbounds i8, i8* %509, i64 %510
  store i8 39, i8* %511, align 1
  br label %512

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8
  %514 = add i64 %513, 1
  store i64 %514, i64* %21, align 8
  br label %515

515:                                              ; preds = %512
  br label %516

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8
  %518 = load i64, i64* %12, align 8
  %519 = icmp ult i64 %517, %518
  br i1 %519, label %520, label %524

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8
  %522 = load i64, i64* %21, align 8
  %523 = getelementptr inbounds i8, i8* %521, i64 %522
  store i8 92, i8* %523, align 1
  br label %524

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %21, align 8
  br label %527

527:                                              ; preds = %524
  br label %528

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8
  %530 = load i64, i64* %12, align 8
  %531 = icmp ult i64 %529, %530
  br i1 %531, label %532, label %536

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8
  %534 = load i64, i64* %21, align 8
  %535 = getelementptr inbounds i8, i8* %533, i64 %534
  store i8 39, i8* %535, align 1
  br label %536

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %21, align 8
  br label %539

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1
  br label %540

540:                                              ; preds = %539, %488
  br label %849

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1
  br label %849

542:                                              ; preds = %197
  %543 = load i8, i8* %20, align 1
  %544 = trunc i8 %543 to i1
  br i1 %544, label %545, label %557

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8
  %546 = call i16** @__ctype_b_loc() #21
  %547 = load i16*, i16** %546, align 8
  %548 = load i8, i8* %35, align 1
  %549 = zext i8 %548 to i32
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i16, i16* %547, i64 %550
  %552 = load i16, i16* %551, align 2
  %553 = zext i16 %552 to i32
  %554 = and i32 %553, 16384
  %555 = icmp ne i32 %554, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %38, align 1
  br label %648

557:                                              ; preds = %542
  call void @mbszero(%struct.__mbstate_t* noundef %39)
  store i64 0, i64* %37, align 8
  store i8 1, i8* %38, align 1
  %558 = load i64, i64* %14, align 8
  %559 = icmp eq i64 %558, -1
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8
  %562 = call i64 @strlen(i8* noundef %561) #20
  store i64 %562, i64* %14, align 8
  br label %563

563:                                              ; preds = %560, %557
  br label %564

564:                                              ; preds = %563
  %565 = load i8*, i8** %13, align 8
  %566 = load i64, i64* %31, align 8
  %567 = load i64, i64* %37, align 8
  %568 = add i64 %566, %567
  %569 = getelementptr inbounds i8, i8* %565, i64 %568
  %570 = load i64, i64* %14, align 8
  %571 = load i64, i64* %31, align 8
  %572 = load i64, i64* %37, align 8
  %573 = add i64 %571, %572
  %574 = sub i64 %570, %573
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39)
  store i64 %575, i64* %41, align 8
  %576 = load i64, i64* %41, align 8
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %564
  br label %647

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8
  %581 = icmp eq i64 %580, -1
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1
  br label %647

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8
  %585 = icmp eq i64 %584, -2
  br i1 %585, label %586, label %608

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1
  br label %587

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8
  %589 = load i64, i64* %37, align 8
  %590 = add i64 %588, %589
  %591 = load i64, i64* %14, align 8
  %592 = icmp ult i64 %590, %591
  br i1 %592, label %593, label %602

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8
  %595 = load i64, i64* %31, align 8
  %596 = load i64, i64* %37, align 8
  %597 = add i64 %595, %596
  %598 = getelementptr inbounds i8, i8* %594, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i32
  %601 = icmp ne i32 %600, 0
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ]
  br i1 %603, label %604, label %607

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8
  %606 = add i64 %605, 1
  store i64 %606, i64* %37, align 8
  br label %587, !llvm.loop !16

607:                                              ; preds = %602
  br label %647

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1
  %610 = trunc i8 %609 to i1
  br i1 %610, label %611, label %635

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4
  %613 = icmp eq i32 %612, 2
  br i1 %613, label %614, label %635

614:                                              ; preds = %611
  store i64 1, i64* %42, align 8
  br label %615

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8
  %617 = load i64, i64* %41, align 8
  %618 = icmp ult i64 %616, %617
  br i1 %618, label %619, label %634

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8
  %621 = load i64, i64* %31, align 8
  %622 = load i64, i64* %37, align 8
  %623 = add i64 %621, %622
  %624 = load i64, i64* %42, align 8
  %625 = add i64 %623, %624
  %626 = getelementptr inbounds i8, i8* %620, i64 %625
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ]

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078

630:                                              ; preds = %619
  br label %631

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8
  %633 = add i64 %632, 1
  store i64 %633, i64* %42, align 8
  br label %615, !llvm.loop !17

634:                                              ; preds = %615
  br label %635

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4
  %637 = call i32 @c32isprint(i32 noundef %636)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1
  br label %640

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8
  %642 = load i64, i64* %37, align 8
  %643 = add i64 %642, %641
  store i64 %643, i64* %37, align 8
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1
  %650 = trunc i8 %649 to i1
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %34, align 1
  %652 = load i64, i64* %37, align 8
  %653 = icmp ult i64 1, %652
  br i1 %653, label %660, label %654

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1
  %656 = trunc i8 %655 to i1
  br i1 %656, label %657, label %848

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1
  %659 = trunc i8 %658 to i1
  br i1 %659, label %848, label %660

660:                                              ; preds = %657, %648
  %661 = load i64, i64* %31, align 8
  %662 = load i64, i64* %37, align 8
  %663 = add i64 %661, %662
  store i64 %663, i64* %43, align 8
  br label %664

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1
  %666 = trunc i8 %665 to i1
  br i1 %666, label %667, label %772

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1
  %669 = trunc i8 %668 to i1
  br i1 %669, label %772, label %670

670:                                              ; preds = %667
  br label %671

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1
  %673 = trunc i8 %672 to i1
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  br label %1078

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1
  %676 = load i32, i32* %15, align 4
  %677 = icmp eq i32 %676, 2
  br i1 %677, label %678, label %718

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1
  %680 = trunc i8 %679 to i1
  br i1 %680, label %718, label %681

681:                                              ; preds = %678
  br label %682

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8
  %684 = load i64, i64* %12, align 8
  %685 = icmp ult i64 %683, %684
  br i1 %685, label %686, label %690

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8
  %688 = load i64, i64* %21, align 8
  %689 = getelementptr inbounds i8, i8* %687, i64 %688
  store i8 39, i8* %689, align 1
  br label %690

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8
  %692 = add i64 %691, 1
  store i64 %692, i64* %21, align 8
  br label %693

693:                                              ; preds = %690
  br label %694

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8
  %696 = load i64, i64* %12, align 8
  %697 = icmp ult i64 %695, %696
  br i1 %697, label %698, label %702

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8
  %700 = load i64, i64* %21, align 8
  %701 = getelementptr inbounds i8, i8* %699, i64 %700
  store i8 36, i8* %701, align 1
  br label %702

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8
  %704 = add i64 %703, 1
  store i64 %704, i64* %21, align 8
  br label %705

705:                                              ; preds = %702
  br label %706

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8
  %708 = load i64, i64* %12, align 8
  %709 = icmp ult i64 %707, %708
  br i1 %709, label %710, label %714

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8
  %712 = load i64, i64* %21, align 8
  %713 = getelementptr inbounds i8, i8* %711, i64 %712
  store i8 39, i8* %713, align 1
  br label %714

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8
  %716 = add i64 %715, 1
  store i64 %716, i64* %21, align 8
  br label %717

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1
  br label %718

718:                                              ; preds = %717, %678, %675
  br label %719

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8
  %721 = load i64, i64* %12, align 8
  %722 = icmp ult i64 %720, %721
  br i1 %722, label %723, label %727

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8
  %725 = load i64, i64* %21, align 8
  %726 = getelementptr inbounds i8, i8* %724, i64 %725
  store i8 92, i8* %726, align 1
  br label %727

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8
  %729 = add i64 %728, 1
  store i64 %729, i64* %21, align 8
  br label %730

730:                                              ; preds = %727
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8
  %734 = load i64, i64* %12, align 8
  %735 = icmp ult i64 %733, %734
  br i1 %735, label %736, label %745

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1
  %738 = zext i8 %737 to i32
  %739 = ashr i32 %738, 6
  %740 = add nsw i32 48, %739
  %741 = trunc i32 %740 to i8
  %742 = load i8*, i8** %11, align 8
  %743 = load i64, i64* %21, align 8
  %744 = getelementptr inbounds i8, i8* %742, i64 %743
  store i8 %741, i8* %744, align 1
  br label %745

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8
  %747 = add i64 %746, 1
  store i64 %747, i64* %21, align 8
  br label %748

748:                                              ; preds = %745
  br label %749

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8
  %751 = load i64, i64* %12, align 8
  %752 = icmp ult i64 %750, %751
  br i1 %752, label %753, label %763

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1
  %755 = zext i8 %754 to i32
  %756 = ashr i32 %755, 3
  %757 = and i32 %756, 7
  %758 = add nsw i32 48, %757
  %759 = trunc i32 %758 to i8
  %760 = load i8*, i8** %11, align 8
  %761 = load i64, i64* %21, align 8
  %762 = getelementptr inbounds i8, i8* %760, i64 %761
  store i8 %759, i8* %762, align 1
  br label %763

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8
  %765 = add i64 %764, 1
  store i64 %765, i64* %21, align 8
  br label %766

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1
  %768 = zext i8 %767 to i32
  %769 = and i32 %768, 7
  %770 = add nsw i32 48, %769
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %35, align 1
  br label %789

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1
  %774 = trunc i8 %773 to i1
  br i1 %774, label %775, label %788

775:                                              ; preds = %772
  br label %776

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8
  %778 = load i64, i64* %12, align 8
  %779 = icmp ult i64 %777, %778
  br i1 %779, label %780, label %784

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8
  %782 = load i64, i64* %21, align 8
  %783 = getelementptr inbounds i8, i8* %781, i64 %782
  store i8 92, i8* %783, align 1
  br label %784

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8
  %786 = add i64 %785, 1
  store i64 %786, i64* %21, align 8
  br label %787

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1
  br label %788

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8
  %791 = load i64, i64* %31, align 8
  %792 = add i64 %791, 1
  %793 = icmp ule i64 %790, %792
  br i1 %793, label %794, label %795

794:                                              ; preds = %789
  br label %847

795:                                              ; preds = %789
  br label %796

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1
  %798 = trunc i8 %797 to i1
  br i1 %798, label %799, label %827

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1
  %801 = trunc i8 %800 to i1
  br i1 %801, label %827, label %802

802:                                              ; preds = %799
  br label %803

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8
  %805 = load i64, i64* %12, align 8
  %806 = icmp ult i64 %804, %805
  br i1 %806, label %807, label %811

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8
  %809 = load i64, i64* %21, align 8
  %810 = getelementptr inbounds i8, i8* %808, i64 %809
  store i8 39, i8* %810, align 1
  br label %811

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8
  %813 = add i64 %812, 1
  store i64 %813, i64* %21, align 8
  br label %814

814:                                              ; preds = %811
  br label %815

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8
  %817 = load i64, i64* %12, align 8
  %818 = icmp ult i64 %816, %817
  br i1 %818, label %819, label %823

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8
  %821 = load i64, i64* %21, align 8
  %822 = getelementptr inbounds i8, i8* %820, i64 %821
  store i8 39, i8* %822, align 1
  br label %823

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8
  %825 = add i64 %824, 1
  store i64 %825, i64* %21, align 8
  br label %826

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1
  br label %827

827:                                              ; preds = %826, %799, %796
  br label %828

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8
  %831 = load i64, i64* %12, align 8
  %832 = icmp ult i64 %830, %831
  br i1 %832, label %833, label %838

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1
  %835 = load i8*, i8** %11, align 8
  %836 = load i64, i64* %21, align 8
  %837 = getelementptr inbounds i8, i8* %835, i64 %836
  store i8 %834, i8* %837, align 1
  br label %838

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8
  %840 = add i64 %839, 1
  store i64 %840, i64* %21, align 8
  br label %841

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8
  %843 = load i64, i64* %31, align 8
  %844 = add i64 %843, 1
  store i64 %844, i64* %31, align 8
  %845 = getelementptr inbounds i8, i8* %842, i64 %844
  %846 = load i8, i8* %845, align 1
  store i8 %846, i8* %35, align 1
  br label %664

847:                                              ; preds = %794
  br label %942

848:                                              ; preds = %657, %654
  br label %849

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1
  %851 = trunc i8 %850 to i1
  br i1 %851, label %852, label %855

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4
  %854 = icmp ne i32 %853, 2
  br i1 %854, label %858, label %855

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1
  %857 = trunc i8 %856 to i1
  br i1 %857, label %858, label %875

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8
  %860 = icmp ne i32* %859, null
  br i1 %860, label %861, label %875

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8
  %863 = load i8, i8* %35, align 1
  %864 = zext i8 %863 to i64
  %865 = udiv i64 %864, 32
  %866 = getelementptr inbounds i32, i32* %862, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load i8, i8* %35, align 1
  %869 = zext i8 %868 to i64
  %870 = urem i64 %869, 32
  %871 = trunc i64 %870 to i32
  %872 = lshr i32 %867, %871
  %873 = and i32 %872, 1
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %879, label %875

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1
  %877 = trunc i8 %876 to i1
  br i1 %877, label %879, label %878

878:                                              ; preds = %875
  br label %942

879:                                              ; preds = %875, %861
  br label %880

880:                                              ; preds = %879, %457
  br label %881

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1
  %883 = trunc i8 %882 to i1
  br i1 %883, label %884, label %885

884:                                              ; preds = %881
  br label %1078

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1
  %886 = load i32, i32* %15, align 4
  %887 = icmp eq i32 %886, 2
  br i1 %887, label %888, label %928

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1
  %890 = trunc i8 %889 to i1
  br i1 %890, label %928, label %891

891:                                              ; preds = %888
  br label %892

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8
  %894 = load i64, i64* %12, align 8
  %895 = icmp ult i64 %893, %894
  br i1 %895, label %896, label %900

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8
  %898 = load i64, i64* %21, align 8
  %899 = getelementptr inbounds i8, i8* %897, i64 %898
  store i8 39, i8* %899, align 1
  br label %900

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8
  %902 = add i64 %901, 1
  store i64 %902, i64* %21, align 8
  br label %903

903:                                              ; preds = %900
  br label %904

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8
  %906 = load i64, i64* %12, align 8
  %907 = icmp ult i64 %905, %906
  br i1 %907, label %908, label %912

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8
  %910 = load i64, i64* %21, align 8
  %911 = getelementptr inbounds i8, i8* %909, i64 %910
  store i8 36, i8* %911, align 1
  br label %912

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8
  %914 = add i64 %913, 1
  store i64 %914, i64* %21, align 8
  br label %915

915:                                              ; preds = %912
  br label %916

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8
  %918 = load i64, i64* %12, align 8
  %919 = icmp ult i64 %917, %918
  br i1 %919, label %920, label %924

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8
  %922 = load i64, i64* %21, align 8
  %923 = getelementptr inbounds i8, i8* %921, i64 %922
  store i8 39, i8* %923, align 1
  br label %924

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8
  %926 = add i64 %925, 1
  store i64 %926, i64* %21, align 8
  br label %927

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1
  br label %928

928:                                              ; preds = %927, %888, %885
  br label %929

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8
  %931 = load i64, i64* %12, align 8
  %932 = icmp ult i64 %930, %931
  br i1 %932, label %933, label %937

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8
  %935 = load i64, i64* %21, align 8
  %936 = getelementptr inbounds i8, i8* %934, i64 %935
  store i8 92, i8* %936, align 1
  br label %937

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8
  %939 = add i64 %938, 1
  store i64 %939, i64* %21, align 8
  br label %940

940:                                              ; preds = %937
  br label %941

941:                                              ; preds = %940
  br label %942

942:                                              ; preds = %941, %878, %847, %444, %434
  br label %943

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1
  %945 = trunc i8 %944 to i1
  br i1 %945, label %946, label %974

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1
  %948 = trunc i8 %947 to i1
  br i1 %948, label %974, label %949

949:                                              ; preds = %946
  br label %950

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8
  %952 = load i64, i64* %12, align 8
  %953 = icmp ult i64 %951, %952
  br i1 %953, label %954, label %958

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8
  %956 = load i64, i64* %21, align 8
  %957 = getelementptr inbounds i8, i8* %955, i64 %956
  store i8 39, i8* %957, align 1
  br label %958

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8
  %960 = add i64 %959, 1
  store i64 %960, i64* %21, align 8
  br label %961

961:                                              ; preds = %958
  br label %962

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8
  %964 = load i64, i64* %12, align 8
  %965 = icmp ult i64 %963, %964
  br i1 %965, label %966, label %970

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8
  %968 = load i64, i64* %21, align 8
  %969 = getelementptr inbounds i8, i8* %967, i64 %968
  store i8 39, i8* %969, align 1
  br label %970

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8
  %972 = add i64 %971, 1
  store i64 %972, i64* %21, align 8
  br label %973

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1
  br label %974

974:                                              ; preds = %973, %946, %943
  br label %975

975:                                              ; preds = %974
  br label %976

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8
  %978 = load i64, i64* %12, align 8
  %979 = icmp ult i64 %977, %978
  br i1 %979, label %980, label %985

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1
  %982 = load i8*, i8** %11, align 8
  %983 = load i64, i64* %21, align 8
  %984 = getelementptr inbounds i8, i8* %982, i64 %983
  store i8 %981, i8* %984, align 1
  br label %985

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8
  %987 = add i64 %986, 1
  store i64 %987, i64* %21, align 8
  br label %988

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1
  %990 = trunc i8 %989 to i1
  br i1 %990, label %992, label %991

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1
  br label %992

992:                                              ; preds = %991, %988
  br label %993

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8
  %995 = add i64 %994, 1
  store i64 %995, i64* %31, align 8
  br label %139, !llvm.loop !18

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %999, label %1006

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4
  %1001 = icmp eq i32 %1000, 2
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1
  %1004 = trunc i8 %1003 to i1
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %1002
  br label %1078

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4
  %1008 = icmp eq i32 %1007, 2
  br i1 %1008, label %1009, label %1038

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1
  %1011 = trunc i8 %1010 to i1
  br i1 %1011, label %1038, label %1012

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1
  %1014 = trunc i8 %1013 to i1
  br i1 %1014, label %1015, label %1038

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1
  %1017 = trunc i8 %1016 to i1
  br i1 %1017, label %1018, label %1028

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8
  %1020 = load i64, i64* %22, align 8
  %1021 = load i8*, i8** %13, align 8
  %1022 = load i64, i64* %14, align 8
  %1023 = load i32, i32* %16, align 4
  %1024 = load i32*, i32** %17, align 8
  %1025 = load i8*, i8** %18, align 8
  %1026 = load i8*, i8** %19, align 8
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026)
  store i64 %1027, i64* %10, align 8
  br label %1096

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8
  %1030 = icmp ne i64 %1029, 0
  br i1 %1030, label %1036, label %1031

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8
  %1033 = icmp ne i64 %1032, 0
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8
  store i64 %1035, i64* %12, align 8
  store i64 0, i64* %21, align 8
  br label %51

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8
  %1040 = icmp ne i8* %1039, null
  br i1 %1040, label %1041, label %1068

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1
  %1043 = trunc i8 %1042 to i1
  br i1 %1043, label %1068, label %1044

1044:                                             ; preds = %1041
  br label %1045

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8
  %1047 = load i8, i8* %1046, align 1
  %1048 = icmp ne i8 %1047, 0
  br i1 %1048, label %1049, label %1067

1049:                                             ; preds = %1045
  br label %1050

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8
  %1052 = load i64, i64* %12, align 8
  %1053 = icmp ult i64 %1051, %1052
  br i1 %1053, label %1054, label %1060

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8
  %1056 = load i8, i8* %1055, align 1
  %1057 = load i8*, i8** %11, align 8
  %1058 = load i64, i64* %21, align 8
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058
  store i8 %1056, i8* %1059, align 1
  br label %1060

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8
  %1062 = add i64 %1061, 1
  store i64 %1062, i64* %21, align 8
  br label %1063

1063:                                             ; preds = %1060
  br label %1064

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1
  store i8* %1066, i8** %23, align 8
  br label %1045, !llvm.loop !19

1067:                                             ; preds = %1045
  br label %1068

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8
  %1070 = load i64, i64* %12, align 8
  %1071 = icmp ult i64 %1069, %1070
  br i1 %1071, label %1072, label %1076

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8
  %1074 = load i64, i64* %21, align 8
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074
  store i8 0, i8* %1075, align 1
  br label %1076

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8
  store i64 %1077, i64* %10, align 8
  br label %1096

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  %1079 = load i32, i32* %15, align 4
  %1080 = icmp eq i32 %1079, 2
  br i1 %1080, label %1081, label %1085

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1
  %1083 = trunc i8 %1082 to i1
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4
  br label %1085

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8
  %1087 = load i64, i64* %12, align 8
  %1088 = load i8*, i8** %13, align 8
  %1089 = load i64, i64* %14, align 8
  %1090 = load i32, i32* %15, align 4
  %1091 = load i32, i32* %16, align 4
  %1092 = and i32 %1091, -3
  %1093 = load i8*, i8** %18, align 8
  %1094 = load i8*, i8** %19, align 8
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094)
  store i64 %1095, i64* %10, align 8
  br label %1096

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8
  ret i64 %1097
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.151, i64 0, i64 0), i8* noundef %9) #18
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %37

16:                                               ; preds = %2
  call void @mbszero(%struct.__mbstate_t* noundef %8)
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8)
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 8216
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 39
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0
  store i8* %31, i8** %3, align 8
  br label %37

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 9
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 {
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
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %15 = icmp ne %struct.quoting_options* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ]
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8
  %21 = call i32* @__errno_location() #21
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = or i32 %25, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45)
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32* @__errno_location() #21
  store i32 %68, i32* %69, align 4
  %70 = load i64*, i64** %7, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %73, 1
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8
  ret i8* %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @nslots, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %14) #18
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4, !llvm.loop !20

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #18
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %31 = icmp ne %struct.slotvec* %30, @slotvec0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8
  %34 = bitcast %struct.slotvec* %33 to i8*
  call void @free(i8* noundef %34) #18
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %35

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 {
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
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  %18 = call i32* @__errno_location() #21
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8
  store i32 2147483647, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 0, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %4
  call void @abort() #19
  unreachable

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %34 = icmp eq %struct.slotvec* %33, @slotvec0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i32, i32* @nslots, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i8, i8* %12, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %43

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ]
  %45 = bitcast %struct.slotvec* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @nslots, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16)
  %54 = bitcast i8* %53 to %struct.slotvec*
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8
  %55 = load i8, i8* %12, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %59 = bitcast %struct.slotvec* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false)
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %62 = load i32, i32* @nslots, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63
  %65 = bitcast %struct.slotvec* %64 to i8*
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @nslots, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = mul i64 %69, 16
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false)
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @nslots, align 4
  br label %73

73:                                               ; preds = %60, %28
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %15, align 8
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106)
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %17, align 8
  %110 = icmp ule i64 %108, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %14, align 8
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0
  store i64 %113, i64* %118, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %122) #18
  br label %123

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25
  store i8* %125, i8** %15, align 8
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1
  store i8* %125, i8** %130, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147)
  br label %149

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4
  %151 = call i32* @__errno_location() #21
  store i32 %150, i32* %151, align 4
  %152 = load i8*, i8** %15, align 8
  ret i8* %152
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8)
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = bitcast %struct.quoting_options* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false)
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #19
  unreachable

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10)
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9)
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = bitcast %struct.quoting_options* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9)
  %10 = bitcast %struct.quoting_options* %7 to i8*
  %11 = bitcast %struct.quoting_options* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false)
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1)
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7)
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = bitcast %struct.quoting_options* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11)
  ret i8* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19)
  br label %26

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.159, i64 0, i64 0), i8* noundef %23, i8* noundef %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.161, i64 0, i64 0)) #18
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.163, i64 0, i64 0)) #18
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.164, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %35)
  %37 = load i64, i64* %12, align 8
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
  ]

38:                                               ; preds = %26
  br label %241

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.165, i64 0, i64 0)) #18
  %42 = load i8**, i8*** %11, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44)
  br label %241

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.166, i64 0, i64 0)) #18
  %49 = load i8**, i8*** %11, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %11, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54)
  br label %241

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.167, i64 0, i64 0)) #18
  %59 = load i8**, i8*** %11, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %11, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %11, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67)
  br label %241

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.168, i64 0, i64 0)) #18
  %72 = load i8**, i8*** %11, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %11, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %11, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83)
  br label %241

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.169, i64 0, i64 0)) #18
  %88 = load i8**, i8*** %11, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %11, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %11, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 3
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 4
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102)
  br label %241

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.170, i64 0, i64 0)) #18
  %107 = load i8**, i8*** %11, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8**, i8*** %11, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %11, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %11, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %11, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %11, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 5
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124)
  br label %241

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.171, i64 0, i64 0)) #18
  %129 = load i8**, i8*** %11, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %11, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %11, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 3
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %11, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 4
  %143 = load i8*, i8** %142, align 8
  %144 = load i8**, i8*** %11, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 5
  %146 = load i8*, i8** %145, align 8
  %147 = load i8**, i8*** %11, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149)
  br label %241

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.172, i64 0, i64 0)) #18
  %154 = load i8**, i8*** %11, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %11, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 2
  %162 = load i8*, i8** %161, align 8
  %163 = load i8**, i8*** %11, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** %11, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 4
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %11, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 5
  %171 = load i8*, i8** %170, align 8
  %172 = load i8**, i8*** %11, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 6
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %11, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 7
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177)
  br label %241

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.173, i64 0, i64 0)) #18
  %182 = load i8**, i8*** %11, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %11, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8**, i8*** %11, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i8**, i8*** %11, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 3
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %11, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 4
  %196 = load i8*, i8** %195, align 8
  %197 = load i8**, i8*** %11, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 5
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** %11, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 6
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %11, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 7
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** %11, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 8
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208)
  br label %241

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.174, i64 0, i64 0)) #18
  %213 = load i8**, i8*** %11, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %11, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = load i8**, i8*** %11, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 2
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %11, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 3
  %224 = load i8*, i8** %223, align 8
  %225 = load i8**, i8*** %11, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 4
  %227 = load i8*, i8** %226, align 8
  %228 = load i8**, i8*** %11, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 5
  %230 = load i8*, i8** %229, align 8
  %231 = load i8**, i8*** %11, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 6
  %233 = load i8*, i8** %232, align 8
  %234 = load i8**, i8*** %11, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 7
  %236 = load i8*, i8** %235, align 8
  %237 = load i8**, i8*** %11, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 8
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239)
  br label %241

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %11, align 8
  br label %12, !llvm.loop !21

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8**, i8*** %10, align 8
  %28 = load i64, i64* %11, align 8
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %13, 10
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = add i32 %17, 8
  store i32 %20, i32* %16, align 8
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 %17
  %26 = bitcast i8* %25 to i8**
  br label %32

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  store i8* %30, i8** %28, align 8
  %31 = bitcast i8* %29 to i8**
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ]
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35
  store i8* %34, i8** %36, align 8
  %37 = icmp ne i8* %34, null
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %12, !llvm.loop !22

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0
  %50 = load i64, i64* %10, align 8
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10)
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.179, i64 0, i64 0)) #18
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.180, i64 0, i64 0))
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.181, i64 0, i64 0)) #18
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.183, i64 0, i64 0))
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.184, i64 0, i64 0)) #18
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.185, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9)
  %11 = call i8* @check_nonnull(i8* noundef %10)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @xalloc_die() #22
  unreachable

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #18
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @imalloc(i64 noundef %3)
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9)
  %11 = call i8* @check_nonnull(i8* noundef %10)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = udiv i64 128, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %15, %12
  br label %36

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 1
  %30 = add i64 %29, 1
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = extractvalue { i64, i1 } %31, 0
  store i64 %33, i64* %7, align 8
  br i1 %32, label %34, label %35

34:                                               ; preds = %26
  call void @xalloc_die() #22
  unreachable

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26
  store i8* %40, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 {
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
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = ashr i64 %18, 1
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  store i64 %22, i64* %12, align 8
  br i1 %21, label %23, label %24

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8
  %26 = icmp sle i64 0, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = load i64, i64* %10, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  br i1 true, label %40, label %45

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sdiv i64 9223372036854775807, %42
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %111, label %115

45:                                               ; preds = %39
  br i1 true, label %46, label %49

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp slt i64 %47, -9223372036854775807
  br i1 %48, label %52, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 0, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  br label %57

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 0, %54
  %56 = sdiv i64 9223372036854775807, %55
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ]
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 -1, %59
  %61 = icmp sle i64 %58, %60
  br i1 %61, label %111, label %115

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  br i1 true, label %66, label %70

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, -9223372036854775808
  %69 = icmp slt i64 0, %68
  br i1 %69, label %111, label %115

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8
  %72 = icmp slt i64 0, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = sub nsw i64 %74, 1
  %76 = icmp slt i64 9223372036854775807, %75
  br i1 %76, label %111, label %115

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8
  %79 = sdiv i64 -9223372036854775808, %78
  %80 = load i64, i64* %12, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %111, label %115

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br i1 false, label %111, label %115

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  br i1 true, label %93, label %97

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %94, -9223372036854775808
  %96 = icmp slt i64 0, %95
  br i1 %96, label %111, label %115

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8
  %99 = sub nsw i64 %98, 1
  %100 = icmp slt i64 9223372036854775807, %99
  br i1 %100, label %111, label %115

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8
  %103 = sdiv i64 -9223372036854775808, %102
  %104 = load i64, i64* %10, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %111, label %115

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8
  %108 = sdiv i64 9223372036854775807, %107
  %109 = load i64, i64* %12, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %10, align 8
  %114 = mul i64 %112, %113
  store i64 %114, i64* %13, align 8
  br label %119

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = mul i64 %116, %117
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ]
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %129

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = icmp slt i64 %124, 128
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 128, i32 0
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ]
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %10, align 8
  %136 = sdiv i64 %134, %135
  store i64 %136, i64* %12, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = srem i64 %138, %139
  %141 = sub nsw i64 %137, %140
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %11, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load i64, i64* %8, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %256

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155)
  %157 = extractvalue { i64, i1 } %156, 1
  %158 = extractvalue { i64, i1 } %156, 0
  store i64 %158, i64* %12, align 8
  br i1 %157, label %255, label %159

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8
  %161 = icmp sle i64 0, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %12, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %255, label %166

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %215

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %169
  br i1 true, label %173, label %178

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sdiv i64 9223372036854775807, %175
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %244, label %248

178:                                              ; preds = %172
  br i1 true, label %179, label %182

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8
  %181 = icmp slt i64 %180, -9223372036854775807
  br i1 %181, label %185, label %186

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8
  %184 = icmp slt i64 0, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %179
  br label %190

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8
  %188 = sub nsw i64 0, %187
  %189 = sdiv i64 9223372036854775807, %188
  br label %190

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ]
  %192 = load i64, i64* %12, align 8
  %193 = sub nsw i64 -1, %192
  %194 = icmp sle i64 %191, %193
  br i1 %194, label %244, label %248

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8
  %197 = icmp eq i64 %196, -1
  br i1 %197, label %198, label %210

198:                                              ; preds = %195
  br i1 true, label %199, label %203

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8
  %201 = add nsw i64 %200, -9223372036854775808
  %202 = icmp slt i64 0, %201
  br i1 %202, label %244, label %248

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8
  %205 = icmp slt i64 0, %204
  br i1 %205, label %206, label %248

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8
  %208 = sub nsw i64 %207, 1
  %209 = icmp slt i64 9223372036854775807, %208
  br i1 %209, label %244, label %248

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8
  %212 = sdiv i64 -9223372036854775808, %211
  %213 = load i64, i64* %12, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %244, label %248

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br i1 false, label %244, label %248

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  br i1 true, label %226, label %230

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8
  %228 = add nsw i64 %227, -9223372036854775808
  %229 = icmp slt i64 0, %228
  br i1 %229, label %244, label %248

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8
  %232 = sub nsw i64 %231, 1
  %233 = icmp slt i64 9223372036854775807, %232
  br i1 %233, label %244, label %248

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8
  %236 = sdiv i64 -9223372036854775808, %235
  %237 = load i64, i64* %10, align 8
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %244, label %248

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8
  %241 = sdiv i64 9223372036854775807, %240
  %242 = load i64, i64* %12, align 8
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* %10, align 8
  %247 = mul i64 %245, %246
  store i64 %247, i64* %13, align 8
  br label %252

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8
  %250 = load i64, i64* %10, align 8
  %251 = mul i64 %249, %250
  store i64 %251, i64* %13, align 8
  br label %252

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ]
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22
  unreachable

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8
  %258 = load i64, i64* %13, align 8
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24
  store i8* %259, i8** %6, align 8
  %260 = load i64, i64* %12, align 8
  %261 = load i64*, i64** %7, align 8
  store i64 %260, i64* %261, align 8
  %262 = load i8*, i8** %6, align 8
  ret i8* %262
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6)
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add nsw i64 %6, 1
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false)
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #20
  %6 = add i64 %5, 1
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24
  ret i8* %7
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, i32* @exit_failure, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.196, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.197, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i64 0, i64 0), i8* noundef %4)
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  unreachable

8:                                                ; No predecessors!
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %8
  call void @abort() #19
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @iswprint(i32 noundef %3) #18
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15)
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %5, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4
  br label %38

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12)
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23, %18
  store i32 0, i32* %6, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @__errno_location() #21
  store i32 %36, i32* %37, align 4
  store i32 -1, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1)
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %51

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, -17
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 {
  %1 = call i32* @__errno_location() #21
  store i32 12, i32* %1, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ule i64 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call noalias i8* @malloc(i64 noundef %6) #18
  br label %10

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ]
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ule i64 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9)
  br label %13

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 -1, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23
  store i8* %12, i8** %3, align 8
  br label %27

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 -1, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23
  store i8* %21, i8** %3, align 8
  br label %27

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ule i64 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15)
  br label %19

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ]
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %16 = icmp eq %struct.__mbstate_t* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, -3
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  call void @mbszero(%struct.__mbstate_t* noundef %31)
  br label %32

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, -3
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #19
  unreachable

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = icmp ule i64 -2, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0)
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8
  br label %55

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8
  %4 = bitcast %struct.__mbstate_t* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  ret i1 %12
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ]
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18
  ret i8* %13
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  br i1 false, label %15, label %20

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = udiv i64 -1, %17
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %92, label %96

20:                                               ; preds = %14
  br i1 false, label %21, label %24

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %27, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 0, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  br label %32

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 0, %29
  %31 = udiv i64 -1, %30
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ]
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 -1, %34
  %36 = icmp ule i64 %33, %35
  br i1 %36, label %92, label %96

37:                                               ; preds = %11
  br i1 false, label %38, label %39

38:                                               ; preds = %37
  br i1 true, label %40, label %55

39:                                               ; preds = %37
  br i1 false, label %40, label %55

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  br i1 false, label %44, label %48

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 0
  %47 = icmp ult i64 0, %46
  br i1 %47, label %92, label %96

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 0, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 1
  %54 = icmp ult i64 -1, %53
  br i1 %54, label %92, label %96

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8
  %57 = udiv i64 0, %56
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %92, label %96

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br i1 false, label %92, label %96

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  br i1 false, label %68, label %69

68:                                               ; preds = %67
  br i1 true, label %70, label %82

69:                                               ; preds = %67
  br i1 false, label %70, label %82

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  br i1 false, label %74, label %78

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 0
  %77 = icmp ult i64 0, %76
  br i1 %77, label %92, label %96

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  %81 = icmp ult i64 -1, %80
  br i1 %81, label %92, label %96

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8
  %84 = udiv i64 0, %83
  %85 = load i64, i64* %7, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %92, label %96

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8
  %89 = udiv i64 -1, %88
  %90 = load i64, i64* %6, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = mul i64 %93, %94
  store i64 %95, i64* %8, align 8
  br label %100

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = mul i64 %97, %98
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ]
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21
  store i32 12, i32* %104, align 4
  store i8* null, i8** %4, align 8
  br label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107)
  store i8* %108, i8** %4, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8
  ret i8* %110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0))
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.231, i64 0, i64 0))
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1
  br label %18

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1
  br label %18

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strlen(i8* noundef %22) #20
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
