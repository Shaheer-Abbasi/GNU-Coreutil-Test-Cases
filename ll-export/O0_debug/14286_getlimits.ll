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
@.str.93 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.94 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@file_name = internal global i8* null, align 8, !dbg !0
@ignore_EPIPE = internal global i8 0, align 1, !dbg !5
@.str.99 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !11
@stderr = external global %struct._IO_FILE*, align 8
@.str.107 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !44
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !18
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !40
@.str.1.113 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.114 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.115 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !42
@.str.4.108 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.109 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.110 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external global i32, align 4
@.str.124 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.125, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.126, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !49
@optind = external global i32, align 4
@.str.1.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.125 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.126 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !66
@.str.134 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.135 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !73
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.141, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.142, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.144, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.145, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.146, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.147, i32 0, i32 0), i8* null], align 8, !dbg !84
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !129
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !147
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !162
@nslots = internal global i32 1, align 4, !dbg !169
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !149
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !171
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !135
@.str.10.148 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.149 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.150 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.151 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !154
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !177
@exit_failure = dso_local global i32 1, align 4, !dbg !185
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.196 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.219 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !191
@.str.230 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.231 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !330 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i32, i32* %2, align 4, !dbg !335
  %4 = icmp ne i32 %3, 0, !dbg !337
  br i1 %4, label %5, label %12, !dbg !338

5:                                                ; preds = %1
  br label %6, !dbg !339

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !340
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !340
  %9 = load i8*, i8** @program_name, align 8, !dbg !340
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !340
  br label %11, !dbg !340

11:                                               ; preds = %6
  br label %25, !dbg !340

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !342
  %14 = load i8*, i8** @program_name, align 8, !dbg !344
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !345
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !346
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !346
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !346
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0)) #18, !dbg !347
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !347
  %21 = call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !347
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !348
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !348
  %24 = call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23), !dbg !348
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !349
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4, !dbg !350
  call void @exit(i32 noundef %26) #19, !dbg !351
  unreachable, !dbg !351
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !352 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !358, metadata !DIExpression()), !dbg !367
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !367
  call void @llvm.dbg.declare(metadata i8** %4, metadata !368, metadata !DIExpression()), !dbg !369
  %9 = load i8*, i8** %2, align 8, !dbg !370
  store i8* %9, i8** %4, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !371, metadata !DIExpression()), !dbg !373
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !374
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !373
  br label %11, !dbg !375

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !376
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !377
  %14 = load i8*, i8** %13, align 8, !dbg !377
  %15 = icmp ne i8* %14, null, !dbg !376
  br i1 %15, label %16, label %23, !dbg !378

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !379
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !380
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !381
  %20 = load i8*, i8** %19, align 8, !dbg !381
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !382
  %22 = xor i1 %21, true, !dbg !383
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !384
  br i1 %24, label %25, label %28, !dbg !375

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !385
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !385
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !385
  br label %11, !dbg !375, !llvm.loop !386

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !388
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !390
  %31 = load i8*, i8** %30, align 8, !dbg !390
  %32 = icmp ne i8* %31, null, !dbg !388
  br i1 %32, label %33, label %37, !dbg !391

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !392
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !393
  %36 = load i8*, i8** %35, align 8, !dbg !393
  store i8* %36, i8** %4, align 8, !dbg !394
  br label %37, !dbg !395

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !396
  call void @llvm.dbg.declare(metadata i8** %6, metadata !397, metadata !DIExpression()), !dbg !398
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !399
  store i8* %38, i8** %6, align 8, !dbg !398
  %39 = load i8*, i8** %6, align 8, !dbg !400
  %40 = icmp ne i8* %39, null, !dbg !400
  br i1 %40, label %41, label %49, !dbg !402

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !403
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i64 noundef 3) #20, !dbg !403
  %44 = icmp ne i32 %43, 0, !dbg !403
  br i1 %44, label %45, label %49, !dbg !404

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i64 0, i64 0)) #18, !dbg !405
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !405
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !405
  br label %49, !dbg !407

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !408, metadata !DIExpression()), !dbg !409
  %50 = load i8*, i8** %2, align 8, !dbg !410
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0)), !dbg !411
  br i1 %51, label %52, label %53, !dbg !411

52:                                               ; preds = %49
  br label %55, !dbg !411

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !412
  br label %55, !dbg !411

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !411
  store i8* %56, i8** %7, align 8, !dbg !409
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.94, i64 0, i64 0)) #18, !dbg !413
  %58 = load i8*, i8** %7, align 8, !dbg !414
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.95, i64 0, i64 0), i8* noundef %58), !dbg !415
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.96, i64 0, i64 0)) #18, !dbg !416
  %61 = load i8*, i8** %4, align 8, !dbg !417
  %62 = load i8*, i8** %4, align 8, !dbg !418
  %63 = load i8*, i8** %2, align 8, !dbg !419
  %64 = icmp eq i8* %62, %63, !dbg !420
  %65 = zext i1 %64 to i64, !dbg !418
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !418
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !421
  ret void, !dbg !422
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !423 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [22 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !427, metadata !DIExpression()), !dbg !428
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !431, metadata !DIExpression()), !dbg !435
  %7 = load i8**, i8*** %5, align 8, !dbg !436
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !436
  %9 = load i8*, i8** %8, align 8, !dbg !436
  call void @set_program_name(i8* noundef %9), !dbg !437
  %10 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !438
  %11 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !439
  %12 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !440
  %13 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !441
  %14 = load i32, i32* %4, align 4, !dbg !442
  %15 = load i8**, i8*** %5, align 8, !dbg !443
  %16 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0)), !dbg !444
  call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %14, i8** noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i1 noundef true, void (i32)* noundef @usage, i8* noundef %16, i8* noundef null), !dbg !445
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !446
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !446
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #18, !dbg !446
  %20 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !446
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !446
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %21), !dbg !446
  %23 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !446
  %24 = call i8* @decimal_absval_add_one(i8* noundef %23), !dbg !446
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef %24), !dbg !446
  %26 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !447
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !447
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 127) #18, !dbg !447
  %29 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !447
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !447
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %30), !dbg !447
  %32 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !447
  %33 = call i8* @decimal_absval_add_one(i8* noundef %32), !dbg !447
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef %33), !dbg !447
  %35 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !448
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !448
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -128) #18, !dbg !448
  %38 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !448
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !448
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef %39), !dbg !448
  %41 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !448
  %42 = call i8* @decimal_absval_add_one(i8* noundef %41), !dbg !448
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef %42), !dbg !448
  %44 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !451
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !451
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 255) #18, !dbg !451
  %47 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !451
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !451
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef %48), !dbg !451
  %50 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !451
  %51 = call i8* @decimal_absval_add_one(i8* noundef %50), !dbg !451
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef %51), !dbg !451
  %53 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !452
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !452
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %54, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 32767) #18, !dbg !452
  %56 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !452
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !452
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* noundef %57), !dbg !452
  %59 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !452
  %60 = call i8* @decimal_absval_add_one(i8* noundef %59), !dbg !452
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* noundef %60), !dbg !452
  %62 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !453
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !453
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -32768) #18, !dbg !453
  %65 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !453
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !453
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* noundef %66), !dbg !453
  %68 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !453
  %69 = call i8* @decimal_absval_add_one(i8* noundef %68), !dbg !453
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* noundef %69), !dbg !453
  %71 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !456
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !456
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #18, !dbg !456
  %74 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !456
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !456
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* noundef %75), !dbg !456
  %77 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !456
  %78 = call i8* @decimal_absval_add_one(i8* noundef %77), !dbg !456
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef %78), !dbg !456
  %80 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !457
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !457
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %81, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #18, !dbg !457
  %83 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !457
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !457
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* noundef %84), !dbg !457
  %86 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !457
  %87 = call i8* @decimal_absval_add_one(i8* noundef %86), !dbg !457
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %87), !dbg !457
  %89 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !460
  %90 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !460
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %90, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18, !dbg !460
  %92 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !460
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !460
  %94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef %93), !dbg !460
  %95 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !460
  %96 = call i8* @decimal_absval_add_one(i8* noundef %95), !dbg !460
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* noundef %96), !dbg !460
  %98 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !461
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !461
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %99, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !461
  %101 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !461
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !461
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef %102), !dbg !461
  %104 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !461
  %105 = call i8* @decimal_absval_add_one(i8* noundef %104), !dbg !461
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %105), !dbg !461
  %107 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !462
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !462
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %108, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !462
  %110 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !462
  %111 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !462
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* noundef %111), !dbg !462
  %113 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !462
  %114 = call i8* @decimal_absval_add_one(i8* noundef %113), !dbg !462
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef %114), !dbg !462
  %116 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !465
  %117 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !465
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %117, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18, !dbg !465
  %119 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !465
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !465
  %121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* noundef %120), !dbg !465
  %122 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !465
  %123 = call i8* @decimal_absval_add_one(i8* noundef %122), !dbg !465
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* noundef %123), !dbg !465
  %125 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !466
  %126 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !466
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %126, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18, !dbg !466
  %128 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !466
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !466
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* noundef %129), !dbg !466
  %131 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !466
  %132 = call i8* @decimal_absval_add_one(i8* noundef %131), !dbg !466
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef %132), !dbg !466
  %134 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !467
  %135 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !467
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !467
  %137 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !467
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !467
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* noundef %138), !dbg !467
  %140 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !467
  %141 = call i8* @decimal_absval_add_one(i8* noundef %140), !dbg !467
  %142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %141), !dbg !467
  %143 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !468
  %144 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !468
  %145 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %144, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !468
  %146 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !468
  %147 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !468
  %148 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* noundef %147), !dbg !468
  %149 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !468
  %150 = call i8* @decimal_absval_add_one(i8* noundef %149), !dbg !468
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* noundef %150), !dbg !468
  %152 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !471
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !471
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %153, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !471
  %155 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !471
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !471
  %157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef %156), !dbg !471
  %158 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !471
  %159 = call i8* @decimal_absval_add_one(i8* noundef %158), !dbg !471
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef %159), !dbg !471
  %161 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !472
  %162 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !472
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %162, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !472
  %164 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !472
  %165 = getelementptr inbounds i8, i8* %164, i64 1, !dbg !472
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* noundef %165), !dbg !472
  %167 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !472
  %168 = call i8* @decimal_absval_add_one(i8* noundef %167), !dbg !472
  %169 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* noundef %168), !dbg !472
  %170 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !475
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !475
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %171, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18, !dbg !475
  %173 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !475
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !475
  %175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8* noundef %174), !dbg !475
  %176 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !475
  %177 = call i8* @decimal_absval_add_one(i8* noundef %176), !dbg !475
  %178 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %177), !dbg !475
  %179 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !476
  %180 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !476
  %181 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %180, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 4294967295) #18, !dbg !476
  %182 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !476
  %183 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !476
  %184 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* noundef %183), !dbg !476
  %185 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !476
  %186 = call i8* @decimal_absval_add_one(i8* noundef %185), !dbg !476
  %187 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef %186), !dbg !476
  %188 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !477
  %189 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !477
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %189, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 2147483647) #18, !dbg !477
  %191 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !477
  %192 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !477
  %193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* noundef %192), !dbg !477
  %194 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !477
  %195 = call i8* @decimal_absval_add_one(i8* noundef %194), !dbg !477
  %196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i8* noundef %195), !dbg !477
  %197 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !478
  %198 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !478
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %198, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -2147483648) #18, !dbg !478
  %200 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !478
  %201 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !478
  %202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i8* noundef %201), !dbg !478
  %203 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !478
  %204 = call i8* @decimal_absval_add_one(i8* noundef %203), !dbg !478
  %205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i8* noundef %204), !dbg !478
  %206 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !481
  %207 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !481
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %207, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !481
  %209 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !481
  %210 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !481
  %211 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* noundef %210), !dbg !481
  %212 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !481
  %213 = call i8* @decimal_absval_add_one(i8* noundef %212), !dbg !481
  %214 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i8* noundef %213), !dbg !481
  %215 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !482
  %216 = getelementptr inbounds i8, i8* %215, i64 1, !dbg !482
  %217 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %216, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !482
  %218 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !482
  %219 = getelementptr inbounds i8, i8* %218, i64 1, !dbg !482
  %220 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8* noundef %219), !dbg !482
  %221 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !482
  %222 = call i8* @decimal_absval_add_one(i8* noundef %221), !dbg !482
  %223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* noundef %222), !dbg !482
  %224 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !485
  %225 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !485
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %225, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !485
  %227 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !485
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !485
  %229 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i8* noundef %228), !dbg !485
  %230 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !485
  %231 = call i8* @decimal_absval_add_one(i8* noundef %230), !dbg !485
  %232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef %231), !dbg !485
  %233 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !486
  %234 = getelementptr inbounds i8, i8* %233, i64 1, !dbg !486
  %235 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %234, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !486
  %236 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !486
  %237 = getelementptr inbounds i8, i8* %236, i64 1, !dbg !486
  %238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef %237), !dbg !486
  %239 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !486
  %240 = call i8* @decimal_absval_add_one(i8* noundef %239), !dbg !486
  %241 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8* noundef %240), !dbg !486
  %242 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !489
  %243 = getelementptr inbounds i8, i8* %242, i64 1, !dbg !489
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %243, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef 9223372036854775807) #18, !dbg !489
  %245 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !489
  %246 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !489
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i64 0, i64 0), i8* noundef %246), !dbg !489
  %248 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !489
  %249 = call i8* @decimal_absval_add_one(i8* noundef %248), !dbg !489
  %250 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %249), !dbg !489
  %251 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !490
  %252 = getelementptr inbounds i8, i8* %251, i64 1, !dbg !490
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %252, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef -9223372036854775808) #18, !dbg !490
  %254 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !490
  %255 = getelementptr inbounds i8, i8* %254, i64 1, !dbg !490
  %256 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8* noundef %255), !dbg !490
  %257 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !490
  %258 = call i8* @decimal_absval_add_one(i8* noundef %257), !dbg !490
  %259 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i8* noundef %258), !dbg !490
  %260 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !493
  %261 = getelementptr inbounds i8, i8* %260, i64 1, !dbg !493
  %262 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %261, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 noundef -1) #18, !dbg !493
  %263 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !493
  %264 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !493
  %265 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i8* noundef %264), !dbg !493
  %266 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0, !dbg !493
  %267 = call i8* @decimal_absval_add_one(i8* noundef %266), !dbg !493
  %268 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8* noundef %267), !dbg !493
  %269 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0)), !dbg !494
  call void @print_FLT(float noundef 0x3810000000000000), !dbg !494
  %270 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0)), !dbg !494
  call void @print_FLT(float noundef 0x47EFFFFFE0000000), !dbg !494
  %271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0)), !dbg !495
  call void @print_DBL(double noundef 0x10000000000000), !dbg !495
  %272 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0)), !dbg !495
  call void @print_DBL(double noundef 0x7FEFFFFFFFFFFFFF), !dbg !495
  %273 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i64 0, i64 0)), !dbg !496
  call void @print_LDBL(fp128 noundef 0xL00000000000000000001000000000000), !dbg !496
  %274 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0)), !dbg !496
  call void @print_LDBL(fp128 noundef 0xLFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFF), !dbg !496
  %275 = call i32 @__libc_current_sigrtmin() #18, !dbg !497
  %276 = sext i32 %275 to i64, !dbg !498
  %277 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i64 noundef %276), !dbg !499
  %278 = call i32 @__libc_current_sigrtmax() #18, !dbg !500
  %279 = sext i32 %278 to i64, !dbg !501
  %280 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i64 noundef %279), !dbg !502
  %281 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i64 noundef 262144), !dbg !503
  call void @errno_iterate(i32 (i8*, i32)* noundef @print_errno, i8* noundef null), !dbg !504
  %282 = call i32 @print_errno(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef 95), !dbg !505
  %283 = call i32 @print_errno(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 noundef 11), !dbg !506
  %284 = call i32 @print_errno(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i32 noundef 35), !dbg !507
  ret i32 0, !dbg !508
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
define internal i8* @decimal_absval_add_one(i8* noundef %0) #4 !dbg !509 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata i8* %3, metadata !514, metadata !DIExpression()), !dbg !515
  %7 = load i8*, i8** %2, align 8, !dbg !516
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !516
  %9 = load i8, i8* %8, align 1, !dbg !516
  %10 = zext i8 %9 to i32, !dbg !516
  %11 = icmp eq i32 %10, 45, !dbg !517
  %12 = zext i1 %11 to i8, !dbg !515
  store i8 %12, i8* %3, align 1, !dbg !515
  call void @llvm.dbg.declare(metadata i8** %4, metadata !518, metadata !DIExpression()), !dbg !519
  %13 = load i8*, i8** %2, align 8, !dbg !520
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !521
  %15 = load i8, i8* %3, align 1, !dbg !522
  %16 = trunc i8 %15 to i1, !dbg !522
  %17 = zext i1 %16 to i32, !dbg !522
  %18 = sext i32 %17 to i64, !dbg !523
  %19 = getelementptr inbounds i8, i8* %14, i64 %18, !dbg !523
  store i8* %19, i8** %4, align 8, !dbg !519
  call void @llvm.dbg.declare(metadata i8** %5, metadata !524, metadata !DIExpression()), !dbg !525
  %20 = load i8*, i8** %4, align 8, !dbg !526
  %21 = load i8*, i8** %4, align 8, !dbg !527
  %22 = call i64 @strlen(i8* noundef %21) #20, !dbg !528
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !529
  store i8* %23, i8** %5, align 8, !dbg !525
  %24 = load i8*, i8** %4, align 8, !dbg !530
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !530
  store i8 48, i8* %25, align 1, !dbg !531
  br label %26, !dbg !532

26:                                               ; preds = %32, %1
  %27 = load i8*, i8** %5, align 8, !dbg !533
  %28 = getelementptr inbounds i8, i8* %27, i32 -1, !dbg !533
  store i8* %28, i8** %5, align 8, !dbg !533
  %29 = load i8, i8* %28, align 1, !dbg !534
  %30 = zext i8 %29 to i32, !dbg !534
  %31 = icmp eq i32 %30, 57, !dbg !535
  br i1 %31, label %32, label %34, !dbg !532

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8, !dbg !536
  store i8 48, i8* %33, align 1, !dbg !537
  br label %26, !dbg !532, !llvm.loop !538

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8, !dbg !540
  %36 = load i8, i8* %35, align 1, !dbg !541
  %37 = add i8 %36, 1, !dbg !541
  store i8 %37, i8* %35, align 1, !dbg !541
  call void @llvm.dbg.declare(metadata i8** %6, metadata !542, metadata !DIExpression()), !dbg !543
  %38 = load i8*, i8** %4, align 8, !dbg !544
  %39 = load i8*, i8** %5, align 8, !dbg !544
  %40 = icmp ult i8* %38, %39, !dbg !544
  br i1 %40, label %41, label %43, !dbg !544

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8, !dbg !544
  br label %45, !dbg !544

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8, !dbg !544
  br label %45, !dbg !544

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ], !dbg !544
  store i8* %46, i8** %6, align 8, !dbg !543
  %47 = load i8, i8* %3, align 1, !dbg !545
  %48 = trunc i8 %47 to i1, !dbg !545
  br i1 %48, label %49, label %52, !dbg !547

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8, !dbg !548
  %51 = getelementptr inbounds i8, i8* %50, i32 -1, !dbg !548
  store i8* %51, i8** %6, align 8, !dbg !548
  store i8 45, i8* %51, align 1, !dbg !549
  br label %52, !dbg !550

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %6, align 8, !dbg !551
  ret i8* %53, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_FLT(float noundef %0) #4 !dbg !553 {
  %2 = alloca float, align 4
  %3 = alloca [31 x i8], align 1
  store float %0, float* %2, align 4
  call void @llvm.dbg.declare(metadata float* %2, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata [31 x i8]* %3, metadata !559, metadata !DIExpression()), !dbg !558
  %4 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0, !dbg !558
  %5 = load float, float* %2, align 4, !dbg !558
  %6 = call i32 @ftoastr(i8* noundef %4, i64 noundef 31, i32 noundef 1, i32 noundef 0, float noundef %5), !dbg !558
  %7 = getelementptr inbounds [31 x i8], [31 x i8]* %3, i64 0, i64 0, !dbg !558
  %8 = call i32 @puts(i8* noundef %7), !dbg !558
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_DBL(double noundef %0) #4 !dbg !563 {
  %2 = alloca double, align 8
  %3 = alloca [40 x i8], align 1
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata [40 x i8]* %3, metadata !569, metadata !DIExpression()), !dbg !568
  %4 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !568
  %5 = load double, double* %2, align 8, !dbg !568
  %6 = call i32 @dtoastr(i8* noundef %4, i64 noundef 40, i32 noundef 1, i32 noundef 0, double noundef %5), !dbg !568
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !568
  %8 = call i32 @puts(i8* noundef %7), !dbg !568
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_LDBL(fp128 noundef %0) #4 !dbg !573 {
  %2 = alloca fp128, align 16
  %3 = alloca [60 x i8], align 1
  store fp128 %0, fp128* %2, align 16
  call void @llvm.dbg.declare(metadata fp128* %2, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata [60 x i8]* %3, metadata !579, metadata !DIExpression()), !dbg !578
  %4 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !578
  %5 = load fp128, fp128* %2, align 16, !dbg !578
  %6 = call i32 @ldtoastr(i8* noundef %4, i64 noundef 60, i32 noundef 1, i32 noundef 0, fp128 noundef %5), !dbg !578
  %7 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !578
  %8 = call i32 @puts(i8* noundef %7), !dbg !578
  ret void, !dbg !578
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_errno(i8* noundef %0, i32 noundef %1) #4 !dbg !583 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !586, metadata !DIExpression()), !dbg !587
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata i8** %5, metadata !590, metadata !DIExpression()), !dbg !591
  %6 = load i8*, i8** %3, align 8, !dbg !592
  %7 = icmp ne i8* %6, null, !dbg !592
  br i1 %7, label %8, label %10, !dbg !592

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !593
  br label %13, !dbg !592

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !594
  %12 = call i8* @strerrorname_np(i32 noundef %11) #18, !dbg !595
  br label %13, !dbg !592

13:                                               ; preds = %10, %8
  %14 = phi i8* [ %9, %8 ], [ %12, %10 ], !dbg !592
  store i8* %14, i8** %5, align 8, !dbg !591
  %15 = load i8*, i8** %5, align 8, !dbg !596
  %16 = icmp ne i8* %15, null, !dbg !596
  br i1 %16, label %17, label %23, !dbg !598

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8, !dbg !599
  %19 = load i32, i32* %4, align 4, !dbg !600
  %20 = call i8* @strerror(i32 noundef %19) #18, !dbg !601
  %21 = call i8* @quotearg_style(i32 noundef 3, i8* noundef %20), !dbg !602
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8* noundef %18, i8* noundef %21), !dbg !603
  br label %23, !dbg !603

23:                                               ; preds = %17, %13
  ret i32 0, !dbg !604
}

; Function Attrs: nounwind
declare i8* @strerrorname_np(i32 noundef) #2

; Function Attrs: nounwind
declare i8* @strerror(i32 noundef) #2

declare i32 @puts(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !605 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !606, metadata !DIExpression()), !dbg !607
  %3 = load i8*, i8** %2, align 8, !dbg !608
  store i8* %3, i8** @file_name, align 8, !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !611 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !614, metadata !DIExpression()), !dbg !615
  %4 = load i8, i8* %2, align 1, !dbg !616
  %5 = trunc i8 %4 to i1, !dbg !616
  %6 = zext i1 %5 to i8, !dbg !617
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !617
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !619 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !622
  %4 = icmp ne i32 %3, 0, !dbg !623
  br i1 %4, label %5, label %28, !dbg !624

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !625
  %7 = trunc i8 %6 to i1, !dbg !625
  br i1 %7, label %8, label %12, !dbg !626

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !627
  %10 = load i32, i32* %9, align 4, !dbg !627
  %11 = icmp eq i32 %10, 32, !dbg !628
  br i1 %11, label %28, label %12, !dbg !629

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !630, metadata !DIExpression()), !dbg !632
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.100, i64 0, i64 0)) #18, !dbg !633
  store i8* %13, i8** %1, align 8, !dbg !632
  %14 = load i8*, i8** @file_name, align 8, !dbg !634
  %15 = icmp ne i8* %14, null, !dbg !634
  br i1 %15, label %16, label %22, !dbg !636

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !637
  %18 = load i32, i32* %17, align 4, !dbg !637
  %19 = load i8*, i8** @file_name, align 8, !dbg !637
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !637
  %21 = load i8*, i8** %1, align 8, !dbg !637
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !637
  br label %26, !dbg !637

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !638
  %24 = load i32, i32* %23, align 4, !dbg !638
  %25 = load i8*, i8** %1, align 8, !dbg !638
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.102, i64 0, i64 0), i8* noundef %25), !dbg !638
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !639
  call void @_exit(i32 noundef %27) #22, !dbg !640
  unreachable, !dbg !640

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !641
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !643
  %31 = icmp ne i32 %30, 0, !dbg !644
  br i1 %31, label %32, label %34, !dbg !645

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !646
  call void @_exit(i32 noundef %33) #22, !dbg !647
  unreachable, !dbg !647

34:                                               ; preds = %28
  ret void, !dbg !648
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) #4 !dbg !649 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !655, metadata !DIExpression()), !dbg !656
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !657, metadata !DIExpression()), !dbg !658
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !659, metadata !DIExpression()), !dbg !660
  store double %4, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata double* %11, metadata !663, metadata !DIExpression()), !dbg !664
  %17 = load double, double* %10, align 8, !dbg !665
  store double %17, double* %11, align 8, !dbg !664
  call void @llvm.dbg.declare(metadata [11 x i8]* %12, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.declare(metadata double* %13, metadata !669, metadata !DIExpression()), !dbg !670
  %18 = load double, double* %10, align 8, !dbg !671
  %19 = fcmp olt double %18, 0.000000e+00, !dbg !672
  br i1 %19, label %20, label %23, !dbg !671

20:                                               ; preds = %5
  %21 = load double, double* %10, align 8, !dbg !673
  %22 = fneg double %21, !dbg !674
  br label %25, !dbg !671

23:                                               ; preds = %5
  %24 = load double, double* %10, align 8, !dbg !675
  br label %25, !dbg !671

25:                                               ; preds = %23, %20
  %26 = phi double [ %22, %20 ], [ %24, %23 ], !dbg !671
  store double %26, double* %13, align 8, !dbg !670
  call void @llvm.dbg.declare(metadata i8** %14, metadata !676, metadata !DIExpression()), !dbg !677
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !678
  store i8* %27, i8** %14, align 8, !dbg !677
  %28 = load i8*, i8** %14, align 8, !dbg !679
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !679
  store i8* %29, i8** %14, align 8, !dbg !679
  store i8 37, i8* %28, align 1, !dbg !680
  %30 = load i8*, i8** %14, align 8, !dbg !681
  store i8 45, i8* %30, align 1, !dbg !682
  %31 = load i32, i32* %8, align 4, !dbg !683
  %32 = and i32 %31, 1, !dbg !684
  %33 = icmp ne i32 %32, 0, !dbg !685
  %34 = zext i1 %33 to i32, !dbg !685
  %35 = load i8*, i8** %14, align 8, !dbg !686
  %36 = sext i32 %34 to i64, !dbg !686
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !686
  store i8* %37, i8** %14, align 8, !dbg !686
  %38 = load i8*, i8** %14, align 8, !dbg !687
  store i8 43, i8* %38, align 1, !dbg !688
  %39 = load i32, i32* %8, align 4, !dbg !689
  %40 = and i32 %39, 2, !dbg !690
  %41 = icmp ne i32 %40, 0, !dbg !691
  %42 = zext i1 %41 to i32, !dbg !691
  %43 = load i8*, i8** %14, align 8, !dbg !692
  %44 = sext i32 %42 to i64, !dbg !692
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !692
  store i8* %45, i8** %14, align 8, !dbg !692
  %46 = load i8*, i8** %14, align 8, !dbg !693
  store i8 32, i8* %46, align 1, !dbg !694
  %47 = load i32, i32* %8, align 4, !dbg !695
  %48 = and i32 %47, 4, !dbg !696
  %49 = icmp ne i32 %48, 0, !dbg !697
  %50 = zext i1 %49 to i32, !dbg !697
  %51 = load i8*, i8** %14, align 8, !dbg !698
  %52 = sext i32 %50 to i64, !dbg !698
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !698
  store i8* %53, i8** %14, align 8, !dbg !698
  %54 = load i8*, i8** %14, align 8, !dbg !699
  store i8 48, i8* %54, align 1, !dbg !700
  %55 = load i32, i32* %8, align 4, !dbg !701
  %56 = and i32 %55, 8, !dbg !702
  %57 = icmp ne i32 %56, 0, !dbg !703
  %58 = zext i1 %57 to i32, !dbg !703
  %59 = load i8*, i8** %14, align 8, !dbg !704
  %60 = sext i32 %58 to i64, !dbg !704
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !704
  store i8* %61, i8** %14, align 8, !dbg !704
  %62 = load i8*, i8** %14, align 8, !dbg !705
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !705
  store i8* %63, i8** %14, align 8, !dbg !705
  store i8 42, i8* %62, align 1, !dbg !706
  %64 = load i8*, i8** %14, align 8, !dbg !707
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !707
  store i8* %65, i8** %14, align 8, !dbg !707
  store i8 46, i8* %64, align 1, !dbg !708
  %66 = load i8*, i8** %14, align 8, !dbg !709
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !709
  store i8* %67, i8** %14, align 8, !dbg !709
  store i8 42, i8* %66, align 1, !dbg !710
  %68 = load i8*, i8** %14, align 8, !dbg !711
  store i8 76, i8* %68, align 1, !dbg !712
  %69 = load i8*, i8** %14, align 8, !dbg !713
  %70 = getelementptr inbounds i8, i8* %69, i64 0, !dbg !713
  store i8* %70, i8** %14, align 8, !dbg !713
  %71 = load i32, i32* %8, align 4, !dbg !714
  %72 = and i32 %71, 16, !dbg !715
  %73 = icmp ne i32 %72, 0, !dbg !714
  %74 = zext i1 %73 to i64, !dbg !714
  %75 = select i1 %73, i32 71, i32 103, !dbg !714
  %76 = trunc i32 %75 to i8, !dbg !714
  %77 = load i8*, i8** %14, align 8, !dbg !716
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !716
  store i8* %78, i8** %14, align 8, !dbg !716
  store i8 %76, i8* %77, align 1, !dbg !717
  %79 = load i8*, i8** %14, align 8, !dbg !718
  store i8 0, i8* %79, align 1, !dbg !719
  call void @llvm.dbg.declare(metadata i32* %15, metadata !720, metadata !DIExpression()), !dbg !722
  %80 = load double, double* %13, align 8, !dbg !723
  %81 = fcmp olt double %80, 0x10000000000000, !dbg !724
  %82 = zext i1 %81 to i64, !dbg !723
  %83 = select i1 %81, i32 1, i32 15, !dbg !723
  store i32 %83, i32* %15, align 4, !dbg !722
  br label %84, !dbg !725

84:                                               ; preds = %110, %25
  call void @llvm.dbg.declare(metadata i32* %16, metadata !726, metadata !DIExpression()), !dbg !729
  %85 = load i8*, i8** %6, align 8, !dbg !730
  %86 = load i64, i64* %7, align 8, !dbg !731
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !732
  %88 = load i32, i32* %9, align 4, !dbg !733
  %89 = load i32, i32* %15, align 4, !dbg !734
  %90 = load double, double* %11, align 8, !dbg !735
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %85, i64 noundef %86, i8* noundef %87, i32 noundef %88, i32 noundef %89, double noundef %90) #18, !dbg !736
  store i32 %91, i32* %16, align 4, !dbg !729
  %92 = load i32, i32* %16, align 4, !dbg !737
  %93 = icmp slt i32 %92, 0, !dbg !739
  br i1 %93, label %107, label %94, !dbg !740

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4, !dbg !741
  %96 = icmp sle i32 17, %95, !dbg !742
  br i1 %96, label %107, label %97, !dbg !743

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4, !dbg !744
  %99 = sext i32 %98 to i64, !dbg !744
  %100 = load i64, i64* %7, align 8, !dbg !745
  %101 = icmp ult i64 %99, %100, !dbg !746
  br i1 %101, label %102, label %109, !dbg !747

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8, !dbg !748
  %104 = call double @strtod(i8* noundef %103, i8** noundef null) #18, !dbg !749
  %105 = load double, double* %10, align 8, !dbg !750
  %106 = fcmp oeq double %104, %105, !dbg !751
  br i1 %106, label %107, label %109, !dbg !752

107:                                              ; preds = %102, %94, %84
  %108 = load i32, i32* %16, align 4, !dbg !753
  ret i32 %108, !dbg !754

109:                                              ; preds = %102, %97
  br label %110, !dbg !755

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4, !dbg !756
  %112 = add nsw i32 %111, 1, !dbg !756
  store i32 %112, i32* %15, align 4, !dbg !756
  br label %84, !dbg !757, !llvm.loop !758
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare double @strtod(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errno_iterate(i32 (i8*, i32)* noundef %0, i8* noundef %1) #4 !dbg !761 {
  %3 = alloca i32 (i8*, i32)*, align 8
  %4 = alloca i8*, align 8
  store i32 (i8*, i32)* %0, i32 (i8*, i32)** %3, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32)** %3, metadata !767, metadata !DIExpression()), !dbg !768
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !769, metadata !DIExpression()), !dbg !770
  %5 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !771
  %6 = load i8*, i8** %4, align 8, !dbg !773
  %7 = call i32 %5(i8* noundef %6, i32 noundef 33), !dbg !771
  %8 = icmp ne i32 %7, 0, !dbg !771
  br i1 %8, label %9, label %10, !dbg !774

9:                                                ; preds = %2
  br label %790, !dbg !775

10:                                               ; preds = %2
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !776
  %12 = load i8*, i8** %4, align 8, !dbg !778
  %13 = call i32 %11(i8* noundef %12, i32 noundef 84), !dbg !776
  %14 = icmp ne i32 %13, 0, !dbg !776
  br i1 %14, label %15, label %16, !dbg !779

15:                                               ; preds = %10
  br label %790, !dbg !780

16:                                               ; preds = %10
  %17 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !781
  %18 = load i8*, i8** %4, align 8, !dbg !783
  %19 = call i32 %17(i8* noundef %18, i32 noundef 34), !dbg !781
  %20 = icmp ne i32 %19, 0, !dbg !781
  br i1 %20, label %21, label %22, !dbg !784

21:                                               ; preds = %16
  br label %790, !dbg !785

22:                                               ; preds = %16
  %23 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !786
  %24 = load i8*, i8** %4, align 8, !dbg !788
  %25 = call i32 %23(i8* noundef %24, i32 noundef 7), !dbg !786
  %26 = icmp ne i32 %25, 0, !dbg !786
  br i1 %26, label %27, label %28, !dbg !789

27:                                               ; preds = %22
  br label %790, !dbg !790

28:                                               ; preds = %22
  %29 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !791
  %30 = load i8*, i8** %4, align 8, !dbg !793
  %31 = call i32 %29(i8* noundef %30, i32 noundef 13), !dbg !791
  %32 = icmp ne i32 %31, 0, !dbg !791
  br i1 %32, label %33, label %34, !dbg !794

33:                                               ; preds = %28
  br label %790, !dbg !795

34:                                               ; preds = %28
  %35 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !796
  %36 = load i8*, i8** %4, align 8, !dbg !798
  %37 = call i32 %35(i8* noundef %36, i32 noundef 98), !dbg !796
  %38 = icmp ne i32 %37, 0, !dbg !796
  br i1 %38, label %39, label %40, !dbg !799

39:                                               ; preds = %34
  br label %790, !dbg !800

40:                                               ; preds = %34
  %41 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !801
  %42 = load i8*, i8** %4, align 8, !dbg !803
  %43 = call i32 %41(i8* noundef %42, i32 noundef 99), !dbg !801
  %44 = icmp ne i32 %43, 0, !dbg !801
  br i1 %44, label %45, label %46, !dbg !804

45:                                               ; preds = %40
  br label %790, !dbg !805

46:                                               ; preds = %40
  %47 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !806
  %48 = load i8*, i8** %4, align 8, !dbg !808
  %49 = call i32 %47(i8* noundef %48, i32 noundef 97), !dbg !806
  %50 = icmp ne i32 %49, 0, !dbg !806
  br i1 %50, label %51, label %52, !dbg !809

51:                                               ; preds = %46
  br label %790, !dbg !810

52:                                               ; preds = %46
  %53 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !811
  %54 = load i8*, i8** %4, align 8, !dbg !813
  %55 = call i32 %53(i8* noundef %54, i32 noundef 11), !dbg !811
  %56 = icmp ne i32 %55, 0, !dbg !811
  br i1 %56, label %57, label %58, !dbg !814

57:                                               ; preds = %52
  br label %790, !dbg !815

58:                                               ; preds = %52
  %59 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !816
  %60 = load i8*, i8** %4, align 8, !dbg !818
  %61 = call i32 %59(i8* noundef %60, i32 noundef 114), !dbg !816
  %62 = icmp ne i32 %61, 0, !dbg !816
  br i1 %62, label %63, label %64, !dbg !819

63:                                               ; preds = %58
  br label %790, !dbg !820

64:                                               ; preds = %58
  %65 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !821
  %66 = load i8*, i8** %4, align 8, !dbg !823
  %67 = call i32 %65(i8* noundef %66, i32 noundef 9), !dbg !821
  %68 = icmp ne i32 %67, 0, !dbg !821
  br i1 %68, label %69, label %70, !dbg !824

69:                                               ; preds = %64
  br label %790, !dbg !825

70:                                               ; preds = %64
  %71 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !826
  %72 = load i8*, i8** %4, align 8, !dbg !828
  %73 = call i32 %71(i8* noundef %72, i32 noundef 74), !dbg !826
  %74 = icmp ne i32 %73, 0, !dbg !826
  br i1 %74, label %75, label %76, !dbg !829

75:                                               ; preds = %70
  br label %790, !dbg !830

76:                                               ; preds = %70
  %77 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !831
  %78 = load i8*, i8** %4, align 8, !dbg !833
  %79 = call i32 %77(i8* noundef %78, i32 noundef 16), !dbg !831
  %80 = icmp ne i32 %79, 0, !dbg !831
  br i1 %80, label %81, label %82, !dbg !834

81:                                               ; preds = %76
  br label %790, !dbg !835

82:                                               ; preds = %76
  %83 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !836
  %84 = load i8*, i8** %4, align 8, !dbg !838
  %85 = call i32 %83(i8* noundef %84, i32 noundef 125), !dbg !836
  %86 = icmp ne i32 %85, 0, !dbg !836
  br i1 %86, label %87, label %88, !dbg !839

87:                                               ; preds = %82
  br label %790, !dbg !840

88:                                               ; preds = %82
  %89 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !841
  %90 = load i8*, i8** %4, align 8, !dbg !843
  %91 = call i32 %89(i8* noundef %90, i32 noundef 10), !dbg !841
  %92 = icmp ne i32 %91, 0, !dbg !841
  br i1 %92, label %93, label %94, !dbg !844

93:                                               ; preds = %88
  br label %790, !dbg !845

94:                                               ; preds = %88
  %95 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !846
  %96 = load i8*, i8** %4, align 8, !dbg !848
  %97 = call i32 %95(i8* noundef %96, i32 noundef 103), !dbg !846
  %98 = icmp ne i32 %97, 0, !dbg !846
  br i1 %98, label %99, label %100, !dbg !849

99:                                               ; preds = %94
  br label %790, !dbg !850

100:                                              ; preds = %94
  %101 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !851
  %102 = load i8*, i8** %4, align 8, !dbg !853
  %103 = call i32 %101(i8* noundef %102, i32 noundef 111), !dbg !851
  %104 = icmp ne i32 %103, 0, !dbg !851
  br i1 %104, label %105, label %106, !dbg !854

105:                                              ; preds = %100
  br label %790, !dbg !855

106:                                              ; preds = %100
  %107 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !856
  %108 = load i8*, i8** %4, align 8, !dbg !858
  %109 = call i32 %107(i8* noundef %108, i32 noundef 104), !dbg !856
  %110 = icmp ne i32 %109, 0, !dbg !856
  br i1 %110, label %111, label %112, !dbg !859

111:                                              ; preds = %106
  br label %790, !dbg !860

112:                                              ; preds = %106
  %113 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !861
  %114 = load i8*, i8** %4, align 8, !dbg !863
  %115 = call i32 %113(i8* noundef %114, i32 noundef 35), !dbg !861
  %116 = icmp ne i32 %115, 0, !dbg !861
  br i1 %116, label %117, label %118, !dbg !864

117:                                              ; preds = %112
  br label %790, !dbg !865

118:                                              ; preds = %112
  %119 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !866
  %120 = load i8*, i8** %4, align 8, !dbg !868
  %121 = call i32 %119(i8* noundef %120, i32 noundef 89), !dbg !866
  %122 = icmp ne i32 %121, 0, !dbg !866
  br i1 %122, label %123, label %124, !dbg !869

123:                                              ; preds = %118
  br label %790, !dbg !870

124:                                              ; preds = %118
  %125 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !871
  %126 = load i8*, i8** %4, align 8, !dbg !873
  %127 = call i32 %125(i8* noundef %126, i32 noundef 122), !dbg !871
  %128 = icmp ne i32 %127, 0, !dbg !871
  br i1 %128, label %129, label %130, !dbg !874

129:                                              ; preds = %124
  br label %790, !dbg !875

130:                                              ; preds = %124
  %131 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !876
  %132 = load i8*, i8** %4, align 8, !dbg !878
  %133 = call i32 %131(i8* noundef %132, i32 noundef 17), !dbg !876
  %134 = icmp ne i32 %133, 0, !dbg !876
  br i1 %134, label %135, label %136, !dbg !879

135:                                              ; preds = %130
  br label %790, !dbg !880

136:                                              ; preds = %130
  %137 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !881
  %138 = load i8*, i8** %4, align 8, !dbg !883
  %139 = call i32 %137(i8* noundef %138, i32 noundef 14), !dbg !881
  %140 = icmp ne i32 %139, 0, !dbg !881
  br i1 %140, label %141, label %142, !dbg !884

141:                                              ; preds = %136
  br label %790, !dbg !885

142:                                              ; preds = %136
  %143 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !886
  %144 = load i8*, i8** %4, align 8, !dbg !888
  %145 = call i32 %143(i8* noundef %144, i32 noundef 27), !dbg !886
  %146 = icmp ne i32 %145, 0, !dbg !886
  br i1 %146, label %147, label %148, !dbg !889

147:                                              ; preds = %142
  br label %790, !dbg !890

148:                                              ; preds = %142
  %149 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !891
  %150 = load i8*, i8** %4, align 8, !dbg !893
  %151 = call i32 %149(i8* noundef %150, i32 noundef 113), !dbg !891
  %152 = icmp ne i32 %151, 0, !dbg !891
  br i1 %152, label %153, label %154, !dbg !894

153:                                              ; preds = %148
  br label %790, !dbg !895

154:                                              ; preds = %148
  %155 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !896
  %156 = load i8*, i8** %4, align 8, !dbg !898
  %157 = call i32 %155(i8* noundef %156, i32 noundef 43), !dbg !896
  %158 = icmp ne i32 %157, 0, !dbg !896
  br i1 %158, label %159, label %160, !dbg !899

159:                                              ; preds = %154
  br label %790, !dbg !900

160:                                              ; preds = %154
  %161 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !901
  %162 = load i8*, i8** %4, align 8, !dbg !903
  %163 = call i32 %161(i8* noundef %162, i32 noundef 115), !dbg !901
  %164 = icmp ne i32 %163, 0, !dbg !901
  br i1 %164, label %165, label %166, !dbg !904

165:                                              ; preds = %160
  br label %790, !dbg !905

166:                                              ; preds = %160
  %167 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !906
  %168 = load i8*, i8** %4, align 8, !dbg !908
  %169 = call i32 %167(i8* noundef %168, i32 noundef 4), !dbg !906
  %170 = icmp ne i32 %169, 0, !dbg !906
  br i1 %170, label %171, label %172, !dbg !909

171:                                              ; preds = %166
  br label %790, !dbg !910

172:                                              ; preds = %166
  %173 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !911
  %174 = load i8*, i8** %4, align 8, !dbg !913
  %175 = call i32 %173(i8* noundef %174, i32 noundef 22), !dbg !911
  %176 = icmp ne i32 %175, 0, !dbg !911
  br i1 %176, label %177, label %178, !dbg !914

177:                                              ; preds = %172
  br label %790, !dbg !915

178:                                              ; preds = %172
  %179 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !916
  %180 = load i8*, i8** %4, align 8, !dbg !918
  %181 = call i32 %179(i8* noundef %180, i32 noundef 5), !dbg !916
  %182 = icmp ne i32 %181, 0, !dbg !916
  br i1 %182, label %183, label %184, !dbg !919

183:                                              ; preds = %178
  br label %790, !dbg !920

184:                                              ; preds = %178
  %185 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !921
  %186 = load i8*, i8** %4, align 8, !dbg !923
  %187 = call i32 %185(i8* noundef %186, i32 noundef 106), !dbg !921
  %188 = icmp ne i32 %187, 0, !dbg !921
  br i1 %188, label %189, label %190, !dbg !924

189:                                              ; preds = %184
  br label %790, !dbg !925

190:                                              ; preds = %184
  %191 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !926
  %192 = load i8*, i8** %4, align 8, !dbg !928
  %193 = call i32 %191(i8* noundef %192, i32 noundef 21), !dbg !926
  %194 = icmp ne i32 %193, 0, !dbg !926
  br i1 %194, label %195, label %196, !dbg !929

195:                                              ; preds = %190
  br label %790, !dbg !930

196:                                              ; preds = %190
  %197 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !931
  %198 = load i8*, i8** %4, align 8, !dbg !933
  %199 = call i32 %197(i8* noundef %198, i32 noundef 40), !dbg !931
  %200 = icmp ne i32 %199, 0, !dbg !931
  br i1 %200, label %201, label %202, !dbg !934

201:                                              ; preds = %196
  br label %790, !dbg !935

202:                                              ; preds = %196
  %203 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !936
  %204 = load i8*, i8** %4, align 8, !dbg !938
  %205 = call i32 %203(i8* noundef %204, i32 noundef 24), !dbg !936
  %206 = icmp ne i32 %205, 0, !dbg !936
  br i1 %206, label %207, label %208, !dbg !939

207:                                              ; preds = %202
  br label %790, !dbg !940

208:                                              ; preds = %202
  %209 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !941
  %210 = load i8*, i8** %4, align 8, !dbg !943
  %211 = call i32 %209(i8* noundef %210, i32 noundef 31), !dbg !941
  %212 = icmp ne i32 %211, 0, !dbg !941
  br i1 %212, label %213, label %214, !dbg !944

213:                                              ; preds = %208
  br label %790, !dbg !945

214:                                              ; preds = %208
  %215 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !946
  %216 = load i8*, i8** %4, align 8, !dbg !948
  %217 = call i32 %215(i8* noundef %216, i32 noundef 90), !dbg !946
  %218 = icmp ne i32 %217, 0, !dbg !946
  br i1 %218, label %219, label %220, !dbg !949

219:                                              ; preds = %214
  br label %790, !dbg !950

220:                                              ; preds = %214
  %221 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !951
  %222 = load i8*, i8** %4, align 8, !dbg !953
  %223 = call i32 %221(i8* noundef %222, i32 noundef 72), !dbg !951
  %224 = icmp ne i32 %223, 0, !dbg !951
  br i1 %224, label %225, label %226, !dbg !954

225:                                              ; preds = %220
  br label %790, !dbg !955

226:                                              ; preds = %220
  %227 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !956
  %228 = load i8*, i8** %4, align 8, !dbg !958
  %229 = call i32 %227(i8* noundef %228, i32 noundef 36), !dbg !956
  %230 = icmp ne i32 %229, 0, !dbg !956
  br i1 %230, label %231, label %232, !dbg !959

231:                                              ; preds = %226
  br label %790, !dbg !960

232:                                              ; preds = %226
  %233 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !961
  %234 = load i8*, i8** %4, align 8, !dbg !963
  %235 = call i32 %233(i8* noundef %234, i32 noundef 100), !dbg !961
  %236 = icmp ne i32 %235, 0, !dbg !961
  br i1 %236, label %237, label %238, !dbg !964

237:                                              ; preds = %232
  br label %790, !dbg !965

238:                                              ; preds = %232
  %239 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !966
  %240 = load i8*, i8** %4, align 8, !dbg !968
  %241 = call i32 %239(i8* noundef %240, i32 noundef 102), !dbg !966
  %242 = icmp ne i32 %241, 0, !dbg !966
  br i1 %242, label %243, label %244, !dbg !969

243:                                              ; preds = %238
  br label %790, !dbg !970

244:                                              ; preds = %238
  %245 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !971
  %246 = load i8*, i8** %4, align 8, !dbg !973
  %247 = call i32 %245(i8* noundef %246, i32 noundef 101), !dbg !971
  %248 = icmp ne i32 %247, 0, !dbg !971
  br i1 %248, label %249, label %250, !dbg !974

249:                                              ; preds = %244
  br label %790, !dbg !975

250:                                              ; preds = %244
  %251 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !976
  %252 = load i8*, i8** %4, align 8, !dbg !978
  %253 = call i32 %251(i8* noundef %252, i32 noundef 23), !dbg !976
  %254 = icmp ne i32 %253, 0, !dbg !976
  br i1 %254, label %255, label %256, !dbg !979

255:                                              ; preds = %250
  br label %790, !dbg !980

256:                                              ; preds = %250
  %257 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !981
  %258 = load i8*, i8** %4, align 8, !dbg !983
  %259 = call i32 %257(i8* noundef %258, i32 noundef 105), !dbg !981
  %260 = icmp ne i32 %259, 0, !dbg !981
  br i1 %260, label %261, label %262, !dbg !984

261:                                              ; preds = %256
  br label %790, !dbg !985

262:                                              ; preds = %256
  %263 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !986
  %264 = load i8*, i8** %4, align 8, !dbg !988
  %265 = call i32 %263(i8* noundef %264, i32 noundef 61), !dbg !986
  %266 = icmp ne i32 %265, 0, !dbg !986
  br i1 %266, label %267, label %268, !dbg !989

267:                                              ; preds = %262
  br label %790, !dbg !990

268:                                              ; preds = %262
  %269 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !991
  %270 = load i8*, i8** %4, align 8, !dbg !993
  %271 = call i32 %269(i8* noundef %270, i32 noundef 19), !dbg !991
  %272 = icmp ne i32 %271, 0, !dbg !991
  br i1 %272, label %273, label %274, !dbg !994

273:                                              ; preds = %268
  br label %790, !dbg !995

274:                                              ; preds = %268
  %275 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !996
  %276 = load i8*, i8** %4, align 8, !dbg !998
  %277 = call i32 %275(i8* noundef %276, i32 noundef 2), !dbg !996
  %278 = icmp ne i32 %277, 0, !dbg !996
  br i1 %278, label %279, label %280, !dbg !999

279:                                              ; preds = %274
  br label %790, !dbg !1000

280:                                              ; preds = %274
  %281 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1001
  %282 = load i8*, i8** %4, align 8, !dbg !1003
  %283 = call i32 %281(i8* noundef %282, i32 noundef 8), !dbg !1001
  %284 = icmp ne i32 %283, 0, !dbg !1001
  br i1 %284, label %285, label %286, !dbg !1004

285:                                              ; preds = %280
  br label %790, !dbg !1005

286:                                              ; preds = %280
  %287 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1006
  %288 = load i8*, i8** %4, align 8, !dbg !1008
  %289 = call i32 %287(i8* noundef %288, i32 noundef 37), !dbg !1006
  %290 = icmp ne i32 %289, 0, !dbg !1006
  br i1 %290, label %291, label %292, !dbg !1009

291:                                              ; preds = %286
  br label %790, !dbg !1010

292:                                              ; preds = %286
  %293 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1011
  %294 = load i8*, i8** %4, align 8, !dbg !1013
  %295 = call i32 %293(i8* noundef %294, i32 noundef 67), !dbg !1011
  %296 = icmp ne i32 %295, 0, !dbg !1011
  br i1 %296, label %297, label %298, !dbg !1014

297:                                              ; preds = %292
  br label %790, !dbg !1015

298:                                              ; preds = %292
  %299 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1016
  %300 = load i8*, i8** %4, align 8, !dbg !1018
  %301 = call i32 %299(i8* noundef %300, i32 noundef 12), !dbg !1016
  %302 = icmp ne i32 %301, 0, !dbg !1016
  br i1 %302, label %303, label %304, !dbg !1019

303:                                              ; preds = %298
  br label %790, !dbg !1020

304:                                              ; preds = %298
  %305 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1021
  %306 = load i8*, i8** %4, align 8, !dbg !1023
  %307 = call i32 %305(i8* noundef %306, i32 noundef 42), !dbg !1021
  %308 = icmp ne i32 %307, 0, !dbg !1021
  br i1 %308, label %309, label %310, !dbg !1024

309:                                              ; preds = %304
  br label %790, !dbg !1025

310:                                              ; preds = %304
  %311 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1026
  %312 = load i8*, i8** %4, align 8, !dbg !1028
  %313 = call i32 %311(i8* noundef %312, i32 noundef 92), !dbg !1026
  %314 = icmp ne i32 %313, 0, !dbg !1026
  br i1 %314, label %315, label %316, !dbg !1029

315:                                              ; preds = %310
  br label %790, !dbg !1030

316:                                              ; preds = %310
  %317 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1031
  %318 = load i8*, i8** %4, align 8, !dbg !1033
  %319 = call i32 %317(i8* noundef %318, i32 noundef 28), !dbg !1031
  %320 = icmp ne i32 %319, 0, !dbg !1031
  br i1 %320, label %321, label %322, !dbg !1034

321:                                              ; preds = %316
  br label %790, !dbg !1035

322:                                              ; preds = %316
  %323 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1036
  %324 = load i8*, i8** %4, align 8, !dbg !1038
  %325 = call i32 %323(i8* noundef %324, i32 noundef 63), !dbg !1036
  %326 = icmp ne i32 %325, 0, !dbg !1036
  br i1 %326, label %327, label %328, !dbg !1039

327:                                              ; preds = %322
  br label %790, !dbg !1040

328:                                              ; preds = %322
  %329 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1041
  %330 = load i8*, i8** %4, align 8, !dbg !1043
  %331 = call i32 %329(i8* noundef %330, i32 noundef 60), !dbg !1041
  %332 = icmp ne i32 %331, 0, !dbg !1041
  br i1 %332, label %333, label %334, !dbg !1044

333:                                              ; preds = %328
  br label %790, !dbg !1045

334:                                              ; preds = %328
  %335 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1046
  %336 = load i8*, i8** %4, align 8, !dbg !1048
  %337 = call i32 %335(i8* noundef %336, i32 noundef 38), !dbg !1046
  %338 = icmp ne i32 %337, 0, !dbg !1046
  br i1 %338, label %339, label %340, !dbg !1049

339:                                              ; preds = %334
  br label %790, !dbg !1050

340:                                              ; preds = %334
  %341 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1051
  %342 = load i8*, i8** %4, align 8, !dbg !1053
  %343 = call i32 %341(i8* noundef %342, i32 noundef 107), !dbg !1051
  %344 = icmp ne i32 %343, 0, !dbg !1051
  br i1 %344, label %345, label %346, !dbg !1054

345:                                              ; preds = %340
  br label %790, !dbg !1055

346:                                              ; preds = %340
  %347 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1056
  %348 = load i8*, i8** %4, align 8, !dbg !1058
  %349 = call i32 %347(i8* noundef %348, i32 noundef 20), !dbg !1056
  %350 = icmp ne i32 %349, 0, !dbg !1056
  br i1 %350, label %351, label %352, !dbg !1059

351:                                              ; preds = %346
  br label %790, !dbg !1060

352:                                              ; preds = %346
  %353 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1061
  %354 = load i8*, i8** %4, align 8, !dbg !1063
  %355 = call i32 %353(i8* noundef %354, i32 noundef 39), !dbg !1061
  %356 = icmp ne i32 %355, 0, !dbg !1061
  br i1 %356, label %357, label %358, !dbg !1064

357:                                              ; preds = %352
  br label %790, !dbg !1065

358:                                              ; preds = %352
  %359 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1066
  %360 = load i8*, i8** %4, align 8, !dbg !1068
  %361 = call i32 %359(i8* noundef %360, i32 noundef 131), !dbg !1066
  %362 = icmp ne i32 %361, 0, !dbg !1066
  br i1 %362, label %363, label %364, !dbg !1069

363:                                              ; preds = %358
  br label %790, !dbg !1070

364:                                              ; preds = %358
  %365 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1071
  %366 = load i8*, i8** %4, align 8, !dbg !1073
  %367 = call i32 %365(i8* noundef %366, i32 noundef 88), !dbg !1071
  %368 = icmp ne i32 %367, 0, !dbg !1071
  br i1 %368, label %369, label %370, !dbg !1074

369:                                              ; preds = %364
  br label %790, !dbg !1075

370:                                              ; preds = %364
  %371 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1076
  %372 = load i8*, i8** %4, align 8, !dbg !1078
  %373 = call i32 %371(i8* noundef %372, i32 noundef 25), !dbg !1076
  %374 = icmp ne i32 %373, 0, !dbg !1076
  br i1 %374, label %375, label %376, !dbg !1079

375:                                              ; preds = %370
  br label %790, !dbg !1080

376:                                              ; preds = %370
  %377 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1081
  %378 = load i8*, i8** %4, align 8, !dbg !1083
  %379 = call i32 %377(i8* noundef %378, i32 noundef 6), !dbg !1081
  %380 = icmp ne i32 %379, 0, !dbg !1081
  br i1 %380, label %381, label %382, !dbg !1084

381:                                              ; preds = %376
  br label %790, !dbg !1085

382:                                              ; preds = %376
  %383 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1086
  %384 = load i8*, i8** %4, align 8, !dbg !1088
  %385 = call i32 %383(i8* noundef %384, i32 noundef 95), !dbg !1086
  %386 = icmp ne i32 %385, 0, !dbg !1086
  br i1 %386, label %387, label %388, !dbg !1089

387:                                              ; preds = %382
  br label %790, !dbg !1090

388:                                              ; preds = %382
  %389 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1091
  %390 = load i8*, i8** %4, align 8, !dbg !1093
  %391 = call i32 %389(i8* noundef %390, i32 noundef 75), !dbg !1091
  %392 = icmp ne i32 %391, 0, !dbg !1091
  br i1 %392, label %393, label %394, !dbg !1094

393:                                              ; preds = %388
  br label %790, !dbg !1095

394:                                              ; preds = %388
  %395 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1096
  %396 = load i8*, i8** %4, align 8, !dbg !1098
  %397 = call i32 %395(i8* noundef %396, i32 noundef 130), !dbg !1096
  %398 = icmp ne i32 %397, 0, !dbg !1096
  br i1 %398, label %399, label %400, !dbg !1099

399:                                              ; preds = %394
  br label %790, !dbg !1100

400:                                              ; preds = %394
  %401 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1101
  %402 = load i8*, i8** %4, align 8, !dbg !1103
  %403 = call i32 %401(i8* noundef %402, i32 noundef 1), !dbg !1101
  %404 = icmp ne i32 %403, 0, !dbg !1101
  br i1 %404, label %405, label %406, !dbg !1104

405:                                              ; preds = %400
  br label %790, !dbg !1105

406:                                              ; preds = %400
  %407 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1106
  %408 = load i8*, i8** %4, align 8, !dbg !1108
  %409 = call i32 %407(i8* noundef %408, i32 noundef 32), !dbg !1106
  %410 = icmp ne i32 %409, 0, !dbg !1106
  br i1 %410, label %411, label %412, !dbg !1109

411:                                              ; preds = %406
  br label %790, !dbg !1110

412:                                              ; preds = %406
  %413 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1111
  %414 = load i8*, i8** %4, align 8, !dbg !1113
  %415 = call i32 %413(i8* noundef %414, i32 noundef 71), !dbg !1111
  %416 = icmp ne i32 %415, 0, !dbg !1111
  br i1 %416, label %417, label %418, !dbg !1114

417:                                              ; preds = %412
  br label %790, !dbg !1115

418:                                              ; preds = %412
  %419 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1116
  %420 = load i8*, i8** %4, align 8, !dbg !1118
  %421 = call i32 %419(i8* noundef %420, i32 noundef 93), !dbg !1116
  %422 = icmp ne i32 %421, 0, !dbg !1116
  br i1 %422, label %423, label %424, !dbg !1119

423:                                              ; preds = %418
  br label %790, !dbg !1120

424:                                              ; preds = %418
  %425 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1121
  %426 = load i8*, i8** %4, align 8, !dbg !1123
  %427 = call i32 %425(i8* noundef %426, i32 noundef 91), !dbg !1121
  %428 = icmp ne i32 %427, 0, !dbg !1121
  br i1 %428, label %429, label %430, !dbg !1124

429:                                              ; preds = %424
  br label %790, !dbg !1125

430:                                              ; preds = %424
  %431 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1126
  %432 = load i8*, i8** %4, align 8, !dbg !1128
  %433 = call i32 %431(i8* noundef %432, i32 noundef 30), !dbg !1126
  %434 = icmp ne i32 %433, 0, !dbg !1126
  br i1 %434, label %435, label %436, !dbg !1129

435:                                              ; preds = %430
  br label %790, !dbg !1130

436:                                              ; preds = %430
  %437 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1131
  %438 = load i8*, i8** %4, align 8, !dbg !1133
  %439 = call i32 %437(i8* noundef %438, i32 noundef 94), !dbg !1131
  %440 = icmp ne i32 %439, 0, !dbg !1131
  br i1 %440, label %441, label %442, !dbg !1134

441:                                              ; preds = %436
  br label %790, !dbg !1135

442:                                              ; preds = %436
  %443 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1136
  %444 = load i8*, i8** %4, align 8, !dbg !1138
  %445 = call i32 %443(i8* noundef %444, i32 noundef 29), !dbg !1136
  %446 = icmp ne i32 %445, 0, !dbg !1136
  br i1 %446, label %447, label %448, !dbg !1139

447:                                              ; preds = %442
  br label %790, !dbg !1140

448:                                              ; preds = %442
  %449 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1141
  %450 = load i8*, i8** %4, align 8, !dbg !1143
  %451 = call i32 %449(i8* noundef %450, i32 noundef 3), !dbg !1141
  %452 = icmp ne i32 %451, 0, !dbg !1141
  br i1 %452, label %453, label %454, !dbg !1144

453:                                              ; preds = %448
  br label %790, !dbg !1145

454:                                              ; preds = %448
  %455 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1146
  %456 = load i8*, i8** %4, align 8, !dbg !1148
  %457 = call i32 %455(i8* noundef %456, i32 noundef 116), !dbg !1146
  %458 = icmp ne i32 %457, 0, !dbg !1146
  br i1 %458, label %459, label %460, !dbg !1149

459:                                              ; preds = %454
  br label %790, !dbg !1150

460:                                              ; preds = %454
  %461 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1151
  %462 = load i8*, i8** %4, align 8, !dbg !1153
  %463 = call i32 %461(i8* noundef %462, i32 noundef 62), !dbg !1151
  %464 = icmp ne i32 %463, 0, !dbg !1151
  br i1 %464, label %465, label %466, !dbg !1154

465:                                              ; preds = %460
  br label %790, !dbg !1155

466:                                              ; preds = %460
  %467 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1156
  %468 = load i8*, i8** %4, align 8, !dbg !1158
  %469 = call i32 %467(i8* noundef %468, i32 noundef 110), !dbg !1156
  %470 = icmp ne i32 %469, 0, !dbg !1156
  br i1 %470, label %471, label %472, !dbg !1159

471:                                              ; preds = %466
  br label %790, !dbg !1160

472:                                              ; preds = %466
  %473 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1161
  %474 = load i8*, i8** %4, align 8, !dbg !1163
  %475 = call i32 %473(i8* noundef %474, i32 noundef 26), !dbg !1161
  %476 = icmp ne i32 %475, 0, !dbg !1161
  br i1 %476, label %477, label %478, !dbg !1164

477:                                              ; preds = %472
  br label %790, !dbg !1165

478:                                              ; preds = %472
  %479 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1166
  %480 = load i8*, i8** %4, align 8, !dbg !1168
  %481 = call i32 %479(i8* noundef %480, i32 noundef 18), !dbg !1166
  %482 = icmp ne i32 %481, 0, !dbg !1166
  br i1 %482, label %483, label %484, !dbg !1169

483:                                              ; preds = %478
  br label %790, !dbg !1170

484:                                              ; preds = %478
  %485 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1171
  %486 = load i8*, i8** %4, align 8, !dbg !1173
  %487 = call i32 %485(i8* noundef %486, i32 noundef 68), !dbg !1171
  %488 = icmp ne i32 %487, 0, !dbg !1171
  br i1 %488, label %489, label %490, !dbg !1174

489:                                              ; preds = %484
  br label %790, !dbg !1175

490:                                              ; preds = %484
  %491 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1176
  %492 = load i8*, i8** %4, align 8, !dbg !1178
  %493 = call i32 %491(i8* noundef %492, i32 noundef 52), !dbg !1176
  %494 = icmp ne i32 %493, 0, !dbg !1176
  br i1 %494, label %495, label %496, !dbg !1179

495:                                              ; preds = %490
  br label %790, !dbg !1180

496:                                              ; preds = %490
  %497 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1181
  %498 = load i8*, i8** %4, align 8, !dbg !1183
  %499 = call i32 %497(i8* noundef %498, i32 noundef 77), !dbg !1181
  %500 = icmp ne i32 %499, 0, !dbg !1181
  br i1 %500, label %501, label %502, !dbg !1184

501:                                              ; preds = %496
  br label %790, !dbg !1185

502:                                              ; preds = %496
  %503 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1186
  %504 = load i8*, i8** %4, align 8, !dbg !1188
  %505 = call i32 %503(i8* noundef %504, i32 noundef 53), !dbg !1186
  %506 = icmp ne i32 %505, 0, !dbg !1186
  br i1 %506, label %507, label %508, !dbg !1189

507:                                              ; preds = %502
  br label %790, !dbg !1190

508:                                              ; preds = %502
  %509 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1191
  %510 = load i8*, i8** %4, align 8, !dbg !1193
  %511 = call i32 %509(i8* noundef %510, i32 noundef 56), !dbg !1191
  %512 = icmp ne i32 %511, 0, !dbg !1191
  br i1 %512, label %513, label %514, !dbg !1194

513:                                              ; preds = %508
  br label %790, !dbg !1195

514:                                              ; preds = %508
  %515 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1196
  %516 = load i8*, i8** %4, align 8, !dbg !1198
  %517 = call i32 %515(i8* noundef %516, i32 noundef 57), !dbg !1196
  %518 = icmp ne i32 %517, 0, !dbg !1196
  br i1 %518, label %519, label %520, !dbg !1199

519:                                              ; preds = %514
  br label %790, !dbg !1200

520:                                              ; preds = %514
  %521 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1201
  %522 = load i8*, i8** %4, align 8, !dbg !1203
  %523 = call i32 %521(i8* noundef %522, i32 noundef 59), !dbg !1201
  %524 = icmp ne i32 %523, 0, !dbg !1201
  br i1 %524, label %525, label %526, !dbg !1204

525:                                              ; preds = %520
  br label %790, !dbg !1205

526:                                              ; preds = %520
  %527 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1206
  %528 = load i8*, i8** %4, align 8, !dbg !1208
  %529 = call i32 %527(i8* noundef %528, i32 noundef 44), !dbg !1206
  %530 = icmp ne i32 %529, 0, !dbg !1206
  br i1 %530, label %531, label %532, !dbg !1209

531:                                              ; preds = %526
  br label %790, !dbg !1210

532:                                              ; preds = %526
  %533 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1211
  %534 = load i8*, i8** %4, align 8, !dbg !1213
  %535 = call i32 %533(i8* noundef %534, i32 noundef 70), !dbg !1211
  %536 = icmp ne i32 %535, 0, !dbg !1211
  br i1 %536, label %537, label %538, !dbg !1214

537:                                              ; preds = %532
  br label %790, !dbg !1215

538:                                              ; preds = %532
  %539 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1216
  %540 = load i8*, i8** %4, align 8, !dbg !1218
  %541 = call i32 %539(i8* noundef %540, i32 noundef 73), !dbg !1216
  %542 = icmp ne i32 %541, 0, !dbg !1216
  br i1 %542, label %543, label %544, !dbg !1219

543:                                              ; preds = %538
  br label %790, !dbg !1220

544:                                              ; preds = %538
  %545 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1221
  %546 = load i8*, i8** %4, align 8, !dbg !1223
  %547 = call i32 %545(i8* noundef %546, i32 noundef 112), !dbg !1221
  %548 = icmp ne i32 %547, 0, !dbg !1221
  br i1 %548, label %549, label %550, !dbg !1224

549:                                              ; preds = %544
  br label %790, !dbg !1225

550:                                              ; preds = %544
  %551 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1226
  %552 = load i8*, i8** %4, align 8, !dbg !1228
  %553 = call i32 %551(i8* noundef %552, i32 noundef 133), !dbg !1226
  %554 = icmp ne i32 %553, 0, !dbg !1226
  br i1 %554, label %555, label %556, !dbg !1229

555:                                              ; preds = %550
  br label %790, !dbg !1230

556:                                              ; preds = %550
  %557 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1231
  %558 = load i8*, i8** %4, align 8, !dbg !1233
  %559 = call i32 %557(i8* noundef %558, i32 noundef 120), !dbg !1231
  %560 = icmp ne i32 %559, 0, !dbg !1231
  br i1 %560, label %561, label %562, !dbg !1234

561:                                              ; preds = %556
  br label %790, !dbg !1235

562:                                              ; preds = %556
  %563 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1236
  %564 = load i8*, i8** %4, align 8, !dbg !1238
  %565 = call i32 %563(i8* noundef %564, i32 noundef 127), !dbg !1236
  %566 = icmp ne i32 %565, 0, !dbg !1236
  br i1 %566, label %567, label %568, !dbg !1239

567:                                              ; preds = %562
  br label %790, !dbg !1240

568:                                              ; preds = %562
  %569 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1241
  %570 = load i8*, i8** %4, align 8, !dbg !1243
  %571 = call i32 %569(i8* noundef %570, i32 noundef 129), !dbg !1241
  %572 = icmp ne i32 %571, 0, !dbg !1241
  br i1 %572, label %573, label %574, !dbg !1244

573:                                              ; preds = %568
  br label %790, !dbg !1245

574:                                              ; preds = %568
  %575 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1246
  %576 = load i8*, i8** %4, align 8, !dbg !1248
  %577 = call i32 %575(i8* noundef %576, i32 noundef 128), !dbg !1246
  %578 = icmp ne i32 %577, 0, !dbg !1246
  br i1 %578, label %579, label %580, !dbg !1249

579:                                              ; preds = %574
  br label %790, !dbg !1250

580:                                              ; preds = %574
  %581 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1251
  %582 = load i8*, i8** %4, align 8, !dbg !1253
  %583 = call i32 %581(i8* noundef %582, i32 noundef 51), !dbg !1251
  %584 = icmp ne i32 %583, 0, !dbg !1251
  br i1 %584, label %585, label %586, !dbg !1254

585:                                              ; preds = %580
  br label %790, !dbg !1255

586:                                              ; preds = %580
  %587 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1256
  %588 = load i8*, i8** %4, align 8, !dbg !1258
  %589 = call i32 %587(i8* noundef %588, i32 noundef 45), !dbg !1256
  %590 = icmp ne i32 %589, 0, !dbg !1256
  br i1 %590, label %591, label %592, !dbg !1259

591:                                              ; preds = %586
  br label %790, !dbg !1260

592:                                              ; preds = %586
  %593 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1261
  %594 = load i8*, i8** %4, align 8, !dbg !1263
  %595 = call i32 %593(i8* noundef %594, i32 noundef 46), !dbg !1261
  %596 = icmp ne i32 %595, 0, !dbg !1261
  br i1 %596, label %597, label %598, !dbg !1264

597:                                              ; preds = %592
  br label %790, !dbg !1265

598:                                              ; preds = %592
  %599 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1266
  %600 = load i8*, i8** %4, align 8, !dbg !1268
  %601 = call i32 %599(i8* noundef %600, i32 noundef 47), !dbg !1266
  %602 = icmp ne i32 %601, 0, !dbg !1266
  br i1 %602, label %603, label %604, !dbg !1269

603:                                              ; preds = %598
  br label %790, !dbg !1270

604:                                              ; preds = %598
  %605 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1271
  %606 = load i8*, i8** %4, align 8, !dbg !1273
  %607 = call i32 %605(i8* noundef %606, i32 noundef 79), !dbg !1271
  %608 = icmp ne i32 %607, 0, !dbg !1271
  br i1 %608, label %609, label %610, !dbg !1274

609:                                              ; preds = %604
  br label %790, !dbg !1275

610:                                              ; preds = %604
  %611 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1276
  %612 = load i8*, i8** %4, align 8, !dbg !1278
  %613 = call i32 %611(i8* noundef %612, i32 noundef 80), !dbg !1276
  %614 = icmp ne i32 %613, 0, !dbg !1276
  br i1 %614, label %615, label %616, !dbg !1279

615:                                              ; preds = %610
  br label %790, !dbg !1280

616:                                              ; preds = %610
  %617 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1281
  %618 = load i8*, i8** %4, align 8, !dbg !1283
  %619 = call i32 %617(i8* noundef %618, i32 noundef 83), !dbg !1281
  %620 = icmp ne i32 %619, 0, !dbg !1281
  br i1 %620, label %621, label %622, !dbg !1284

621:                                              ; preds = %616
  br label %790, !dbg !1285

622:                                              ; preds = %616
  %623 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1286
  %624 = load i8*, i8** %4, align 8, !dbg !1288
  %625 = call i32 %623(i8* noundef %624, i32 noundef 82), !dbg !1286
  %626 = icmp ne i32 %625, 0, !dbg !1286
  br i1 %626, label %627, label %628, !dbg !1289

627:                                              ; preds = %622
  br label %790, !dbg !1290

628:                                              ; preds = %622
  %629 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1291
  %630 = load i8*, i8** %4, align 8, !dbg !1293
  %631 = call i32 %629(i8* noundef %630, i32 noundef 81), !dbg !1291
  %632 = icmp ne i32 %631, 0, !dbg !1291
  br i1 %632, label %633, label %634, !dbg !1294

633:                                              ; preds = %628
  br label %790, !dbg !1295

634:                                              ; preds = %628
  %635 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1296
  %636 = load i8*, i8** %4, align 8, !dbg !1298
  %637 = call i32 %635(i8* noundef %636, i32 noundef 48), !dbg !1296
  %638 = icmp ne i32 %637, 0, !dbg !1296
  br i1 %638, label %639, label %640, !dbg !1299

639:                                              ; preds = %634
  br label %790, !dbg !1300

640:                                              ; preds = %634
  %641 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1301
  %642 = load i8*, i8** %4, align 8, !dbg !1303
  %643 = call i32 %641(i8* noundef %642, i32 noundef 124), !dbg !1301
  %644 = icmp ne i32 %643, 0, !dbg !1301
  br i1 %644, label %645, label %646, !dbg !1304

645:                                              ; preds = %640
  br label %790, !dbg !1305

646:                                              ; preds = %640
  %647 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1306
  %648 = load i8*, i8** %4, align 8, !dbg !1308
  %649 = call i32 %647(i8* noundef %648, i32 noundef 119), !dbg !1306
  %650 = icmp ne i32 %649, 0, !dbg !1306
  br i1 %650, label %651, label %652, !dbg !1309

651:                                              ; preds = %646
  br label %790, !dbg !1310

652:                                              ; preds = %646
  %653 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1311
  %654 = load i8*, i8** %4, align 8, !dbg !1313
  %655 = call i32 %653(i8* noundef %654, i32 noundef 55), !dbg !1311
  %656 = icmp ne i32 %655, 0, !dbg !1311
  br i1 %656, label %657, label %658, !dbg !1314

657:                                              ; preds = %652
  br label %790, !dbg !1315

658:                                              ; preds = %652
  %659 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1316
  %660 = load i8*, i8** %4, align 8, !dbg !1318
  %661 = call i32 %659(i8* noundef %660, i32 noundef 50), !dbg !1316
  %662 = icmp ne i32 %661, 0, !dbg !1316
  br i1 %662, label %663, label %664, !dbg !1319

663:                                              ; preds = %658
  br label %790, !dbg !1320

664:                                              ; preds = %658
  %665 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1321
  %666 = load i8*, i8** %4, align 8, !dbg !1323
  %667 = call i32 %665(i8* noundef %666, i32 noundef 126), !dbg !1321
  %668 = icmp ne i32 %667, 0, !dbg !1321
  br i1 %668, label %669, label %670, !dbg !1324

669:                                              ; preds = %664
  br label %790, !dbg !1325

670:                                              ; preds = %664
  %671 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1326
  %672 = load i8*, i8** %4, align 8, !dbg !1328
  %673 = call i32 %671(i8* noundef %672, i32 noundef 123), !dbg !1326
  %674 = icmp ne i32 %673, 0, !dbg !1326
  br i1 %674, label %675, label %676, !dbg !1329

675:                                              ; preds = %670
  br label %790, !dbg !1330

676:                                              ; preds = %670
  %677 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1331
  %678 = load i8*, i8** %4, align 8, !dbg !1333
  %679 = call i32 %677(i8* noundef %678, i32 noundef 64), !dbg !1331
  %680 = icmp ne i32 %679, 0, !dbg !1331
  br i1 %680, label %681, label %682, !dbg !1334

681:                                              ; preds = %676
  br label %790, !dbg !1335

682:                                              ; preds = %676
  %683 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1336
  %684 = load i8*, i8** %4, align 8, !dbg !1338
  %685 = call i32 %683(i8* noundef %684, i32 noundef 65), !dbg !1336
  %686 = icmp ne i32 %685, 0, !dbg !1336
  br i1 %686, label %687, label %688, !dbg !1339

687:                                              ; preds = %682
  br label %790, !dbg !1340

688:                                              ; preds = %682
  %689 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1341
  %690 = load i8*, i8** %4, align 8, !dbg !1343
  %691 = call i32 %689(i8* noundef %690, i32 noundef 15), !dbg !1341
  %692 = icmp ne i32 %691, 0, !dbg !1341
  br i1 %692, label %693, label %694, !dbg !1344

693:                                              ; preds = %688
  br label %790, !dbg !1345

694:                                              ; preds = %688
  %695 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1346
  %696 = load i8*, i8** %4, align 8, !dbg !1348
  %697 = call i32 %695(i8* noundef %696, i32 noundef 118), !dbg !1346
  %698 = icmp ne i32 %697, 0, !dbg !1346
  br i1 %698, label %699, label %700, !dbg !1349

699:                                              ; preds = %694
  br label %790, !dbg !1350

700:                                              ; preds = %694
  %701 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1351
  %702 = load i8*, i8** %4, align 8, !dbg !1353
  %703 = call i32 %701(i8* noundef %702, i32 noundef 76), !dbg !1351
  %704 = icmp ne i32 %703, 0, !dbg !1351
  br i1 %704, label %705, label %706, !dbg !1354

705:                                              ; preds = %700
  br label %790, !dbg !1355

706:                                              ; preds = %700
  %707 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1356
  %708 = load i8*, i8** %4, align 8, !dbg !1358
  %709 = call i32 %707(i8* noundef %708, i32 noundef 96), !dbg !1356
  %710 = icmp ne i32 %709, 0, !dbg !1356
  br i1 %710, label %711, label %712, !dbg !1359

711:                                              ; preds = %706
  br label %790, !dbg !1360

712:                                              ; preds = %706
  %713 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1361
  %714 = load i8*, i8** %4, align 8, !dbg !1363
  %715 = call i32 %713(i8* noundef %714, i32 noundef 78), !dbg !1361
  %716 = icmp ne i32 %715, 0, !dbg !1361
  br i1 %716, label %717, label %718, !dbg !1364

717:                                              ; preds = %712
  br label %790, !dbg !1365

718:                                              ; preds = %712
  %719 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1366
  %720 = load i8*, i8** %4, align 8, !dbg !1368
  %721 = call i32 %719(i8* noundef %720, i32 noundef 66), !dbg !1366
  %722 = icmp ne i32 %721, 0, !dbg !1366
  br i1 %722, label %723, label %724, !dbg !1369

723:                                              ; preds = %718
  br label %790, !dbg !1370

724:                                              ; preds = %718
  %725 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1371
  %726 = load i8*, i8** %4, align 8, !dbg !1373
  %727 = call i32 %725(i8* noundef %726, i32 noundef 121), !dbg !1371
  %728 = icmp ne i32 %727, 0, !dbg !1371
  br i1 %728, label %729, label %730, !dbg !1374

729:                                              ; preds = %724
  br label %790, !dbg !1375

730:                                              ; preds = %724
  %731 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1376
  %732 = load i8*, i8** %4, align 8, !dbg !1378
  %733 = call i32 %731(i8* noundef %732, i32 noundef 85), !dbg !1376
  %734 = icmp ne i32 %733, 0, !dbg !1376
  br i1 %734, label %735, label %736, !dbg !1379

735:                                              ; preds = %730
  br label %790, !dbg !1380

736:                                              ; preds = %730
  %737 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1381
  %738 = load i8*, i8** %4, align 8, !dbg !1383
  %739 = call i32 %737(i8* noundef %738, i32 noundef 132), !dbg !1381
  %740 = icmp ne i32 %739, 0, !dbg !1381
  br i1 %740, label %741, label %742, !dbg !1384

741:                                              ; preds = %736
  br label %790, !dbg !1385

742:                                              ; preds = %736
  %743 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1386
  %744 = load i8*, i8** %4, align 8, !dbg !1388
  %745 = call i32 %743(i8* noundef %744, i32 noundef 108), !dbg !1386
  %746 = icmp ne i32 %745, 0, !dbg !1386
  br i1 %746, label %747, label %748, !dbg !1389

747:                                              ; preds = %742
  br label %790, !dbg !1390

748:                                              ; preds = %742
  %749 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1391
  %750 = load i8*, i8** %4, align 8, !dbg !1393
  %751 = call i32 %749(i8* noundef %750, i32 noundef 69), !dbg !1391
  %752 = icmp ne i32 %751, 0, !dbg !1391
  br i1 %752, label %753, label %754, !dbg !1394

753:                                              ; preds = %748
  br label %790, !dbg !1395

754:                                              ; preds = %748
  %755 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1396
  %756 = load i8*, i8** %4, align 8, !dbg !1398
  %757 = call i32 %755(i8* noundef %756, i32 noundef 86), !dbg !1396
  %758 = icmp ne i32 %757, 0, !dbg !1396
  br i1 %758, label %759, label %760, !dbg !1399

759:                                              ; preds = %754
  br label %790, !dbg !1400

760:                                              ; preds = %754
  %761 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1401
  %762 = load i8*, i8** %4, align 8, !dbg !1403
  %763 = call i32 %761(i8* noundef %762, i32 noundef 109), !dbg !1401
  %764 = icmp ne i32 %763, 0, !dbg !1401
  br i1 %764, label %765, label %766, !dbg !1404

765:                                              ; preds = %760
  br label %790, !dbg !1405

766:                                              ; preds = %760
  %767 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1406
  %768 = load i8*, i8** %4, align 8, !dbg !1408
  %769 = call i32 %767(i8* noundef %768, i32 noundef 117), !dbg !1406
  %770 = icmp ne i32 %769, 0, !dbg !1406
  br i1 %770, label %771, label %772, !dbg !1409

771:                                              ; preds = %766
  br label %790, !dbg !1410

772:                                              ; preds = %766
  %773 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1411
  %774 = load i8*, i8** %4, align 8, !dbg !1413
  %775 = call i32 %773(i8* noundef %774, i32 noundef 49), !dbg !1411
  %776 = icmp ne i32 %775, 0, !dbg !1411
  br i1 %776, label %777, label %778, !dbg !1414

777:                                              ; preds = %772
  br label %790, !dbg !1415

778:                                              ; preds = %772
  %779 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1416
  %780 = load i8*, i8** %4, align 8, !dbg !1418
  %781 = call i32 %779(i8* noundef %780, i32 noundef 87), !dbg !1416
  %782 = icmp ne i32 %781, 0, !dbg !1416
  br i1 %782, label %783, label %784, !dbg !1419

783:                                              ; preds = %778
  br label %790, !dbg !1420

784:                                              ; preds = %778
  %785 = load i32 (i8*, i32)*, i32 (i8*, i32)** %3, align 8, !dbg !1421
  %786 = load i8*, i8** %4, align 8, !dbg !1423
  %787 = call i32 %785(i8* noundef %786, i32 noundef 54), !dbg !1421
  %788 = icmp ne i32 %787, 0, !dbg !1421
  br i1 %788, label %789, label %790, !dbg !1424

789:                                              ; preds = %784
  br label %790, !dbg !1425

790:                                              ; preds = %9, %15, %21, %27, %33, %39, %45, %51, %57, %63, %69, %75, %81, %87, %93, %99, %105, %111, %117, %123, %129, %135, %141, %147, %153, %159, %165, %171, %177, %183, %189, %195, %201, %207, %213, %219, %225, %231, %237, %243, %249, %255, %261, %267, %273, %279, %285, %291, %297, %303, %309, %315, %321, %327, %333, %339, %345, %351, %357, %363, %369, %375, %381, %387, %393, %399, %405, %411, %417, %423, %429, %435, %441, %447, %453, %459, %465, %471, %477, %483, %489, %495, %501, %507, %513, %519, %525, %531, %537, %543, %549, %555, %561, %567, %573, %579, %585, %591, %597, %603, %609, %615, %621, %627, %633, %639, %645, %651, %657, %663, %669, %675, %681, %687, %693, %699, %705, %711, %717, %723, %729, %735, %741, %747, %753, %759, %765, %771, %777, %783, %789, %784
  ret void, !dbg !1426
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1427 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1430, metadata !DIExpression()), !dbg !1431
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1432, metadata !DIExpression()), !dbg !1431
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1433, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1434, metadata !DIExpression()), !dbg !1431
  call void @flush_stdout(), !dbg !1435
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1436
  %10 = icmp ne void ()* %9, null, !dbg !1436
  br i1 %10, label %11, label %13, !dbg !1438

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1439
  call void %12(), !dbg !1440
  br label %17, !dbg !1440

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1441
  %15 = call i8* @getprogname() #20, !dbg !1443
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0), i8* noundef %15), !dbg !1444
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1445
  %19 = load i32, i32* %6, align 4, !dbg !1445
  %20 = load i8*, i8** %7, align 8, !dbg !1445
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1445
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1445
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1445
  ret void, !dbg !1446
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1447 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i32 1, i32* %1, align 4, !dbg !1450
  %2 = load i32, i32* %1, align 4, !dbg !1451
  %3 = icmp sle i32 0, %2, !dbg !1453
  br i1 %3, label %4, label %11, !dbg !1454

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1455
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1456
  %7 = icmp ne i32 %6, 0, !dbg !1456
  br i1 %7, label %8, label %11, !dbg !1457

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1458
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1458
  br label %11, !dbg !1458

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1459
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1460 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1461, metadata !DIExpression()), !dbg !1462
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1463, metadata !DIExpression()), !dbg !1462
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1464, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1465, metadata !DIExpression()), !dbg !1462
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1466
  %10 = load i8*, i8** %7, align 8, !dbg !1467
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1468
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1468
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1468
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1469
  %15 = add i32 %14, 1, !dbg !1469
  store i32 %15, i32* @error_message_count, align 4, !dbg !1469
  %16 = load i32, i32* %6, align 4, !dbg !1470
  %17 = icmp ne i32 %16, 0, !dbg !1470
  br i1 %17, label %18, label %20, !dbg !1472

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1473
  call void @print_errno_message(i32 noundef %19), !dbg !1474
  br label %20, !dbg !1474

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1475
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1475
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1476
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1476
  %25 = load i32, i32* %5, align 4, !dbg !1477
  %26 = icmp ne i32 %25, 0, !dbg !1477
  br i1 %26, label %27, label %29, !dbg !1479

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1480
  call void @exit(i32 noundef %28) #19, !dbg !1481
  unreachable, !dbg !1481

29:                                               ; preds = %20
  ret void, !dbg !1482
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1483 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1484, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1488, metadata !DIExpression()), !dbg !1492
  %5 = load i32, i32* %2, align 4, !dbg !1493
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1494
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1495
  store i8* %7, i8** %3, align 8, !dbg !1496
  %8 = load i8*, i8** %3, align 8, !dbg !1497
  %9 = icmp ne i8* %8, null, !dbg !1497
  br i1 %9, label %12, label %10, !dbg !1499

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.109, i64 0, i64 0)) #18, !dbg !1500
  store i8* %11, i8** %3, align 8, !dbg !1501
  br label %12, !dbg !1502

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1503
  %14 = load i8*, i8** %3, align 8, !dbg !1504
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.110, i64 0, i64 0), i8* noundef %14), !dbg !1505
  ret void, !dbg !1506
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1507 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1510, metadata !DIExpression()), !dbg !1511
  %3 = load i32, i32* %2, align 4, !dbg !1512
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1513
  %5 = icmp sle i32 0, %4, !dbg !1514
  %6 = zext i1 %5 to i32, !dbg !1514
  ret i32 %6, !dbg !1515
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1516 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1525, metadata !DIExpression()), !dbg !1526
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1527
  call void @llvm.va_start(i8* %9), !dbg !1527
  %10 = load i32, i32* %4, align 4, !dbg !1528
  %11 = load i32, i32* %5, align 4, !dbg !1528
  %12 = load i8*, i8** %6, align 8, !dbg !1528
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1528
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1528
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1528
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1529
  call void @llvm.va_end(i8* %15), !dbg !1529
  ret void, !dbg !1530
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !20 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1533, metadata !DIExpression()), !dbg !1532
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1534, metadata !DIExpression()), !dbg !1532
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1535, metadata !DIExpression()), !dbg !1532
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1536, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1537, metadata !DIExpression()), !dbg !1532
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1538
  %14 = icmp ne i32 %13, 0, !dbg !1538
  br i1 %14, label %15, label %38, !dbg !1540

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1541
  %17 = load i32, i32* %10, align 4, !dbg !1544
  %18 = icmp eq i32 %16, %17, !dbg !1545
  br i1 %18, label %19, label %35, !dbg !1546

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1547
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1548
  %22 = icmp eq i8* %20, %21, !dbg !1549
  br i1 %22, label %34, label %23, !dbg !1550

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1551
  %25 = icmp ne i8* %24, null, !dbg !1552
  br i1 %25, label %26, label %35, !dbg !1553

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1554
  %28 = icmp ne i8* %27, null, !dbg !1555
  br i1 %28, label %29, label %35, !dbg !1556

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1557
  %31 = load i8*, i8** %9, align 8, !dbg !1558
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1559
  %33 = icmp eq i32 %32, 0, !dbg !1560
  br i1 %33, label %34, label %35, !dbg !1561

34:                                               ; preds = %29, %19
  br label %61, !dbg !1562

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1563
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1564
  %37 = load i32, i32* %10, align 4, !dbg !1565
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1566
  br label %38, !dbg !1567

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1568
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1569
  %40 = icmp ne void ()* %39, null, !dbg !1569
  br i1 %40, label %41, label %43, !dbg !1571

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1572
  call void %42(), !dbg !1573
  br label %47, !dbg !1573

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1574
  %45 = call i8* @getprogname() #20, !dbg !1576
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.113, i64 0, i64 0), i8* noundef %45), !dbg !1577
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1578
  %49 = load i8*, i8** %9, align 8, !dbg !1579
  %50 = icmp ne i8* %49, null, !dbg !1580
  %51 = zext i1 %50 to i64, !dbg !1579
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.115, i64 0, i64 0), !dbg !1579
  %53 = load i8*, i8** %9, align 8, !dbg !1581
  %54 = load i32, i32* %10, align 4, !dbg !1582
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1583
  %56 = load i32, i32* %7, align 4, !dbg !1584
  %57 = load i32, i32* %8, align 4, !dbg !1584
  %58 = load i8*, i8** %11, align 8, !dbg !1584
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1584
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1584
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1584
  br label %61, !dbg !1585

61:                                               ; preds = %47, %34
  ret void, !dbg !1585
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1586 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1591, metadata !DIExpression()), !dbg !1592
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1593, metadata !DIExpression()), !dbg !1594
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1595, metadata !DIExpression()), !dbg !1596
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1597, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1599, metadata !DIExpression()), !dbg !1600
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1601
  call void @llvm.va_start(i8* %13), !dbg !1601
  %14 = load i32, i32* %6, align 4, !dbg !1602
  %15 = load i32, i32* %7, align 4, !dbg !1602
  %16 = load i8*, i8** %8, align 8, !dbg !1602
  %17 = load i32, i32* %9, align 4, !dbg !1602
  %18 = load i8*, i8** %10, align 8, !dbg !1602
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1602
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1602
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1602
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1603
  call void @llvm.va_end(i8* %21), !dbg !1603
  ret void, !dbg !1604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) #4 !dbg !1605 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1612, metadata !DIExpression()), !dbg !1613
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1614, metadata !DIExpression()), !dbg !1615
  store float %4, float* %10, align 4
  call void @llvm.dbg.declare(metadata float* %10, metadata !1616, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.declare(metadata double* %11, metadata !1618, metadata !DIExpression()), !dbg !1619
  %17 = load float, float* %10, align 4, !dbg !1620
  %18 = fpext float %17 to double, !dbg !1620
  store double %18, double* %11, align 8, !dbg !1619
  call void @llvm.dbg.declare(metadata [11 x i8]* %12, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.declare(metadata float* %13, metadata !1623, metadata !DIExpression()), !dbg !1624
  %19 = load float, float* %10, align 4, !dbg !1625
  %20 = fcmp olt float %19, 0.000000e+00, !dbg !1626
  br i1 %20, label %21, label %24, !dbg !1625

21:                                               ; preds = %5
  %22 = load float, float* %10, align 4, !dbg !1627
  %23 = fneg float %22, !dbg !1628
  br label %26, !dbg !1625

24:                                               ; preds = %5
  %25 = load float, float* %10, align 4, !dbg !1629
  br label %26, !dbg !1625

26:                                               ; preds = %24, %21
  %27 = phi float [ %23, %21 ], [ %25, %24 ], !dbg !1625
  store float %27, float* %13, align 4, !dbg !1624
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1630, metadata !DIExpression()), !dbg !1631
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !1632
  store i8* %28, i8** %14, align 8, !dbg !1631
  %29 = load i8*, i8** %14, align 8, !dbg !1633
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !1633
  store i8* %30, i8** %14, align 8, !dbg !1633
  store i8 37, i8* %29, align 1, !dbg !1634
  %31 = load i8*, i8** %14, align 8, !dbg !1635
  store i8 45, i8* %31, align 1, !dbg !1636
  %32 = load i32, i32* %8, align 4, !dbg !1637
  %33 = and i32 %32, 1, !dbg !1638
  %34 = icmp ne i32 %33, 0, !dbg !1639
  %35 = zext i1 %34 to i32, !dbg !1639
  %36 = load i8*, i8** %14, align 8, !dbg !1640
  %37 = sext i32 %35 to i64, !dbg !1640
  %38 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !1640
  store i8* %38, i8** %14, align 8, !dbg !1640
  %39 = load i8*, i8** %14, align 8, !dbg !1641
  store i8 43, i8* %39, align 1, !dbg !1642
  %40 = load i32, i32* %8, align 4, !dbg !1643
  %41 = and i32 %40, 2, !dbg !1644
  %42 = icmp ne i32 %41, 0, !dbg !1645
  %43 = zext i1 %42 to i32, !dbg !1645
  %44 = load i8*, i8** %14, align 8, !dbg !1646
  %45 = sext i32 %43 to i64, !dbg !1646
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1646
  store i8* %46, i8** %14, align 8, !dbg !1646
  %47 = load i8*, i8** %14, align 8, !dbg !1647
  store i8 32, i8* %47, align 1, !dbg !1648
  %48 = load i32, i32* %8, align 4, !dbg !1649
  %49 = and i32 %48, 4, !dbg !1650
  %50 = icmp ne i32 %49, 0, !dbg !1651
  %51 = zext i1 %50 to i32, !dbg !1651
  %52 = load i8*, i8** %14, align 8, !dbg !1652
  %53 = sext i32 %51 to i64, !dbg !1652
  %54 = getelementptr inbounds i8, i8* %52, i64 %53, !dbg !1652
  store i8* %54, i8** %14, align 8, !dbg !1652
  %55 = load i8*, i8** %14, align 8, !dbg !1653
  store i8 48, i8* %55, align 1, !dbg !1654
  %56 = load i32, i32* %8, align 4, !dbg !1655
  %57 = and i32 %56, 8, !dbg !1656
  %58 = icmp ne i32 %57, 0, !dbg !1657
  %59 = zext i1 %58 to i32, !dbg !1657
  %60 = load i8*, i8** %14, align 8, !dbg !1658
  %61 = sext i32 %59 to i64, !dbg !1658
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !1658
  store i8* %62, i8** %14, align 8, !dbg !1658
  %63 = load i8*, i8** %14, align 8, !dbg !1659
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !1659
  store i8* %64, i8** %14, align 8, !dbg !1659
  store i8 42, i8* %63, align 1, !dbg !1660
  %65 = load i8*, i8** %14, align 8, !dbg !1661
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !1661
  store i8* %66, i8** %14, align 8, !dbg !1661
  store i8 46, i8* %65, align 1, !dbg !1662
  %67 = load i8*, i8** %14, align 8, !dbg !1663
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !1663
  store i8* %68, i8** %14, align 8, !dbg !1663
  store i8 42, i8* %67, align 1, !dbg !1664
  %69 = load i8*, i8** %14, align 8, !dbg !1665
  store i8 76, i8* %69, align 1, !dbg !1666
  %70 = load i8*, i8** %14, align 8, !dbg !1667
  %71 = getelementptr inbounds i8, i8* %70, i64 0, !dbg !1667
  store i8* %71, i8** %14, align 8, !dbg !1667
  %72 = load i32, i32* %8, align 4, !dbg !1668
  %73 = and i32 %72, 16, !dbg !1669
  %74 = icmp ne i32 %73, 0, !dbg !1668
  %75 = zext i1 %74 to i64, !dbg !1668
  %76 = select i1 %74, i32 71, i32 103, !dbg !1668
  %77 = trunc i32 %76 to i8, !dbg !1668
  %78 = load i8*, i8** %14, align 8, !dbg !1670
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !1670
  store i8* %79, i8** %14, align 8, !dbg !1670
  store i8 %77, i8* %78, align 1, !dbg !1671
  %80 = load i8*, i8** %14, align 8, !dbg !1672
  store i8 0, i8* %80, align 1, !dbg !1673
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1674, metadata !DIExpression()), !dbg !1676
  %81 = load float, float* %13, align 4, !dbg !1677
  %82 = fcmp olt float %81, 0x3810000000000000, !dbg !1678
  %83 = zext i1 %82 to i64, !dbg !1677
  %84 = select i1 %82, i32 1, i32 6, !dbg !1677
  store i32 %84, i32* %15, align 4, !dbg !1676
  br label %85, !dbg !1679

85:                                               ; preds = %111, %26
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1680, metadata !DIExpression()), !dbg !1683
  %86 = load i8*, i8** %6, align 8, !dbg !1684
  %87 = load i64, i64* %7, align 8, !dbg !1685
  %88 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !1686
  %89 = load i32, i32* %9, align 4, !dbg !1687
  %90 = load i32, i32* %15, align 4, !dbg !1688
  %91 = load double, double* %11, align 8, !dbg !1689
  %92 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %86, i64 noundef %87, i8* noundef %88, i32 noundef %89, i32 noundef %90, double noundef %91) #18, !dbg !1690
  store i32 %92, i32* %16, align 4, !dbg !1683
  %93 = load i32, i32* %16, align 4, !dbg !1691
  %94 = icmp slt i32 %93, 0, !dbg !1693
  br i1 %94, label %108, label %95, !dbg !1694

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4, !dbg !1695
  %97 = icmp sle i32 9, %96, !dbg !1696
  br i1 %97, label %108, label %98, !dbg !1697

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4, !dbg !1698
  %100 = sext i32 %99 to i64, !dbg !1698
  %101 = load i64, i64* %7, align 8, !dbg !1699
  %102 = icmp ult i64 %100, %101, !dbg !1700
  br i1 %102, label %103, label %110, !dbg !1701

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8, !dbg !1702
  %105 = call float @strtof(i8* noundef %104, i8** noundef null) #18, !dbg !1703
  %106 = load float, float* %10, align 4, !dbg !1704
  %107 = fcmp oeq float %105, %106, !dbg !1705
  br i1 %107, label %108, label %110, !dbg !1706

108:                                              ; preds = %103, %95, %85
  %109 = load i32, i32* %16, align 4, !dbg !1707
  ret i32 %109, !dbg !1708

110:                                              ; preds = %103, %98
  br label %111, !dbg !1709

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4, !dbg !1710
  %113 = add nsw i32 %112, 1, !dbg !1710
  store i32 %113, i32* %15, align 4, !dbg !1710
  br label %85, !dbg !1711, !llvm.loop !1712
}

; Function Attrs: nounwind
declare float @strtof(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1715 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1718
  ret i8* %1, !dbg !1719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldtoastr(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, fp128 noundef %4) #4 !dbg !1720 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1729, metadata !DIExpression()), !dbg !1730
  store fp128 %4, fp128* %10, align 16
  call void @llvm.dbg.declare(metadata fp128* %10, metadata !1731, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.declare(metadata fp128* %11, metadata !1733, metadata !DIExpression()), !dbg !1734
  %17 = load fp128, fp128* %10, align 16, !dbg !1735
  store fp128 %17, fp128* %11, align 16, !dbg !1734
  call void @llvm.dbg.declare(metadata [11 x i8]* %12, metadata !1736, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.declare(metadata fp128* %13, metadata !1738, metadata !DIExpression()), !dbg !1739
  %18 = load fp128, fp128* %10, align 16, !dbg !1740
  %19 = fcmp olt fp128 %18, 0xL00000000000000000000000000000000, !dbg !1741
  br i1 %19, label %20, label %23, !dbg !1740

20:                                               ; preds = %5
  %21 = load fp128, fp128* %10, align 16, !dbg !1742
  %22 = fneg fp128 %21, !dbg !1743
  br label %25, !dbg !1740

23:                                               ; preds = %5
  %24 = load fp128, fp128* %10, align 16, !dbg !1744
  br label %25, !dbg !1740

25:                                               ; preds = %23, %20
  %26 = phi fp128 [ %22, %20 ], [ %24, %23 ], !dbg !1740
  store fp128 %26, fp128* %13, align 16, !dbg !1739
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1745, metadata !DIExpression()), !dbg !1746
  %27 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !1747
  store i8* %27, i8** %14, align 8, !dbg !1746
  %28 = load i8*, i8** %14, align 8, !dbg !1748
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1748
  store i8* %29, i8** %14, align 8, !dbg !1748
  store i8 37, i8* %28, align 1, !dbg !1749
  %30 = load i8*, i8** %14, align 8, !dbg !1750
  store i8 45, i8* %30, align 1, !dbg !1751
  %31 = load i32, i32* %8, align 4, !dbg !1752
  %32 = and i32 %31, 1, !dbg !1753
  %33 = icmp ne i32 %32, 0, !dbg !1754
  %34 = zext i1 %33 to i32, !dbg !1754
  %35 = load i8*, i8** %14, align 8, !dbg !1755
  %36 = sext i32 %34 to i64, !dbg !1755
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1755
  store i8* %37, i8** %14, align 8, !dbg !1755
  %38 = load i8*, i8** %14, align 8, !dbg !1756
  store i8 43, i8* %38, align 1, !dbg !1757
  %39 = load i32, i32* %8, align 4, !dbg !1758
  %40 = and i32 %39, 2, !dbg !1759
  %41 = icmp ne i32 %40, 0, !dbg !1760
  %42 = zext i1 %41 to i32, !dbg !1760
  %43 = load i8*, i8** %14, align 8, !dbg !1761
  %44 = sext i32 %42 to i64, !dbg !1761
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !1761
  store i8* %45, i8** %14, align 8, !dbg !1761
  %46 = load i8*, i8** %14, align 8, !dbg !1762
  store i8 32, i8* %46, align 1, !dbg !1763
  %47 = load i32, i32* %8, align 4, !dbg !1764
  %48 = and i32 %47, 4, !dbg !1765
  %49 = icmp ne i32 %48, 0, !dbg !1766
  %50 = zext i1 %49 to i32, !dbg !1766
  %51 = load i8*, i8** %14, align 8, !dbg !1767
  %52 = sext i32 %50 to i64, !dbg !1767
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !1767
  store i8* %53, i8** %14, align 8, !dbg !1767
  %54 = load i8*, i8** %14, align 8, !dbg !1768
  store i8 48, i8* %54, align 1, !dbg !1769
  %55 = load i32, i32* %8, align 4, !dbg !1770
  %56 = and i32 %55, 8, !dbg !1771
  %57 = icmp ne i32 %56, 0, !dbg !1772
  %58 = zext i1 %57 to i32, !dbg !1772
  %59 = load i8*, i8** %14, align 8, !dbg !1773
  %60 = sext i32 %58 to i64, !dbg !1773
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1773
  store i8* %61, i8** %14, align 8, !dbg !1773
  %62 = load i8*, i8** %14, align 8, !dbg !1774
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1774
  store i8* %63, i8** %14, align 8, !dbg !1774
  store i8 42, i8* %62, align 1, !dbg !1775
  %64 = load i8*, i8** %14, align 8, !dbg !1776
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !1776
  store i8* %65, i8** %14, align 8, !dbg !1776
  store i8 46, i8* %64, align 1, !dbg !1777
  %66 = load i8*, i8** %14, align 8, !dbg !1778
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !1778
  store i8* %67, i8** %14, align 8, !dbg !1778
  store i8 42, i8* %66, align 1, !dbg !1779
  %68 = load i8*, i8** %14, align 8, !dbg !1780
  store i8 76, i8* %68, align 1, !dbg !1781
  %69 = load i8*, i8** %14, align 8, !dbg !1782
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1782
  store i8* %70, i8** %14, align 8, !dbg !1782
  %71 = load i32, i32* %8, align 4, !dbg !1783
  %72 = and i32 %71, 16, !dbg !1784
  %73 = icmp ne i32 %72, 0, !dbg !1783
  %74 = zext i1 %73 to i64, !dbg !1783
  %75 = select i1 %73, i32 71, i32 103, !dbg !1783
  %76 = trunc i32 %75 to i8, !dbg !1783
  %77 = load i8*, i8** %14, align 8, !dbg !1785
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !1785
  store i8* %78, i8** %14, align 8, !dbg !1785
  store i8 %76, i8* %77, align 1, !dbg !1786
  %79 = load i8*, i8** %14, align 8, !dbg !1787
  store i8 0, i8* %79, align 1, !dbg !1788
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1789, metadata !DIExpression()), !dbg !1791
  %80 = load fp128, fp128* %13, align 16, !dbg !1792
  %81 = fcmp olt fp128 %80, 0xL00000000000000000001000000000000, !dbg !1793
  %82 = zext i1 %81 to i64, !dbg !1792
  %83 = select i1 %81, i32 1, i32 33, !dbg !1792
  store i32 %83, i32* %15, align 4, !dbg !1791
  br label %84, !dbg !1794

84:                                               ; preds = %110, %25
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1795, metadata !DIExpression()), !dbg !1798
  %85 = load i8*, i8** %6, align 8, !dbg !1799
  %86 = load i64, i64* %7, align 8, !dbg !1800
  %87 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0, !dbg !1801
  %88 = load i32, i32* %9, align 4, !dbg !1802
  %89 = load i32, i32* %15, align 4, !dbg !1803
  %90 = load fp128, fp128* %11, align 16, !dbg !1804
  %91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %85, i64 noundef %86, i8* noundef %87, i32 noundef %88, i32 noundef %89, fp128 noundef %90) #18, !dbg !1805
  store i32 %91, i32* %16, align 4, !dbg !1798
  %92 = load i32, i32* %16, align 4, !dbg !1806
  %93 = icmp slt i32 %92, 0, !dbg !1808
  br i1 %93, label %107, label %94, !dbg !1809

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4, !dbg !1810
  %96 = icmp sle i32 36, %95, !dbg !1811
  br i1 %96, label %107, label %97, !dbg !1812

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4, !dbg !1813
  %99 = sext i32 %98 to i64, !dbg !1813
  %100 = load i64, i64* %7, align 8, !dbg !1814
  %101 = icmp ult i64 %99, %100, !dbg !1815
  br i1 %101, label %102, label %109, !dbg !1816

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8, !dbg !1817
  %104 = call fp128 @strtold(i8* noundef %103, i8** noundef null) #18, !dbg !1818
  %105 = load fp128, fp128* %10, align 16, !dbg !1819
  %106 = fcmp oeq fp128 %104, %105, !dbg !1820
  br i1 %106, label %107, label %109, !dbg !1821

107:                                              ; preds = %102, %94, %84
  %108 = load i32, i32* %16, align 4, !dbg !1822
  ret i32 %108, !dbg !1823

109:                                              ; preds = %102, %97
  br label %110, !dbg !1824

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4, !dbg !1825
  %112 = add nsw i32 %111, 1, !dbg !1825
  store i32 %112, i32* %15, align 4, !dbg !1825
  br label %84, !dbg !1826, !llvm.loop !1827
}

; Function Attrs: nounwind
declare fp128 @strtold(i8* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* noundef %5, ...) #4 !dbg !1830 {
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
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1836, metadata !DIExpression()), !dbg !1837
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1838, metadata !DIExpression()), !dbg !1839
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1842, metadata !DIExpression()), !dbg !1843
  store void (i32)* %5, void (i32)** %12, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %12, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1846, metadata !DIExpression()), !dbg !1847
  %17 = load i32, i32* @opterr, align 4, !dbg !1848
  store i32 %17, i32* %13, align 4, !dbg !1847
  store i32 0, i32* @opterr, align 4, !dbg !1849
  %18 = load i32, i32* %7, align 4, !dbg !1850
  %19 = icmp eq i32 %18, 2, !dbg !1852
  br i1 %19, label %20, label %41, !dbg !1853

20:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1854, metadata !DIExpression()), !dbg !1856
  %21 = load i32, i32* %7, align 4, !dbg !1857
  %22 = load i8**, i8*** %8, align 8, !dbg !1858
  %23 = call i32 @getopt_long(i32 noundef %21, i8** noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !1859
  store i32 %23, i32* %14, align 4, !dbg !1856
  %24 = load i32, i32* %14, align 4, !dbg !1860
  %25 = icmp ne i32 %24, -1, !dbg !1862
  br i1 %25, label %26, label %40, !dbg !1863

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4, !dbg !1864
  switch i32 %27, label %38 [
    i32 104, label %28
    i32 118, label %30
  ], !dbg !1866

28:                                               ; preds = %26
  %29 = load void (i32)*, void (i32)** %12, align 8, !dbg !1867
  call void %29(i32 noundef 0), !dbg !1869
  br label %39, !dbg !1870

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %15, metadata !1871, metadata !DIExpression()), !dbg !1884
  %31 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1885
  call void @llvm.va_start(i8* %31), !dbg !1885
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1886
  %33 = load i8*, i8** %9, align 8, !dbg !1887
  %34 = load i8*, i8** %10, align 8, !dbg !1888
  %35 = load i8*, i8** %11, align 8, !dbg !1889
  %36 = bitcast %"struct.std::__va_list"* %16 to i8*, !dbg !1890
  %37 = bitcast %"struct.std::__va_list"* %15 to i8*, !dbg !1890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false), !dbg !1890
  call void @version_etc_va(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef %34, i8* noundef %35, %"struct.std::__va_list"* noundef %16), !dbg !1890
  call void @exit(i32 noundef 0) #19, !dbg !1891
  unreachable, !dbg !1891

38:                                               ; preds = %26
  br label %39, !dbg !1892

39:                                               ; preds = %38, %28
  br label %40, !dbg !1893

40:                                               ; preds = %39, %20
  br label %41, !dbg !1894

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %13, align 4, !dbg !1895
  store i32 %42, i32* @opterr, align 4, !dbg !1896
  store i32 0, i32* @optind, align 4, !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* noundef %6, ...) #4 !dbg !1899 {
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
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1904, metadata !DIExpression()), !dbg !1905
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1906, metadata !DIExpression()), !dbg !1907
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1908, metadata !DIExpression()), !dbg !1909
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1910, metadata !DIExpression()), !dbg !1911
  %20 = zext i1 %5 to i8
  store i8 %20, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1912, metadata !DIExpression()), !dbg !1913
  store void (i32)* %6, void (i32)** %14, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %14, metadata !1914, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1916, metadata !DIExpression()), !dbg !1917
  %21 = load i32, i32* @opterr, align 4, !dbg !1918
  store i32 %21, i32* %15, align 4, !dbg !1917
  store i32 1, i32* @opterr, align 4, !dbg !1919
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1920, metadata !DIExpression()), !dbg !1921
  %22 = load i8, i8* %13, align 1, !dbg !1922
  %23 = trunc i8 %22 to i1, !dbg !1922
  %24 = zext i1 %23 to i64, !dbg !1922
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.129, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i64 0, i64 0), !dbg !1922
  store i8* %25, i8** %16, align 8, !dbg !1921
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1923, metadata !DIExpression()), !dbg !1924
  %26 = load i32, i32* %8, align 4, !dbg !1925
  %27 = load i8**, i8*** %9, align 8, !dbg !1926
  %28 = load i8*, i8** %16, align 8, !dbg !1927
  %29 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef %28, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !1928
  store i32 %29, i32* %17, align 4, !dbg !1924
  %30 = load i32, i32* %17, align 4, !dbg !1929
  %31 = icmp ne i32 %30, -1, !dbg !1931
  br i1 %31, label %32, label %48, !dbg !1932

32:                                               ; preds = %7
  %33 = load i32, i32* %17, align 4, !dbg !1933
  switch i32 %33, label %44 [
    i32 104, label %34
    i32 118, label %36
  ], !dbg !1935

34:                                               ; preds = %32
  %35 = load void (i32)*, void (i32)** %14, align 8, !dbg !1936
  call void %35(i32 noundef 0), !dbg !1938
  br label %47, !dbg !1939

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %18, metadata !1940, metadata !DIExpression()), !dbg !1942
  %37 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1943
  call void @llvm.va_start(i8* %37), !dbg !1943
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1944
  %39 = load i8*, i8** %10, align 8, !dbg !1945
  %40 = load i8*, i8** %11, align 8, !dbg !1946
  %41 = load i8*, i8** %12, align 8, !dbg !1947
  %42 = bitcast %"struct.std::__va_list"* %19 to i8*, !dbg !1948
  %43 = bitcast %"struct.std::__va_list"* %18 to i8*, !dbg !1948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false), !dbg !1948
  call void @version_etc_va(%struct._IO_FILE* noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, %"struct.std::__va_list"* noundef %19), !dbg !1948
  call void @exit(i32 noundef 0) #19, !dbg !1949
  unreachable, !dbg !1949

44:                                               ; preds = %32
  %45 = load void (i32)*, void (i32)** %14, align 8, !dbg !1950
  %46 = load volatile i32, i32* @exit_failure, align 4, !dbg !1951
  call void %45(i32 noundef %46), !dbg !1952
  br label %47, !dbg !1953

47:                                               ; preds = %44, %34
  br label %48, !dbg !1954

48:                                               ; preds = %47, %7
  %49 = load i32, i32* %15, align 4, !dbg !1955
  store i32 %49, i32* @opterr, align 4, !dbg !1956
  ret void, !dbg !1957
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1958 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1959, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1961, metadata !DIExpression()), !dbg !1962
  %5 = load i8*, i8** %2, align 8, !dbg !1963
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1964
  store i8* %6, i8** %3, align 8, !dbg !1962
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1965, metadata !DIExpression()), !dbg !1966
  %7 = load i8*, i8** %3, align 8, !dbg !1967
  %8 = icmp ne i8* %7, null, !dbg !1967
  br i1 %8, label %9, label %12, !dbg !1967

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1968
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1969
  br label %14, !dbg !1967

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1970
  br label %14, !dbg !1967

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1967
  store i8* %15, i8** %4, align 8, !dbg !1966
  %16 = load i8*, i8** %4, align 8, !dbg !1971
  %17 = load i8*, i8** %2, align 8, !dbg !1973
  %18 = ptrtoint i8* %16 to i64, !dbg !1974
  %19 = ptrtoint i8* %17 to i64, !dbg !1974
  %20 = sub i64 %18, %19, !dbg !1974
  %21 = icmp sle i64 7, %20, !dbg !1975
  br i1 %21, label %22, label %36, !dbg !1976

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1977
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1978
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i64 0, i64 0), i64 noundef 7), !dbg !1979
  br i1 %25, label %26, label %36, !dbg !1980

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1981
  store i8* %27, i8** %2, align 8, !dbg !1983
  %28 = load i8*, i8** %4, align 8, !dbg !1984
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.135, i64 0, i64 0), i64 noundef 3) #20, !dbg !1986
  %30 = icmp eq i32 %29, 0, !dbg !1987
  br i1 %30, label %31, label %35, !dbg !1988

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1989
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1989
  store i8* %33, i8** %4, align 8, !dbg !1989
  %34 = load i8*, i8** %4, align 8, !dbg !1991
  store i8* %34, i8** %2, align 8, !dbg !1992
  br label %35, !dbg !1993

35:                                               ; preds = %31, %26
  br label %36, !dbg !1994

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1995
  store i8* %37, i8** @program_name, align 8, !dbg !1996
  %38 = load i8*, i8** %2, align 8, !dbg !1997
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1998
  %39 = load i8*, i8** %4, align 8, !dbg !1999
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !2000
  ret void, !dbg !2001
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !75 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2004, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2006, metadata !DIExpression()), !dbg !2007
  %9 = load i8*, i8** %4, align 8, !dbg !2008
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !2009
  store i8* %10, i8** %6, align 8, !dbg !2007
  %11 = load i8*, i8** %6, align 8, !dbg !2010
  %12 = load i8*, i8** %4, align 8, !dbg !2012
  %13 = icmp ne i8* %11, %12, !dbg !2013
  br i1 %13, label %14, label %16, !dbg !2014

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2015
  store i8* %15, i8** %3, align 8, !dbg !2016
  br label %26, !dbg !2016

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2017, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2023, metadata !DIExpression()), !dbg !2034
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2035
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !2036
  %18 = icmp eq i64 %17, 2, !dbg !2038
  br i1 %18, label %19, label %24, !dbg !2039

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2040
  %21 = icmp eq i32 %20, 2047, !dbg !2041
  br i1 %21, label %22, label %24, !dbg !2042

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !2043
  store i8* %23, i8** %3, align 8, !dbg !2044
  br label %26, !dbg !2044

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !2045
  store i8* %25, i8** %3, align 8, !dbg !2046
  br label %26, !dbg !2046

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !2047
  ret i8* %27, !dbg !2047
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !2048 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2052, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2054, metadata !DIExpression()), !dbg !2055
  %5 = call i32* @__errno_location() #21, !dbg !2056
  %6 = load i32, i32* %5, align 4, !dbg !2056
  store i32 %6, i32* %3, align 4, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2057, metadata !DIExpression()), !dbg !2058
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2059
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2059
  br i1 %8, label %9, label %11, !dbg !2059

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2060
  br label %12, !dbg !2059

11:                                               ; preds = %1
  br label %12, !dbg !2059

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2059
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2059
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !2061
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2061
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2058
  %17 = load i32, i32* %3, align 4, !dbg !2062
  %18 = call i32* @__errno_location() #21, !dbg !2063
  store i32 %17, i32* %18, align 4, !dbg !2064
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2065
  ret %struct.quoting_options* %19, !dbg !2066
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !2067 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2072, metadata !DIExpression()), !dbg !2073
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2074
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2074
  br i1 %4, label %5, label %7, !dbg !2074

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2075
  br label %8, !dbg !2074

7:                                                ; preds = %1
  br label %8, !dbg !2074

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2074
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2076
  %11 = load i32, i32* %10, align 8, !dbg !2076
  ret i32 %11, !dbg !2077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2078 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2081, metadata !DIExpression()), !dbg !2082
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2083, metadata !DIExpression()), !dbg !2084
  %5 = load i32, i32* %4, align 4, !dbg !2085
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2086
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2086
  br i1 %7, label %8, label %10, !dbg !2086

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2087
  br label %11, !dbg !2086

10:                                               ; preds = %2
  br label %11, !dbg !2086

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2086
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2088
  store i32 %5, i32* %13, align 8, !dbg !2089
  ret void, !dbg !2090
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !2091 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2094, metadata !DIExpression()), !dbg !2095
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2096, metadata !DIExpression()), !dbg !2097
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2098, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2100, metadata !DIExpression()), !dbg !2101
  %11 = load i8, i8* %5, align 1, !dbg !2102
  store i8 %11, i8* %7, align 1, !dbg !2101
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2103, metadata !DIExpression()), !dbg !2105
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2106
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2106
  br i1 %13, label %14, label %16, !dbg !2106

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2107
  br label %17, !dbg !2106

16:                                               ; preds = %3
  br label %17, !dbg !2106

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2106
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2108
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !2109
  %21 = load i8, i8* %7, align 1, !dbg !2110
  %22 = zext i8 %21 to i64, !dbg !2110
  %23 = udiv i64 %22, 32, !dbg !2111
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2112
  store i32* %24, i32** %8, align 8, !dbg !2105
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2113, metadata !DIExpression()), !dbg !2114
  %25 = load i8, i8* %7, align 1, !dbg !2115
  %26 = zext i8 %25 to i64, !dbg !2115
  %27 = urem i64 %26, 32, !dbg !2116
  %28 = trunc i64 %27 to i32, !dbg !2115
  store i32 %28, i32* %9, align 4, !dbg !2114
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2117, metadata !DIExpression()), !dbg !2118
  %29 = load i32*, i32** %8, align 8, !dbg !2119
  %30 = load i32, i32* %29, align 4, !dbg !2120
  %31 = load i32, i32* %9, align 4, !dbg !2121
  %32 = lshr i32 %30, %31, !dbg !2122
  %33 = and i32 %32, 1, !dbg !2123
  store i32 %33, i32* %10, align 4, !dbg !2118
  %34 = load i32, i32* %6, align 4, !dbg !2124
  %35 = and i32 %34, 1, !dbg !2125
  %36 = load i32, i32* %10, align 4, !dbg !2126
  %37 = xor i32 %35, %36, !dbg !2127
  %38 = load i32, i32* %9, align 4, !dbg !2128
  %39 = shl i32 %37, %38, !dbg !2129
  %40 = load i32*, i32** %8, align 8, !dbg !2130
  %41 = load i32, i32* %40, align 4, !dbg !2131
  %42 = xor i32 %41, %39, !dbg !2131
  store i32 %42, i32* %40, align 4, !dbg !2131
  %43 = load i32, i32* %10, align 4, !dbg !2132
  ret i32 %43, !dbg !2133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2134 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2137, metadata !DIExpression()), !dbg !2138
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2139, metadata !DIExpression()), !dbg !2140
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2141
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2141
  br i1 %7, label %9, label %8, !dbg !2143

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2144
  br label %9, !dbg !2145

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2146, metadata !DIExpression()), !dbg !2147
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2148
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2149
  %12 = load i32, i32* %11, align 4, !dbg !2149
  store i32 %12, i32* %5, align 4, !dbg !2147
  %13 = load i32, i32* %4, align 4, !dbg !2150
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2151
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2152
  store i32 %13, i32* %15, align 4, !dbg !2153
  %16 = load i32, i32* %5, align 4, !dbg !2154
  ret i32 %16, !dbg !2155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2156 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2161, metadata !DIExpression()), !dbg !2162
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2163, metadata !DIExpression()), !dbg !2164
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2165
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2165
  br i1 %8, label %10, label %9, !dbg !2167

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2168
  br label %10, !dbg !2169

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2170
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2171
  store i32 10, i32* %12, align 8, !dbg !2172
  %13 = load i8*, i8** %5, align 8, !dbg !2173
  %14 = icmp ne i8* %13, null, !dbg !2173
  br i1 %14, label %15, label %18, !dbg !2175

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2176
  %17 = icmp ne i8* %16, null, !dbg !2176
  br i1 %17, label %19, label %18, !dbg !2177

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !2178
  unreachable, !dbg !2178

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2179
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2180
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2181
  store i8* %20, i8** %22, align 8, !dbg !2182
  %23 = load i8*, i8** %6, align 8, !dbg !2183
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2184
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2185
  store i8* %23, i8** %25, align 8, !dbg !2186
  ret void, !dbg !2187
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !2188 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2191, metadata !DIExpression()), !dbg !2192
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2193, metadata !DIExpression()), !dbg !2194
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2195, metadata !DIExpression()), !dbg !2196
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2197, metadata !DIExpression()), !dbg !2198
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2201, metadata !DIExpression()), !dbg !2202
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2203
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2203
  br i1 %15, label %16, label %18, !dbg !2203

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2204
  br label %19, !dbg !2203

18:                                               ; preds = %5
  br label %19, !dbg !2203

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2203
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2202
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2205, metadata !DIExpression()), !dbg !2206
  %21 = call i32* @__errno_location() #21, !dbg !2207
  %22 = load i32, i32* %21, align 4, !dbg !2207
  store i32 %22, i32* %12, align 4, !dbg !2206
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2208, metadata !DIExpression()), !dbg !2209
  %23 = load i8*, i8** %6, align 8, !dbg !2210
  %24 = load i64, i64* %7, align 8, !dbg !2211
  %25 = load i8*, i8** %8, align 8, !dbg !2212
  %26 = load i64, i64* %9, align 8, !dbg !2213
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2214
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2215
  %29 = load i32, i32* %28, align 8, !dbg !2215
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2216
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2217
  %32 = load i32, i32* %31, align 4, !dbg !2217
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2218
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2219
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2218
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2220
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2221
  %38 = load i8*, i8** %37, align 8, !dbg !2221
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2222
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2223
  %41 = load i8*, i8** %40, align 8, !dbg !2223
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !2224
  store i64 %42, i64* %13, align 8, !dbg !2209
  %43 = load i32, i32* %12, align 4, !dbg !2225
  %44 = call i32* @__errno_location() #21, !dbg !2226
  store i32 %43, i32* %44, align 4, !dbg !2227
  %45 = load i64, i64* %13, align 8, !dbg !2228
  ret i64 %45, !dbg !2229
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2230 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2235, metadata !DIExpression()), !dbg !2236
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2237, metadata !DIExpression()), !dbg !2238
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2239, metadata !DIExpression()), !dbg !2240
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2241, metadata !DIExpression()), !dbg !2242
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2243, metadata !DIExpression()), !dbg !2244
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2247, metadata !DIExpression()), !dbg !2248
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2253, metadata !DIExpression()), !dbg !2254
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !2255
  %45 = icmp eq i64 %44, 1, !dbg !2256
  %46 = zext i1 %45 to i8, !dbg !2254
  store i8 %46, i8* %20, align 1, !dbg !2254
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2257, metadata !DIExpression()), !dbg !2258
  store i64 0, i64* %21, align 8, !dbg !2258
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i64 0, i64* %22, align 8, !dbg !2260
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2261, metadata !DIExpression()), !dbg !2262
  store i8* null, i8** %23, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2263, metadata !DIExpression()), !dbg !2264
  store i64 0, i64* %24, align 8, !dbg !2264
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2265, metadata !DIExpression()), !dbg !2266
  store i8 0, i8* %25, align 1, !dbg !2266
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2267, metadata !DIExpression()), !dbg !2268
  %47 = load i32, i32* %16, align 4, !dbg !2269
  %48 = and i32 %47, 2, !dbg !2270
  %49 = icmp ne i32 %48, 0, !dbg !2271
  %50 = zext i1 %49 to i8, !dbg !2268
  store i8 %50, i8* %26, align 1, !dbg !2268
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2272, metadata !DIExpression()), !dbg !2273
  store i8 0, i8* %27, align 1, !dbg !2273
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2274, metadata !DIExpression()), !dbg !2275
  store i8 1, i8* %28, align 1, !dbg !2275
  br label %51, !dbg !2276

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2277), !dbg !2278
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2279, metadata !DIExpression()), !dbg !2280
  store i8 0, i8* %29, align 1, !dbg !2280
  %52 = load i32, i32* %15, align 4, !dbg !2281
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
  ], !dbg !2282

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2283
  store i8 1, i8* %26, align 1, !dbg !2285
  br label %54, !dbg !2286

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2287
  %56 = trunc i8 %55 to i1, !dbg !2287
  br i1 %56, label %70, label %57, !dbg !2289

57:                                               ; preds = %54
  br label %58, !dbg !2290

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2291
  %60 = load i64, i64* %12, align 8, !dbg !2291
  %61 = icmp ult i64 %59, %60, !dbg !2291
  br i1 %61, label %62, label %66, !dbg !2294

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2291
  %64 = load i64, i64* %21, align 8, !dbg !2291
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2291
  store i8 34, i8* %65, align 1, !dbg !2291
  br label %66, !dbg !2291

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2294
  %68 = add i64 %67, 1, !dbg !2294
  store i64 %68, i64* %21, align 8, !dbg !2294
  br label %69, !dbg !2294

69:                                               ; preds = %66
  br label %70, !dbg !2294

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2295
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), i8** %23, align 8, !dbg !2296
  store i64 1, i64* %24, align 8, !dbg !2297
  br label %138, !dbg !2298

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2299
  store i8 0, i8* %26, align 1, !dbg !2300
  br label %138, !dbg !2301

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2302
  %74 = icmp ne i32 %73, 10, !dbg !2305
  br i1 %74, label %75, label %80, !dbg !2306

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2307
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.149, i64 0, i64 0), i32 noundef %76), !dbg !2309
  store i8* %77, i8** %18, align 8, !dbg !2310
  %78 = load i32, i32* %15, align 4, !dbg !2311
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0), i32 noundef %78), !dbg !2312
  store i8* %79, i8** %19, align 8, !dbg !2313
  br label %80, !dbg !2314

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2315
  %82 = trunc i8 %81 to i1, !dbg !2315
  br i1 %82, label %108, label %83, !dbg !2317

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2318, metadata !DIExpression()), !dbg !2320
  %84 = load i8*, i8** %18, align 8, !dbg !2321
  store i8* %84, i8** %30, align 8, !dbg !2320
  br label %85, !dbg !2322

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2323
  %87 = load i8, i8* %86, align 1, !dbg !2325
  %88 = icmp ne i8 %87, 0, !dbg !2326
  br i1 %88, label %89, label %107, !dbg !2326

89:                                               ; preds = %85
  br label %90, !dbg !2327

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2328
  %92 = load i64, i64* %12, align 8, !dbg !2328
  %93 = icmp ult i64 %91, %92, !dbg !2328
  br i1 %93, label %94, label %100, !dbg !2331

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2328
  %96 = load i8, i8* %95, align 1, !dbg !2328
  %97 = load i8*, i8** %11, align 8, !dbg !2328
  %98 = load i64, i64* %21, align 8, !dbg !2328
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2328
  store i8 %96, i8* %99, align 1, !dbg !2328
  br label %100, !dbg !2328

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2331
  %102 = add i64 %101, 1, !dbg !2331
  store i64 %102, i64* %21, align 8, !dbg !2331
  br label %103, !dbg !2331

103:                                              ; preds = %100
  br label %104, !dbg !2331

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2332
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2332
  store i8* %106, i8** %30, align 8, !dbg !2332
  br label %85, !dbg !2333, !llvm.loop !2334

107:                                              ; preds = %85
  br label %108, !dbg !2335

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2336
  %109 = load i8*, i8** %19, align 8, !dbg !2337
  store i8* %109, i8** %23, align 8, !dbg !2338
  %110 = load i8*, i8** %23, align 8, !dbg !2339
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !2340
  store i64 %111, i64* %24, align 8, !dbg !2341
  br label %138, !dbg !2342

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2343
  br label %113, !dbg !2344

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2345
  br label %114, !dbg !2346

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2347
  %116 = trunc i8 %115 to i1, !dbg !2347
  br i1 %116, label %118, label %117, !dbg !2349

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2350
  br label %118, !dbg !2351

118:                                              ; preds = %117, %114
  br label %119, !dbg !2347

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2352
  %120 = load i8, i8* %26, align 1, !dbg !2353
  %121 = trunc i8 %120 to i1, !dbg !2353
  br i1 %121, label %135, label %122, !dbg !2355

122:                                              ; preds = %119
  br label %123, !dbg !2356

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2357
  %125 = load i64, i64* %12, align 8, !dbg !2357
  %126 = icmp ult i64 %124, %125, !dbg !2357
  br i1 %126, label %127, label %131, !dbg !2360

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2357
  %129 = load i64, i64* %21, align 8, !dbg !2357
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2357
  store i8 39, i8* %130, align 1, !dbg !2357
  br label %131, !dbg !2357

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2360
  %133 = add i64 %132, 1, !dbg !2360
  store i64 %133, i64* %21, align 8, !dbg !2360
  br label %134, !dbg !2360

134:                                              ; preds = %131
  br label %135, !dbg !2360

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0), i8** %23, align 8, !dbg !2361
  store i64 1, i64* %24, align 8, !dbg !2362
  br label %138, !dbg !2363

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2364
  br label %138, !dbg !2365

137:                                              ; preds = %51
  call void @abort() #19, !dbg !2366
  unreachable, !dbg !2366

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2367, metadata !DIExpression()), !dbg !2369
  store i64 0, i64* %31, align 8, !dbg !2369
  br label %139, !dbg !2370

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2371
  %141 = icmp eq i64 %140, -1, !dbg !2373
  br i1 %141, label %142, label %150, !dbg !2371

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2374
  %144 = load i64, i64* %31, align 8, !dbg !2375
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2374
  %146 = load i8, i8* %145, align 1, !dbg !2374
  %147 = zext i8 %146 to i32, !dbg !2374
  %148 = icmp eq i32 %147, 0, !dbg !2376
  %149 = zext i1 %148 to i32, !dbg !2376
  br label %155, !dbg !2371

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2377
  %152 = load i64, i64* %14, align 8, !dbg !2378
  %153 = icmp eq i64 %151, %152, !dbg !2379
  %154 = zext i1 %153 to i32, !dbg !2379
  br label %155, !dbg !2371

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2371
  %157 = icmp ne i32 %156, 0, !dbg !2380
  %158 = xor i1 %157, true, !dbg !2380
  br i1 %158, label %159, label %996, !dbg !2381

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2382, metadata !DIExpression()), !dbg !2384
  store i8 0, i8* %32, align 1, !dbg !2384
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2385, metadata !DIExpression()), !dbg !2386
  store i8 0, i8* %33, align 1, !dbg !2386
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i8 0, i8* %34, align 1, !dbg !2388
  %160 = load i8, i8* %25, align 1, !dbg !2389
  %161 = trunc i8 %160 to i1, !dbg !2389
  br i1 %161, label %162, label %197, !dbg !2391

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2392
  %164 = icmp ne i32 %163, 2, !dbg !2393
  br i1 %164, label %165, label %197, !dbg !2394

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2395
  %167 = icmp ne i64 %166, 0, !dbg !2395
  br i1 %167, label %168, label %197, !dbg !2396

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2397
  %170 = load i64, i64* %24, align 8, !dbg !2398
  %171 = add i64 %169, %170, !dbg !2399
  %172 = load i64, i64* %14, align 8, !dbg !2400
  %173 = icmp eq i64 %172, -1, !dbg !2401
  br i1 %173, label %174, label %180, !dbg !2402

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2403
  %176 = icmp ult i64 1, %175, !dbg !2404
  br i1 %176, label %177, label %180, !dbg !2400

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2405
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !2406
  store i64 %179, i64* %14, align 8, !dbg !2407
  br label %182, !dbg !2400

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2408
  br label %182, !dbg !2400

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2400
  %184 = icmp ule i64 %171, %183, !dbg !2409
  br i1 %184, label %185, label %197, !dbg !2410

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2411
  %187 = load i64, i64* %31, align 8, !dbg !2412
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2413
  %189 = load i8*, i8** %23, align 8, !dbg !2414
  %190 = load i64, i64* %24, align 8, !dbg !2415
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2416
  br i1 %191, label %192, label %197, !dbg !2417

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2418
  %194 = trunc i8 %193 to i1, !dbg !2418
  br i1 %194, label %195, label %196, !dbg !2421

195:                                              ; preds = %192
  br label %1078, !dbg !2422

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2423
  br label %197, !dbg !2424

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2425, metadata !DIExpression()), !dbg !2426
  %198 = load i8*, i8** %13, align 8, !dbg !2427
  %199 = load i64, i64* %31, align 8, !dbg !2428
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2427
  %201 = load i8, i8* %200, align 1, !dbg !2427
  store i8 %201, i8* %35, align 1, !dbg !2426
  %202 = load i8, i8* %35, align 1, !dbg !2429
  %203 = zext i8 %202 to i32, !dbg !2429
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
  ], !dbg !2430

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2431
  %206 = trunc i8 %205 to i1, !dbg !2431
  br i1 %206, label %207, label %318, !dbg !2434

207:                                              ; preds = %204
  br label %208, !dbg !2435

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2437
  %210 = trunc i8 %209 to i1, !dbg !2437
  br i1 %210, label %211, label %212, !dbg !2440

211:                                              ; preds = %208
  br label %1078, !dbg !2437

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2440
  %213 = load i32, i32* %15, align 4, !dbg !2441
  %214 = icmp eq i32 %213, 2, !dbg !2441
  br i1 %214, label %215, label %255, !dbg !2441

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2441
  %217 = trunc i8 %216 to i1, !dbg !2441
  br i1 %217, label %255, label %218, !dbg !2440

218:                                              ; preds = %215
  br label %219, !dbg !2443

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2445
  %221 = load i64, i64* %12, align 8, !dbg !2445
  %222 = icmp ult i64 %220, %221, !dbg !2445
  br i1 %222, label %223, label %227, !dbg !2448

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2445
  %225 = load i64, i64* %21, align 8, !dbg !2445
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2445
  store i8 39, i8* %226, align 1, !dbg !2445
  br label %227, !dbg !2445

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2448
  %229 = add i64 %228, 1, !dbg !2448
  store i64 %229, i64* %21, align 8, !dbg !2448
  br label %230, !dbg !2448

230:                                              ; preds = %227
  br label %231, !dbg !2443

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2449
  %233 = load i64, i64* %12, align 8, !dbg !2449
  %234 = icmp ult i64 %232, %233, !dbg !2449
  br i1 %234, label %235, label %239, !dbg !2452

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2449
  %237 = load i64, i64* %21, align 8, !dbg !2449
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2449
  store i8 36, i8* %238, align 1, !dbg !2449
  br label %239, !dbg !2449

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2452
  %241 = add i64 %240, 1, !dbg !2452
  store i64 %241, i64* %21, align 8, !dbg !2452
  br label %242, !dbg !2452

242:                                              ; preds = %239
  br label %243, !dbg !2443

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2453
  %245 = load i64, i64* %12, align 8, !dbg !2453
  %246 = icmp ult i64 %244, %245, !dbg !2453
  br i1 %246, label %247, label %251, !dbg !2456

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2453
  %249 = load i64, i64* %21, align 8, !dbg !2453
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2453
  store i8 39, i8* %250, align 1, !dbg !2453
  br label %251, !dbg !2453

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2456
  %253 = add i64 %252, 1, !dbg !2456
  store i64 %253, i64* %21, align 8, !dbg !2456
  br label %254, !dbg !2456

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2443
  br label %255, !dbg !2443

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2440

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2457
  %258 = load i64, i64* %12, align 8, !dbg !2457
  %259 = icmp ult i64 %257, %258, !dbg !2457
  br i1 %259, label %260, label %264, !dbg !2460

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2457
  %262 = load i64, i64* %21, align 8, !dbg !2457
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2457
  store i8 92, i8* %263, align 1, !dbg !2457
  br label %264, !dbg !2457

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2460
  %266 = add i64 %265, 1, !dbg !2460
  store i64 %266, i64* %21, align 8, !dbg !2460
  br label %267, !dbg !2460

267:                                              ; preds = %264
  br label %268, !dbg !2440

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2461
  %270 = icmp ne i32 %269, 2, !dbg !2463
  br i1 %270, label %271, label %317, !dbg !2464

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2465
  %273 = add i64 %272, 1, !dbg !2466
  %274 = load i64, i64* %14, align 8, !dbg !2467
  %275 = icmp ult i64 %273, %274, !dbg !2468
  br i1 %275, label %276, label %317, !dbg !2469

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2470
  %278 = load i64, i64* %31, align 8, !dbg !2471
  %279 = add i64 %278, 1, !dbg !2472
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2470
  %281 = load i8, i8* %280, align 1, !dbg !2470
  %282 = zext i8 %281 to i32, !dbg !2470
  %283 = icmp sle i32 48, %282, !dbg !2473
  br i1 %283, label %284, label %317, !dbg !2474

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2475
  %286 = load i64, i64* %31, align 8, !dbg !2476
  %287 = add i64 %286, 1, !dbg !2477
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2475
  %289 = load i8, i8* %288, align 1, !dbg !2475
  %290 = zext i8 %289 to i32, !dbg !2475
  %291 = icmp sle i32 %290, 57, !dbg !2478
  br i1 %291, label %292, label %317, !dbg !2479

292:                                              ; preds = %284
  br label %293, !dbg !2480

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2482
  %295 = load i64, i64* %12, align 8, !dbg !2482
  %296 = icmp ult i64 %294, %295, !dbg !2482
  br i1 %296, label %297, label %301, !dbg !2485

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2482
  %299 = load i64, i64* %21, align 8, !dbg !2482
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2482
  store i8 48, i8* %300, align 1, !dbg !2482
  br label %301, !dbg !2482

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2485
  %303 = add i64 %302, 1, !dbg !2485
  store i64 %303, i64* %21, align 8, !dbg !2485
  br label %304, !dbg !2485

304:                                              ; preds = %301
  br label %305, !dbg !2486

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2487
  %307 = load i64, i64* %12, align 8, !dbg !2487
  %308 = icmp ult i64 %306, %307, !dbg !2487
  br i1 %308, label %309, label %313, !dbg !2490

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2487
  %311 = load i64, i64* %21, align 8, !dbg !2487
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2487
  store i8 48, i8* %312, align 1, !dbg !2487
  br label %313, !dbg !2487

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2490
  %315 = add i64 %314, 1, !dbg !2490
  store i64 %315, i64* %21, align 8, !dbg !2490
  br label %316, !dbg !2490

316:                                              ; preds = %313
  br label %317, !dbg !2491

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2492
  br label %324, !dbg !2493

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2494
  %320 = and i32 %319, 1, !dbg !2496
  %321 = icmp ne i32 %320, 0, !dbg !2496
  br i1 %321, label %322, label %323, !dbg !2497

322:                                              ; preds = %318
  br label %993, !dbg !2498

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2499

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2500
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2501

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2502
  %329 = trunc i8 %328 to i1, !dbg !2502
  br i1 %329, label %330, label %331, !dbg !2505

330:                                              ; preds = %327
  br label %1078, !dbg !2506

331:                                              ; preds = %327
  br label %418, !dbg !2507

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2508
  %334 = and i32 %333, 4, !dbg !2510
  %335 = icmp ne i32 %334, 0, !dbg !2510
  br i1 %335, label %336, label %417, !dbg !2511

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2512
  %338 = add i64 %337, 2, !dbg !2513
  %339 = load i64, i64* %14, align 8, !dbg !2514
  %340 = icmp ult i64 %338, %339, !dbg !2515
  br i1 %340, label %341, label %417, !dbg !2516

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2517
  %343 = load i64, i64* %31, align 8, !dbg !2518
  %344 = add i64 %343, 1, !dbg !2519
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2517
  %346 = load i8, i8* %345, align 1, !dbg !2517
  %347 = zext i8 %346 to i32, !dbg !2517
  %348 = icmp eq i32 %347, 63, !dbg !2520
  br i1 %348, label %349, label %417, !dbg !2521

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2522
  %351 = load i64, i64* %31, align 8, !dbg !2523
  %352 = add i64 %351, 2, !dbg !2524
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2522
  %354 = load i8, i8* %353, align 1, !dbg !2522
  %355 = zext i8 %354 to i32, !dbg !2522
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
  ], !dbg !2525

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2526
  %358 = trunc i8 %357 to i1, !dbg !2526
  br i1 %358, label %359, label %360, !dbg !2529

359:                                              ; preds = %356
  br label %1078, !dbg !2530

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2531
  %362 = load i64, i64* %31, align 8, !dbg !2532
  %363 = add i64 %362, 2, !dbg !2533
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2531
  %365 = load i8, i8* %364, align 1, !dbg !2531
  store i8 %365, i8* %35, align 1, !dbg !2534
  %366 = load i64, i64* %31, align 8, !dbg !2535
  %367 = add i64 %366, 2, !dbg !2535
  store i64 %367, i64* %31, align 8, !dbg !2535
  br label %368, !dbg !2536

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2537
  %370 = load i64, i64* %12, align 8, !dbg !2537
  %371 = icmp ult i64 %369, %370, !dbg !2537
  br i1 %371, label %372, label %376, !dbg !2540

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2537
  %374 = load i64, i64* %21, align 8, !dbg !2537
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2537
  store i8 63, i8* %375, align 1, !dbg !2537
  br label %376, !dbg !2537

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2540
  %378 = add i64 %377, 1, !dbg !2540
  store i64 %378, i64* %21, align 8, !dbg !2540
  br label %379, !dbg !2540

379:                                              ; preds = %376
  br label %380, !dbg !2541

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2542
  %382 = load i64, i64* %12, align 8, !dbg !2542
  %383 = icmp ult i64 %381, %382, !dbg !2542
  br i1 %383, label %384, label %388, !dbg !2545

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2542
  %386 = load i64, i64* %21, align 8, !dbg !2542
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2542
  store i8 34, i8* %387, align 1, !dbg !2542
  br label %388, !dbg !2542

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2545
  %390 = add i64 %389, 1, !dbg !2545
  store i64 %390, i64* %21, align 8, !dbg !2545
  br label %391, !dbg !2545

391:                                              ; preds = %388
  br label %392, !dbg !2546

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2547
  %394 = load i64, i64* %12, align 8, !dbg !2547
  %395 = icmp ult i64 %393, %394, !dbg !2547
  br i1 %395, label %396, label %400, !dbg !2550

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2547
  %398 = load i64, i64* %21, align 8, !dbg !2547
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2547
  store i8 34, i8* %399, align 1, !dbg !2547
  br label %400, !dbg !2547

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2550
  %402 = add i64 %401, 1, !dbg !2550
  store i64 %402, i64* %21, align 8, !dbg !2550
  br label %403, !dbg !2550

403:                                              ; preds = %400
  br label %404, !dbg !2551

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2552
  %406 = load i64, i64* %12, align 8, !dbg !2552
  %407 = icmp ult i64 %405, %406, !dbg !2552
  br i1 %407, label %408, label %412, !dbg !2555

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2552
  %410 = load i64, i64* %21, align 8, !dbg !2552
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2552
  store i8 63, i8* %411, align 1, !dbg !2552
  br label %412, !dbg !2552

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2555
  %414 = add i64 %413, 1, !dbg !2555
  store i64 %414, i64* %21, align 8, !dbg !2555
  br label %415, !dbg !2555

415:                                              ; preds = %412
  br label %416, !dbg !2556

416:                                              ; preds = %349, %415
  br label %417, !dbg !2557

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2558

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2559

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2560
  br label %454, !dbg !2562

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2563
  br label %454, !dbg !2564

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2565
  br label %454, !dbg !2566

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2567
  br label %446, !dbg !2568

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2569
  br label %446, !dbg !2570

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2571
  br label %446, !dbg !2572

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2573
  br label %454, !dbg !2574

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2575
  store i8 %427, i8* %36, align 1, !dbg !2576
  %428 = load i32, i32* %15, align 4, !dbg !2577
  %429 = icmp eq i32 %428, 2, !dbg !2579
  br i1 %429, label %430, label %435, !dbg !2580

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2581
  %432 = trunc i8 %431 to i1, !dbg !2581
  br i1 %432, label %433, label %434, !dbg !2584

433:                                              ; preds = %430
  br label %1078, !dbg !2585

434:                                              ; preds = %430
  br label %942, !dbg !2586

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2587
  %437 = trunc i8 %436 to i1, !dbg !2587
  br i1 %437, label %438, label %445, !dbg !2589

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2590
  %440 = trunc i8 %439 to i1, !dbg !2590
  br i1 %440, label %441, label %445, !dbg !2591

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2592
  %443 = icmp ne i64 %442, 0, !dbg !2592
  br i1 %443, label %444, label %445, !dbg !2593

444:                                              ; preds = %441
  br label %942, !dbg !2594

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2592

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2595), !dbg !2596
  %447 = load i32, i32* %15, align 4, !dbg !2597
  %448 = icmp eq i32 %447, 2, !dbg !2599
  br i1 %448, label %449, label %453, !dbg !2600

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2601
  %451 = trunc i8 %450 to i1, !dbg !2601
  br i1 %451, label %452, label %453, !dbg !2602

452:                                              ; preds = %449
  br label %1078, !dbg !2603

453:                                              ; preds = %449, %446
  br label %454, !dbg !2601

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2604), !dbg !2605
  %455 = load i8, i8* %25, align 1, !dbg !2606
  %456 = trunc i8 %455 to i1, !dbg !2606
  br i1 %456, label %457, label %459, !dbg !2608

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2609
  store i8 %458, i8* %35, align 1, !dbg !2611
  br label %880, !dbg !2612

459:                                              ; preds = %454
  br label %849, !dbg !2613

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2614
  %462 = icmp eq i64 %461, -1, !dbg !2616
  br i1 %462, label %463, label %469, !dbg !2617

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2618
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2618
  %466 = load i8, i8* %465, align 1, !dbg !2618
  %467 = zext i8 %466 to i32, !dbg !2618
  %468 = icmp eq i32 %467, 0, !dbg !2619
  br i1 %468, label %473, label %472, !dbg !2614

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2620
  %471 = icmp eq i64 %470, 1, !dbg !2621
  br i1 %471, label %473, label %472, !dbg !2617

472:                                              ; preds = %469, %463
  br label %849, !dbg !2622

473:                                              ; preds = %469, %463
  br label %474, !dbg !2623

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2624
  %476 = icmp ne i64 %475, 0, !dbg !2626
  br i1 %476, label %477, label %478, !dbg !2627

477:                                              ; preds = %474
  br label %849, !dbg !2628

478:                                              ; preds = %474
  br label %479, !dbg !2629

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2630
  br label %480, !dbg !2631

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2632
  %482 = icmp eq i32 %481, 2, !dbg !2634
  br i1 %482, label %483, label %487, !dbg !2635

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2636
  %485 = trunc i8 %484 to i1, !dbg !2636
  br i1 %485, label %486, label %487, !dbg !2637

486:                                              ; preds = %483
  br label %1078, !dbg !2638

487:                                              ; preds = %483, %480
  br label %849, !dbg !2639

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2640
  store i8 1, i8* %34, align 1, !dbg !2641
  %489 = load i32, i32* %15, align 4, !dbg !2642
  %490 = icmp eq i32 %489, 2, !dbg !2644
  br i1 %490, label %491, label %540, !dbg !2645

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2646
  %493 = trunc i8 %492 to i1, !dbg !2646
  br i1 %493, label %494, label %495, !dbg !2649

494:                                              ; preds = %491
  br label %1078, !dbg !2650

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2651
  %497 = icmp ne i64 %496, 0, !dbg !2651
  br i1 %497, label %498, label %503, !dbg !2653

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2654
  %500 = icmp ne i64 %499, 0, !dbg !2654
  br i1 %500, label %503, label %501, !dbg !2655

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2656
  store i64 %502, i64* %22, align 8, !dbg !2658
  store i64 0, i64* %12, align 8, !dbg !2659
  br label %503, !dbg !2660

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2661

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2662
  %506 = load i64, i64* %12, align 8, !dbg !2662
  %507 = icmp ult i64 %505, %506, !dbg !2662
  br i1 %507, label %508, label %512, !dbg !2665

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2662
  %510 = load i64, i64* %21, align 8, !dbg !2662
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2662
  store i8 39, i8* %511, align 1, !dbg !2662
  br label %512, !dbg !2662

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2665
  %514 = add i64 %513, 1, !dbg !2665
  store i64 %514, i64* %21, align 8, !dbg !2665
  br label %515, !dbg !2665

515:                                              ; preds = %512
  br label %516, !dbg !2666

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2667
  %518 = load i64, i64* %12, align 8, !dbg !2667
  %519 = icmp ult i64 %517, %518, !dbg !2667
  br i1 %519, label %520, label %524, !dbg !2670

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2667
  %522 = load i64, i64* %21, align 8, !dbg !2667
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2667
  store i8 92, i8* %523, align 1, !dbg !2667
  br label %524, !dbg !2667

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2670
  %526 = add i64 %525, 1, !dbg !2670
  store i64 %526, i64* %21, align 8, !dbg !2670
  br label %527, !dbg !2670

527:                                              ; preds = %524
  br label %528, !dbg !2671

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2672
  %530 = load i64, i64* %12, align 8, !dbg !2672
  %531 = icmp ult i64 %529, %530, !dbg !2672
  br i1 %531, label %532, label %536, !dbg !2675

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2672
  %534 = load i64, i64* %21, align 8, !dbg !2672
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2672
  store i8 39, i8* %535, align 1, !dbg !2672
  br label %536, !dbg !2672

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2675
  %538 = add i64 %537, 1, !dbg !2675
  store i64 %538, i64* %21, align 8, !dbg !2675
  br label %539, !dbg !2675

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2676
  br label %540, !dbg !2677

540:                                              ; preds = %539, %488
  br label %849, !dbg !2678

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2679
  br label %849, !dbg !2680

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2684, metadata !DIExpression()), !dbg !2685
  %543 = load i8, i8* %20, align 1, !dbg !2686
  %544 = trunc i8 %543 to i1, !dbg !2686
  br i1 %544, label %545, label %557, !dbg !2688

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2689
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2691
  %547 = load i16*, i16** %546, align 8, !dbg !2691
  %548 = load i8, i8* %35, align 1, !dbg !2691
  %549 = zext i8 %548 to i32, !dbg !2691
  %550 = sext i32 %549 to i64, !dbg !2691
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2691
  %552 = load i16, i16* %551, align 2, !dbg !2691
  %553 = zext i16 %552 to i32, !dbg !2691
  %554 = and i32 %553, 16384, !dbg !2691
  %555 = icmp ne i32 %554, 0, !dbg !2692
  %556 = zext i1 %555 to i8, !dbg !2693
  store i8 %556, i8* %38, align 1, !dbg !2693
  br label %648, !dbg !2694

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2695, metadata !DIExpression()), !dbg !2707
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2708
  store i64 0, i64* %37, align 8, !dbg !2709
  store i8 1, i8* %38, align 1, !dbg !2710
  %558 = load i64, i64* %14, align 8, !dbg !2711
  %559 = icmp eq i64 %558, -1, !dbg !2713
  br i1 %559, label %560, label %563, !dbg !2714

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2715
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2716
  store i64 %562, i64* %14, align 8, !dbg !2717
  br label %563, !dbg !2718

563:                                              ; preds = %560, %557
  br label %564, !dbg !2719

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2720, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2725, metadata !DIExpression()), !dbg !2726
  %565 = load i8*, i8** %13, align 8, !dbg !2727
  %566 = load i64, i64* %31, align 8, !dbg !2728
  %567 = load i64, i64* %37, align 8, !dbg !2729
  %568 = add i64 %566, %567, !dbg !2730
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2727
  %570 = load i64, i64* %14, align 8, !dbg !2731
  %571 = load i64, i64* %31, align 8, !dbg !2732
  %572 = load i64, i64* %37, align 8, !dbg !2733
  %573 = add i64 %571, %572, !dbg !2734
  %574 = sub i64 %570, %573, !dbg !2735
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2736
  store i64 %575, i64* %41, align 8, !dbg !2726
  %576 = load i64, i64* %41, align 8, !dbg !2737
  %577 = icmp eq i64 %576, 0, !dbg !2739
  br i1 %577, label %578, label %579, !dbg !2740

578:                                              ; preds = %564
  br label %647, !dbg !2741

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2742
  %581 = icmp eq i64 %580, -1, !dbg !2744
  br i1 %581, label %582, label %583, !dbg !2745

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2746
  br label %647, !dbg !2748

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2749
  %585 = icmp eq i64 %584, -2, !dbg !2751
  br i1 %585, label %586, label %608, !dbg !2752

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2753
  br label %587, !dbg !2755

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2756
  %589 = load i64, i64* %37, align 8, !dbg !2757
  %590 = add i64 %588, %589, !dbg !2758
  %591 = load i64, i64* %14, align 8, !dbg !2759
  %592 = icmp ult i64 %590, %591, !dbg !2760
  br i1 %592, label %593, label %602, !dbg !2761

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2762
  %595 = load i64, i64* %31, align 8, !dbg !2763
  %596 = load i64, i64* %37, align 8, !dbg !2764
  %597 = add i64 %595, %596, !dbg !2765
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2762
  %599 = load i8, i8* %598, align 1, !dbg !2762
  %600 = zext i8 %599 to i32, !dbg !2762
  %601 = icmp ne i32 %600, 0, !dbg !2761
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2766
  br i1 %603, label %604, label %607, !dbg !2755

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2767
  %606 = add i64 %605, 1, !dbg !2767
  store i64 %606, i64* %37, align 8, !dbg !2767
  br label %587, !dbg !2755, !llvm.loop !2768

607:                                              ; preds = %602
  br label %647, !dbg !2769

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2770
  %610 = trunc i8 %609 to i1, !dbg !2770
  br i1 %610, label %611, label %635, !dbg !2773

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2774
  %613 = icmp eq i32 %612, 2, !dbg !2775
  br i1 %613, label %614, label %635, !dbg !2776

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2777, metadata !DIExpression()), !dbg !2780
  store i64 1, i64* %42, align 8, !dbg !2780
  br label %615, !dbg !2781

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2782
  %617 = load i64, i64* %41, align 8, !dbg !2784
  %618 = icmp ult i64 %616, %617, !dbg !2785
  br i1 %618, label %619, label %634, !dbg !2786

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2787
  %621 = load i64, i64* %31, align 8, !dbg !2788
  %622 = load i64, i64* %37, align 8, !dbg !2789
  %623 = add i64 %621, %622, !dbg !2790
  %624 = load i64, i64* %42, align 8, !dbg !2791
  %625 = add i64 %623, %624, !dbg !2792
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2787
  %627 = load i8, i8* %626, align 1, !dbg !2787
  %628 = zext i8 %627 to i32, !dbg !2787
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2793

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2794

630:                                              ; preds = %619
  br label %631, !dbg !2796

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2797
  %633 = add i64 %632, 1, !dbg !2797
  store i64 %633, i64* %42, align 8, !dbg !2797
  br label %615, !dbg !2798, !llvm.loop !2799

634:                                              ; preds = %615
  br label %635, !dbg !2801

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2802
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2804
  %638 = icmp ne i32 %637, 0, !dbg !2804
  br i1 %638, label %640, label %639, !dbg !2805

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2806
  br label %640, !dbg !2807

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2808
  %642 = load i64, i64* %37, align 8, !dbg !2809
  %643 = add i64 %642, %641, !dbg !2809
  store i64 %643, i64* %37, align 8, !dbg !2809
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2810

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2811
  %650 = trunc i8 %649 to i1, !dbg !2811
  %651 = zext i1 %650 to i8, !dbg !2812
  store i8 %651, i8* %34, align 1, !dbg !2812
  %652 = load i64, i64* %37, align 8, !dbg !2813
  %653 = icmp ult i64 1, %652, !dbg !2815
  br i1 %653, label %660, label %654, !dbg !2816

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2817
  %656 = trunc i8 %655 to i1, !dbg !2817
  br i1 %656, label %657, label %848, !dbg !2818

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2819
  %659 = trunc i8 %658 to i1, !dbg !2819
  br i1 %659, label %848, label %660, !dbg !2820

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2821, metadata !DIExpression()), !dbg !2823
  %661 = load i64, i64* %31, align 8, !dbg !2824
  %662 = load i64, i64* %37, align 8, !dbg !2825
  %663 = add i64 %661, %662, !dbg !2826
  store i64 %663, i64* %43, align 8, !dbg !2823
  br label %664, !dbg !2827

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2828
  %666 = trunc i8 %665 to i1, !dbg !2828
  br i1 %666, label %667, label %772, !dbg !2833

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2834
  %669 = trunc i8 %668 to i1, !dbg !2834
  br i1 %669, label %772, label %670, !dbg !2835

670:                                              ; preds = %667
  br label %671, !dbg !2836

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2838
  %673 = trunc i8 %672 to i1, !dbg !2838
  br i1 %673, label %674, label %675, !dbg !2841

674:                                              ; preds = %671
  br label %1078, !dbg !2838

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2841
  %676 = load i32, i32* %15, align 4, !dbg !2842
  %677 = icmp eq i32 %676, 2, !dbg !2842
  br i1 %677, label %678, label %718, !dbg !2842

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2842
  %680 = trunc i8 %679 to i1, !dbg !2842
  br i1 %680, label %718, label %681, !dbg !2841

681:                                              ; preds = %678
  br label %682, !dbg !2844

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2846
  %684 = load i64, i64* %12, align 8, !dbg !2846
  %685 = icmp ult i64 %683, %684, !dbg !2846
  br i1 %685, label %686, label %690, !dbg !2849

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2846
  %688 = load i64, i64* %21, align 8, !dbg !2846
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2846
  store i8 39, i8* %689, align 1, !dbg !2846
  br label %690, !dbg !2846

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2849
  %692 = add i64 %691, 1, !dbg !2849
  store i64 %692, i64* %21, align 8, !dbg !2849
  br label %693, !dbg !2849

693:                                              ; preds = %690
  br label %694, !dbg !2844

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2850
  %696 = load i64, i64* %12, align 8, !dbg !2850
  %697 = icmp ult i64 %695, %696, !dbg !2850
  br i1 %697, label %698, label %702, !dbg !2853

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2850
  %700 = load i64, i64* %21, align 8, !dbg !2850
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2850
  store i8 36, i8* %701, align 1, !dbg !2850
  br label %702, !dbg !2850

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2853
  %704 = add i64 %703, 1, !dbg !2853
  store i64 %704, i64* %21, align 8, !dbg !2853
  br label %705, !dbg !2853

705:                                              ; preds = %702
  br label %706, !dbg !2844

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2854
  %708 = load i64, i64* %12, align 8, !dbg !2854
  %709 = icmp ult i64 %707, %708, !dbg !2854
  br i1 %709, label %710, label %714, !dbg !2857

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2854
  %712 = load i64, i64* %21, align 8, !dbg !2854
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2854
  store i8 39, i8* %713, align 1, !dbg !2854
  br label %714, !dbg !2854

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2857
  %716 = add i64 %715, 1, !dbg !2857
  store i64 %716, i64* %21, align 8, !dbg !2857
  br label %717, !dbg !2857

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2844
  br label %718, !dbg !2844

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2841

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2858
  %721 = load i64, i64* %12, align 8, !dbg !2858
  %722 = icmp ult i64 %720, %721, !dbg !2858
  br i1 %722, label %723, label %727, !dbg !2861

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2858
  %725 = load i64, i64* %21, align 8, !dbg !2858
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2858
  store i8 92, i8* %726, align 1, !dbg !2858
  br label %727, !dbg !2858

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2861
  %729 = add i64 %728, 1, !dbg !2861
  store i64 %729, i64* %21, align 8, !dbg !2861
  br label %730, !dbg !2861

730:                                              ; preds = %727
  br label %731, !dbg !2841

731:                                              ; preds = %730
  br label %732, !dbg !2862

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2863
  %734 = load i64, i64* %12, align 8, !dbg !2863
  %735 = icmp ult i64 %733, %734, !dbg !2863
  br i1 %735, label %736, label %745, !dbg !2866

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2863
  %738 = zext i8 %737 to i32, !dbg !2863
  %739 = ashr i32 %738, 6, !dbg !2863
  %740 = add nsw i32 48, %739, !dbg !2863
  %741 = trunc i32 %740 to i8, !dbg !2863
  %742 = load i8*, i8** %11, align 8, !dbg !2863
  %743 = load i64, i64* %21, align 8, !dbg !2863
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2863
  store i8 %741, i8* %744, align 1, !dbg !2863
  br label %745, !dbg !2863

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2866
  %747 = add i64 %746, 1, !dbg !2866
  store i64 %747, i64* %21, align 8, !dbg !2866
  br label %748, !dbg !2866

748:                                              ; preds = %745
  br label %749, !dbg !2867

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2868
  %751 = load i64, i64* %12, align 8, !dbg !2868
  %752 = icmp ult i64 %750, %751, !dbg !2868
  br i1 %752, label %753, label %763, !dbg !2871

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2868
  %755 = zext i8 %754 to i32, !dbg !2868
  %756 = ashr i32 %755, 3, !dbg !2868
  %757 = and i32 %756, 7, !dbg !2868
  %758 = add nsw i32 48, %757, !dbg !2868
  %759 = trunc i32 %758 to i8, !dbg !2868
  %760 = load i8*, i8** %11, align 8, !dbg !2868
  %761 = load i64, i64* %21, align 8, !dbg !2868
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2868
  store i8 %759, i8* %762, align 1, !dbg !2868
  br label %763, !dbg !2868

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2871
  %765 = add i64 %764, 1, !dbg !2871
  store i64 %765, i64* %21, align 8, !dbg !2871
  br label %766, !dbg !2871

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2872
  %768 = zext i8 %767 to i32, !dbg !2872
  %769 = and i32 %768, 7, !dbg !2873
  %770 = add nsw i32 48, %769, !dbg !2874
  %771 = trunc i32 %770 to i8, !dbg !2875
  store i8 %771, i8* %35, align 1, !dbg !2876
  br label %789, !dbg !2877

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2878
  %774 = trunc i8 %773 to i1, !dbg !2878
  br i1 %774, label %775, label %788, !dbg !2880

775:                                              ; preds = %772
  br label %776, !dbg !2881

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2883
  %778 = load i64, i64* %12, align 8, !dbg !2883
  %779 = icmp ult i64 %777, %778, !dbg !2883
  br i1 %779, label %780, label %784, !dbg !2886

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2883
  %782 = load i64, i64* %21, align 8, !dbg !2883
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2883
  store i8 92, i8* %783, align 1, !dbg !2883
  br label %784, !dbg !2883

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2886
  %786 = add i64 %785, 1, !dbg !2886
  store i64 %786, i64* %21, align 8, !dbg !2886
  br label %787, !dbg !2886

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2887
  br label %788, !dbg !2888

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2889
  %791 = load i64, i64* %31, align 8, !dbg !2891
  %792 = add i64 %791, 1, !dbg !2892
  %793 = icmp ule i64 %790, %792, !dbg !2893
  br i1 %793, label %794, label %795, !dbg !2894

794:                                              ; preds = %789
  br label %847, !dbg !2895

795:                                              ; preds = %789
  br label %796, !dbg !2896

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2897
  %798 = trunc i8 %797 to i1, !dbg !2897
  br i1 %798, label %799, label %827, !dbg !2897

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2897
  %801 = trunc i8 %800 to i1, !dbg !2897
  br i1 %801, label %827, label %802, !dbg !2900

802:                                              ; preds = %799
  br label %803, !dbg !2901

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2903
  %805 = load i64, i64* %12, align 8, !dbg !2903
  %806 = icmp ult i64 %804, %805, !dbg !2903
  br i1 %806, label %807, label %811, !dbg !2906

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2903
  %809 = load i64, i64* %21, align 8, !dbg !2903
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2903
  store i8 39, i8* %810, align 1, !dbg !2903
  br label %811, !dbg !2903

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2906
  %813 = add i64 %812, 1, !dbg !2906
  store i64 %813, i64* %21, align 8, !dbg !2906
  br label %814, !dbg !2906

814:                                              ; preds = %811
  br label %815, !dbg !2901

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2907
  %817 = load i64, i64* %12, align 8, !dbg !2907
  %818 = icmp ult i64 %816, %817, !dbg !2907
  br i1 %818, label %819, label %823, !dbg !2910

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2907
  %821 = load i64, i64* %21, align 8, !dbg !2907
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2907
  store i8 39, i8* %822, align 1, !dbg !2907
  br label %823, !dbg !2907

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2910
  %825 = add i64 %824, 1, !dbg !2910
  store i64 %825, i64* %21, align 8, !dbg !2910
  br label %826, !dbg !2910

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2901
  br label %827, !dbg !2901

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2900

828:                                              ; preds = %827
  br label %829, !dbg !2911

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2912
  %831 = load i64, i64* %12, align 8, !dbg !2912
  %832 = icmp ult i64 %830, %831, !dbg !2912
  br i1 %832, label %833, label %838, !dbg !2915

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2912
  %835 = load i8*, i8** %11, align 8, !dbg !2912
  %836 = load i64, i64* %21, align 8, !dbg !2912
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2912
  store i8 %834, i8* %837, align 1, !dbg !2912
  br label %838, !dbg !2912

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2915
  %840 = add i64 %839, 1, !dbg !2915
  store i64 %840, i64* %21, align 8, !dbg !2915
  br label %841, !dbg !2915

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2916
  %843 = load i64, i64* %31, align 8, !dbg !2917
  %844 = add i64 %843, 1, !dbg !2917
  store i64 %844, i64* %31, align 8, !dbg !2917
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2916
  %846 = load i8, i8* %845, align 1, !dbg !2916
  store i8 %846, i8* %35, align 1, !dbg !2918
  br label %664, !dbg !2919, !llvm.loop !2920

847:                                              ; preds = %794
  br label %942, !dbg !2923

848:                                              ; preds = %657, %654
  br label %849, !dbg !2924

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2925
  %851 = trunc i8 %850 to i1, !dbg !2925
  br i1 %851, label %852, label %855, !dbg !2927

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2928
  %854 = icmp ne i32 %853, 2, !dbg !2929
  br i1 %854, label %858, label %855, !dbg !2930

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2931
  %857 = trunc i8 %856 to i1, !dbg !2931
  br i1 %857, label %858, label %875, !dbg !2932

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2933
  %860 = icmp ne i32* %859, null, !dbg !2933
  br i1 %860, label %861, label %875, !dbg !2934

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2935
  %863 = load i8, i8* %35, align 1, !dbg !2936
  %864 = zext i8 %863 to i64, !dbg !2936
  %865 = udiv i64 %864, 32, !dbg !2937
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2935
  %867 = load i32, i32* %866, align 4, !dbg !2935
  %868 = load i8, i8* %35, align 1, !dbg !2938
  %869 = zext i8 %868 to i64, !dbg !2938
  %870 = urem i64 %869, 32, !dbg !2939
  %871 = trunc i64 %870 to i32, !dbg !2940
  %872 = lshr i32 %867, %871, !dbg !2940
  %873 = and i32 %872, 1, !dbg !2941
  %874 = icmp ne i32 %873, 0, !dbg !2941
  br i1 %874, label %879, label %875, !dbg !2942

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2943
  %877 = trunc i8 %876 to i1, !dbg !2943
  br i1 %877, label %879, label %878, !dbg !2944

878:                                              ; preds = %875
  br label %942, !dbg !2945

879:                                              ; preds = %875, %861
  br label %880, !dbg !2943

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2946), !dbg !2947
  br label %881, !dbg !2948

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2949
  %883 = trunc i8 %882 to i1, !dbg !2949
  br i1 %883, label %884, label %885, !dbg !2952

884:                                              ; preds = %881
  br label %1078, !dbg !2949

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2952
  %886 = load i32, i32* %15, align 4, !dbg !2953
  %887 = icmp eq i32 %886, 2, !dbg !2953
  br i1 %887, label %888, label %928, !dbg !2953

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2953
  %890 = trunc i8 %889 to i1, !dbg !2953
  br i1 %890, label %928, label %891, !dbg !2952

891:                                              ; preds = %888
  br label %892, !dbg !2955

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2957
  %894 = load i64, i64* %12, align 8, !dbg !2957
  %895 = icmp ult i64 %893, %894, !dbg !2957
  br i1 %895, label %896, label %900, !dbg !2960

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2957
  %898 = load i64, i64* %21, align 8, !dbg !2957
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2957
  store i8 39, i8* %899, align 1, !dbg !2957
  br label %900, !dbg !2957

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2960
  %902 = add i64 %901, 1, !dbg !2960
  store i64 %902, i64* %21, align 8, !dbg !2960
  br label %903, !dbg !2960

903:                                              ; preds = %900
  br label %904, !dbg !2955

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2961
  %906 = load i64, i64* %12, align 8, !dbg !2961
  %907 = icmp ult i64 %905, %906, !dbg !2961
  br i1 %907, label %908, label %912, !dbg !2964

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2961
  %910 = load i64, i64* %21, align 8, !dbg !2961
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2961
  store i8 36, i8* %911, align 1, !dbg !2961
  br label %912, !dbg !2961

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2964
  %914 = add i64 %913, 1, !dbg !2964
  store i64 %914, i64* %21, align 8, !dbg !2964
  br label %915, !dbg !2964

915:                                              ; preds = %912
  br label %916, !dbg !2955

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2965
  %918 = load i64, i64* %12, align 8, !dbg !2965
  %919 = icmp ult i64 %917, %918, !dbg !2965
  br i1 %919, label %920, label %924, !dbg !2968

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2965
  %922 = load i64, i64* %21, align 8, !dbg !2965
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2965
  store i8 39, i8* %923, align 1, !dbg !2965
  br label %924, !dbg !2965

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2968
  %926 = add i64 %925, 1, !dbg !2968
  store i64 %926, i64* %21, align 8, !dbg !2968
  br label %927, !dbg !2968

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2955
  br label %928, !dbg !2955

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2952

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2969
  %931 = load i64, i64* %12, align 8, !dbg !2969
  %932 = icmp ult i64 %930, %931, !dbg !2969
  br i1 %932, label %933, label %937, !dbg !2972

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2969
  %935 = load i64, i64* %21, align 8, !dbg !2969
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2969
  store i8 92, i8* %936, align 1, !dbg !2969
  br label %937, !dbg !2969

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2972
  %939 = add i64 %938, 1, !dbg !2972
  store i64 %939, i64* %21, align 8, !dbg !2972
  br label %940, !dbg !2972

940:                                              ; preds = %937
  br label %941, !dbg !2952

941:                                              ; preds = %940
  br label %942, !dbg !2952

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2973), !dbg !2974
  br label %943, !dbg !2975

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2976
  %945 = trunc i8 %944 to i1, !dbg !2976
  br i1 %945, label %946, label %974, !dbg !2976

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2976
  %948 = trunc i8 %947 to i1, !dbg !2976
  br i1 %948, label %974, label %949, !dbg !2979

949:                                              ; preds = %946
  br label %950, !dbg !2980

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2982
  %952 = load i64, i64* %12, align 8, !dbg !2982
  %953 = icmp ult i64 %951, %952, !dbg !2982
  br i1 %953, label %954, label %958, !dbg !2985

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2982
  %956 = load i64, i64* %21, align 8, !dbg !2982
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2982
  store i8 39, i8* %957, align 1, !dbg !2982
  br label %958, !dbg !2982

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2985
  %960 = add i64 %959, 1, !dbg !2985
  store i64 %960, i64* %21, align 8, !dbg !2985
  br label %961, !dbg !2985

961:                                              ; preds = %958
  br label %962, !dbg !2980

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2986
  %964 = load i64, i64* %12, align 8, !dbg !2986
  %965 = icmp ult i64 %963, %964, !dbg !2986
  br i1 %965, label %966, label %970, !dbg !2989

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2986
  %968 = load i64, i64* %21, align 8, !dbg !2986
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2986
  store i8 39, i8* %969, align 1, !dbg !2986
  br label %970, !dbg !2986

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2989
  %972 = add i64 %971, 1, !dbg !2989
  store i64 %972, i64* %21, align 8, !dbg !2989
  br label %973, !dbg !2989

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2980
  br label %974, !dbg !2980

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2979

975:                                              ; preds = %974
  br label %976, !dbg !2990

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2991
  %978 = load i64, i64* %12, align 8, !dbg !2991
  %979 = icmp ult i64 %977, %978, !dbg !2991
  br i1 %979, label %980, label %985, !dbg !2994

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2991
  %982 = load i8*, i8** %11, align 8, !dbg !2991
  %983 = load i64, i64* %21, align 8, !dbg !2991
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2991
  store i8 %981, i8* %984, align 1, !dbg !2991
  br label %985, !dbg !2991

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2994
  %987 = add i64 %986, 1, !dbg !2994
  store i64 %987, i64* %21, align 8, !dbg !2994
  br label %988, !dbg !2994

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2995
  %990 = trunc i8 %989 to i1, !dbg !2995
  br i1 %990, label %992, label %991, !dbg !2997

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2998
  br label %992, !dbg !2999

992:                                              ; preds = %991, %988
  br label %993, !dbg !3000

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !3001
  %995 = add i64 %994, 1, !dbg !3001
  store i64 %995, i64* %31, align 8, !dbg !3001
  br label %139, !dbg !3002, !llvm.loop !3003

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !3005
  %998 = icmp eq i64 %997, 0, !dbg !3007
  br i1 %998, label %999, label %1006, !dbg !3008

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !3009
  %1001 = icmp eq i32 %1000, 2, !dbg !3010
  br i1 %1001, label %1002, label %1006, !dbg !3011

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !3012
  %1004 = trunc i8 %1003 to i1, !dbg !3012
  br i1 %1004, label %1005, label %1006, !dbg !3013

1005:                                             ; preds = %1002
  br label %1078, !dbg !3014

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !3015
  %1008 = icmp eq i32 %1007, 2, !dbg !3017
  br i1 %1008, label %1009, label %1038, !dbg !3018

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !3019
  %1011 = trunc i8 %1010 to i1, !dbg !3019
  br i1 %1011, label %1038, label %1012, !dbg !3020

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !3021
  %1014 = trunc i8 %1013 to i1, !dbg !3021
  br i1 %1014, label %1015, label %1038, !dbg !3022

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !3023
  %1017 = trunc i8 %1016 to i1, !dbg !3023
  br i1 %1017, label %1018, label %1028, !dbg !3026

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !3027
  %1020 = load i64, i64* %22, align 8, !dbg !3028
  %1021 = load i8*, i8** %13, align 8, !dbg !3029
  %1022 = load i64, i64* %14, align 8, !dbg !3030
  %1023 = load i32, i32* %16, align 4, !dbg !3031
  %1024 = load i32*, i32** %17, align 8, !dbg !3032
  %1025 = load i8*, i8** %18, align 8, !dbg !3033
  %1026 = load i8*, i8** %19, align 8, !dbg !3034
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !3035
  store i64 %1027, i64* %10, align 8, !dbg !3036
  br label %1096, !dbg !3036

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !3037
  %1030 = icmp ne i64 %1029, 0, !dbg !3037
  br i1 %1030, label %1036, label %1031, !dbg !3039

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !3040
  %1033 = icmp ne i64 %1032, 0, !dbg !3040
  br i1 %1033, label %1034, label %1036, !dbg !3041

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !3042
  store i64 %1035, i64* %12, align 8, !dbg !3044
  store i64 0, i64* %21, align 8, !dbg !3045
  br label %51, !dbg !3046

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !3047

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !3048
  %1040 = icmp ne i8* %1039, null, !dbg !3048
  br i1 %1040, label %1041, label %1068, !dbg !3050

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !3051
  %1043 = trunc i8 %1042 to i1, !dbg !3051
  br i1 %1043, label %1068, label %1044, !dbg !3052

1044:                                             ; preds = %1041
  br label %1045, !dbg !3053

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !3054
  %1047 = load i8, i8* %1046, align 1, !dbg !3057
  %1048 = icmp ne i8 %1047, 0, !dbg !3058
  br i1 %1048, label %1049, label %1067, !dbg !3058

1049:                                             ; preds = %1045
  br label %1050, !dbg !3059

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !3060
  %1052 = load i64, i64* %12, align 8, !dbg !3060
  %1053 = icmp ult i64 %1051, %1052, !dbg !3060
  br i1 %1053, label %1054, label %1060, !dbg !3063

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !3060
  %1056 = load i8, i8* %1055, align 1, !dbg !3060
  %1057 = load i8*, i8** %11, align 8, !dbg !3060
  %1058 = load i64, i64* %21, align 8, !dbg !3060
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !3060
  store i8 %1056, i8* %1059, align 1, !dbg !3060
  br label %1060, !dbg !3060

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !3063
  %1062 = add i64 %1061, 1, !dbg !3063
  store i64 %1062, i64* %21, align 8, !dbg !3063
  br label %1063, !dbg !3063

1063:                                             ; preds = %1060
  br label %1064, !dbg !3063

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !3064
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !3064
  store i8* %1066, i8** %23, align 8, !dbg !3064
  br label %1045, !dbg !3065, !llvm.loop !3066

1067:                                             ; preds = %1045
  br label %1068, !dbg !3067

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !3068
  %1070 = load i64, i64* %12, align 8, !dbg !3070
  %1071 = icmp ult i64 %1069, %1070, !dbg !3071
  br i1 %1071, label %1072, label %1076, !dbg !3072

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !3073
  %1074 = load i64, i64* %21, align 8, !dbg !3074
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !3073
  store i8 0, i8* %1075, align 1, !dbg !3075
  br label %1076, !dbg !3073

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !3076
  store i64 %1077, i64* %10, align 8, !dbg !3077
  br label %1096, !dbg !3077

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !3078), !dbg !3079
  %1079 = load i32, i32* %15, align 4, !dbg !3080
  %1080 = icmp eq i32 %1079, 2, !dbg !3082
  br i1 %1080, label %1081, label %1085, !dbg !3083

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !3084
  %1083 = trunc i8 %1082 to i1, !dbg !3084
  br i1 %1083, label %1084, label %1085, !dbg !3085

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !3086
  br label %1085, !dbg !3087

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !3088
  %1087 = load i64, i64* %12, align 8, !dbg !3089
  %1088 = load i8*, i8** %13, align 8, !dbg !3090
  %1089 = load i64, i64* %14, align 8, !dbg !3091
  %1090 = load i32, i32* %15, align 4, !dbg !3092
  %1091 = load i32, i32* %16, align 4, !dbg !3093
  %1092 = and i32 %1091, -3, !dbg !3094
  %1093 = load i8*, i8** %18, align 8, !dbg !3095
  %1094 = load i8*, i8** %19, align 8, !dbg !3096
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !3097
  store i64 %1095, i64* %10, align 8, !dbg !3098
  br label %1096, !dbg !3098

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !3099
  ret i64 %1097, !dbg !3099
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !156 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3104, metadata !DIExpression()), !dbg !3105
  %9 = load i8*, i8** %4, align 8, !dbg !3106
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.151, i64 0, i64 0), i8* noundef %9) #18, !dbg !3106
  store i8* %10, i8** %6, align 8, !dbg !3105
  %11 = load i8*, i8** %6, align 8, !dbg !3107
  %12 = load i8*, i8** %4, align 8, !dbg !3109
  %13 = icmp ne i8* %11, %12, !dbg !3110
  br i1 %13, label %14, label %16, !dbg !3111

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !3112
  store i8* %15, i8** %3, align 8, !dbg !3113
  br label %37, !dbg !3113

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !3118
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !3119
  %18 = icmp eq i64 %17, 3, !dbg !3121
  br i1 %18, label %19, label %32, !dbg !3122

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !3123
  %21 = icmp eq i32 %20, 8216, !dbg !3124
  br i1 %21, label %22, label %32, !dbg !3125

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !3126
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !3126
  %25 = load i8, i8* %24, align 1, !dbg !3126
  %26 = zext i8 %25 to i32, !dbg !3126
  %27 = icmp eq i32 %26, 39, !dbg !3127
  %28 = zext i1 %27 to i32, !dbg !3127
  %29 = sext i32 %28 to i64, !dbg !3128
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !3128
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !3128
  store i8* %31, i8** %3, align 8, !dbg !3129
  br label %37, !dbg !3129

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !3130
  %34 = icmp eq i32 %33, 9, !dbg !3131
  %35 = zext i1 %34 to i64, !dbg !3130
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.150, i64 0, i64 0), !dbg !3130
  store i8* %36, i8** %3, align 8, !dbg !3132
  br label %37, !dbg !3132

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !3133
  ret i8* %38, !dbg !3133
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !3134 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3139, metadata !DIExpression()), !dbg !3140
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3141, metadata !DIExpression()), !dbg !3142
  %7 = load i8*, i8** %4, align 8, !dbg !3143
  %8 = load i64, i64* %5, align 8, !dbg !3144
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3145
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !3146
  ret i8* %10, !dbg !3147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3148 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3151, metadata !DIExpression()), !dbg !3152
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3155, metadata !DIExpression()), !dbg !3156
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3157, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3159, metadata !DIExpression()), !dbg !3160
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3161
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3161
  br i1 %15, label %16, label %18, !dbg !3161

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3162
  br label %19, !dbg !3161

18:                                               ; preds = %4
  br label %19, !dbg !3161

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3161
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3160
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3163, metadata !DIExpression()), !dbg !3164
  %21 = call i32* @__errno_location() #21, !dbg !3165
  %22 = load i32, i32* %21, align 4, !dbg !3165
  store i32 %22, i32* %10, align 4, !dbg !3164
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3166, metadata !DIExpression()), !dbg !3167
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3168
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3169
  %25 = load i32, i32* %24, align 4, !dbg !3169
  %26 = load i64*, i64** %7, align 8, !dbg !3170
  %27 = icmp ne i64* %26, null, !dbg !3170
  %28 = zext i1 %27 to i64, !dbg !3170
  %29 = select i1 %27, i32 0, i32 1, !dbg !3170
  %30 = or i32 %25, %29, !dbg !3171
  store i32 %30, i32* %11, align 4, !dbg !3167
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3172, metadata !DIExpression()), !dbg !3173
  %31 = load i8*, i8** %5, align 8, !dbg !3174
  %32 = load i64, i64* %6, align 8, !dbg !3175
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3176
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3177
  %35 = load i32, i32* %34, align 8, !dbg !3177
  %36 = load i32, i32* %11, align 4, !dbg !3178
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3179
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3180
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !3179
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3181
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3182
  %42 = load i8*, i8** %41, align 8, !dbg !3182
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3183
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3184
  %45 = load i8*, i8** %44, align 8, !dbg !3184
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !3185
  %47 = add i64 %46, 1, !dbg !3186
  store i64 %47, i64* %12, align 8, !dbg !3173
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3187, metadata !DIExpression()), !dbg !3188
  %48 = load i64, i64* %12, align 8, !dbg !3189
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !3190
  store i8* %49, i8** %13, align 8, !dbg !3188
  %50 = load i8*, i8** %13, align 8, !dbg !3191
  %51 = load i64, i64* %12, align 8, !dbg !3192
  %52 = load i8*, i8** %5, align 8, !dbg !3193
  %53 = load i64, i64* %6, align 8, !dbg !3194
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3195
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3196
  %56 = load i32, i32* %55, align 8, !dbg !3196
  %57 = load i32, i32* %11, align 4, !dbg !3197
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3198
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3199
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3198
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3200
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3201
  %63 = load i8*, i8** %62, align 8, !dbg !3201
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3202
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3203
  %66 = load i8*, i8** %65, align 8, !dbg !3203
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !3204
  %68 = load i32, i32* %10, align 4, !dbg !3205
  %69 = call i32* @__errno_location() #21, !dbg !3206
  store i32 %68, i32* %69, align 4, !dbg !3207
  %70 = load i64*, i64** %7, align 8, !dbg !3208
  %71 = icmp ne i64* %70, null, !dbg !3208
  br i1 %71, label %72, label %76, !dbg !3210

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3211
  %74 = sub i64 %73, 1, !dbg !3212
  %75 = load i64*, i64** %7, align 8, !dbg !3213
  store i64 %74, i64* %75, align 8, !dbg !3214
  br label %76, !dbg !3215

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3216
  ret i8* %77, !dbg !3217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !3218 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3221
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3220
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3222, metadata !DIExpression()), !dbg !3224
  store i32 1, i32* %2, align 4, !dbg !3224
  br label %4, !dbg !3225

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3226
  %6 = load i32, i32* @nslots, align 4, !dbg !3228
  %7 = icmp slt i32 %5, %6, !dbg !3229
  br i1 %7, label %8, label %18, !dbg !3230

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3231
  %10 = load i32, i32* %2, align 4, !dbg !3232
  %11 = sext i32 %10 to i64, !dbg !3231
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3231
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3233
  %14 = load i8*, i8** %13, align 8, !dbg !3233
  call void @free(i8* noundef %14) #18, !dbg !3234
  br label %15, !dbg !3234

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3235
  %17 = add nsw i32 %16, 1, !dbg !3235
  store i32 %17, i32* %2, align 4, !dbg !3235
  br label %4, !dbg !3236, !llvm.loop !3237

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3239
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3239
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3241
  %22 = load i8*, i8** %21, align 8, !dbg !3241
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3242
  br i1 %23, label %24, label %29, !dbg !3243

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3244
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3244
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3246
  %28 = load i8*, i8** %27, align 8, !dbg !3246
  call void @free(i8* noundef %28) #18, !dbg !3247
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3248
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3249
  br label %29, !dbg !3250

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3251
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3253
  br i1 %31, label %32, label %35, !dbg !3254

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3255
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3255
  call void @free(i8* noundef %34) #18, !dbg !3257
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3258
  br label %35, !dbg !3259

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3260
  ret void, !dbg !3261
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3262 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3267, metadata !DIExpression()), !dbg !3268
  %5 = load i32, i32* %3, align 4, !dbg !3269
  %6 = load i8*, i8** %4, align 8, !dbg !3270
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3271
  ret i8* %7, !dbg !3272
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3273 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3280, metadata !DIExpression()), !dbg !3281
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3284, metadata !DIExpression()), !dbg !3285
  %18 = call i32* @__errno_location() #21, !dbg !3286
  %19 = load i32, i32* %18, align 4, !dbg !3286
  store i32 %19, i32* %9, align 4, !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3287, metadata !DIExpression()), !dbg !3288
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3289
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3288
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3290, metadata !DIExpression()), !dbg !3291
  store i32 2147483647, i32* %11, align 4, !dbg !3291
  %21 = load i32, i32* %5, align 4, !dbg !3292
  %22 = icmp sle i32 0, %21, !dbg !3294
  br i1 %22, label %23, label %27, !dbg !3295

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3296
  %25 = load i32, i32* %11, align 4, !dbg !3297
  %26 = icmp slt i32 %24, %25, !dbg !3298
  br i1 %26, label %28, label %27, !dbg !3299

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !3300
  unreachable, !dbg !3300

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3301
  %30 = load i32, i32* %5, align 4, !dbg !3303
  %31 = icmp sle i32 %29, %30, !dbg !3304
  br i1 %31, label %32, label %73, !dbg !3305

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3306, metadata !DIExpression()), !dbg !3308
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3309
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3310
  %35 = zext i1 %34 to i8, !dbg !3308
  store i8 %35, i8* %12, align 1, !dbg !3308
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3311, metadata !DIExpression()), !dbg !3312
  %36 = load i32, i32* @nslots, align 4, !dbg !3313
  %37 = sext i32 %36 to i64, !dbg !3313
  store i64 %37, i64* %13, align 8, !dbg !3312
  %38 = load i8, i8* %12, align 1, !dbg !3314
  %39 = trunc i8 %38 to i1, !dbg !3314
  br i1 %39, label %40, label %41, !dbg !3314

40:                                               ; preds = %32
  br label %43, !dbg !3314

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3315
  br label %43, !dbg !3314

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3314
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3314
  %46 = load i32, i32* %5, align 4, !dbg !3316
  %47 = load i32, i32* @nslots, align 4, !dbg !3317
  %48 = sub nsw i32 %46, %47, !dbg !3318
  %49 = add nsw i32 %48, 1, !dbg !3319
  %50 = sext i32 %49 to i64, !dbg !3316
  %51 = load i32, i32* %11, align 4, !dbg !3320
  %52 = sext i32 %51 to i64, !dbg !3320
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3321
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3321
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3322
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3323
  %55 = load i8, i8* %12, align 1, !dbg !3324
  %56 = trunc i8 %55 to i1, !dbg !3324
  br i1 %56, label %57, label %60, !dbg !3326

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3327
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3328
  br label %60, !dbg !3329

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3330
  %62 = load i32, i32* @nslots, align 4, !dbg !3331
  %63 = sext i32 %62 to i64, !dbg !3332
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3332
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3333
  %66 = load i64, i64* %13, align 8, !dbg !3334
  %67 = load i32, i32* @nslots, align 4, !dbg !3335
  %68 = sext i32 %67 to i64, !dbg !3335
  %69 = sub nsw i64 %66, %68, !dbg !3336
  %70 = mul i64 %69, 16, !dbg !3337
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3333
  %71 = load i64, i64* %13, align 8, !dbg !3338
  %72 = trunc i64 %71 to i32, !dbg !3338
  store i32 %72, i32* @nslots, align 4, !dbg !3339
  br label %73, !dbg !3340

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3341, metadata !DIExpression()), !dbg !3343
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3344
  %75 = load i32, i32* %5, align 4, !dbg !3345
  %76 = sext i32 %75 to i64, !dbg !3344
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3344
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3346
  %79 = load i64, i64* %78, align 8, !dbg !3346
  store i64 %79, i64* %14, align 8, !dbg !3343
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3347, metadata !DIExpression()), !dbg !3348
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3349
  %81 = load i32, i32* %5, align 4, !dbg !3350
  %82 = sext i32 %81 to i64, !dbg !3349
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3349
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3351
  %85 = load i8*, i8** %84, align 8, !dbg !3351
  store i8* %85, i8** %15, align 8, !dbg !3348
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3352, metadata !DIExpression()), !dbg !3353
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3354
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3355
  %88 = load i32, i32* %87, align 4, !dbg !3355
  %89 = or i32 %88, 1, !dbg !3356
  store i32 %89, i32* %16, align 4, !dbg !3353
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3357, metadata !DIExpression()), !dbg !3358
  %90 = load i8*, i8** %15, align 8, !dbg !3359
  %91 = load i64, i64* %14, align 8, !dbg !3360
  %92 = load i8*, i8** %6, align 8, !dbg !3361
  %93 = load i64, i64* %7, align 8, !dbg !3362
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3363
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3364
  %96 = load i32, i32* %95, align 8, !dbg !3364
  %97 = load i32, i32* %16, align 4, !dbg !3365
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3366
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3367
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3366
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3368
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3369
  %103 = load i8*, i8** %102, align 8, !dbg !3369
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3370
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3371
  %106 = load i8*, i8** %105, align 8, !dbg !3371
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3372
  store i64 %107, i64* %17, align 8, !dbg !3358
  %108 = load i64, i64* %14, align 8, !dbg !3373
  %109 = load i64, i64* %17, align 8, !dbg !3375
  %110 = icmp ule i64 %108, %109, !dbg !3376
  br i1 %110, label %111, label %149, !dbg !3377

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3378
  %113 = add i64 %112, 1, !dbg !3380
  store i64 %113, i64* %14, align 8, !dbg !3381
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3382
  %115 = load i32, i32* %5, align 4, !dbg !3383
  %116 = sext i32 %115 to i64, !dbg !3382
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3382
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3384
  store i64 %113, i64* %118, align 8, !dbg !3385
  %119 = load i8*, i8** %15, align 8, !dbg !3386
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3388
  br i1 %120, label %121, label %123, !dbg !3389

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3390
  call void @free(i8* noundef %122) #18, !dbg !3391
  br label %123, !dbg !3391

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3392
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !3393
  store i8* %125, i8** %15, align 8, !dbg !3394
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3395
  %127 = load i32, i32* %5, align 4, !dbg !3396
  %128 = sext i32 %127 to i64, !dbg !3395
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3395
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3397
  store i8* %125, i8** %130, align 8, !dbg !3398
  %131 = load i8*, i8** %15, align 8, !dbg !3399
  %132 = load i64, i64* %14, align 8, !dbg !3400
  %133 = load i8*, i8** %6, align 8, !dbg !3401
  %134 = load i64, i64* %7, align 8, !dbg !3402
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3403
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3404
  %137 = load i32, i32* %136, align 8, !dbg !3404
  %138 = load i32, i32* %16, align 4, !dbg !3405
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3406
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3407
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3406
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3408
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3409
  %144 = load i8*, i8** %143, align 8, !dbg !3409
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3410
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3411
  %147 = load i8*, i8** %146, align 8, !dbg !3411
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3412
  br label %149, !dbg !3413

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3414
  %151 = call i32* @__errno_location() #21, !dbg !3415
  store i32 %150, i32* %151, align 4, !dbg !3416
  %152 = load i8*, i8** %15, align 8, !dbg !3417
  ret i8* %152, !dbg !3418
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3419 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3422, metadata !DIExpression()), !dbg !3423
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3424, metadata !DIExpression()), !dbg !3425
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3426, metadata !DIExpression()), !dbg !3427
  %7 = load i32, i32* %4, align 4, !dbg !3428
  %8 = load i8*, i8** %5, align 8, !dbg !3429
  %9 = load i64, i64* %6, align 8, !dbg !3430
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3431
  ret i8* %10, !dbg !3432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3433 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3436, metadata !DIExpression()), !dbg !3437
  %3 = load i8*, i8** %2, align 8, !dbg !3438
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3439
  ret i8* %4, !dbg !3440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3441 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3444, metadata !DIExpression()), !dbg !3445
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3446, metadata !DIExpression()), !dbg !3447
  %5 = load i8*, i8** %3, align 8, !dbg !3448
  %6 = load i64, i64* %4, align 8, !dbg !3449
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3450
  ret i8* %7, !dbg !3451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3452 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3455, metadata !DIExpression()), !dbg !3456
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3461, metadata !DIExpression()), !dbg !3462
  %8 = load i32, i32* %5, align 4, !dbg !3463
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3464
  %9 = load i32, i32* %4, align 4, !dbg !3465
  %10 = load i8*, i8** %6, align 8, !dbg !3466
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3467
  ret i8* %11, !dbg !3468
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3469 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3474, metadata !DIExpression()), !dbg !3475
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3475
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3475
  %5 = load i32, i32* %3, align 4, !dbg !3476
  %6 = icmp eq i32 %5, 10, !dbg !3478
  br i1 %6, label %7, label %8, !dbg !3479

7:                                                ; preds = %2
  call void @abort() #19, !dbg !3480
  unreachable, !dbg !3480

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3481
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3482
  store i32 %9, i32* %10, align 8, !dbg !3483
  ret void, !dbg !3484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3485 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3488, metadata !DIExpression()), !dbg !3489
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3490, metadata !DIExpression()), !dbg !3491
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3492, metadata !DIExpression()), !dbg !3493
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3496, metadata !DIExpression()), !dbg !3497
  %10 = load i32, i32* %6, align 4, !dbg !3498
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3499
  %11 = load i32, i32* %5, align 4, !dbg !3500
  %12 = load i8*, i8** %7, align 8, !dbg !3501
  %13 = load i64, i64* %8, align 8, !dbg !3502
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3503
  ret i8* %14, !dbg !3504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3505 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3508, metadata !DIExpression()), !dbg !3509
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3510, metadata !DIExpression()), !dbg !3511
  %5 = load i32, i32* %3, align 4, !dbg !3512
  %6 = load i8*, i8** %4, align 8, !dbg !3513
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3514
  ret i8* %7, !dbg !3515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3516 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3519, metadata !DIExpression()), !dbg !3520
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3521, metadata !DIExpression()), !dbg !3522
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3523, metadata !DIExpression()), !dbg !3524
  %7 = load i32, i32* %4, align 4, !dbg !3525
  %8 = load i8*, i8** %5, align 8, !dbg !3526
  %9 = load i64, i64* %6, align 8, !dbg !3527
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3528
  ret i8* %10, !dbg !3529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3530 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3533, metadata !DIExpression()), !dbg !3534
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3535, metadata !DIExpression()), !dbg !3536
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3537, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3539, metadata !DIExpression()), !dbg !3540
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3541
  %9 = load i8, i8* %6, align 1, !dbg !3542
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3543
  %11 = load i8*, i8** %4, align 8, !dbg !3544
  %12 = load i64, i64* %5, align 8, !dbg !3545
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3546
  ret i8* %13, !dbg !3547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3548 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3553, metadata !DIExpression()), !dbg !3554
  %5 = load i8*, i8** %3, align 8, !dbg !3555
  %6 = load i8, i8* %4, align 1, !dbg !3556
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3557
  ret i8* %7, !dbg !3558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3559 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3560, metadata !DIExpression()), !dbg !3561
  %3 = load i8*, i8** %2, align 8, !dbg !3562
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3563
  ret i8* %4, !dbg !3564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3565 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3568, metadata !DIExpression()), !dbg !3569
  %5 = load i8*, i8** %3, align 8, !dbg !3570
  %6 = load i64, i64* %4, align 8, !dbg !3571
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3572
  ret i8* %7, !dbg !3573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3574 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3575, metadata !DIExpression()), !dbg !3576
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3581, metadata !DIExpression()), !dbg !3582
  %9 = load i32, i32* %5, align 4, !dbg !3583
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3584
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3584
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3584
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3585
  %13 = load i32, i32* %4, align 4, !dbg !3586
  %14 = load i8*, i8** %6, align 8, !dbg !3587
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3588
  ret i8* %15, !dbg !3589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3590 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3597, metadata !DIExpression()), !dbg !3598
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3599, metadata !DIExpression()), !dbg !3600
  %9 = load i32, i32* %5, align 4, !dbg !3601
  %10 = load i8*, i8** %6, align 8, !dbg !3602
  %11 = load i8*, i8** %7, align 8, !dbg !3603
  %12 = load i8*, i8** %8, align 8, !dbg !3604
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3605
  ret i8* %13, !dbg !3606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3607 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3610, metadata !DIExpression()), !dbg !3611
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3616, metadata !DIExpression()), !dbg !3617
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3620, metadata !DIExpression()), !dbg !3621
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3622
  %13 = load i8*, i8** %7, align 8, !dbg !3623
  %14 = load i8*, i8** %8, align 8, !dbg !3624
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3625
  %15 = load i32, i32* %6, align 4, !dbg !3626
  %16 = load i8*, i8** %9, align 8, !dbg !3627
  %17 = load i64, i64* %10, align 8, !dbg !3628
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3629
  ret i8* %18, !dbg !3630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3631 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3636, metadata !DIExpression()), !dbg !3637
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3638, metadata !DIExpression()), !dbg !3639
  %7 = load i8*, i8** %4, align 8, !dbg !3640
  %8 = load i8*, i8** %5, align 8, !dbg !3641
  %9 = load i8*, i8** %6, align 8, !dbg !3642
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3643
  ret i8* %10, !dbg !3644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3645 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3648, metadata !DIExpression()), !dbg !3649
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3650, metadata !DIExpression()), !dbg !3651
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3654, metadata !DIExpression()), !dbg !3655
  %9 = load i8*, i8** %5, align 8, !dbg !3656
  %10 = load i8*, i8** %6, align 8, !dbg !3657
  %11 = load i8*, i8** %7, align 8, !dbg !3658
  %12 = load i64, i64* %8, align 8, !dbg !3659
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3660
  ret i8* %13, !dbg !3661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3662 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3665, metadata !DIExpression()), !dbg !3666
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3669, metadata !DIExpression()), !dbg !3670
  %7 = load i32, i32* %4, align 4, !dbg !3671
  %8 = load i8*, i8** %5, align 8, !dbg !3672
  %9 = load i64, i64* %6, align 8, !dbg !3673
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3674
  ret i8* %10, !dbg !3675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3676 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3679, metadata !DIExpression()), !dbg !3680
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3681, metadata !DIExpression()), !dbg !3682
  %5 = load i8*, i8** %3, align 8, !dbg !3683
  %6 = load i64, i64* %4, align 8, !dbg !3684
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3685
  ret i8* %7, !dbg !3686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3687 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3690, metadata !DIExpression()), !dbg !3691
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3692, metadata !DIExpression()), !dbg !3693
  %5 = load i32, i32* %3, align 4, !dbg !3694
  %6 = load i8*, i8** %4, align 8, !dbg !3695
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3696
  ret i8* %7, !dbg !3697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3698 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3701, metadata !DIExpression()), !dbg !3702
  %3 = load i8*, i8** %2, align 8, !dbg !3703
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3704
  ret i8* %4, !dbg !3705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3706 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3710, metadata !DIExpression()), !dbg !3711
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3712, metadata !DIExpression()), !dbg !3713
  %5 = load i8*, i8** %3, align 8, !dbg !3714
  %6 = load i8*, i8** %4, align 8, !dbg !3715
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3716
  %8 = icmp ne i32 %7, 0, !dbg !3717
  %9 = xor i1 %8, true, !dbg !3717
  ret i1 %9, !dbg !3718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3719 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3776, metadata !DIExpression()), !dbg !3777
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3778, metadata !DIExpression()), !dbg !3779
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3780, metadata !DIExpression()), !dbg !3781
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3782, metadata !DIExpression()), !dbg !3783
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3784, metadata !DIExpression()), !dbg !3785
  %13 = load i8*, i8** %8, align 8, !dbg !3786
  %14 = icmp ne i8* %13, null, !dbg !3786
  br i1 %14, label %15, label %21, !dbg !3788

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3789
  %17 = load i8*, i8** %8, align 8, !dbg !3790
  %18 = load i8*, i8** %9, align 8, !dbg !3791
  %19 = load i8*, i8** %10, align 8, !dbg !3792
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3793
  br label %26, !dbg !3793

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3794
  %23 = load i8*, i8** %9, align 8, !dbg !3795
  %24 = load i8*, i8** %10, align 8, !dbg !3796
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.159, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3797
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3798
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.161, i64 0, i64 0)) #18, !dbg !3799
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3800
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3801
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3801
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3802
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.163, i64 0, i64 0)) #18, !dbg !3803
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.164, i64 0, i64 0)), !dbg !3804
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3805
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3805
  %37 = load i64, i64* %12, align 8, !dbg !3806
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
  ], !dbg !3807

38:                                               ; preds = %26
  br label %241, !dbg !3808

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3810
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.165, i64 0, i64 0)) #18, !dbg !3811
  %42 = load i8**, i8*** %11, align 8, !dbg !3812
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3812
  %44 = load i8*, i8** %43, align 8, !dbg !3812
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3813
  br label %241, !dbg !3814

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3815
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.166, i64 0, i64 0)) #18, !dbg !3816
  %49 = load i8**, i8*** %11, align 8, !dbg !3817
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3817
  %51 = load i8*, i8** %50, align 8, !dbg !3817
  %52 = load i8**, i8*** %11, align 8, !dbg !3818
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3818
  %54 = load i8*, i8** %53, align 8, !dbg !3818
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3819
  br label %241, !dbg !3820

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3821
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.167, i64 0, i64 0)) #18, !dbg !3822
  %59 = load i8**, i8*** %11, align 8, !dbg !3823
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3823
  %61 = load i8*, i8** %60, align 8, !dbg !3823
  %62 = load i8**, i8*** %11, align 8, !dbg !3824
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3824
  %64 = load i8*, i8** %63, align 8, !dbg !3824
  %65 = load i8**, i8*** %11, align 8, !dbg !3825
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3825
  %67 = load i8*, i8** %66, align 8, !dbg !3825
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3826
  br label %241, !dbg !3827

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3828
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.168, i64 0, i64 0)) #18, !dbg !3829
  %72 = load i8**, i8*** %11, align 8, !dbg !3830
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3830
  %74 = load i8*, i8** %73, align 8, !dbg !3830
  %75 = load i8**, i8*** %11, align 8, !dbg !3831
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3831
  %77 = load i8*, i8** %76, align 8, !dbg !3831
  %78 = load i8**, i8*** %11, align 8, !dbg !3832
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3832
  %80 = load i8*, i8** %79, align 8, !dbg !3832
  %81 = load i8**, i8*** %11, align 8, !dbg !3833
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3833
  %83 = load i8*, i8** %82, align 8, !dbg !3833
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3834
  br label %241, !dbg !3835

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3836
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.169, i64 0, i64 0)) #18, !dbg !3837
  %88 = load i8**, i8*** %11, align 8, !dbg !3838
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3838
  %90 = load i8*, i8** %89, align 8, !dbg !3838
  %91 = load i8**, i8*** %11, align 8, !dbg !3839
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3839
  %93 = load i8*, i8** %92, align 8, !dbg !3839
  %94 = load i8**, i8*** %11, align 8, !dbg !3840
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3840
  %96 = load i8*, i8** %95, align 8, !dbg !3840
  %97 = load i8**, i8*** %11, align 8, !dbg !3841
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3841
  %99 = load i8*, i8** %98, align 8, !dbg !3841
  %100 = load i8**, i8*** %11, align 8, !dbg !3842
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3842
  %102 = load i8*, i8** %101, align 8, !dbg !3842
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3843
  br label %241, !dbg !3844

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3845
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.170, i64 0, i64 0)) #18, !dbg !3846
  %107 = load i8**, i8*** %11, align 8, !dbg !3847
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3847
  %109 = load i8*, i8** %108, align 8, !dbg !3847
  %110 = load i8**, i8*** %11, align 8, !dbg !3848
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3848
  %112 = load i8*, i8** %111, align 8, !dbg !3848
  %113 = load i8**, i8*** %11, align 8, !dbg !3849
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3849
  %115 = load i8*, i8** %114, align 8, !dbg !3849
  %116 = load i8**, i8*** %11, align 8, !dbg !3850
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3850
  %118 = load i8*, i8** %117, align 8, !dbg !3850
  %119 = load i8**, i8*** %11, align 8, !dbg !3851
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3851
  %121 = load i8*, i8** %120, align 8, !dbg !3851
  %122 = load i8**, i8*** %11, align 8, !dbg !3852
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3852
  %124 = load i8*, i8** %123, align 8, !dbg !3852
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3853
  br label %241, !dbg !3854

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3855
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.171, i64 0, i64 0)) #18, !dbg !3856
  %129 = load i8**, i8*** %11, align 8, !dbg !3857
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3857
  %131 = load i8*, i8** %130, align 8, !dbg !3857
  %132 = load i8**, i8*** %11, align 8, !dbg !3858
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3858
  %134 = load i8*, i8** %133, align 8, !dbg !3858
  %135 = load i8**, i8*** %11, align 8, !dbg !3859
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3859
  %137 = load i8*, i8** %136, align 8, !dbg !3859
  %138 = load i8**, i8*** %11, align 8, !dbg !3860
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3860
  %140 = load i8*, i8** %139, align 8, !dbg !3860
  %141 = load i8**, i8*** %11, align 8, !dbg !3861
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3861
  %143 = load i8*, i8** %142, align 8, !dbg !3861
  %144 = load i8**, i8*** %11, align 8, !dbg !3862
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3862
  %146 = load i8*, i8** %145, align 8, !dbg !3862
  %147 = load i8**, i8*** %11, align 8, !dbg !3863
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3863
  %149 = load i8*, i8** %148, align 8, !dbg !3863
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3864
  br label %241, !dbg !3865

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3866
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.172, i64 0, i64 0)) #18, !dbg !3867
  %154 = load i8**, i8*** %11, align 8, !dbg !3868
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3868
  %156 = load i8*, i8** %155, align 8, !dbg !3868
  %157 = load i8**, i8*** %11, align 8, !dbg !3869
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3869
  %159 = load i8*, i8** %158, align 8, !dbg !3869
  %160 = load i8**, i8*** %11, align 8, !dbg !3870
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3870
  %162 = load i8*, i8** %161, align 8, !dbg !3870
  %163 = load i8**, i8*** %11, align 8, !dbg !3871
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3871
  %165 = load i8*, i8** %164, align 8, !dbg !3871
  %166 = load i8**, i8*** %11, align 8, !dbg !3872
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3872
  %168 = load i8*, i8** %167, align 8, !dbg !3872
  %169 = load i8**, i8*** %11, align 8, !dbg !3873
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3873
  %171 = load i8*, i8** %170, align 8, !dbg !3873
  %172 = load i8**, i8*** %11, align 8, !dbg !3874
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3874
  %174 = load i8*, i8** %173, align 8, !dbg !3874
  %175 = load i8**, i8*** %11, align 8, !dbg !3875
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3875
  %177 = load i8*, i8** %176, align 8, !dbg !3875
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3876
  br label %241, !dbg !3877

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3878
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.173, i64 0, i64 0)) #18, !dbg !3879
  %182 = load i8**, i8*** %11, align 8, !dbg !3880
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3880
  %184 = load i8*, i8** %183, align 8, !dbg !3880
  %185 = load i8**, i8*** %11, align 8, !dbg !3881
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3881
  %187 = load i8*, i8** %186, align 8, !dbg !3881
  %188 = load i8**, i8*** %11, align 8, !dbg !3882
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3882
  %190 = load i8*, i8** %189, align 8, !dbg !3882
  %191 = load i8**, i8*** %11, align 8, !dbg !3883
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3883
  %193 = load i8*, i8** %192, align 8, !dbg !3883
  %194 = load i8**, i8*** %11, align 8, !dbg !3884
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3884
  %196 = load i8*, i8** %195, align 8, !dbg !3884
  %197 = load i8**, i8*** %11, align 8, !dbg !3885
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3885
  %199 = load i8*, i8** %198, align 8, !dbg !3885
  %200 = load i8**, i8*** %11, align 8, !dbg !3886
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3886
  %202 = load i8*, i8** %201, align 8, !dbg !3886
  %203 = load i8**, i8*** %11, align 8, !dbg !3887
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3887
  %205 = load i8*, i8** %204, align 8, !dbg !3887
  %206 = load i8**, i8*** %11, align 8, !dbg !3888
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3888
  %208 = load i8*, i8** %207, align 8, !dbg !3888
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3889
  br label %241, !dbg !3890

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3891
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.174, i64 0, i64 0)) #18, !dbg !3892
  %213 = load i8**, i8*** %11, align 8, !dbg !3893
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3893
  %215 = load i8*, i8** %214, align 8, !dbg !3893
  %216 = load i8**, i8*** %11, align 8, !dbg !3894
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3894
  %218 = load i8*, i8** %217, align 8, !dbg !3894
  %219 = load i8**, i8*** %11, align 8, !dbg !3895
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3895
  %221 = load i8*, i8** %220, align 8, !dbg !3895
  %222 = load i8**, i8*** %11, align 8, !dbg !3896
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3896
  %224 = load i8*, i8** %223, align 8, !dbg !3896
  %225 = load i8**, i8*** %11, align 8, !dbg !3897
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3897
  %227 = load i8*, i8** %226, align 8, !dbg !3897
  %228 = load i8**, i8*** %11, align 8, !dbg !3898
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3898
  %230 = load i8*, i8** %229, align 8, !dbg !3898
  %231 = load i8**, i8*** %11, align 8, !dbg !3899
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3899
  %233 = load i8*, i8** %232, align 8, !dbg !3899
  %234 = load i8**, i8*** %11, align 8, !dbg !3900
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3900
  %236 = load i8*, i8** %235, align 8, !dbg !3900
  %237 = load i8**, i8*** %11, align 8, !dbg !3901
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3901
  %239 = load i8*, i8** %238, align 8, !dbg !3901
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3902
  br label %241, !dbg !3903

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3905 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3908, metadata !DIExpression()), !dbg !3909
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3910, metadata !DIExpression()), !dbg !3911
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3912, metadata !DIExpression()), !dbg !3913
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3914, metadata !DIExpression()), !dbg !3915
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3918, metadata !DIExpression()), !dbg !3919
  store i64 0, i64* %11, align 8, !dbg !3920
  br label %12, !dbg !3922

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3923
  %14 = load i64, i64* %11, align 8, !dbg !3925
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3923
  %16 = load i8*, i8** %15, align 8, !dbg !3923
  %17 = icmp ne i8* %16, null, !dbg !3926
  br i1 %17, label %18, label %22, !dbg !3926

18:                                               ; preds = %12
  br label %19, !dbg !3926

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3927
  %21 = add i64 %20, 1, !dbg !3927
  store i64 %21, i64* %11, align 8, !dbg !3927
  br label %12, !dbg !3928, !llvm.loop !3929

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3931
  %24 = load i8*, i8** %7, align 8, !dbg !3932
  %25 = load i8*, i8** %8, align 8, !dbg !3933
  %26 = load i8*, i8** %9, align 8, !dbg !3934
  %27 = load i8**, i8*** %10, align 8, !dbg !3935
  %28 = load i64, i64* %11, align 8, !dbg !3936
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3937
  ret void, !dbg !3938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3939 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3953, metadata !DIExpression()), !dbg !3954
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3965, metadata !DIExpression()), !dbg !3967
  store i64 0, i64* %10, align 8, !dbg !3968
  br label %12, !dbg !3970

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3971
  %14 = icmp ult i64 %13, 10, !dbg !3973
  br i1 %14, label %15, label %38, !dbg !3974

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3975
  %17 = load i32, i32* %16, align 8, !dbg !3975
  %18 = icmp sge i32 %17, 0, !dbg !3975
  br i1 %18, label %27, label %19, !dbg !3975

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3975
  store i32 %20, i32* %16, align 8, !dbg !3975
  %21 = icmp sle i32 %20, 0, !dbg !3975
  br i1 %21, label %22, label %27, !dbg !3975

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3975
  %24 = load i8*, i8** %23, align 8, !dbg !3975
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3975
  %26 = bitcast i8* %25 to i8**, !dbg !3975
  br label %32, !dbg !3975

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3975
  %29 = load i8*, i8** %28, align 8, !dbg !3975
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3975
  store i8* %30, i8** %28, align 8, !dbg !3975
  %31 = bitcast i8* %29 to i8**, !dbg !3975
  br label %32, !dbg !3975

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3975
  %34 = load i8*, i8** %33, align 8, !dbg !3975
  %35 = load i64, i64* %10, align 8, !dbg !3976
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3977
  store i8* %34, i8** %36, align 8, !dbg !3978
  %37 = icmp ne i8* %34, null, !dbg !3979
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3980
  br i1 %39, label %40, label %44, !dbg !3981

40:                                               ; preds = %38
  br label %41, !dbg !3981

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3982
  %43 = add i64 %42, 1, !dbg !3982
  store i64 %43, i64* %10, align 8, !dbg !3982
  br label %12, !dbg !3983, !llvm.loop !3984

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3986
  %46 = load i8*, i8** %7, align 8, !dbg !3987
  %47 = load i8*, i8** %8, align 8, !dbg !3988
  %48 = load i8*, i8** %9, align 8, !dbg !3989
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3990
  %50 = load i64, i64* %10, align 8, !dbg !3991
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3992
  ret void, !dbg !3993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3994 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3997, metadata !DIExpression()), !dbg !3998
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3999, metadata !DIExpression()), !dbg !4000
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4001, metadata !DIExpression()), !dbg !4002
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4003, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4005, metadata !DIExpression()), !dbg !4006
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4007
  call void @llvm.va_start(i8* %11), !dbg !4007
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4008
  %13 = load i8*, i8** %6, align 8, !dbg !4009
  %14 = load i8*, i8** %7, align 8, !dbg !4010
  %15 = load i8*, i8** %8, align 8, !dbg !4011
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4012
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4012
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4012
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4013
  call void @llvm.va_end(i8* %18), !dbg !4013
  ret void, !dbg !4014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4015 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4016
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4016
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.179, i64 0, i64 0)) #18, !dbg !4017
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.180, i64 0, i64 0)), !dbg !4018
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.181, i64 0, i64 0)) #18, !dbg !4019
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.183, i64 0, i64 0)), !dbg !4020
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.184, i64 0, i64 0)) #18, !dbg !4021
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.185, i64 0, i64 0)), !dbg !4022
  ret void, !dbg !4023
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4024 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4030, metadata !DIExpression()), !dbg !4031
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4032, metadata !DIExpression()), !dbg !4033
  %7 = load i8*, i8** %4, align 8, !dbg !4034
  %8 = load i64, i64* %5, align 8, !dbg !4035
  %9 = load i64, i64* %6, align 8, !dbg !4036
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !4037
  ret i8* %10, !dbg !4038
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4039 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4040, metadata !DIExpression()), !dbg !4041
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4042, metadata !DIExpression()), !dbg !4043
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4044, metadata !DIExpression()), !dbg !4045
  %7 = load i8*, i8** %4, align 8, !dbg !4046
  %8 = load i64, i64* %5, align 8, !dbg !4047
  %9 = load i64, i64* %6, align 8, !dbg !4048
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4049
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4050
  ret i8* %11, !dbg !4051
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4052 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4055, metadata !DIExpression()), !dbg !4056
  %3 = load i8*, i8** %2, align 8, !dbg !4057
  %4 = icmp ne i8* %3, null, !dbg !4057
  br i1 %4, label %6, label %5, !dbg !4059

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4060
  unreachable, !dbg !4060

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4061
  ret i8* %7, !dbg !4062
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4063 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4066, metadata !DIExpression()), !dbg !4067
  %3 = load i64, i64* %2, align 8, !dbg !4068
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4069
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4070
  ret i8* %5, !dbg !4071
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4072 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4075, metadata !DIExpression()), !dbg !4076
  %3 = load i64, i64* %2, align 8, !dbg !4077
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4078
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4079
  ret i8* %5, !dbg !4080
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4081 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4084, metadata !DIExpression()), !dbg !4085
  %3 = load i64, i64* %2, align 8, !dbg !4086
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !4086
  ret i8* %4, !dbg !4087
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4088 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4091, metadata !DIExpression()), !dbg !4092
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4093, metadata !DIExpression()), !dbg !4094
  %5 = load i8*, i8** %3, align 8, !dbg !4095
  %6 = load i64, i64* %4, align 8, !dbg !4096
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4097
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4098
  ret i8* %8, !dbg !4099
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4100 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4103, metadata !DIExpression()), !dbg !4104
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4105, metadata !DIExpression()), !dbg !4106
  %5 = load i8*, i8** %3, align 8, !dbg !4107
  %6 = load i64, i64* %4, align 8, !dbg !4108
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4109
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4110
  ret i8* %8, !dbg !4111
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4112 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4115, metadata !DIExpression()), !dbg !4116
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4117, metadata !DIExpression()), !dbg !4118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4119, metadata !DIExpression()), !dbg !4120
  %7 = load i8*, i8** %4, align 8, !dbg !4121
  %8 = load i64, i64* %5, align 8, !dbg !4122
  %9 = load i64, i64* %6, align 8, !dbg !4123
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4124
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4125
  ret i8* %11, !dbg !4126
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4127 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4132, metadata !DIExpression()), !dbg !4133
  %5 = load i64, i64* %3, align 8, !dbg !4134
  %6 = load i64, i64* %4, align 8, !dbg !4135
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4136
  ret i8* %7, !dbg !4137
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4138 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4141, metadata !DIExpression()), !dbg !4142
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4143, metadata !DIExpression()), !dbg !4144
  %5 = load i64, i64* %3, align 8, !dbg !4145
  %6 = load i64, i64* %4, align 8, !dbg !4146
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4147
  ret i8* %7, !dbg !4148
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4149 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4152, metadata !DIExpression()), !dbg !4153
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4154, metadata !DIExpression()), !dbg !4155
  %5 = load i8*, i8** %3, align 8, !dbg !4156
  %6 = load i64*, i64** %4, align 8, !dbg !4157
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4158
  ret i8* %7, !dbg !4159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !274 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4162, metadata !DIExpression()), !dbg !4163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4166, metadata !DIExpression()), !dbg !4167
  %8 = load i64*, i64** %5, align 8, !dbg !4168
  %9 = load i64, i64* %8, align 8, !dbg !4169
  store i64 %9, i64* %7, align 8, !dbg !4167
  %10 = load i8*, i8** %4, align 8, !dbg !4170
  %11 = icmp ne i8* %10, null, !dbg !4170
  br i1 %11, label %26, label %12, !dbg !4172

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4173
  %14 = icmp ne i64 %13, 0, !dbg !4173
  br i1 %14, label %25, label %15, !dbg !4176

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4177
  %17 = udiv i64 128, %16, !dbg !4179
  store i64 %17, i64* %7, align 8, !dbg !4180
  %18 = load i64, i64* %7, align 8, !dbg !4181
  %19 = icmp ne i64 %18, 0, !dbg !4182
  %20 = xor i1 %19, true, !dbg !4182
  %21 = zext i1 %20 to i32, !dbg !4182
  %22 = sext i32 %21 to i64, !dbg !4182
  %23 = load i64, i64* %7, align 8, !dbg !4183
  %24 = add i64 %23, %22, !dbg !4183
  store i64 %24, i64* %7, align 8, !dbg !4183
  br label %25, !dbg !4184

25:                                               ; preds = %15, %12
  br label %36, !dbg !4185

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4186
  %28 = load i64, i64* %7, align 8, !dbg !4186
  %29 = lshr i64 %28, 1, !dbg !4186
  %30 = add i64 %29, 1, !dbg !4186
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4186
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4186
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4186
  store i64 %33, i64* %7, align 8, !dbg !4186
  br i1 %32, label %34, label %35, !dbg !4189

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4190
  unreachable, !dbg !4190

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4191
  %38 = load i64, i64* %7, align 8, !dbg !4192
  %39 = load i64, i64* %6, align 8, !dbg !4193
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !4194
  store i8* %40, i8** %4, align 8, !dbg !4195
  %41 = load i64, i64* %7, align 8, !dbg !4196
  %42 = load i64*, i64** %5, align 8, !dbg !4197
  store i64 %41, i64* %42, align 8, !dbg !4198
  %43 = load i8*, i8** %4, align 8, !dbg !4199
  ret i8* %43, !dbg !4200
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !281 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4205, metadata !DIExpression()), !dbg !4206
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4207, metadata !DIExpression()), !dbg !4208
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4209, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4211, metadata !DIExpression()), !dbg !4212
  %15 = load i64*, i64** %7, align 8, !dbg !4213
  %16 = load i64, i64* %15, align 8, !dbg !4214
  store i64 %16, i64* %11, align 8, !dbg !4212
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4215, metadata !DIExpression()), !dbg !4216
  %17 = load i64, i64* %11, align 8, !dbg !4217
  %18 = load i64, i64* %11, align 8, !dbg !4217
  %19 = ashr i64 %18, 1, !dbg !4217
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4217
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4217
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4217
  store i64 %22, i64* %12, align 8, !dbg !4217
  br i1 %21, label %23, label %24, !dbg !4219

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4220
  br label %24, !dbg !4221

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4222
  %26 = icmp sle i64 0, %25, !dbg !4224
  br i1 %26, label %27, label %33, !dbg !4225

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4226
  %29 = load i64, i64* %12, align 8, !dbg !4227
  %30 = icmp slt i64 %28, %29, !dbg !4228
  br i1 %30, label %31, label %33, !dbg !4229

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4230
  store i64 %32, i64* %12, align 8, !dbg !4231
  br label %33, !dbg !4232

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4235, metadata !DIExpression()), !dbg !4236
  %34 = load i64, i64* %10, align 8, !dbg !4237
  %35 = icmp slt i64 %34, 0, !dbg !4237
  br i1 %35, label %36, label %82, !dbg !4237

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4237
  %38 = icmp slt i64 %37, 0, !dbg !4237
  br i1 %38, label %39, label %62, !dbg !4237

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4237

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4237
  %42 = load i64, i64* %10, align 8, !dbg !4237
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4237
  %44 = icmp slt i64 %41, %43, !dbg !4237
  br i1 %44, label %111, label %115, !dbg !4237

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4237

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4237
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4237
  br i1 %48, label %52, label %53, !dbg !4237

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4237
  %51 = icmp slt i64 0, %50, !dbg !4237
  br i1 %51, label %52, label %53, !dbg !4237

52:                                               ; preds = %49, %46
  br label %57, !dbg !4237

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4237
  %55 = sub nsw i64 0, %54, !dbg !4237
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4237
  br label %57, !dbg !4237

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4237
  %59 = load i64, i64* %12, align 8, !dbg !4237
  %60 = sub nsw i64 -1, %59, !dbg !4237
  %61 = icmp sle i64 %58, %60, !dbg !4237
  br i1 %61, label %111, label %115, !dbg !4237

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4237
  %64 = icmp eq i64 %63, -1, !dbg !4237
  br i1 %64, label %65, label %77, !dbg !4237

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4237

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4237
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4237
  %69 = icmp slt i64 0, %68, !dbg !4237
  br i1 %69, label %111, label %115, !dbg !4237

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4237
  %72 = icmp slt i64 0, %71, !dbg !4237
  br i1 %72, label %73, label %115, !dbg !4237

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4237
  %75 = sub nsw i64 %74, 1, !dbg !4237
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4237
  br i1 %76, label %111, label %115, !dbg !4237

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4237
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4237
  %80 = load i64, i64* %12, align 8, !dbg !4237
  %81 = icmp slt i64 %79, %80, !dbg !4237
  br i1 %81, label %111, label %115, !dbg !4237

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4237
  %84 = icmp eq i64 %83, 0, !dbg !4237
  br i1 %84, label %85, label %86, !dbg !4237

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4237

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4237
  %88 = icmp slt i64 %87, 0, !dbg !4237
  br i1 %88, label %89, label %106, !dbg !4237

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4237
  %91 = icmp eq i64 %90, -1, !dbg !4237
  br i1 %91, label %92, label %101, !dbg !4237

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4237

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4237
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4237
  %96 = icmp slt i64 0, %95, !dbg !4237
  br i1 %96, label %111, label %115, !dbg !4237

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4237
  %99 = sub nsw i64 %98, 1, !dbg !4237
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4237
  br i1 %100, label %111, label %115, !dbg !4237

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4237
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4237
  %104 = load i64, i64* %10, align 8, !dbg !4237
  %105 = icmp slt i64 %103, %104, !dbg !4237
  br i1 %105, label %111, label %115, !dbg !4237

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4237
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4237
  %109 = load i64, i64* %12, align 8, !dbg !4237
  %110 = icmp slt i64 %108, %109, !dbg !4237
  br i1 %110, label %111, label %115, !dbg !4237

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4237
  %113 = load i64, i64* %10, align 8, !dbg !4237
  %114 = mul i64 %112, %113, !dbg !4237
  store i64 %114, i64* %13, align 8, !dbg !4237
  br label %119, !dbg !4237

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4237
  %117 = load i64, i64* %10, align 8, !dbg !4237
  %118 = mul i64 %116, %117, !dbg !4237
  store i64 %118, i64* %13, align 8, !dbg !4237
  br label %119, !dbg !4237

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4237
  %121 = icmp ne i32 %120, 0, !dbg !4237
  br i1 %121, label %122, label %123, !dbg !4237

122:                                              ; preds = %119
  br label %129, !dbg !4237

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4238
  %125 = icmp slt i64 %124, 128, !dbg !4239
  %126 = zext i1 %125 to i64, !dbg !4238
  %127 = select i1 %125, i32 128, i32 0, !dbg !4238
  %128 = sext i32 %127 to i64, !dbg !4238
  br label %129, !dbg !4237

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4237
  store i64 %130, i64* %14, align 8, !dbg !4236
  %131 = load i64, i64* %14, align 8, !dbg !4240
  %132 = icmp ne i64 %131, 0, !dbg !4240
  br i1 %132, label %133, label %142, !dbg !4242

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4243
  %135 = load i64, i64* %10, align 8, !dbg !4245
  %136 = sdiv i64 %134, %135, !dbg !4246
  store i64 %136, i64* %12, align 8, !dbg !4247
  %137 = load i64, i64* %14, align 8, !dbg !4248
  %138 = load i64, i64* %14, align 8, !dbg !4249
  %139 = load i64, i64* %10, align 8, !dbg !4250
  %140 = srem i64 %138, %139, !dbg !4251
  %141 = sub nsw i64 %137, %140, !dbg !4252
  store i64 %141, i64* %13, align 8, !dbg !4253
  br label %142, !dbg !4254

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4255
  %144 = icmp ne i8* %143, null, !dbg !4255
  br i1 %144, label %147, label %145, !dbg !4257

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4258
  store i64 0, i64* %146, align 8, !dbg !4259
  br label %147, !dbg !4260

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4261
  %149 = load i64, i64* %11, align 8, !dbg !4263
  %150 = sub nsw i64 %148, %149, !dbg !4264
  %151 = load i64, i64* %8, align 8, !dbg !4265
  %152 = icmp slt i64 %150, %151, !dbg !4266
  br i1 %152, label %153, label %256, !dbg !4267

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4268
  %155 = load i64, i64* %8, align 8, !dbg !4268
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4268
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4268
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4268
  store i64 %158, i64* %12, align 8, !dbg !4268
  br i1 %157, label %255, label %159, !dbg !4269

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4270
  %161 = icmp sle i64 0, %160, !dbg !4271
  br i1 %161, label %162, label %166, !dbg !4272

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4273
  %164 = load i64, i64* %12, align 8, !dbg !4274
  %165 = icmp slt i64 %163, %164, !dbg !4275
  br i1 %165, label %255, label %166, !dbg !4276

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4277
  %168 = icmp slt i64 %167, 0, !dbg !4277
  br i1 %168, label %169, label %215, !dbg !4277

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4277
  %171 = icmp slt i64 %170, 0, !dbg !4277
  br i1 %171, label %172, label %195, !dbg !4277

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4277

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4277
  %175 = load i64, i64* %10, align 8, !dbg !4277
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4277
  %177 = icmp slt i64 %174, %176, !dbg !4277
  br i1 %177, label %244, label %248, !dbg !4277

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4277

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4277
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4277
  br i1 %181, label %185, label %186, !dbg !4277

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4277
  %184 = icmp slt i64 0, %183, !dbg !4277
  br i1 %184, label %185, label %186, !dbg !4277

185:                                              ; preds = %182, %179
  br label %190, !dbg !4277

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4277
  %188 = sub nsw i64 0, %187, !dbg !4277
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4277
  br label %190, !dbg !4277

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4277
  %192 = load i64, i64* %12, align 8, !dbg !4277
  %193 = sub nsw i64 -1, %192, !dbg !4277
  %194 = icmp sle i64 %191, %193, !dbg !4277
  br i1 %194, label %244, label %248, !dbg !4277

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4277
  %197 = icmp eq i64 %196, -1, !dbg !4277
  br i1 %197, label %198, label %210, !dbg !4277

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4277

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4277
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4277
  %202 = icmp slt i64 0, %201, !dbg !4277
  br i1 %202, label %244, label %248, !dbg !4277

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4277
  %205 = icmp slt i64 0, %204, !dbg !4277
  br i1 %205, label %206, label %248, !dbg !4277

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4277
  %208 = sub nsw i64 %207, 1, !dbg !4277
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4277
  br i1 %209, label %244, label %248, !dbg !4277

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4277
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4277
  %213 = load i64, i64* %12, align 8, !dbg !4277
  %214 = icmp slt i64 %212, %213, !dbg !4277
  br i1 %214, label %244, label %248, !dbg !4277

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4277
  %217 = icmp eq i64 %216, 0, !dbg !4277
  br i1 %217, label %218, label %219, !dbg !4277

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4277

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4277
  %221 = icmp slt i64 %220, 0, !dbg !4277
  br i1 %221, label %222, label %239, !dbg !4277

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4277
  %224 = icmp eq i64 %223, -1, !dbg !4277
  br i1 %224, label %225, label %234, !dbg !4277

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4277

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4277
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4277
  %229 = icmp slt i64 0, %228, !dbg !4277
  br i1 %229, label %244, label %248, !dbg !4277

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4277
  %232 = sub nsw i64 %231, 1, !dbg !4277
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4277
  br i1 %233, label %244, label %248, !dbg !4277

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4277
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4277
  %237 = load i64, i64* %10, align 8, !dbg !4277
  %238 = icmp slt i64 %236, %237, !dbg !4277
  br i1 %238, label %244, label %248, !dbg !4277

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4277
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4277
  %242 = load i64, i64* %12, align 8, !dbg !4277
  %243 = icmp slt i64 %241, %242, !dbg !4277
  br i1 %243, label %244, label %248, !dbg !4277

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4277
  %246 = load i64, i64* %10, align 8, !dbg !4277
  %247 = mul i64 %245, %246, !dbg !4277
  store i64 %247, i64* %13, align 8, !dbg !4277
  br label %252, !dbg !4277

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4277
  %250 = load i64, i64* %10, align 8, !dbg !4277
  %251 = mul i64 %249, %250, !dbg !4277
  store i64 %251, i64* %13, align 8, !dbg !4277
  br label %252, !dbg !4277

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4277
  %254 = icmp ne i32 %253, 0, !dbg !4277
  br i1 %254, label %255, label %256, !dbg !4278

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4279
  unreachable, !dbg !4279

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4280
  %258 = load i64, i64* %13, align 8, !dbg !4281
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !4282
  store i8* %259, i8** %6, align 8, !dbg !4283
  %260 = load i64, i64* %12, align 8, !dbg !4284
  %261 = load i64*, i64** %7, align 8, !dbg !4285
  store i64 %260, i64* %261, align 8, !dbg !4286
  %262 = load i8*, i8** %6, align 8, !dbg !4287
  ret i8* %262, !dbg !4288
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4289 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4290, metadata !DIExpression()), !dbg !4291
  %3 = load i64, i64* %2, align 8, !dbg !4292
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4293
  ret i8* %4, !dbg !4294
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4295 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4296, metadata !DIExpression()), !dbg !4297
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4298, metadata !DIExpression()), !dbg !4299
  %5 = load i64, i64* %3, align 8, !dbg !4300
  %6 = load i64, i64* %4, align 8, !dbg !4301
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4302
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4303
  ret i8* %8, !dbg !4304
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4305 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4306, metadata !DIExpression()), !dbg !4307
  %3 = load i64, i64* %2, align 8, !dbg !4308
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4309
  ret i8* %4, !dbg !4310
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4311 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4312, metadata !DIExpression()), !dbg !4313
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4314, metadata !DIExpression()), !dbg !4315
  %5 = load i64, i64* %3, align 8, !dbg !4316
  %6 = load i64, i64* %4, align 8, !dbg !4317
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4318
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4319
  ret i8* %8, !dbg !4320
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4321 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4326, metadata !DIExpression()), !dbg !4327
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4328, metadata !DIExpression()), !dbg !4329
  %5 = load i64, i64* %4, align 8, !dbg !4330
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !4331
  %7 = load i8*, i8** %3, align 8, !dbg !4332
  %8 = load i64, i64* %4, align 8, !dbg !4333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4334
  ret i8* %6, !dbg !4335
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4336 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4339, metadata !DIExpression()), !dbg !4340
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4341, metadata !DIExpression()), !dbg !4342
  %5 = load i64, i64* %4, align 8, !dbg !4343
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !4344
  %7 = load i8*, i8** %3, align 8, !dbg !4345
  %8 = load i64, i64* %4, align 8, !dbg !4346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4347
  ret i8* %6, !dbg !4348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4349 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4356, metadata !DIExpression()), !dbg !4357
  %6 = load i64, i64* %4, align 8, !dbg !4358
  %7 = add nsw i64 %6, 1, !dbg !4359
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !4360
  store i8* %8, i8** %5, align 8, !dbg !4357
  %9 = load i8*, i8** %5, align 8, !dbg !4361
  %10 = load i64, i64* %4, align 8, !dbg !4362
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4361
  store i8 0, i8* %11, align 1, !dbg !4363
  %12 = load i8*, i8** %5, align 8, !dbg !4364
  %13 = load i8*, i8** %3, align 8, !dbg !4365
  %14 = load i64, i64* %4, align 8, !dbg !4366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4367
  ret i8* %12, !dbg !4368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4369 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4370, metadata !DIExpression()), !dbg !4371
  %3 = load i8*, i8** %2, align 8, !dbg !4372
  %4 = load i8*, i8** %2, align 8, !dbg !4373
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4374
  %6 = add i64 %5, 1, !dbg !4375
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !4376
  ret i8* %7, !dbg !4377
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4378 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4379, metadata !DIExpression()), !dbg !4382
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4382
  store i32 %2, i32* %1, align 4, !dbg !4382
  %3 = load i32, i32* %1, align 4, !dbg !4382
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.196, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.197, i64 0, i64 0)) #18, !dbg !4382
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i64 0, i64 0), i8* noundef %4), !dbg !4382
  %5 = load i32, i32* %1, align 4, !dbg !4382
  %6 = icmp ne i32 %5, 0, !dbg !4382
  br i1 %6, label %7, label %9, !dbg !4382

7:                                                ; preds = %0
  unreachable, !dbg !4382

8:                                                ; No predecessors!
  br label %10, !dbg !4382

9:                                                ; preds = %0
  br label %10, !dbg !4382

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4383
  unreachable, !dbg !4383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4384 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4390, metadata !DIExpression()), !dbg !4391
  %3 = load i32, i32* %2, align 4, !dbg !4392
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !4393
  ret i32 %4, !dbg !4394
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4395 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4434, metadata !DIExpression()), !dbg !4436
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4437
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !4438
  %9 = icmp ne i64 %8, 0, !dbg !4439
  %10 = zext i1 %9 to i8, !dbg !4436
  store i8 %10, i8* %4, align 1, !dbg !4436
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4440, metadata !DIExpression()), !dbg !4441
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4442
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !4442
  %13 = icmp ne i32 %12, 0, !dbg !4443
  %14 = zext i1 %13 to i8, !dbg !4441
  store i8 %14, i8* %5, align 1, !dbg !4441
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4444, metadata !DIExpression()), !dbg !4445
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4446
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4447
  %17 = icmp ne i32 %16, 0, !dbg !4448
  %18 = zext i1 %17 to i8, !dbg !4445
  store i8 %18, i8* %6, align 1, !dbg !4445
  %19 = load i8, i8* %5, align 1, !dbg !4449
  %20 = trunc i8 %19 to i1, !dbg !4449
  br i1 %20, label %31, label %21, !dbg !4451

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4452
  %23 = trunc i8 %22 to i1, !dbg !4452
  br i1 %23, label %24, label %37, !dbg !4453

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4454
  %26 = trunc i8 %25 to i1, !dbg !4454
  br i1 %26, label %31, label %27, !dbg !4455

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !4456
  %29 = load i32, i32* %28, align 4, !dbg !4456
  %30 = icmp ne i32 %29, 9, !dbg !4457
  br i1 %30, label %31, label %37, !dbg !4458

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4459
  %33 = trunc i8 %32 to i1, !dbg !4459
  br i1 %33, label %36, label %34, !dbg !4462

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !4463
  store i32 0, i32* %35, align 4, !dbg !4464
  br label %36, !dbg !4463

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4465
  br label %38, !dbg !4465

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4466
  br label %38, !dbg !4466

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4467
  ret i32 %39, !dbg !4467
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4468 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4507, metadata !DIExpression()), !dbg !4508
  store i32 0, i32* %4, align 4, !dbg !4508
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4509, metadata !DIExpression()), !dbg !4510
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4511
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !4512
  store i32 %8, i32* %5, align 4, !dbg !4510
  %9 = load i32, i32* %5, align 4, !dbg !4513
  %10 = icmp slt i32 %9, 0, !dbg !4515
  br i1 %10, label %11, label %14, !dbg !4516

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4517
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4518
  store i32 %13, i32* %2, align 4, !dbg !4519
  br label %40, !dbg !4519

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4520
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4520
  %17 = icmp ne i32 %16, 0, !dbg !4520
  br i1 %17, label %18, label %23, !dbg !4522

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4523
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4524
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4525
  %22 = icmp ne i64 %21, -1, !dbg !4526
  br i1 %22, label %23, label %30, !dbg !4527

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4528
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4529
  %26 = icmp ne i32 %25, 0, !dbg !4529
  br i1 %26, label %27, label %30, !dbg !4530

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4531
  %29 = load i32, i32* %28, align 4, !dbg !4531
  store i32 %29, i32* %4, align 4, !dbg !4532
  br label %30, !dbg !4533

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4534, metadata !DIExpression()), !dbg !4535
  store i32 0, i32* %6, align 4, !dbg !4535
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4536
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4537
  store i32 %32, i32* %6, align 4, !dbg !4538
  %33 = load i32, i32* %4, align 4, !dbg !4539
  %34 = icmp ne i32 %33, 0, !dbg !4541
  br i1 %34, label %35, label %38, !dbg !4542

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4543
  %37 = call i32* @__errno_location() #21, !dbg !4545
  store i32 %36, i32* %37, align 4, !dbg !4546
  store i32 -1, i32* %6, align 4, !dbg !4547
  br label %38, !dbg !4548

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4549
  store i32 %39, i32* %2, align 4, !dbg !4550
  br label %40, !dbg !4550

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4551
  ret i32 %41, !dbg !4551
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4552 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4589, metadata !DIExpression()), !dbg !4590
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4591
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4593
  br i1 %5, label %10, label %6, !dbg !4594

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4595
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4595
  %9 = icmp ne i32 %8, 0, !dbg !4595
  br i1 %9, label %13, label %10, !dbg !4596

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4597
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4598
  store i32 %12, i32* %2, align 4, !dbg !4599
  br label %17, !dbg !4599

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4600
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4601
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4602
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4603
  store i32 %16, i32* %2, align 4, !dbg !4604
  br label %17, !dbg !4604

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4605
  ret i32 %18, !dbg !4605
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4606 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4609, metadata !DIExpression()), !dbg !4610
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4611
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4613
  %5 = load i32, i32* %4, align 8, !dbg !4613
  %6 = and i32 %5, 256, !dbg !4614
  %7 = icmp ne i32 %6, 0, !dbg !4614
  br i1 %7, label %8, label %11, !dbg !4615

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4616
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4617
  br label %11, !dbg !4617

11:                                               ; preds = %8, %1
  ret void, !dbg !4618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4619 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4657, metadata !DIExpression()), !dbg !4658
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4661, metadata !DIExpression()), !dbg !4662
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4663
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4665
  %11 = load i8*, i8** %10, align 8, !dbg !4665
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4666
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4667
  %14 = load i8*, i8** %13, align 8, !dbg !4667
  %15 = icmp eq i8* %11, %14, !dbg !4668
  br i1 %15, label %16, label %46, !dbg !4669

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4670
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4671
  %19 = load i8*, i8** %18, align 8, !dbg !4671
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4672
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4673
  %22 = load i8*, i8** %21, align 8, !dbg !4673
  %23 = icmp eq i8* %19, %22, !dbg !4674
  br i1 %23, label %24, label %46, !dbg !4675

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4676
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4677
  %27 = load i8*, i8** %26, align 8, !dbg !4677
  %28 = icmp eq i8* %27, null, !dbg !4678
  br i1 %28, label %29, label %46, !dbg !4679

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4680, metadata !DIExpression()), !dbg !4682
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4683
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4684
  %32 = load i64, i64* %6, align 8, !dbg !4685
  %33 = load i32, i32* %7, align 4, !dbg !4686
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4687
  store i64 %34, i64* %8, align 8, !dbg !4682
  %35 = load i64, i64* %8, align 8, !dbg !4688
  %36 = icmp eq i64 %35, -1, !dbg !4690
  br i1 %36, label %37, label %38, !dbg !4691

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4692
  br label %51, !dbg !4692

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4694
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4695
  %41 = load i32, i32* %40, align 8, !dbg !4696
  %42 = and i32 %41, -17, !dbg !4696
  store i32 %42, i32* %40, align 8, !dbg !4696
  %43 = load i64, i64* %8, align 8, !dbg !4697
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4698
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4699
  store i64 %43, i64* %45, align 8, !dbg !4700
  store i32 0, i32* %4, align 4, !dbg !4701
  br label %51, !dbg !4701

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4702
  %48 = load i64, i64* %6, align 8, !dbg !4703
  %49 = load i32, i32* %7, align 4, !dbg !4704
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4705
  store i32 %50, i32* %4, align 4, !dbg !4706
  br label %51, !dbg !4706

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4707
  ret i32 %52, !dbg !4707
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4708 {
  %1 = call i32* @__errno_location() #21, !dbg !4711
  store i32 12, i32* %1, align 4, !dbg !4712
  ret i8* null, !dbg !4713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4714 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4715, metadata !DIExpression()), !dbg !4716
  %3 = load i64, i64* %2, align 8, !dbg !4717
  %4 = icmp ule i64 %3, -1, !dbg !4718
  br i1 %4, label %5, label %8, !dbg !4717

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4719
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4720
  br label %10, !dbg !4717

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4721
  br label %10, !dbg !4717

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4717
  ret i8* %11, !dbg !4722
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4723 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4724, metadata !DIExpression()), !dbg !4725
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4726, metadata !DIExpression()), !dbg !4727
  %5 = load i64, i64* %4, align 8, !dbg !4728
  %6 = icmp ule i64 %5, -1, !dbg !4729
  br i1 %6, label %7, label %11, !dbg !4728

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4730
  %9 = load i64, i64* %4, align 8, !dbg !4731
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4732
  br label %13, !dbg !4728

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4733
  br label %13, !dbg !4728

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4728
  ret i8* %14, !dbg !4734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4735 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4736, metadata !DIExpression()), !dbg !4737
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4738, metadata !DIExpression()), !dbg !4739
  %6 = load i64, i64* %4, align 8, !dbg !4740
  %7 = icmp ult i64 -1, %6, !dbg !4742
  br i1 %7, label %8, label %14, !dbg !4743

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4744
  %10 = icmp ne i64 %9, 0, !dbg !4747
  br i1 %10, label %11, label %13, !dbg !4748

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4749
  store i8* %12, i8** %3, align 8, !dbg !4750
  br label %27, !dbg !4750

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4751
  br label %14, !dbg !4752

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4753
  %16 = icmp ult i64 -1, %15, !dbg !4755
  br i1 %16, label %17, label %23, !dbg !4756

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4757
  %19 = icmp ne i64 %18, 0, !dbg !4760
  br i1 %19, label %20, label %22, !dbg !4761

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4762
  store i8* %21, i8** %3, align 8, !dbg !4763
  br label %27, !dbg !4763

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4764
  br label %23, !dbg !4765

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4766
  %25 = load i64, i64* %5, align 8, !dbg !4767
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4768
  store i8* %26, i8** %3, align 8, !dbg !4769
  br label %27, !dbg !4769

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4770
  ret i8* %28, !dbg !4770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4771 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4772, metadata !DIExpression()), !dbg !4773
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4776, metadata !DIExpression()), !dbg !4777
  %7 = load i64, i64* %5, align 8, !dbg !4778
  %8 = icmp ule i64 %7, -1, !dbg !4779
  br i1 %8, label %9, label %17, !dbg !4780

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4781
  %11 = icmp ule i64 %10, -1, !dbg !4782
  br i1 %11, label %12, label %17, !dbg !4778

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4783
  %14 = load i64, i64* %5, align 8, !dbg !4784
  %15 = load i64, i64* %6, align 8, !dbg !4785
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4786
  br label %19, !dbg !4778

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4787
  br label %19, !dbg !4778

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4778
  ret i8* %20, !dbg !4788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4789 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4794, metadata !DIExpression()), !dbg !4795
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4796, metadata !DIExpression()), !dbg !4797
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4798, metadata !DIExpression()), !dbg !4799
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4800, metadata !DIExpression()), !dbg !4801
  %11 = load i8*, i8** %7, align 8, !dbg !4802
  %12 = icmp eq i8* %11, null, !dbg !4804
  br i1 %12, label %13, label %14, !dbg !4805

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4806
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), i8** %7, align 8, !dbg !4808
  store i64 1, i64* %8, align 8, !dbg !4809
  br label %14, !dbg !4810

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4811
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4813
  br i1 %16, label %17, label %18, !dbg !4814

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4815
  br label %18, !dbg !4816

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4817, metadata !DIExpression()), !dbg !4818
  %19 = load i32*, i32** %6, align 8, !dbg !4819
  %20 = load i8*, i8** %7, align 8, !dbg !4820
  %21 = load i64, i64* %8, align 8, !dbg !4821
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4822
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4823
  store i64 %23, i64* %10, align 8, !dbg !4818
  %24 = load i64, i64* %10, align 8, !dbg !4824
  %25 = icmp ult i64 %24, -3, !dbg !4826
  br i1 %25, label %26, label %32, !dbg !4827

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4828
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4829
  %29 = icmp ne i32 %28, 0, !dbg !4829
  br i1 %29, label %32, label %30, !dbg !4830

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4831
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4832
  br label %32, !dbg !4832

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4833
  %34 = icmp eq i64 %33, -3, !dbg !4835
  br i1 %34, label %35, label %36, !dbg !4836

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4837
  unreachable, !dbg !4837

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4838
  %38 = icmp ule i64 -2, %37, !dbg !4840
  br i1 %38, label %39, label %53, !dbg !4841

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4842
  %41 = icmp ne i64 %40, 0, !dbg !4843
  br i1 %41, label %42, label %53, !dbg !4844

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4845
  br i1 %43, label %53, label %44, !dbg !4846

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4847
  %46 = icmp ne i32* %45, null, !dbg !4850
  br i1 %46, label %47, label %52, !dbg !4851

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4852
  %49 = load i8, i8* %48, align 1, !dbg !4853
  %50 = zext i8 %49 to i32, !dbg !4854
  %51 = load i32*, i32** %6, align 8, !dbg !4855
  store i32 %50, i32* %51, align 4, !dbg !4856
  br label %52, !dbg !4857

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4858
  br label %55, !dbg !4858

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4859
  store i64 %54, i64* %5, align 8, !dbg !4860
  br label %55, !dbg !4860

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4861
  ret i64 %56, !dbg !4861
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4862 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4877, metadata !DIExpression()), !dbg !4878
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4879
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4880
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4880
  ret void, !dbg !4881
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4882 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4887, metadata !DIExpression()), !dbg !4888
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4889, metadata !DIExpression()), !dbg !4890
  %7 = load i8*, i8** %4, align 8, !dbg !4891
  %8 = load i8*, i8** %5, align 8, !dbg !4892
  %9 = load i64, i64* %6, align 8, !dbg !4893
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4894
  %11 = icmp ne i32 %10, 0, !dbg !4895
  %12 = xor i1 %11, true, !dbg !4895
  ret i1 %12, !dbg !4896
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4897 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4899, metadata !DIExpression()), !dbg !4900
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4901, metadata !DIExpression()), !dbg !4902
  %5 = load i8*, i8** %3, align 8, !dbg !4903
  %6 = load i64, i64* %4, align 8, !dbg !4904
  %7 = icmp ne i64 %6, 0, !dbg !4904
  br i1 %7, label %8, label %10, !dbg !4904

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4905
  br label %11, !dbg !4904

10:                                               ; preds = %2
  br label %11, !dbg !4904

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4904
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4906
  ret i8* %13, !dbg !4907
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4908 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4909, metadata !DIExpression()), !dbg !4910
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4911, metadata !DIExpression()), !dbg !4912
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4915, metadata !DIExpression()), !dbg !4916
  %9 = load i64, i64* %7, align 8, !dbg !4917
  %10 = icmp ult i64 %9, 0, !dbg !4917
  br i1 %10, label %11, label %60, !dbg !4917

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4917
  %13 = icmp ult i64 %12, 0, !dbg !4917
  br i1 %13, label %14, label %37, !dbg !4917

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4917

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4917
  %17 = load i64, i64* %7, align 8, !dbg !4917
  %18 = udiv i64 -1, %17, !dbg !4917
  %19 = icmp ult i64 %16, %18, !dbg !4917
  br i1 %19, label %92, label %96, !dbg !4917

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4917

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4917
  %23 = icmp ult i64 %22, 1, !dbg !4917
  br i1 %23, label %27, label %28, !dbg !4917

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4917
  %26 = icmp ult i64 0, %25, !dbg !4917
  br i1 %26, label %27, label %28, !dbg !4917

27:                                               ; preds = %24, %21
  br label %32, !dbg !4917

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4917
  %30 = sub i64 0, %29, !dbg !4917
  %31 = udiv i64 -1, %30, !dbg !4917
  br label %32, !dbg !4917

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4917
  %34 = load i64, i64* %6, align 8, !dbg !4917
  %35 = sub i64 -1, %34, !dbg !4917
  %36 = icmp ule i64 %33, %35, !dbg !4917
  br i1 %36, label %92, label %96, !dbg !4917

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4917

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4917

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4917

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4917
  %42 = icmp eq i64 %41, -1, !dbg !4917
  br i1 %42, label %43, label %55, !dbg !4917

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4917

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4917
  %46 = add i64 %45, 0, !dbg !4917
  %47 = icmp ult i64 0, %46, !dbg !4917
  br i1 %47, label %92, label %96, !dbg !4917

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4917
  %50 = icmp ult i64 0, %49, !dbg !4917
  br i1 %50, label %51, label %96, !dbg !4917

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4917
  %53 = sub i64 %52, 1, !dbg !4917
  %54 = icmp ult i64 -1, %53, !dbg !4917
  br i1 %54, label %92, label %96, !dbg !4917

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4917
  %57 = udiv i64 0, %56, !dbg !4917
  %58 = load i64, i64* %6, align 8, !dbg !4917
  %59 = icmp ult i64 %57, %58, !dbg !4917
  br i1 %59, label %92, label %96, !dbg !4917

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4917
  %62 = icmp eq i64 %61, 0, !dbg !4917
  br i1 %62, label %63, label %64, !dbg !4917

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4917

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4917
  %66 = icmp ult i64 %65, 0, !dbg !4917
  br i1 %66, label %67, label %87, !dbg !4917

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4917

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4917

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4917

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4917
  %72 = icmp eq i64 %71, -1, !dbg !4917
  br i1 %72, label %73, label %82, !dbg !4917

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4917

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4917
  %76 = add i64 %75, 0, !dbg !4917
  %77 = icmp ult i64 0, %76, !dbg !4917
  br i1 %77, label %92, label %96, !dbg !4917

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4917
  %80 = sub i64 %79, 1, !dbg !4917
  %81 = icmp ult i64 -1, %80, !dbg !4917
  br i1 %81, label %92, label %96, !dbg !4917

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4917
  %84 = udiv i64 0, %83, !dbg !4917
  %85 = load i64, i64* %7, align 8, !dbg !4917
  %86 = icmp ult i64 %84, %85, !dbg !4917
  br i1 %86, label %92, label %96, !dbg !4917

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4917
  %89 = udiv i64 -1, %88, !dbg !4917
  %90 = load i64, i64* %6, align 8, !dbg !4917
  %91 = icmp ult i64 %89, %90, !dbg !4917
  br i1 %91, label %92, label %96, !dbg !4917

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4917
  %94 = load i64, i64* %7, align 8, !dbg !4917
  %95 = mul i64 %93, %94, !dbg !4917
  store i64 %95, i64* %8, align 8, !dbg !4917
  br label %100, !dbg !4917

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4917
  %98 = load i64, i64* %7, align 8, !dbg !4917
  %99 = mul i64 %97, %98, !dbg !4917
  store i64 %99, i64* %8, align 8, !dbg !4917
  br label %100, !dbg !4917

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4917
  %102 = icmp ne i32 %101, 0, !dbg !4917
  br i1 %102, label %103, label %105, !dbg !4919

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4920
  store i32 12, i32* %104, align 4, !dbg !4922
  store i8* null, i8** %4, align 8, !dbg !4923
  br label %109, !dbg !4923

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4924
  %107 = load i64, i64* %8, align 8, !dbg !4925
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4926
  store i8* %108, i8** %4, align 8, !dbg !4927
  br label %109, !dbg !4927

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4928
  ret i8* %110, !dbg !4928
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4929 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4934, metadata !DIExpression()), !dbg !4938
  %5 = load i32, i32* %3, align 4, !dbg !4939
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4941
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4942
  %8 = icmp ne i32 %7, 0, !dbg !4942
  br i1 %8, label %9, label %10, !dbg !4943

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4944
  br label %18, !dbg !4944

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4945
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i64 0, i64 0)), !dbg !4947
  br i1 %12, label %17, label %13, !dbg !4948

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4949
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.231, i64 0, i64 0)), !dbg !4950
  br i1 %15, label %17, label %16, !dbg !4951

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4952
  br label %18, !dbg !4952

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4953
  br label %18, !dbg !4953

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4954
  ret i1 %19, !dbg !4954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4955 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4958, metadata !DIExpression()), !dbg !4959
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4960, metadata !DIExpression()), !dbg !4961
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4962, metadata !DIExpression()), !dbg !4963
  %7 = load i32, i32* %4, align 4, !dbg !4964
  %8 = load i8*, i8** %5, align 8, !dbg !4965
  %9 = load i64, i64* %6, align 8, !dbg !4966
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4967
  ret i32 %10, !dbg !4968
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4969 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4972, metadata !DIExpression()), !dbg !4973
  %3 = load i32, i32* %2, align 4, !dbg !4974
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4975
  ret i8* %4, !dbg !4976
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4977 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4978, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4980, metadata !DIExpression()), !dbg !4981
  %4 = load i32, i32* %2, align 4, !dbg !4982
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4983
  store i8* %5, i8** %3, align 8, !dbg !4981
  %6 = load i8*, i8** %3, align 8, !dbg !4984
  ret i8* %6, !dbg !4985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4986 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4991, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4993, metadata !DIExpression()), !dbg !4994
  %10 = load i32, i32* %5, align 4, !dbg !4995
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4996
  store i8* %11, i8** %8, align 8, !dbg !4994
  %12 = load i8*, i8** %8, align 8, !dbg !4997
  %13 = icmp eq i8* %12, null, !dbg !4999
  br i1 %13, label %14, label %21, !dbg !5000

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5001
  %16 = icmp ugt i64 %15, 0, !dbg !5004
  br i1 %16, label %17, label %20, !dbg !5005

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5006
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5006
  store i8 0, i8* %19, align 1, !dbg !5007
  br label %20, !dbg !5006

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5008
  br label %45, !dbg !5008

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5009, metadata !DIExpression()), !dbg !5011
  %22 = load i8*, i8** %8, align 8, !dbg !5012
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !5013
  store i64 %23, i64* %9, align 8, !dbg !5011
  %24 = load i64, i64* %9, align 8, !dbg !5014
  %25 = load i64, i64* %7, align 8, !dbg !5016
  %26 = icmp ult i64 %24, %25, !dbg !5017
  br i1 %26, label %27, label %32, !dbg !5018

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5019
  %29 = load i8*, i8** %8, align 8, !dbg !5021
  %30 = load i64, i64* %9, align 8, !dbg !5022
  %31 = add i64 %30, 1, !dbg !5023
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5024
  store i32 0, i32* %4, align 4, !dbg !5025
  br label %45, !dbg !5025

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5026
  %34 = icmp ugt i64 %33, 0, !dbg !5029
  br i1 %34, label %35, label %44, !dbg !5030

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5031
  %37 = load i8*, i8** %8, align 8, !dbg !5033
  %38 = load i64, i64* %7, align 8, !dbg !5034
  %39 = sub i64 %38, 1, !dbg !5035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5036
  %40 = load i8*, i8** %6, align 8, !dbg !5037
  %41 = load i64, i64* %7, align 8, !dbg !5038
  %42 = sub i64 %41, 1, !dbg !5039
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5037
  store i8 0, i8* %43, align 1, !dbg !5040
  br label %44, !dbg !5041

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5042
  br label %45, !dbg !5042

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5043
  ret i32 %46, !dbg !5043
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

!llvm.dbg.cu = !{!212, !2, !251, !254, !13, !187, !256, !258, !260, !51, !68, !79, !86, !262, !264, !179, !270, !289, !291, !293, !295, !297, !299, !301, !193, !303, !305, !307, !309, !312, !314, !316}
!llvm.ident = !{!318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file_name", scope: !2, file: !3, line: 45, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !2, file: !3, line: 55, type: !7, isLocal: true, isDefinition: true)
!7 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !13, file: !14, line: 66, type: !46, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !17, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!18, !40, !11, !42, !44}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "old_file_name", scope: !20, file: !14, line: 304, type: !8, isLocal: true, isDefinition: true)
!20 = distinct !DISubprogram(name: "verror_at_line", scope: !14, file: !14, line: 298, type: !21, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !39)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !23, !8, !24, !8, !25}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !26, line: 52, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !28, line: 32, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !30, baseType: !31)
!30 = !DIFile(filename: "lib/error.c", directory: "/src")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !32, size: 256, elements: !33)
!32 = !DINamespace(name: "std", scope: null)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !31, file: !30, baseType: !16, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !31, file: !30, baseType: !16, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !31, file: !30, baseType: !16, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !31, file: !30, baseType: !23, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !31, file: !30, baseType: !23, size: 32, offset: 224)
!39 = !{}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "old_line_number", scope: !20, file: !14, line: 305, type: !24, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "error_message_count", scope: !13, file: !14, line: 69, type: !24, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !13, file: !14, line: 295, type: !23, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "long_options", scope: !51, file: !52, line: 34, type: !54, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !53, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!53 = !{!49}
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 768, elements: !64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !57, line: 50, size: 256, elements: !58)
!57 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!58 = !{!59, !60, !61, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 52, baseType: !8, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !56, file: !57, line: 55, baseType: !23, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !56, file: !57, line: 56, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !57, line: 57, baseType: !23, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "program_name", scope: !68, file: !69, line: 31, type: !8, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, globals: !72, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!72 = !{!66}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "utf07FF", scope: !75, file: !76, line: 46, type: !81, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "proper_name_lite", scope: !76, file: !76, line: 38, type: !77, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !39)
!76 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!77 = !DISubroutineType(types: !78)
!78 = !{!8, !8, !8}
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !80, splitDebugInlining: false, nameTableKind: None)
!80 = !{!73}
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !86, file: !87, line: 76, type: !173, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !123, globals: !128, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!88 = !{!89, !103, !108}
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !90, line: 42, baseType: !24, size: 32, elements: !91)
!90 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!92 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!93 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!94 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!95 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!96 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!97 = !DIEnumerator(name: "c_quoting_style", value: 5)
!98 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!99 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!100 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!101 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!102 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !90, line: 254, baseType: !24, size: 32, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!106 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!107 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 46, baseType: !24, size: 32, elements: !110)
!109 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!111 = !DIEnumerator(name: "_ISupper", value: 256)
!112 = !DIEnumerator(name: "_ISlower", value: 512)
!113 = !DIEnumerator(name: "_ISalpha", value: 1024)
!114 = !DIEnumerator(name: "_ISdigit", value: 2048)
!115 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!116 = !DIEnumerator(name: "_ISspace", value: 8192)
!117 = !DIEnumerator(name: "_ISprint", value: 16384)
!118 = !DIEnumerator(name: "_ISgraph", value: 32768)
!119 = !DIEnumerator(name: "_ISblank", value: 1)
!120 = !DIEnumerator(name: "_IScntrl", value: 2)
!121 = !DIEnumerator(name: "_ISpunct", value: 4)
!122 = !DIEnumerator(name: "_ISalnum", value: 8)
!123 = !{!23, !124, !125}
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 46, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!127 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!128 = !{!84, !129, !135, !147, !149, !154, !162, !169, !171}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !86, file: !87, line: 92, type: !131, isLocal: false, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 320, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!133 = !{!134}
!134 = !DISubrange(count: 10)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !86, file: !87, line: 1040, type: !137, isLocal: false, isDefinition: true)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !87, line: 56, size: 448, elements: !138)
!138 = !{!139, !140, !141, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !137, file: !87, line: 59, baseType: !89, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !87, line: 62, baseType: !23, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !137, file: !87, line: 66, baseType: !142, size: 256, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !137, file: !87, line: 69, baseType: !8, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !137, file: !87, line: 72, baseType: !8, size: 64, offset: 384)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !86, file: !87, line: 107, type: !137, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "slot0", scope: !86, file: !87, line: 831, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 256)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quote", scope: !156, file: !87, line: 228, type: !159, isLocal: true, isDefinition: true)
!156 = distinct !DISubprogram(name: "gettext_quote", scope: !87, file: !87, line: 197, type: !157, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !39)
!157 = !DISubroutineType(types: !158)
!158 = !{!8, !8, !89}
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !160)
!160 = !{!83, !161}
!161 = !DISubrange(count: 4)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "slotvec", scope: !86, file: !87, line: 834, type: !164, isLocal: true, isDefinition: true)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !87, line: 823, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !165, file: !87, line: 825, baseType: !125, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !165, file: !87, line: 826, baseType: !71, size: 64, offset: 64)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "nslots", scope: !86, file: !87, line: 832, type: !23, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "slotvec0", scope: !86, file: !87, line: 833, type: !165, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 704, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!175 = !{!176}
!176 = !DISubrange(count: 11)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !179, file: !180, line: 26, type: !182, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !181, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!181 = !{!177}
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 376, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 47)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "exit_failure", scope: !187, file: !188, line: 24, type: !190, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !189, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!189 = !{!185}
!190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "internal_state", scope: !193, file: !194, line: 97, type: !198, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !195, globals: !197, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!195 = !{!16, !125, !196}
!196 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!191}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !199, line: 6, baseType: !200)
!199 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !201, line: 21, baseType: !202)
!201 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 13, size: 64, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !202, file: !201, line: 15, baseType: !23, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !202, file: !201, line: 20, baseType: !206, size: 32, offset: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 16, size: 32, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !206, file: !201, line: 18, baseType: !24, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !206, file: !201, line: 19, baseType: !210, size: 32)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !211)
!211 = !{!161}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !227, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "src/getlimits.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ed6d94e0e906a370641c37b64ce0bd77")
!214 = !{!215, !219, !89}
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 79, baseType: !24, size: 32, elements: !217)
!216 = !DIFile(filename: "src/ioblksize.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f13fda6387359f0e51e261e99a350a45")
!217 = !{!218}
!218 = !DIEnumerator(name: "IO_BUFSIZE", value: 262144)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 64, baseType: !24, size: 32, elements: !221)
!220 = !DIFile(filename: "./lib/ftoastr.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d8852edab60e1bfe07894c612610ce33")
!221 = !{!222, !223, !224, !225, !226}
!222 = !DIEnumerator(name: "FTOASTR_LEFT_JUSTIFY", value: 1)
!223 = !DIEnumerator(name: "FTOASTR_ALWAYS_SIGNED", value: 2)
!224 = !DIEnumerator(name: "FTOASTR_SPACE_POSITIVE", value: 4)
!225 = !DIEnumerator(name: "FTOASTR_ZERO_PAD", value: 8)
!226 = !DIEnumerator(name: "FTOASTR_UPPER_E", value: 16)
!227 = !{!8, !16, !228, !232, !235, !238, !241, !243, !245, !247, !249, !71}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !229, line: 102, baseType: !230)
!229 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !231, line: 73, baseType: !127)
!231 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !229, line: 101, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !231, line: 72, baseType: !234)
!234 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !236, line: 108, baseType: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !231, line: 194, baseType: !234)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !239, line: 10, baseType: !240)
!239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !231, line: 160, baseType: !234)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !236, line: 79, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !231, line: 146, baseType: !24)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !236, line: 64, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !231, line: 147, baseType: !24)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !236, line: 97, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !231, line: 154, baseType: !23)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !236, line: 85, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !231, line: 152, baseType: !234)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !236, line: 92, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !231, line: 153, baseType: !234)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !253, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/dtoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "367e58fad54b60d82e990a7817df6f7e")
!253 = !{!219}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/errno-iter.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ec4d98da369fe14aa3b798718c6fb0d9")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !253, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/ftoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "70bb2ecb9a59521192f153bc763df3dd")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !253, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/ldtoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ed53b0dc1afc729b2798d210ca78543")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !266, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!266 = !{!267}
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 40, baseType: !24, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !288, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!272 = !{!273, !280}
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !274, file: !271, line: 188, baseType: !24, size: 32, elements: !278)
!274 = distinct !DISubprogram(name: "x2nrealloc", scope: !271, file: !271, line: 176, type: !275, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!275 = !DISubroutineType(types: !276)
!276 = !{!16, !16, !277, !125}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!278 = !{!279}
!279 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !281, file: !271, line: 228, baseType: !24, size: 32, elements: !278)
!281 = distinct !DISubprogram(name: "xpalloc", scope: !271, file: !271, line: 223, type: !282, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !16, !284, !285, !287, !285}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !286, line: 130, baseType: !287)
!286 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !126, line: 35, baseType: !234)
!288 = !{!71, !16, !7, !234, !127}
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !311, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!311 = !{!7, !127, !16}
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!318 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!319 = !{i32 7, !"Dwarf Version", i32 5}
!320 = !{i32 2, !"Debug Info Version", i32 3}
!321 = !{i32 1, !"wchar_size", i32 4}
!322 = !{i32 1, !"branch-target-enforcement", i32 0}
!323 = !{i32 1, !"sign-return-address", i32 0}
!324 = !{i32 1, !"sign-return-address-all", i32 0}
!325 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"PIC Level", i32 2}
!327 = !{i32 7, !"PIE Level", i32 2}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 1}
!330 = distinct !DISubprogram(name: "usage", scope: !213, file: !213, line: 79, type: !331, scopeLine: 80, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !212, retainedNodes: !39)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !23}
!333 = !DILocalVariable(name: "status", arg: 1, scope: !330, file: !213, line: 79, type: !23)
!334 = !DILocation(line: 79, column: 12, scope: !330)
!335 = !DILocation(line: 81, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !213, line: 81, column: 7)
!337 = !DILocation(line: 81, column: 14, scope: !336)
!338 = !DILocation(line: 81, column: 7, scope: !330)
!339 = !DILocation(line: 82, column: 5, scope: !336)
!340 = !DILocation(line: 82, column: 5, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !213, line: 82, column: 5)
!342 = !DILocation(line: 85, column: 15, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !213, line: 84, column: 5)
!344 = !DILocation(line: 87, column: 5, scope: !343)
!345 = !DILocation(line: 85, column: 7, scope: !343)
!346 = !DILocation(line: 89, column: 7, scope: !343)
!347 = !DILocation(line: 93, column: 7, scope: !343)
!348 = !DILocation(line: 94, column: 7, scope: !343)
!349 = !DILocation(line: 95, column: 7, scope: !343)
!350 = !DILocation(line: 97, column: 9, scope: !330)
!351 = !DILocation(line: 97, column: 3, scope: !330)
!352 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !353, file: !353, line: 836, type: !354, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!353 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!354 = !DISubroutineType(types: !355)
!355 = !{null, !8}
!356 = !DILocalVariable(name: "program", arg: 1, scope: !352, file: !353, line: 836, type: !8)
!357 = !DILocation(line: 836, column: 34, scope: !352)
!358 = !DILocalVariable(name: "infomap", scope: !352, file: !353, line: 838, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 896, elements: !365)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !352, file: !353, line: 838, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !361, file: !353, line: 838, baseType: !8, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !361, file: !353, line: 838, baseType: !8, size: 64, offset: 64)
!365 = !{!366}
!366 = !DISubrange(count: 7)
!367 = !DILocation(line: 838, column: 67, scope: !352)
!368 = !DILocalVariable(name: "node", scope: !352, file: !353, line: 848, type: !8)
!369 = !DILocation(line: 848, column: 15, scope: !352)
!370 = !DILocation(line: 848, column: 22, scope: !352)
!371 = !DILocalVariable(name: "map_prog", scope: !352, file: !353, line: 849, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!373 = !DILocation(line: 849, column: 25, scope: !352)
!374 = !DILocation(line: 849, column: 36, scope: !352)
!375 = !DILocation(line: 851, column: 3, scope: !352)
!376 = !DILocation(line: 851, column: 10, scope: !352)
!377 = !DILocation(line: 851, column: 20, scope: !352)
!378 = !DILocation(line: 851, column: 28, scope: !352)
!379 = !DILocation(line: 851, column: 40, scope: !352)
!380 = !DILocation(line: 851, column: 49, scope: !352)
!381 = !DILocation(line: 851, column: 59, scope: !352)
!382 = !DILocation(line: 851, column: 33, scope: !352)
!383 = !DILocation(line: 851, column: 31, scope: !352)
!384 = !DILocation(line: 0, scope: !352)
!385 = !DILocation(line: 852, column: 13, scope: !352)
!386 = distinct !{!386, !375, !385, !387}
!387 = !{!"llvm.loop.mustprogress"}
!388 = !DILocation(line: 854, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !352, file: !353, line: 854, column: 7)
!390 = !DILocation(line: 854, column: 17, scope: !389)
!391 = !DILocation(line: 854, column: 7, scope: !352)
!392 = !DILocation(line: 855, column: 12, scope: !389)
!393 = !DILocation(line: 855, column: 22, scope: !389)
!394 = !DILocation(line: 855, column: 10, scope: !389)
!395 = !DILocation(line: 855, column: 5, scope: !389)
!396 = !DILocation(line: 857, column: 3, scope: !352)
!397 = !DILocalVariable(name: "lc_messages", scope: !352, file: !353, line: 861, type: !8)
!398 = !DILocation(line: 861, column: 15, scope: !352)
!399 = !DILocation(line: 861, column: 29, scope: !352)
!400 = !DILocation(line: 862, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !352, file: !353, line: 862, column: 7)
!402 = !DILocation(line: 862, column: 19, scope: !401)
!403 = !DILocation(line: 862, column: 22, scope: !401)
!404 = !DILocation(line: 862, column: 7, scope: !352)
!405 = !DILocation(line: 868, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !353, line: 863, column: 5)
!407 = !DILocation(line: 870, column: 5, scope: !406)
!408 = !DILocalVariable(name: "url_program", scope: !352, file: !353, line: 874, type: !8)
!409 = !DILocation(line: 874, column: 15, scope: !352)
!410 = !DILocation(line: 874, column: 36, scope: !352)
!411 = !DILocation(line: 874, column: 29, scope: !352)
!412 = !DILocation(line: 874, column: 61, scope: !352)
!413 = !DILocation(line: 875, column: 11, scope: !352)
!414 = !DILocation(line: 876, column: 24, scope: !352)
!415 = !DILocation(line: 875, column: 3, scope: !352)
!416 = !DILocation(line: 877, column: 11, scope: !352)
!417 = !DILocation(line: 878, column: 11, scope: !352)
!418 = !DILocation(line: 878, column: 17, scope: !352)
!419 = !DILocation(line: 878, column: 25, scope: !352)
!420 = !DILocation(line: 878, column: 22, scope: !352)
!421 = !DILocation(line: 877, column: 3, scope: !352)
!422 = !DILocation(line: 879, column: 1, scope: !352)
!423 = distinct !DISubprogram(name: "main", scope: !213, file: !213, line: 144, type: !424, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !212, retainedNodes: !39)
!424 = !DISubroutineType(types: !425)
!425 = !{!23, !23, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!427 = !DILocalVariable(name: "argc", arg: 1, scope: !423, file: !213, line: 144, type: !23)
!428 = !DILocation(line: 144, column: 11, scope: !423)
!429 = !DILocalVariable(name: "argv", arg: 2, scope: !423, file: !213, line: 144, type: !426)
!430 = !DILocation(line: 144, column: 24, scope: !423)
!431 = !DILocalVariable(name: "limit", scope: !423, file: !213, line: 146, type: !432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 22)
!435 = !DILocation(line: 146, column: 8, scope: !423)
!436 = !DILocation(line: 150, column: 21, scope: !423)
!437 = !DILocation(line: 150, column: 3, scope: !423)
!438 = !DILocation(line: 151, column: 3, scope: !423)
!439 = !DILocation(line: 152, column: 3, scope: !423)
!440 = !DILocation(line: 153, column: 3, scope: !423)
!441 = !DILocation(line: 155, column: 3, scope: !423)
!442 = !DILocation(line: 157, column: 36, scope: !423)
!443 = !DILocation(line: 157, column: 42, scope: !423)
!444 = !DILocation(line: 158, column: 58, scope: !423)
!445 = !DILocation(line: 157, column: 3, scope: !423)
!446 = !DILocation(line: 177, column: 3, scope: !423)
!447 = !DILocation(line: 178, column: 3, scope: !423)
!448 = !DILocation(line: 178, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !213, line: 178, column: 3)
!450 = distinct !DILexicalBlock(scope: !423, file: !213, line: 178, column: 3)
!451 = !DILocation(line: 179, column: 3, scope: !423)
!452 = !DILocation(line: 180, column: 3, scope: !423)
!453 = !DILocation(line: 180, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !213, line: 180, column: 3)
!455 = distinct !DILexicalBlock(scope: !423, file: !213, line: 180, column: 3)
!456 = !DILocation(line: 181, column: 3, scope: !423)
!457 = !DILocation(line: 181, column: 3, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !213, line: 181, column: 3)
!459 = distinct !DILexicalBlock(scope: !423, file: !213, line: 181, column: 3)
!460 = !DILocation(line: 182, column: 3, scope: !423)
!461 = !DILocation(line: 183, column: 3, scope: !423)
!462 = !DILocation(line: 183, column: 3, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !213, line: 183, column: 3)
!464 = distinct !DILexicalBlock(scope: !423, file: !213, line: 183, column: 3)
!465 = !DILocation(line: 184, column: 3, scope: !423)
!466 = !DILocation(line: 185, column: 3, scope: !423)
!467 = !DILocation(line: 186, column: 3, scope: !423)
!468 = !DILocation(line: 186, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !213, line: 186, column: 3)
!470 = distinct !DILexicalBlock(scope: !423, file: !213, line: 186, column: 3)
!471 = !DILocation(line: 187, column: 3, scope: !423)
!472 = !DILocation(line: 187, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !213, line: 187, column: 3)
!474 = distinct !DILexicalBlock(scope: !423, file: !213, line: 187, column: 3)
!475 = !DILocation(line: 188, column: 3, scope: !423)
!476 = !DILocation(line: 189, column: 3, scope: !423)
!477 = !DILocation(line: 190, column: 3, scope: !423)
!478 = !DILocation(line: 190, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !213, line: 190, column: 3)
!480 = distinct !DILexicalBlock(scope: !423, file: !213, line: 190, column: 3)
!481 = !DILocation(line: 191, column: 3, scope: !423)
!482 = !DILocation(line: 191, column: 3, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !213, line: 191, column: 3)
!484 = distinct !DILexicalBlock(scope: !423, file: !213, line: 191, column: 3)
!485 = !DILocation(line: 192, column: 3, scope: !423)
!486 = !DILocation(line: 192, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !213, line: 192, column: 3)
!488 = distinct !DILexicalBlock(scope: !423, file: !213, line: 192, column: 3)
!489 = !DILocation(line: 193, column: 3, scope: !423)
!490 = !DILocation(line: 193, column: 3, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !213, line: 193, column: 3)
!492 = distinct !DILexicalBlock(scope: !423, file: !213, line: 193, column: 3)
!493 = !DILocation(line: 194, column: 3, scope: !423)
!494 = !DILocation(line: 197, column: 3, scope: !423)
!495 = !DILocation(line: 198, column: 3, scope: !423)
!496 = !DILocation(line: 199, column: 3, scope: !423)
!497 = !DILocation(line: 202, column: 40, scope: !423)
!498 = !DILocation(line: 202, column: 29, scope: !423)
!499 = !DILocation(line: 202, column: 3, scope: !423)
!500 = !DILocation(line: 203, column: 40, scope: !423)
!501 = !DILocation(line: 203, column: 29, scope: !423)
!502 = !DILocation(line: 203, column: 3, scope: !423)
!503 = !DILocation(line: 204, column: 3, scope: !423)
!504 = !DILocation(line: 207, column: 3, scope: !423)
!505 = !DILocation(line: 213, column: 3, scope: !423)
!506 = !DILocation(line: 216, column: 3, scope: !423)
!507 = !DILocation(line: 219, column: 3, scope: !423)
!508 = !DILocation(line: 222, column: 3, scope: !423)
!509 = distinct !DISubprogram(name: "decimal_absval_add_one", scope: !213, file: !213, line: 105, type: !510, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!510 = !DISubroutineType(types: !511)
!511 = !{!8, !71}
!512 = !DILocalVariable(name: "buf", arg: 1, scope: !509, file: !213, line: 105, type: !71)
!513 = !DILocation(line: 105, column: 31, scope: !509)
!514 = !DILocalVariable(name: "negative", scope: !509, file: !213, line: 107, type: !7)
!515 = !DILocation(line: 107, column: 8, scope: !509)
!516 = !DILocation(line: 107, column: 20, scope: !509)
!517 = !DILocation(line: 107, column: 27, scope: !509)
!518 = !DILocalVariable(name: "absnum", scope: !509, file: !213, line: 108, type: !71)
!519 = !DILocation(line: 108, column: 9, scope: !509)
!520 = !DILocation(line: 108, column: 18, scope: !509)
!521 = !DILocation(line: 108, column: 22, scope: !509)
!522 = !DILocation(line: 108, column: 28, scope: !509)
!523 = !DILocation(line: 108, column: 26, scope: !509)
!524 = !DILocalVariable(name: "p", scope: !509, file: !213, line: 109, type: !71)
!525 = !DILocation(line: 109, column: 9, scope: !509)
!526 = !DILocation(line: 109, column: 13, scope: !509)
!527 = !DILocation(line: 109, column: 30, scope: !509)
!528 = !DILocation(line: 109, column: 22, scope: !509)
!529 = !DILocation(line: 109, column: 20, scope: !509)
!530 = !DILocation(line: 110, column: 3, scope: !509)
!531 = !DILocation(line: 110, column: 14, scope: !509)
!532 = !DILocation(line: 111, column: 3, scope: !509)
!533 = !DILocation(line: 111, column: 11, scope: !509)
!534 = !DILocation(line: 111, column: 10, scope: !509)
!535 = !DILocation(line: 111, column: 15, scope: !509)
!536 = !DILocation(line: 112, column: 6, scope: !509)
!537 = !DILocation(line: 112, column: 8, scope: !509)
!538 = distinct !{!538, !532, !539, !387}
!539 = !DILocation(line: 112, column: 10, scope: !509)
!540 = !DILocation(line: 113, column: 6, scope: !509)
!541 = !DILocation(line: 113, column: 3, scope: !509)
!542 = !DILocalVariable(name: "result", scope: !509, file: !213, line: 114, type: !71)
!543 = !DILocation(line: 114, column: 9, scope: !509)
!544 = !DILocation(line: 114, column: 18, scope: !509)
!545 = !DILocation(line: 115, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !509, file: !213, line: 115, column: 7)
!547 = !DILocation(line: 115, column: 7, scope: !509)
!548 = !DILocation(line: 116, column: 6, scope: !546)
!549 = !DILocation(line: 116, column: 15, scope: !546)
!550 = !DILocation(line: 116, column: 5, scope: !546)
!551 = !DILocation(line: 117, column: 10, scope: !509)
!552 = !DILocation(line: 117, column: 3, scope: !509)
!553 = distinct !DISubprogram(name: "print_FLT", scope: !213, file: !213, line: 129, type: !554, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!557 = !DILocalVariable(name: "x", arg: 1, scope: !553, file: !213, line: 129, type: !556)
!558 = !DILocation(line: 129, column: 1, scope: !553)
!559 = !DILocalVariable(name: "buf", scope: !553, file: !213, line: 129, type: !560)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 248, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 31)
!563 = distinct !DISubprogram(name: "print_DBL", scope: !213, file: !213, line: 130, type: !564, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!567 = !DILocalVariable(name: "x", arg: 1, scope: !563, file: !213, line: 130, type: !566)
!568 = !DILocation(line: 130, column: 1, scope: !563)
!569 = !DILocalVariable(name: "buf", scope: !563, file: !213, line: 130, type: !570)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 40)
!573 = distinct !DISubprogram(name: "print_LDBL", scope: !213, file: !213, line: 131, type: !574, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!577 = !DILocalVariable(name: "x", arg: 1, scope: !573, file: !213, line: 131, type: !576)
!578 = !DILocation(line: 131, column: 1, scope: !573)
!579 = !DILocalVariable(name: "buf", scope: !573, file: !213, line: 131, type: !580)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 480, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 60)
!583 = distinct !DISubprogram(name: "print_errno", scope: !213, file: !213, line: 134, type: !584, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !212, retainedNodes: !39)
!584 = !DISubroutineType(types: !585)
!585 = !{!23, !16, !23}
!586 = !DILocalVariable(name: "name", arg: 1, scope: !583, file: !213, line: 134, type: !16)
!587 = !DILocation(line: 134, column: 20, scope: !583)
!588 = !DILocalVariable(name: "e", arg: 2, scope: !583, file: !213, line: 134, type: !23)
!589 = !DILocation(line: 134, column: 30, scope: !583)
!590 = !DILocalVariable(name: "err_name", scope: !583, file: !213, line: 136, type: !8)
!591 = !DILocation(line: 136, column: 15, scope: !583)
!592 = !DILocation(line: 136, column: 26, scope: !583)
!593 = !DILocation(line: 136, column: 33, scope: !583)
!594 = !DILocation(line: 136, column: 57, scope: !583)
!595 = !DILocation(line: 136, column: 40, scope: !583)
!596 = !DILocation(line: 137, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !583, file: !213, line: 137, column: 7)
!598 = !DILocation(line: 137, column: 7, scope: !583)
!599 = !DILocation(line: 138, column: 24, scope: !597)
!600 = !DILocation(line: 139, column: 67, scope: !597)
!601 = !DILocation(line: 139, column: 57, scope: !597)
!602 = !DILocation(line: 139, column: 13, scope: !597)
!603 = !DILocation(line: 138, column: 5, scope: !597)
!604 = !DILocation(line: 140, column: 3, scope: !583)
!605 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !3, file: !3, line: 50, type: !354, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!606 = !DILocalVariable(name: "file", arg: 1, scope: !605, file: !3, line: 50, type: !8)
!607 = !DILocation(line: 50, column: 41, scope: !605)
!608 = !DILocation(line: 52, column: 15, scope: !605)
!609 = !DILocation(line: 52, column: 13, scope: !605)
!610 = !DILocation(line: 53, column: 1, scope: !605)
!611 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !3, file: !3, line: 87, type: !612, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !7}
!614 = !DILocalVariable(name: "ignore", arg: 1, scope: !611, file: !3, line: 87, type: !7)
!615 = !DILocation(line: 87, column: 37, scope: !611)
!616 = !DILocation(line: 89, column: 18, scope: !611)
!617 = !DILocation(line: 89, column: 16, scope: !611)
!618 = !DILocation(line: 90, column: 1, scope: !611)
!619 = distinct !DISubprogram(name: "close_stdout", scope: !3, file: !3, line: 116, type: !47, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!620 = !DILocation(line: 118, column: 21, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !3, line: 118, column: 7)
!622 = !DILocation(line: 118, column: 7, scope: !621)
!623 = !DILocation(line: 118, column: 29, scope: !621)
!624 = !DILocation(line: 119, column: 7, scope: !621)
!625 = !DILocation(line: 119, column: 12, scope: !621)
!626 = !DILocation(line: 119, column: 25, scope: !621)
!627 = !DILocation(line: 119, column: 28, scope: !621)
!628 = !DILocation(line: 119, column: 34, scope: !621)
!629 = !DILocation(line: 118, column: 7, scope: !619)
!630 = !DILocalVariable(name: "write_error", scope: !631, file: !3, line: 121, type: !8)
!631 = distinct !DILexicalBlock(scope: !621, file: !3, line: 120, column: 5)
!632 = !DILocation(line: 121, column: 19, scope: !631)
!633 = !DILocation(line: 121, column: 33, scope: !631)
!634 = !DILocation(line: 122, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !3, line: 122, column: 11)
!636 = !DILocation(line: 122, column: 11, scope: !631)
!637 = !DILocation(line: 123, column: 9, scope: !635)
!638 = !DILocation(line: 126, column: 9, scope: !635)
!639 = !DILocation(line: 128, column: 14, scope: !631)
!640 = !DILocation(line: 128, column: 7, scope: !631)
!641 = !DILocation(line: 133, column: 42, scope: !642)
!642 = distinct !DILexicalBlock(scope: !619, file: !3, line: 133, column: 7)
!643 = !DILocation(line: 133, column: 28, scope: !642)
!644 = !DILocation(line: 133, column: 50, scope: !642)
!645 = !DILocation(line: 133, column: 7, scope: !619)
!646 = !DILocation(line: 134, column: 12, scope: !642)
!647 = !DILocation(line: 134, column: 5, scope: !642)
!648 = !DILocation(line: 135, column: 1, scope: !619)
!649 = distinct !DISubprogram(name: "dtoastr", scope: !650, file: !650, line: 112, type: !651, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !39)
!650 = !DIFile(filename: "./lib/ftoastr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "70bb2ecb9a59521192f153bc763df3dd")
!651 = !DISubroutineType(types: !652)
!652 = !{!23, !71, !125, !23, !23, !566}
!653 = !DILocalVariable(name: "buf", arg: 1, scope: !649, file: !650, line: 112, type: !71)
!654 = !DILocation(line: 112, column: 16, scope: !649)
!655 = !DILocalVariable(name: "bufsize", arg: 2, scope: !649, file: !650, line: 112, type: !125)
!656 = !DILocation(line: 112, column: 28, scope: !649)
!657 = !DILocalVariable(name: "flags", arg: 3, scope: !649, file: !650, line: 112, type: !23)
!658 = !DILocation(line: 112, column: 41, scope: !649)
!659 = !DILocalVariable(name: "width", arg: 4, scope: !649, file: !650, line: 112, type: !23)
!660 = !DILocation(line: 112, column: 52, scope: !649)
!661 = !DILocalVariable(name: "x", arg: 5, scope: !649, file: !650, line: 112, type: !566)
!662 = !DILocation(line: 112, column: 65, scope: !649)
!663 = !DILocalVariable(name: "promoted_x", scope: !649, file: !650, line: 124, type: !566)
!664 = !DILocation(line: 124, column: 18, scope: !649)
!665 = !DILocation(line: 124, column: 31, scope: !649)
!666 = !DILocalVariable(name: "format", scope: !649, file: !650, line: 125, type: !667)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 88, elements: !175)
!668 = !DILocation(line: 125, column: 8, scope: !649)
!669 = !DILocalVariable(name: "abs_x", scope: !649, file: !650, line: 126, type: !566)
!670 = !DILocation(line: 126, column: 9, scope: !649)
!671 = !DILocation(line: 126, column: 17, scope: !649)
!672 = !DILocation(line: 126, column: 19, scope: !649)
!673 = !DILocation(line: 126, column: 26, scope: !649)
!674 = !DILocation(line: 126, column: 25, scope: !649)
!675 = !DILocation(line: 126, column: 30, scope: !649)
!676 = !DILocalVariable(name: "p", scope: !649, file: !650, line: 128, type: !71)
!677 = !DILocation(line: 128, column: 9, scope: !649)
!678 = !DILocation(line: 128, column: 13, scope: !649)
!679 = !DILocation(line: 129, column: 5, scope: !649)
!680 = !DILocation(line: 129, column: 8, scope: !649)
!681 = !DILocation(line: 132, column: 4, scope: !649)
!682 = !DILocation(line: 132, column: 6, scope: !649)
!683 = !DILocation(line: 132, column: 19, scope: !649)
!684 = !DILocation(line: 132, column: 25, scope: !649)
!685 = !DILocation(line: 132, column: 51, scope: !649)
!686 = !DILocation(line: 132, column: 15, scope: !649)
!687 = !DILocation(line: 133, column: 4, scope: !649)
!688 = !DILocation(line: 133, column: 6, scope: !649)
!689 = !DILocation(line: 133, column: 19, scope: !649)
!690 = !DILocation(line: 133, column: 25, scope: !649)
!691 = !DILocation(line: 133, column: 51, scope: !649)
!692 = !DILocation(line: 133, column: 15, scope: !649)
!693 = !DILocation(line: 134, column: 4, scope: !649)
!694 = !DILocation(line: 134, column: 6, scope: !649)
!695 = !DILocation(line: 134, column: 19, scope: !649)
!696 = !DILocation(line: 134, column: 25, scope: !649)
!697 = !DILocation(line: 134, column: 51, scope: !649)
!698 = !DILocation(line: 134, column: 15, scope: !649)
!699 = !DILocation(line: 135, column: 4, scope: !649)
!700 = !DILocation(line: 135, column: 6, scope: !649)
!701 = !DILocation(line: 135, column: 19, scope: !649)
!702 = !DILocation(line: 135, column: 25, scope: !649)
!703 = !DILocation(line: 135, column: 51, scope: !649)
!704 = !DILocation(line: 135, column: 15, scope: !649)
!705 = !DILocation(line: 137, column: 5, scope: !649)
!706 = !DILocation(line: 137, column: 8, scope: !649)
!707 = !DILocation(line: 138, column: 5, scope: !649)
!708 = !DILocation(line: 138, column: 8, scope: !649)
!709 = !DILocation(line: 139, column: 5, scope: !649)
!710 = !DILocation(line: 139, column: 8, scope: !649)
!711 = !DILocation(line: 140, column: 4, scope: !649)
!712 = !DILocation(line: 140, column: 6, scope: !649)
!713 = !DILocation(line: 140, column: 15, scope: !649)
!714 = !DILocation(line: 141, column: 10, scope: !649)
!715 = !DILocation(line: 141, column: 16, scope: !649)
!716 = !DILocation(line: 141, column: 5, scope: !649)
!717 = !DILocation(line: 141, column: 8, scope: !649)
!718 = !DILocation(line: 142, column: 4, scope: !649)
!719 = !DILocation(line: 142, column: 6, scope: !649)
!720 = !DILocalVariable(name: "prec", scope: !721, file: !650, line: 144, type: !23)
!721 = distinct !DILexicalBlock(scope: !649, file: !650, line: 144, column: 3)
!722 = !DILocation(line: 144, column: 12, scope: !721)
!723 = !DILocation(line: 144, column: 19, scope: !721)
!724 = !DILocation(line: 144, column: 25, scope: !721)
!725 = !DILocation(line: 144, column: 8, scope: !721)
!726 = !DILocalVariable(name: "n", scope: !727, file: !650, line: 146, type: !23)
!727 = distinct !DILexicalBlock(scope: !728, file: !650, line: 145, column: 5)
!728 = distinct !DILexicalBlock(scope: !721, file: !650, line: 144, column: 3)
!729 = !DILocation(line: 146, column: 11, scope: !727)
!730 = !DILocation(line: 146, column: 25, scope: !727)
!731 = !DILocation(line: 146, column: 30, scope: !727)
!732 = !DILocation(line: 146, column: 39, scope: !727)
!733 = !DILocation(line: 146, column: 47, scope: !727)
!734 = !DILocation(line: 146, column: 54, scope: !727)
!735 = !DILocation(line: 146, column: 60, scope: !727)
!736 = !DILocation(line: 146, column: 15, scope: !727)
!737 = !DILocation(line: 147, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !727, file: !650, line: 147, column: 11)
!739 = !DILocation(line: 147, column: 13, scope: !738)
!740 = !DILocation(line: 148, column: 11, scope: !738)
!741 = !DILocation(line: 148, column: 34, scope: !738)
!742 = !DILocation(line: 148, column: 31, scope: !738)
!743 = !DILocation(line: 149, column: 11, scope: !738)
!744 = !DILocation(line: 149, column: 15, scope: !738)
!745 = !DILocation(line: 149, column: 19, scope: !738)
!746 = !DILocation(line: 149, column: 17, scope: !738)
!747 = !DILocation(line: 149, column: 27, scope: !738)
!748 = !DILocation(line: 149, column: 38, scope: !738)
!749 = !DILocation(line: 149, column: 30, scope: !738)
!750 = !DILocation(line: 149, column: 52, scope: !738)
!751 = !DILocation(line: 149, column: 49, scope: !738)
!752 = !DILocation(line: 147, column: 11, scope: !727)
!753 = !DILocation(line: 150, column: 16, scope: !738)
!754 = !DILocation(line: 150, column: 9, scope: !738)
!755 = !DILocation(line: 151, column: 5, scope: !727)
!756 = !DILocation(line: 144, column: 60, scope: !728)
!757 = !DILocation(line: 144, column: 3, scope: !728)
!758 = distinct !{!758, !759, !760}
!759 = !DILocation(line: 144, column: 3, scope: !721)
!760 = !DILocation(line: 151, column: 5, scope: !721)
!761 = distinct !DISubprogram(name: "errno_iterate", scope: !255, file: !255, line: 27, type: !762, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !254, retainedNodes: !39)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764, !16}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "errno_iterate_callback_fn", file: !765, line: 27, baseType: !766)
!765 = !DIFile(filename: "./lib/errno-iter.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e29148ef5417619fa680a0323aac9540")
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!767 = !DILocalVariable(name: "callback", arg: 1, scope: !761, file: !255, line: 27, type: !764)
!768 = !DILocation(line: 27, column: 42, scope: !761)
!769 = !DILocalVariable(name: "data", arg: 2, scope: !761, file: !255, line: 27, type: !16)
!770 = !DILocation(line: 27, column: 58, scope: !761)
!771 = !DILocation(line: 32, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !761, file: !255, line: 32, column: 7)
!773 = !DILocation(line: 32, column: 17, scope: !772)
!774 = !DILocation(line: 32, column: 7, scope: !761)
!775 = !DILocation(line: 32, column: 30, scope: !772)
!776 = !DILocation(line: 33, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !761, file: !255, line: 33, column: 7)
!778 = !DILocation(line: 33, column: 17, scope: !777)
!779 = !DILocation(line: 33, column: 7, scope: !761)
!780 = !DILocation(line: 33, column: 32, scope: !777)
!781 = !DILocation(line: 34, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !761, file: !255, line: 34, column: 7)
!783 = !DILocation(line: 34, column: 17, scope: !782)
!784 = !DILocation(line: 34, column: 7, scope: !761)
!785 = !DILocation(line: 34, column: 32, scope: !782)
!786 = !DILocation(line: 39, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !761, file: !255, line: 39, column: 7)
!788 = !DILocation(line: 39, column: 17, scope: !787)
!789 = !DILocation(line: 39, column: 7, scope: !761)
!790 = !DILocation(line: 39, column: 31, scope: !787)
!791 = !DILocation(line: 42, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !761, file: !255, line: 42, column: 7)
!793 = !DILocation(line: 42, column: 17, scope: !792)
!794 = !DILocation(line: 42, column: 7, scope: !761)
!795 = !DILocation(line: 42, column: 32, scope: !792)
!796 = !DILocation(line: 45, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !761, file: !255, line: 45, column: 7)
!798 = !DILocation(line: 45, column: 17, scope: !797)
!799 = !DILocation(line: 45, column: 7, scope: !761)
!800 = !DILocation(line: 45, column: 36, scope: !797)
!801 = !DILocation(line: 48, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !761, file: !255, line: 48, column: 7)
!803 = !DILocation(line: 48, column: 17, scope: !802)
!804 = !DILocation(line: 48, column: 7, scope: !761)
!805 = !DILocation(line: 48, column: 39, scope: !802)
!806 = !DILocation(line: 51, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !761, file: !255, line: 51, column: 7)
!808 = !DILocation(line: 51, column: 17, scope: !807)
!809 = !DILocation(line: 51, column: 7, scope: !761)
!810 = !DILocation(line: 51, column: 38, scope: !807)
!811 = !DILocation(line: 54, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !761, file: !255, line: 54, column: 7)
!813 = !DILocation(line: 54, column: 17, scope: !812)
!814 = !DILocation(line: 54, column: 7, scope: !761)
!815 = !DILocation(line: 54, column: 32, scope: !812)
!816 = !DILocation(line: 57, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !761, file: !255, line: 57, column: 7)
!818 = !DILocation(line: 57, column: 17, scope: !817)
!819 = !DILocation(line: 57, column: 7, scope: !761)
!820 = !DILocation(line: 57, column: 34, scope: !817)
!821 = !DILocation(line: 60, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !761, file: !255, line: 60, column: 7)
!823 = !DILocation(line: 60, column: 17, scope: !822)
!824 = !DILocation(line: 60, column: 7, scope: !761)
!825 = !DILocation(line: 60, column: 31, scope: !822)
!826 = !DILocation(line: 63, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !761, file: !255, line: 63, column: 7)
!828 = !DILocation(line: 63, column: 17, scope: !827)
!829 = !DILocation(line: 63, column: 7, scope: !761)
!830 = !DILocation(line: 63, column: 33, scope: !827)
!831 = !DILocation(line: 66, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !761, file: !255, line: 66, column: 7)
!833 = !DILocation(line: 66, column: 17, scope: !832)
!834 = !DILocation(line: 66, column: 7, scope: !761)
!835 = !DILocation(line: 66, column: 31, scope: !832)
!836 = !DILocation(line: 69, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !761, file: !255, line: 69, column: 7)
!838 = !DILocation(line: 69, column: 17, scope: !837)
!839 = !DILocation(line: 69, column: 7, scope: !761)
!840 = !DILocation(line: 69, column: 35, scope: !837)
!841 = !DILocation(line: 72, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !761, file: !255, line: 72, column: 7)
!843 = !DILocation(line: 72, column: 17, scope: !842)
!844 = !DILocation(line: 72, column: 7, scope: !761)
!845 = !DILocation(line: 72, column: 32, scope: !842)
!846 = !DILocation(line: 75, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !761, file: !255, line: 75, column: 7)
!848 = !DILocation(line: 75, column: 17, scope: !847)
!849 = !DILocation(line: 75, column: 7, scope: !761)
!850 = !DILocation(line: 75, column: 38, scope: !847)
!851 = !DILocation(line: 78, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !761, file: !255, line: 78, column: 7)
!853 = !DILocation(line: 78, column: 17, scope: !852)
!854 = !DILocation(line: 78, column: 7, scope: !761)
!855 = !DILocation(line: 78, column: 38, scope: !852)
!856 = !DILocation(line: 81, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !761, file: !255, line: 81, column: 7)
!858 = !DILocation(line: 81, column: 17, scope: !857)
!859 = !DILocation(line: 81, column: 7, scope: !761)
!860 = !DILocation(line: 81, column: 36, scope: !857)
!861 = !DILocation(line: 84, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !761, file: !255, line: 84, column: 7)
!863 = !DILocation(line: 84, column: 17, scope: !862)
!864 = !DILocation(line: 84, column: 7, scope: !761)
!865 = !DILocation(line: 84, column: 33, scope: !862)
!866 = !DILocation(line: 87, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !761, file: !255, line: 87, column: 7)
!868 = !DILocation(line: 87, column: 17, scope: !867)
!869 = !DILocation(line: 87, column: 7, scope: !761)
!870 = !DILocation(line: 87, column: 38, scope: !867)
!871 = !DILocation(line: 90, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !761, file: !255, line: 90, column: 7)
!873 = !DILocation(line: 90, column: 17, scope: !872)
!874 = !DILocation(line: 90, column: 7, scope: !761)
!875 = !DILocation(line: 90, column: 32, scope: !872)
!876 = !DILocation(line: 93, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !761, file: !255, line: 93, column: 7)
!878 = !DILocation(line: 93, column: 17, scope: !877)
!879 = !DILocation(line: 93, column: 7, scope: !761)
!880 = !DILocation(line: 93, column: 32, scope: !877)
!881 = !DILocation(line: 96, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !761, file: !255, line: 96, column: 7)
!883 = !DILocation(line: 96, column: 17, scope: !882)
!884 = !DILocation(line: 96, column: 7, scope: !761)
!885 = !DILocation(line: 96, column: 32, scope: !882)
!886 = !DILocation(line: 99, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !761, file: !255, line: 99, column: 7)
!888 = !DILocation(line: 99, column: 17, scope: !887)
!889 = !DILocation(line: 99, column: 7, scope: !761)
!890 = !DILocation(line: 99, column: 31, scope: !887)
!891 = !DILocation(line: 102, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !761, file: !255, line: 102, column: 7)
!893 = !DILocation(line: 102, column: 17, scope: !892)
!894 = !DILocation(line: 102, column: 7, scope: !761)
!895 = !DILocation(line: 102, column: 38, scope: !892)
!896 = !DILocation(line: 105, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !761, file: !255, line: 105, column: 7)
!898 = !DILocation(line: 105, column: 17, scope: !897)
!899 = !DILocation(line: 105, column: 7, scope: !761)
!900 = !DILocation(line: 105, column: 31, scope: !897)
!901 = !DILocation(line: 108, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !761, file: !255, line: 108, column: 7)
!903 = !DILocation(line: 108, column: 17, scope: !902)
!904 = !DILocation(line: 108, column: 7, scope: !761)
!905 = !DILocation(line: 108, column: 37, scope: !902)
!906 = !DILocation(line: 111, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !761, file: !255, line: 111, column: 7)
!908 = !DILocation(line: 111, column: 17, scope: !907)
!909 = !DILocation(line: 111, column: 7, scope: !761)
!910 = !DILocation(line: 111, column: 31, scope: !907)
!911 = !DILocation(line: 114, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !761, file: !255, line: 114, column: 7)
!913 = !DILocation(line: 114, column: 17, scope: !912)
!914 = !DILocation(line: 114, column: 7, scope: !761)
!915 = !DILocation(line: 114, column: 32, scope: !912)
!916 = !DILocation(line: 117, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !761, file: !255, line: 117, column: 7)
!918 = !DILocation(line: 117, column: 17, scope: !917)
!919 = !DILocation(line: 117, column: 7, scope: !761)
!920 = !DILocation(line: 117, column: 29, scope: !917)
!921 = !DILocation(line: 120, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !761, file: !255, line: 120, column: 7)
!923 = !DILocation(line: 120, column: 17, scope: !922)
!924 = !DILocation(line: 120, column: 7, scope: !761)
!925 = !DILocation(line: 120, column: 33, scope: !922)
!926 = !DILocation(line: 123, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !761, file: !255, line: 123, column: 7)
!928 = !DILocation(line: 123, column: 17, scope: !927)
!929 = !DILocation(line: 123, column: 7, scope: !761)
!930 = !DILocation(line: 123, column: 32, scope: !927)
!931 = !DILocation(line: 126, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !761, file: !255, line: 126, column: 7)
!933 = !DILocation(line: 126, column: 17, scope: !932)
!934 = !DILocation(line: 126, column: 7, scope: !761)
!935 = !DILocation(line: 126, column: 31, scope: !932)
!936 = !DILocation(line: 129, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !761, file: !255, line: 129, column: 7)
!938 = !DILocation(line: 129, column: 17, scope: !937)
!939 = !DILocation(line: 129, column: 7, scope: !761)
!940 = !DILocation(line: 129, column: 32, scope: !937)
!941 = !DILocation(line: 132, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !761, file: !255, line: 132, column: 7)
!943 = !DILocation(line: 132, column: 17, scope: !942)
!944 = !DILocation(line: 132, column: 7, scope: !761)
!945 = !DILocation(line: 132, column: 32, scope: !942)
!946 = !DILocation(line: 135, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !761, file: !255, line: 135, column: 7)
!948 = !DILocation(line: 135, column: 17, scope: !947)
!949 = !DILocation(line: 135, column: 7, scope: !761)
!950 = !DILocation(line: 135, column: 34, scope: !947)
!951 = !DILocation(line: 138, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !761, file: !255, line: 138, column: 7)
!953 = !DILocation(line: 138, column: 17, scope: !952)
!954 = !DILocation(line: 138, column: 7, scope: !761)
!955 = !DILocation(line: 138, column: 35, scope: !952)
!956 = !DILocation(line: 141, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !761, file: !255, line: 141, column: 7)
!958 = !DILocation(line: 141, column: 17, scope: !957)
!959 = !DILocation(line: 141, column: 7, scope: !761)
!960 = !DILocation(line: 141, column: 38, scope: !957)
!961 = !DILocation(line: 144, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !761, file: !255, line: 144, column: 7)
!963 = !DILocation(line: 144, column: 17, scope: !962)
!964 = !DILocation(line: 144, column: 7, scope: !761)
!965 = !DILocation(line: 144, column: 34, scope: !962)
!966 = !DILocation(line: 147, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !761, file: !255, line: 147, column: 7)
!968 = !DILocation(line: 147, column: 17, scope: !967)
!969 = !DILocation(line: 147, column: 7, scope: !761)
!970 = !DILocation(line: 147, column: 35, scope: !967)
!971 = !DILocation(line: 150, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !761, file: !255, line: 150, column: 7)
!973 = !DILocation(line: 150, column: 17, scope: !972)
!974 = !DILocation(line: 150, column: 7, scope: !761)
!975 = !DILocation(line: 150, column: 37, scope: !972)
!976 = !DILocation(line: 153, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !761, file: !255, line: 153, column: 7)
!978 = !DILocation(line: 153, column: 17, scope: !977)
!979 = !DILocation(line: 153, column: 7, scope: !761)
!980 = !DILocation(line: 153, column: 32, scope: !977)
!981 = !DILocation(line: 156, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !761, file: !255, line: 156, column: 7)
!983 = !DILocation(line: 156, column: 17, scope: !982)
!984 = !DILocation(line: 156, column: 7, scope: !761)
!985 = !DILocation(line: 156, column: 33, scope: !982)
!986 = !DILocation(line: 159, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !761, file: !255, line: 159, column: 7)
!988 = !DILocation(line: 159, column: 17, scope: !987)
!989 = !DILocation(line: 159, column: 7, scope: !761)
!990 = !DILocation(line: 159, column: 33, scope: !987)
!991 = !DILocation(line: 162, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !761, file: !255, line: 162, column: 7)
!993 = !DILocation(line: 162, column: 17, scope: !992)
!994 = !DILocation(line: 162, column: 7, scope: !761)
!995 = !DILocation(line: 162, column: 32, scope: !992)
!996 = !DILocation(line: 165, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !761, file: !255, line: 165, column: 7)
!998 = !DILocation(line: 165, column: 17, scope: !997)
!999 = !DILocation(line: 165, column: 7, scope: !761)
!1000 = !DILocation(line: 165, column: 32, scope: !997)
!1001 = !DILocation(line: 168, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !761, file: !255, line: 168, column: 7)
!1003 = !DILocation(line: 168, column: 17, scope: !1002)
!1004 = !DILocation(line: 168, column: 7, scope: !761)
!1005 = !DILocation(line: 168, column: 33, scope: !1002)
!1006 = !DILocation(line: 171, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !761, file: !255, line: 171, column: 7)
!1008 = !DILocation(line: 171, column: 17, scope: !1007)
!1009 = !DILocation(line: 171, column: 7, scope: !761)
!1010 = !DILocation(line: 171, column: 32, scope: !1007)
!1011 = !DILocation(line: 174, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !761, file: !255, line: 174, column: 7)
!1013 = !DILocation(line: 174, column: 17, scope: !1012)
!1014 = !DILocation(line: 174, column: 7, scope: !761)
!1015 = !DILocation(line: 174, column: 33, scope: !1012)
!1016 = !DILocation(line: 177, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !761, file: !255, line: 177, column: 7)
!1018 = !DILocation(line: 177, column: 17, scope: !1017)
!1019 = !DILocation(line: 177, column: 7, scope: !761)
!1020 = !DILocation(line: 177, column: 32, scope: !1017)
!1021 = !DILocation(line: 180, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !761, file: !255, line: 180, column: 7)
!1023 = !DILocation(line: 180, column: 17, scope: !1022)
!1024 = !DILocation(line: 180, column: 7, scope: !761)
!1025 = !DILocation(line: 180, column: 32, scope: !1022)
!1026 = !DILocation(line: 183, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !761, file: !255, line: 183, column: 7)
!1028 = !DILocation(line: 183, column: 17, scope: !1027)
!1029 = !DILocation(line: 183, column: 7, scope: !761)
!1030 = !DILocation(line: 183, column: 37, scope: !1027)
!1031 = !DILocation(line: 186, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !761, file: !255, line: 186, column: 7)
!1033 = !DILocation(line: 186, column: 17, scope: !1032)
!1034 = !DILocation(line: 186, column: 7, scope: !761)
!1035 = !DILocation(line: 186, column: 32, scope: !1032)
!1036 = !DILocation(line: 189, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !761, file: !255, line: 189, column: 7)
!1038 = !DILocation(line: 189, column: 17, scope: !1037)
!1039 = !DILocation(line: 189, column: 7, scope: !761)
!1040 = !DILocation(line: 189, column: 31, scope: !1037)
!1041 = !DILocation(line: 192, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !761, file: !255, line: 192, column: 7)
!1043 = !DILocation(line: 192, column: 17, scope: !1042)
!1044 = !DILocation(line: 192, column: 7, scope: !761)
!1045 = !DILocation(line: 192, column: 32, scope: !1042)
!1046 = !DILocation(line: 195, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !761, file: !255, line: 195, column: 7)
!1048 = !DILocation(line: 195, column: 17, scope: !1047)
!1049 = !DILocation(line: 195, column: 7, scope: !761)
!1050 = !DILocation(line: 195, column: 32, scope: !1047)
!1051 = !DILocation(line: 198, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !761, file: !255, line: 198, column: 7)
!1053 = !DILocation(line: 198, column: 17, scope: !1052)
!1054 = !DILocation(line: 198, column: 7, scope: !761)
!1055 = !DILocation(line: 198, column: 34, scope: !1052)
!1056 = !DILocation(line: 201, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !761, file: !255, line: 201, column: 7)
!1058 = !DILocation(line: 201, column: 17, scope: !1057)
!1059 = !DILocation(line: 201, column: 7, scope: !761)
!1060 = !DILocation(line: 201, column: 33, scope: !1057)
!1061 = !DILocation(line: 204, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !761, file: !255, line: 204, column: 7)
!1063 = !DILocation(line: 204, column: 17, scope: !1062)
!1064 = !DILocation(line: 204, column: 7, scope: !761)
!1065 = !DILocation(line: 204, column: 35, scope: !1062)
!1066 = !DILocation(line: 207, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !761, file: !255, line: 207, column: 7)
!1068 = !DILocation(line: 207, column: 17, scope: !1067)
!1069 = !DILocation(line: 207, column: 7, scope: !761)
!1070 = !DILocation(line: 207, column: 41, scope: !1067)
!1071 = !DILocation(line: 210, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !761, file: !255, line: 210, column: 7)
!1073 = !DILocation(line: 210, column: 17, scope: !1072)
!1074 = !DILocation(line: 210, column: 7, scope: !761)
!1075 = !DILocation(line: 210, column: 34, scope: !1072)
!1076 = !DILocation(line: 216, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !761, file: !255, line: 216, column: 7)
!1078 = !DILocation(line: 216, column: 17, scope: !1077)
!1079 = !DILocation(line: 216, column: 7, scope: !761)
!1080 = !DILocation(line: 216, column: 32, scope: !1077)
!1081 = !DILocation(line: 219, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !761, file: !255, line: 219, column: 7)
!1083 = !DILocation(line: 219, column: 17, scope: !1082)
!1084 = !DILocation(line: 219, column: 7, scope: !761)
!1085 = !DILocation(line: 219, column: 31, scope: !1082)
!1086 = !DILocation(line: 222, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !761, file: !255, line: 222, column: 7)
!1088 = !DILocation(line: 222, column: 17, scope: !1087)
!1089 = !DILocation(line: 222, column: 7, scope: !761)
!1090 = !DILocation(line: 222, column: 36, scope: !1087)
!1091 = !DILocation(line: 225, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !761, file: !255, line: 225, column: 7)
!1093 = !DILocation(line: 225, column: 17, scope: !1092)
!1094 = !DILocation(line: 225, column: 7, scope: !761)
!1095 = !DILocation(line: 225, column: 35, scope: !1092)
!1096 = !DILocation(line: 228, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !761, file: !255, line: 228, column: 7)
!1098 = !DILocation(line: 228, column: 17, scope: !1097)
!1099 = !DILocation(line: 228, column: 7, scope: !761)
!1100 = !DILocation(line: 228, column: 36, scope: !1097)
!1101 = !DILocation(line: 231, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !761, file: !255, line: 231, column: 7)
!1103 = !DILocation(line: 231, column: 17, scope: !1102)
!1104 = !DILocation(line: 231, column: 7, scope: !761)
!1105 = !DILocation(line: 231, column: 31, scope: !1102)
!1106 = !DILocation(line: 234, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !761, file: !255, line: 234, column: 7)
!1108 = !DILocation(line: 234, column: 17, scope: !1107)
!1109 = !DILocation(line: 234, column: 7, scope: !761)
!1110 = !DILocation(line: 234, column: 31, scope: !1107)
!1111 = !DILocation(line: 237, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !761, file: !255, line: 237, column: 7)
!1113 = !DILocation(line: 237, column: 17, scope: !1112)
!1114 = !DILocation(line: 237, column: 7, scope: !761)
!1115 = !DILocation(line: 237, column: 32, scope: !1112)
!1116 = !DILocation(line: 240, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !761, file: !255, line: 240, column: 7)
!1118 = !DILocation(line: 240, column: 17, scope: !1117)
!1119 = !DILocation(line: 240, column: 7, scope: !761)
!1120 = !DILocation(line: 240, column: 41, scope: !1117)
!1121 = !DILocation(line: 243, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !761, file: !255, line: 243, column: 7)
!1123 = !DILocation(line: 243, column: 17, scope: !1122)
!1124 = !DILocation(line: 243, column: 7, scope: !761)
!1125 = !DILocation(line: 243, column: 36, scope: !1122)
!1126 = !DILocation(line: 246, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !761, file: !255, line: 246, column: 7)
!1128 = !DILocation(line: 246, column: 17, scope: !1127)
!1129 = !DILocation(line: 246, column: 7, scope: !761)
!1130 = !DILocation(line: 246, column: 31, scope: !1127)
!1131 = !DILocation(line: 249, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !761, file: !255, line: 249, column: 7)
!1133 = !DILocation(line: 249, column: 17, scope: !1132)
!1134 = !DILocation(line: 249, column: 7, scope: !761)
!1135 = !DILocation(line: 249, column: 41, scope: !1132)
!1136 = !DILocation(line: 252, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !761, file: !255, line: 252, column: 7)
!1138 = !DILocation(line: 252, column: 17, scope: !1137)
!1139 = !DILocation(line: 252, column: 7, scope: !761)
!1140 = !DILocation(line: 252, column: 32, scope: !1137)
!1141 = !DILocation(line: 255, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !761, file: !255, line: 255, column: 7)
!1143 = !DILocation(line: 255, column: 17, scope: !1142)
!1144 = !DILocation(line: 255, column: 7, scope: !761)
!1145 = !DILocation(line: 255, column: 31, scope: !1142)
!1146 = !DILocation(line: 258, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !761, file: !255, line: 258, column: 7)
!1148 = !DILocation(line: 258, column: 17, scope: !1147)
!1149 = !DILocation(line: 258, column: 7, scope: !761)
!1150 = !DILocation(line: 258, column: 32, scope: !1147)
!1151 = !DILocation(line: 261, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !761, file: !255, line: 261, column: 7)
!1153 = !DILocation(line: 261, column: 17, scope: !1152)
!1154 = !DILocation(line: 261, column: 7, scope: !761)
!1155 = !DILocation(line: 261, column: 31, scope: !1152)
!1156 = !DILocation(line: 264, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !761, file: !255, line: 264, column: 7)
!1158 = !DILocation(line: 264, column: 17, scope: !1157)
!1159 = !DILocation(line: 264, column: 7, scope: !761)
!1160 = !DILocation(line: 264, column: 35, scope: !1157)
!1161 = !DILocation(line: 267, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !761, file: !255, line: 267, column: 7)
!1163 = !DILocation(line: 267, column: 17, scope: !1162)
!1164 = !DILocation(line: 267, column: 7, scope: !761)
!1165 = !DILocation(line: 267, column: 33, scope: !1162)
!1166 = !DILocation(line: 273, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !761, file: !255, line: 273, column: 7)
!1168 = !DILocation(line: 273, column: 17, scope: !1167)
!1169 = !DILocation(line: 273, column: 7, scope: !761)
!1170 = !DILocation(line: 273, column: 31, scope: !1167)
!1171 = !DILocation(line: 283, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !761, file: !255, line: 283, column: 7)
!1173 = !DILocation(line: 283, column: 17, scope: !1172)
!1174 = !DILocation(line: 283, column: 7, scope: !761)
!1175 = !DILocation(line: 283, column: 30, scope: !1172)
!1176 = !DILocation(line: 307, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !761, file: !255, line: 307, column: 7)
!1178 = !DILocation(line: 307, column: 17, scope: !1177)
!1179 = !DILocation(line: 307, column: 7, scope: !761)
!1180 = !DILocation(line: 307, column: 31, scope: !1177)
!1181 = !DILocation(line: 319, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !761, file: !255, line: 319, column: 7)
!1183 = !DILocation(line: 319, column: 17, scope: !1182)
!1184 = !DILocation(line: 319, column: 7, scope: !761)
!1185 = !DILocation(line: 319, column: 32, scope: !1182)
!1186 = !DILocation(line: 335, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !761, file: !255, line: 335, column: 7)
!1188 = !DILocation(line: 335, column: 17, scope: !1187)
!1189 = !DILocation(line: 335, column: 7, scope: !761)
!1190 = !DILocation(line: 335, column: 31, scope: !1187)
!1191 = !DILocation(line: 347, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !761, file: !255, line: 347, column: 7)
!1193 = !DILocation(line: 347, column: 17, scope: !1192)
!1194 = !DILocation(line: 347, column: 7, scope: !761)
!1195 = !DILocation(line: 347, column: 33, scope: !1192)
!1196 = !DILocation(line: 351, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !761, file: !255, line: 351, column: 7)
!1198 = !DILocation(line: 351, column: 17, scope: !1197)
!1199 = !DILocation(line: 351, column: 7, scope: !761)
!1200 = !DILocation(line: 351, column: 33, scope: !1197)
!1201 = !DILocation(line: 359, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !761, file: !255, line: 359, column: 7)
!1203 = !DILocation(line: 359, column: 17, scope: !1202)
!1204 = !DILocation(line: 359, column: 7, scope: !761)
!1205 = !DILocation(line: 359, column: 32, scope: !1202)
!1206 = !DILocation(line: 375, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !761, file: !255, line: 375, column: 7)
!1208 = !DILocation(line: 375, column: 17, scope: !1207)
!1209 = !DILocation(line: 375, column: 7, scope: !761)
!1210 = !DILocation(line: 375, column: 32, scope: !1207)
!1211 = !DILocation(line: 383, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !761, file: !255, line: 383, column: 7)
!1213 = !DILocation(line: 383, column: 17, scope: !1212)
!1214 = !DILocation(line: 383, column: 7, scope: !761)
!1215 = !DILocation(line: 383, column: 31, scope: !1212)
!1216 = !DILocation(line: 435, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !761, file: !255, line: 435, column: 7)
!1218 = !DILocation(line: 435, column: 17, scope: !1217)
!1219 = !DILocation(line: 435, column: 7, scope: !761)
!1220 = !DILocation(line: 435, column: 33, scope: !1217)
!1221 = !DILocation(line: 507, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !761, file: !255, line: 507, column: 7)
!1223 = !DILocation(line: 507, column: 17, scope: !1222)
!1224 = !DILocation(line: 507, column: 7, scope: !761)
!1225 = !DILocation(line: 507, column: 35, scope: !1222)
!1226 = !DILocation(line: 511, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !761, file: !255, line: 511, column: 7)
!1228 = !DILocation(line: 511, column: 17, scope: !1227)
!1229 = !DILocation(line: 511, column: 7, scope: !761)
!1230 = !DILocation(line: 511, column: 35, scope: !1227)
!1231 = !DILocation(line: 523, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !761, file: !255, line: 523, column: 7)
!1233 = !DILocation(line: 523, column: 17, scope: !1232)
!1234 = !DILocation(line: 523, column: 7, scope: !761)
!1235 = !DILocation(line: 523, column: 32, scope: !1232)
!1236 = !DILocation(line: 635, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !761, file: !255, line: 635, column: 7)
!1238 = !DILocation(line: 635, column: 17, scope: !1237)
!1239 = !DILocation(line: 635, column: 7, scope: !761)
!1240 = !DILocation(line: 635, column: 37, scope: !1237)
!1241 = !DILocation(line: 639, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !761, file: !255, line: 639, column: 7)
!1243 = !DILocation(line: 639, column: 17, scope: !1242)
!1244 = !DILocation(line: 639, column: 7, scope: !761)
!1245 = !DILocation(line: 639, column: 38, scope: !1242)
!1246 = !DILocation(line: 643, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !761, file: !255, line: 643, column: 7)
!1248 = !DILocation(line: 643, column: 17, scope: !1247)
!1249 = !DILocation(line: 643, column: 7, scope: !761)
!1250 = !DILocation(line: 643, column: 37, scope: !1247)
!1251 = !DILocation(line: 647, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !761, file: !255, line: 647, column: 7)
!1253 = !DILocation(line: 647, column: 17, scope: !1252)
!1254 = !DILocation(line: 647, column: 7, scope: !761)
!1255 = !DILocation(line: 647, column: 32, scope: !1252)
!1256 = !DILocation(line: 651, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !761, file: !255, line: 651, column: 7)
!1258 = !DILocation(line: 651, column: 17, scope: !1257)
!1259 = !DILocation(line: 651, column: 7, scope: !761)
!1260 = !DILocation(line: 651, column: 34, scope: !1257)
!1261 = !DILocation(line: 655, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !761, file: !255, line: 655, column: 7)
!1263 = !DILocation(line: 655, column: 17, scope: !1262)
!1264 = !DILocation(line: 655, column: 7, scope: !761)
!1265 = !DILocation(line: 655, column: 32, scope: !1262)
!1266 = !DILocation(line: 659, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !761, file: !255, line: 659, column: 7)
!1268 = !DILocation(line: 659, column: 17, scope: !1267)
!1269 = !DILocation(line: 659, column: 7, scope: !761)
!1270 = !DILocation(line: 659, column: 32, scope: !1267)
!1271 = !DILocation(line: 671, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !761, file: !255, line: 671, column: 7)
!1273 = !DILocation(line: 671, column: 17, scope: !1272)
!1274 = !DILocation(line: 671, column: 7, scope: !761)
!1275 = !DILocation(line: 671, column: 33, scope: !1272)
!1276 = !DILocation(line: 675, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !761, file: !255, line: 675, column: 7)
!1278 = !DILocation(line: 675, column: 17, scope: !1277)
!1279 = !DILocation(line: 675, column: 7, scope: !761)
!1280 = !DILocation(line: 675, column: 33, scope: !1277)
!1281 = !DILocation(line: 679, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !761, file: !255, line: 679, column: 7)
!1283 = !DILocation(line: 679, column: 17, scope: !1282)
!1284 = !DILocation(line: 679, column: 7, scope: !761)
!1285 = !DILocation(line: 679, column: 34, scope: !1282)
!1286 = !DILocation(line: 683, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !761, file: !255, line: 683, column: 7)
!1288 = !DILocation(line: 683, column: 17, scope: !1287)
!1289 = !DILocation(line: 683, column: 7, scope: !761)
!1290 = !DILocation(line: 683, column: 33, scope: !1287)
!1291 = !DILocation(line: 687, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !761, file: !255, line: 687, column: 7)
!1293 = !DILocation(line: 687, column: 17, scope: !1292)
!1294 = !DILocation(line: 687, column: 7, scope: !761)
!1295 = !DILocation(line: 687, column: 33, scope: !1292)
!1296 = !DILocation(line: 691, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !761, file: !255, line: 691, column: 7)
!1298 = !DILocation(line: 691, column: 17, scope: !1297)
!1299 = !DILocation(line: 691, column: 7, scope: !761)
!1300 = !DILocation(line: 691, column: 32, scope: !1297)
!1301 = !DILocation(line: 819, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !761, file: !255, line: 819, column: 7)
!1303 = !DILocation(line: 819, column: 17, scope: !1302)
!1304 = !DILocation(line: 819, column: 7, scope: !761)
!1305 = !DILocation(line: 819, column: 37, scope: !1302)
!1306 = !DILocation(line: 863, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !761, file: !255, line: 863, column: 7)
!1308 = !DILocation(line: 863, column: 17, scope: !1307)
!1309 = !DILocation(line: 863, column: 7, scope: !761)
!1310 = !DILocation(line: 863, column: 33, scope: !1307)
!1311 = !DILocation(line: 875, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !761, file: !255, line: 875, column: 7)
!1313 = !DILocation(line: 875, column: 17, scope: !1312)
!1314 = !DILocation(line: 875, column: 7, scope: !761)
!1315 = !DILocation(line: 875, column: 32, scope: !1312)
!1316 = !DILocation(line: 895, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !761, file: !255, line: 895, column: 7)
!1318 = !DILocation(line: 895, column: 17, scope: !1317)
!1319 = !DILocation(line: 895, column: 7, scope: !761)
!1320 = !DILocation(line: 895, column: 32, scope: !1317)
!1321 = !DILocation(line: 903, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !761, file: !255, line: 903, column: 7)
!1323 = !DILocation(line: 903, column: 17, scope: !1322)
!1324 = !DILocation(line: 903, column: 7, scope: !761)
!1325 = !DILocation(line: 903, column: 32, scope: !1322)
!1326 = !DILocation(line: 915, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !761, file: !255, line: 915, column: 7)
!1328 = !DILocation(line: 915, column: 17, scope: !1327)
!1329 = !DILocation(line: 915, column: 7, scope: !761)
!1330 = !DILocation(line: 915, column: 35, scope: !1327)
!1331 = !DILocation(line: 919, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !761, file: !255, line: 919, column: 7)
!1333 = !DILocation(line: 919, column: 17, scope: !1332)
!1334 = !DILocation(line: 919, column: 7, scope: !761)
!1335 = !DILocation(line: 919, column: 32, scope: !1332)
!1336 = !DILocation(line: 923, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !761, file: !255, line: 923, column: 7)
!1338 = !DILocation(line: 923, column: 17, scope: !1337)
!1339 = !DILocation(line: 923, column: 7, scope: !761)
!1340 = !DILocation(line: 923, column: 32, scope: !1337)
!1341 = !DILocation(line: 947, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !761, file: !255, line: 947, column: 7)
!1343 = !DILocation(line: 947, column: 17, scope: !1342)
!1344 = !DILocation(line: 947, column: 7, scope: !761)
!1345 = !DILocation(line: 947, column: 33, scope: !1342)
!1346 = !DILocation(line: 955, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !761, file: !255, line: 955, column: 7)
!1348 = !DILocation(line: 955, column: 17, scope: !1347)
!1349 = !DILocation(line: 955, column: 7, scope: !761)
!1350 = !DILocation(line: 955, column: 33, scope: !1347)
!1351 = !DILocation(line: 967, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !761, file: !255, line: 967, column: 7)
!1353 = !DILocation(line: 967, column: 17, scope: !1352)
!1354 = !DILocation(line: 967, column: 7, scope: !761)
!1355 = !DILocation(line: 967, column: 34, scope: !1352)
!1356 = !DILocation(line: 991, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !761, file: !255, line: 991, column: 7)
!1358 = !DILocation(line: 991, column: 17, scope: !1357)
!1359 = !DILocation(line: 991, column: 7, scope: !761)
!1360 = !DILocation(line: 991, column: 38, scope: !1357)
!1361 = !DILocation(line: 1027, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1027, column: 7)
!1363 = !DILocation(line: 1027, column: 17, scope: !1362)
!1364 = !DILocation(line: 1027, column: 7, scope: !761)
!1365 = !DILocation(line: 1027, column: 33, scope: !1362)
!1366 = !DILocation(line: 1031, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1031, column: 7)
!1368 = !DILocation(line: 1031, column: 17, scope: !1367)
!1369 = !DILocation(line: 1031, column: 7, scope: !761)
!1370 = !DILocation(line: 1031, column: 33, scope: !1367)
!1371 = !DILocation(line: 1035, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1035, column: 7)
!1373 = !DILocation(line: 1035, column: 17, scope: !1372)
!1374 = !DILocation(line: 1035, column: 7, scope: !761)
!1375 = !DILocation(line: 1035, column: 35, scope: !1372)
!1376 = !DILocation(line: 1043, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1043, column: 7)
!1378 = !DILocation(line: 1043, column: 17, scope: !1377)
!1379 = !DILocation(line: 1043, column: 7, scope: !761)
!1380 = !DILocation(line: 1043, column: 34, scope: !1377)
!1381 = !DILocation(line: 1047, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1047, column: 7)
!1383 = !DILocation(line: 1047, column: 17, scope: !1382)
!1384 = !DILocation(line: 1047, column: 7, scope: !761)
!1385 = !DILocation(line: 1047, column: 33, scope: !1382)
!1386 = !DILocation(line: 1063, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1063, column: 7)
!1388 = !DILocation(line: 1063, column: 17, scope: !1387)
!1389 = !DILocation(line: 1063, column: 7, scope: !761)
!1390 = !DILocation(line: 1063, column: 35, scope: !1387)
!1391 = !DILocation(line: 1075, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1075, column: 7)
!1393 = !DILocation(line: 1075, column: 17, scope: !1392)
!1394 = !DILocation(line: 1075, column: 7, scope: !761)
!1395 = !DILocation(line: 1075, column: 32, scope: !1392)
!1396 = !DILocation(line: 1079, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1079, column: 7)
!1398 = !DILocation(line: 1079, column: 17, scope: !1397)
!1399 = !DILocation(line: 1079, column: 7, scope: !761)
!1400 = !DILocation(line: 1079, column: 34, scope: !1397)
!1401 = !DILocation(line: 1087, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1087, column: 7)
!1403 = !DILocation(line: 1087, column: 17, scope: !1402)
!1404 = !DILocation(line: 1087, column: 7, scope: !761)
!1405 = !DILocation(line: 1087, column: 38, scope: !1402)
!1406 = !DILocation(line: 1095, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1095, column: 7)
!1408 = !DILocation(line: 1095, column: 17, scope: !1407)
!1409 = !DILocation(line: 1095, column: 7, scope: !761)
!1410 = !DILocation(line: 1095, column: 33, scope: !1407)
!1411 = !DILocation(line: 1099, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1099, column: 7)
!1413 = !DILocation(line: 1099, column: 17, scope: !1412)
!1414 = !DILocation(line: 1099, column: 7, scope: !761)
!1415 = !DILocation(line: 1099, column: 33, scope: !1412)
!1416 = !DILocation(line: 1107, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1107, column: 7)
!1418 = !DILocation(line: 1107, column: 17, scope: !1417)
!1419 = !DILocation(line: 1107, column: 7, scope: !761)
!1420 = !DILocation(line: 1107, column: 32, scope: !1417)
!1421 = !DILocation(line: 1115, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !761, file: !255, line: 1115, column: 7)
!1423 = !DILocation(line: 1115, column: 17, scope: !1422)
!1424 = !DILocation(line: 1115, column: 7, scope: !761)
!1425 = !DILocation(line: 1115, column: 32, scope: !1422)
!1426 = !DILocation(line: 1117, column: 1, scope: !761)
!1427 = distinct !DISubprogram(name: "verror", scope: !14, file: !14, line: 251, type: !1428, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !23, !23, !8, !25}
!1430 = !DILocalVariable(name: "status", arg: 1, scope: !1427, file: !14, line: 251, type: !23)
!1431 = !DILocation(line: 251, column: 1, scope: !1427)
!1432 = !DILocalVariable(name: "errnum", arg: 2, scope: !1427, file: !14, line: 251, type: !23)
!1433 = !DILocalVariable(name: "message", arg: 3, scope: !1427, file: !14, line: 251, type: !8)
!1434 = !DILocalVariable(name: "args", arg: 4, scope: !1427, file: !14, line: 251, type: !25)
!1435 = !DILocation(line: 261, column: 3, scope: !1427)
!1436 = !DILocation(line: 265, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1427, file: !14, line: 265, column: 7)
!1438 = !DILocation(line: 265, column: 7, scope: !1427)
!1439 = !DILocation(line: 266, column: 7, scope: !1437)
!1440 = !DILocation(line: 266, column: 5, scope: !1437)
!1441 = !DILocation(line: 272, column: 16, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !14, line: 268, column: 5)
!1443 = !DILocation(line: 272, column: 32, scope: !1442)
!1444 = !DILocation(line: 272, column: 7, scope: !1442)
!1445 = !DILocation(line: 276, column: 3, scope: !1427)
!1446 = !DILocation(line: 282, column: 1, scope: !1427)
!1447 = distinct !DISubprogram(name: "flush_stdout", scope: !14, file: !14, line: 163, type: !47, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1448 = !DILocalVariable(name: "stdout_fd", scope: !1447, file: !14, line: 166, type: !23)
!1449 = !DILocation(line: 166, column: 7, scope: !1447)
!1450 = !DILocation(line: 172, column: 13, scope: !1447)
!1451 = !DILocation(line: 182, column: 12, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !14, line: 182, column: 7)
!1453 = !DILocation(line: 182, column: 9, scope: !1452)
!1454 = !DILocation(line: 182, column: 22, scope: !1452)
!1455 = !DILocation(line: 182, column: 34, scope: !1452)
!1456 = !DILocation(line: 182, column: 25, scope: !1452)
!1457 = !DILocation(line: 182, column: 7, scope: !1447)
!1458 = !DILocation(line: 184, column: 5, scope: !1452)
!1459 = !DILocation(line: 185, column: 1, scope: !1447)
!1460 = distinct !DISubprogram(name: "error_tail", scope: !14, file: !14, line: 219, type: !1428, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1461 = !DILocalVariable(name: "status", arg: 1, scope: !1460, file: !14, line: 219, type: !23)
!1462 = !DILocation(line: 219, column: 1, scope: !1460)
!1463 = !DILocalVariable(name: "errnum", arg: 2, scope: !1460, file: !14, line: 219, type: !23)
!1464 = !DILocalVariable(name: "message", arg: 3, scope: !1460, file: !14, line: 219, type: !8)
!1465 = !DILocalVariable(name: "args", arg: 4, scope: !1460, file: !14, line: 219, type: !25)
!1466 = !DILocation(line: 229, column: 13, scope: !1460)
!1467 = !DILocation(line: 229, column: 21, scope: !1460)
!1468 = !DILocation(line: 229, column: 3, scope: !1460)
!1469 = !DILocation(line: 232, column: 3, scope: !1460)
!1470 = !DILocation(line: 233, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1460, file: !14, line: 233, column: 7)
!1472 = !DILocation(line: 233, column: 7, scope: !1460)
!1473 = !DILocation(line: 234, column: 26, scope: !1471)
!1474 = !DILocation(line: 234, column: 5, scope: !1471)
!1475 = !DILocation(line: 238, column: 3, scope: !1460)
!1476 = !DILocation(line: 240, column: 3, scope: !1460)
!1477 = !DILocation(line: 241, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1460, file: !14, line: 241, column: 7)
!1479 = !DILocation(line: 241, column: 7, scope: !1460)
!1480 = !DILocation(line: 242, column: 11, scope: !1478)
!1481 = !DILocation(line: 242, column: 5, scope: !1478)
!1482 = !DILocation(line: 243, column: 1, scope: !1460)
!1483 = distinct !DISubprogram(name: "print_errno_message", scope: !14, file: !14, line: 188, type: !331, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1484 = !DILocalVariable(name: "errnum", arg: 1, scope: !1483, file: !14, line: 188, type: !23)
!1485 = !DILocation(line: 188, column: 26, scope: !1483)
!1486 = !DILocalVariable(name: "s", scope: !1483, file: !14, line: 190, type: !8)
!1487 = !DILocation(line: 190, column: 15, scope: !1483)
!1488 = !DILocalVariable(name: "errbuf", scope: !1483, file: !14, line: 193, type: !1489)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 1024)
!1492 = !DILocation(line: 193, column: 8, scope: !1483)
!1493 = !DILocation(line: 195, column: 21, scope: !1483)
!1494 = !DILocation(line: 195, column: 29, scope: !1483)
!1495 = !DILocation(line: 195, column: 7, scope: !1483)
!1496 = !DILocation(line: 195, column: 5, scope: !1483)
!1497 = !DILocation(line: 207, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1483, file: !14, line: 207, column: 7)
!1499 = !DILocation(line: 207, column: 7, scope: !1483)
!1500 = !DILocation(line: 208, column: 9, scope: !1498)
!1501 = !DILocation(line: 208, column: 7, scope: !1498)
!1502 = !DILocation(line: 208, column: 5, scope: !1498)
!1503 = !DILocation(line: 214, column: 12, scope: !1483)
!1504 = !DILocation(line: 214, column: 28, scope: !1483)
!1505 = !DILocation(line: 214, column: 3, scope: !1483)
!1506 = !DILocation(line: 216, column: 1, scope: !1483)
!1507 = distinct !DISubprogram(name: "is_open", scope: !14, file: !14, line: 145, type: !1508, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!23, !23}
!1510 = !DILocalVariable(name: "fd", arg: 1, scope: !1507, file: !14, line: 145, type: !23)
!1511 = !DILocation(line: 145, column: 14, scope: !1507)
!1512 = !DILocation(line: 157, column: 22, scope: !1507)
!1513 = !DILocation(line: 157, column: 15, scope: !1507)
!1514 = !DILocation(line: 157, column: 12, scope: !1507)
!1515 = !DILocation(line: 157, column: 3, scope: !1507)
!1516 = distinct !DISubprogram(name: "error", scope: !14, file: !14, line: 285, type: !1517, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !23, !23, !8, null}
!1519 = !DILocalVariable(name: "status", arg: 1, scope: !1516, file: !14, line: 285, type: !23)
!1520 = !DILocation(line: 285, column: 12, scope: !1516)
!1521 = !DILocalVariable(name: "errnum", arg: 2, scope: !1516, file: !14, line: 285, type: !23)
!1522 = !DILocation(line: 285, column: 24, scope: !1516)
!1523 = !DILocalVariable(name: "message", arg: 3, scope: !1516, file: !14, line: 285, type: !8)
!1524 = !DILocation(line: 285, column: 44, scope: !1516)
!1525 = !DILocalVariable(name: "ap", scope: !1516, file: !14, line: 287, type: !25)
!1526 = !DILocation(line: 287, column: 11, scope: !1516)
!1527 = !DILocation(line: 288, column: 3, scope: !1516)
!1528 = !DILocation(line: 289, column: 3, scope: !1516)
!1529 = !DILocation(line: 290, column: 3, scope: !1516)
!1530 = !DILocation(line: 291, column: 1, scope: !1516)
!1531 = !DILocalVariable(name: "status", arg: 1, scope: !20, file: !14, line: 298, type: !23)
!1532 = !DILocation(line: 298, column: 1, scope: !20)
!1533 = !DILocalVariable(name: "errnum", arg: 2, scope: !20, file: !14, line: 298, type: !23)
!1534 = !DILocalVariable(name: "file_name", arg: 3, scope: !20, file: !14, line: 298, type: !8)
!1535 = !DILocalVariable(name: "line_number", arg: 4, scope: !20, file: !14, line: 298, type: !24)
!1536 = !DILocalVariable(name: "message", arg: 5, scope: !20, file: !14, line: 298, type: !8)
!1537 = !DILocalVariable(name: "args", arg: 6, scope: !20, file: !14, line: 298, type: !25)
!1538 = !DILocation(line: 302, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !20, file: !14, line: 302, column: 7)
!1540 = !DILocation(line: 302, column: 7, scope: !20)
!1541 = !DILocation(line: 307, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !14, line: 307, column: 11)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !14, line: 303, column: 5)
!1544 = !DILocation(line: 307, column: 30, scope: !1542)
!1545 = !DILocation(line: 307, column: 27, scope: !1542)
!1546 = !DILocation(line: 308, column: 11, scope: !1542)
!1547 = !DILocation(line: 308, column: 15, scope: !1542)
!1548 = !DILocation(line: 308, column: 28, scope: !1542)
!1549 = !DILocation(line: 308, column: 25, scope: !1542)
!1550 = !DILocation(line: 309, column: 15, scope: !1542)
!1551 = !DILocation(line: 309, column: 19, scope: !1542)
!1552 = !DILocation(line: 309, column: 33, scope: !1542)
!1553 = !DILocation(line: 310, column: 19, scope: !1542)
!1554 = !DILocation(line: 310, column: 22, scope: !1542)
!1555 = !DILocation(line: 310, column: 32, scope: !1542)
!1556 = !DILocation(line: 311, column: 19, scope: !1542)
!1557 = !DILocation(line: 311, column: 30, scope: !1542)
!1558 = !DILocation(line: 311, column: 45, scope: !1542)
!1559 = !DILocation(line: 311, column: 22, scope: !1542)
!1560 = !DILocation(line: 311, column: 56, scope: !1542)
!1561 = !DILocation(line: 307, column: 11, scope: !1543)
!1562 = !DILocation(line: 314, column: 9, scope: !1542)
!1563 = !DILocation(line: 316, column: 23, scope: !1543)
!1564 = !DILocation(line: 316, column: 21, scope: !1543)
!1565 = !DILocation(line: 317, column: 25, scope: !1543)
!1566 = !DILocation(line: 317, column: 23, scope: !1543)
!1567 = !DILocation(line: 318, column: 5, scope: !1543)
!1568 = !DILocation(line: 327, column: 3, scope: !20)
!1569 = !DILocation(line: 331, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !20, file: !14, line: 331, column: 7)
!1571 = !DILocation(line: 331, column: 7, scope: !20)
!1572 = !DILocation(line: 332, column: 7, scope: !1570)
!1573 = !DILocation(line: 332, column: 5, scope: !1570)
!1574 = !DILocation(line: 338, column: 16, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !14, line: 334, column: 5)
!1576 = !DILocation(line: 338, column: 31, scope: !1575)
!1577 = !DILocation(line: 338, column: 7, scope: !1575)
!1578 = !DILocation(line: 346, column: 12, scope: !20)
!1579 = !DILocation(line: 346, column: 20, scope: !20)
!1580 = !DILocation(line: 346, column: 30, scope: !20)
!1581 = !DILocation(line: 347, column: 12, scope: !20)
!1582 = !DILocation(line: 347, column: 23, scope: !20)
!1583 = !DILocation(line: 346, column: 3, scope: !20)
!1584 = !DILocation(line: 350, column: 3, scope: !20)
!1585 = !DILocation(line: 356, column: 1, scope: !20)
!1586 = distinct !DISubprogram(name: "error_at_line", scope: !14, file: !14, line: 359, type: !1587, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !39)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !23, !23, !8, !24, !8, null}
!1589 = !DILocalVariable(name: "status", arg: 1, scope: !1586, file: !14, line: 359, type: !23)
!1590 = !DILocation(line: 359, column: 20, scope: !1586)
!1591 = !DILocalVariable(name: "errnum", arg: 2, scope: !1586, file: !14, line: 359, type: !23)
!1592 = !DILocation(line: 359, column: 32, scope: !1586)
!1593 = !DILocalVariable(name: "file_name", arg: 3, scope: !1586, file: !14, line: 359, type: !8)
!1594 = !DILocation(line: 359, column: 52, scope: !1586)
!1595 = !DILocalVariable(name: "line_number", arg: 4, scope: !1586, file: !14, line: 360, type: !24)
!1596 = !DILocation(line: 360, column: 29, scope: !1586)
!1597 = !DILocalVariable(name: "message", arg: 5, scope: !1586, file: !14, line: 360, type: !8)
!1598 = !DILocation(line: 360, column: 54, scope: !1586)
!1599 = !DILocalVariable(name: "ap", scope: !1586, file: !14, line: 362, type: !25)
!1600 = !DILocation(line: 362, column: 11, scope: !1586)
!1601 = !DILocation(line: 363, column: 3, scope: !1586)
!1602 = !DILocation(line: 364, column: 3, scope: !1586)
!1603 = !DILocation(line: 366, column: 3, scope: !1586)
!1604 = !DILocation(line: 367, column: 1, scope: !1586)
!1605 = distinct !DISubprogram(name: "ftoastr", scope: !257, file: !257, line: 112, type: !1606, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !39)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!23, !71, !125, !23, !23, !556}
!1608 = !DILocalVariable(name: "buf", arg: 1, scope: !1605, file: !257, line: 112, type: !71)
!1609 = !DILocation(line: 112, column: 16, scope: !1605)
!1610 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1605, file: !257, line: 112, type: !125)
!1611 = !DILocation(line: 112, column: 28, scope: !1605)
!1612 = !DILocalVariable(name: "flags", arg: 3, scope: !1605, file: !257, line: 112, type: !23)
!1613 = !DILocation(line: 112, column: 41, scope: !1605)
!1614 = !DILocalVariable(name: "width", arg: 4, scope: !1605, file: !257, line: 112, type: !23)
!1615 = !DILocation(line: 112, column: 52, scope: !1605)
!1616 = !DILocalVariable(name: "x", arg: 5, scope: !1605, file: !257, line: 112, type: !556)
!1617 = !DILocation(line: 112, column: 65, scope: !1605)
!1618 = !DILocalVariable(name: "promoted_x", scope: !1605, file: !257, line: 124, type: !566)
!1619 = !DILocation(line: 124, column: 18, scope: !1605)
!1620 = !DILocation(line: 124, column: 31, scope: !1605)
!1621 = !DILocalVariable(name: "format", scope: !1605, file: !257, line: 125, type: !667)
!1622 = !DILocation(line: 125, column: 8, scope: !1605)
!1623 = !DILocalVariable(name: "abs_x", scope: !1605, file: !257, line: 126, type: !556)
!1624 = !DILocation(line: 126, column: 9, scope: !1605)
!1625 = !DILocation(line: 126, column: 17, scope: !1605)
!1626 = !DILocation(line: 126, column: 19, scope: !1605)
!1627 = !DILocation(line: 126, column: 26, scope: !1605)
!1628 = !DILocation(line: 126, column: 25, scope: !1605)
!1629 = !DILocation(line: 126, column: 30, scope: !1605)
!1630 = !DILocalVariable(name: "p", scope: !1605, file: !257, line: 128, type: !71)
!1631 = !DILocation(line: 128, column: 9, scope: !1605)
!1632 = !DILocation(line: 128, column: 13, scope: !1605)
!1633 = !DILocation(line: 129, column: 5, scope: !1605)
!1634 = !DILocation(line: 129, column: 8, scope: !1605)
!1635 = !DILocation(line: 132, column: 4, scope: !1605)
!1636 = !DILocation(line: 132, column: 6, scope: !1605)
!1637 = !DILocation(line: 132, column: 19, scope: !1605)
!1638 = !DILocation(line: 132, column: 25, scope: !1605)
!1639 = !DILocation(line: 132, column: 51, scope: !1605)
!1640 = !DILocation(line: 132, column: 15, scope: !1605)
!1641 = !DILocation(line: 133, column: 4, scope: !1605)
!1642 = !DILocation(line: 133, column: 6, scope: !1605)
!1643 = !DILocation(line: 133, column: 19, scope: !1605)
!1644 = !DILocation(line: 133, column: 25, scope: !1605)
!1645 = !DILocation(line: 133, column: 51, scope: !1605)
!1646 = !DILocation(line: 133, column: 15, scope: !1605)
!1647 = !DILocation(line: 134, column: 4, scope: !1605)
!1648 = !DILocation(line: 134, column: 6, scope: !1605)
!1649 = !DILocation(line: 134, column: 19, scope: !1605)
!1650 = !DILocation(line: 134, column: 25, scope: !1605)
!1651 = !DILocation(line: 134, column: 51, scope: !1605)
!1652 = !DILocation(line: 134, column: 15, scope: !1605)
!1653 = !DILocation(line: 135, column: 4, scope: !1605)
!1654 = !DILocation(line: 135, column: 6, scope: !1605)
!1655 = !DILocation(line: 135, column: 19, scope: !1605)
!1656 = !DILocation(line: 135, column: 25, scope: !1605)
!1657 = !DILocation(line: 135, column: 51, scope: !1605)
!1658 = !DILocation(line: 135, column: 15, scope: !1605)
!1659 = !DILocation(line: 137, column: 5, scope: !1605)
!1660 = !DILocation(line: 137, column: 8, scope: !1605)
!1661 = !DILocation(line: 138, column: 5, scope: !1605)
!1662 = !DILocation(line: 138, column: 8, scope: !1605)
!1663 = !DILocation(line: 139, column: 5, scope: !1605)
!1664 = !DILocation(line: 139, column: 8, scope: !1605)
!1665 = !DILocation(line: 140, column: 4, scope: !1605)
!1666 = !DILocation(line: 140, column: 6, scope: !1605)
!1667 = !DILocation(line: 140, column: 15, scope: !1605)
!1668 = !DILocation(line: 141, column: 10, scope: !1605)
!1669 = !DILocation(line: 141, column: 16, scope: !1605)
!1670 = !DILocation(line: 141, column: 5, scope: !1605)
!1671 = !DILocation(line: 141, column: 8, scope: !1605)
!1672 = !DILocation(line: 142, column: 4, scope: !1605)
!1673 = !DILocation(line: 142, column: 6, scope: !1605)
!1674 = !DILocalVariable(name: "prec", scope: !1675, file: !257, line: 144, type: !23)
!1675 = distinct !DILexicalBlock(scope: !1605, file: !257, line: 144, column: 3)
!1676 = !DILocation(line: 144, column: 12, scope: !1675)
!1677 = !DILocation(line: 144, column: 19, scope: !1675)
!1678 = !DILocation(line: 144, column: 25, scope: !1675)
!1679 = !DILocation(line: 144, column: 8, scope: !1675)
!1680 = !DILocalVariable(name: "n", scope: !1681, file: !257, line: 146, type: !23)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !257, line: 145, column: 5)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !257, line: 144, column: 3)
!1683 = !DILocation(line: 146, column: 11, scope: !1681)
!1684 = !DILocation(line: 146, column: 25, scope: !1681)
!1685 = !DILocation(line: 146, column: 30, scope: !1681)
!1686 = !DILocation(line: 146, column: 39, scope: !1681)
!1687 = !DILocation(line: 146, column: 47, scope: !1681)
!1688 = !DILocation(line: 146, column: 54, scope: !1681)
!1689 = !DILocation(line: 146, column: 60, scope: !1681)
!1690 = !DILocation(line: 146, column: 15, scope: !1681)
!1691 = !DILocation(line: 147, column: 11, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1681, file: !257, line: 147, column: 11)
!1693 = !DILocation(line: 147, column: 13, scope: !1692)
!1694 = !DILocation(line: 148, column: 11, scope: !1692)
!1695 = !DILocation(line: 148, column: 34, scope: !1692)
!1696 = !DILocation(line: 148, column: 31, scope: !1692)
!1697 = !DILocation(line: 149, column: 11, scope: !1692)
!1698 = !DILocation(line: 149, column: 15, scope: !1692)
!1699 = !DILocation(line: 149, column: 19, scope: !1692)
!1700 = !DILocation(line: 149, column: 17, scope: !1692)
!1701 = !DILocation(line: 149, column: 27, scope: !1692)
!1702 = !DILocation(line: 149, column: 38, scope: !1692)
!1703 = !DILocation(line: 149, column: 30, scope: !1692)
!1704 = !DILocation(line: 149, column: 52, scope: !1692)
!1705 = !DILocation(line: 149, column: 49, scope: !1692)
!1706 = !DILocation(line: 147, column: 11, scope: !1681)
!1707 = !DILocation(line: 150, column: 16, scope: !1692)
!1708 = !DILocation(line: 150, column: 9, scope: !1692)
!1709 = !DILocation(line: 151, column: 5, scope: !1681)
!1710 = !DILocation(line: 144, column: 60, scope: !1682)
!1711 = !DILocation(line: 144, column: 3, scope: !1682)
!1712 = distinct !{!1712, !1713, !1714}
!1713 = !DILocation(line: 144, column: 3, scope: !1675)
!1714 = !DILocation(line: 151, column: 5, scope: !1675)
!1715 = distinct !DISubprogram(name: "getprogname", scope: !259, file: !259, line: 54, type: !1716, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !39)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!8}
!1718 = !DILocation(line: 58, column: 10, scope: !1715)
!1719 = !DILocation(line: 58, column: 3, scope: !1715)
!1720 = distinct !DISubprogram(name: "ldtoastr", scope: !650, file: !650, line: 112, type: !1721, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !39)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!23, !71, !125, !23, !23, !576}
!1723 = !DILocalVariable(name: "buf", arg: 1, scope: !1720, file: !650, line: 112, type: !71)
!1724 = !DILocation(line: 112, column: 16, scope: !1720)
!1725 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1720, file: !650, line: 112, type: !125)
!1726 = !DILocation(line: 112, column: 28, scope: !1720)
!1727 = !DILocalVariable(name: "flags", arg: 3, scope: !1720, file: !650, line: 112, type: !23)
!1728 = !DILocation(line: 112, column: 41, scope: !1720)
!1729 = !DILocalVariable(name: "width", arg: 4, scope: !1720, file: !650, line: 112, type: !23)
!1730 = !DILocation(line: 112, column: 52, scope: !1720)
!1731 = !DILocalVariable(name: "x", arg: 5, scope: !1720, file: !650, line: 112, type: !576)
!1732 = !DILocation(line: 112, column: 65, scope: !1720)
!1733 = !DILocalVariable(name: "promoted_x", scope: !1720, file: !650, line: 124, type: !576)
!1734 = !DILocation(line: 124, column: 18, scope: !1720)
!1735 = !DILocation(line: 124, column: 31, scope: !1720)
!1736 = !DILocalVariable(name: "format", scope: !1720, file: !650, line: 125, type: !667)
!1737 = !DILocation(line: 125, column: 8, scope: !1720)
!1738 = !DILocalVariable(name: "abs_x", scope: !1720, file: !650, line: 126, type: !576)
!1739 = !DILocation(line: 126, column: 9, scope: !1720)
!1740 = !DILocation(line: 126, column: 17, scope: !1720)
!1741 = !DILocation(line: 126, column: 19, scope: !1720)
!1742 = !DILocation(line: 126, column: 26, scope: !1720)
!1743 = !DILocation(line: 126, column: 25, scope: !1720)
!1744 = !DILocation(line: 126, column: 30, scope: !1720)
!1745 = !DILocalVariable(name: "p", scope: !1720, file: !650, line: 128, type: !71)
!1746 = !DILocation(line: 128, column: 9, scope: !1720)
!1747 = !DILocation(line: 128, column: 13, scope: !1720)
!1748 = !DILocation(line: 129, column: 5, scope: !1720)
!1749 = !DILocation(line: 129, column: 8, scope: !1720)
!1750 = !DILocation(line: 132, column: 4, scope: !1720)
!1751 = !DILocation(line: 132, column: 6, scope: !1720)
!1752 = !DILocation(line: 132, column: 19, scope: !1720)
!1753 = !DILocation(line: 132, column: 25, scope: !1720)
!1754 = !DILocation(line: 132, column: 51, scope: !1720)
!1755 = !DILocation(line: 132, column: 15, scope: !1720)
!1756 = !DILocation(line: 133, column: 4, scope: !1720)
!1757 = !DILocation(line: 133, column: 6, scope: !1720)
!1758 = !DILocation(line: 133, column: 19, scope: !1720)
!1759 = !DILocation(line: 133, column: 25, scope: !1720)
!1760 = !DILocation(line: 133, column: 51, scope: !1720)
!1761 = !DILocation(line: 133, column: 15, scope: !1720)
!1762 = !DILocation(line: 134, column: 4, scope: !1720)
!1763 = !DILocation(line: 134, column: 6, scope: !1720)
!1764 = !DILocation(line: 134, column: 19, scope: !1720)
!1765 = !DILocation(line: 134, column: 25, scope: !1720)
!1766 = !DILocation(line: 134, column: 51, scope: !1720)
!1767 = !DILocation(line: 134, column: 15, scope: !1720)
!1768 = !DILocation(line: 135, column: 4, scope: !1720)
!1769 = !DILocation(line: 135, column: 6, scope: !1720)
!1770 = !DILocation(line: 135, column: 19, scope: !1720)
!1771 = !DILocation(line: 135, column: 25, scope: !1720)
!1772 = !DILocation(line: 135, column: 51, scope: !1720)
!1773 = !DILocation(line: 135, column: 15, scope: !1720)
!1774 = !DILocation(line: 137, column: 5, scope: !1720)
!1775 = !DILocation(line: 137, column: 8, scope: !1720)
!1776 = !DILocation(line: 138, column: 5, scope: !1720)
!1777 = !DILocation(line: 138, column: 8, scope: !1720)
!1778 = !DILocation(line: 139, column: 5, scope: !1720)
!1779 = !DILocation(line: 139, column: 8, scope: !1720)
!1780 = !DILocation(line: 140, column: 4, scope: !1720)
!1781 = !DILocation(line: 140, column: 6, scope: !1720)
!1782 = !DILocation(line: 140, column: 15, scope: !1720)
!1783 = !DILocation(line: 141, column: 10, scope: !1720)
!1784 = !DILocation(line: 141, column: 16, scope: !1720)
!1785 = !DILocation(line: 141, column: 5, scope: !1720)
!1786 = !DILocation(line: 141, column: 8, scope: !1720)
!1787 = !DILocation(line: 142, column: 4, scope: !1720)
!1788 = !DILocation(line: 142, column: 6, scope: !1720)
!1789 = !DILocalVariable(name: "prec", scope: !1790, file: !650, line: 144, type: !23)
!1790 = distinct !DILexicalBlock(scope: !1720, file: !650, line: 144, column: 3)
!1791 = !DILocation(line: 144, column: 12, scope: !1790)
!1792 = !DILocation(line: 144, column: 19, scope: !1790)
!1793 = !DILocation(line: 144, column: 25, scope: !1790)
!1794 = !DILocation(line: 144, column: 8, scope: !1790)
!1795 = !DILocalVariable(name: "n", scope: !1796, file: !650, line: 146, type: !23)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !650, line: 145, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1790, file: !650, line: 144, column: 3)
!1798 = !DILocation(line: 146, column: 11, scope: !1796)
!1799 = !DILocation(line: 146, column: 25, scope: !1796)
!1800 = !DILocation(line: 146, column: 30, scope: !1796)
!1801 = !DILocation(line: 146, column: 39, scope: !1796)
!1802 = !DILocation(line: 146, column: 47, scope: !1796)
!1803 = !DILocation(line: 146, column: 54, scope: !1796)
!1804 = !DILocation(line: 146, column: 60, scope: !1796)
!1805 = !DILocation(line: 146, column: 15, scope: !1796)
!1806 = !DILocation(line: 147, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1796, file: !650, line: 147, column: 11)
!1808 = !DILocation(line: 147, column: 13, scope: !1807)
!1809 = !DILocation(line: 148, column: 11, scope: !1807)
!1810 = !DILocation(line: 148, column: 34, scope: !1807)
!1811 = !DILocation(line: 148, column: 31, scope: !1807)
!1812 = !DILocation(line: 149, column: 11, scope: !1807)
!1813 = !DILocation(line: 149, column: 15, scope: !1807)
!1814 = !DILocation(line: 149, column: 19, scope: !1807)
!1815 = !DILocation(line: 149, column: 17, scope: !1807)
!1816 = !DILocation(line: 149, column: 27, scope: !1807)
!1817 = !DILocation(line: 149, column: 38, scope: !1807)
!1818 = !DILocation(line: 149, column: 30, scope: !1807)
!1819 = !DILocation(line: 149, column: 52, scope: !1807)
!1820 = !DILocation(line: 149, column: 49, scope: !1807)
!1821 = !DILocation(line: 147, column: 11, scope: !1796)
!1822 = !DILocation(line: 150, column: 16, scope: !1807)
!1823 = !DILocation(line: 150, column: 9, scope: !1807)
!1824 = !DILocation(line: 151, column: 5, scope: !1796)
!1825 = !DILocation(line: 144, column: 60, scope: !1797)
!1826 = !DILocation(line: 144, column: 3, scope: !1797)
!1827 = distinct !{!1827, !1828, !1829}
!1828 = !DILocation(line: 144, column: 3, scope: !1790)
!1829 = !DILocation(line: 151, column: 5, scope: !1790)
!1830 = distinct !DISubprogram(name: "parse_long_options", scope: !52, file: !52, line: 45, type: !1831, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !39)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !23, !426, !8, !8, !8, !1833, null}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1834 = !DILocalVariable(name: "argc", arg: 1, scope: !1830, file: !52, line: 45, type: !23)
!1835 = !DILocation(line: 45, column: 25, scope: !1830)
!1836 = !DILocalVariable(name: "argv", arg: 2, scope: !1830, file: !52, line: 46, type: !426)
!1837 = !DILocation(line: 46, column: 28, scope: !1830)
!1838 = !DILocalVariable(name: "command_name", arg: 3, scope: !1830, file: !52, line: 47, type: !8)
!1839 = !DILocation(line: 47, column: 33, scope: !1830)
!1840 = !DILocalVariable(name: "package", arg: 4, scope: !1830, file: !52, line: 48, type: !8)
!1841 = !DILocation(line: 48, column: 33, scope: !1830)
!1842 = !DILocalVariable(name: "version", arg: 5, scope: !1830, file: !52, line: 49, type: !8)
!1843 = !DILocation(line: 49, column: 33, scope: !1830)
!1844 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1830, file: !52, line: 50, type: !1833)
!1845 = !DILocation(line: 50, column: 28, scope: !1830)
!1846 = !DILocalVariable(name: "saved_opterr", scope: !1830, file: !52, line: 53, type: !23)
!1847 = !DILocation(line: 53, column: 7, scope: !1830)
!1848 = !DILocation(line: 53, column: 22, scope: !1830)
!1849 = !DILocation(line: 56, column: 10, scope: !1830)
!1850 = !DILocation(line: 58, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1830, file: !52, line: 58, column: 7)
!1852 = !DILocation(line: 58, column: 12, scope: !1851)
!1853 = !DILocation(line: 58, column: 7, scope: !1830)
!1854 = !DILocalVariable(name: "c", scope: !1855, file: !52, line: 60, type: !23)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !52, line: 59, column: 5)
!1856 = !DILocation(line: 60, column: 11, scope: !1855)
!1857 = !DILocation(line: 60, column: 28, scope: !1855)
!1858 = !DILocation(line: 60, column: 34, scope: !1855)
!1859 = !DILocation(line: 60, column: 15, scope: !1855)
!1860 = !DILocation(line: 61, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !52, line: 61, column: 11)
!1862 = !DILocation(line: 61, column: 13, scope: !1861)
!1863 = !DILocation(line: 61, column: 11, scope: !1855)
!1864 = !DILocation(line: 63, column: 19, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !52, line: 62, column: 9)
!1866 = !DILocation(line: 63, column: 11, scope: !1865)
!1867 = !DILocation(line: 66, column: 17, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !52, line: 64, column: 13)
!1869 = !DILocation(line: 66, column: 15, scope: !1868)
!1870 = !DILocation(line: 67, column: 15, scope: !1868)
!1871 = !DILocalVariable(name: "authors", scope: !1872, file: !52, line: 71, type: !1873)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !52, line: 70, column: 15)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !26, line: 52, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !28, line: 32, baseType: !1875)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1876, baseType: !1877)
!1876 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !32, size: 256, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882, !1883}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1877, file: !1876, line: 71, baseType: !16, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1877, file: !1876, line: 71, baseType: !16, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1877, file: !1876, line: 71, baseType: !16, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1877, file: !1876, line: 71, baseType: !23, size: 32, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1877, file: !1876, line: 71, baseType: !23, size: 32, offset: 224)
!1884 = !DILocation(line: 71, column: 25, scope: !1872)
!1885 = !DILocation(line: 72, column: 17, scope: !1872)
!1886 = !DILocation(line: 73, column: 33, scope: !1872)
!1887 = !DILocation(line: 73, column: 41, scope: !1872)
!1888 = !DILocation(line: 73, column: 55, scope: !1872)
!1889 = !DILocation(line: 73, column: 64, scope: !1872)
!1890 = !DILocation(line: 73, column: 17, scope: !1872)
!1891 = !DILocation(line: 74, column: 17, scope: !1872)
!1892 = !DILocation(line: 79, column: 15, scope: !1868)
!1893 = !DILocation(line: 81, column: 9, scope: !1865)
!1894 = !DILocation(line: 82, column: 5, scope: !1855)
!1895 = !DILocation(line: 85, column: 12, scope: !1830)
!1896 = !DILocation(line: 85, column: 10, scope: !1830)
!1897 = !DILocation(line: 89, column: 10, scope: !1830)
!1898 = !DILocation(line: 90, column: 1, scope: !1830)
!1899 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !52, file: !52, line: 98, type: !1900, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !39)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !23, !426, !8, !8, !8, !7, !1833, null}
!1902 = !DILocalVariable(name: "argc", arg: 1, scope: !1899, file: !52, line: 98, type: !23)
!1903 = !DILocation(line: 98, column: 38, scope: !1899)
!1904 = !DILocalVariable(name: "argv", arg: 2, scope: !1899, file: !52, line: 99, type: !426)
!1905 = !DILocation(line: 99, column: 41, scope: !1899)
!1906 = !DILocalVariable(name: "command_name", arg: 3, scope: !1899, file: !52, line: 100, type: !8)
!1907 = !DILocation(line: 100, column: 46, scope: !1899)
!1908 = !DILocalVariable(name: "package", arg: 4, scope: !1899, file: !52, line: 101, type: !8)
!1909 = !DILocation(line: 101, column: 46, scope: !1899)
!1910 = !DILocalVariable(name: "version", arg: 5, scope: !1899, file: !52, line: 102, type: !8)
!1911 = !DILocation(line: 102, column: 46, scope: !1899)
!1912 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1899, file: !52, line: 103, type: !7)
!1913 = !DILocation(line: 103, column: 39, scope: !1899)
!1914 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1899, file: !52, line: 104, type: !1833)
!1915 = !DILocation(line: 104, column: 41, scope: !1899)
!1916 = !DILocalVariable(name: "saved_opterr", scope: !1899, file: !52, line: 107, type: !23)
!1917 = !DILocation(line: 107, column: 7, scope: !1899)
!1918 = !DILocation(line: 107, column: 22, scope: !1899)
!1919 = !DILocation(line: 110, column: 10, scope: !1899)
!1920 = !DILocalVariable(name: "optstring", scope: !1899, file: !52, line: 112, type: !8)
!1921 = !DILocation(line: 112, column: 15, scope: !1899)
!1922 = !DILocation(line: 112, column: 27, scope: !1899)
!1923 = !DILocalVariable(name: "c", scope: !1899, file: !52, line: 114, type: !23)
!1924 = !DILocation(line: 114, column: 7, scope: !1899)
!1925 = !DILocation(line: 114, column: 24, scope: !1899)
!1926 = !DILocation(line: 114, column: 30, scope: !1899)
!1927 = !DILocation(line: 114, column: 36, scope: !1899)
!1928 = !DILocation(line: 114, column: 11, scope: !1899)
!1929 = !DILocation(line: 115, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1899, file: !52, line: 115, column: 7)
!1931 = !DILocation(line: 115, column: 9, scope: !1930)
!1932 = !DILocation(line: 115, column: 7, scope: !1899)
!1933 = !DILocation(line: 117, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !52, line: 116, column: 5)
!1935 = !DILocation(line: 117, column: 7, scope: !1934)
!1936 = !DILocation(line: 120, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !52, line: 118, column: 9)
!1938 = !DILocation(line: 120, column: 11, scope: !1937)
!1939 = !DILocation(line: 121, column: 11, scope: !1937)
!1940 = !DILocalVariable(name: "authors", scope: !1941, file: !52, line: 125, type: !1873)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !52, line: 124, column: 11)
!1942 = !DILocation(line: 125, column: 21, scope: !1941)
!1943 = !DILocation(line: 126, column: 13, scope: !1941)
!1944 = !DILocation(line: 127, column: 29, scope: !1941)
!1945 = !DILocation(line: 127, column: 37, scope: !1941)
!1946 = !DILocation(line: 127, column: 51, scope: !1941)
!1947 = !DILocation(line: 127, column: 60, scope: !1941)
!1948 = !DILocation(line: 127, column: 13, scope: !1941)
!1949 = !DILocation(line: 128, column: 13, scope: !1941)
!1950 = !DILocation(line: 132, column: 13, scope: !1937)
!1951 = !DILocation(line: 132, column: 26, scope: !1937)
!1952 = !DILocation(line: 132, column: 11, scope: !1937)
!1953 = !DILocation(line: 133, column: 11, scope: !1937)
!1954 = !DILocation(line: 135, column: 5, scope: !1934)
!1955 = !DILocation(line: 138, column: 12, scope: !1899)
!1956 = !DILocation(line: 138, column: 10, scope: !1899)
!1957 = !DILocation(line: 139, column: 1, scope: !1899)
!1958 = distinct !DISubprogram(name: "set_program_name", scope: !69, file: !69, line: 37, type: !354, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1959 = !DILocalVariable(name: "argv0", arg: 1, scope: !1958, file: !69, line: 37, type: !8)
!1960 = !DILocation(line: 37, column: 31, scope: !1958)
!1961 = !DILocalVariable(name: "slash", scope: !1958, file: !69, line: 44, type: !8)
!1962 = !DILocation(line: 44, column: 15, scope: !1958)
!1963 = !DILocation(line: 44, column: 32, scope: !1958)
!1964 = !DILocation(line: 44, column: 23, scope: !1958)
!1965 = !DILocalVariable(name: "base", scope: !1958, file: !69, line: 45, type: !8)
!1966 = !DILocation(line: 45, column: 15, scope: !1958)
!1967 = !DILocation(line: 45, column: 22, scope: !1958)
!1968 = !DILocation(line: 45, column: 30, scope: !1958)
!1969 = !DILocation(line: 45, column: 36, scope: !1958)
!1970 = !DILocation(line: 45, column: 42, scope: !1958)
!1971 = !DILocation(line: 46, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1958, file: !69, line: 46, column: 7)
!1973 = !DILocation(line: 46, column: 19, scope: !1972)
!1974 = !DILocation(line: 46, column: 17, scope: !1972)
!1975 = !DILocation(line: 46, column: 9, scope: !1972)
!1976 = !DILocation(line: 46, column: 25, scope: !1972)
!1977 = !DILocation(line: 46, column: 35, scope: !1972)
!1978 = !DILocation(line: 46, column: 40, scope: !1972)
!1979 = !DILocation(line: 46, column: 28, scope: !1972)
!1980 = !DILocation(line: 46, column: 7, scope: !1958)
!1981 = !DILocation(line: 48, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1972, file: !69, line: 47, column: 5)
!1983 = !DILocation(line: 48, column: 13, scope: !1982)
!1984 = !DILocation(line: 49, column: 20, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !69, line: 49, column: 11)
!1986 = !DILocation(line: 49, column: 11, scope: !1985)
!1987 = !DILocation(line: 49, column: 36, scope: !1985)
!1988 = !DILocation(line: 49, column: 11, scope: !1982)
!1989 = !DILocation(line: 51, column: 16, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !69, line: 50, column: 9)
!1991 = !DILocation(line: 52, column: 19, scope: !1990)
!1992 = !DILocation(line: 52, column: 17, scope: !1990)
!1993 = !DILocation(line: 53, column: 9, scope: !1990)
!1994 = !DILocation(line: 54, column: 5, scope: !1982)
!1995 = !DILocation(line: 65, column: 18, scope: !1958)
!1996 = !DILocation(line: 65, column: 16, scope: !1958)
!1997 = !DILocation(line: 71, column: 38, scope: !1958)
!1998 = !DILocation(line: 71, column: 27, scope: !1958)
!1999 = !DILocation(line: 74, column: 44, scope: !1958)
!2000 = !DILocation(line: 74, column: 33, scope: !1958)
!2001 = !DILocation(line: 76, column: 1, scope: !1958)
!2002 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !75, file: !76, line: 38, type: !8)
!2003 = !DILocation(line: 38, column: 31, scope: !75)
!2004 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !75, file: !76, line: 38, type: !8)
!2005 = !DILocation(line: 38, column: 66, scope: !75)
!2006 = !DILocalVariable(name: "translation", scope: !75, file: !76, line: 40, type: !8)
!2007 = !DILocation(line: 40, column: 15, scope: !75)
!2008 = !DILocation(line: 40, column: 38, scope: !75)
!2009 = !DILocation(line: 40, column: 29, scope: !75)
!2010 = !DILocation(line: 41, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !75, file: !76, line: 41, column: 7)
!2012 = !DILocation(line: 41, column: 22, scope: !2011)
!2013 = !DILocation(line: 41, column: 19, scope: !2011)
!2014 = !DILocation(line: 41, column: 7, scope: !75)
!2015 = !DILocation(line: 42, column: 12, scope: !2011)
!2016 = !DILocation(line: 42, column: 5, scope: !2011)
!2017 = !DILocalVariable(name: "w", scope: !75, file: !76, line: 47, type: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !2019, line: 37, baseType: !2020)
!2019 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !231, line: 57, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !231, line: 42, baseType: !24)
!2022 = !DILocation(line: 47, column: 12, scope: !75)
!2023 = !DILocalVariable(name: "mbs", scope: !75, file: !76, line: 48, type: !2024)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !199, line: 6, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !201, line: 21, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 13, size: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2026, file: !201, line: 15, baseType: !23, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2026, file: !201, line: 20, baseType: !2030, size: 32, offset: 32)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2026, file: !201, line: 16, size: 32, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2030, file: !201, line: 18, baseType: !24, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2030, file: !201, line: 19, baseType: !210, size: 32)
!2034 = !DILocation(line: 48, column: 13, scope: !75)
!2035 = !DILocation(line: 48, column: 18, scope: !75)
!2036 = !DILocation(line: 49, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !75, file: !76, line: 49, column: 7)
!2038 = !DILocation(line: 49, column: 39, scope: !2037)
!2039 = !DILocation(line: 49, column: 44, scope: !2037)
!2040 = !DILocation(line: 49, column: 47, scope: !2037)
!2041 = !DILocation(line: 49, column: 49, scope: !2037)
!2042 = !DILocation(line: 49, column: 7, scope: !75)
!2043 = !DILocation(line: 50, column: 12, scope: !2037)
!2044 = !DILocation(line: 50, column: 5, scope: !2037)
!2045 = !DILocation(line: 53, column: 10, scope: !75)
!2046 = !DILocation(line: 53, column: 3, scope: !75)
!2047 = !DILocation(line: 54, column: 1, scope: !75)
!2048 = distinct !DISubprogram(name: "clone_quoting_options", scope: !87, file: !87, line: 113, type: !2049, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2052 = !DILocalVariable(name: "o", arg: 1, scope: !2048, file: !87, line: 113, type: !2051)
!2053 = !DILocation(line: 113, column: 48, scope: !2048)
!2054 = !DILocalVariable(name: "saved_errno", scope: !2048, file: !87, line: 115, type: !23)
!2055 = !DILocation(line: 115, column: 7, scope: !2048)
!2056 = !DILocation(line: 115, column: 21, scope: !2048)
!2057 = !DILocalVariable(name: "p", scope: !2048, file: !87, line: 116, type: !2051)
!2058 = !DILocation(line: 116, column: 27, scope: !2048)
!2059 = !DILocation(line: 116, column: 40, scope: !2048)
!2060 = !DILocation(line: 116, column: 44, scope: !2048)
!2061 = !DILocation(line: 116, column: 31, scope: !2048)
!2062 = !DILocation(line: 118, column: 11, scope: !2048)
!2063 = !DILocation(line: 118, column: 3, scope: !2048)
!2064 = !DILocation(line: 118, column: 9, scope: !2048)
!2065 = !DILocation(line: 119, column: 10, scope: !2048)
!2066 = !DILocation(line: 119, column: 3, scope: !2048)
!2067 = distinct !DISubprogram(name: "get_quoting_style", scope: !87, file: !87, line: 124, type: !2068, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!89, !2070}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!2072 = !DILocalVariable(name: "o", arg: 1, scope: !2067, file: !87, line: 124, type: !2070)
!2073 = !DILocation(line: 124, column: 50, scope: !2067)
!2074 = !DILocation(line: 126, column: 11, scope: !2067)
!2075 = !DILocation(line: 126, column: 15, scope: !2067)
!2076 = !DILocation(line: 126, column: 46, scope: !2067)
!2077 = !DILocation(line: 126, column: 3, scope: !2067)
!2078 = distinct !DISubprogram(name: "set_quoting_style", scope: !87, file: !87, line: 132, type: !2079, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2051, !89}
!2081 = !DILocalVariable(name: "o", arg: 1, scope: !2078, file: !87, line: 132, type: !2051)
!2082 = !DILocation(line: 132, column: 44, scope: !2078)
!2083 = !DILocalVariable(name: "s", arg: 2, scope: !2078, file: !87, line: 132, type: !89)
!2084 = !DILocation(line: 132, column: 66, scope: !2078)
!2085 = !DILocation(line: 134, column: 47, scope: !2078)
!2086 = !DILocation(line: 134, column: 4, scope: !2078)
!2087 = !DILocation(line: 134, column: 8, scope: !2078)
!2088 = !DILocation(line: 134, column: 39, scope: !2078)
!2089 = !DILocation(line: 134, column: 45, scope: !2078)
!2090 = !DILocation(line: 135, column: 1, scope: !2078)
!2091 = distinct !DISubprogram(name: "set_char_quoting", scope: !87, file: !87, line: 143, type: !2092, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!23, !2051, !10, !23}
!2094 = !DILocalVariable(name: "o", arg: 1, scope: !2091, file: !87, line: 143, type: !2051)
!2095 = !DILocation(line: 143, column: 43, scope: !2091)
!2096 = !DILocalVariable(name: "c", arg: 2, scope: !2091, file: !87, line: 143, type: !10)
!2097 = !DILocation(line: 143, column: 51, scope: !2091)
!2098 = !DILocalVariable(name: "i", arg: 3, scope: !2091, file: !87, line: 143, type: !23)
!2099 = !DILocation(line: 143, column: 58, scope: !2091)
!2100 = !DILocalVariable(name: "uc", scope: !2091, file: !87, line: 145, type: !196)
!2101 = !DILocation(line: 145, column: 17, scope: !2091)
!2102 = !DILocation(line: 145, column: 22, scope: !2091)
!2103 = !DILocalVariable(name: "p", scope: !2091, file: !87, line: 146, type: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2105 = !DILocation(line: 146, column: 17, scope: !2091)
!2106 = !DILocation(line: 147, column: 6, scope: !2091)
!2107 = !DILocation(line: 147, column: 10, scope: !2091)
!2108 = !DILocation(line: 147, column: 41, scope: !2091)
!2109 = !DILocation(line: 147, column: 5, scope: !2091)
!2110 = !DILocation(line: 147, column: 59, scope: !2091)
!2111 = !DILocation(line: 147, column: 62, scope: !2091)
!2112 = !DILocation(line: 147, column: 57, scope: !2091)
!2113 = !DILocalVariable(name: "shift", scope: !2091, file: !87, line: 148, type: !23)
!2114 = !DILocation(line: 148, column: 7, scope: !2091)
!2115 = !DILocation(line: 148, column: 15, scope: !2091)
!2116 = !DILocation(line: 148, column: 18, scope: !2091)
!2117 = !DILocalVariable(name: "r", scope: !2091, file: !87, line: 149, type: !24)
!2118 = !DILocation(line: 149, column: 16, scope: !2091)
!2119 = !DILocation(line: 149, column: 22, scope: !2091)
!2120 = !DILocation(line: 149, column: 21, scope: !2091)
!2121 = !DILocation(line: 149, column: 27, scope: !2091)
!2122 = !DILocation(line: 149, column: 24, scope: !2091)
!2123 = !DILocation(line: 149, column: 34, scope: !2091)
!2124 = !DILocation(line: 150, column: 11, scope: !2091)
!2125 = !DILocation(line: 150, column: 13, scope: !2091)
!2126 = !DILocation(line: 150, column: 21, scope: !2091)
!2127 = !DILocation(line: 150, column: 19, scope: !2091)
!2128 = !DILocation(line: 150, column: 27, scope: !2091)
!2129 = !DILocation(line: 150, column: 24, scope: !2091)
!2130 = !DILocation(line: 150, column: 4, scope: !2091)
!2131 = !DILocation(line: 150, column: 6, scope: !2091)
!2132 = !DILocation(line: 151, column: 10, scope: !2091)
!2133 = !DILocation(line: 151, column: 3, scope: !2091)
!2134 = distinct !DISubprogram(name: "set_quoting_flags", scope: !87, file: !87, line: 159, type: !2135, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!23, !2051, !23}
!2137 = !DILocalVariable(name: "o", arg: 1, scope: !2134, file: !87, line: 159, type: !2051)
!2138 = !DILocation(line: 159, column: 44, scope: !2134)
!2139 = !DILocalVariable(name: "i", arg: 2, scope: !2134, file: !87, line: 159, type: !23)
!2140 = !DILocation(line: 159, column: 51, scope: !2134)
!2141 = !DILocation(line: 161, column: 8, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2134, file: !87, line: 161, column: 7)
!2143 = !DILocation(line: 161, column: 7, scope: !2134)
!2144 = !DILocation(line: 162, column: 7, scope: !2142)
!2145 = !DILocation(line: 162, column: 5, scope: !2142)
!2146 = !DILocalVariable(name: "r", scope: !2134, file: !87, line: 163, type: !23)
!2147 = !DILocation(line: 163, column: 7, scope: !2134)
!2148 = !DILocation(line: 163, column: 11, scope: !2134)
!2149 = !DILocation(line: 163, column: 14, scope: !2134)
!2150 = !DILocation(line: 164, column: 14, scope: !2134)
!2151 = !DILocation(line: 164, column: 3, scope: !2134)
!2152 = !DILocation(line: 164, column: 6, scope: !2134)
!2153 = !DILocation(line: 164, column: 12, scope: !2134)
!2154 = !DILocation(line: 165, column: 10, scope: !2134)
!2155 = !DILocation(line: 165, column: 3, scope: !2134)
!2156 = distinct !DISubprogram(name: "set_custom_quoting", scope: !87, file: !87, line: 169, type: !2157, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2051, !8, !8}
!2159 = !DILocalVariable(name: "o", arg: 1, scope: !2156, file: !87, line: 169, type: !2051)
!2160 = !DILocation(line: 169, column: 45, scope: !2156)
!2161 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2156, file: !87, line: 170, type: !8)
!2162 = !DILocation(line: 170, column: 33, scope: !2156)
!2163 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2156, file: !87, line: 170, type: !8)
!2164 = !DILocation(line: 170, column: 57, scope: !2156)
!2165 = !DILocation(line: 172, column: 8, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !87, line: 172, column: 7)
!2167 = !DILocation(line: 172, column: 7, scope: !2156)
!2168 = !DILocation(line: 173, column: 7, scope: !2166)
!2169 = !DILocation(line: 173, column: 5, scope: !2166)
!2170 = !DILocation(line: 174, column: 3, scope: !2156)
!2171 = !DILocation(line: 174, column: 6, scope: !2156)
!2172 = !DILocation(line: 174, column: 12, scope: !2156)
!2173 = !DILocation(line: 175, column: 8, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2156, file: !87, line: 175, column: 7)
!2175 = !DILocation(line: 175, column: 19, scope: !2174)
!2176 = !DILocation(line: 175, column: 23, scope: !2174)
!2177 = !DILocation(line: 175, column: 7, scope: !2156)
!2178 = !DILocation(line: 176, column: 5, scope: !2174)
!2179 = !DILocation(line: 177, column: 19, scope: !2156)
!2180 = !DILocation(line: 177, column: 3, scope: !2156)
!2181 = !DILocation(line: 177, column: 6, scope: !2156)
!2182 = !DILocation(line: 177, column: 17, scope: !2156)
!2183 = !DILocation(line: 178, column: 20, scope: !2156)
!2184 = !DILocation(line: 178, column: 3, scope: !2156)
!2185 = !DILocation(line: 178, column: 6, scope: !2156)
!2186 = !DILocation(line: 178, column: 18, scope: !2156)
!2187 = !DILocation(line: 179, column: 1, scope: !2156)
!2188 = distinct !DISubprogram(name: "quotearg_buffer", scope: !87, file: !87, line: 774, type: !2189, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!125, !71, !125, !8, !125, !2070}
!2191 = !DILocalVariable(name: "buffer", arg: 1, scope: !2188, file: !87, line: 774, type: !71)
!2192 = !DILocation(line: 774, column: 24, scope: !2188)
!2193 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2188, file: !87, line: 774, type: !125)
!2194 = !DILocation(line: 774, column: 39, scope: !2188)
!2195 = !DILocalVariable(name: "arg", arg: 3, scope: !2188, file: !87, line: 775, type: !8)
!2196 = !DILocation(line: 775, column: 30, scope: !2188)
!2197 = !DILocalVariable(name: "argsize", arg: 4, scope: !2188, file: !87, line: 775, type: !125)
!2198 = !DILocation(line: 775, column: 42, scope: !2188)
!2199 = !DILocalVariable(name: "o", arg: 5, scope: !2188, file: !87, line: 776, type: !2070)
!2200 = !DILocation(line: 776, column: 48, scope: !2188)
!2201 = !DILocalVariable(name: "p", scope: !2188, file: !87, line: 778, type: !2070)
!2202 = !DILocation(line: 778, column: 33, scope: !2188)
!2203 = !DILocation(line: 778, column: 37, scope: !2188)
!2204 = !DILocation(line: 778, column: 41, scope: !2188)
!2205 = !DILocalVariable(name: "saved_errno", scope: !2188, file: !87, line: 779, type: !23)
!2206 = !DILocation(line: 779, column: 7, scope: !2188)
!2207 = !DILocation(line: 779, column: 21, scope: !2188)
!2208 = !DILocalVariable(name: "r", scope: !2188, file: !87, line: 780, type: !125)
!2209 = !DILocation(line: 780, column: 10, scope: !2188)
!2210 = !DILocation(line: 780, column: 40, scope: !2188)
!2211 = !DILocation(line: 780, column: 48, scope: !2188)
!2212 = !DILocation(line: 780, column: 60, scope: !2188)
!2213 = !DILocation(line: 780, column: 65, scope: !2188)
!2214 = !DILocation(line: 781, column: 40, scope: !2188)
!2215 = !DILocation(line: 781, column: 43, scope: !2188)
!2216 = !DILocation(line: 781, column: 50, scope: !2188)
!2217 = !DILocation(line: 781, column: 53, scope: !2188)
!2218 = !DILocation(line: 781, column: 60, scope: !2188)
!2219 = !DILocation(line: 781, column: 63, scope: !2188)
!2220 = !DILocation(line: 782, column: 40, scope: !2188)
!2221 = !DILocation(line: 782, column: 43, scope: !2188)
!2222 = !DILocation(line: 782, column: 55, scope: !2188)
!2223 = !DILocation(line: 782, column: 58, scope: !2188)
!2224 = !DILocation(line: 780, column: 14, scope: !2188)
!2225 = !DILocation(line: 783, column: 11, scope: !2188)
!2226 = !DILocation(line: 783, column: 3, scope: !2188)
!2227 = !DILocation(line: 783, column: 9, scope: !2188)
!2228 = !DILocation(line: 784, column: 10, scope: !2188)
!2229 = !DILocation(line: 784, column: 3, scope: !2188)
!2230 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !87, file: !87, line: 251, type: !2231, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !39)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!125, !71, !125, !8, !125, !89, !23, !2233, !8, !8}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2235 = !DILocalVariable(name: "buffer", arg: 1, scope: !2230, file: !87, line: 251, type: !71)
!2236 = !DILocation(line: 251, column: 33, scope: !2230)
!2237 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2230, file: !87, line: 251, type: !125)
!2238 = !DILocation(line: 251, column: 48, scope: !2230)
!2239 = !DILocalVariable(name: "arg", arg: 3, scope: !2230, file: !87, line: 252, type: !8)
!2240 = !DILocation(line: 252, column: 39, scope: !2230)
!2241 = !DILocalVariable(name: "argsize", arg: 4, scope: !2230, file: !87, line: 252, type: !125)
!2242 = !DILocation(line: 252, column: 51, scope: !2230)
!2243 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2230, file: !87, line: 253, type: !89)
!2244 = !DILocation(line: 253, column: 46, scope: !2230)
!2245 = !DILocalVariable(name: "flags", arg: 6, scope: !2230, file: !87, line: 253, type: !23)
!2246 = !DILocation(line: 253, column: 65, scope: !2230)
!2247 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2230, file: !87, line: 254, type: !2233)
!2248 = !DILocation(line: 254, column: 47, scope: !2230)
!2249 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2230, file: !87, line: 255, type: !8)
!2250 = !DILocation(line: 255, column: 39, scope: !2230)
!2251 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2230, file: !87, line: 256, type: !8)
!2252 = !DILocation(line: 256, column: 39, scope: !2230)
!2253 = !DILocalVariable(name: "unibyte_locale", scope: !2230, file: !87, line: 258, type: !7)
!2254 = !DILocation(line: 258, column: 8, scope: !2230)
!2255 = !DILocation(line: 258, column: 25, scope: !2230)
!2256 = !DILocation(line: 258, column: 36, scope: !2230)
!2257 = !DILocalVariable(name: "len", scope: !2230, file: !87, line: 260, type: !125)
!2258 = !DILocation(line: 260, column: 10, scope: !2230)
!2259 = !DILocalVariable(name: "orig_buffersize", scope: !2230, file: !87, line: 261, type: !125)
!2260 = !DILocation(line: 261, column: 10, scope: !2230)
!2261 = !DILocalVariable(name: "quote_string", scope: !2230, file: !87, line: 262, type: !8)
!2262 = !DILocation(line: 262, column: 15, scope: !2230)
!2263 = !DILocalVariable(name: "quote_string_len", scope: !2230, file: !87, line: 263, type: !125)
!2264 = !DILocation(line: 263, column: 10, scope: !2230)
!2265 = !DILocalVariable(name: "backslash_escapes", scope: !2230, file: !87, line: 264, type: !7)
!2266 = !DILocation(line: 264, column: 8, scope: !2230)
!2267 = !DILocalVariable(name: "elide_outer_quotes", scope: !2230, file: !87, line: 265, type: !7)
!2268 = !DILocation(line: 265, column: 8, scope: !2230)
!2269 = !DILocation(line: 265, column: 30, scope: !2230)
!2270 = !DILocation(line: 265, column: 36, scope: !2230)
!2271 = !DILocation(line: 265, column: 61, scope: !2230)
!2272 = !DILocalVariable(name: "encountered_single_quote", scope: !2230, file: !87, line: 266, type: !7)
!2273 = !DILocation(line: 266, column: 8, scope: !2230)
!2274 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2230, file: !87, line: 267, type: !7)
!2275 = !DILocation(line: 267, column: 8, scope: !2230)
!2276 = !DILocation(line: 267, column: 3, scope: !2230)
!2277 = !DILabel(scope: !2230, name: "process_input", file: !87, line: 308)
!2278 = !DILocation(line: 308, column: 2, scope: !2230)
!2279 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2230, file: !87, line: 309, type: !7)
!2280 = !DILocation(line: 309, column: 8, scope: !2230)
!2281 = !DILocation(line: 311, column: 11, scope: !2230)
!2282 = !DILocation(line: 311, column: 3, scope: !2230)
!2283 = !DILocation(line: 314, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 312, column: 5)
!2285 = !DILocation(line: 315, column: 26, scope: !2284)
!2286 = !DILocation(line: 315, column: 7, scope: !2284)
!2287 = !DILocation(line: 318, column: 12, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !87, line: 318, column: 11)
!2289 = !DILocation(line: 318, column: 11, scope: !2284)
!2290 = !DILocation(line: 319, column: 9, scope: !2288)
!2291 = !DILocation(line: 319, column: 9, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !87, line: 319, column: 9)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !87, line: 319, column: 9)
!2294 = !DILocation(line: 319, column: 9, scope: !2293)
!2295 = !DILocation(line: 320, column: 25, scope: !2284)
!2296 = !DILocation(line: 321, column: 20, scope: !2284)
!2297 = !DILocation(line: 322, column: 24, scope: !2284)
!2298 = !DILocation(line: 323, column: 7, scope: !2284)
!2299 = !DILocation(line: 326, column: 25, scope: !2284)
!2300 = !DILocation(line: 327, column: 26, scope: !2284)
!2301 = !DILocation(line: 328, column: 7, scope: !2284)
!2302 = !DILocation(line: 334, column: 13, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !87, line: 334, column: 13)
!2304 = distinct !DILexicalBlock(scope: !2284, file: !87, line: 333, column: 7)
!2305 = !DILocation(line: 334, column: 27, scope: !2303)
!2306 = !DILocation(line: 334, column: 13, scope: !2304)
!2307 = !DILocation(line: 357, column: 50, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !87, line: 335, column: 11)
!2309 = !DILocation(line: 357, column: 26, scope: !2308)
!2310 = !DILocation(line: 357, column: 24, scope: !2308)
!2311 = !DILocation(line: 358, column: 51, scope: !2308)
!2312 = !DILocation(line: 358, column: 27, scope: !2308)
!2313 = !DILocation(line: 358, column: 25, scope: !2308)
!2314 = !DILocation(line: 359, column: 11, scope: !2308)
!2315 = !DILocation(line: 360, column: 14, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2304, file: !87, line: 360, column: 13)
!2317 = !DILocation(line: 360, column: 13, scope: !2304)
!2318 = !DILocalVariable(name: "lq", scope: !2319, file: !87, line: 361, type: !8)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !87, line: 361, column: 11)
!2320 = !DILocation(line: 361, column: 28, scope: !2319)
!2321 = !DILocation(line: 361, column: 33, scope: !2319)
!2322 = !DILocation(line: 361, column: 16, scope: !2319)
!2323 = !DILocation(line: 361, column: 46, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !87, line: 361, column: 11)
!2325 = !DILocation(line: 361, column: 45, scope: !2324)
!2326 = !DILocation(line: 361, column: 11, scope: !2319)
!2327 = !DILocation(line: 362, column: 13, scope: !2324)
!2328 = !DILocation(line: 362, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !87, line: 362, column: 13)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !87, line: 362, column: 13)
!2331 = !DILocation(line: 362, column: 13, scope: !2330)
!2332 = !DILocation(line: 361, column: 52, scope: !2324)
!2333 = !DILocation(line: 361, column: 11, scope: !2324)
!2334 = distinct !{!2334, !2326, !2335, !387}
!2335 = !DILocation(line: 362, column: 13, scope: !2319)
!2336 = !DILocation(line: 363, column: 27, scope: !2304)
!2337 = !DILocation(line: 364, column: 24, scope: !2304)
!2338 = !DILocation(line: 364, column: 22, scope: !2304)
!2339 = !DILocation(line: 365, column: 36, scope: !2304)
!2340 = !DILocation(line: 365, column: 28, scope: !2304)
!2341 = !DILocation(line: 365, column: 26, scope: !2304)
!2342 = !DILocation(line: 367, column: 7, scope: !2284)
!2343 = !DILocation(line: 370, column: 25, scope: !2284)
!2344 = !DILocation(line: 370, column: 7, scope: !2284)
!2345 = !DILocation(line: 373, column: 26, scope: !2284)
!2346 = !DILocation(line: 373, column: 7, scope: !2284)
!2347 = !DILocation(line: 376, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2284, file: !87, line: 376, column: 11)
!2349 = !DILocation(line: 376, column: 11, scope: !2284)
!2350 = !DILocation(line: 377, column: 27, scope: !2348)
!2351 = !DILocation(line: 377, column: 9, scope: !2348)
!2352 = !DILocation(line: 380, column: 21, scope: !2284)
!2353 = !DILocation(line: 381, column: 12, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2284, file: !87, line: 381, column: 11)
!2355 = !DILocation(line: 381, column: 11, scope: !2284)
!2356 = !DILocation(line: 382, column: 9, scope: !2354)
!2357 = !DILocation(line: 382, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !87, line: 382, column: 9)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !87, line: 382, column: 9)
!2360 = !DILocation(line: 382, column: 9, scope: !2359)
!2361 = !DILocation(line: 383, column: 20, scope: !2284)
!2362 = !DILocation(line: 384, column: 24, scope: !2284)
!2363 = !DILocation(line: 385, column: 7, scope: !2284)
!2364 = !DILocation(line: 388, column: 26, scope: !2284)
!2365 = !DILocation(line: 389, column: 7, scope: !2284)
!2366 = !DILocation(line: 392, column: 7, scope: !2284)
!2367 = !DILocalVariable(name: "i", scope: !2368, file: !87, line: 395, type: !125)
!2368 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 395, column: 3)
!2369 = !DILocation(line: 395, column: 15, scope: !2368)
!2370 = !DILocation(line: 395, column: 8, scope: !2368)
!2371 = !DILocation(line: 395, column: 26, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !87, line: 395, column: 3)
!2373 = !DILocation(line: 395, column: 34, scope: !2372)
!2374 = !DILocation(line: 395, column: 48, scope: !2372)
!2375 = !DILocation(line: 395, column: 52, scope: !2372)
!2376 = !DILocation(line: 395, column: 55, scope: !2372)
!2377 = !DILocation(line: 395, column: 65, scope: !2372)
!2378 = !DILocation(line: 395, column: 70, scope: !2372)
!2379 = !DILocation(line: 395, column: 67, scope: !2372)
!2380 = !DILocation(line: 395, column: 23, scope: !2372)
!2381 = !DILocation(line: 395, column: 3, scope: !2368)
!2382 = !DILocalVariable(name: "is_right_quote", scope: !2383, file: !87, line: 397, type: !7)
!2383 = distinct !DILexicalBlock(scope: !2372, file: !87, line: 396, column: 5)
!2384 = !DILocation(line: 397, column: 12, scope: !2383)
!2385 = !DILocalVariable(name: "escaping", scope: !2383, file: !87, line: 398, type: !7)
!2386 = !DILocation(line: 398, column: 12, scope: !2383)
!2387 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2383, file: !87, line: 399, type: !7)
!2388 = !DILocation(line: 399, column: 12, scope: !2383)
!2389 = !DILocation(line: 401, column: 11, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 401, column: 11)
!2391 = !DILocation(line: 402, column: 11, scope: !2390)
!2392 = !DILocation(line: 402, column: 14, scope: !2390)
!2393 = !DILocation(line: 402, column: 28, scope: !2390)
!2394 = !DILocation(line: 403, column: 11, scope: !2390)
!2395 = !DILocation(line: 403, column: 14, scope: !2390)
!2396 = !DILocation(line: 404, column: 11, scope: !2390)
!2397 = !DILocation(line: 404, column: 15, scope: !2390)
!2398 = !DILocation(line: 404, column: 19, scope: !2390)
!2399 = !DILocation(line: 404, column: 17, scope: !2390)
!2400 = !DILocation(line: 405, column: 19, scope: !2390)
!2401 = !DILocation(line: 405, column: 27, scope: !2390)
!2402 = !DILocation(line: 405, column: 39, scope: !2390)
!2403 = !DILocation(line: 405, column: 46, scope: !2390)
!2404 = !DILocation(line: 405, column: 44, scope: !2390)
!2405 = !DILocation(line: 409, column: 40, scope: !2390)
!2406 = !DILocation(line: 409, column: 32, scope: !2390)
!2407 = !DILocation(line: 409, column: 30, scope: !2390)
!2408 = !DILocation(line: 409, column: 48, scope: !2390)
!2409 = !DILocation(line: 405, column: 15, scope: !2390)
!2410 = !DILocation(line: 410, column: 11, scope: !2390)
!2411 = !DILocation(line: 410, column: 21, scope: !2390)
!2412 = !DILocation(line: 410, column: 27, scope: !2390)
!2413 = !DILocation(line: 410, column: 25, scope: !2390)
!2414 = !DILocation(line: 410, column: 30, scope: !2390)
!2415 = !DILocation(line: 410, column: 44, scope: !2390)
!2416 = !DILocation(line: 410, column: 14, scope: !2390)
!2417 = !DILocation(line: 401, column: 11, scope: !2383)
!2418 = !DILocation(line: 412, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !87, line: 412, column: 15)
!2420 = distinct !DILexicalBlock(scope: !2390, file: !87, line: 411, column: 9)
!2421 = !DILocation(line: 412, column: 15, scope: !2420)
!2422 = !DILocation(line: 413, column: 13, scope: !2419)
!2423 = !DILocation(line: 414, column: 26, scope: !2420)
!2424 = !DILocation(line: 415, column: 9, scope: !2420)
!2425 = !DILocalVariable(name: "c", scope: !2383, file: !87, line: 417, type: !196)
!2426 = !DILocation(line: 417, column: 21, scope: !2383)
!2427 = !DILocation(line: 417, column: 25, scope: !2383)
!2428 = !DILocation(line: 417, column: 29, scope: !2383)
!2429 = !DILocation(line: 418, column: 15, scope: !2383)
!2430 = !DILocation(line: 418, column: 7, scope: !2383)
!2431 = !DILocation(line: 421, column: 15, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 421, column: 15)
!2433 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 419, column: 9)
!2434 = !DILocation(line: 421, column: 15, scope: !2433)
!2435 = !DILocation(line: 423, column: 15, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !87, line: 422, column: 13)
!2437 = !DILocation(line: 423, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !87, line: 423, column: 15)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !87, line: 423, column: 15)
!2440 = !DILocation(line: 423, column: 15, scope: !2439)
!2441 = !DILocation(line: 423, column: 15, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2439, file: !87, line: 423, column: 15)
!2443 = !DILocation(line: 423, column: 15, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2442, file: !87, line: 423, column: 15)
!2445 = !DILocation(line: 423, column: 15, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !87, line: 423, column: 15)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !87, line: 423, column: 15)
!2448 = !DILocation(line: 423, column: 15, scope: !2447)
!2449 = !DILocation(line: 423, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !87, line: 423, column: 15)
!2451 = distinct !DILexicalBlock(scope: !2444, file: !87, line: 423, column: 15)
!2452 = !DILocation(line: 423, column: 15, scope: !2451)
!2453 = !DILocation(line: 423, column: 15, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !87, line: 423, column: 15)
!2455 = distinct !DILexicalBlock(scope: !2444, file: !87, line: 423, column: 15)
!2456 = !DILocation(line: 423, column: 15, scope: !2455)
!2457 = !DILocation(line: 423, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !87, line: 423, column: 15)
!2459 = distinct !DILexicalBlock(scope: !2439, file: !87, line: 423, column: 15)
!2460 = !DILocation(line: 423, column: 15, scope: !2459)
!2461 = !DILocation(line: 430, column: 19, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2436, file: !87, line: 430, column: 19)
!2463 = !DILocation(line: 430, column: 33, scope: !2462)
!2464 = !DILocation(line: 431, column: 19, scope: !2462)
!2465 = !DILocation(line: 431, column: 22, scope: !2462)
!2466 = !DILocation(line: 431, column: 24, scope: !2462)
!2467 = !DILocation(line: 431, column: 30, scope: !2462)
!2468 = !DILocation(line: 431, column: 28, scope: !2462)
!2469 = !DILocation(line: 431, column: 38, scope: !2462)
!2470 = !DILocation(line: 431, column: 48, scope: !2462)
!2471 = !DILocation(line: 431, column: 52, scope: !2462)
!2472 = !DILocation(line: 431, column: 54, scope: !2462)
!2473 = !DILocation(line: 431, column: 45, scope: !2462)
!2474 = !DILocation(line: 431, column: 59, scope: !2462)
!2475 = !DILocation(line: 431, column: 62, scope: !2462)
!2476 = !DILocation(line: 431, column: 66, scope: !2462)
!2477 = !DILocation(line: 431, column: 68, scope: !2462)
!2478 = !DILocation(line: 431, column: 73, scope: !2462)
!2479 = !DILocation(line: 430, column: 19, scope: !2436)
!2480 = !DILocation(line: 433, column: 19, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2462, file: !87, line: 432, column: 17)
!2482 = !DILocation(line: 433, column: 19, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !87, line: 433, column: 19)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !87, line: 433, column: 19)
!2485 = !DILocation(line: 433, column: 19, scope: !2484)
!2486 = !DILocation(line: 434, column: 19, scope: !2481)
!2487 = !DILocation(line: 434, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !87, line: 434, column: 19)
!2489 = distinct !DILexicalBlock(scope: !2481, file: !87, line: 434, column: 19)
!2490 = !DILocation(line: 434, column: 19, scope: !2489)
!2491 = !DILocation(line: 435, column: 17, scope: !2481)
!2492 = !DILocation(line: 436, column: 17, scope: !2436)
!2493 = !DILocation(line: 441, column: 13, scope: !2436)
!2494 = !DILocation(line: 442, column: 20, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2432, file: !87, line: 442, column: 20)
!2496 = !DILocation(line: 442, column: 26, scope: !2495)
!2497 = !DILocation(line: 442, column: 20, scope: !2432)
!2498 = !DILocation(line: 443, column: 13, scope: !2495)
!2499 = !DILocation(line: 444, column: 11, scope: !2433)
!2500 = !DILocation(line: 447, column: 20, scope: !2433)
!2501 = !DILocation(line: 447, column: 11, scope: !2433)
!2502 = !DILocation(line: 450, column: 19, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !87, line: 450, column: 19)
!2504 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 448, column: 13)
!2505 = !DILocation(line: 450, column: 19, scope: !2504)
!2506 = !DILocation(line: 451, column: 17, scope: !2503)
!2507 = !DILocation(line: 452, column: 15, scope: !2504)
!2508 = !DILocation(line: 455, column: 20, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !87, line: 455, column: 19)
!2510 = !DILocation(line: 455, column: 26, scope: !2509)
!2511 = !DILocation(line: 456, column: 19, scope: !2509)
!2512 = !DILocation(line: 456, column: 22, scope: !2509)
!2513 = !DILocation(line: 456, column: 24, scope: !2509)
!2514 = !DILocation(line: 456, column: 30, scope: !2509)
!2515 = !DILocation(line: 456, column: 28, scope: !2509)
!2516 = !DILocation(line: 456, column: 38, scope: !2509)
!2517 = !DILocation(line: 456, column: 41, scope: !2509)
!2518 = !DILocation(line: 456, column: 45, scope: !2509)
!2519 = !DILocation(line: 456, column: 47, scope: !2509)
!2520 = !DILocation(line: 456, column: 52, scope: !2509)
!2521 = !DILocation(line: 455, column: 19, scope: !2504)
!2522 = !DILocation(line: 457, column: 25, scope: !2509)
!2523 = !DILocation(line: 457, column: 29, scope: !2509)
!2524 = !DILocation(line: 457, column: 31, scope: !2509)
!2525 = !DILocation(line: 457, column: 17, scope: !2509)
!2526 = !DILocation(line: 464, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !87, line: 464, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2509, file: !87, line: 458, column: 19)
!2529 = !DILocation(line: 464, column: 25, scope: !2528)
!2530 = !DILocation(line: 465, column: 23, scope: !2527)
!2531 = !DILocation(line: 466, column: 25, scope: !2528)
!2532 = !DILocation(line: 466, column: 29, scope: !2528)
!2533 = !DILocation(line: 466, column: 31, scope: !2528)
!2534 = !DILocation(line: 466, column: 23, scope: !2528)
!2535 = !DILocation(line: 467, column: 23, scope: !2528)
!2536 = !DILocation(line: 468, column: 21, scope: !2528)
!2537 = !DILocation(line: 468, column: 21, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !87, line: 468, column: 21)
!2539 = distinct !DILexicalBlock(scope: !2528, file: !87, line: 468, column: 21)
!2540 = !DILocation(line: 468, column: 21, scope: !2539)
!2541 = !DILocation(line: 469, column: 21, scope: !2528)
!2542 = !DILocation(line: 469, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !87, line: 469, column: 21)
!2544 = distinct !DILexicalBlock(scope: !2528, file: !87, line: 469, column: 21)
!2545 = !DILocation(line: 469, column: 21, scope: !2544)
!2546 = !DILocation(line: 470, column: 21, scope: !2528)
!2547 = !DILocation(line: 470, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !87, line: 470, column: 21)
!2549 = distinct !DILexicalBlock(scope: !2528, file: !87, line: 470, column: 21)
!2550 = !DILocation(line: 470, column: 21, scope: !2549)
!2551 = !DILocation(line: 471, column: 21, scope: !2528)
!2552 = !DILocation(line: 471, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !87, line: 471, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2528, file: !87, line: 471, column: 21)
!2555 = !DILocation(line: 471, column: 21, scope: !2554)
!2556 = !DILocation(line: 472, column: 21, scope: !2528)
!2557 = !DILocation(line: 473, column: 19, scope: !2528)
!2558 = !DILocation(line: 474, column: 15, scope: !2504)
!2559 = !DILocation(line: 476, column: 11, scope: !2433)
!2560 = !DILocation(line: 481, column: 26, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 478, column: 9)
!2562 = !DILocation(line: 481, column: 33, scope: !2561)
!2563 = !DILocation(line: 482, column: 26, scope: !2561)
!2564 = !DILocation(line: 482, column: 33, scope: !2561)
!2565 = !DILocation(line: 483, column: 26, scope: !2561)
!2566 = !DILocation(line: 483, column: 33, scope: !2561)
!2567 = !DILocation(line: 484, column: 26, scope: !2561)
!2568 = !DILocation(line: 484, column: 33, scope: !2561)
!2569 = !DILocation(line: 485, column: 26, scope: !2561)
!2570 = !DILocation(line: 485, column: 33, scope: !2561)
!2571 = !DILocation(line: 486, column: 26, scope: !2561)
!2572 = !DILocation(line: 486, column: 33, scope: !2561)
!2573 = !DILocation(line: 487, column: 26, scope: !2561)
!2574 = !DILocation(line: 487, column: 33, scope: !2561)
!2575 = !DILocation(line: 488, column: 28, scope: !2561)
!2576 = !DILocation(line: 488, column: 26, scope: !2561)
!2577 = !DILocation(line: 490, column: 17, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2561, file: !87, line: 490, column: 17)
!2579 = !DILocation(line: 490, column: 31, scope: !2578)
!2580 = !DILocation(line: 490, column: 17, scope: !2561)
!2581 = !DILocation(line: 492, column: 21, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !87, line: 492, column: 21)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !87, line: 491, column: 15)
!2584 = !DILocation(line: 492, column: 21, scope: !2583)
!2585 = !DILocation(line: 493, column: 19, scope: !2582)
!2586 = !DILocation(line: 494, column: 17, scope: !2583)
!2587 = !DILocation(line: 499, column: 17, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2561, file: !87, line: 499, column: 17)
!2589 = !DILocation(line: 499, column: 35, scope: !2588)
!2590 = !DILocation(line: 499, column: 38, scope: !2588)
!2591 = !DILocation(line: 499, column: 57, scope: !2588)
!2592 = !DILocation(line: 499, column: 60, scope: !2588)
!2593 = !DILocation(line: 499, column: 17, scope: !2561)
!2594 = !DILocation(line: 500, column: 15, scope: !2588)
!2595 = !DILabel(scope: !2561, name: "c_and_shell_escape", file: !87, line: 502)
!2596 = !DILocation(line: 502, column: 11, scope: !2561)
!2597 = !DILocation(line: 503, column: 17, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2561, file: !87, line: 503, column: 17)
!2599 = !DILocation(line: 503, column: 31, scope: !2598)
!2600 = !DILocation(line: 504, column: 17, scope: !2598)
!2601 = !DILocation(line: 504, column: 20, scope: !2598)
!2602 = !DILocation(line: 503, column: 17, scope: !2561)
!2603 = !DILocation(line: 505, column: 15, scope: !2598)
!2604 = !DILabel(scope: !2561, name: "c_escape", file: !87, line: 507)
!2605 = !DILocation(line: 507, column: 11, scope: !2561)
!2606 = !DILocation(line: 508, column: 17, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2561, file: !87, line: 508, column: 17)
!2608 = !DILocation(line: 508, column: 17, scope: !2561)
!2609 = !DILocation(line: 510, column: 21, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !87, line: 509, column: 15)
!2611 = !DILocation(line: 510, column: 19, scope: !2610)
!2612 = !DILocation(line: 511, column: 17, scope: !2610)
!2613 = !DILocation(line: 513, column: 13, scope: !2561)
!2614 = !DILocation(line: 517, column: 18, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 517, column: 15)
!2616 = !DILocation(line: 517, column: 26, scope: !2615)
!2617 = !DILocation(line: 517, column: 15, scope: !2433)
!2618 = !DILocation(line: 517, column: 40, scope: !2615)
!2619 = !DILocation(line: 517, column: 47, scope: !2615)
!2620 = !DILocation(line: 517, column: 57, scope: !2615)
!2621 = !DILocation(line: 517, column: 65, scope: !2615)
!2622 = !DILocation(line: 518, column: 13, scope: !2615)
!2623 = !DILocation(line: 517, column: 69, scope: !2615)
!2624 = !DILocation(line: 521, column: 15, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 521, column: 15)
!2626 = !DILocation(line: 521, column: 17, scope: !2625)
!2627 = !DILocation(line: 521, column: 15, scope: !2433)
!2628 = !DILocation(line: 522, column: 13, scope: !2625)
!2629 = !DILocation(line: 521, column: 20, scope: !2625)
!2630 = !DILocation(line: 525, column: 36, scope: !2433)
!2631 = !DILocation(line: 525, column: 11, scope: !2433)
!2632 = !DILocation(line: 536, column: 15, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 536, column: 15)
!2634 = !DILocation(line: 536, column: 29, scope: !2633)
!2635 = !DILocation(line: 537, column: 15, scope: !2633)
!2636 = !DILocation(line: 537, column: 18, scope: !2633)
!2637 = !DILocation(line: 536, column: 15, scope: !2433)
!2638 = !DILocation(line: 538, column: 13, scope: !2633)
!2639 = !DILocation(line: 539, column: 11, scope: !2433)
!2640 = !DILocation(line: 542, column: 36, scope: !2433)
!2641 = !DILocation(line: 543, column: 36, scope: !2433)
!2642 = !DILocation(line: 544, column: 15, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 544, column: 15)
!2644 = !DILocation(line: 544, column: 29, scope: !2643)
!2645 = !DILocation(line: 544, column: 15, scope: !2433)
!2646 = !DILocation(line: 546, column: 19, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !87, line: 546, column: 19)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !87, line: 545, column: 13)
!2649 = !DILocation(line: 546, column: 19, scope: !2648)
!2650 = !DILocation(line: 547, column: 17, scope: !2647)
!2651 = !DILocation(line: 549, column: 19, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !87, line: 549, column: 19)
!2653 = !DILocation(line: 549, column: 30, scope: !2652)
!2654 = !DILocation(line: 549, column: 35, scope: !2652)
!2655 = !DILocation(line: 549, column: 19, scope: !2648)
!2656 = !DILocation(line: 554, column: 37, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !87, line: 550, column: 17)
!2658 = !DILocation(line: 554, column: 35, scope: !2657)
!2659 = !DILocation(line: 555, column: 30, scope: !2657)
!2660 = !DILocation(line: 556, column: 17, scope: !2657)
!2661 = !DILocation(line: 558, column: 15, scope: !2648)
!2662 = !DILocation(line: 558, column: 15, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !87, line: 558, column: 15)
!2664 = distinct !DILexicalBlock(scope: !2648, file: !87, line: 558, column: 15)
!2665 = !DILocation(line: 558, column: 15, scope: !2664)
!2666 = !DILocation(line: 559, column: 15, scope: !2648)
!2667 = !DILocation(line: 559, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !87, line: 559, column: 15)
!2669 = distinct !DILexicalBlock(scope: !2648, file: !87, line: 559, column: 15)
!2670 = !DILocation(line: 559, column: 15, scope: !2669)
!2671 = !DILocation(line: 560, column: 15, scope: !2648)
!2672 = !DILocation(line: 560, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !87, line: 560, column: 15)
!2674 = distinct !DILexicalBlock(scope: !2648, file: !87, line: 560, column: 15)
!2675 = !DILocation(line: 560, column: 15, scope: !2674)
!2676 = !DILocation(line: 561, column: 40, scope: !2648)
!2677 = !DILocation(line: 562, column: 13, scope: !2648)
!2678 = !DILocation(line: 563, column: 11, scope: !2433)
!2679 = !DILocation(line: 587, column: 36, scope: !2433)
!2680 = !DILocation(line: 588, column: 11, scope: !2433)
!2681 = !DILocalVariable(name: "m", scope: !2682, file: !87, line: 598, type: !125)
!2682 = distinct !DILexicalBlock(scope: !2433, file: !87, line: 596, column: 11)
!2683 = !DILocation(line: 598, column: 20, scope: !2682)
!2684 = !DILocalVariable(name: "printable", scope: !2682, file: !87, line: 600, type: !7)
!2685 = !DILocation(line: 600, column: 18, scope: !2682)
!2686 = !DILocation(line: 602, column: 17, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !87, line: 602, column: 17)
!2688 = !DILocation(line: 602, column: 17, scope: !2682)
!2689 = !DILocation(line: 604, column: 19, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !87, line: 603, column: 15)
!2691 = !DILocation(line: 605, column: 29, scope: !2690)
!2692 = !DILocation(line: 605, column: 41, scope: !2690)
!2693 = !DILocation(line: 605, column: 27, scope: !2690)
!2694 = !DILocation(line: 606, column: 15, scope: !2690)
!2695 = !DILocalVariable(name: "mbs", scope: !2696, file: !87, line: 609, type: !2697)
!2696 = distinct !DILexicalBlock(scope: !2687, file: !87, line: 608, column: 15)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !199, line: 6, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !201, line: 21, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 13, size: 64, elements: !2700)
!2700 = !{!2701, !2702}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2699, file: !201, line: 15, baseType: !23, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2699, file: !201, line: 20, baseType: !2703, size: 32, offset: 32)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2699, file: !201, line: 16, size: 32, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2703, file: !201, line: 18, baseType: !24, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2703, file: !201, line: 19, baseType: !210, size: 32)
!2707 = !DILocation(line: 609, column: 27, scope: !2696)
!2708 = !DILocation(line: 609, column: 32, scope: !2696)
!2709 = !DILocation(line: 611, column: 19, scope: !2696)
!2710 = !DILocation(line: 612, column: 27, scope: !2696)
!2711 = !DILocation(line: 613, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2696, file: !87, line: 613, column: 21)
!2713 = !DILocation(line: 613, column: 29, scope: !2712)
!2714 = !DILocation(line: 613, column: 21, scope: !2696)
!2715 = !DILocation(line: 614, column: 37, scope: !2712)
!2716 = !DILocation(line: 614, column: 29, scope: !2712)
!2717 = !DILocation(line: 614, column: 27, scope: !2712)
!2718 = !DILocation(line: 614, column: 19, scope: !2712)
!2719 = !DILocation(line: 616, column: 17, scope: !2696)
!2720 = !DILocalVariable(name: "w", scope: !2721, file: !87, line: 618, type: !2018)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !87, line: 617, column: 19)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !87, line: 616, column: 17)
!2723 = distinct !DILexicalBlock(scope: !2696, file: !87, line: 616, column: 17)
!2724 = !DILocation(line: 618, column: 30, scope: !2721)
!2725 = !DILocalVariable(name: "bytes", scope: !2721, file: !87, line: 619, type: !125)
!2726 = !DILocation(line: 619, column: 28, scope: !2721)
!2727 = !DILocation(line: 619, column: 51, scope: !2721)
!2728 = !DILocation(line: 619, column: 55, scope: !2721)
!2729 = !DILocation(line: 619, column: 59, scope: !2721)
!2730 = !DILocation(line: 619, column: 57, scope: !2721)
!2731 = !DILocation(line: 620, column: 46, scope: !2721)
!2732 = !DILocation(line: 620, column: 57, scope: !2721)
!2733 = !DILocation(line: 620, column: 61, scope: !2721)
!2734 = !DILocation(line: 620, column: 59, scope: !2721)
!2735 = !DILocation(line: 620, column: 54, scope: !2721)
!2736 = !DILocation(line: 619, column: 36, scope: !2721)
!2737 = !DILocation(line: 621, column: 25, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2721, file: !87, line: 621, column: 25)
!2739 = !DILocation(line: 621, column: 31, scope: !2738)
!2740 = !DILocation(line: 621, column: 25, scope: !2721)
!2741 = !DILocation(line: 622, column: 23, scope: !2738)
!2742 = !DILocation(line: 623, column: 30, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2738, file: !87, line: 623, column: 30)
!2744 = !DILocation(line: 623, column: 36, scope: !2743)
!2745 = !DILocation(line: 623, column: 30, scope: !2738)
!2746 = !DILocation(line: 625, column: 35, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !87, line: 624, column: 23)
!2748 = !DILocation(line: 626, column: 25, scope: !2747)
!2749 = !DILocation(line: 628, column: 30, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !87, line: 628, column: 30)
!2751 = !DILocation(line: 628, column: 36, scope: !2750)
!2752 = !DILocation(line: 628, column: 30, scope: !2743)
!2753 = !DILocation(line: 630, column: 35, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !87, line: 629, column: 23)
!2755 = !DILocation(line: 631, column: 25, scope: !2754)
!2756 = !DILocation(line: 631, column: 32, scope: !2754)
!2757 = !DILocation(line: 631, column: 36, scope: !2754)
!2758 = !DILocation(line: 631, column: 34, scope: !2754)
!2759 = !DILocation(line: 631, column: 40, scope: !2754)
!2760 = !DILocation(line: 631, column: 38, scope: !2754)
!2761 = !DILocation(line: 631, column: 48, scope: !2754)
!2762 = !DILocation(line: 631, column: 51, scope: !2754)
!2763 = !DILocation(line: 631, column: 55, scope: !2754)
!2764 = !DILocation(line: 631, column: 59, scope: !2754)
!2765 = !DILocation(line: 631, column: 57, scope: !2754)
!2766 = !DILocation(line: 0, scope: !2754)
!2767 = !DILocation(line: 632, column: 28, scope: !2754)
!2768 = distinct !{!2768, !2755, !2767, !387}
!2769 = !DILocation(line: 633, column: 25, scope: !2754)
!2770 = !DILocation(line: 645, column: 44, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !87, line: 645, column: 29)
!2772 = distinct !DILexicalBlock(scope: !2750, file: !87, line: 636, column: 23)
!2773 = !DILocation(line: 646, column: 29, scope: !2771)
!2774 = !DILocation(line: 646, column: 32, scope: !2771)
!2775 = !DILocation(line: 646, column: 46, scope: !2771)
!2776 = !DILocation(line: 645, column: 29, scope: !2772)
!2777 = !DILocalVariable(name: "j", scope: !2778, file: !87, line: 648, type: !125)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !87, line: 648, column: 29)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !87, line: 647, column: 27)
!2780 = !DILocation(line: 648, column: 41, scope: !2778)
!2781 = !DILocation(line: 648, column: 34, scope: !2778)
!2782 = !DILocation(line: 648, column: 48, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !87, line: 648, column: 29)
!2784 = !DILocation(line: 648, column: 52, scope: !2783)
!2785 = !DILocation(line: 648, column: 50, scope: !2783)
!2786 = !DILocation(line: 648, column: 29, scope: !2778)
!2787 = !DILocation(line: 649, column: 39, scope: !2783)
!2788 = !DILocation(line: 649, column: 43, scope: !2783)
!2789 = !DILocation(line: 649, column: 47, scope: !2783)
!2790 = !DILocation(line: 649, column: 45, scope: !2783)
!2791 = !DILocation(line: 649, column: 51, scope: !2783)
!2792 = !DILocation(line: 649, column: 49, scope: !2783)
!2793 = !DILocation(line: 649, column: 31, scope: !2783)
!2794 = !DILocation(line: 653, column: 35, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2783, file: !87, line: 650, column: 33)
!2796 = !DILocation(line: 654, column: 33, scope: !2795)
!2797 = !DILocation(line: 648, column: 60, scope: !2783)
!2798 = !DILocation(line: 648, column: 29, scope: !2783)
!2799 = distinct !{!2799, !2786, !2800, !387}
!2800 = !DILocation(line: 654, column: 33, scope: !2778)
!2801 = !DILocation(line: 655, column: 27, scope: !2779)
!2802 = !DILocation(line: 657, column: 43, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2772, file: !87, line: 657, column: 29)
!2804 = !DILocation(line: 657, column: 31, scope: !2803)
!2805 = !DILocation(line: 657, column: 29, scope: !2772)
!2806 = !DILocation(line: 658, column: 37, scope: !2803)
!2807 = !DILocation(line: 658, column: 27, scope: !2803)
!2808 = !DILocation(line: 659, column: 30, scope: !2772)
!2809 = !DILocation(line: 659, column: 27, scope: !2772)
!2810 = !DILocation(line: 664, column: 23, scope: !2721)
!2811 = !DILocation(line: 668, column: 40, scope: !2682)
!2812 = !DILocation(line: 668, column: 38, scope: !2682)
!2813 = !DILocation(line: 670, column: 21, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2682, file: !87, line: 670, column: 17)
!2815 = !DILocation(line: 670, column: 19, scope: !2814)
!2816 = !DILocation(line: 670, column: 23, scope: !2814)
!2817 = !DILocation(line: 670, column: 27, scope: !2814)
!2818 = !DILocation(line: 670, column: 45, scope: !2814)
!2819 = !DILocation(line: 670, column: 50, scope: !2814)
!2820 = !DILocation(line: 670, column: 17, scope: !2682)
!2821 = !DILocalVariable(name: "ilim", scope: !2822, file: !87, line: 674, type: !125)
!2822 = distinct !DILexicalBlock(scope: !2814, file: !87, line: 671, column: 15)
!2823 = !DILocation(line: 674, column: 24, scope: !2822)
!2824 = !DILocation(line: 674, column: 31, scope: !2822)
!2825 = !DILocation(line: 674, column: 35, scope: !2822)
!2826 = !DILocation(line: 674, column: 33, scope: !2822)
!2827 = !DILocation(line: 676, column: 17, scope: !2822)
!2828 = !DILocation(line: 678, column: 25, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !87, line: 678, column: 25)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !87, line: 677, column: 19)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !87, line: 676, column: 17)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !87, line: 676, column: 17)
!2833 = !DILocation(line: 678, column: 43, scope: !2829)
!2834 = !DILocation(line: 678, column: 48, scope: !2829)
!2835 = !DILocation(line: 678, column: 25, scope: !2830)
!2836 = !DILocation(line: 680, column: 25, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !87, line: 679, column: 23)
!2838 = !DILocation(line: 680, column: 25, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !87, line: 680, column: 25)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !87, line: 680, column: 25)
!2841 = !DILocation(line: 680, column: 25, scope: !2840)
!2842 = !DILocation(line: 680, column: 25, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !87, line: 680, column: 25)
!2844 = !DILocation(line: 680, column: 25, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2843, file: !87, line: 680, column: 25)
!2846 = !DILocation(line: 680, column: 25, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !87, line: 680, column: 25)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !87, line: 680, column: 25)
!2849 = !DILocation(line: 680, column: 25, scope: !2848)
!2850 = !DILocation(line: 680, column: 25, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !87, line: 680, column: 25)
!2852 = distinct !DILexicalBlock(scope: !2845, file: !87, line: 680, column: 25)
!2853 = !DILocation(line: 680, column: 25, scope: !2852)
!2854 = !DILocation(line: 680, column: 25, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !87, line: 680, column: 25)
!2856 = distinct !DILexicalBlock(scope: !2845, file: !87, line: 680, column: 25)
!2857 = !DILocation(line: 680, column: 25, scope: !2856)
!2858 = !DILocation(line: 680, column: 25, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !87, line: 680, column: 25)
!2860 = distinct !DILexicalBlock(scope: !2840, file: !87, line: 680, column: 25)
!2861 = !DILocation(line: 680, column: 25, scope: !2860)
!2862 = !DILocation(line: 681, column: 25, scope: !2837)
!2863 = !DILocation(line: 681, column: 25, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !87, line: 681, column: 25)
!2865 = distinct !DILexicalBlock(scope: !2837, file: !87, line: 681, column: 25)
!2866 = !DILocation(line: 681, column: 25, scope: !2865)
!2867 = !DILocation(line: 682, column: 25, scope: !2837)
!2868 = !DILocation(line: 682, column: 25, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !87, line: 682, column: 25)
!2870 = distinct !DILexicalBlock(scope: !2837, file: !87, line: 682, column: 25)
!2871 = !DILocation(line: 682, column: 25, scope: !2870)
!2872 = !DILocation(line: 683, column: 36, scope: !2837)
!2873 = !DILocation(line: 683, column: 38, scope: !2837)
!2874 = !DILocation(line: 683, column: 33, scope: !2837)
!2875 = !DILocation(line: 683, column: 29, scope: !2837)
!2876 = !DILocation(line: 683, column: 27, scope: !2837)
!2877 = !DILocation(line: 684, column: 23, scope: !2837)
!2878 = !DILocation(line: 685, column: 30, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2829, file: !87, line: 685, column: 30)
!2880 = !DILocation(line: 685, column: 30, scope: !2829)
!2881 = !DILocation(line: 687, column: 25, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !87, line: 686, column: 23)
!2883 = !DILocation(line: 687, column: 25, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !87, line: 687, column: 25)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !87, line: 687, column: 25)
!2886 = !DILocation(line: 687, column: 25, scope: !2885)
!2887 = !DILocation(line: 688, column: 40, scope: !2882)
!2888 = !DILocation(line: 689, column: 23, scope: !2882)
!2889 = !DILocation(line: 690, column: 25, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2830, file: !87, line: 690, column: 25)
!2891 = !DILocation(line: 690, column: 33, scope: !2890)
!2892 = !DILocation(line: 690, column: 35, scope: !2890)
!2893 = !DILocation(line: 690, column: 30, scope: !2890)
!2894 = !DILocation(line: 690, column: 25, scope: !2830)
!2895 = !DILocation(line: 691, column: 23, scope: !2890)
!2896 = !DILocation(line: 692, column: 21, scope: !2830)
!2897 = !DILocation(line: 692, column: 21, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !87, line: 692, column: 21)
!2899 = distinct !DILexicalBlock(scope: !2830, file: !87, line: 692, column: 21)
!2900 = !DILocation(line: 692, column: 21, scope: !2899)
!2901 = !DILocation(line: 692, column: 21, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !87, line: 692, column: 21)
!2903 = !DILocation(line: 692, column: 21, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !87, line: 692, column: 21)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !87, line: 692, column: 21)
!2906 = !DILocation(line: 692, column: 21, scope: !2905)
!2907 = !DILocation(line: 692, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !87, line: 692, column: 21)
!2909 = distinct !DILexicalBlock(scope: !2902, file: !87, line: 692, column: 21)
!2910 = !DILocation(line: 692, column: 21, scope: !2909)
!2911 = !DILocation(line: 693, column: 21, scope: !2830)
!2912 = !DILocation(line: 693, column: 21, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !87, line: 693, column: 21)
!2914 = distinct !DILexicalBlock(scope: !2830, file: !87, line: 693, column: 21)
!2915 = !DILocation(line: 693, column: 21, scope: !2914)
!2916 = !DILocation(line: 694, column: 25, scope: !2830)
!2917 = !DILocation(line: 694, column: 29, scope: !2830)
!2918 = !DILocation(line: 694, column: 23, scope: !2830)
!2919 = !DILocation(line: 676, column: 17, scope: !2831)
!2920 = distinct !{!2920, !2921, !2922}
!2921 = !DILocation(line: 676, column: 17, scope: !2832)
!2922 = !DILocation(line: 695, column: 19, scope: !2832)
!2923 = !DILocation(line: 697, column: 17, scope: !2822)
!2924 = !DILocation(line: 700, column: 9, scope: !2433)
!2925 = !DILocation(line: 702, column: 16, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 702, column: 11)
!2927 = !DILocation(line: 702, column: 34, scope: !2926)
!2928 = !DILocation(line: 702, column: 37, scope: !2926)
!2929 = !DILocation(line: 702, column: 51, scope: !2926)
!2930 = !DILocation(line: 703, column: 15, scope: !2926)
!2931 = !DILocation(line: 703, column: 18, scope: !2926)
!2932 = !DILocation(line: 704, column: 14, scope: !2926)
!2933 = !DILocation(line: 704, column: 17, scope: !2926)
!2934 = !DILocation(line: 705, column: 14, scope: !2926)
!2935 = !DILocation(line: 705, column: 17, scope: !2926)
!2936 = !DILocation(line: 705, column: 33, scope: !2926)
!2937 = !DILocation(line: 705, column: 35, scope: !2926)
!2938 = !DILocation(line: 705, column: 51, scope: !2926)
!2939 = !DILocation(line: 705, column: 53, scope: !2926)
!2940 = !DILocation(line: 705, column: 47, scope: !2926)
!2941 = !DILocation(line: 705, column: 65, scope: !2926)
!2942 = !DILocation(line: 706, column: 11, scope: !2926)
!2943 = !DILocation(line: 706, column: 15, scope: !2926)
!2944 = !DILocation(line: 702, column: 11, scope: !2383)
!2945 = !DILocation(line: 707, column: 9, scope: !2926)
!2946 = !DILabel(scope: !2383, name: "store_escape", file: !87, line: 709)
!2947 = !DILocation(line: 709, column: 5, scope: !2383)
!2948 = !DILocation(line: 710, column: 7, scope: !2383)
!2949 = !DILocation(line: 710, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !87, line: 710, column: 7)
!2951 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 710, column: 7)
!2952 = !DILocation(line: 710, column: 7, scope: !2951)
!2953 = !DILocation(line: 710, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !87, line: 710, column: 7)
!2955 = !DILocation(line: 710, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2954, file: !87, line: 710, column: 7)
!2957 = !DILocation(line: 710, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !87, line: 710, column: 7)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !87, line: 710, column: 7)
!2960 = !DILocation(line: 710, column: 7, scope: !2959)
!2961 = !DILocation(line: 710, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !87, line: 710, column: 7)
!2963 = distinct !DILexicalBlock(scope: !2956, file: !87, line: 710, column: 7)
!2964 = !DILocation(line: 710, column: 7, scope: !2963)
!2965 = !DILocation(line: 710, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !87, line: 710, column: 7)
!2967 = distinct !DILexicalBlock(scope: !2956, file: !87, line: 710, column: 7)
!2968 = !DILocation(line: 710, column: 7, scope: !2967)
!2969 = !DILocation(line: 710, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !87, line: 710, column: 7)
!2971 = distinct !DILexicalBlock(scope: !2951, file: !87, line: 710, column: 7)
!2972 = !DILocation(line: 710, column: 7, scope: !2971)
!2973 = !DILabel(scope: !2383, name: "store_c", file: !87, line: 712)
!2974 = !DILocation(line: 712, column: 5, scope: !2383)
!2975 = !DILocation(line: 713, column: 7, scope: !2383)
!2976 = !DILocation(line: 713, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !87, line: 713, column: 7)
!2978 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 713, column: 7)
!2979 = !DILocation(line: 713, column: 7, scope: !2978)
!2980 = !DILocation(line: 713, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !87, line: 713, column: 7)
!2982 = !DILocation(line: 713, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !87, line: 713, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !87, line: 713, column: 7)
!2985 = !DILocation(line: 713, column: 7, scope: !2984)
!2986 = !DILocation(line: 713, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !87, line: 713, column: 7)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !87, line: 713, column: 7)
!2989 = !DILocation(line: 713, column: 7, scope: !2988)
!2990 = !DILocation(line: 714, column: 7, scope: !2383)
!2991 = !DILocation(line: 714, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !87, line: 714, column: 7)
!2993 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 714, column: 7)
!2994 = !DILocation(line: 714, column: 7, scope: !2993)
!2995 = !DILocation(line: 716, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2383, file: !87, line: 716, column: 11)
!2997 = !DILocation(line: 716, column: 11, scope: !2383)
!2998 = !DILocation(line: 717, column: 38, scope: !2996)
!2999 = !DILocation(line: 717, column: 9, scope: !2996)
!3000 = !DILocation(line: 718, column: 5, scope: !2383)
!3001 = !DILocation(line: 395, column: 82, scope: !2372)
!3002 = !DILocation(line: 395, column: 3, scope: !2372)
!3003 = distinct !{!3003, !2381, !3004, !387}
!3004 = !DILocation(line: 718, column: 5, scope: !2368)
!3005 = !DILocation(line: 720, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 720, column: 7)
!3007 = !DILocation(line: 720, column: 11, scope: !3006)
!3008 = !DILocation(line: 720, column: 16, scope: !3006)
!3009 = !DILocation(line: 720, column: 19, scope: !3006)
!3010 = !DILocation(line: 720, column: 33, scope: !3006)
!3011 = !DILocation(line: 721, column: 7, scope: !3006)
!3012 = !DILocation(line: 721, column: 10, scope: !3006)
!3013 = !DILocation(line: 720, column: 7, scope: !2230)
!3014 = !DILocation(line: 722, column: 5, scope: !3006)
!3015 = !DILocation(line: 728, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 728, column: 7)
!3017 = !DILocation(line: 728, column: 21, scope: !3016)
!3018 = !DILocation(line: 728, column: 51, scope: !3016)
!3019 = !DILocation(line: 728, column: 56, scope: !3016)
!3020 = !DILocation(line: 729, column: 7, scope: !3016)
!3021 = !DILocation(line: 729, column: 10, scope: !3016)
!3022 = !DILocation(line: 728, column: 7, scope: !2230)
!3023 = !DILocation(line: 731, column: 11, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !87, line: 731, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !87, line: 730, column: 5)
!3026 = !DILocation(line: 731, column: 11, scope: !3025)
!3027 = !DILocation(line: 732, column: 42, scope: !3024)
!3028 = !DILocation(line: 732, column: 50, scope: !3024)
!3029 = !DILocation(line: 732, column: 67, scope: !3024)
!3030 = !DILocation(line: 732, column: 72, scope: !3024)
!3031 = !DILocation(line: 734, column: 42, scope: !3024)
!3032 = !DILocation(line: 734, column: 49, scope: !3024)
!3033 = !DILocation(line: 735, column: 42, scope: !3024)
!3034 = !DILocation(line: 735, column: 54, scope: !3024)
!3035 = !DILocation(line: 732, column: 16, scope: !3024)
!3036 = !DILocation(line: 732, column: 9, scope: !3024)
!3037 = !DILocation(line: 736, column: 18, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3024, file: !87, line: 736, column: 16)
!3039 = !DILocation(line: 736, column: 29, scope: !3038)
!3040 = !DILocation(line: 736, column: 32, scope: !3038)
!3041 = !DILocation(line: 736, column: 16, scope: !3024)
!3042 = !DILocation(line: 739, column: 24, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !87, line: 737, column: 9)
!3044 = !DILocation(line: 739, column: 22, scope: !3043)
!3045 = !DILocation(line: 740, column: 15, scope: !3043)
!3046 = !DILocation(line: 741, column: 11, scope: !3043)
!3047 = !DILocation(line: 743, column: 5, scope: !3025)
!3048 = !DILocation(line: 745, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 745, column: 7)
!3050 = !DILocation(line: 745, column: 20, scope: !3049)
!3051 = !DILocation(line: 745, column: 24, scope: !3049)
!3052 = !DILocation(line: 745, column: 7, scope: !2230)
!3053 = !DILocation(line: 746, column: 5, scope: !3049)
!3054 = !DILocation(line: 746, column: 13, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !87, line: 746, column: 5)
!3056 = distinct !DILexicalBlock(scope: !3049, file: !87, line: 746, column: 5)
!3057 = !DILocation(line: 746, column: 12, scope: !3055)
!3058 = !DILocation(line: 746, column: 5, scope: !3056)
!3059 = !DILocation(line: 747, column: 7, scope: !3055)
!3060 = !DILocation(line: 747, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !87, line: 747, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !87, line: 747, column: 7)
!3063 = !DILocation(line: 747, column: 7, scope: !3062)
!3064 = !DILocation(line: 746, column: 39, scope: !3055)
!3065 = !DILocation(line: 746, column: 5, scope: !3055)
!3066 = distinct !{!3066, !3058, !3067, !387}
!3067 = !DILocation(line: 747, column: 7, scope: !3056)
!3068 = !DILocation(line: 749, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 749, column: 7)
!3070 = !DILocation(line: 749, column: 13, scope: !3069)
!3071 = !DILocation(line: 749, column: 11, scope: !3069)
!3072 = !DILocation(line: 749, column: 7, scope: !2230)
!3073 = !DILocation(line: 750, column: 5, scope: !3069)
!3074 = !DILocation(line: 750, column: 12, scope: !3069)
!3075 = !DILocation(line: 750, column: 17, scope: !3069)
!3076 = !DILocation(line: 751, column: 10, scope: !2230)
!3077 = !DILocation(line: 751, column: 3, scope: !2230)
!3078 = !DILabel(scope: !2230, name: "force_outer_quoting_style", file: !87, line: 753)
!3079 = !DILocation(line: 753, column: 2, scope: !2230)
!3080 = !DILocation(line: 756, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2230, file: !87, line: 756, column: 7)
!3082 = !DILocation(line: 756, column: 21, scope: !3081)
!3083 = !DILocation(line: 756, column: 51, scope: !3081)
!3084 = !DILocation(line: 756, column: 54, scope: !3081)
!3085 = !DILocation(line: 756, column: 7, scope: !2230)
!3086 = !DILocation(line: 757, column: 19, scope: !3081)
!3087 = !DILocation(line: 757, column: 5, scope: !3081)
!3088 = !DILocation(line: 758, column: 36, scope: !2230)
!3089 = !DILocation(line: 758, column: 44, scope: !2230)
!3090 = !DILocation(line: 758, column: 56, scope: !2230)
!3091 = !DILocation(line: 758, column: 61, scope: !2230)
!3092 = !DILocation(line: 759, column: 36, scope: !2230)
!3093 = !DILocation(line: 760, column: 36, scope: !2230)
!3094 = !DILocation(line: 760, column: 42, scope: !2230)
!3095 = !DILocation(line: 761, column: 36, scope: !2230)
!3096 = !DILocation(line: 761, column: 48, scope: !2230)
!3097 = !DILocation(line: 758, column: 10, scope: !2230)
!3098 = !DILocation(line: 758, column: 3, scope: !2230)
!3099 = !DILocation(line: 762, column: 1, scope: !2230)
!3100 = !DILocalVariable(name: "msgid", arg: 1, scope: !156, file: !87, line: 197, type: !8)
!3101 = !DILocation(line: 197, column: 28, scope: !156)
!3102 = !DILocalVariable(name: "s", arg: 2, scope: !156, file: !87, line: 197, type: !89)
!3103 = !DILocation(line: 197, column: 54, scope: !156)
!3104 = !DILocalVariable(name: "translation", scope: !156, file: !87, line: 199, type: !8)
!3105 = !DILocation(line: 199, column: 15, scope: !156)
!3106 = !DILocation(line: 199, column: 29, scope: !156)
!3107 = !DILocation(line: 201, column: 7, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !156, file: !87, line: 201, column: 7)
!3109 = !DILocation(line: 201, column: 22, scope: !3108)
!3110 = !DILocation(line: 201, column: 19, scope: !3108)
!3111 = !DILocation(line: 201, column: 7, scope: !156)
!3112 = !DILocation(line: 202, column: 12, scope: !3108)
!3113 = !DILocation(line: 202, column: 5, scope: !3108)
!3114 = !DILocalVariable(name: "w", scope: !156, file: !87, line: 229, type: !2018)
!3115 = !DILocation(line: 229, column: 12, scope: !156)
!3116 = !DILocalVariable(name: "mbs", scope: !156, file: !87, line: 230, type: !2697)
!3117 = !DILocation(line: 230, column: 13, scope: !156)
!3118 = !DILocation(line: 230, column: 18, scope: !156)
!3119 = !DILocation(line: 231, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !156, file: !87, line: 231, column: 7)
!3121 = !DILocation(line: 231, column: 40, scope: !3120)
!3122 = !DILocation(line: 231, column: 45, scope: !3120)
!3123 = !DILocation(line: 231, column: 48, scope: !3120)
!3124 = !DILocation(line: 231, column: 50, scope: !3120)
!3125 = !DILocation(line: 231, column: 7, scope: !156)
!3126 = !DILocation(line: 232, column: 18, scope: !3120)
!3127 = !DILocation(line: 232, column: 27, scope: !3120)
!3128 = !DILocation(line: 232, column: 12, scope: !3120)
!3129 = !DILocation(line: 232, column: 5, scope: !3120)
!3130 = !DILocation(line: 234, column: 11, scope: !156)
!3131 = !DILocation(line: 234, column: 13, scope: !156)
!3132 = !DILocation(line: 234, column: 3, scope: !156)
!3133 = !DILocation(line: 235, column: 1, scope: !156)
!3134 = distinct !DISubprogram(name: "quotearg_alloc", scope: !87, file: !87, line: 788, type: !3135, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!71, !8, !125, !2070}
!3137 = !DILocalVariable(name: "arg", arg: 1, scope: !3134, file: !87, line: 788, type: !8)
!3138 = !DILocation(line: 788, column: 29, scope: !3134)
!3139 = !DILocalVariable(name: "argsize", arg: 2, scope: !3134, file: !87, line: 788, type: !125)
!3140 = !DILocation(line: 788, column: 41, scope: !3134)
!3141 = !DILocalVariable(name: "o", arg: 3, scope: !3134, file: !87, line: 789, type: !2070)
!3142 = !DILocation(line: 789, column: 47, scope: !3134)
!3143 = !DILocation(line: 791, column: 30, scope: !3134)
!3144 = !DILocation(line: 791, column: 35, scope: !3134)
!3145 = !DILocation(line: 791, column: 50, scope: !3134)
!3146 = !DILocation(line: 791, column: 10, scope: !3134)
!3147 = !DILocation(line: 791, column: 3, scope: !3134)
!3148 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !87, file: !87, line: 801, type: !3149, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!71, !8, !125, !277, !2070}
!3151 = !DILocalVariable(name: "arg", arg: 1, scope: !3148, file: !87, line: 801, type: !8)
!3152 = !DILocation(line: 801, column: 33, scope: !3148)
!3153 = !DILocalVariable(name: "argsize", arg: 2, scope: !3148, file: !87, line: 801, type: !125)
!3154 = !DILocation(line: 801, column: 45, scope: !3148)
!3155 = !DILocalVariable(name: "size", arg: 3, scope: !3148, file: !87, line: 801, type: !277)
!3156 = !DILocation(line: 801, column: 62, scope: !3148)
!3157 = !DILocalVariable(name: "o", arg: 4, scope: !3148, file: !87, line: 802, type: !2070)
!3158 = !DILocation(line: 802, column: 51, scope: !3148)
!3159 = !DILocalVariable(name: "p", scope: !3148, file: !87, line: 804, type: !2070)
!3160 = !DILocation(line: 804, column: 33, scope: !3148)
!3161 = !DILocation(line: 804, column: 37, scope: !3148)
!3162 = !DILocation(line: 804, column: 41, scope: !3148)
!3163 = !DILocalVariable(name: "saved_errno", scope: !3148, file: !87, line: 805, type: !23)
!3164 = !DILocation(line: 805, column: 7, scope: !3148)
!3165 = !DILocation(line: 805, column: 21, scope: !3148)
!3166 = !DILocalVariable(name: "flags", scope: !3148, file: !87, line: 807, type: !23)
!3167 = !DILocation(line: 807, column: 7, scope: !3148)
!3168 = !DILocation(line: 807, column: 15, scope: !3148)
!3169 = !DILocation(line: 807, column: 18, scope: !3148)
!3170 = !DILocation(line: 807, column: 27, scope: !3148)
!3171 = !DILocation(line: 807, column: 24, scope: !3148)
!3172 = !DILocalVariable(name: "bufsize", scope: !3148, file: !87, line: 808, type: !125)
!3173 = !DILocation(line: 808, column: 10, scope: !3148)
!3174 = !DILocation(line: 808, column: 55, scope: !3148)
!3175 = !DILocation(line: 808, column: 60, scope: !3148)
!3176 = !DILocation(line: 808, column: 69, scope: !3148)
!3177 = !DILocation(line: 808, column: 72, scope: !3148)
!3178 = !DILocation(line: 809, column: 46, scope: !3148)
!3179 = !DILocation(line: 809, column: 53, scope: !3148)
!3180 = !DILocation(line: 809, column: 56, scope: !3148)
!3181 = !DILocation(line: 810, column: 46, scope: !3148)
!3182 = !DILocation(line: 810, column: 49, scope: !3148)
!3183 = !DILocation(line: 811, column: 46, scope: !3148)
!3184 = !DILocation(line: 811, column: 49, scope: !3148)
!3185 = !DILocation(line: 808, column: 20, scope: !3148)
!3186 = !DILocation(line: 811, column: 62, scope: !3148)
!3187 = !DILocalVariable(name: "buf", scope: !3148, file: !87, line: 812, type: !71)
!3188 = !DILocation(line: 812, column: 9, scope: !3148)
!3189 = !DILocation(line: 812, column: 27, scope: !3148)
!3190 = !DILocation(line: 812, column: 15, scope: !3148)
!3191 = !DILocation(line: 813, column: 29, scope: !3148)
!3192 = !DILocation(line: 813, column: 34, scope: !3148)
!3193 = !DILocation(line: 813, column: 43, scope: !3148)
!3194 = !DILocation(line: 813, column: 48, scope: !3148)
!3195 = !DILocation(line: 813, column: 57, scope: !3148)
!3196 = !DILocation(line: 813, column: 60, scope: !3148)
!3197 = !DILocation(line: 813, column: 67, scope: !3148)
!3198 = !DILocation(line: 814, column: 29, scope: !3148)
!3199 = !DILocation(line: 814, column: 32, scope: !3148)
!3200 = !DILocation(line: 815, column: 29, scope: !3148)
!3201 = !DILocation(line: 815, column: 32, scope: !3148)
!3202 = !DILocation(line: 815, column: 44, scope: !3148)
!3203 = !DILocation(line: 815, column: 47, scope: !3148)
!3204 = !DILocation(line: 813, column: 3, scope: !3148)
!3205 = !DILocation(line: 816, column: 11, scope: !3148)
!3206 = !DILocation(line: 816, column: 3, scope: !3148)
!3207 = !DILocation(line: 816, column: 9, scope: !3148)
!3208 = !DILocation(line: 817, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3148, file: !87, line: 817, column: 7)
!3210 = !DILocation(line: 817, column: 7, scope: !3148)
!3211 = !DILocation(line: 818, column: 13, scope: !3209)
!3212 = !DILocation(line: 818, column: 21, scope: !3209)
!3213 = !DILocation(line: 818, column: 6, scope: !3209)
!3214 = !DILocation(line: 818, column: 11, scope: !3209)
!3215 = !DILocation(line: 818, column: 5, scope: !3209)
!3216 = !DILocation(line: 819, column: 10, scope: !3148)
!3217 = !DILocation(line: 819, column: 3, scope: !3148)
!3218 = distinct !DISubprogram(name: "quotearg_free", scope: !87, file: !87, line: 837, type: !47, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3219 = !DILocalVariable(name: "sv", scope: !3218, file: !87, line: 839, type: !164)
!3220 = !DILocation(line: 839, column: 19, scope: !3218)
!3221 = !DILocation(line: 839, column: 24, scope: !3218)
!3222 = !DILocalVariable(name: "i", scope: !3223, file: !87, line: 840, type: !23)
!3223 = distinct !DILexicalBlock(scope: !3218, file: !87, line: 840, column: 3)
!3224 = !DILocation(line: 840, column: 12, scope: !3223)
!3225 = !DILocation(line: 840, column: 8, scope: !3223)
!3226 = !DILocation(line: 840, column: 19, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !87, line: 840, column: 3)
!3228 = !DILocation(line: 840, column: 23, scope: !3227)
!3229 = !DILocation(line: 840, column: 21, scope: !3227)
!3230 = !DILocation(line: 840, column: 3, scope: !3223)
!3231 = !DILocation(line: 841, column: 11, scope: !3227)
!3232 = !DILocation(line: 841, column: 14, scope: !3227)
!3233 = !DILocation(line: 841, column: 17, scope: !3227)
!3234 = !DILocation(line: 841, column: 5, scope: !3227)
!3235 = !DILocation(line: 840, column: 32, scope: !3227)
!3236 = !DILocation(line: 840, column: 3, scope: !3227)
!3237 = distinct !{!3237, !3230, !3238, !387}
!3238 = !DILocation(line: 841, column: 20, scope: !3223)
!3239 = !DILocation(line: 842, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3218, file: !87, line: 842, column: 7)
!3241 = !DILocation(line: 842, column: 13, scope: !3240)
!3242 = !DILocation(line: 842, column: 17, scope: !3240)
!3243 = !DILocation(line: 842, column: 7, scope: !3218)
!3244 = !DILocation(line: 844, column: 13, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !87, line: 843, column: 5)
!3246 = !DILocation(line: 844, column: 19, scope: !3245)
!3247 = !DILocation(line: 844, column: 7, scope: !3245)
!3248 = !DILocation(line: 845, column: 21, scope: !3245)
!3249 = !DILocation(line: 846, column: 20, scope: !3245)
!3250 = !DILocation(line: 847, column: 5, scope: !3245)
!3251 = !DILocation(line: 848, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3218, file: !87, line: 848, column: 7)
!3253 = !DILocation(line: 848, column: 10, scope: !3252)
!3254 = !DILocation(line: 848, column: 7, scope: !3218)
!3255 = !DILocation(line: 850, column: 13, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !87, line: 849, column: 5)
!3257 = !DILocation(line: 850, column: 7, scope: !3256)
!3258 = !DILocation(line: 851, column: 15, scope: !3256)
!3259 = !DILocation(line: 852, column: 5, scope: !3256)
!3260 = !DILocation(line: 853, column: 10, scope: !3218)
!3261 = !DILocation(line: 854, column: 1, scope: !3218)
!3262 = distinct !DISubprogram(name: "quotearg_n", scope: !87, file: !87, line: 919, type: !3263, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!71, !23, !8}
!3265 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !87, line: 919, type: !23)
!3266 = !DILocation(line: 919, column: 17, scope: !3262)
!3267 = !DILocalVariable(name: "arg", arg: 2, scope: !3262, file: !87, line: 919, type: !8)
!3268 = !DILocation(line: 919, column: 32, scope: !3262)
!3269 = !DILocation(line: 921, column: 30, scope: !3262)
!3270 = !DILocation(line: 921, column: 33, scope: !3262)
!3271 = !DILocation(line: 921, column: 10, scope: !3262)
!3272 = !DILocation(line: 921, column: 3, scope: !3262)
!3273 = distinct !DISubprogram(name: "quotearg_n_options", scope: !87, file: !87, line: 866, type: !3274, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!71, !23, !8, !125, !2070}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !87, line: 866, type: !23)
!3277 = !DILocation(line: 866, column: 25, scope: !3273)
!3278 = !DILocalVariable(name: "arg", arg: 2, scope: !3273, file: !87, line: 866, type: !8)
!3279 = !DILocation(line: 866, column: 40, scope: !3273)
!3280 = !DILocalVariable(name: "argsize", arg: 3, scope: !3273, file: !87, line: 866, type: !125)
!3281 = !DILocation(line: 866, column: 52, scope: !3273)
!3282 = !DILocalVariable(name: "options", arg: 4, scope: !3273, file: !87, line: 867, type: !2070)
!3283 = !DILocation(line: 867, column: 51, scope: !3273)
!3284 = !DILocalVariable(name: "saved_errno", scope: !3273, file: !87, line: 869, type: !23)
!3285 = !DILocation(line: 869, column: 7, scope: !3273)
!3286 = !DILocation(line: 869, column: 21, scope: !3273)
!3287 = !DILocalVariable(name: "sv", scope: !3273, file: !87, line: 871, type: !164)
!3288 = !DILocation(line: 871, column: 19, scope: !3273)
!3289 = !DILocation(line: 871, column: 24, scope: !3273)
!3290 = !DILocalVariable(name: "nslots_max", scope: !3273, file: !87, line: 873, type: !23)
!3291 = !DILocation(line: 873, column: 7, scope: !3273)
!3292 = !DILocation(line: 874, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3273, file: !87, line: 874, column: 7)
!3294 = !DILocation(line: 874, column: 12, scope: !3293)
!3295 = !DILocation(line: 874, column: 17, scope: !3293)
!3296 = !DILocation(line: 874, column: 20, scope: !3293)
!3297 = !DILocation(line: 874, column: 24, scope: !3293)
!3298 = !DILocation(line: 874, column: 22, scope: !3293)
!3299 = !DILocation(line: 874, column: 7, scope: !3273)
!3300 = !DILocation(line: 875, column: 5, scope: !3293)
!3301 = !DILocation(line: 877, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3273, file: !87, line: 877, column: 7)
!3303 = !DILocation(line: 877, column: 17, scope: !3302)
!3304 = !DILocation(line: 877, column: 14, scope: !3302)
!3305 = !DILocation(line: 877, column: 7, scope: !3273)
!3306 = !DILocalVariable(name: "preallocated", scope: !3307, file: !87, line: 879, type: !7)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !87, line: 878, column: 5)
!3308 = !DILocation(line: 879, column: 12, scope: !3307)
!3309 = !DILocation(line: 879, column: 28, scope: !3307)
!3310 = !DILocation(line: 879, column: 31, scope: !3307)
!3311 = !DILocalVariable(name: "new_nslots", scope: !3307, file: !87, line: 880, type: !285)
!3312 = !DILocation(line: 880, column: 13, scope: !3307)
!3313 = !DILocation(line: 880, column: 26, scope: !3307)
!3314 = !DILocation(line: 882, column: 31, scope: !3307)
!3315 = !DILocation(line: 882, column: 53, scope: !3307)
!3316 = !DILocation(line: 883, column: 31, scope: !3307)
!3317 = !DILocation(line: 883, column: 35, scope: !3307)
!3318 = !DILocation(line: 883, column: 33, scope: !3307)
!3319 = !DILocation(line: 883, column: 42, scope: !3307)
!3320 = !DILocation(line: 883, column: 47, scope: !3307)
!3321 = !DILocation(line: 882, column: 22, scope: !3307)
!3322 = !DILocation(line: 882, column: 20, scope: !3307)
!3323 = !DILocation(line: 882, column: 15, scope: !3307)
!3324 = !DILocation(line: 884, column: 11, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3307, file: !87, line: 884, column: 11)
!3326 = !DILocation(line: 884, column: 11, scope: !3307)
!3327 = !DILocation(line: 885, column: 10, scope: !3325)
!3328 = !DILocation(line: 885, column: 15, scope: !3325)
!3329 = !DILocation(line: 885, column: 9, scope: !3325)
!3330 = !DILocation(line: 886, column: 15, scope: !3307)
!3331 = !DILocation(line: 886, column: 20, scope: !3307)
!3332 = !DILocation(line: 886, column: 18, scope: !3307)
!3333 = !DILocation(line: 886, column: 7, scope: !3307)
!3334 = !DILocation(line: 886, column: 32, scope: !3307)
!3335 = !DILocation(line: 886, column: 45, scope: !3307)
!3336 = !DILocation(line: 886, column: 43, scope: !3307)
!3337 = !DILocation(line: 886, column: 53, scope: !3307)
!3338 = !DILocation(line: 887, column: 16, scope: !3307)
!3339 = !DILocation(line: 887, column: 14, scope: !3307)
!3340 = !DILocation(line: 888, column: 5, scope: !3307)
!3341 = !DILocalVariable(name: "size", scope: !3342, file: !87, line: 891, type: !125)
!3342 = distinct !DILexicalBlock(scope: !3273, file: !87, line: 890, column: 3)
!3343 = !DILocation(line: 891, column: 12, scope: !3342)
!3344 = !DILocation(line: 891, column: 19, scope: !3342)
!3345 = !DILocation(line: 891, column: 22, scope: !3342)
!3346 = !DILocation(line: 891, column: 25, scope: !3342)
!3347 = !DILocalVariable(name: "val", scope: !3342, file: !87, line: 892, type: !71)
!3348 = !DILocation(line: 892, column: 11, scope: !3342)
!3349 = !DILocation(line: 892, column: 17, scope: !3342)
!3350 = !DILocation(line: 892, column: 20, scope: !3342)
!3351 = !DILocation(line: 892, column: 23, scope: !3342)
!3352 = !DILocalVariable(name: "flags", scope: !3342, file: !87, line: 894, type: !23)
!3353 = !DILocation(line: 894, column: 9, scope: !3342)
!3354 = !DILocation(line: 894, column: 17, scope: !3342)
!3355 = !DILocation(line: 894, column: 26, scope: !3342)
!3356 = !DILocation(line: 894, column: 32, scope: !3342)
!3357 = !DILocalVariable(name: "qsize", scope: !3342, file: !87, line: 895, type: !125)
!3358 = !DILocation(line: 895, column: 12, scope: !3342)
!3359 = !DILocation(line: 895, column: 46, scope: !3342)
!3360 = !DILocation(line: 895, column: 51, scope: !3342)
!3361 = !DILocation(line: 895, column: 57, scope: !3342)
!3362 = !DILocation(line: 895, column: 62, scope: !3342)
!3363 = !DILocation(line: 896, column: 46, scope: !3342)
!3364 = !DILocation(line: 896, column: 55, scope: !3342)
!3365 = !DILocation(line: 896, column: 62, scope: !3342)
!3366 = !DILocation(line: 897, column: 46, scope: !3342)
!3367 = !DILocation(line: 897, column: 55, scope: !3342)
!3368 = !DILocation(line: 898, column: 46, scope: !3342)
!3369 = !DILocation(line: 898, column: 55, scope: !3342)
!3370 = !DILocation(line: 899, column: 46, scope: !3342)
!3371 = !DILocation(line: 899, column: 55, scope: !3342)
!3372 = !DILocation(line: 895, column: 20, scope: !3342)
!3373 = !DILocation(line: 901, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3342, file: !87, line: 901, column: 9)
!3375 = !DILocation(line: 901, column: 17, scope: !3374)
!3376 = !DILocation(line: 901, column: 14, scope: !3374)
!3377 = !DILocation(line: 901, column: 9, scope: !3342)
!3378 = !DILocation(line: 903, column: 29, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3374, file: !87, line: 902, column: 7)
!3380 = !DILocation(line: 903, column: 35, scope: !3379)
!3381 = !DILocation(line: 903, column: 27, scope: !3379)
!3382 = !DILocation(line: 903, column: 9, scope: !3379)
!3383 = !DILocation(line: 903, column: 12, scope: !3379)
!3384 = !DILocation(line: 903, column: 15, scope: !3379)
!3385 = !DILocation(line: 903, column: 20, scope: !3379)
!3386 = !DILocation(line: 904, column: 13, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3379, file: !87, line: 904, column: 13)
!3388 = !DILocation(line: 904, column: 17, scope: !3387)
!3389 = !DILocation(line: 904, column: 13, scope: !3379)
!3390 = !DILocation(line: 905, column: 17, scope: !3387)
!3391 = !DILocation(line: 905, column: 11, scope: !3387)
!3392 = !DILocation(line: 906, column: 39, scope: !3379)
!3393 = !DILocation(line: 906, column: 27, scope: !3379)
!3394 = !DILocation(line: 906, column: 25, scope: !3379)
!3395 = !DILocation(line: 906, column: 9, scope: !3379)
!3396 = !DILocation(line: 906, column: 12, scope: !3379)
!3397 = !DILocation(line: 906, column: 15, scope: !3379)
!3398 = !DILocation(line: 906, column: 19, scope: !3379)
!3399 = !DILocation(line: 907, column: 35, scope: !3379)
!3400 = !DILocation(line: 907, column: 40, scope: !3379)
!3401 = !DILocation(line: 907, column: 46, scope: !3379)
!3402 = !DILocation(line: 907, column: 51, scope: !3379)
!3403 = !DILocation(line: 907, column: 60, scope: !3379)
!3404 = !DILocation(line: 907, column: 69, scope: !3379)
!3405 = !DILocation(line: 908, column: 35, scope: !3379)
!3406 = !DILocation(line: 908, column: 42, scope: !3379)
!3407 = !DILocation(line: 908, column: 51, scope: !3379)
!3408 = !DILocation(line: 909, column: 35, scope: !3379)
!3409 = !DILocation(line: 909, column: 44, scope: !3379)
!3410 = !DILocation(line: 910, column: 35, scope: !3379)
!3411 = !DILocation(line: 910, column: 44, scope: !3379)
!3412 = !DILocation(line: 907, column: 9, scope: !3379)
!3413 = !DILocation(line: 911, column: 7, scope: !3379)
!3414 = !DILocation(line: 913, column: 13, scope: !3342)
!3415 = !DILocation(line: 913, column: 5, scope: !3342)
!3416 = !DILocation(line: 913, column: 11, scope: !3342)
!3417 = !DILocation(line: 914, column: 12, scope: !3342)
!3418 = !DILocation(line: 914, column: 5, scope: !3342)
!3419 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !87, file: !87, line: 925, type: !3420, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!71, !23, !8, !125}
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3419, file: !87, line: 925, type: !23)
!3423 = !DILocation(line: 925, column: 21, scope: !3419)
!3424 = !DILocalVariable(name: "arg", arg: 2, scope: !3419, file: !87, line: 925, type: !8)
!3425 = !DILocation(line: 925, column: 36, scope: !3419)
!3426 = !DILocalVariable(name: "argsize", arg: 3, scope: !3419, file: !87, line: 925, type: !125)
!3427 = !DILocation(line: 925, column: 48, scope: !3419)
!3428 = !DILocation(line: 927, column: 30, scope: !3419)
!3429 = !DILocation(line: 927, column: 33, scope: !3419)
!3430 = !DILocation(line: 927, column: 38, scope: !3419)
!3431 = !DILocation(line: 927, column: 10, scope: !3419)
!3432 = !DILocation(line: 927, column: 3, scope: !3419)
!3433 = distinct !DISubprogram(name: "quotearg", scope: !87, file: !87, line: 931, type: !3434, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!71, !8}
!3436 = !DILocalVariable(name: "arg", arg: 1, scope: !3433, file: !87, line: 931, type: !8)
!3437 = !DILocation(line: 931, column: 23, scope: !3433)
!3438 = !DILocation(line: 933, column: 25, scope: !3433)
!3439 = !DILocation(line: 933, column: 10, scope: !3433)
!3440 = !DILocation(line: 933, column: 3, scope: !3433)
!3441 = distinct !DISubprogram(name: "quotearg_mem", scope: !87, file: !87, line: 937, type: !3442, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!71, !8, !125}
!3444 = !DILocalVariable(name: "arg", arg: 1, scope: !3441, file: !87, line: 937, type: !8)
!3445 = !DILocation(line: 937, column: 27, scope: !3441)
!3446 = !DILocalVariable(name: "argsize", arg: 2, scope: !3441, file: !87, line: 937, type: !125)
!3447 = !DILocation(line: 937, column: 39, scope: !3441)
!3448 = !DILocation(line: 939, column: 29, scope: !3441)
!3449 = !DILocation(line: 939, column: 34, scope: !3441)
!3450 = !DILocation(line: 939, column: 10, scope: !3441)
!3451 = !DILocation(line: 939, column: 3, scope: !3441)
!3452 = distinct !DISubprogram(name: "quotearg_n_style", scope: !87, file: !87, line: 943, type: !3453, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!71, !23, !89, !8}
!3455 = !DILocalVariable(name: "n", arg: 1, scope: !3452, file: !87, line: 943, type: !23)
!3456 = !DILocation(line: 943, column: 23, scope: !3452)
!3457 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !87, line: 943, type: !89)
!3458 = !DILocation(line: 943, column: 45, scope: !3452)
!3459 = !DILocalVariable(name: "arg", arg: 3, scope: !3452, file: !87, line: 943, type: !8)
!3460 = !DILocation(line: 943, column: 60, scope: !3452)
!3461 = !DILocalVariable(name: "o", scope: !3452, file: !87, line: 945, type: !2071)
!3462 = !DILocation(line: 945, column: 32, scope: !3452)
!3463 = !DILocation(line: 945, column: 64, scope: !3452)
!3464 = !DILocation(line: 945, column: 36, scope: !3452)
!3465 = !DILocation(line: 946, column: 30, scope: !3452)
!3466 = !DILocation(line: 946, column: 33, scope: !3452)
!3467 = !DILocation(line: 946, column: 10, scope: !3452)
!3468 = !DILocation(line: 946, column: 3, scope: !3452)
!3469 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !87, file: !87, line: 183, type: !3470, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!137, !89}
!3472 = !DILocalVariable(name: "style", arg: 1, scope: !3469, file: !87, line: 183, type: !89)
!3473 = !DILocation(line: 183, column: 48, scope: !3469)
!3474 = !DILocalVariable(name: "o", scope: !3469, file: !87, line: 185, type: !137)
!3475 = !DILocation(line: 185, column: 26, scope: !3469)
!3476 = !DILocation(line: 186, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3469, file: !87, line: 186, column: 7)
!3478 = !DILocation(line: 186, column: 13, scope: !3477)
!3479 = !DILocation(line: 186, column: 7, scope: !3469)
!3480 = !DILocation(line: 187, column: 5, scope: !3477)
!3481 = !DILocation(line: 188, column: 13, scope: !3469)
!3482 = !DILocation(line: 188, column: 5, scope: !3469)
!3483 = !DILocation(line: 188, column: 11, scope: !3469)
!3484 = !DILocation(line: 189, column: 3, scope: !3469)
!3485 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !87, file: !87, line: 950, type: !3486, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!71, !23, !89, !8, !125}
!3488 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !87, line: 950, type: !23)
!3489 = !DILocation(line: 950, column: 27, scope: !3485)
!3490 = !DILocalVariable(name: "s", arg: 2, scope: !3485, file: !87, line: 950, type: !89)
!3491 = !DILocation(line: 950, column: 49, scope: !3485)
!3492 = !DILocalVariable(name: "arg", arg: 3, scope: !3485, file: !87, line: 951, type: !8)
!3493 = !DILocation(line: 951, column: 35, scope: !3485)
!3494 = !DILocalVariable(name: "argsize", arg: 4, scope: !3485, file: !87, line: 951, type: !125)
!3495 = !DILocation(line: 951, column: 47, scope: !3485)
!3496 = !DILocalVariable(name: "o", scope: !3485, file: !87, line: 953, type: !2071)
!3497 = !DILocation(line: 953, column: 32, scope: !3485)
!3498 = !DILocation(line: 953, column: 64, scope: !3485)
!3499 = !DILocation(line: 953, column: 36, scope: !3485)
!3500 = !DILocation(line: 954, column: 30, scope: !3485)
!3501 = !DILocation(line: 954, column: 33, scope: !3485)
!3502 = !DILocation(line: 954, column: 38, scope: !3485)
!3503 = !DILocation(line: 954, column: 10, scope: !3485)
!3504 = !DILocation(line: 954, column: 3, scope: !3485)
!3505 = distinct !DISubprogram(name: "quotearg_style", scope: !87, file: !87, line: 958, type: !3506, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!71, !89, !8}
!3508 = !DILocalVariable(name: "s", arg: 1, scope: !3505, file: !87, line: 958, type: !89)
!3509 = !DILocation(line: 958, column: 36, scope: !3505)
!3510 = !DILocalVariable(name: "arg", arg: 2, scope: !3505, file: !87, line: 958, type: !8)
!3511 = !DILocation(line: 958, column: 51, scope: !3505)
!3512 = !DILocation(line: 960, column: 31, scope: !3505)
!3513 = !DILocation(line: 960, column: 34, scope: !3505)
!3514 = !DILocation(line: 960, column: 10, scope: !3505)
!3515 = !DILocation(line: 960, column: 3, scope: !3505)
!3516 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !87, file: !87, line: 964, type: !3517, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!71, !89, !8, !125}
!3519 = !DILocalVariable(name: "s", arg: 1, scope: !3516, file: !87, line: 964, type: !89)
!3520 = !DILocation(line: 964, column: 40, scope: !3516)
!3521 = !DILocalVariable(name: "arg", arg: 2, scope: !3516, file: !87, line: 964, type: !8)
!3522 = !DILocation(line: 964, column: 55, scope: !3516)
!3523 = !DILocalVariable(name: "argsize", arg: 3, scope: !3516, file: !87, line: 964, type: !125)
!3524 = !DILocation(line: 964, column: 67, scope: !3516)
!3525 = !DILocation(line: 966, column: 35, scope: !3516)
!3526 = !DILocation(line: 966, column: 38, scope: !3516)
!3527 = !DILocation(line: 966, column: 43, scope: !3516)
!3528 = !DILocation(line: 966, column: 10, scope: !3516)
!3529 = !DILocation(line: 966, column: 3, scope: !3516)
!3530 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !87, file: !87, line: 970, type: !3531, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!71, !8, !125, !10}
!3533 = !DILocalVariable(name: "arg", arg: 1, scope: !3530, file: !87, line: 970, type: !8)
!3534 = !DILocation(line: 970, column: 32, scope: !3530)
!3535 = !DILocalVariable(name: "argsize", arg: 2, scope: !3530, file: !87, line: 970, type: !125)
!3536 = !DILocation(line: 970, column: 44, scope: !3530)
!3537 = !DILocalVariable(name: "ch", arg: 3, scope: !3530, file: !87, line: 970, type: !10)
!3538 = !DILocation(line: 970, column: 58, scope: !3530)
!3539 = !DILocalVariable(name: "options", scope: !3530, file: !87, line: 972, type: !137)
!3540 = !DILocation(line: 972, column: 26, scope: !3530)
!3541 = !DILocation(line: 973, column: 13, scope: !3530)
!3542 = !DILocation(line: 974, column: 31, scope: !3530)
!3543 = !DILocation(line: 974, column: 3, scope: !3530)
!3544 = !DILocation(line: 975, column: 33, scope: !3530)
!3545 = !DILocation(line: 975, column: 38, scope: !3530)
!3546 = !DILocation(line: 975, column: 10, scope: !3530)
!3547 = !DILocation(line: 975, column: 3, scope: !3530)
!3548 = distinct !DISubprogram(name: "quotearg_char", scope: !87, file: !87, line: 979, type: !3549, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!71, !8, !10}
!3551 = !DILocalVariable(name: "arg", arg: 1, scope: !3548, file: !87, line: 979, type: !8)
!3552 = !DILocation(line: 979, column: 28, scope: !3548)
!3553 = !DILocalVariable(name: "ch", arg: 2, scope: !3548, file: !87, line: 979, type: !10)
!3554 = !DILocation(line: 979, column: 38, scope: !3548)
!3555 = !DILocation(line: 981, column: 29, scope: !3548)
!3556 = !DILocation(line: 981, column: 44, scope: !3548)
!3557 = !DILocation(line: 981, column: 10, scope: !3548)
!3558 = !DILocation(line: 981, column: 3, scope: !3548)
!3559 = distinct !DISubprogram(name: "quotearg_colon", scope: !87, file: !87, line: 985, type: !3434, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3560 = !DILocalVariable(name: "arg", arg: 1, scope: !3559, file: !87, line: 985, type: !8)
!3561 = !DILocation(line: 985, column: 29, scope: !3559)
!3562 = !DILocation(line: 987, column: 25, scope: !3559)
!3563 = !DILocation(line: 987, column: 10, scope: !3559)
!3564 = !DILocation(line: 987, column: 3, scope: !3559)
!3565 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !87, file: !87, line: 991, type: !3442, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3566 = !DILocalVariable(name: "arg", arg: 1, scope: !3565, file: !87, line: 991, type: !8)
!3567 = !DILocation(line: 991, column: 33, scope: !3565)
!3568 = !DILocalVariable(name: "argsize", arg: 2, scope: !3565, file: !87, line: 991, type: !125)
!3569 = !DILocation(line: 991, column: 45, scope: !3565)
!3570 = !DILocation(line: 993, column: 29, scope: !3565)
!3571 = !DILocation(line: 993, column: 34, scope: !3565)
!3572 = !DILocation(line: 993, column: 10, scope: !3565)
!3573 = !DILocation(line: 993, column: 3, scope: !3565)
!3574 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !87, file: !87, line: 997, type: !3453, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3575 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !87, line: 997, type: !23)
!3576 = !DILocation(line: 997, column: 29, scope: !3574)
!3577 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !87, line: 997, type: !89)
!3578 = !DILocation(line: 997, column: 51, scope: !3574)
!3579 = !DILocalVariable(name: "arg", arg: 3, scope: !3574, file: !87, line: 997, type: !8)
!3580 = !DILocation(line: 997, column: 66, scope: !3574)
!3581 = !DILocalVariable(name: "options", scope: !3574, file: !87, line: 999, type: !137)
!3582 = !DILocation(line: 999, column: 26, scope: !3574)
!3583 = !DILocation(line: 1000, column: 41, scope: !3574)
!3584 = !DILocation(line: 1000, column: 13, scope: !3574)
!3585 = !DILocation(line: 1001, column: 3, scope: !3574)
!3586 = !DILocation(line: 1002, column: 30, scope: !3574)
!3587 = !DILocation(line: 1002, column: 33, scope: !3574)
!3588 = !DILocation(line: 1002, column: 10, scope: !3574)
!3589 = !DILocation(line: 1002, column: 3, scope: !3574)
!3590 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !87, file: !87, line: 1006, type: !3591, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!71, !23, !8, !8, !8}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3590, file: !87, line: 1006, type: !23)
!3594 = !DILocation(line: 1006, column: 24, scope: !3590)
!3595 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3590, file: !87, line: 1006, type: !8)
!3596 = !DILocation(line: 1006, column: 39, scope: !3590)
!3597 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3590, file: !87, line: 1007, type: !8)
!3598 = !DILocation(line: 1007, column: 32, scope: !3590)
!3599 = !DILocalVariable(name: "arg", arg: 4, scope: !3590, file: !87, line: 1007, type: !8)
!3600 = !DILocation(line: 1007, column: 57, scope: !3590)
!3601 = !DILocation(line: 1009, column: 33, scope: !3590)
!3602 = !DILocation(line: 1009, column: 36, scope: !3590)
!3603 = !DILocation(line: 1009, column: 48, scope: !3590)
!3604 = !DILocation(line: 1009, column: 61, scope: !3590)
!3605 = !DILocation(line: 1009, column: 10, scope: !3590)
!3606 = !DILocation(line: 1009, column: 3, scope: !3590)
!3607 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !87, file: !87, line: 1014, type: !3608, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!71, !23, !8, !8, !8, !125}
!3610 = !DILocalVariable(name: "n", arg: 1, scope: !3607, file: !87, line: 1014, type: !23)
!3611 = !DILocation(line: 1014, column: 28, scope: !3607)
!3612 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3607, file: !87, line: 1014, type: !8)
!3613 = !DILocation(line: 1014, column: 43, scope: !3607)
!3614 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3607, file: !87, line: 1015, type: !8)
!3615 = !DILocation(line: 1015, column: 36, scope: !3607)
!3616 = !DILocalVariable(name: "arg", arg: 4, scope: !3607, file: !87, line: 1016, type: !8)
!3617 = !DILocation(line: 1016, column: 36, scope: !3607)
!3618 = !DILocalVariable(name: "argsize", arg: 5, scope: !3607, file: !87, line: 1016, type: !125)
!3619 = !DILocation(line: 1016, column: 48, scope: !3607)
!3620 = !DILocalVariable(name: "o", scope: !3607, file: !87, line: 1018, type: !137)
!3621 = !DILocation(line: 1018, column: 26, scope: !3607)
!3622 = !DILocation(line: 1018, column: 30, scope: !3607)
!3623 = !DILocation(line: 1019, column: 27, scope: !3607)
!3624 = !DILocation(line: 1019, column: 39, scope: !3607)
!3625 = !DILocation(line: 1019, column: 3, scope: !3607)
!3626 = !DILocation(line: 1020, column: 30, scope: !3607)
!3627 = !DILocation(line: 1020, column: 33, scope: !3607)
!3628 = !DILocation(line: 1020, column: 38, scope: !3607)
!3629 = !DILocation(line: 1020, column: 10, scope: !3607)
!3630 = !DILocation(line: 1020, column: 3, scope: !3607)
!3631 = distinct !DISubprogram(name: "quotearg_custom", scope: !87, file: !87, line: 1024, type: !3632, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!71, !8, !8, !8}
!3634 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3631, file: !87, line: 1024, type: !8)
!3635 = !DILocation(line: 1024, column: 30, scope: !3631)
!3636 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3631, file: !87, line: 1024, type: !8)
!3637 = !DILocation(line: 1024, column: 54, scope: !3631)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3631, file: !87, line: 1025, type: !8)
!3639 = !DILocation(line: 1025, column: 30, scope: !3631)
!3640 = !DILocation(line: 1027, column: 32, scope: !3631)
!3641 = !DILocation(line: 1027, column: 44, scope: !3631)
!3642 = !DILocation(line: 1027, column: 57, scope: !3631)
!3643 = !DILocation(line: 1027, column: 10, scope: !3631)
!3644 = !DILocation(line: 1027, column: 3, scope: !3631)
!3645 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !87, file: !87, line: 1031, type: !3646, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!71, !8, !8, !8, !125}
!3648 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3645, file: !87, line: 1031, type: !8)
!3649 = !DILocation(line: 1031, column: 34, scope: !3645)
!3650 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3645, file: !87, line: 1031, type: !8)
!3651 = !DILocation(line: 1031, column: 58, scope: !3645)
!3652 = !DILocalVariable(name: "arg", arg: 3, scope: !3645, file: !87, line: 1032, type: !8)
!3653 = !DILocation(line: 1032, column: 34, scope: !3645)
!3654 = !DILocalVariable(name: "argsize", arg: 4, scope: !3645, file: !87, line: 1032, type: !125)
!3655 = !DILocation(line: 1032, column: 46, scope: !3645)
!3656 = !DILocation(line: 1034, column: 36, scope: !3645)
!3657 = !DILocation(line: 1034, column: 48, scope: !3645)
!3658 = !DILocation(line: 1034, column: 61, scope: !3645)
!3659 = !DILocation(line: 1035, column: 33, scope: !3645)
!3660 = !DILocation(line: 1034, column: 10, scope: !3645)
!3661 = !DILocation(line: 1034, column: 3, scope: !3645)
!3662 = distinct !DISubprogram(name: "quote_n_mem", scope: !87, file: !87, line: 1049, type: !3663, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!8, !23, !8, !125}
!3665 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !87, line: 1049, type: !23)
!3666 = !DILocation(line: 1049, column: 18, scope: !3662)
!3667 = !DILocalVariable(name: "arg", arg: 2, scope: !3662, file: !87, line: 1049, type: !8)
!3668 = !DILocation(line: 1049, column: 33, scope: !3662)
!3669 = !DILocalVariable(name: "argsize", arg: 3, scope: !3662, file: !87, line: 1049, type: !125)
!3670 = !DILocation(line: 1049, column: 45, scope: !3662)
!3671 = !DILocation(line: 1051, column: 30, scope: !3662)
!3672 = !DILocation(line: 1051, column: 33, scope: !3662)
!3673 = !DILocation(line: 1051, column: 38, scope: !3662)
!3674 = !DILocation(line: 1051, column: 10, scope: !3662)
!3675 = !DILocation(line: 1051, column: 3, scope: !3662)
!3676 = distinct !DISubprogram(name: "quote_mem", scope: !87, file: !87, line: 1055, type: !3677, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!8, !8, !125}
!3679 = !DILocalVariable(name: "arg", arg: 1, scope: !3676, file: !87, line: 1055, type: !8)
!3680 = !DILocation(line: 1055, column: 24, scope: !3676)
!3681 = !DILocalVariable(name: "argsize", arg: 2, scope: !3676, file: !87, line: 1055, type: !125)
!3682 = !DILocation(line: 1055, column: 36, scope: !3676)
!3683 = !DILocation(line: 1057, column: 26, scope: !3676)
!3684 = !DILocation(line: 1057, column: 31, scope: !3676)
!3685 = !DILocation(line: 1057, column: 10, scope: !3676)
!3686 = !DILocation(line: 1057, column: 3, scope: !3676)
!3687 = distinct !DISubprogram(name: "quote_n", scope: !87, file: !87, line: 1061, type: !3688, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!8, !23, !8}
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !87, line: 1061, type: !23)
!3691 = !DILocation(line: 1061, column: 14, scope: !3687)
!3692 = !DILocalVariable(name: "arg", arg: 2, scope: !3687, file: !87, line: 1061, type: !8)
!3693 = !DILocation(line: 1061, column: 29, scope: !3687)
!3694 = !DILocation(line: 1063, column: 23, scope: !3687)
!3695 = !DILocation(line: 1063, column: 26, scope: !3687)
!3696 = !DILocation(line: 1063, column: 10, scope: !3687)
!3697 = !DILocation(line: 1063, column: 3, scope: !3687)
!3698 = distinct !DISubprogram(name: "quote", scope: !87, file: !87, line: 1067, type: !3699, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !39)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!8, !8}
!3701 = !DILocalVariable(name: "arg", arg: 1, scope: !3698, file: !87, line: 1067, type: !8)
!3702 = !DILocation(line: 1067, column: 20, scope: !3698)
!3703 = !DILocation(line: 1069, column: 22, scope: !3698)
!3704 = !DILocation(line: 1069, column: 10, scope: !3698)
!3705 = !DILocation(line: 1069, column: 3, scope: !3698)
!3706 = distinct !DISubprogram(name: "streq", scope: !3707, file: !3707, line: 1359, type: !3708, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !39)
!3707 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!7, !8, !8}
!3710 = !DILocalVariable(name: "__s1", arg: 1, scope: !3706, file: !3707, line: 1359, type: !8)
!3711 = !DILocation(line: 1359, column: 20, scope: !3706)
!3712 = !DILocalVariable(name: "__s2", arg: 2, scope: !3706, file: !3707, line: 1359, type: !8)
!3713 = !DILocation(line: 1359, column: 38, scope: !3706)
!3714 = !DILocation(line: 1361, column: 19, scope: !3706)
!3715 = !DILocation(line: 1361, column: 25, scope: !3706)
!3716 = !DILocation(line: 1361, column: 11, scope: !3706)
!3717 = !DILocation(line: 1361, column: 10, scope: !3706)
!3718 = !DILocation(line: 1361, column: 3, scope: !3706)
!3719 = distinct !DISubprogram(name: "version_etc_arn", scope: !265, file: !265, line: 61, type: !3720, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3722, !8, !8, !8, !3773, !125}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3724, line: 7, baseType: !3725)
!3724 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3726, line: 49, size: 1728, elements: !3727)
!3726 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3743, !3745, !3746, !3747, !3748, !3749, !3751, !3755, !3758, !3759, !3762, !3765, !3766, !3767, !3768, !3769}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3725, file: !3726, line: 51, baseType: !23, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3725, file: !3726, line: 54, baseType: !71, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3725, file: !3726, line: 55, baseType: !71, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3725, file: !3726, line: 56, baseType: !71, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3725, file: !3726, line: 57, baseType: !71, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3725, file: !3726, line: 58, baseType: !71, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3725, file: !3726, line: 59, baseType: !71, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3725, file: !3726, line: 60, baseType: !71, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3725, file: !3726, line: 61, baseType: !71, size: 64, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3725, file: !3726, line: 64, baseType: !71, size: 64, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3725, file: !3726, line: 65, baseType: !71, size: 64, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3725, file: !3726, line: 66, baseType: !71, size: 64, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3725, file: !3726, line: 68, baseType: !3741, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3726, line: 36, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3725, file: !3726, line: 70, baseType: !3744, size: 64, offset: 832)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3725, file: !3726, line: 72, baseType: !23, size: 32, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3725, file: !3726, line: 73, baseType: !23, size: 32, offset: 928)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3725, file: !3726, line: 74, baseType: !248, size: 64, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3725, file: !3726, line: 77, baseType: !124, size: 16, offset: 1024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3725, file: !3726, line: 78, baseType: !3750, size: 8, offset: 1040)
!3750 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3725, file: !3726, line: 79, baseType: !3752, size: 8, offset: 1048)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !3753)
!3753 = !{!3754}
!3754 = !DISubrange(count: 1)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3725, file: !3726, line: 81, baseType: !3756, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3726, line: 43, baseType: null)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3725, file: !3726, line: 89, baseType: !250, size: 64, offset: 1152)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3725, file: !3726, line: 91, baseType: !3760, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3726, line: 37, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3725, file: !3726, line: 92, baseType: !3763, size: 64, offset: 1280)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3726, line: 38, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3725, file: !3726, line: 93, baseType: !3744, size: 64, offset: 1344)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3725, file: !3726, line: 94, baseType: !16, size: 64, offset: 1408)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3725, file: !3726, line: 95, baseType: !125, size: 64, offset: 1472)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3725, file: !3726, line: 96, baseType: !23, size: 32, offset: 1536)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3725, file: !3726, line: 98, baseType: !3770, size: 160, offset: 1568)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !3771)
!3771 = !{!3772}
!3772 = !DISubrange(count: 20)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!3774 = !DILocalVariable(name: "stream", arg: 1, scope: !3719, file: !265, line: 61, type: !3722)
!3775 = !DILocation(line: 61, column: 24, scope: !3719)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3719, file: !265, line: 62, type: !8)
!3777 = !DILocation(line: 62, column: 30, scope: !3719)
!3778 = !DILocalVariable(name: "package", arg: 3, scope: !3719, file: !265, line: 62, type: !8)
!3779 = !DILocation(line: 62, column: 56, scope: !3719)
!3780 = !DILocalVariable(name: "version", arg: 4, scope: !3719, file: !265, line: 63, type: !8)
!3781 = !DILocation(line: 63, column: 30, scope: !3719)
!3782 = !DILocalVariable(name: "authors", arg: 5, scope: !3719, file: !265, line: 64, type: !3773)
!3783 = !DILocation(line: 64, column: 39, scope: !3719)
!3784 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3719, file: !265, line: 64, type: !125)
!3785 = !DILocation(line: 64, column: 55, scope: !3719)
!3786 = !DILocation(line: 66, column: 7, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3719, file: !265, line: 66, column: 7)
!3788 = !DILocation(line: 66, column: 7, scope: !3719)
!3789 = !DILocation(line: 67, column: 14, scope: !3787)
!3790 = !DILocation(line: 67, column: 38, scope: !3787)
!3791 = !DILocation(line: 67, column: 52, scope: !3787)
!3792 = !DILocation(line: 67, column: 61, scope: !3787)
!3793 = !DILocation(line: 67, column: 5, scope: !3787)
!3794 = !DILocation(line: 69, column: 14, scope: !3787)
!3795 = !DILocation(line: 69, column: 33, scope: !3787)
!3796 = !DILocation(line: 69, column: 42, scope: !3787)
!3797 = !DILocation(line: 69, column: 5, scope: !3787)
!3798 = !DILocation(line: 83, column: 12, scope: !3719)
!3799 = !DILocation(line: 83, column: 43, scope: !3719)
!3800 = !DILocation(line: 83, column: 3, scope: !3719)
!3801 = !DILocation(line: 85, column: 3, scope: !3719)
!3802 = !DILocation(line: 88, column: 12, scope: !3719)
!3803 = !DILocation(line: 88, column: 20, scope: !3719)
!3804 = !DILocation(line: 88, column: 3, scope: !3719)
!3805 = !DILocation(line: 95, column: 3, scope: !3719)
!3806 = !DILocation(line: 97, column: 11, scope: !3719)
!3807 = !DILocation(line: 97, column: 3, scope: !3719)
!3808 = !DILocation(line: 102, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3719, file: !265, line: 98, column: 5)
!3810 = !DILocation(line: 105, column: 16, scope: !3809)
!3811 = !DILocation(line: 105, column: 24, scope: !3809)
!3812 = !DILocation(line: 105, column: 47, scope: !3809)
!3813 = !DILocation(line: 105, column: 7, scope: !3809)
!3814 = !DILocation(line: 106, column: 7, scope: !3809)
!3815 = !DILocation(line: 109, column: 16, scope: !3809)
!3816 = !DILocation(line: 109, column: 24, scope: !3809)
!3817 = !DILocation(line: 109, column: 54, scope: !3809)
!3818 = !DILocation(line: 109, column: 66, scope: !3809)
!3819 = !DILocation(line: 109, column: 7, scope: !3809)
!3820 = !DILocation(line: 110, column: 7, scope: !3809)
!3821 = !DILocation(line: 113, column: 16, scope: !3809)
!3822 = !DILocation(line: 113, column: 24, scope: !3809)
!3823 = !DILocation(line: 114, column: 16, scope: !3809)
!3824 = !DILocation(line: 114, column: 28, scope: !3809)
!3825 = !DILocation(line: 114, column: 40, scope: !3809)
!3826 = !DILocation(line: 113, column: 7, scope: !3809)
!3827 = !DILocation(line: 115, column: 7, scope: !3809)
!3828 = !DILocation(line: 120, column: 16, scope: !3809)
!3829 = !DILocation(line: 120, column: 24, scope: !3809)
!3830 = !DILocation(line: 121, column: 16, scope: !3809)
!3831 = !DILocation(line: 121, column: 28, scope: !3809)
!3832 = !DILocation(line: 121, column: 40, scope: !3809)
!3833 = !DILocation(line: 121, column: 52, scope: !3809)
!3834 = !DILocation(line: 120, column: 7, scope: !3809)
!3835 = !DILocation(line: 122, column: 7, scope: !3809)
!3836 = !DILocation(line: 127, column: 16, scope: !3809)
!3837 = !DILocation(line: 127, column: 24, scope: !3809)
!3838 = !DILocation(line: 128, column: 16, scope: !3809)
!3839 = !DILocation(line: 128, column: 28, scope: !3809)
!3840 = !DILocation(line: 128, column: 40, scope: !3809)
!3841 = !DILocation(line: 128, column: 52, scope: !3809)
!3842 = !DILocation(line: 128, column: 64, scope: !3809)
!3843 = !DILocation(line: 127, column: 7, scope: !3809)
!3844 = !DILocation(line: 129, column: 7, scope: !3809)
!3845 = !DILocation(line: 134, column: 16, scope: !3809)
!3846 = !DILocation(line: 134, column: 24, scope: !3809)
!3847 = !DILocation(line: 135, column: 16, scope: !3809)
!3848 = !DILocation(line: 135, column: 28, scope: !3809)
!3849 = !DILocation(line: 135, column: 40, scope: !3809)
!3850 = !DILocation(line: 135, column: 52, scope: !3809)
!3851 = !DILocation(line: 135, column: 64, scope: !3809)
!3852 = !DILocation(line: 136, column: 16, scope: !3809)
!3853 = !DILocation(line: 134, column: 7, scope: !3809)
!3854 = !DILocation(line: 137, column: 7, scope: !3809)
!3855 = !DILocation(line: 142, column: 16, scope: !3809)
!3856 = !DILocation(line: 142, column: 24, scope: !3809)
!3857 = !DILocation(line: 143, column: 16, scope: !3809)
!3858 = !DILocation(line: 143, column: 28, scope: !3809)
!3859 = !DILocation(line: 143, column: 40, scope: !3809)
!3860 = !DILocation(line: 143, column: 52, scope: !3809)
!3861 = !DILocation(line: 143, column: 64, scope: !3809)
!3862 = !DILocation(line: 144, column: 16, scope: !3809)
!3863 = !DILocation(line: 144, column: 28, scope: !3809)
!3864 = !DILocation(line: 142, column: 7, scope: !3809)
!3865 = !DILocation(line: 145, column: 7, scope: !3809)
!3866 = !DILocation(line: 150, column: 16, scope: !3809)
!3867 = !DILocation(line: 150, column: 24, scope: !3809)
!3868 = !DILocation(line: 152, column: 17, scope: !3809)
!3869 = !DILocation(line: 152, column: 29, scope: !3809)
!3870 = !DILocation(line: 152, column: 41, scope: !3809)
!3871 = !DILocation(line: 152, column: 53, scope: !3809)
!3872 = !DILocation(line: 152, column: 65, scope: !3809)
!3873 = !DILocation(line: 153, column: 17, scope: !3809)
!3874 = !DILocation(line: 153, column: 29, scope: !3809)
!3875 = !DILocation(line: 153, column: 41, scope: !3809)
!3876 = !DILocation(line: 150, column: 7, scope: !3809)
!3877 = !DILocation(line: 154, column: 7, scope: !3809)
!3878 = !DILocation(line: 159, column: 16, scope: !3809)
!3879 = !DILocation(line: 159, column: 24, scope: !3809)
!3880 = !DILocation(line: 161, column: 16, scope: !3809)
!3881 = !DILocation(line: 161, column: 28, scope: !3809)
!3882 = !DILocation(line: 161, column: 40, scope: !3809)
!3883 = !DILocation(line: 161, column: 52, scope: !3809)
!3884 = !DILocation(line: 161, column: 64, scope: !3809)
!3885 = !DILocation(line: 162, column: 16, scope: !3809)
!3886 = !DILocation(line: 162, column: 28, scope: !3809)
!3887 = !DILocation(line: 162, column: 40, scope: !3809)
!3888 = !DILocation(line: 162, column: 52, scope: !3809)
!3889 = !DILocation(line: 159, column: 7, scope: !3809)
!3890 = !DILocation(line: 163, column: 7, scope: !3809)
!3891 = !DILocation(line: 170, column: 16, scope: !3809)
!3892 = !DILocation(line: 170, column: 24, scope: !3809)
!3893 = !DILocation(line: 172, column: 17, scope: !3809)
!3894 = !DILocation(line: 172, column: 29, scope: !3809)
!3895 = !DILocation(line: 172, column: 41, scope: !3809)
!3896 = !DILocation(line: 172, column: 53, scope: !3809)
!3897 = !DILocation(line: 172, column: 65, scope: !3809)
!3898 = !DILocation(line: 173, column: 17, scope: !3809)
!3899 = !DILocation(line: 173, column: 29, scope: !3809)
!3900 = !DILocation(line: 173, column: 41, scope: !3809)
!3901 = !DILocation(line: 173, column: 53, scope: !3809)
!3902 = !DILocation(line: 170, column: 7, scope: !3809)
!3903 = !DILocation(line: 174, column: 7, scope: !3809)
!3904 = !DILocation(line: 176, column: 1, scope: !3719)
!3905 = distinct !DISubprogram(name: "version_etc_ar", scope: !265, file: !265, line: 183, type: !3906, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3722, !8, !8, !8, !3773}
!3908 = !DILocalVariable(name: "stream", arg: 1, scope: !3905, file: !265, line: 183, type: !3722)
!3909 = !DILocation(line: 183, column: 23, scope: !3905)
!3910 = !DILocalVariable(name: "command_name", arg: 2, scope: !3905, file: !265, line: 184, type: !8)
!3911 = !DILocation(line: 184, column: 29, scope: !3905)
!3912 = !DILocalVariable(name: "package", arg: 3, scope: !3905, file: !265, line: 184, type: !8)
!3913 = !DILocation(line: 184, column: 55, scope: !3905)
!3914 = !DILocalVariable(name: "version", arg: 4, scope: !3905, file: !265, line: 185, type: !8)
!3915 = !DILocation(line: 185, column: 29, scope: !3905)
!3916 = !DILocalVariable(name: "authors", arg: 5, scope: !3905, file: !265, line: 185, type: !3773)
!3917 = !DILocation(line: 185, column: 59, scope: !3905)
!3918 = !DILocalVariable(name: "n_authors", scope: !3905, file: !265, line: 187, type: !125)
!3919 = !DILocation(line: 187, column: 10, scope: !3905)
!3920 = !DILocation(line: 189, column: 18, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3905, file: !265, line: 189, column: 3)
!3922 = !DILocation(line: 189, column: 8, scope: !3921)
!3923 = !DILocation(line: 189, column: 23, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3921, file: !265, line: 189, column: 3)
!3925 = !DILocation(line: 189, column: 31, scope: !3924)
!3926 = !DILocation(line: 189, column: 3, scope: !3921)
!3927 = !DILocation(line: 189, column: 52, scope: !3924)
!3928 = !DILocation(line: 189, column: 3, scope: !3924)
!3929 = distinct !{!3929, !3926, !3930, !387}
!3930 = !DILocation(line: 190, column: 5, scope: !3921)
!3931 = !DILocation(line: 191, column: 20, scope: !3905)
!3932 = !DILocation(line: 191, column: 28, scope: !3905)
!3933 = !DILocation(line: 191, column: 42, scope: !3905)
!3934 = !DILocation(line: 191, column: 51, scope: !3905)
!3935 = !DILocation(line: 191, column: 60, scope: !3905)
!3936 = !DILocation(line: 191, column: 69, scope: !3905)
!3937 = !DILocation(line: 191, column: 3, scope: !3905)
!3938 = !DILocation(line: 192, column: 1, scope: !3905)
!3939 = distinct !DISubprogram(name: "version_etc_va", scope: !265, file: !265, line: 199, type: !3940, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !3722, !8, !8, !8, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !26, line: 52, baseType: !3943)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !28, line: 32, baseType: !3944)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3945, baseType: !3946)
!3945 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !32, size: 256, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3946, file: !3945, line: 192, baseType: !16, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3946, file: !3945, line: 192, baseType: !16, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3946, file: !3945, line: 192, baseType: !16, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3946, file: !3945, line: 192, baseType: !23, size: 32, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3946, file: !3945, line: 192, baseType: !23, size: 32, offset: 224)
!3953 = !DILocalVariable(name: "stream", arg: 1, scope: !3939, file: !265, line: 199, type: !3722)
!3954 = !DILocation(line: 199, column: 23, scope: !3939)
!3955 = !DILocalVariable(name: "command_name", arg: 2, scope: !3939, file: !265, line: 200, type: !8)
!3956 = !DILocation(line: 200, column: 29, scope: !3939)
!3957 = !DILocalVariable(name: "package", arg: 3, scope: !3939, file: !265, line: 200, type: !8)
!3958 = !DILocation(line: 200, column: 55, scope: !3939)
!3959 = !DILocalVariable(name: "version", arg: 4, scope: !3939, file: !265, line: 201, type: !8)
!3960 = !DILocation(line: 201, column: 29, scope: !3939)
!3961 = !DILocalVariable(name: "authors", arg: 5, scope: !3939, file: !265, line: 201, type: !3942)
!3962 = !DILocation(line: 201, column: 46, scope: !3939)
!3963 = !DILocalVariable(name: "n_authors", scope: !3939, file: !265, line: 203, type: !125)
!3964 = !DILocation(line: 203, column: 10, scope: !3939)
!3965 = !DILocalVariable(name: "authtab", scope: !3939, file: !265, line: 204, type: !3966)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !133)
!3967 = !DILocation(line: 204, column: 15, scope: !3939)
!3968 = !DILocation(line: 206, column: 18, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3939, file: !265, line: 206, column: 3)
!3970 = !DILocation(line: 206, column: 8, scope: !3969)
!3971 = !DILocation(line: 207, column: 8, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3969, file: !265, line: 206, column: 3)
!3973 = !DILocation(line: 207, column: 18, scope: !3972)
!3974 = !DILocation(line: 208, column: 10, scope: !3972)
!3975 = !DILocation(line: 208, column: 35, scope: !3972)
!3976 = !DILocation(line: 208, column: 22, scope: !3972)
!3977 = !DILocation(line: 208, column: 14, scope: !3972)
!3978 = !DILocation(line: 208, column: 33, scope: !3972)
!3979 = !DILocation(line: 208, column: 67, scope: !3972)
!3980 = !DILocation(line: 0, scope: !3972)
!3981 = !DILocation(line: 206, column: 3, scope: !3969)
!3982 = !DILocation(line: 209, column: 17, scope: !3972)
!3983 = !DILocation(line: 206, column: 3, scope: !3972)
!3984 = distinct !{!3984, !3981, !3985, !387}
!3985 = !DILocation(line: 210, column: 5, scope: !3969)
!3986 = !DILocation(line: 211, column: 20, scope: !3939)
!3987 = !DILocation(line: 211, column: 28, scope: !3939)
!3988 = !DILocation(line: 211, column: 42, scope: !3939)
!3989 = !DILocation(line: 211, column: 51, scope: !3939)
!3990 = !DILocation(line: 212, column: 20, scope: !3939)
!3991 = !DILocation(line: 212, column: 29, scope: !3939)
!3992 = !DILocation(line: 211, column: 3, scope: !3939)
!3993 = !DILocation(line: 213, column: 1, scope: !3939)
!3994 = distinct !DISubprogram(name: "version_etc", scope: !265, file: !265, line: 230, type: !3995, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3722, !8, !8, !8, null}
!3997 = !DILocalVariable(name: "stream", arg: 1, scope: !3994, file: !265, line: 230, type: !3722)
!3998 = !DILocation(line: 230, column: 20, scope: !3994)
!3999 = !DILocalVariable(name: "command_name", arg: 2, scope: !3994, file: !265, line: 231, type: !8)
!4000 = !DILocation(line: 231, column: 26, scope: !3994)
!4001 = !DILocalVariable(name: "package", arg: 3, scope: !3994, file: !265, line: 231, type: !8)
!4002 = !DILocation(line: 231, column: 52, scope: !3994)
!4003 = !DILocalVariable(name: "version", arg: 4, scope: !3994, file: !265, line: 232, type: !8)
!4004 = !DILocation(line: 232, column: 26, scope: !3994)
!4005 = !DILocalVariable(name: "authors", scope: !3994, file: !265, line: 234, type: !3942)
!4006 = !DILocation(line: 234, column: 11, scope: !3994)
!4007 = !DILocation(line: 235, column: 3, scope: !3994)
!4008 = !DILocation(line: 236, column: 19, scope: !3994)
!4009 = !DILocation(line: 236, column: 27, scope: !3994)
!4010 = !DILocation(line: 236, column: 41, scope: !3994)
!4011 = !DILocation(line: 236, column: 50, scope: !3994)
!4012 = !DILocation(line: 236, column: 3, scope: !3994)
!4013 = !DILocation(line: 237, column: 3, scope: !3994)
!4014 = !DILocation(line: 238, column: 1, scope: !3994)
!4015 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !265, file: !265, line: 241, type: !47, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !39)
!4016 = !DILocation(line: 243, column: 3, scope: !4015)
!4017 = !DILocation(line: 248, column: 11, scope: !4015)
!4018 = !DILocation(line: 248, column: 3, scope: !4015)
!4019 = !DILocation(line: 254, column: 11, scope: !4015)
!4020 = !DILocation(line: 254, column: 3, scope: !4015)
!4021 = !DILocation(line: 259, column: 11, scope: !4015)
!4022 = !DILocation(line: 259, column: 3, scope: !4015)
!4023 = !DILocation(line: 261, column: 1, scope: !4015)
!4024 = distinct !DISubprogram(name: "xnrealloc", scope: !4025, file: !4025, line: 147, type: !4026, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4025 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!16, !16, !125, !125}
!4028 = !DILocalVariable(name: "p", arg: 1, scope: !4024, file: !4025, line: 147, type: !16)
!4029 = !DILocation(line: 147, column: 18, scope: !4024)
!4030 = !DILocalVariable(name: "n", arg: 2, scope: !4024, file: !4025, line: 147, type: !125)
!4031 = !DILocation(line: 147, column: 28, scope: !4024)
!4032 = !DILocalVariable(name: "s", arg: 3, scope: !4024, file: !4025, line: 147, type: !125)
!4033 = !DILocation(line: 147, column: 38, scope: !4024)
!4034 = !DILocation(line: 149, column: 25, scope: !4024)
!4035 = !DILocation(line: 149, column: 28, scope: !4024)
!4036 = !DILocation(line: 149, column: 31, scope: !4024)
!4037 = !DILocation(line: 149, column: 10, scope: !4024)
!4038 = !DILocation(line: 149, column: 3, scope: !4024)
!4039 = distinct !DISubprogram(name: "xreallocarray", scope: !271, file: !271, line: 83, type: !4026, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4040 = !DILocalVariable(name: "p", arg: 1, scope: !4039, file: !271, line: 83, type: !16)
!4041 = !DILocation(line: 83, column: 22, scope: !4039)
!4042 = !DILocalVariable(name: "n", arg: 2, scope: !4039, file: !271, line: 83, type: !125)
!4043 = !DILocation(line: 83, column: 32, scope: !4039)
!4044 = !DILocalVariable(name: "s", arg: 3, scope: !4039, file: !271, line: 83, type: !125)
!4045 = !DILocation(line: 83, column: 42, scope: !4039)
!4046 = !DILocation(line: 85, column: 39, scope: !4039)
!4047 = !DILocation(line: 85, column: 42, scope: !4039)
!4048 = !DILocation(line: 85, column: 45, scope: !4039)
!4049 = !DILocation(line: 85, column: 25, scope: !4039)
!4050 = !DILocation(line: 85, column: 10, scope: !4039)
!4051 = !DILocation(line: 85, column: 3, scope: !4039)
!4052 = distinct !DISubprogram(name: "check_nonnull", scope: !271, file: !271, line: 37, type: !4053, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!16, !16}
!4055 = !DILocalVariable(name: "p", arg: 1, scope: !4052, file: !271, line: 37, type: !16)
!4056 = !DILocation(line: 37, column: 22, scope: !4052)
!4057 = !DILocation(line: 39, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !271, line: 39, column: 7)
!4059 = !DILocation(line: 39, column: 7, scope: !4052)
!4060 = !DILocation(line: 40, column: 5, scope: !4058)
!4061 = !DILocation(line: 41, column: 10, scope: !4052)
!4062 = !DILocation(line: 41, column: 3, scope: !4052)
!4063 = distinct !DISubprogram(name: "xmalloc", scope: !271, file: !271, line: 47, type: !4064, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!16, !125}
!4066 = !DILocalVariable(name: "s", arg: 1, scope: !4063, file: !271, line: 47, type: !125)
!4067 = !DILocation(line: 47, column: 17, scope: !4063)
!4068 = !DILocation(line: 49, column: 33, scope: !4063)
!4069 = !DILocation(line: 49, column: 25, scope: !4063)
!4070 = !DILocation(line: 49, column: 10, scope: !4063)
!4071 = !DILocation(line: 49, column: 3, scope: !4063)
!4072 = distinct !DISubprogram(name: "ximalloc", scope: !271, file: !271, line: 53, type: !4073, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!16, !285}
!4075 = !DILocalVariable(name: "s", arg: 1, scope: !4072, file: !271, line: 53, type: !285)
!4076 = !DILocation(line: 53, column: 17, scope: !4072)
!4077 = !DILocation(line: 55, column: 34, scope: !4072)
!4078 = !DILocation(line: 55, column: 25, scope: !4072)
!4079 = !DILocation(line: 55, column: 10, scope: !4072)
!4080 = !DILocation(line: 55, column: 3, scope: !4072)
!4081 = distinct !DISubprogram(name: "xcharalloc", scope: !271, file: !271, line: 59, type: !4082, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!71, !125}
!4084 = !DILocalVariable(name: "n", arg: 1, scope: !4081, file: !271, line: 59, type: !125)
!4085 = !DILocation(line: 59, column: 20, scope: !4081)
!4086 = !DILocation(line: 61, column: 10, scope: !4081)
!4087 = !DILocation(line: 61, column: 3, scope: !4081)
!4088 = distinct !DISubprogram(name: "xrealloc", scope: !271, file: !271, line: 68, type: !4089, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!16, !16, !125}
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4088, file: !271, line: 68, type: !16)
!4092 = !DILocation(line: 68, column: 17, scope: !4088)
!4093 = !DILocalVariable(name: "s", arg: 2, scope: !4088, file: !271, line: 68, type: !125)
!4094 = !DILocation(line: 68, column: 27, scope: !4088)
!4095 = !DILocation(line: 70, column: 34, scope: !4088)
!4096 = !DILocation(line: 70, column: 37, scope: !4088)
!4097 = !DILocation(line: 70, column: 25, scope: !4088)
!4098 = !DILocation(line: 70, column: 10, scope: !4088)
!4099 = !DILocation(line: 70, column: 3, scope: !4088)
!4100 = distinct !DISubprogram(name: "xirealloc", scope: !271, file: !271, line: 74, type: !4101, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!16, !16, !285}
!4103 = !DILocalVariable(name: "p", arg: 1, scope: !4100, file: !271, line: 74, type: !16)
!4104 = !DILocation(line: 74, column: 18, scope: !4100)
!4105 = !DILocalVariable(name: "s", arg: 2, scope: !4100, file: !271, line: 74, type: !285)
!4106 = !DILocation(line: 74, column: 27, scope: !4100)
!4107 = !DILocation(line: 76, column: 35, scope: !4100)
!4108 = !DILocation(line: 76, column: 38, scope: !4100)
!4109 = !DILocation(line: 76, column: 25, scope: !4100)
!4110 = !DILocation(line: 76, column: 10, scope: !4100)
!4111 = !DILocation(line: 76, column: 3, scope: !4100)
!4112 = distinct !DISubprogram(name: "xireallocarray", scope: !271, file: !271, line: 89, type: !4113, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!16, !16, !285, !285}
!4115 = !DILocalVariable(name: "p", arg: 1, scope: !4112, file: !271, line: 89, type: !16)
!4116 = !DILocation(line: 89, column: 23, scope: !4112)
!4117 = !DILocalVariable(name: "n", arg: 2, scope: !4112, file: !271, line: 89, type: !285)
!4118 = !DILocation(line: 89, column: 32, scope: !4112)
!4119 = !DILocalVariable(name: "s", arg: 3, scope: !4112, file: !271, line: 89, type: !285)
!4120 = !DILocation(line: 89, column: 41, scope: !4112)
!4121 = !DILocation(line: 91, column: 40, scope: !4112)
!4122 = !DILocation(line: 91, column: 43, scope: !4112)
!4123 = !DILocation(line: 91, column: 46, scope: !4112)
!4124 = !DILocation(line: 91, column: 25, scope: !4112)
!4125 = !DILocation(line: 91, column: 10, scope: !4112)
!4126 = !DILocation(line: 91, column: 3, scope: !4112)
!4127 = distinct !DISubprogram(name: "xnmalloc", scope: !271, file: !271, line: 98, type: !4128, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!16, !125, !125}
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4127, file: !271, line: 98, type: !125)
!4131 = !DILocation(line: 98, column: 18, scope: !4127)
!4132 = !DILocalVariable(name: "s", arg: 2, scope: !4127, file: !271, line: 98, type: !125)
!4133 = !DILocation(line: 98, column: 28, scope: !4127)
!4134 = !DILocation(line: 100, column: 31, scope: !4127)
!4135 = !DILocation(line: 100, column: 34, scope: !4127)
!4136 = !DILocation(line: 100, column: 10, scope: !4127)
!4137 = !DILocation(line: 100, column: 3, scope: !4127)
!4138 = distinct !DISubprogram(name: "xinmalloc", scope: !271, file: !271, line: 104, type: !4139, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!16, !285, !285}
!4141 = !DILocalVariable(name: "n", arg: 1, scope: !4138, file: !271, line: 104, type: !285)
!4142 = !DILocation(line: 104, column: 18, scope: !4138)
!4143 = !DILocalVariable(name: "s", arg: 2, scope: !4138, file: !271, line: 104, type: !285)
!4144 = !DILocation(line: 104, column: 27, scope: !4138)
!4145 = !DILocation(line: 106, column: 32, scope: !4138)
!4146 = !DILocation(line: 106, column: 35, scope: !4138)
!4147 = !DILocation(line: 106, column: 10, scope: !4138)
!4148 = !DILocation(line: 106, column: 3, scope: !4138)
!4149 = distinct !DISubprogram(name: "x2realloc", scope: !271, file: !271, line: 116, type: !4150, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!16, !16, !277}
!4152 = !DILocalVariable(name: "p", arg: 1, scope: !4149, file: !271, line: 116, type: !16)
!4153 = !DILocation(line: 116, column: 18, scope: !4149)
!4154 = !DILocalVariable(name: "ps", arg: 2, scope: !4149, file: !271, line: 116, type: !277)
!4155 = !DILocation(line: 116, column: 29, scope: !4149)
!4156 = !DILocation(line: 118, column: 22, scope: !4149)
!4157 = !DILocation(line: 118, column: 25, scope: !4149)
!4158 = !DILocation(line: 118, column: 10, scope: !4149)
!4159 = !DILocation(line: 118, column: 3, scope: !4149)
!4160 = !DILocalVariable(name: "p", arg: 1, scope: !274, file: !271, line: 176, type: !16)
!4161 = !DILocation(line: 176, column: 19, scope: !274)
!4162 = !DILocalVariable(name: "pn", arg: 2, scope: !274, file: !271, line: 176, type: !277)
!4163 = !DILocation(line: 176, column: 30, scope: !274)
!4164 = !DILocalVariable(name: "s", arg: 3, scope: !274, file: !271, line: 176, type: !125)
!4165 = !DILocation(line: 176, column: 41, scope: !274)
!4166 = !DILocalVariable(name: "n", scope: !274, file: !271, line: 178, type: !125)
!4167 = !DILocation(line: 178, column: 10, scope: !274)
!4168 = !DILocation(line: 178, column: 15, scope: !274)
!4169 = !DILocation(line: 178, column: 14, scope: !274)
!4170 = !DILocation(line: 180, column: 9, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !274, file: !271, line: 180, column: 7)
!4172 = !DILocation(line: 180, column: 7, scope: !274)
!4173 = !DILocation(line: 182, column: 13, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !271, line: 182, column: 11)
!4175 = distinct !DILexicalBlock(scope: !4171, file: !271, line: 181, column: 5)
!4176 = !DILocation(line: 182, column: 11, scope: !4175)
!4177 = !DILocation(line: 190, column: 32, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !271, line: 183, column: 9)
!4179 = !DILocation(line: 190, column: 30, scope: !4178)
!4180 = !DILocation(line: 190, column: 13, scope: !4178)
!4181 = !DILocation(line: 191, column: 17, scope: !4178)
!4182 = !DILocation(line: 191, column: 16, scope: !4178)
!4183 = !DILocation(line: 191, column: 13, scope: !4178)
!4184 = !DILocation(line: 192, column: 9, scope: !4178)
!4185 = !DILocation(line: 193, column: 5, scope: !4175)
!4186 = !DILocation(line: 197, column: 11, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !271, line: 197, column: 11)
!4188 = distinct !DILexicalBlock(scope: !4171, file: !271, line: 195, column: 5)
!4189 = !DILocation(line: 197, column: 11, scope: !4188)
!4190 = !DILocation(line: 198, column: 9, scope: !4187)
!4191 = !DILocation(line: 201, column: 22, scope: !274)
!4192 = !DILocation(line: 201, column: 25, scope: !274)
!4193 = !DILocation(line: 201, column: 28, scope: !274)
!4194 = !DILocation(line: 201, column: 7, scope: !274)
!4195 = !DILocation(line: 201, column: 5, scope: !274)
!4196 = !DILocation(line: 202, column: 9, scope: !274)
!4197 = !DILocation(line: 202, column: 4, scope: !274)
!4198 = !DILocation(line: 202, column: 7, scope: !274)
!4199 = !DILocation(line: 203, column: 10, scope: !274)
!4200 = !DILocation(line: 203, column: 3, scope: !274)
!4201 = !DILocalVariable(name: "pa", arg: 1, scope: !281, file: !271, line: 223, type: !16)
!4202 = !DILocation(line: 223, column: 16, scope: !281)
!4203 = !DILocalVariable(name: "pn", arg: 2, scope: !281, file: !271, line: 223, type: !284)
!4204 = !DILocation(line: 223, column: 27, scope: !281)
!4205 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !281, file: !271, line: 223, type: !285)
!4206 = !DILocation(line: 223, column: 37, scope: !281)
!4207 = !DILocalVariable(name: "n_max", arg: 4, scope: !281, file: !271, line: 223, type: !287)
!4208 = !DILocation(line: 223, column: 59, scope: !281)
!4209 = !DILocalVariable(name: "s", arg: 5, scope: !281, file: !271, line: 223, type: !285)
!4210 = !DILocation(line: 223, column: 72, scope: !281)
!4211 = !DILocalVariable(name: "n0", scope: !281, file: !271, line: 230, type: !285)
!4212 = !DILocation(line: 230, column: 9, scope: !281)
!4213 = !DILocation(line: 230, column: 15, scope: !281)
!4214 = !DILocation(line: 230, column: 14, scope: !281)
!4215 = !DILocalVariable(name: "n", scope: !281, file: !271, line: 237, type: !285)
!4216 = !DILocation(line: 237, column: 9, scope: !281)
!4217 = !DILocation(line: 238, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !281, file: !271, line: 238, column: 7)
!4219 = !DILocation(line: 238, column: 7, scope: !281)
!4220 = !DILocation(line: 239, column: 7, scope: !4218)
!4221 = !DILocation(line: 239, column: 5, scope: !4218)
!4222 = !DILocation(line: 240, column: 12, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !281, file: !271, line: 240, column: 7)
!4224 = !DILocation(line: 240, column: 9, scope: !4223)
!4225 = !DILocation(line: 240, column: 18, scope: !4223)
!4226 = !DILocation(line: 240, column: 21, scope: !4223)
!4227 = !DILocation(line: 240, column: 29, scope: !4223)
!4228 = !DILocation(line: 240, column: 27, scope: !4223)
!4229 = !DILocation(line: 240, column: 7, scope: !281)
!4230 = !DILocation(line: 241, column: 9, scope: !4223)
!4231 = !DILocation(line: 241, column: 7, scope: !4223)
!4232 = !DILocation(line: 241, column: 5, scope: !4223)
!4233 = !DILocalVariable(name: "nbytes", scope: !281, file: !271, line: 248, type: !285)
!4234 = !DILocation(line: 248, column: 9, scope: !281)
!4235 = !DILocalVariable(name: "adjusted_nbytes", scope: !281, file: !271, line: 252, type: !285)
!4236 = !DILocation(line: 252, column: 9, scope: !281)
!4237 = !DILocation(line: 253, column: 8, scope: !281)
!4238 = !DILocation(line: 255, column: 10, scope: !281)
!4239 = !DILocation(line: 255, column: 17, scope: !281)
!4240 = !DILocation(line: 256, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !281, file: !271, line: 256, column: 7)
!4242 = !DILocation(line: 256, column: 7, scope: !281)
!4243 = !DILocation(line: 258, column: 11, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4241, file: !271, line: 257, column: 5)
!4245 = !DILocation(line: 258, column: 29, scope: !4244)
!4246 = !DILocation(line: 258, column: 27, scope: !4244)
!4247 = !DILocation(line: 258, column: 9, scope: !4244)
!4248 = !DILocation(line: 259, column: 16, scope: !4244)
!4249 = !DILocation(line: 259, column: 34, scope: !4244)
!4250 = !DILocation(line: 259, column: 52, scope: !4244)
!4251 = !DILocation(line: 259, column: 50, scope: !4244)
!4252 = !DILocation(line: 259, column: 32, scope: !4244)
!4253 = !DILocation(line: 259, column: 14, scope: !4244)
!4254 = !DILocation(line: 260, column: 5, scope: !4244)
!4255 = !DILocation(line: 262, column: 9, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !281, file: !271, line: 262, column: 7)
!4257 = !DILocation(line: 262, column: 7, scope: !281)
!4258 = !DILocation(line: 263, column: 6, scope: !4256)
!4259 = !DILocation(line: 263, column: 9, scope: !4256)
!4260 = !DILocation(line: 263, column: 5, scope: !4256)
!4261 = !DILocation(line: 264, column: 7, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !281, file: !271, line: 264, column: 7)
!4263 = !DILocation(line: 264, column: 11, scope: !4262)
!4264 = !DILocation(line: 264, column: 9, scope: !4262)
!4265 = !DILocation(line: 264, column: 16, scope: !4262)
!4266 = !DILocation(line: 264, column: 14, scope: !4262)
!4267 = !DILocation(line: 265, column: 7, scope: !4262)
!4268 = !DILocation(line: 265, column: 11, scope: !4262)
!4269 = !DILocation(line: 266, column: 11, scope: !4262)
!4270 = !DILocation(line: 266, column: 20, scope: !4262)
!4271 = !DILocation(line: 266, column: 17, scope: !4262)
!4272 = !DILocation(line: 266, column: 26, scope: !4262)
!4273 = !DILocation(line: 266, column: 29, scope: !4262)
!4274 = !DILocation(line: 266, column: 37, scope: !4262)
!4275 = !DILocation(line: 266, column: 35, scope: !4262)
!4276 = !DILocation(line: 267, column: 11, scope: !4262)
!4277 = !DILocation(line: 267, column: 14, scope: !4262)
!4278 = !DILocation(line: 264, column: 7, scope: !281)
!4279 = !DILocation(line: 268, column: 5, scope: !4262)
!4280 = !DILocation(line: 269, column: 18, scope: !281)
!4281 = !DILocation(line: 269, column: 22, scope: !281)
!4282 = !DILocation(line: 269, column: 8, scope: !281)
!4283 = !DILocation(line: 269, column: 6, scope: !281)
!4284 = !DILocation(line: 270, column: 9, scope: !281)
!4285 = !DILocation(line: 270, column: 4, scope: !281)
!4286 = !DILocation(line: 270, column: 7, scope: !281)
!4287 = !DILocation(line: 271, column: 10, scope: !281)
!4288 = !DILocation(line: 271, column: 3, scope: !281)
!4289 = distinct !DISubprogram(name: "xzalloc", scope: !271, file: !271, line: 279, type: !4064, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4290 = !DILocalVariable(name: "s", arg: 1, scope: !4289, file: !271, line: 279, type: !125)
!4291 = !DILocation(line: 279, column: 17, scope: !4289)
!4292 = !DILocation(line: 281, column: 19, scope: !4289)
!4293 = !DILocation(line: 281, column: 10, scope: !4289)
!4294 = !DILocation(line: 281, column: 3, scope: !4289)
!4295 = distinct !DISubprogram(name: "xcalloc", scope: !271, file: !271, line: 294, type: !4128, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4296 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !271, line: 294, type: !125)
!4297 = !DILocation(line: 294, column: 17, scope: !4295)
!4298 = !DILocalVariable(name: "s", arg: 2, scope: !4295, file: !271, line: 294, type: !125)
!4299 = !DILocation(line: 294, column: 27, scope: !4295)
!4300 = !DILocation(line: 296, column: 33, scope: !4295)
!4301 = !DILocation(line: 296, column: 36, scope: !4295)
!4302 = !DILocation(line: 296, column: 25, scope: !4295)
!4303 = !DILocation(line: 296, column: 10, scope: !4295)
!4304 = !DILocation(line: 296, column: 3, scope: !4295)
!4305 = distinct !DISubprogram(name: "xizalloc", scope: !271, file: !271, line: 285, type: !4073, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4306 = !DILocalVariable(name: "s", arg: 1, scope: !4305, file: !271, line: 285, type: !285)
!4307 = !DILocation(line: 285, column: 17, scope: !4305)
!4308 = !DILocation(line: 287, column: 20, scope: !4305)
!4309 = !DILocation(line: 287, column: 10, scope: !4305)
!4310 = !DILocation(line: 287, column: 3, scope: !4305)
!4311 = distinct !DISubprogram(name: "xicalloc", scope: !271, file: !271, line: 300, type: !4139, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4312 = !DILocalVariable(name: "n", arg: 1, scope: !4311, file: !271, line: 300, type: !285)
!4313 = !DILocation(line: 300, column: 17, scope: !4311)
!4314 = !DILocalVariable(name: "s", arg: 2, scope: !4311, file: !271, line: 300, type: !285)
!4315 = !DILocation(line: 300, column: 26, scope: !4311)
!4316 = !DILocation(line: 302, column: 34, scope: !4311)
!4317 = !DILocation(line: 302, column: 37, scope: !4311)
!4318 = !DILocation(line: 302, column: 25, scope: !4311)
!4319 = !DILocation(line: 302, column: 10, scope: !4311)
!4320 = !DILocation(line: 302, column: 3, scope: !4311)
!4321 = distinct !DISubprogram(name: "xmemdup", scope: !271, file: !271, line: 310, type: !4322, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!16, !4324, !125}
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4326 = !DILocalVariable(name: "p", arg: 1, scope: !4321, file: !271, line: 310, type: !4324)
!4327 = !DILocation(line: 310, column: 22, scope: !4321)
!4328 = !DILocalVariable(name: "s", arg: 2, scope: !4321, file: !271, line: 310, type: !125)
!4329 = !DILocation(line: 310, column: 32, scope: !4321)
!4330 = !DILocation(line: 312, column: 27, scope: !4321)
!4331 = !DILocation(line: 312, column: 18, scope: !4321)
!4332 = !DILocation(line: 312, column: 31, scope: !4321)
!4333 = !DILocation(line: 312, column: 34, scope: !4321)
!4334 = !DILocation(line: 312, column: 10, scope: !4321)
!4335 = !DILocation(line: 312, column: 3, scope: !4321)
!4336 = distinct !DISubprogram(name: "ximemdup", scope: !271, file: !271, line: 316, type: !4337, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!16, !4324, !285}
!4339 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !271, line: 316, type: !4324)
!4340 = !DILocation(line: 316, column: 23, scope: !4336)
!4341 = !DILocalVariable(name: "s", arg: 2, scope: !4336, file: !271, line: 316, type: !285)
!4342 = !DILocation(line: 316, column: 32, scope: !4336)
!4343 = !DILocation(line: 318, column: 28, scope: !4336)
!4344 = !DILocation(line: 318, column: 18, scope: !4336)
!4345 = !DILocation(line: 318, column: 32, scope: !4336)
!4346 = !DILocation(line: 318, column: 35, scope: !4336)
!4347 = !DILocation(line: 318, column: 10, scope: !4336)
!4348 = !DILocation(line: 318, column: 3, scope: !4336)
!4349 = distinct !DISubprogram(name: "ximemdup0", scope: !271, file: !271, line: 325, type: !4350, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!71, !4324, !285}
!4352 = !DILocalVariable(name: "p", arg: 1, scope: !4349, file: !271, line: 325, type: !4324)
!4353 = !DILocation(line: 325, column: 24, scope: !4349)
!4354 = !DILocalVariable(name: "s", arg: 2, scope: !4349, file: !271, line: 325, type: !285)
!4355 = !DILocation(line: 325, column: 33, scope: !4349)
!4356 = !DILocalVariable(name: "result", scope: !4349, file: !271, line: 327, type: !71)
!4357 = !DILocation(line: 327, column: 9, scope: !4349)
!4358 = !DILocation(line: 327, column: 28, scope: !4349)
!4359 = !DILocation(line: 327, column: 30, scope: !4349)
!4360 = !DILocation(line: 327, column: 18, scope: !4349)
!4361 = !DILocation(line: 328, column: 3, scope: !4349)
!4362 = !DILocation(line: 328, column: 10, scope: !4349)
!4363 = !DILocation(line: 328, column: 13, scope: !4349)
!4364 = !DILocation(line: 329, column: 18, scope: !4349)
!4365 = !DILocation(line: 329, column: 26, scope: !4349)
!4366 = !DILocation(line: 329, column: 29, scope: !4349)
!4367 = !DILocation(line: 329, column: 10, scope: !4349)
!4368 = !DILocation(line: 329, column: 3, scope: !4349)
!4369 = distinct !DISubprogram(name: "xstrdup", scope: !271, file: !271, line: 335, type: !3434, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !39)
!4370 = !DILocalVariable(name: "string", arg: 1, scope: !4369, file: !271, line: 335, type: !8)
!4371 = !DILocation(line: 335, column: 22, scope: !4369)
!4372 = !DILocation(line: 337, column: 19, scope: !4369)
!4373 = !DILocation(line: 337, column: 35, scope: !4369)
!4374 = !DILocation(line: 337, column: 27, scope: !4369)
!4375 = !DILocation(line: 337, column: 43, scope: !4369)
!4376 = !DILocation(line: 337, column: 10, scope: !4369)
!4377 = !DILocation(line: 337, column: 3, scope: !4369)
!4378 = distinct !DISubprogram(name: "xalloc_die", scope: !290, file: !290, line: 32, type: !47, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !39)
!4379 = !DILocalVariable(name: "__errstatus", scope: !4380, file: !290, line: 34, type: !4381)
!4380 = distinct !DILexicalBlock(scope: !4378, file: !290, line: 34, column: 3)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!4382 = !DILocation(line: 34, column: 3, scope: !4380)
!4383 = !DILocation(line: 40, column: 3, scope: !4378)
!4384 = distinct !DISubprogram(name: "c32isprint", scope: !4385, file: !4385, line: 41, type: !4386, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !39)
!4385 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!23, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4389, line: 20, baseType: !24)
!4389 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4390 = !DILocalVariable(name: "wc", arg: 1, scope: !4384, file: !4385, line: 41, type: !4388)
!4391 = !DILocation(line: 41, column: 14, scope: !4384)
!4392 = !DILocation(line: 66, column: 22, scope: !4384)
!4393 = !DILocation(line: 66, column: 10, scope: !4384)
!4394 = !DILocation(line: 66, column: 3, scope: !4384)
!4395 = distinct !DISubprogram(name: "close_stream", scope: !294, file: !294, line: 55, type: !4396, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !39)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!23, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3724, line: 7, baseType: !4400)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3726, line: 49, size: 1728, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4400, file: !3726, line: 51, baseType: !23, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4400, file: !3726, line: 54, baseType: !71, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4400, file: !3726, line: 55, baseType: !71, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4400, file: !3726, line: 56, baseType: !71, size: 64, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4400, file: !3726, line: 57, baseType: !71, size: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4400, file: !3726, line: 58, baseType: !71, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4400, file: !3726, line: 59, baseType: !71, size: 64, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4400, file: !3726, line: 60, baseType: !71, size: 64, offset: 448)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4400, file: !3726, line: 61, baseType: !71, size: 64, offset: 512)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4400, file: !3726, line: 64, baseType: !71, size: 64, offset: 576)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4400, file: !3726, line: 65, baseType: !71, size: 64, offset: 640)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4400, file: !3726, line: 66, baseType: !71, size: 64, offset: 704)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4400, file: !3726, line: 68, baseType: !3741, size: 64, offset: 768)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4400, file: !3726, line: 70, baseType: !4416, size: 64, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4400, file: !3726, line: 72, baseType: !23, size: 32, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4400, file: !3726, line: 73, baseType: !23, size: 32, offset: 928)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4400, file: !3726, line: 74, baseType: !248, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4400, file: !3726, line: 77, baseType: !124, size: 16, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4400, file: !3726, line: 78, baseType: !3750, size: 8, offset: 1040)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4400, file: !3726, line: 79, baseType: !3752, size: 8, offset: 1048)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4400, file: !3726, line: 81, baseType: !3756, size: 64, offset: 1088)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4400, file: !3726, line: 89, baseType: !250, size: 64, offset: 1152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4400, file: !3726, line: 91, baseType: !3760, size: 64, offset: 1216)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4400, file: !3726, line: 92, baseType: !3763, size: 64, offset: 1280)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4400, file: !3726, line: 93, baseType: !4416, size: 64, offset: 1344)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4400, file: !3726, line: 94, baseType: !16, size: 64, offset: 1408)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4400, file: !3726, line: 95, baseType: !125, size: 64, offset: 1472)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4400, file: !3726, line: 96, baseType: !23, size: 32, offset: 1536)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4400, file: !3726, line: 98, baseType: !3770, size: 160, offset: 1568)
!4432 = !DILocalVariable(name: "stream", arg: 1, scope: !4395, file: !294, line: 55, type: !4398)
!4433 = !DILocation(line: 55, column: 21, scope: !4395)
!4434 = !DILocalVariable(name: "some_pending", scope: !4395, file: !294, line: 57, type: !4435)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4436 = !DILocation(line: 57, column: 14, scope: !4395)
!4437 = !DILocation(line: 57, column: 42, scope: !4395)
!4438 = !DILocation(line: 57, column: 30, scope: !4395)
!4439 = !DILocation(line: 57, column: 50, scope: !4395)
!4440 = !DILocalVariable(name: "prev_fail", scope: !4395, file: !294, line: 58, type: !4435)
!4441 = !DILocation(line: 58, column: 14, scope: !4395)
!4442 = !DILocation(line: 58, column: 27, scope: !4395)
!4443 = !DILocation(line: 58, column: 43, scope: !4395)
!4444 = !DILocalVariable(name: "fclose_fail", scope: !4395, file: !294, line: 59, type: !4435)
!4445 = !DILocation(line: 59, column: 14, scope: !4395)
!4446 = !DILocation(line: 59, column: 37, scope: !4395)
!4447 = !DILocation(line: 59, column: 29, scope: !4395)
!4448 = !DILocation(line: 59, column: 45, scope: !4395)
!4449 = !DILocation(line: 69, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4395, file: !294, line: 69, column: 7)
!4451 = !DILocation(line: 69, column: 17, scope: !4450)
!4452 = !DILocation(line: 69, column: 21, scope: !4450)
!4453 = !DILocation(line: 69, column: 33, scope: !4450)
!4454 = !DILocation(line: 69, column: 37, scope: !4450)
!4455 = !DILocation(line: 69, column: 50, scope: !4450)
!4456 = !DILocation(line: 69, column: 53, scope: !4450)
!4457 = !DILocation(line: 69, column: 59, scope: !4450)
!4458 = !DILocation(line: 69, column: 7, scope: !4395)
!4459 = !DILocation(line: 71, column: 13, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !294, line: 71, column: 11)
!4461 = distinct !DILexicalBlock(scope: !4450, file: !294, line: 70, column: 5)
!4462 = !DILocation(line: 71, column: 11, scope: !4461)
!4463 = !DILocation(line: 72, column: 9, scope: !4460)
!4464 = !DILocation(line: 72, column: 15, scope: !4460)
!4465 = !DILocation(line: 73, column: 7, scope: !4461)
!4466 = !DILocation(line: 76, column: 3, scope: !4395)
!4467 = !DILocation(line: 77, column: 1, scope: !4395)
!4468 = distinct !DISubprogram(name: "rpl_fclose", scope: !296, file: !296, line: 58, type: !4469, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!23, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3724, line: 7, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3726, line: 49, size: 1728, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4473, file: !3726, line: 51, baseType: !23, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4473, file: !3726, line: 54, baseType: !71, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4473, file: !3726, line: 55, baseType: !71, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4473, file: !3726, line: 56, baseType: !71, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4473, file: !3726, line: 57, baseType: !71, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4473, file: !3726, line: 58, baseType: !71, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4473, file: !3726, line: 59, baseType: !71, size: 64, offset: 384)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4473, file: !3726, line: 60, baseType: !71, size: 64, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4473, file: !3726, line: 61, baseType: !71, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4473, file: !3726, line: 64, baseType: !71, size: 64, offset: 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4473, file: !3726, line: 65, baseType: !71, size: 64, offset: 640)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4473, file: !3726, line: 66, baseType: !71, size: 64, offset: 704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4473, file: !3726, line: 68, baseType: !3741, size: 64, offset: 768)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4473, file: !3726, line: 70, baseType: !4489, size: 64, offset: 832)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4473, file: !3726, line: 72, baseType: !23, size: 32, offset: 896)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4473, file: !3726, line: 73, baseType: !23, size: 32, offset: 928)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4473, file: !3726, line: 74, baseType: !248, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4473, file: !3726, line: 77, baseType: !124, size: 16, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4473, file: !3726, line: 78, baseType: !3750, size: 8, offset: 1040)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4473, file: !3726, line: 79, baseType: !3752, size: 8, offset: 1048)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4473, file: !3726, line: 81, baseType: !3756, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4473, file: !3726, line: 89, baseType: !250, size: 64, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4473, file: !3726, line: 91, baseType: !3760, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4473, file: !3726, line: 92, baseType: !3763, size: 64, offset: 1280)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4473, file: !3726, line: 93, baseType: !4489, size: 64, offset: 1344)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4473, file: !3726, line: 94, baseType: !16, size: 64, offset: 1408)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4473, file: !3726, line: 95, baseType: !125, size: 64, offset: 1472)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4473, file: !3726, line: 96, baseType: !23, size: 32, offset: 1536)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4473, file: !3726, line: 98, baseType: !3770, size: 160, offset: 1568)
!4505 = !DILocalVariable(name: "fp", arg: 1, scope: !4468, file: !296, line: 58, type: !4471)
!4506 = !DILocation(line: 58, column: 19, scope: !4468)
!4507 = !DILocalVariable(name: "saved_errno", scope: !4468, file: !296, line: 60, type: !23)
!4508 = !DILocation(line: 60, column: 7, scope: !4468)
!4509 = !DILocalVariable(name: "fd", scope: !4468, file: !296, line: 63, type: !23)
!4510 = !DILocation(line: 63, column: 7, scope: !4468)
!4511 = !DILocation(line: 63, column: 20, scope: !4468)
!4512 = !DILocation(line: 63, column: 12, scope: !4468)
!4513 = !DILocation(line: 64, column: 7, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4468, file: !296, line: 64, column: 7)
!4515 = !DILocation(line: 64, column: 10, scope: !4514)
!4516 = !DILocation(line: 64, column: 7, scope: !4468)
!4517 = !DILocation(line: 65, column: 28, scope: !4514)
!4518 = !DILocation(line: 65, column: 12, scope: !4514)
!4519 = !DILocation(line: 65, column: 5, scope: !4514)
!4520 = !DILocation(line: 70, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4468, file: !296, line: 70, column: 7)
!4522 = !DILocation(line: 70, column: 23, scope: !4521)
!4523 = !DILocation(line: 70, column: 41, scope: !4521)
!4524 = !DILocation(line: 70, column: 33, scope: !4521)
!4525 = !DILocation(line: 70, column: 26, scope: !4521)
!4526 = !DILocation(line: 70, column: 59, scope: !4521)
!4527 = !DILocation(line: 71, column: 7, scope: !4521)
!4528 = !DILocation(line: 71, column: 18, scope: !4521)
!4529 = !DILocation(line: 71, column: 10, scope: !4521)
!4530 = !DILocation(line: 70, column: 7, scope: !4468)
!4531 = !DILocation(line: 72, column: 19, scope: !4521)
!4532 = !DILocation(line: 72, column: 17, scope: !4521)
!4533 = !DILocation(line: 72, column: 5, scope: !4521)
!4534 = !DILocalVariable(name: "result", scope: !4468, file: !296, line: 74, type: !23)
!4535 = !DILocation(line: 74, column: 7, scope: !4468)
!4536 = !DILocation(line: 100, column: 28, scope: !4468)
!4537 = !DILocation(line: 100, column: 12, scope: !4468)
!4538 = !DILocation(line: 100, column: 10, scope: !4468)
!4539 = !DILocation(line: 105, column: 7, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4468, file: !296, line: 105, column: 7)
!4541 = !DILocation(line: 105, column: 19, scope: !4540)
!4542 = !DILocation(line: 105, column: 7, scope: !4468)
!4543 = !DILocation(line: 107, column: 15, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !296, line: 106, column: 5)
!4545 = !DILocation(line: 107, column: 7, scope: !4544)
!4546 = !DILocation(line: 107, column: 13, scope: !4544)
!4547 = !DILocation(line: 108, column: 14, scope: !4544)
!4548 = !DILocation(line: 109, column: 5, scope: !4544)
!4549 = !DILocation(line: 111, column: 10, scope: !4468)
!4550 = !DILocation(line: 111, column: 3, scope: !4468)
!4551 = !DILocation(line: 112, column: 1, scope: !4468)
!4552 = distinct !DISubprogram(name: "rpl_fflush", scope: !298, file: !298, line: 130, type: !4553, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !39)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!23, !4555}
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3724, line: 7, baseType: !4557)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3726, line: 49, size: 1728, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4557, file: !3726, line: 51, baseType: !23, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4557, file: !3726, line: 54, baseType: !71, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4557, file: !3726, line: 55, baseType: !71, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4557, file: !3726, line: 56, baseType: !71, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4557, file: !3726, line: 57, baseType: !71, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4557, file: !3726, line: 58, baseType: !71, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4557, file: !3726, line: 59, baseType: !71, size: 64, offset: 384)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4557, file: !3726, line: 60, baseType: !71, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4557, file: !3726, line: 61, baseType: !71, size: 64, offset: 512)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4557, file: !3726, line: 64, baseType: !71, size: 64, offset: 576)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4557, file: !3726, line: 65, baseType: !71, size: 64, offset: 640)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4557, file: !3726, line: 66, baseType: !71, size: 64, offset: 704)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4557, file: !3726, line: 68, baseType: !3741, size: 64, offset: 768)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4557, file: !3726, line: 70, baseType: !4573, size: 64, offset: 832)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4557, file: !3726, line: 72, baseType: !23, size: 32, offset: 896)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4557, file: !3726, line: 73, baseType: !23, size: 32, offset: 928)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4557, file: !3726, line: 74, baseType: !248, size: 64, offset: 960)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4557, file: !3726, line: 77, baseType: !124, size: 16, offset: 1024)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4557, file: !3726, line: 78, baseType: !3750, size: 8, offset: 1040)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4557, file: !3726, line: 79, baseType: !3752, size: 8, offset: 1048)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4557, file: !3726, line: 81, baseType: !3756, size: 64, offset: 1088)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4557, file: !3726, line: 89, baseType: !250, size: 64, offset: 1152)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4557, file: !3726, line: 91, baseType: !3760, size: 64, offset: 1216)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4557, file: !3726, line: 92, baseType: !3763, size: 64, offset: 1280)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4557, file: !3726, line: 93, baseType: !4573, size: 64, offset: 1344)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4557, file: !3726, line: 94, baseType: !16, size: 64, offset: 1408)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4557, file: !3726, line: 95, baseType: !125, size: 64, offset: 1472)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4557, file: !3726, line: 96, baseType: !23, size: 32, offset: 1536)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4557, file: !3726, line: 98, baseType: !3770, size: 160, offset: 1568)
!4589 = !DILocalVariable(name: "stream", arg: 1, scope: !4552, file: !298, line: 130, type: !4555)
!4590 = !DILocation(line: 130, column: 19, scope: !4552)
!4591 = !DILocation(line: 151, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4552, file: !298, line: 151, column: 7)
!4593 = !DILocation(line: 151, column: 14, scope: !4592)
!4594 = !DILocation(line: 151, column: 22, scope: !4592)
!4595 = !DILocation(line: 151, column: 27, scope: !4592)
!4596 = !DILocation(line: 151, column: 7, scope: !4552)
!4597 = !DILocation(line: 152, column: 20, scope: !4592)
!4598 = !DILocation(line: 152, column: 12, scope: !4592)
!4599 = !DILocation(line: 152, column: 5, scope: !4592)
!4600 = !DILocation(line: 157, column: 44, scope: !4552)
!4601 = !DILocation(line: 157, column: 3, scope: !4552)
!4602 = !DILocation(line: 159, column: 18, scope: !4552)
!4603 = !DILocation(line: 159, column: 10, scope: !4552)
!4604 = !DILocation(line: 159, column: 3, scope: !4552)
!4605 = !DILocation(line: 236, column: 1, scope: !4552)
!4606 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !298, file: !298, line: 42, type: !4607, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !297, retainedNodes: !39)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4555}
!4609 = !DILocalVariable(name: "fp", arg: 1, scope: !4606, file: !298, line: 42, type: !4555)
!4610 = !DILocation(line: 42, column: 48, scope: !4606)
!4611 = !DILocation(line: 44, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4606, file: !298, line: 44, column: 7)
!4613 = !DILocation(line: 44, column: 12, scope: !4612)
!4614 = !DILocation(line: 44, column: 19, scope: !4612)
!4615 = !DILocation(line: 44, column: 7, scope: !4606)
!4616 = !DILocation(line: 46, column: 13, scope: !4612)
!4617 = !DILocation(line: 46, column: 5, scope: !4612)
!4618 = !DILocation(line: 47, column: 1, scope: !4606)
!4619 = distinct !DISubprogram(name: "rpl_fseeko", scope: !300, file: !300, line: 28, type: !4620, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !39)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!23, !4622, !4656, !23}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3724, line: 7, baseType: !4624)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3726, line: 49, size: 1728, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4624, file: !3726, line: 51, baseType: !23, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4624, file: !3726, line: 54, baseType: !71, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4624, file: !3726, line: 55, baseType: !71, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4624, file: !3726, line: 56, baseType: !71, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4624, file: !3726, line: 57, baseType: !71, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4624, file: !3726, line: 58, baseType: !71, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4624, file: !3726, line: 59, baseType: !71, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4624, file: !3726, line: 60, baseType: !71, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4624, file: !3726, line: 61, baseType: !71, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4624, file: !3726, line: 64, baseType: !71, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4624, file: !3726, line: 65, baseType: !71, size: 64, offset: 640)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4624, file: !3726, line: 66, baseType: !71, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4624, file: !3726, line: 68, baseType: !3741, size: 64, offset: 768)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4624, file: !3726, line: 70, baseType: !4640, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4624, file: !3726, line: 72, baseType: !23, size: 32, offset: 896)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4624, file: !3726, line: 73, baseType: !23, size: 32, offset: 928)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4624, file: !3726, line: 74, baseType: !248, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4624, file: !3726, line: 77, baseType: !124, size: 16, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4624, file: !3726, line: 78, baseType: !3750, size: 8, offset: 1040)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4624, file: !3726, line: 79, baseType: !3752, size: 8, offset: 1048)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4624, file: !3726, line: 81, baseType: !3756, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4624, file: !3726, line: 89, baseType: !250, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4624, file: !3726, line: 91, baseType: !3760, size: 64, offset: 1216)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4624, file: !3726, line: 92, baseType: !3763, size: 64, offset: 1280)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4624, file: !3726, line: 93, baseType: !4640, size: 64, offset: 1344)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4624, file: !3726, line: 94, baseType: !16, size: 64, offset: 1408)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4624, file: !3726, line: 95, baseType: !125, size: 64, offset: 1472)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4624, file: !3726, line: 96, baseType: !23, size: 32, offset: 1536)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4624, file: !3726, line: 98, baseType: !3770, size: 160, offset: 1568)
!4656 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !26, line: 63, baseType: !248)
!4657 = !DILocalVariable(name: "fp", arg: 1, scope: !4619, file: !300, line: 28, type: !4622)
!4658 = !DILocation(line: 28, column: 15, scope: !4619)
!4659 = !DILocalVariable(name: "offset", arg: 2, scope: !4619, file: !300, line: 28, type: !4656)
!4660 = !DILocation(line: 28, column: 25, scope: !4619)
!4661 = !DILocalVariable(name: "whence", arg: 3, scope: !4619, file: !300, line: 28, type: !23)
!4662 = !DILocation(line: 28, column: 37, scope: !4619)
!4663 = !DILocation(line: 55, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4619, file: !300, line: 55, column: 7)
!4665 = !DILocation(line: 55, column: 12, scope: !4664)
!4666 = !DILocation(line: 55, column: 28, scope: !4664)
!4667 = !DILocation(line: 55, column: 33, scope: !4664)
!4668 = !DILocation(line: 55, column: 25, scope: !4664)
!4669 = !DILocation(line: 56, column: 7, scope: !4664)
!4670 = !DILocation(line: 56, column: 10, scope: !4664)
!4671 = !DILocation(line: 56, column: 15, scope: !4664)
!4672 = !DILocation(line: 56, column: 32, scope: !4664)
!4673 = !DILocation(line: 56, column: 37, scope: !4664)
!4674 = !DILocation(line: 56, column: 29, scope: !4664)
!4675 = !DILocation(line: 57, column: 7, scope: !4664)
!4676 = !DILocation(line: 57, column: 10, scope: !4664)
!4677 = !DILocation(line: 57, column: 15, scope: !4664)
!4678 = !DILocation(line: 57, column: 29, scope: !4664)
!4679 = !DILocation(line: 55, column: 7, scope: !4619)
!4680 = !DILocalVariable(name: "pos", scope: !4681, file: !300, line: 123, type: !4656)
!4681 = distinct !DILexicalBlock(scope: !4664, file: !300, line: 119, column: 5)
!4682 = !DILocation(line: 123, column: 13, scope: !4681)
!4683 = !DILocation(line: 123, column: 34, scope: !4681)
!4684 = !DILocation(line: 123, column: 26, scope: !4681)
!4685 = !DILocation(line: 123, column: 39, scope: !4681)
!4686 = !DILocation(line: 123, column: 47, scope: !4681)
!4687 = !DILocation(line: 123, column: 19, scope: !4681)
!4688 = !DILocation(line: 124, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4681, file: !300, line: 124, column: 11)
!4690 = !DILocation(line: 124, column: 15, scope: !4689)
!4691 = !DILocation(line: 124, column: 11, scope: !4681)
!4692 = !DILocation(line: 130, column: 11, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4689, file: !300, line: 125, column: 9)
!4694 = !DILocation(line: 135, column: 7, scope: !4681)
!4695 = !DILocation(line: 135, column: 12, scope: !4681)
!4696 = !DILocation(line: 135, column: 19, scope: !4681)
!4697 = !DILocation(line: 136, column: 22, scope: !4681)
!4698 = !DILocation(line: 136, column: 7, scope: !4681)
!4699 = !DILocation(line: 136, column: 12, scope: !4681)
!4700 = !DILocation(line: 136, column: 20, scope: !4681)
!4701 = !DILocation(line: 167, column: 7, scope: !4681)
!4702 = !DILocation(line: 169, column: 18, scope: !4619)
!4703 = !DILocation(line: 169, column: 22, scope: !4619)
!4704 = !DILocation(line: 169, column: 30, scope: !4619)
!4705 = !DILocation(line: 169, column: 10, scope: !4619)
!4706 = !DILocation(line: 169, column: 3, scope: !4619)
!4707 = !DILocation(line: 170, column: 1, scope: !4619)
!4708 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4709, file: !4709, line: 43, type: !4710, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4709 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4710 = !DISubroutineType(types: !15)
!4711 = !DILocation(line: 45, column: 3, scope: !4708)
!4712 = !DILocation(line: 45, column: 9, scope: !4708)
!4713 = !DILocation(line: 46, column: 3, scope: !4708)
!4714 = distinct !DISubprogram(name: "imalloc", scope: !4709, file: !4709, line: 55, type: !4073, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4715 = !DILocalVariable(name: "s", arg: 1, scope: !4714, file: !4709, line: 55, type: !285)
!4716 = !DILocation(line: 55, column: 16, scope: !4714)
!4717 = !DILocation(line: 57, column: 10, scope: !4714)
!4718 = !DILocation(line: 57, column: 12, scope: !4714)
!4719 = !DILocation(line: 57, column: 34, scope: !4714)
!4720 = !DILocation(line: 57, column: 26, scope: !4714)
!4721 = !DILocation(line: 57, column: 39, scope: !4714)
!4722 = !DILocation(line: 57, column: 3, scope: !4714)
!4723 = distinct !DISubprogram(name: "irealloc", scope: !4709, file: !4709, line: 66, type: !4101, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4724 = !DILocalVariable(name: "p", arg: 1, scope: !4723, file: !4709, line: 66, type: !16)
!4725 = !DILocation(line: 66, column: 17, scope: !4723)
!4726 = !DILocalVariable(name: "s", arg: 2, scope: !4723, file: !4709, line: 66, type: !285)
!4727 = !DILocation(line: 66, column: 26, scope: !4723)
!4728 = !DILocation(line: 68, column: 10, scope: !4723)
!4729 = !DILocation(line: 68, column: 12, scope: !4723)
!4730 = !DILocation(line: 68, column: 35, scope: !4723)
!4731 = !DILocation(line: 68, column: 38, scope: !4723)
!4732 = !DILocation(line: 68, column: 26, scope: !4723)
!4733 = !DILocation(line: 68, column: 43, scope: !4723)
!4734 = !DILocation(line: 68, column: 3, scope: !4723)
!4735 = distinct !DISubprogram(name: "icalloc", scope: !4709, file: !4709, line: 77, type: !4139, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4736 = !DILocalVariable(name: "n", arg: 1, scope: !4735, file: !4709, line: 77, type: !285)
!4737 = !DILocation(line: 77, column: 16, scope: !4735)
!4738 = !DILocalVariable(name: "s", arg: 2, scope: !4735, file: !4709, line: 77, type: !285)
!4739 = !DILocation(line: 77, column: 25, scope: !4735)
!4740 = !DILocation(line: 79, column: 18, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4735, file: !4709, line: 79, column: 7)
!4742 = !DILocation(line: 79, column: 16, scope: !4741)
!4743 = !DILocation(line: 79, column: 7, scope: !4735)
!4744 = !DILocation(line: 81, column: 11, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !4709, line: 81, column: 11)
!4746 = distinct !DILexicalBlock(scope: !4741, file: !4709, line: 80, column: 5)
!4747 = !DILocation(line: 81, column: 13, scope: !4745)
!4748 = !DILocation(line: 81, column: 11, scope: !4746)
!4749 = !DILocation(line: 82, column: 16, scope: !4745)
!4750 = !DILocation(line: 82, column: 9, scope: !4745)
!4751 = !DILocation(line: 83, column: 9, scope: !4746)
!4752 = !DILocation(line: 84, column: 5, scope: !4746)
!4753 = !DILocation(line: 85, column: 18, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4735, file: !4709, line: 85, column: 7)
!4755 = !DILocation(line: 85, column: 16, scope: !4754)
!4756 = !DILocation(line: 85, column: 7, scope: !4735)
!4757 = !DILocation(line: 87, column: 11, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !4709, line: 87, column: 11)
!4759 = distinct !DILexicalBlock(scope: !4754, file: !4709, line: 86, column: 5)
!4760 = !DILocation(line: 87, column: 13, scope: !4758)
!4761 = !DILocation(line: 87, column: 11, scope: !4759)
!4762 = !DILocation(line: 88, column: 16, scope: !4758)
!4763 = !DILocation(line: 88, column: 9, scope: !4758)
!4764 = !DILocation(line: 89, column: 9, scope: !4759)
!4765 = !DILocation(line: 90, column: 5, scope: !4759)
!4766 = !DILocation(line: 91, column: 18, scope: !4735)
!4767 = !DILocation(line: 91, column: 21, scope: !4735)
!4768 = !DILocation(line: 91, column: 10, scope: !4735)
!4769 = !DILocation(line: 91, column: 3, scope: !4735)
!4770 = !DILocation(line: 92, column: 1, scope: !4735)
!4771 = distinct !DISubprogram(name: "ireallocarray", scope: !4709, file: !4709, line: 98, type: !4113, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4772 = !DILocalVariable(name: "p", arg: 1, scope: !4771, file: !4709, line: 98, type: !16)
!4773 = !DILocation(line: 98, column: 22, scope: !4771)
!4774 = !DILocalVariable(name: "n", arg: 2, scope: !4771, file: !4709, line: 98, type: !285)
!4775 = !DILocation(line: 98, column: 31, scope: !4771)
!4776 = !DILocalVariable(name: "s", arg: 3, scope: !4771, file: !4709, line: 98, type: !285)
!4777 = !DILocation(line: 98, column: 40, scope: !4771)
!4778 = !DILocation(line: 100, column: 11, scope: !4771)
!4779 = !DILocation(line: 100, column: 13, scope: !4771)
!4780 = !DILocation(line: 100, column: 25, scope: !4771)
!4781 = !DILocation(line: 100, column: 28, scope: !4771)
!4782 = !DILocation(line: 100, column: 30, scope: !4771)
!4783 = !DILocation(line: 101, column: 27, scope: !4771)
!4784 = !DILocation(line: 101, column: 30, scope: !4771)
!4785 = !DILocation(line: 101, column: 33, scope: !4771)
!4786 = !DILocation(line: 101, column: 13, scope: !4771)
!4787 = !DILocation(line: 102, column: 13, scope: !4771)
!4788 = !DILocation(line: 100, column: 3, scope: !4771)
!4789 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !194, file: !194, line: 100, type: !4790, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !193, retainedNodes: !39)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!125, !4792, !8, !125, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4794 = !DILocalVariable(name: "pwc", arg: 1, scope: !4789, file: !194, line: 100, type: !4792)
!4795 = !DILocation(line: 100, column: 21, scope: !4789)
!4796 = !DILocalVariable(name: "s", arg: 2, scope: !4789, file: !194, line: 100, type: !8)
!4797 = !DILocation(line: 100, column: 38, scope: !4789)
!4798 = !DILocalVariable(name: "n", arg: 3, scope: !4789, file: !194, line: 100, type: !125)
!4799 = !DILocation(line: 100, column: 48, scope: !4789)
!4800 = !DILocalVariable(name: "ps", arg: 4, scope: !4789, file: !194, line: 100, type: !4793)
!4801 = !DILocation(line: 100, column: 62, scope: !4789)
!4802 = !DILocation(line: 105, column: 7, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4789, file: !194, line: 105, column: 7)
!4804 = !DILocation(line: 105, column: 9, scope: !4803)
!4805 = !DILocation(line: 105, column: 7, scope: !4789)
!4806 = !DILocation(line: 107, column: 11, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4803, file: !194, line: 106, column: 5)
!4808 = !DILocation(line: 108, column: 9, scope: !4807)
!4809 = !DILocation(line: 109, column: 9, scope: !4807)
!4810 = !DILocation(line: 110, column: 5, scope: !4807)
!4811 = !DILocation(line: 117, column: 7, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4789, file: !194, line: 117, column: 7)
!4813 = !DILocation(line: 117, column: 10, scope: !4812)
!4814 = !DILocation(line: 117, column: 7, scope: !4789)
!4815 = !DILocation(line: 118, column: 8, scope: !4812)
!4816 = !DILocation(line: 118, column: 5, scope: !4812)
!4817 = !DILocalVariable(name: "ret", scope: !4789, file: !194, line: 130, type: !125)
!4818 = !DILocation(line: 130, column: 10, scope: !4789)
!4819 = !DILocation(line: 130, column: 26, scope: !4789)
!4820 = !DILocation(line: 130, column: 31, scope: !4789)
!4821 = !DILocation(line: 130, column: 34, scope: !4789)
!4822 = !DILocation(line: 130, column: 37, scope: !4789)
!4823 = !DILocation(line: 130, column: 16, scope: !4789)
!4824 = !DILocation(line: 135, column: 7, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4789, file: !194, line: 135, column: 7)
!4826 = !DILocation(line: 135, column: 11, scope: !4825)
!4827 = !DILocation(line: 135, column: 25, scope: !4825)
!4828 = !DILocation(line: 135, column: 39, scope: !4825)
!4829 = !DILocation(line: 135, column: 30, scope: !4825)
!4830 = !DILocation(line: 135, column: 7, scope: !4789)
!4831 = !DILocation(line: 137, column: 14, scope: !4825)
!4832 = !DILocation(line: 137, column: 5, scope: !4825)
!4833 = !DILocation(line: 138, column: 7, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4789, file: !194, line: 138, column: 7)
!4835 = !DILocation(line: 138, column: 11, scope: !4834)
!4836 = !DILocation(line: 138, column: 7, scope: !4789)
!4837 = !DILocation(line: 139, column: 5, scope: !4834)
!4838 = !DILocation(line: 143, column: 22, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4789, file: !194, line: 143, column: 7)
!4840 = !DILocation(line: 143, column: 19, scope: !4839)
!4841 = !DILocation(line: 143, column: 26, scope: !4839)
!4842 = !DILocation(line: 143, column: 29, scope: !4839)
!4843 = !DILocation(line: 143, column: 31, scope: !4839)
!4844 = !DILocation(line: 143, column: 36, scope: !4839)
!4845 = !DILocation(line: 143, column: 41, scope: !4839)
!4846 = !DILocation(line: 143, column: 7, scope: !4789)
!4847 = !DILocation(line: 145, column: 11, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !194, line: 145, column: 11)
!4849 = distinct !DILexicalBlock(scope: !4839, file: !194, line: 144, column: 5)
!4850 = !DILocation(line: 145, column: 15, scope: !4848)
!4851 = !DILocation(line: 145, column: 11, scope: !4849)
!4852 = !DILocation(line: 146, column: 33, scope: !4848)
!4853 = !DILocation(line: 146, column: 32, scope: !4848)
!4854 = !DILocation(line: 146, column: 16, scope: !4848)
!4855 = !DILocation(line: 146, column: 10, scope: !4848)
!4856 = !DILocation(line: 146, column: 14, scope: !4848)
!4857 = !DILocation(line: 146, column: 9, scope: !4848)
!4858 = !DILocation(line: 147, column: 7, scope: !4849)
!4859 = !DILocation(line: 151, column: 10, scope: !4789)
!4860 = !DILocation(line: 151, column: 3, scope: !4789)
!4861 = !DILocation(line: 286, column: 1, scope: !4789)
!4862 = distinct !DISubprogram(name: "mbszero", scope: !4863, file: !4863, line: 1135, type: !4864, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !39)
!4863 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4864 = !DISubroutineType(types: !4865)
!4865 = !{null, !4866}
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !199, line: 6, baseType: !4868)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !201, line: 21, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 13, size: 64, elements: !4870)
!4870 = !{!4871, !4872}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4869, file: !201, line: 15, baseType: !23, size: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4869, file: !201, line: 20, baseType: !4873, size: 32, offset: 32)
!4873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4869, file: !201, line: 16, size: 32, elements: !4874)
!4874 = !{!4875, !4876}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4873, file: !201, line: 18, baseType: !24, size: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4873, file: !201, line: 19, baseType: !210, size: 32)
!4877 = !DILocalVariable(name: "ps", arg: 1, scope: !4862, file: !4863, line: 1135, type: !4866)
!4878 = !DILocation(line: 1135, column: 21, scope: !4862)
!4879 = !DILocation(line: 1137, column: 11, scope: !4862)
!4880 = !DILocation(line: 1137, column: 3, scope: !4862)
!4881 = !DILocation(line: 1138, column: 1, scope: !4862)
!4882 = distinct !DISubprogram(name: "memeq", scope: !3707, file: !3707, line: 974, type: !4883, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !305, retainedNodes: !39)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!7, !4324, !4324, !125}
!4885 = !DILocalVariable(name: "__s1", arg: 1, scope: !4882, file: !3707, line: 974, type: !4324)
!4886 = !DILocation(line: 974, column: 20, scope: !4882)
!4887 = !DILocalVariable(name: "__s2", arg: 2, scope: !4882, file: !3707, line: 974, type: !4324)
!4888 = !DILocation(line: 974, column: 38, scope: !4882)
!4889 = !DILocalVariable(name: "__n", arg: 3, scope: !4882, file: !3707, line: 974, type: !125)
!4890 = !DILocation(line: 974, column: 51, scope: !4882)
!4891 = !DILocation(line: 976, column: 19, scope: !4882)
!4892 = !DILocation(line: 976, column: 25, scope: !4882)
!4893 = !DILocation(line: 976, column: 31, scope: !4882)
!4894 = !DILocation(line: 976, column: 11, scope: !4882)
!4895 = !DILocation(line: 976, column: 10, scope: !4882)
!4896 = !DILocation(line: 976, column: 3, scope: !4882)
!4897 = distinct !DISubprogram(name: "rpl_realloc", scope: !4898, file: !4898, line: 2057, type: !4089, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !39)
!4898 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4899 = !DILocalVariable(name: "ptr", arg: 1, scope: !4897, file: !4898, line: 2057, type: !16)
!4900 = !DILocation(line: 2057, column: 20, scope: !4897)
!4901 = !DILocalVariable(name: "size", arg: 2, scope: !4897, file: !4898, line: 2057, type: !125)
!4902 = !DILocation(line: 2057, column: 32, scope: !4897)
!4903 = !DILocation(line: 2059, column: 19, scope: !4897)
!4904 = !DILocation(line: 2059, column: 24, scope: !4897)
!4905 = !DILocation(line: 2059, column: 31, scope: !4897)
!4906 = !DILocation(line: 2059, column: 10, scope: !4897)
!4907 = !DILocation(line: 2059, column: 3, scope: !4897)
!4908 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !310, file: !310, line: 27, type: !4026, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !39)
!4909 = !DILocalVariable(name: "ptr", arg: 1, scope: !4908, file: !310, line: 27, type: !16)
!4910 = !DILocation(line: 27, column: 21, scope: !4908)
!4911 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4908, file: !310, line: 27, type: !125)
!4912 = !DILocation(line: 27, column: 33, scope: !4908)
!4913 = !DILocalVariable(name: "size", arg: 3, scope: !4908, file: !310, line: 27, type: !125)
!4914 = !DILocation(line: 27, column: 47, scope: !4908)
!4915 = !DILocalVariable(name: "nbytes", scope: !4908, file: !310, line: 29, type: !125)
!4916 = !DILocation(line: 29, column: 10, scope: !4908)
!4917 = !DILocation(line: 30, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4908, file: !310, line: 30, column: 7)
!4919 = !DILocation(line: 30, column: 7, scope: !4908)
!4920 = !DILocation(line: 32, column: 7, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !310, line: 31, column: 5)
!4922 = !DILocation(line: 32, column: 13, scope: !4921)
!4923 = !DILocation(line: 33, column: 7, scope: !4921)
!4924 = !DILocation(line: 37, column: 19, scope: !4908)
!4925 = !DILocation(line: 37, column: 24, scope: !4908)
!4926 = !DILocation(line: 37, column: 10, scope: !4908)
!4927 = !DILocation(line: 37, column: 3, scope: !4908)
!4928 = !DILocation(line: 38, column: 1, scope: !4908)
!4929 = distinct !DISubprogram(name: "hard_locale", scope: !313, file: !313, line: 28, type: !4930, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !39)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!7, !23}
!4932 = !DILocalVariable(name: "category", arg: 1, scope: !4929, file: !313, line: 28, type: !23)
!4933 = !DILocation(line: 28, column: 18, scope: !4929)
!4934 = !DILocalVariable(name: "locale", scope: !4929, file: !313, line: 30, type: !4935)
!4935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2056, elements: !4936)
!4936 = !{!4937}
!4937 = !DISubrange(count: 257)
!4938 = !DILocation(line: 30, column: 8, scope: !4929)
!4939 = !DILocation(line: 32, column: 25, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4929, file: !313, line: 32, column: 7)
!4941 = !DILocation(line: 32, column: 35, scope: !4940)
!4942 = !DILocation(line: 32, column: 7, scope: !4940)
!4943 = !DILocation(line: 32, column: 7, scope: !4929)
!4944 = !DILocation(line: 33, column: 5, scope: !4940)
!4945 = !DILocation(line: 35, column: 16, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4929, file: !313, line: 35, column: 7)
!4947 = !DILocation(line: 35, column: 9, scope: !4946)
!4948 = !DILocation(line: 35, column: 29, scope: !4946)
!4949 = !DILocation(line: 35, column: 39, scope: !4946)
!4950 = !DILocation(line: 35, column: 32, scope: !4946)
!4951 = !DILocation(line: 35, column: 7, scope: !4929)
!4952 = !DILocation(line: 36, column: 5, scope: !4946)
!4953 = !DILocation(line: 46, column: 3, scope: !4929)
!4954 = !DILocation(line: 47, column: 1, scope: !4929)
!4955 = distinct !DISubprogram(name: "setlocale_null_r", scope: !315, file: !315, line: 154, type: !4956, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !39)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!23, !23, !71, !125}
!4958 = !DILocalVariable(name: "category", arg: 1, scope: !4955, file: !315, line: 154, type: !23)
!4959 = !DILocation(line: 154, column: 23, scope: !4955)
!4960 = !DILocalVariable(name: "buf", arg: 2, scope: !4955, file: !315, line: 154, type: !71)
!4961 = !DILocation(line: 154, column: 39, scope: !4955)
!4962 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4955, file: !315, line: 154, type: !125)
!4963 = !DILocation(line: 154, column: 51, scope: !4955)
!4964 = !DILocation(line: 159, column: 37, scope: !4955)
!4965 = !DILocation(line: 159, column: 47, scope: !4955)
!4966 = !DILocation(line: 159, column: 52, scope: !4955)
!4967 = !DILocation(line: 159, column: 10, scope: !4955)
!4968 = !DILocation(line: 159, column: 3, scope: !4955)
!4969 = distinct !DISubprogram(name: "setlocale_null", scope: !315, file: !315, line: 186, type: !4970, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !39)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!8, !23}
!4972 = !DILocalVariable(name: "category", arg: 1, scope: !4969, file: !315, line: 186, type: !23)
!4973 = !DILocation(line: 186, column: 21, scope: !4969)
!4974 = !DILocation(line: 189, column: 35, scope: !4969)
!4975 = !DILocation(line: 189, column: 10, scope: !4969)
!4976 = !DILocation(line: 189, column: 3, scope: !4969)
!4977 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !317, file: !317, line: 35, type: !4970, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !39)
!4978 = !DILocalVariable(name: "category", arg: 1, scope: !4977, file: !317, line: 35, type: !23)
!4979 = !DILocation(line: 35, column: 30, scope: !4977)
!4980 = !DILocalVariable(name: "result", scope: !4977, file: !317, line: 37, type: !8)
!4981 = !DILocation(line: 37, column: 15, scope: !4977)
!4982 = !DILocation(line: 37, column: 35, scope: !4977)
!4983 = !DILocation(line: 37, column: 24, scope: !4977)
!4984 = !DILocation(line: 62, column: 10, scope: !4977)
!4985 = !DILocation(line: 62, column: 3, scope: !4977)
!4986 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !317, file: !317, line: 66, type: !4956, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !39)
!4987 = !DILocalVariable(name: "category", arg: 1, scope: !4986, file: !317, line: 66, type: !23)
!4988 = !DILocation(line: 66, column: 32, scope: !4986)
!4989 = !DILocalVariable(name: "buf", arg: 2, scope: !4986, file: !317, line: 66, type: !71)
!4990 = !DILocation(line: 66, column: 48, scope: !4986)
!4991 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4986, file: !317, line: 66, type: !125)
!4992 = !DILocation(line: 66, column: 60, scope: !4986)
!4993 = !DILocalVariable(name: "result", scope: !4986, file: !317, line: 111, type: !8)
!4994 = !DILocation(line: 111, column: 15, scope: !4986)
!4995 = !DILocation(line: 111, column: 49, scope: !4986)
!4996 = !DILocation(line: 111, column: 24, scope: !4986)
!4997 = !DILocation(line: 113, column: 7, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4986, file: !317, line: 113, column: 7)
!4999 = !DILocation(line: 113, column: 14, scope: !4998)
!5000 = !DILocation(line: 113, column: 7, scope: !4986)
!5001 = !DILocation(line: 116, column: 11, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5003, file: !317, line: 116, column: 11)
!5003 = distinct !DILexicalBlock(scope: !4998, file: !317, line: 114, column: 5)
!5004 = !DILocation(line: 116, column: 19, scope: !5002)
!5005 = !DILocation(line: 116, column: 11, scope: !5003)
!5006 = !DILocation(line: 120, column: 9, scope: !5002)
!5007 = !DILocation(line: 120, column: 16, scope: !5002)
!5008 = !DILocation(line: 121, column: 7, scope: !5003)
!5009 = !DILocalVariable(name: "length", scope: !5010, file: !317, line: 125, type: !125)
!5010 = distinct !DILexicalBlock(scope: !4998, file: !317, line: 124, column: 5)
!5011 = !DILocation(line: 125, column: 14, scope: !5010)
!5012 = !DILocation(line: 125, column: 31, scope: !5010)
!5013 = !DILocation(line: 125, column: 23, scope: !5010)
!5014 = !DILocation(line: 126, column: 11, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5010, file: !317, line: 126, column: 11)
!5016 = !DILocation(line: 126, column: 20, scope: !5015)
!5017 = !DILocation(line: 126, column: 18, scope: !5015)
!5018 = !DILocation(line: 126, column: 11, scope: !5010)
!5019 = !DILocation(line: 128, column: 19, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5015, file: !317, line: 127, column: 9)
!5021 = !DILocation(line: 128, column: 24, scope: !5020)
!5022 = !DILocation(line: 128, column: 32, scope: !5020)
!5023 = !DILocation(line: 128, column: 39, scope: !5020)
!5024 = !DILocation(line: 128, column: 11, scope: !5020)
!5025 = !DILocation(line: 129, column: 11, scope: !5020)
!5026 = !DILocation(line: 133, column: 15, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !317, line: 133, column: 15)
!5028 = distinct !DILexicalBlock(scope: !5015, file: !317, line: 132, column: 9)
!5029 = !DILocation(line: 133, column: 23, scope: !5027)
!5030 = !DILocation(line: 133, column: 15, scope: !5028)
!5031 = !DILocation(line: 138, column: 23, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5027, file: !317, line: 134, column: 13)
!5033 = !DILocation(line: 138, column: 28, scope: !5032)
!5034 = !DILocation(line: 138, column: 36, scope: !5032)
!5035 = !DILocation(line: 138, column: 44, scope: !5032)
!5036 = !DILocation(line: 138, column: 15, scope: !5032)
!5037 = !DILocation(line: 139, column: 15, scope: !5032)
!5038 = !DILocation(line: 139, column: 19, scope: !5032)
!5039 = !DILocation(line: 139, column: 27, scope: !5032)
!5040 = !DILocation(line: 139, column: 32, scope: !5032)
!5041 = !DILocation(line: 140, column: 13, scope: !5032)
!5042 = !DILocation(line: 141, column: 11, scope: !5028)
!5043 = !DILocation(line: 145, column: 1, scope: !4986)
