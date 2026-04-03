; ModuleID = 'src/readlink.stripped.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.realpath_bufs = type { %struct.scratch_buffer, %struct.scratch_buffer, %struct.scratch_buffer }
%struct.scratch_buffer = type { i8*, i64, %union.anon }
%union.anon = type { %struct.max_align_t, [992 x i8] }
%struct.max_align_t = type { i64, fp128 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.F_triple = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Print value of a symbolic link or canonical file name\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.4 = private unnamed_addr constant [177 x i8] c"  -f, --canonicalize\0A         canonicalize by following every symlink\0A         in every component of the given name recursively;\0A         all but the last component must exist\0A\00", align 1
@.str.5 = private unnamed_addr constant [174 x i8] c"  -e, --canonicalize-existing\0A         canonicalize by following every symlink\0A         in every component of the given name recursively;\0A         all components must exist\0A\00", align 1
@.str.6 = private unnamed_addr constant [192 x i8] c"  -m, --canonicalize-missing\0A         canonicalize by following every symlink\0A         in every component of the given name recursively,\0A         without requirements on components existence\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"  -n, --no-newline\0A         do not output the trailing delimiter\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"  -q, --quiet\0A\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"  -s, --silent\0A         suppress most error messages\0A         (on by default if POSIXLY_CORRECT is not set)\0A\00", align 1
@.str.10 = private unnamed_addr constant [99 x i8] c"  -v, --verbose\0A         report error messages\0A         (on by default if POSIXLY_CORRECT is set)\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"efmnqsvz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@no_newline = internal unnamed_addr global i1 false, align 1
@verbose = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Dmitry V. Levin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"ignoring --no-newline with multiple arguments\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.54 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.55 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"canonicalize\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"canonicalize-existing\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"canonicalize-missing\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"no-newline\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), align 8
@.str.34 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.71 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.72 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.74 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.80 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.82 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.76 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.77 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.98 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.99 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.100 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.123 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.124 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.129 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.130 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.131 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.132 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.133 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.134 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.135 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.136 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.129, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.130, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.131, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.132, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.133, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.136, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.139 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.137 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.140 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.138 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.146 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.147 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.148 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.149 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.150 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.151 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.152 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.153 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.154 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.155 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.156 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.157 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.158 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.159 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.160 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.161 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.166 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.167 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.168 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.169 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.170 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.171 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.172 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.189 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.187 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.188 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.200 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.205 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.206 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #37
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #37
  br label %60

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #37
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #37
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #37
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([177 x i8], [177 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %16)
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([174 x i8], [174 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %17)
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %18)
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %19)
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %20)
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %21)
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %22)
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %23)
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %24)
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #37
  tail call fastcc void @oputs_(i8* noundef %25)
  %26 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %26) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %26, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #37
  %27 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %28

28:                                               ; preds = %33, %9
  %29 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %9 ]
  %30 = phi %struct.infomap* [ %34, %33 ], [ %27, %9 ]
  %31 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %29) #38
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 1
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !16
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %28, !llvm.loop !18

38:                                               ; preds = %33, %28
  %39 = phi %struct.infomap* [ %30, %28 ], [ %34, %33 ]
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 1
  %41 = load i8*, i8** %40, align 8, !tbaa !20
  %42 = icmp eq i8* %41, null
  %43 = select i1 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %41
  tail call void @emit_bug_reporting_address() #37
  %44 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #37
  %45 = icmp eq i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = tail call i32 @strncmp(i8* noundef nonnull %44, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i64 noundef 3) #38
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #37
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %52 = tail call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51) #37
  br label %53

53:                                               ; preds = %38, %46, %49
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #37
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #37
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #37
  %57 = icmp eq i8* %43, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef %43, i8* noundef %58) #37
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %26) #37
  br label %60

60:                                               ; preds = %53, %4
  tail call void @exit(i32 noundef %0) #39
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

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 {
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !tbaa !21
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #37
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #38
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !tbaa !21
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20)
  br label %121

22:                                               ; preds = %16
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #38
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38
  %26 = icmp eq i8* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8* %24, %25
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #40
  %33 = load i16*, i16** %32, align 8, !tbaa !12
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  %37 = getelementptr inbounds i8, i8* %35, i64 1
  %38 = load i8, i8* %35, align 1, !tbaa !23
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39
  %41 = load i16, i16* %40, align 2, !tbaa !24
  %42 = lshr i16 %41, 13
  %43 = and i16 %42, 1
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44
  %46 = icmp ult i8* %37, %25
  %47 = icmp ult i64 %45, 2
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %34, label %49, !llvm.loop !26

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2
  %51 = select i1 %50, i8* %24, i8* %25
  %52 = xor i1 %50, true
  br label %53

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ]
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #38
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  br label %58

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ]
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  %61 = load i8, i8* %59, align 1, !tbaa !23
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1
  %64 = load i8, i8* %63, align 1, !tbaa !23
  %65 = icmp ne i8 %64, 45
  %66 = select i1 %65, i1 %60, i1 false
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  %69 = tail call i16** @__ctype_b_loc() #40
  %70 = load i16*, i16** %69, align 8, !tbaa !12
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71
  %73 = load i16, i16* %72, align 2, !tbaa !24
  %74 = and i16 %73, 8192
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9
  br i1 %77, label %91, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1
  %80 = load i8, i8* %79, align 1, !tbaa !23
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81
  %83 = load i16, i16* %82, align 2, !tbaa !24
  %84 = and i16 %83, 8192
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1
  br label %58, !llvm.loop !27

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93)
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 noundef 6) #38
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i64 noundef 9) #38
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #37
  br label %106

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #37
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %109)
  %111 = ptrtoint i8* %59 to i64
  %112 = sub i64 %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119)
  br label %121

121:                                              ; preds = %106, %19
  ret void
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
declare i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 {
  %3 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %3) #37
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #37
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #37
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #37
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #37
  br label %8

8:                                                ; preds = %13, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %13 ]
  %10 = phi i32 [ -1, %2 ], [ %12, %13 ]
  br label %11

11:                                               ; preds = %17, %8
  %12 = phi i32 [ %10, %8 ], [ %18, %17 ]
  br label %13

13:                                               ; preds = %22, %11
  %14 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #37
  switch i32 %14, label %28 [
    i32 -1, label %29
    i32 101, label %17
    i32 102, label %15
    i32 109, label %16
    i32 110, label %19
    i32 113, label %20
    i32 115, label %20
    i32 118, label %21
    i32 122, label %8
    i32 -2, label %23
    i32 -3, label %24
  ], !llvm.loop !28

15:                                               ; preds = %13
  br label %17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %13, %16, %15
  %18 = phi i32 [ 1, %15 ], [ 2, %16 ], [ 0, %13 ]
  br label %11, !llvm.loop !28

19:                                               ; preds = %13
  store i1 true, i1* @no_newline, align 1
  br label %22

20:                                               ; preds = %13, %13
  store i1 false, i1* @verbose, align 1
  br label %22

21:                                               ; preds = %13
  store i1 true, i1* @verbose, align 1
  br label %22

22:                                               ; preds = %21, %20, %19
  br label %13, !llvm.loop !28

23:                                               ; preds = %13
  tail call void @usage(i32 noundef 0) #41
  unreachable

24:                                               ; preds = %13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %26 = load i8*, i8** @Version, align 8, !tbaa !12
  %27 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #37
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %26, i8* noundef %27, i8* noundef null) #37
  tail call void @exit(i32 noundef 0) #39
  unreachable

28:                                               ; preds = %13
  tail call void @usage(i32 noundef 1) #41
  unreachable

29:                                               ; preds = %13
  %30 = load i32, i32* @optind, align 4, !tbaa !21
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %33) #37
  tail call void @usage(i32 noundef 1) #41
  unreachable

34:                                               ; preds = %29
  %35 = sub nsw i32 %0, %30
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i1, i1* @no_newline, align 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %40) #37
  br label %41

41:                                               ; preds = %39, %37
  store i1 false, i1* @no_newline, align 1
  br label %42

42:                                               ; preds = %41, %34
  %43 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #37
  %44 = icmp eq i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i1 true, i1* @verbose, align 1
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* @optind, align 4, !tbaa !21
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %49, label %141

49:                                               ; preds = %46
  %50 = icmp eq i32 %12, -1
  %51 = trunc i32 %9 to i8
  br i1 %50, label %52, label %92

52:                                               ; preds = %49, %87
  %53 = phi i32 [ %90, %87 ], [ %47, %49 ]
  %54 = phi i32 [ %88, %87 ], [ 0, %49 ]
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i8* @areadlink_with_size(i8* noundef %57, i64 noundef 63) #37
  %59 = icmp eq i8* %58, null
  br i1 %59, label %81, label %60

60:                                               ; preds = %52
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %62 = tail call i32 @fputs_unlocked(i8* noundef nonnull %58, %struct._IO_FILE* noundef %61)
  %63 = load i1, i1* @no_newline, align 1
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 5
  %67 = load i8*, i8** %66, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 6
  %69 = load i8*, i8** %68, align 8, !tbaa !32
  %70 = icmp ult i8* %67, %69
  br i1 %70, label %73, label %71, !prof !33

71:                                               ; preds = %64
  %72 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %65, i32 noundef %9) #37
  br label %75

73:                                               ; preds = %64
  %74 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %74, i8** %66, align 8, !tbaa !29
  store i8 %51, i8* %67, align 1, !tbaa !23
  br label %75

75:                                               ; preds = %73, %71, %60
  tail call void @free(i8* noundef nonnull %58) #37
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %76, i64 0, i32 0
  %78 = load i32, i32* %77, align 8, !tbaa !34
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %121

81:                                               ; preds = %52
  %82 = load i1, i1* @verbose, align 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = tail call i32* @__errno_location() #40
  %85 = load i32, i32* %84, align 4, !tbaa !21
  %86 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %57) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %85, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef %86) #37
  br label %87

87:                                               ; preds = %83, %81, %75
  %88 = phi i32 [ %54, %75 ], [ 1, %83 ], [ 1, %81 ]
  %89 = load i32, i32* @optind, align 4, !tbaa !21
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @optind, align 4, !tbaa !21
  %91 = icmp slt i32 %90, %0
  br i1 %91, label %52, label %141, !llvm.loop !35

92:                                               ; preds = %49, %136
  %93 = phi i32 [ %139, %136 ], [ %47, %49 ]
  %94 = phi i32 [ %137, %136 ], [ 0, %49 ]
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95
  %97 = load i8*, i8** %96, align 8, !tbaa !12
  %98 = tail call noalias i8* @canonicalize_filename_mode(i8* noundef %97, i32 noundef %12) #37
  %99 = icmp eq i8* %98, null
  br i1 %99, label %130, label %100

100:                                              ; preds = %92
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %102 = tail call i32 @fputs_unlocked(i8* noundef nonnull %98, %struct._IO_FILE* noundef %101)
  %103 = load i1, i1* @no_newline, align 1
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5
  %107 = load i8*, i8** %106, align 8, !tbaa !29
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6
  %109 = load i8*, i8** %108, align 8, !tbaa !32
  %110 = icmp ult i8* %107, %109
  br i1 %110, label %113, label %111, !prof !33

111:                                              ; preds = %104
  %112 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %105, i32 noundef %9) #37
  br label %115

113:                                              ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %114, i8** %106, align 8, !tbaa !29
  store i8 %51, i8* %107, align 1, !tbaa !23
  br label %115

115:                                              ; preds = %113, %111, %100
  tail call void @free(i8* noundef nonnull %98) #37
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 0
  %118 = load i32, i32* %117, align 8, !tbaa !34
  %119 = and i32 %118, 32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %115, %75
  %122 = phi %struct._IO_FILE* [ %76, %75 ], [ %116, %115 ]
  %123 = tail call i32* @__errno_location() #40
  %124 = load i32, i32* %123, align 4, !tbaa !21
  %125 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %122) #37
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %127 = tail call i32 @fpurge(%struct._IO_FILE* noundef %126) #37
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %128) #37
  %129 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i32 noundef 5) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %124, i8* noundef %129) #37
  unreachable

130:                                              ; preds = %92
  %131 = load i1, i1* @verbose, align 1
  br i1 %131, label %132, label %136

132:                                              ; preds = %130
  %133 = tail call i32* @__errno_location() #40
  %134 = load i32, i32* %133, align 4, !tbaa !21
  %135 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %97) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %134, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef %135) #37
  br label %136

136:                                              ; preds = %130, %132, %115
  %137 = phi i32 [ %94, %115 ], [ 1, %132 ], [ 1, %130 ]
  %138 = load i32, i32* @optind, align 4, !tbaa !21
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @optind, align 4, !tbaa !21
  %140 = icmp slt i32 %139, %0
  br i1 %140, label %92, label %141, !llvm.loop !35

141:                                              ; preds = %136, %87, %46
  %142 = phi i32 [ 0, %46 ], [ %88, %87 ], [ %137, %136 ]
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @areadlink_with_size(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca [128 x i8], align 1
  %4 = icmp eq i64 %1, 0
  %5 = icmp ult i64 %1, 1025
  %6 = add i64 %1, 1
  %7 = select i1 %5, i64 %6, i64 1025
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  br i1 %4, label %31, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #37
  %10 = tail call noalias i8* @malloc(i64 noundef %7) #37
  %11 = icmp eq i8* %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %9, %27
  %13 = phi i8* [ %29, %27 ], [ %10, %9 ]
  %14 = phi i64 [ %28, %27 ], [ %7, %9 ]
  %15 = call i64 @readlink(i8* noundef %0, i8* noundef nonnull %13, i64 noundef %14) #37
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = icmp ult i64 %15, %14
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 0, i8* %20, align 1, !tbaa !23
  br label %56

21:                                               ; preds = %17
  tail call void @free(i8* noundef nonnull %13) #37
  %22 = icmp ult i64 %14, 4611686018427387904
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %14, 9223372036854775807
  br i1 %24, label %27, label %72

25:                                               ; preds = %21
  %26 = shl nuw nsw i64 %14, 1
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %26, %25 ], [ 9223372036854775807, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #37
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #37
  %29 = tail call noalias i8* @malloc(i64 noundef %28) #37
  %30 = icmp eq i8* %29, null
  br i1 %30, label %37, label %12

31:                                               ; preds = %2, %74
  %32 = phi i64 [ %75, %74 ], [ 128, %2 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #37
  %33 = icmp eq i64 %32, 128
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call noalias i8* @malloc(i64 noundef %32) #37
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %27, %34, %9
  %38 = tail call i32* @__errno_location() #40
  store i32 12, i32* %38, align 4, !tbaa !21
  br label %76

39:                                               ; preds = %34, %31
  %40 = phi i8* [ null, %31 ], [ %35, %34 ]
  %41 = phi i8* [ %8, %31 ], [ %35, %34 ]
  %42 = call i64 @readlink(i8* noundef %0, i8* noundef nonnull %41, i64 noundef %32) #37
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %12, %39
  %45 = phi i8* [ %40, %39 ], [ %13, %12 ]
  tail call void @free(i8* noundef %45) #37
  br label %76

46:                                               ; preds = %39
  %47 = icmp ult i64 %42, %32
  br i1 %47, label %48, label %66

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %49, align 1, !tbaa !23
  %50 = icmp eq i8* %40, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = add nuw i64 %42, 1
  %53 = tail call noalias i8* @malloc(i64 noundef %52) #37
  %54 = icmp eq i8* %53, null
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %53, i8* noundef nonnull align 1 %41, i64 noundef %52, i1 noundef false) #37
  br label %76

56:                                               ; preds = %19, %48
  %57 = phi i64 [ %14, %19 ], [ %32, %48 ]
  %58 = phi i64 [ %15, %19 ], [ %42, %48 ]
  %59 = phi i8* [ %13, %19 ], [ %40, %48 ]
  %60 = add nuw i64 %58, 1
  %61 = icmp ult i64 %60, %57
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = tail call i8* @realloc(i8* noundef nonnull %59, i64 noundef %60) #37
  %64 = icmp eq i8* %63, null
  %65 = select i1 %64, i8* %59, i8* %63
  br label %76

66:                                               ; preds = %46
  tail call void @free(i8* noundef %40) #37
  %67 = icmp ult i64 %32, 4611686018427387904
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = shl nuw nsw i64 %32, 1
  br label %74

70:                                               ; preds = %66
  %71 = icmp ult i64 %32, 9223372036854775807
  br i1 %71, label %74, label %72

72:                                               ; preds = %23, %70
  %73 = tail call i32* @__errno_location() #40
  store i32 12, i32* %73, align 4, !tbaa !21
  br label %76

74:                                               ; preds = %68, %70
  %75 = phi i64 [ %69, %68 ], [ 9223372036854775807, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #37
  br label %31

76:                                               ; preds = %37, %44, %55, %72, %56, %62, %51
  %77 = phi i8* [ null, %51 ], [ %59, %56 ], [ %65, %62 ], [ null, %72 ], [ %53, %55 ], [ null, %44 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %8) #37
  ret i8* %77
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @canonicalize_filename_mode(i8* noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.realpath_bufs, align 16
  %5 = bitcast %struct.realpath_bufs* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3120, i8* nonnull %5) #37
  %6 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 0
  %7 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 0, i32 2
  %8 = bitcast %struct.realpath_bufs* %4 to %union.anon**
  store %union.anon* %7, %union.anon** %8, align 16, !tbaa !36
  %9 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 0, i32 1
  store i64 1024, i64* %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 1, i32 2
  %12 = bitcast %struct.scratch_buffer* %10 to %union.anon**
  store %union.anon* %11, %union.anon** %12, align 16, !tbaa !36
  %13 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 1, i32 1
  store i64 1024, i64* %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 2
  %15 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 2, i32 2
  %16 = bitcast %struct.scratch_buffer* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 16, !tbaa !36
  %17 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 2, i32 1
  store i64 1024, i64* %17, align 8, !tbaa !38
  %18 = and i32 %1, 3
  %19 = call i32 @llvm.ctpop.i32(i32 %18) #37, !range !39
  %20 = icmp ugt i32 %19, 1
  %21 = bitcast %union.anon* %7 to i8*
  br i1 %20, label %22, label %24

22:                                               ; preds = %2
  %23 = tail call i32* @__errno_location() #40
  store i32 22, i32* %23, align 4, !tbaa !21
  br label %316

24:                                               ; preds = %2
  %25 = icmp eq i8* %0, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call i32* @__errno_location() #40
  store i32 22, i32* %27, align 4, !tbaa !21
  br label %316

28:                                               ; preds = %24
  %29 = load i8, i8* %0, align 1, !tbaa !23
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32* @__errno_location() #40
  store i32 2, i32* %32, align 4, !tbaa !21
  br label %316

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 0, i32 0
  %35 = icmp eq i8 %29, 47
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = call i8* @getcwd(i8* noundef nonnull %21, i64 noundef 1024) #37
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = tail call i32* @__errno_location() #40
  br label %41

41:                                               ; preds = %46, %39
  %42 = load i32, i32* %40, align 4, !tbaa !21
  switch i32 %42, label %316 [
    i32 34, label %43
    i32 12, label %45
  ]

43:                                               ; preds = %41
  %44 = call i1 @gl_scratch_buffer_grow(%struct.scratch_buffer* noundef nonnull %6) #37
  br i1 %44, label %46, label %45

45:                                               ; preds = %43, %41
  call void @xalloc_die() #39
  unreachable

46:                                               ; preds = %43
  %47 = load i8*, i8** %34, align 16, !tbaa !40
  %48 = load i64, i64* %9, align 8, !tbaa !42
  %49 = call i8* @getcwd(i8* noundef %47, i64 noundef %48) #37
  %50 = icmp eq i8* %49, null
  br i1 %50, label %41, label %51, !llvm.loop !43

51:                                               ; preds = %46, %36
  %52 = phi i8* [ %21, %36 ], [ %47, %46 ]
  %53 = call i8* @rawmemchr(i8* noundef %52, i32 noundef 0) #38
  br label %56

54:                                               ; preds = %33
  %55 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 47, i8* %21, align 16, !tbaa !23
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i8* [ %55, %54 ], [ %53, %51 ]
  %58 = phi i8* [ %21, %54 ], [ %52, %51 ]
  %59 = and i32 %1, 4
  %60 = icmp eq i32 %59, 0
  %61 = load i8, i8* %0, align 1, !tbaa !23
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %288, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %14, i64 0, i32 0
  %65 = icmp eq i32 %18, 2
  %66 = icmp eq i32 %18, 1
  %67 = bitcast %struct.stat* %3 to i8*
  %68 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %10, i64 0, i32 0
  br label %69

69:                                               ; preds = %278, %63
  %70 = phi i8 [ %61, %63 ], [ %286, %278 ]
  %71 = phi i64 [ undef, %63 ], [ %285, %278 ]
  %72 = phi i8* [ %58, %63 ], [ %284, %278 ]
  %73 = phi i8* [ %57, %63 ], [ %283, %278 ]
  %74 = phi i1 [ false, %63 ], [ %282, %278 ]
  %75 = phi i32 [ 0, %63 ], [ %281, %278 ]
  %76 = phi i8* [ %0, %63 ], [ %280, %278 ]
  %77 = phi %struct.hash_table* [ null, %63 ], [ %279, %278 ]
  %78 = icmp eq i8 %70, 47
  br i1 %78, label %82, label %79

79:                                               ; preds = %82, %69
  %80 = phi i8 [ %70, %69 ], [ %85, %82 ]
  %81 = phi i8* [ %76, %69 ], [ %84, %82 ]
  br label %87

82:                                               ; preds = %69, %82
  %83 = phi i8* [ %84, %82 ], [ %76, %69 ]
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1, !tbaa !23
  %86 = icmp eq i8 %85, 47
  br i1 %86, label %82, label %79, !llvm.loop !44

87:                                               ; preds = %90, %79
  %88 = phi i8 [ %92, %90 ], [ %80, %79 ]
  %89 = phi i8* [ %91, %90 ], [ %81, %79 ]
  switch i8 %88, label %90 [
    i8 0, label %93
    i8 47, label %93
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, i8* %89, i64 1
  %92 = load i8, i8* %91, align 1, !tbaa !23
  br label %87, !llvm.loop !45

93:                                               ; preds = %87, %87
  %94 = ptrtoint i8* %89 to i64
  %95 = ptrtoint i8* %81 to i64
  %96 = sub i64 %94, %95
  switch i64 %96, label %116 [
    i64 0, label %288
    i64 1, label %97
    i64 2, label %99
  ]

97:                                               ; preds = %93
  %98 = icmp eq i8 %80, 46
  br i1 %98, label %278, label %116

99:                                               ; preds = %93
  %100 = icmp eq i8 %80, 46
  br i1 %100, label %101, label %116

101:                                              ; preds = %99
  %102 = getelementptr inbounds i8, i8* %81, i64 1
  %103 = load i8, i8* %102, align 1, !tbaa !23
  %104 = icmp eq i8 %103, 46
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, i8* %72, i64 1
  %107 = icmp ugt i8* %73, %106
  br i1 %107, label %108, label %278

108:                                              ; preds = %105, %112
  %109 = phi i8* [ %110, %112 ], [ %73, %105 ]
  %110 = getelementptr inbounds i8, i8* %109, i64 -1
  %111 = icmp ugt i8* %110, %72
  br i1 %111, label %112, label %278

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, i8* %109, i64 -2
  %114 = load i8, i8* %113, align 1, !tbaa !23
  %115 = icmp eq i8 %114, 47
  br i1 %115, label %278, label %108, !llvm.loop !46

116:                                              ; preds = %101, %99, %97, %93
  %117 = getelementptr inbounds i8, i8* %73, i64 -1
  %118 = load i8, i8* %117, align 1, !tbaa !23
  %119 = icmp eq i8 %118, 47
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 47, i8* %73, align 1, !tbaa !23
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i8* [ %73, %116 ], [ %121, %120 ]
  %124 = add i64 %96, 2
  %125 = load i64, i64* %9, align 8, !tbaa !42
  %126 = getelementptr inbounds i8, i8* %72, i64 %125
  %127 = ptrtoint i8* %126 to i64
  %128 = ptrtoint i8* %123 to i64
  %129 = sub i64 %127, %128
  %130 = icmp ult i64 %129, %124
  br i1 %130, label %131, label %147

131:                                              ; preds = %122, %136
  %132 = phi i64 [ %144, %136 ], [ %128, %122 ]
  %133 = phi i8* [ %139, %136 ], [ %72, %122 ]
  %134 = call i1 @gl_scratch_buffer_grow_preserve(%struct.scratch_buffer* noundef nonnull %6) #37
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @xalloc_die() #39
  unreachable

136:                                              ; preds = %131
  %137 = ptrtoint i8* %133 to i64
  %138 = sub i64 %132, %137
  %139 = load i8*, i8** %34, align 16, !tbaa !40
  %140 = getelementptr inbounds i8, i8* %139, i64 %138
  %141 = load i64, i64* %9, align 8, !tbaa !42
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = ptrtoint i8* %142 to i64
  %144 = ptrtoint i8* %140 to i64
  %145 = sub i64 %143, %144
  %146 = icmp ult i64 %145, %124
  br i1 %146, label %131, label %147, !llvm.loop !47

147:                                              ; preds = %136, %122
  %148 = phi i8* [ %123, %122 ], [ %140, %136 ]
  %149 = phi i8* [ %72, %122 ], [ %139, %136 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %148, i8* noundef nonnull align 1 %81, i64 noundef %96, i1 noundef false) #37
  %150 = getelementptr inbounds i8, i8* %148, i64 %96
  store i8 0, i8* %150, align 1, !tbaa !23
  br i1 %60, label %151, label %233

151:                                              ; preds = %147, %157
  %152 = load i8*, i8** %64, align 16, !tbaa !48
  %153 = load i64, i64* %17, align 8, !tbaa !49
  %154 = add nsw i64 %153, -1
  %155 = call i64 @readlink(i8* noundef %149, i8* noundef %152, i64 noundef %154) #37
  %156 = icmp slt i64 %155, %154
  br i1 %156, label %160, label %157

157:                                              ; preds = %151
  %158 = call i1 @gl_scratch_buffer_grow(%struct.scratch_buffer* noundef nonnull %14) #37
  br i1 %158, label %151, label %159

159:                                              ; preds = %157
  call void @xalloc_die() #39
  unreachable

160:                                              ; preds = %151
  %161 = icmp sgt i64 %155, -1
  br i1 %161, label %162, label %233

162:                                              ; preds = %160
  %163 = icmp slt i32 %75, 20
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = add nsw i32 %75, 1
  br label %189

166:                                              ; preds = %162
  %167 = load i8, i8* %81, align 1, !tbaa !23
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %67) #37
  store i8 0, i8* %148, align 1, !tbaa !23
  %170 = load i8, i8* %149, align 1, !tbaa !23
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %149
  %173 = call i32 @stat(i8* noundef %172, %struct.stat* noundef nonnull %3) #37
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %275

175:                                              ; preds = %169
  %176 = load i8, i8* %81, align 1, !tbaa !23
  store i8 %176, i8* %148, align 1, !tbaa !23
  %177 = icmp eq %struct.hash_table* %77, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = call noalias %struct.hash_table* @hash_initialize(i64 noundef 7, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @triple_hash, i1 (i8*, i8*)* noundef nonnull @triple_compare_ino_str, void (i8*)* noundef nonnull @triple_free) #37
  %180 = icmp eq %struct.hash_table* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  call void @xalloc_die() #39
  unreachable

182:                                              ; preds = %178, %175
  %183 = phi %struct.hash_table* [ %179, %178 ], [ %77, %175 ]
  %184 = call i1 @seen_file(%struct.hash_table* noundef nonnull %183, i8* noundef nonnull %81, %struct.stat* noundef nonnull %3) #37
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  br i1 %65, label %277, label %186

186:                                              ; preds = %185
  %187 = tail call i32* @__errno_location() #40
  store i32 40, i32* %187, align 4, !tbaa !21
  br label %275

188:                                              ; preds = %182
  call void @record_file(%struct.hash_table* noundef nonnull %183, i8* noundef nonnull %81, %struct.stat* noundef nonnull %3) #37
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %67) #37
  br label %189

189:                                              ; preds = %188, %166, %164
  %190 = phi %struct.hash_table* [ %77, %164 ], [ %77, %166 ], [ %183, %188 ]
  %191 = phi i32 [ %165, %164 ], [ %75, %166 ], [ %75, %188 ]
  %192 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %192, align 1, !tbaa !23
  %193 = load i8*, i8** %68, align 16, !tbaa !50
  %194 = ptrtoint i8* %193 to i64
  %195 = sub i64 %94, %194
  %196 = select i1 %74, i64 %195, i64 %71
  %197 = call i64 @strlen(i8* noundef nonnull %89) #38
  %198 = xor i64 %155, -1
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %189
  %201 = add i64 %197, %155
  %202 = load i64, i64* %13, align 8, !tbaa !51
  %203 = icmp ugt i64 %202, %201
  br i1 %203, label %213, label %205

204:                                              ; preds = %189
  call void @xalloc_die() #39
  unreachable

205:                                              ; preds = %200, %208
  %206 = call i1 @gl_scratch_buffer_grow_preserve(%struct.scratch_buffer* noundef nonnull %10) #37
  br i1 %206, label %208, label %207

207:                                              ; preds = %205
  call void @xalloc_die() #39
  unreachable

208:                                              ; preds = %205
  %209 = load i64, i64* %13, align 8, !tbaa !51
  %210 = icmp ugt i64 %209, %201
  br i1 %210, label %211, label %205, !llvm.loop !52

211:                                              ; preds = %208
  %212 = load i8*, i8** %68, align 16, !tbaa !50
  br label %213

213:                                              ; preds = %211, %200
  %214 = phi i8* [ %193, %200 ], [ %212, %211 ]
  %215 = getelementptr inbounds i8, i8* %214, i64 %196
  %216 = select i1 %74, i8* %215, i8* %89
  %217 = getelementptr inbounds i8, i8* %214, i64 %155
  %218 = add i64 %197, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %217, i8* noundef nonnull align 1 %216, i64 noundef %218, i1 noundef false) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %214, i8* noundef nonnull align 1 %152, i64 noundef %155, i1 noundef false) #37
  %219 = load i8, i8* %152, align 1, !tbaa !23
  %220 = icmp eq i8 %219, 47
  %221 = getelementptr inbounds i8, i8* %149, i64 1
  br i1 %220, label %222, label %223

222:                                              ; preds = %213
  store i8 47, i8* %149, align 1, !tbaa !23
  br label %278

223:                                              ; preds = %213
  %224 = icmp ugt i8* %150, %221
  br i1 %224, label %225, label %278

225:                                              ; preds = %223, %229
  %226 = phi i8* [ %227, %229 ], [ %150, %223 ]
  %227 = getelementptr inbounds i8, i8* %226, i64 -1
  %228 = icmp ugt i8* %227, %149
  br i1 %228, label %229, label %278

229:                                              ; preds = %225
  %230 = getelementptr inbounds i8, i8* %226, i64 -2
  %231 = load i8, i8* %230, align 1, !tbaa !23
  %232 = icmp eq i8 %231, 47
  br i1 %232, label %278, label %225, !llvm.loop !53

233:                                              ; preds = %160, %147
  br i1 %65, label %278, label %234

234:                                              ; preds = %233
  %235 = load i8, i8* %89, align 1, !tbaa !23
  %236 = icmp eq i8 %235, 47
  br i1 %236, label %237, label %255

237:                                              ; preds = %234, %242
  %238 = phi i8* [ %243, %242 ], [ %89, %234 ]
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  %240 = load i8, i8* %239, align 1, !tbaa !23
  %241 = icmp eq i8 %240, 47
  br i1 %241, label %242, label %244

242:                                              ; preds = %237, %246
  %243 = phi i8* [ %239, %237 ], [ %245, %246 ]
  br label %237, !llvm.loop !54

244:                                              ; preds = %237
  %245 = getelementptr inbounds i8, i8* %238, i64 2
  switch i8 %240, label %255 [
    i8 0, label %251
    i8 46, label %246
  ]

246:                                              ; preds = %244
  %247 = load i8, i8* %245, align 1, !tbaa !23
  switch i8 %247, label %255 [
    i8 0, label %251
    i8 46, label %248
    i8 47, label %242
  ]

248:                                              ; preds = %246
  %249 = getelementptr inbounds i8, i8* %238, i64 3
  %250 = load i8, i8* %249, align 1, !tbaa !23
  switch i8 %250, label %255 [
    i8 47, label %251
    i8 0, label %251
  ]

251:                                              ; preds = %246, %244, %248, %248
  %252 = bitcast i8* %150 to i16*
  store i16 47, i16* %252, align 1
  %253 = call i32 @faccessat(i32 noundef -100, i8* noundef %149, i32 noundef 0, i32 noundef 512) #37
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %278, label %265

255:                                              ; preds = %246, %244, %248, %234
  br i1 %60, label %256, label %260

256:                                              ; preds = %255
  %257 = tail call i32* @__errno_location() #40
  %258 = load i32, i32* %257, align 4, !tbaa !21
  %259 = icmp eq i32 %258, 22
  br i1 %259, label %278, label %265

260:                                              ; preds = %255
  %261 = icmp eq i8 %235, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %260
  %263 = call i32 @faccessat(i32 noundef -100, i8* noundef %149, i32 noundef 0, i32 noundef 512) #37
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %278, label %265

265:                                              ; preds = %262, %256, %251
  br i1 %66, label %266, label %299

266:                                              ; preds = %265
  %267 = tail call i32* @__errno_location() #40
  %268 = load i32, i32* %267, align 4, !tbaa !21
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %270, label %299

270:                                              ; preds = %266
  %271 = call i64 @strspn(i8* noundef nonnull %89, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.35, i64 0, i64 0)) #38
  %272 = getelementptr inbounds i8, i8* %89, i64 %271
  %273 = load i8, i8* %272, align 1, !tbaa !23
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %278, label %299

275:                                              ; preds = %169, %186
  %276 = phi %struct.hash_table* [ %183, %186 ], [ %77, %169 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %67) #37
  br label %299

277:                                              ; preds = %185
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %67) #37
  br label %278

278:                                              ; preds = %112, %108, %229, %225, %277, %270, %262, %260, %256, %251, %233, %223, %222, %105, %97
  %279 = phi %struct.hash_table* [ %183, %277 ], [ %77, %105 ], [ %77, %97 ], [ %190, %222 ], [ %190, %223 ], [ %77, %233 ], [ %77, %251 ], [ %77, %270 ], [ %77, %256 ], [ %77, %262 ], [ %77, %260 ], [ %190, %225 ], [ %190, %229 ], [ %77, %108 ], [ %77, %112 ]
  %280 = phi i8* [ %89, %277 ], [ %89, %105 ], [ %89, %97 ], [ %214, %222 ], [ %214, %223 ], [ %89, %233 ], [ %89, %251 ], [ %89, %270 ], [ %89, %256 ], [ %89, %262 ], [ %89, %260 ], [ %214, %225 ], [ %214, %229 ], [ %89, %108 ], [ %89, %112 ]
  %281 = phi i32 [ %75, %277 ], [ %75, %105 ], [ %75, %97 ], [ %191, %222 ], [ %191, %223 ], [ %75, %233 ], [ %75, %251 ], [ %75, %270 ], [ %75, %256 ], [ %75, %262 ], [ %75, %260 ], [ %191, %225 ], [ %191, %229 ], [ %75, %108 ], [ %75, %112 ]
  %282 = phi i1 [ %74, %277 ], [ %74, %105 ], [ %74, %97 ], [ true, %222 ], [ true, %223 ], [ %74, %233 ], [ %74, %251 ], [ %74, %270 ], [ %74, %256 ], [ %74, %262 ], [ %74, %260 ], [ true, %225 ], [ true, %229 ], [ %74, %108 ], [ %74, %112 ]
  %283 = phi i8* [ %150, %277 ], [ %73, %105 ], [ %73, %97 ], [ %221, %222 ], [ %150, %223 ], [ %150, %233 ], [ %150, %251 ], [ %150, %270 ], [ %150, %256 ], [ %150, %262 ], [ %150, %260 ], [ %227, %225 ], [ %227, %229 ], [ %110, %108 ], [ %110, %112 ]
  %284 = phi i8* [ %149, %277 ], [ %72, %105 ], [ %72, %97 ], [ %149, %222 ], [ %149, %223 ], [ %149, %233 ], [ %149, %251 ], [ %149, %270 ], [ %149, %256 ], [ %149, %262 ], [ %149, %260 ], [ %149, %225 ], [ %149, %229 ], [ %72, %108 ], [ %72, %112 ]
  %285 = phi i64 [ %71, %277 ], [ %71, %105 ], [ %71, %97 ], [ %196, %222 ], [ %196, %223 ], [ %71, %233 ], [ %71, %251 ], [ %71, %270 ], [ %71, %256 ], [ %71, %262 ], [ %71, %260 ], [ %196, %225 ], [ %196, %229 ], [ %71, %108 ], [ %71, %112 ]
  %286 = load i8, i8* %280, align 1, !tbaa !23
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %69

288:                                              ; preds = %278, %93, %56
  %289 = phi %struct.hash_table* [ null, %56 ], [ %279, %278 ], [ %77, %93 ]
  %290 = phi i8* [ %57, %56 ], [ %283, %278 ], [ %73, %93 ]
  %291 = phi i8* [ %58, %56 ], [ %284, %278 ], [ %72, %93 ]
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = icmp ugt i8* %290, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %288
  %295 = getelementptr inbounds i8, i8* %290, i64 -1
  %296 = load i8, i8* %295, align 1, !tbaa !23
  %297 = icmp eq i8 %296, 47
  %298 = select i1 %297, i8* %295, i8* %290
  br label %299

299:                                              ; preds = %270, %266, %265, %294, %288, %275
  %300 = phi %struct.hash_table* [ %289, %294 ], [ %289, %288 ], [ %276, %275 ], [ %77, %265 ], [ %77, %266 ], [ %77, %270 ]
  %301 = phi i1 [ false, %294 ], [ false, %288 ], [ true, %275 ], [ true, %265 ], [ true, %266 ], [ true, %270 ]
  %302 = phi i8* [ %298, %294 ], [ %290, %288 ], [ %150, %275 ], [ %150, %265 ], [ %150, %266 ], [ %150, %270 ]
  %303 = phi i8* [ %291, %294 ], [ %291, %288 ], [ %149, %275 ], [ %149, %265 ], [ %149, %266 ], [ %149, %270 ]
  %304 = icmp eq %struct.hash_table* %300, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %299
  call void @hash_free(%struct.hash_table* noundef nonnull %300) #37
  br i1 %301, label %316, label %307

306:                                              ; preds = %299
  br i1 %301, label %316, label %307

307:                                              ; preds = %306, %305
  %308 = getelementptr inbounds i8, i8* %302, i64 1
  store i8 0, i8* %302, align 1, !tbaa !23
  %309 = ptrtoint i8* %308 to i64
  %310 = ptrtoint i8* %303 to i64
  %311 = sub i64 %309, %310
  %312 = call noalias i8* @malloc(i64 noundef %311) #37
  %313 = icmp eq i8* %312, null
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  call void @xalloc_die() #39
  unreachable

315:                                              ; preds = %307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %312, i8* noundef nonnull align 1 %303, i64 noundef %311, i1 noundef false) #37
  br label %316

316:                                              ; preds = %41, %22, %26, %31, %305, %306, %315
  %317 = phi i8* [ null, %22 ], [ null, %26 ], [ null, %31 ], [ %312, %315 ], [ null, %306 ], [ null, %305 ], [ null, %41 ]
  %318 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %14, i64 0, i32 0
  %319 = load i8*, i8** %318, align 16, !tbaa !36
  %320 = bitcast %union.anon* %15 to i8*
  %321 = icmp eq i8* %319, %320
  br i1 %321, label %323, label %322

322:                                              ; preds = %316
  call void @free(i8* noundef %319) #37
  br label %323

323:                                              ; preds = %316, %322
  %324 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %10, i64 0, i32 0
  %325 = load i8*, i8** %324, align 16, !tbaa !36
  %326 = bitcast %union.anon* %11 to i8*
  %327 = icmp eq i8* %325, %326
  br i1 %327, label %329, label %328

328:                                              ; preds = %323
  call void @free(i8* noundef %325) #37
  br label %329

329:                                              ; preds = %323, %328
  %330 = getelementptr inbounds %struct.realpath_bufs, %struct.realpath_bufs* %4, i64 0, i32 0, i32 0
  %331 = load i8*, i8** %330, align 16, !tbaa !36
  %332 = icmp eq i8* %331, %21
  br i1 %332, label %334, label %333

333:                                              ; preds = %329
  call void @free(i8* noundef %331) #37
  br label %334

334:                                              ; preds = %329, %333
  call void @llvm.lifetime.end.p0i8(i64 3120, i8* nonnull %5) #37
  ret i8* %317
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind
declare i8* @getcwd(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @rawmemchr(i8* noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #37
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !55, !range !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #40
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.71, i64 0, i64 0), i32 noundef 5) #37
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #40
  %16 = load i32, i32* %15, align 4, !tbaa !21
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.72, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #37
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.73, i64 0, i64 0), i8* noundef %12) #37
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %21) #39
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #37
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #39
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #37
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #38
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef %11) #37
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #37
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !58
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #37
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #37
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37, !noalias !59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #37
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37, !noalias !59
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !21
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #37
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #37
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.76, i64 0, i64 0), i32 noundef 5) #37
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.77, i64 0, i64 0), i8* noundef %21) #37
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #37
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !29
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !32
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !33

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #37
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !29
  store i8 10, i8* %27, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #37
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #39
  unreachable

40:                                               ; preds = %35
  ret void
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #37
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !58
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #42
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #37
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = load i32, i32* @error_one_per_line, align 4, !tbaa !21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !tbaa !21
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
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #38
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout()
  %25 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %26 = icmp eq void ()* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void %25() #37
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #38
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.80, i64 0, i64 0), i8* noundef %30) #37
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.82, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #37
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #37
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !58
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #37
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !58
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #42
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @record_file(%struct.hash_table* noundef %0, i8* noundef nonnull %1, %struct.stat* nocapture noundef nonnull readonly %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.hash_table* %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = tail call noalias nonnull i8* @xmalloc(i64 noundef 24) #43
  %7 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %1) #37
  %8 = bitcast i8* %6 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !63
  %9 = getelementptr inbounds i8, i8* %6, i64 8
  %10 = bitcast %struct.stat* %2 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8, !tbaa !65
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %13 = bitcast i8* %9 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 8, !tbaa !65
  %14 = tail call i8* @hash_insert(%struct.hash_table* noundef nonnull %0, i8* noundef nonnull %6) #37
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void @xalloc_die() #39
  unreachable

17:                                               ; preds = %5
  %18 = icmp eq i8* %14, %6
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @triple_free(i8* noundef nonnull %6) #37
  br label %20

20:                                               ; preds = %17, %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i1 @seen_file(%struct.hash_table* noundef %0, i8* noundef %1, %struct.stat* nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = alloca %struct.F_triple, align 8
  %5 = icmp eq %struct.hash_table* %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = bitcast %struct.F_triple* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #37
  %8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0
  store i8* %1, i8** %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1
  %10 = bitcast %struct.stat* %2 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8, !tbaa !65
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %13 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 8, !tbaa !65
  %14 = call i8* @hash_lookup(%struct.hash_table* noundef nonnull %0, i8* noundef nonnull %7) #37
  %15 = icmp ne i8* %14, null
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #37
  br label %16

16:                                               ; preds = %3, %6
  %17 = phi i1 [ %15, %6 ], [ false, %3 ]
  ret i1 %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 {
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #37
  ret i32 0
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local i1 @gl_scratch_buffer_grow(%struct.scratch_buffer* noundef %0) local_unnamed_addr #21 {
  %2 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !38
  %4 = shl i64 %3, 1
  %5 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 16, !tbaa !36
  %7 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 2
  %8 = bitcast %union.anon* %7 to i8*
  %9 = icmp eq i8* %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  tail call void @free(i8* noundef %6) #37
  %11 = load i64, i64* %2, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i64 [ %3, %1 ], [ %11, %10 ]
  %14 = icmp ult i64 %4, %13
  br i1 %14, label %15, label %17, !prof !66

15:                                               ; preds = %12
  %16 = tail call i32* @__errno_location() #40
  store i32 12, i32* %16, align 4, !tbaa !21
  br label %20

17:                                               ; preds = %12
  %18 = tail call noalias i8* @malloc(i64 noundef %4) #37
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22, !prof !66

20:                                               ; preds = %15, %17
  %21 = bitcast %struct.scratch_buffer* %0 to %union.anon**
  store %union.anon* %7, %union.anon** %21, align 16, !tbaa !36
  br label %23

22:                                               ; preds = %17
  store i8* %18, i8** %5, align 16, !tbaa !36
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i64 [ %4, %22 ], [ 1024, %20 ]
  %25 = phi i1 [ true, %22 ], [ false, %20 ]
  store i64 %24, i64* %2, align 8, !tbaa !38
  ret i1 %25
}

; Function Attrs: nounwind uwtable
define dso_local i1 @gl_scratch_buffer_grow_preserve(%struct.scratch_buffer* noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !38
  %4 = shl i64 %3, 1
  %5 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 16, !tbaa !36
  %7 = getelementptr inbounds %struct.scratch_buffer, %struct.scratch_buffer* %0, i64 0, i32 2
  %8 = bitcast %union.anon* %7 to i8*
  %9 = icmp eq i8* %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call noalias i8* @malloc(i64 noundef %4) #37
  %12 = icmp eq i8* %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %11, i8* noundef nonnull align 1 %6, i64 noundef %3, i1 noundef false) #37
  br label %28

14:                                               ; preds = %1
  %15 = icmp ult i64 %4, %3
  br i1 %15, label %16, label %18, !prof !66

16:                                               ; preds = %14
  %17 = tail call i32* @__errno_location() #40
  store i32 12, i32* %17, align 4, !tbaa !21
  br label %25

18:                                               ; preds = %14
  %19 = icmp eq i64 %4, 0
  %20 = select i1 %19, i64 1, i64 %4
  %21 = tail call i8* @realloc(i8* noundef %6, i64 noundef %20) #37
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28, !prof !66

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 16, !tbaa !36
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i8* [ %24, %23 ], [ %6, %16 ]
  tail call void @free(i8* noundef %26) #37
  %27 = bitcast %struct.scratch_buffer* %0 to %union.anon**
  store %union.anon* %7, %union.anon** %27, align 16, !tbaa !36
  br label %30

28:                                               ; preds = %18, %13
  %29 = phi i8* [ %11, %13 ], [ %21, %18 ]
  store i8* %29, i8** %5, align 16, !tbaa !36
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i64 [ %4, %28 ], [ 1024, %25 ]
  %32 = phi i1 [ true, %28 ], [ false, %25 ]
  store i64 %31, i64* %2, align 8, !tbaa !38
  br label %33

33:                                               ; preds = %30, %10
  %34 = phi i1 [ false, %10 ], [ %32, %30 ]
  ret i1 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !67
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8, !tbaa !69
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_entries(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !70
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !72
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %25, %1
  %8 = phi i64 [ 0, %1 ], [ %26, %25 ]
  ret i64 %8

9:                                                ; preds = %1, %25
  %10 = phi %struct.hash_entry* [ %27, %25 ], [ %3, %1 ]
  %11 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !73
  %14 = icmp eq i8* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9, %15
  %16 = phi %struct.hash_entry* [ %19, %15 ], [ %10, %9 ]
  %17 = phi i64 [ %21, %15 ], [ 1, %9 ]
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !tbaa !75
  %20 = icmp eq %struct.hash_entry* %19, null
  %21 = add i64 %17, 1
  br i1 %20, label %22, label %15, !llvm.loop !76

22:                                               ; preds = %15
  %23 = icmp ugt i64 %17, %11
  %24 = select i1 %23, i64 %17, i64 %11
  br label %25

25:                                               ; preds = %9, %22
  %26 = phi i64 [ %24, %22 ], [ %11, %9 ]
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1
  %28 = icmp ult %struct.hash_entry* %27, %5
  br i1 %28, label %9, label %7, !llvm.loop !77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @hash_table_ok(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !72
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %29, %1
  %8 = phi i64 [ 0, %1 ], [ %30, %29 ]
  %9 = phi i64 [ 0, %1 ], [ %31, %29 ]
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !69
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %34, label %38

13:                                               ; preds = %1, %29
  %14 = phi %struct.hash_entry* [ %32, %29 ], [ %3, %1 ]
  %15 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %16 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !73
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ %23, %20 ], [ %15, %13 ]
  %22 = phi %struct.hash_entry* [ %25, %20 ], [ %14, %13 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !75
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %27, label %20, !llvm.loop !78

27:                                               ; preds = %20
  %28 = add i64 %16, 1
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %16, %13 ], [ %28, %27 ]
  %31 = phi i64 [ %15, %13 ], [ %23, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %5
  br i1 %33, label %13, label %7, !llvm.loop !79

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %36 = load i64, i64* %35, align 8, !tbaa !70
  %37 = icmp eq i64 %9, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %7
  br label %39

39:                                               ; preds = %34, %38
  %40 = phi i1 [ false, %38 ], [ true, %34 ]
  ret i1 %40
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_print_statistics(%struct.hash_table* nocapture noundef readonly %0, %struct._IO_FILE* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %4 = load i64, i64* %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !tbaa !72
  %13 = icmp ult %struct.hash_entry* %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2, %30
  %15 = phi %struct.hash_entry* [ %32, %30 ], [ %10, %2 ]
  %16 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !73
  %19 = icmp eq i8* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = phi %struct.hash_entry* [ %24, %20 ], [ %15, %14 ]
  %22 = phi i64 [ %26, %20 ], [ 1, %14 ]
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !tbaa !75
  %25 = icmp eq %struct.hash_entry* %24, null
  %26 = add i64 %22, 1
  br i1 %25, label %27, label %20, !llvm.loop !80

27:                                               ; preds = %20
  %28 = icmp ugt i64 %22, %16
  %29 = select i1 %28, i64 %22, i64 %16
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %29, %27 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %12
  br i1 %33, label %14, label %34, !llvm.loop !81

34:                                               ; preds = %30, %2
  %35 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i64 0, i64 0), i64 noundef %4) #37
  %37 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.98, i64 0, i64 0), i64 noundef %6) #37
  %38 = uitofp i64 %8 to double
  %39 = fmul double %38, 1.000000e+02
  %40 = uitofp i64 %6 to double
  %41 = fdiv double %39, %40
  %42 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.99, i64 0, i64 0), i64 noundef %8, double noundef %41) #37
  %43 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.100, i64 0, i64 0), i64 noundef %35) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !67
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #37
  %8 = load i64, i64* %5, align 8, !tbaa !67
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !73
  %17 = icmp eq i8* %16, null
  %18 = icmp eq %struct.hash_entry* %13, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = icmp eq i8* %16, %1
  br i1 %22, label %39, label %23

23:                                               ; preds = %20, %35
  %24 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %20 ]
  %25 = phi i8* [ %37, %35 ], [ %16, %20 ]
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !83
  %27 = tail call i1 %26(i8* noundef %1, i8* noundef %25) #37
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !73
  br label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !75
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %39, label %35, !llvm.loop !84

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !73
  %38 = icmp eq i8* %37, %1
  br i1 %38, label %39, label %23

39:                                               ; preds = %35, %31, %20, %28, %11
  %40 = phi i8* [ null, %11 ], [ %30, %28 ], [ %1, %20 ], [ null, %31 ], [ %1, %35 ]
  ret i8* %40
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @hash_get_first(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #22 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !tbaa !72
  %10 = icmp ult %struct.hash_entry* %7, %9
  br i1 %10, label %14, label %13

11:                                               ; preds = %14
  %12 = icmp ult %struct.hash_entry* %19, %9
  br i1 %12, label %14, label %13

13:                                               ; preds = %11, %5
  tail call void @abort() #39
  unreachable

14:                                               ; preds = %5, %11
  %15 = phi %struct.hash_entry* [ %19, %11 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !73
  %18 = icmp eq i8* %17, null
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  br i1 %18, label %11, label %20

20:                                               ; preds = %14, %1
  %21 = phi i8* [ null, %1 ], [ %17, %14 ]
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_get_next(%struct.hash_table* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !67
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #37
  %8 = load i64, i64* %5, align 8, !tbaa !67
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  br label %15

15:                                               ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !73
  %19 = icmp eq i8* %18, %1
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !75
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27

23:                                               ; preds = %15
  br i1 %22, label %28, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !73
  br label %39

27:                                               ; preds = %15
  br i1 %22, label %28, label %15, !llvm.loop !85

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !72
  br label %31

31:                                               ; preds = %28, %35
  %32 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %28 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i64 1
  %34 = icmp ult %struct.hash_entry* %33, %30
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !73
  %38 = icmp eq i8* %37, null
  br i1 %38, label %31, label %39, !llvm.loop !86

39:                                               ; preds = %31, %35, %24
  %40 = phi i8* [ %26, %24 ], [ null, %31 ], [ %37, %35 ]
  ret i8* %40
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* nocapture noundef readonly %0, i8** nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #23 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %3, %34
  %10 = phi %struct.hash_entry* [ %35, %34 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %37, %34 ], [ %5, %3 ]
  %12 = phi i64 [ %36, %34 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !73
  %15 = icmp eq i8* %14, null
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %9
  %19 = call i64 @llvm.umax.i64(i64 %12, i64 %2)
  br label %20

20:                                               ; preds = %18, %24
  %21 = phi %struct.hash_entry* [ %30, %24 ], [ %11, %18 ]
  %22 = phi i64 [ %27, %24 ], [ %12, %18 ]
  %23 = icmp eq i64 %22, %19
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !73
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22
  store i8* %26, i8** %28, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !75
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %32, label %20, !llvm.loop !87

32:                                               ; preds = %24
  %33 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  br label %34

34:                                               ; preds = %32, %9
  %35 = phi %struct.hash_entry* [ %10, %9 ], [ %33, %32 ]
  %36 = phi i64 [ %12, %9 ], [ %27, %32 ]
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %38 = icmp ult %struct.hash_entry* %37, %35
  br i1 %38, label %9, label %39, !llvm.loop !88

39:                                               ; preds = %34, %20, %3
  %40 = phi i64 [ 0, %3 ], [ %19, %20 ], [ %36, %34 ]
  ret i64 %40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* nocapture noundef readonly %0, i1 (i8*, i8*)* nocapture noundef readonly %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3, %33
  %10 = phi %struct.hash_entry* [ %34, %33 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %36, %33 ], [ %5, %3 ]
  %12 = phi i64 [ %35, %33 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !73
  %15 = icmp eq i8* %14, null
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %9
  %19 = tail call i1 %1(i8* noundef %14, i8* noundef %2) #37
  br i1 %19, label %20, label %38

20:                                               ; preds = %18, %27
  %21 = phi i64 [ %23, %27 ], [ %12, %18 ]
  %22 = phi %struct.hash_entry* [ %25, %27 ], [ %11, %18 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !75
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %31, label %27, !llvm.loop !89

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !73
  %30 = tail call i1 %1(i8* noundef %29, i8* noundef %2) #37
  br i1 %30, label %20, label %38

31:                                               ; preds = %20
  %32 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi %struct.hash_entry* [ %10, %9 ], [ %32, %31 ]
  %35 = phi i64 [ %12, %9 ], [ %23, %31 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %37 = icmp ult %struct.hash_entry* %36, %34
  br i1 %37, label %9, label %38, !llvm.loop !90

38:                                               ; preds = %33, %18, %27, %3
  %39 = phi i64 [ 0, %3 ], [ %23, %27 ], [ %35, %33 ], [ %12, %18 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @hash_reset_tuning(%struct.hash_tuning* nocapture noundef writeonly %0) local_unnamed_addr #24 {
  %2 = bitcast %struct.hash_tuning* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %2, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false), !tbaa.struct !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.hash_table* @hash_initialize(i64 noundef %0, %struct.hash_tuning* noundef %1, i64 (i8*, i64)* noundef %2, i1 (i8*, i8*)* noundef %3, void (i8*)* noundef %4) local_unnamed_addr #21 {
  %6 = icmp eq i64 (i8*, i64)* %2, null
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2
  %8 = icmp eq i1 (i8*, i8*)* %3, null
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3
  %10 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #37
  %11 = bitcast i8* %10 to %struct.hash_table*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 5
  store %struct.hash_tuning* %15, %struct.hash_tuning** %16, align 8, !tbaa !94
  %17 = icmp eq %struct.hash_tuning* %15, @default_tuning
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %20 = load float, float* %19, align 4, !tbaa !95
  %21 = fcmp ogt float %20, 0x3FB99999A0000000
  %22 = fcmp olt float %20, 0x3FECCCCCC0000000
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3
  %26 = load float, float* %25, align 4, !tbaa !97
  %27 = fcmp ogt float %26, 0x3FF19999A0000000
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0
  %30 = load float, float* %29, align 4, !tbaa !98
  %31 = fcmp ult float %30, 0.000000e+00
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = fadd float %30, 0x3FB99999A0000000
  %34 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1
  %35 = load float, float* %34, align 4, !tbaa !99
  %36 = fcmp olt float %33, %35
  %37 = fcmp ole float %35, 1.000000e+00
  %38 = and i1 %36, %37
  %39 = fcmp olt float %33, %20
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %73

41:                                               ; preds = %13, %32
  %42 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4
  %43 = load i8, i8* %42, align 4, !tbaa !100, !range !57
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = uitofp i64 %0 to float
  %47 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %48 = load float, float* %47, align 4, !tbaa !95
  %49 = fdiv float %46, %48
  %50 = fcmp ult float %49, 0x43F0000000000000
  %51 = fptoui float %49 to i64
  br i1 %50, label %52, label %73

52:                                               ; preds = %45, %41
  %53 = phi i64 [ %0, %41 ], [ %51, %45 ]
  %54 = tail call i64 @next_prime(i64 noundef %53) #40
  %55 = icmp ugt i64 %54, 1152921504606846975
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 2
  store i64 %54, i64* %57, align 8, !tbaa !67
  %58 = icmp eq i64 %54, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = tail call noalias i8* @calloc(i64 noundef %54, i64 noundef 16) #37
  %61 = bitcast i8* %10 to i8**
  store i8* %60, i8** %61, align 8, !tbaa !71
  %62 = icmp eq i8* %60, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = bitcast i8* %60 to %struct.hash_entry*
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %64, i64 %54
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 1
  store %struct.hash_entry* %65, %struct.hash_entry** %66, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 3
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 6
  %69 = bitcast i64* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %68, align 8, !tbaa !82
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 7
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %70, align 8, !tbaa !83
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 8
  store void (i8*)* %4, void (i8*)** %71, align 8, !tbaa !101
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %72, align 8, !tbaa !102
  br label %77

73:                                               ; preds = %52, %45, %18, %24, %28, %32
  %74 = phi i32 [ 22, %32 ], [ 22, %28 ], [ 22, %24 ], [ 22, %18 ], [ 12, %45 ], [ 12, %52 ]
  %75 = tail call i32* @__errno_location() #40
  store i32 %74, i32* %75, align 4, !tbaa !21
  br label %76

76:                                               ; preds = %73, %59, %56
  tail call void @free(i8* noundef nonnull %10) #37
  br label %77

77:                                               ; preds = %5, %76, %63
  %78 = phi %struct.hash_table* [ null, %76 ], [ %11, %63 ], [ null, %5 ]
  ret %struct.hash_table* %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @raw_hasher(i8* noundef %0, i64 noundef %1) #25 {
  %3 = ptrtoint i8* %0 to i64
  %4 = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 61)
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i1 @raw_comparator(i8* noundef readnone %0, i8* noundef readnone %1) #25 {
  %3 = icmp eq i8* %0, %1
  ret i1 %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @hash_clear(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !72
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  br label %13

10:                                               ; preds = %59, %1
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %12 = bitcast i64* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  ret void

13:                                               ; preds = %7, %59
  %14 = phi %struct.hash_entry* [ %5, %7 ], [ %60, %59 ]
  %15 = phi %struct.hash_entry* [ %3, %7 ], [ %61, %59 ]
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !73
  %18 = icmp eq i8* %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !75
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !101
  %25 = icmp eq void (i8*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !102
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi %struct.hash_entry* [ %27, %26 ], [ %30, %28 ]
  %30 = phi %struct.hash_entry* [ %21, %26 ], [ %33, %28 ]
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0
  store i8* null, i8** %31, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !75
  store %struct.hash_entry* %29, %struct.hash_entry** %32, align 8, !tbaa !75
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %35, label %28, !llvm.loop !103

35:                                               ; preds = %28
  store %struct.hash_entry* %30, %struct.hash_entry** %9, align 8, !tbaa !102
  br label %36

36:                                               ; preds = %46, %35, %19
  %37 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !101
  %38 = icmp eq void (i8*)* %37, null
  br i1 %38, label %56, label %54

39:                                               ; preds = %23, %52
  %40 = phi void (i8*)* [ %53, %52 ], [ %24, %23 ]
  %41 = phi %struct.hash_entry* [ %49, %52 ], [ %21, %23 ]
  %42 = icmp eq void (i8*)* %40, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !73
  tail call void %40(i8* noundef %45) #37
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  store i8* null, i8** %47, align 8, !tbaa !73
  %48 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %49 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8, !tbaa !75
  %50 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !102
  store %struct.hash_entry* %50, %struct.hash_entry** %48, align 8, !tbaa !75
  store %struct.hash_entry* %41, %struct.hash_entry** %9, align 8, !tbaa !102
  %51 = icmp eq %struct.hash_entry* %49, null
  br i1 %51, label %36, label %52, !llvm.loop !104

52:                                               ; preds = %46
  %53 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !101
  br label %39

54:                                               ; preds = %36
  %55 = load i8*, i8** %16, align 8, !tbaa !73
  tail call void %37(i8* noundef %55) #37
  br label %56

56:                                               ; preds = %54, %36
  %57 = bitcast %struct.hash_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %58 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !72
  br label %59

59:                                               ; preds = %13, %56
  %60 = phi %struct.hash_entry* [ %14, %13 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %13, label %10, !llvm.loop !106
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_free(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #40
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !101
  %6 = icmp eq void (i8*)* %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %9 = load i64, i64* %8, align 8, !tbaa !70
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !72
  %16 = icmp ult %struct.hash_entry* %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11, %40
  %18 = phi %struct.hash_entry* [ %41, %40 ], [ %15, %11 ]
  %19 = phi %struct.hash_entry* [ %42, %40 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !73
  %22 = icmp eq i8* %21, null
  %23 = icmp eq %struct.hash_entry* %19, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %17
  %26 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !101
  tail call void %26(i8* noundef %21) #37
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !75
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %38, label %30, !llvm.loop !107

30:                                               ; preds = %25, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !73
  %34 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !101
  tail call void %34(i8* noundef %33) #37
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !tbaa !75
  %37 = icmp eq %struct.hash_entry* %36, null
  br i1 %37, label %38, label %30, !llvm.loop !107

38:                                               ; preds = %30, %25
  %39 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !72
  br label %40

40:                                               ; preds = %38, %17
  %41 = phi %struct.hash_entry* [ %39, %38 ], [ %18, %17 ]
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %43 = icmp ult %struct.hash_entry* %42, %41
  br i1 %43, label %17, label %44, !llvm.loop !108

44:                                               ; preds = %40, %11, %7, %1
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !72
  %49 = icmp ult %struct.hash_entry* %46, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %62, %44
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !102
  %53 = icmp eq %struct.hash_entry* %52, null
  br i1 %53, label %72, label %76

54:                                               ; preds = %44, %62
  %55 = phi %struct.hash_entry* [ %63, %62 ], [ %48, %44 ]
  %56 = phi %struct.hash_entry* [ %64, %62 ], [ %46, %44 ]
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 0, i32 1
  %58 = load %struct.hash_entry*, %struct.hash_entry** %57, align 8, !tbaa !75
  %59 = icmp eq %struct.hash_entry* %58, null
  br i1 %59, label %62, label %66

60:                                               ; preds = %66
  %61 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !72
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi %struct.hash_entry* [ %61, %60 ], [ %55, %54 ]
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 1
  %65 = icmp ult %struct.hash_entry* %64, %63
  br i1 %65, label %54, label %50, !llvm.loop !109

66:                                               ; preds = %54, %66
  %67 = phi %struct.hash_entry* [ %69, %66 ], [ %58, %54 ]
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i64 0, i32 1
  %69 = load %struct.hash_entry*, %struct.hash_entry** %68, align 8, !tbaa !75
  %70 = bitcast %struct.hash_entry* %67 to i8*
  tail call void @free(i8* noundef %70) #37
  %71 = icmp eq %struct.hash_entry* %69, null
  br i1 %71, label %60, label %66, !llvm.loop !110

72:                                               ; preds = %76, %50
  %73 = bitcast %struct.hash_table* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !71
  tail call void @free(i8* noundef %74) #37
  %75 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* noundef %75) #37
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret void

76:                                               ; preds = %50, %76
  %77 = phi %struct.hash_entry* [ %79, %76 ], [ %52, %50 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8, !tbaa !75
  %80 = bitcast %struct.hash_entry* %77 to i8*
  tail call void @free(i8* noundef %80) #37
  %81 = icmp eq %struct.hash_entry* %79, null
  br i1 %81, label %72, label %76, !llvm.loop !111
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hash_rehash(%struct.hash_table* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.hash_table, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %5 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 4
  %7 = load i8, i8* %6, align 4, !tbaa !100, !range !57
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = uitofp i64 %1 to float
  %11 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 2
  %12 = load float, float* %11, align 4, !tbaa !95
  %13 = fdiv float %10, %12
  %14 = fcmp ult float %13, 0x43F0000000000000
  %15 = fptoui float %13 to i64
  br i1 %14, label %16, label %20

16:                                               ; preds = %9, %2
  %17 = phi i64 [ %1, %2 ], [ %15, %9 ]
  %18 = tail call i64 @next_prime(i64 noundef %17) #40
  %19 = icmp ugt i64 %18, 1152921504606846975
  br i1 %19, label %20, label %22

20:                                               ; preds = %9, %16
  %21 = tail call i32* @__errno_location() #40
  store i32 12, i32* %21, align 4, !tbaa !21
  br label %124

22:                                               ; preds = %16
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %29) #37
  %30 = tail call noalias i8* @calloc(i64 noundef %18, i64 noundef 16) #37
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0
  %32 = bitcast %struct.hash_table* %3 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !71
  %33 = icmp eq i8* %30, null
  br i1 %33, label %122, label %34

34:                                               ; preds = %28
  %35 = bitcast i8* %30 to %struct.hash_entry*
  %36 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2
  store i64 %18, i64* %36, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i64 %18
  %38 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1
  store %struct.hash_entry* %37, %struct.hash_entry** %38, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5
  %41 = bitcast i64* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store %struct.hash_tuning* %5, %struct.hash_tuning** %40, align 8, !tbaa !94
  %42 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %43 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !82
  %44 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 6
  store i64 (i8*, i64)* %43, i64 (i8*, i64)** %44, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %46 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %45, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7
  store i1 (i8*, i8*)* %46, i1 (i8*, i8*)** %47, align 8, !tbaa !83
  %48 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %49 = load void (i8*)*, void (i8*)** %48, align 8, !tbaa !101
  %50 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 8
  store void (i8*)* %49, void (i8*)** %50, align 8, !tbaa !101
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !102
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9
  store %struct.hash_entry* %52, %struct.hash_entry** %53, align 8, !tbaa !102
  %54 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef nonnull %3, %struct.hash_table* noundef nonnull %0, i1 noundef false)
  br i1 %54, label %55, label %66

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %57 = bitcast %struct.hash_table* %0 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !71
  tail call void @free(i8* noundef %58) #37
  %59 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !71
  store %struct.hash_entry* %59, %struct.hash_entry** %56, align 8, !tbaa !71
  %60 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !72
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  store %struct.hash_entry* %60, %struct.hash_entry** %61, align 8, !tbaa !72
  %62 = bitcast i64* %36 to <2 x i64>*
  %63 = load <2 x i64>, <2 x i64>* %62, align 8, !tbaa !65
  %64 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> %63, <2 x i64>* %64, align 8, !tbaa !65
  %65 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !102
  store %struct.hash_entry* %65, %struct.hash_entry** %51, align 8, !tbaa !102
  br label %122

66:                                               ; preds = %34
  %67 = tail call i32* @__errno_location() #40
  %68 = load i32, i32* %67, align 4, !tbaa !21
  %69 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !102
  store %struct.hash_entry* %69, %struct.hash_entry** %51, align 8, !tbaa !102
  %70 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !71
  %71 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !72
  %72 = icmp ult %struct.hash_entry* %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %76

76:                                               ; preds = %113, %73
  %77 = phi %struct.hash_entry* [ %114, %113 ], [ %70, %73 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !73
  %80 = icmp eq i8* %79, null
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %83 = load %struct.hash_entry*, %struct.hash_entry** %82, align 8, !tbaa !75
  %84 = icmp eq %struct.hash_entry* %83, null
  br i1 %84, label %112, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %25, align 8, !tbaa !67
  br label %87

87:                                               ; preds = %108, %85
  %88 = phi i64 [ %94, %108 ], [ %86, %85 ]
  %89 = phi %struct.hash_entry* [ %99, %108 ], [ %83, %85 ]
  %90 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !73
  %92 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !82
  %93 = tail call i64 %92(i8* noundef %91, i64 noundef %88) #37
  %94 = load i64, i64* %25, align 8, !tbaa !67
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8, !tbaa !71
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %98, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !73
  %102 = icmp eq i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 1
  br label %108

105:                                              ; preds = %96
  store i8* %91, i8** %100, align 8, !tbaa !73
  %106 = load i64, i64* %75, align 8, !tbaa !69
  %107 = add i64 %106, 1
  store i64 %107, i64* %75, align 8, !tbaa !69
  store i8* null, i8** %90, align 8, !tbaa !73
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi %struct.hash_entry** [ %51, %105 ], [ %104, %103 ]
  %110 = load %struct.hash_entry*, %struct.hash_entry** %109, align 8, !tbaa !12
  store %struct.hash_entry* %110, %struct.hash_entry** %98, align 8, !tbaa !75
  store %struct.hash_entry* %89, %struct.hash_entry** %109, align 8, !tbaa !12
  %111 = icmp eq %struct.hash_entry* %99, null
  br i1 %111, label %112, label %87, !llvm.loop !112

112:                                              ; preds = %108, %81
  store %struct.hash_entry* null, %struct.hash_entry** %82, align 8, !tbaa !75
  br label %113

113:                                              ; preds = %112, %76
  %114 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 1
  %115 = icmp ult %struct.hash_entry* %114, %71
  br i1 %115, label %76, label %117, !llvm.loop !113

116:                                              ; preds = %87
  tail call void @abort() #39
  unreachable

117:                                              ; preds = %113, %66
  %118 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef %0, %struct.hash_table* noundef nonnull %3, i1 noundef false)
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void @abort() #39
  unreachable

120:                                              ; preds = %117
  %121 = load i8*, i8** %32, align 8, !tbaa !71
  tail call void @free(i8* noundef %121) #37
  store i32 %68, i32* %67, align 4, !tbaa !21
  br label %122

122:                                              ; preds = %28, %120, %55
  %123 = phi i1 [ true, %55 ], [ false, %120 ], [ false, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %29) #37
  br label %124

124:                                              ; preds = %20, %24, %22, %122
  %125 = phi i1 [ %123, %122 ], [ false, %22 ], [ true, %24 ], [ false, %20 ]
  ret i1 %125
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @transfer_entries(%struct.hash_table* nocapture noundef %0, %struct.hash_table* nocapture noundef %1, i1 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %142

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
  br i1 %2, label %16, label %63

16:                                               ; preds = %9, %58
  %17 = phi %struct.hash_entry* [ %59, %58 ], [ %7, %9 ]
  %18 = phi %struct.hash_entry* [ %60, %58 ], [ %7, %9 ]
  %19 = phi %struct.hash_entry* [ %61, %58 ], [ %5, %9 ]
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !73
  %22 = icmp eq i8* %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !75
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8, !tbaa !67
  br label %29

29:                                               ; preds = %27, %50
  %30 = phi i64 [ %36, %50 ], [ %28, %27 ]
  %31 = phi %struct.hash_entry* [ %41, %50 ], [ %25, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !73
  %34 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !82
  %35 = tail call i64 %34(i8* noundef %33, i64 noundef %30) #37
  %36 = load i64, i64* %11, align 8, !tbaa !67
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %29
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8, !tbaa !75
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !73
  %44 = icmp eq i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 1
  br label %50

47:                                               ; preds = %38
  store i8* %33, i8** %42, align 8, !tbaa !73
  %48 = load i64, i64* %13, align 8, !tbaa !69
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8, !tbaa !69
  store i8* null, i8** %32, align 8, !tbaa !73
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi %struct.hash_entry** [ %14, %47 ], [ %46, %45 ]
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !12
  store %struct.hash_entry* %52, %struct.hash_entry** %40, align 8, !tbaa !75
  store %struct.hash_entry* %31, %struct.hash_entry** %51, align 8, !tbaa !12
  %53 = icmp eq %struct.hash_entry* %41, null
  br i1 %53, label %54, label %29, !llvm.loop !114

54:                                               ; preds = %50
  %55 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  br label %56

56:                                               ; preds = %54, %23
  %57 = phi %struct.hash_entry* [ %55, %54 ], [ %17, %23 ]
  store %struct.hash_entry* null, %struct.hash_entry** %24, align 8, !tbaa !75
  br label %58

58:                                               ; preds = %56, %16
  %59 = phi %struct.hash_entry* [ %57, %56 ], [ %17, %16 ]
  %60 = phi %struct.hash_entry* [ %57, %56 ], [ %18, %16 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %16, label %142, !llvm.loop !115

63:                                               ; preds = %9, %138
  %64 = phi %struct.hash_entry* [ %139, %138 ], [ %7, %9 ]
  %65 = phi %struct.hash_entry* [ %140, %138 ], [ %5, %9 ]
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !73
  %68 = icmp eq i8* %67, null
  br i1 %68, label %138, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 1
  %71 = load %struct.hash_entry*, %struct.hash_entry** %70, align 8, !tbaa !75
  %72 = icmp eq %struct.hash_entry* %71, null
  %73 = load i64, i64* %11, align 8, !tbaa !67
  br i1 %72, label %76, label %83

74:                                               ; preds = %105
  %75 = load i8*, i8** %66, align 8, !tbaa !73
  br label %76

76:                                               ; preds = %69, %74
  %77 = phi i64 [ %90, %74 ], [ %73, %69 ]
  %78 = phi i8* [ %75, %74 ], [ %67, %69 ]
  store %struct.hash_entry* null, %struct.hash_entry** %70, align 8, !tbaa !75
  %79 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !82
  %80 = tail call i64 %79(i8* noundef %78, i64 noundef %77) #37
  %81 = load i64, i64* %11, align 8, !tbaa !67
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %110, label %109

83:                                               ; preds = %69, %105
  %84 = phi i64 [ %90, %105 ], [ %73, %69 ]
  %85 = phi %struct.hash_entry* [ %96, %105 ], [ %71, %69 ]
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 0
  %87 = load i8*, i8** %86, align 8, !tbaa !73
  %88 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !82
  %89 = tail call i64 %88(i8* noundef %87, i64 noundef %84) #37
  %90 = load i64, i64* %11, align 8, !tbaa !67
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %83, %29
  tail call void @abort() #39
  unreachable

93:                                               ; preds = %83
  %94 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 1
  %96 = load %struct.hash_entry*, %struct.hash_entry** %95, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !73
  %99 = icmp eq i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 1
  br label %105

102:                                              ; preds = %93
  store i8* %87, i8** %97, align 8, !tbaa !73
  %103 = load i64, i64* %13, align 8, !tbaa !69
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8, !tbaa !69
  store i8* null, i8** %86, align 8, !tbaa !73
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi %struct.hash_entry** [ %14, %102 ], [ %101, %100 ]
  %107 = load %struct.hash_entry*, %struct.hash_entry** %106, align 8, !tbaa !12
  store %struct.hash_entry* %107, %struct.hash_entry** %95, align 8, !tbaa !75
  store %struct.hash_entry* %85, %struct.hash_entry** %106, align 8, !tbaa !12
  %108 = icmp eq %struct.hash_entry* %96, null
  br i1 %108, label %74, label %83, !llvm.loop !114

109:                                              ; preds = %76
  tail call void @abort() #39
  unreachable

110:                                              ; preds = %76
  %111 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %112 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !73
  %114 = icmp eq i8* %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %110
  %116 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !102
  %117 = icmp eq %struct.hash_entry* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %116, i64 0, i32 1
  %120 = load %struct.hash_entry*, %struct.hash_entry** %119, align 8, !tbaa !75
  store %struct.hash_entry* %120, %struct.hash_entry** %14, align 8, !tbaa !102
  br label %125

121:                                              ; preds = %115
  %122 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #37
  %123 = bitcast i8* %122 to %struct.hash_entry*
  %124 = icmp eq i8* %122, null
  br i1 %124, label %142, label %125

125:                                              ; preds = %118, %121
  %126 = phi %struct.hash_entry* [ %116, %118 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 0
  store i8* %78, i8** %127, align 8, !tbaa !73
  %128 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 1
  %129 = load %struct.hash_entry*, %struct.hash_entry** %128, align 8, !tbaa !75
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 1
  store %struct.hash_entry* %129, %struct.hash_entry** %130, align 8, !tbaa !75
  store %struct.hash_entry* %126, %struct.hash_entry** %128, align 8, !tbaa !75
  br label %134

131:                                              ; preds = %110
  store i8* %78, i8** %112, align 8, !tbaa !73
  %132 = load i64, i64* %13, align 8, !tbaa !69
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8, !tbaa !69
  br label %134

134:                                              ; preds = %125, %131
  store i8* null, i8** %66, align 8, !tbaa !73
  %135 = load i64, i64* %15, align 8, !tbaa !69
  %136 = add i64 %135, -1
  store i64 %136, i64* %15, align 8, !tbaa !69
  %137 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !72
  br label %138

138:                                              ; preds = %134, %63
  %139 = phi %struct.hash_entry* [ %137, %134 ], [ %64, %63 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 1
  %141 = icmp ult %struct.hash_entry* %140, %139
  br i1 %141, label %63, label %142, !llvm.loop !115

142:                                              ; preds = %138, %121, %58, %3
  %143 = phi i1 [ true, %3 ], [ true, %58 ], [ false, %121 ], [ true, %138 ]
  ret i1 %143
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* nocapture noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #12 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #39
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !82
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = tail call i64 %8(i8* noundef nonnull %1, i64 noundef %10) #37
  %12 = load i64, i64* %9, align 8, !tbaa !67
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @abort() #39
  unreachable

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !73
  %21 = icmp eq i8* %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %15
  %23 = icmp eq i8* %20, %1
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !83
  %27 = tail call i1 %26(i8* noundef nonnull %1, i8* noundef nonnull %20) #37
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !75
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %28, %44
  %33 = phi %struct.hash_entry* [ %46, %44 ], [ %30, %28 ]
  %34 = phi %struct.hash_entry** [ %45, %44 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !73
  %37 = icmp eq i8* %36, %1
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !83
  %40 = tail call i1 %39(i8* noundef nonnull %1, i8* noundef %36) #37
  %41 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !tbaa !75
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  br label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !75
  %47 = icmp eq %struct.hash_entry* %46, null
  br i1 %47, label %58, label %32, !llvm.loop !116

48:                                               ; preds = %24, %42
  %49 = phi i8** [ %43, %42 ], [ %19, %24 ]
  %50 = load i8*, i8** %49, align 8, !tbaa !73
  br label %51

51:                                               ; preds = %32, %48
  %52 = phi i8* [ %50, %48 ], [ %1, %32 ]
  %53 = icmp eq i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %22, %51
  %55 = phi i8* [ %52, %51 ], [ %1, %22 ]
  %56 = icmp eq i8** %2, null
  br i1 %56, label %190, label %57

57:                                               ; preds = %54
  store i8* %55, i8** %2, align 8, !tbaa !12
  br label %190

58:                                               ; preds = %44, %28, %15, %51
  %59 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %60 = load i64, i64* %59, align 8, !tbaa !69
  %61 = uitofp i64 %60 to float
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %63 = load %struct.hash_tuning*, %struct.hash_tuning** %62, align 8, !tbaa !94
  %64 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 2
  %65 = load float, float* %64, align 4, !tbaa !95
  %66 = load i64, i64* %9, align 8, !tbaa !67
  %67 = uitofp i64 %66 to float
  %68 = fmul float %65, %67
  %69 = fcmp olt float %68, %61
  br i1 %69, label %70, label %160

70:                                               ; preds = %58
  %71 = icmp eq %struct.hash_tuning* %63, @default_tuning
  br i1 %71, label %94, label %72

72:                                               ; preds = %70
  %73 = fcmp ogt float %65, 0x3FB99999A0000000
  %74 = fcmp olt float %65, 0x3FECCCCCC0000000
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 3
  %78 = load float, float* %77, align 4, !tbaa !97
  %79 = fcmp ogt float %78, 0x3FF19999A0000000
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 0
  %82 = load float, float* %81, align 4, !tbaa !98
  %83 = fcmp ult float %82, 0.000000e+00
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = fadd float %82, 0x3FB99999A0000000
  %86 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 1
  %87 = load float, float* %86, align 4, !tbaa !99
  %88 = fcmp olt float %85, %87
  %89 = fcmp ole float %87, 1.000000e+00
  %90 = and i1 %88, %89
  %91 = fcmp olt float %85, %65
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %94, label %93

93:                                               ; preds = %84, %80, %76, %72
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %62, align 8, !tbaa !94
  br label %94

94:                                               ; preds = %70, %84, %93
  %95 = phi float [ %65, %70 ], [ %65, %84 ], [ 0x3FE99999A0000000, %93 ]
  %96 = phi %struct.hash_tuning* [ @default_tuning, %70 ], [ %63, %84 ], [ @default_tuning, %93 ]
  %97 = fmul float %95, %67
  %98 = fcmp olt float %97, %61
  br i1 %98, label %99, label %160

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 4
  %101 = load i8, i8* %100, align 4, !tbaa !100, !range !57
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 3
  %104 = load float, float* %103, align 4, !tbaa !97
  %105 = fmul float %104, %67
  %106 = select i1 %102, float %95, float 1.000000e+00
  %107 = fmul float %105, %106
  %108 = fcmp ult float %107, 0x43F0000000000000
  br i1 %108, label %111, label %109

109:                                              ; preds = %99
  %110 = tail call i32* @__errno_location() #40
  store i32 12, i32* %110, align 4, !tbaa !21
  br label %190

111:                                              ; preds = %99
  %112 = fptoui float %107 to i64
  %113 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %112)
  br i1 %113, label %114, label %190

114:                                              ; preds = %111
  %115 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !82
  %116 = load i64, i64* %9, align 8, !tbaa !67
  %117 = tail call i64 %115(i8* noundef nonnull %1, i64 noundef %116) #37
  %118 = load i64, i64* %9, align 8, !tbaa !67
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call void @abort() #39
  unreachable

121:                                              ; preds = %114
  %122 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !71
  %123 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 0, i32 0
  %125 = load i8*, i8** %124, align 8, !tbaa !73
  %126 = icmp eq i8* %125, null
  br i1 %126, label %160, label %127

127:                                              ; preds = %121
  %128 = icmp eq i8* %125, %1
  br i1 %128, label %156, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %131 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !83
  %132 = tail call i1 %131(i8* noundef nonnull %1, i8* noundef nonnull %125) #37
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117, i32 1
  %135 = load %struct.hash_entry*, %struct.hash_entry** %134, align 8, !tbaa !75
  %136 = icmp eq %struct.hash_entry* %135, null
  br i1 %136, label %160, label %137

137:                                              ; preds = %133, %149
  %138 = phi %struct.hash_entry* [ %151, %149 ], [ %135, %133 ]
  %139 = phi %struct.hash_entry** [ %150, %149 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i64 0, i32 0
  %141 = load i8*, i8** %140, align 8, !tbaa !73
  %142 = icmp eq i8* %141, %1
  br i1 %142, label %156, label %143

143:                                              ; preds = %137
  %144 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !83
  %145 = tail call i1 %144(i8* noundef nonnull %1, i8* noundef %141) #37
  %146 = load %struct.hash_entry*, %struct.hash_entry** %139, align 8, !tbaa !75
  br i1 %145, label %147, label %149

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 0
  br label %153

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 1
  %151 = load %struct.hash_entry*, %struct.hash_entry** %150, align 8, !tbaa !75
  %152 = icmp eq %struct.hash_entry* %151, null
  br i1 %152, label %160, label %137, !llvm.loop !117

153:                                              ; preds = %129, %147
  %154 = phi i8** [ %148, %147 ], [ %124, %129 ]
  %155 = load i8*, i8** %154, align 8, !tbaa !73
  br label %156

156:                                              ; preds = %137, %153, %127
  %157 = phi i8* [ %1, %127 ], [ %155, %153 ], [ %1, %137 ]
  %158 = icmp eq i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call void @abort() #39
  unreachable

160:                                              ; preds = %149, %133, %121, %156, %94, %58
  %161 = phi %struct.hash_entry* [ %123, %156 ], [ %18, %94 ], [ %18, %58 ], [ %123, %121 ], [ %123, %133 ], [ %123, %149 ]
  %162 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 0
  %163 = load i8*, i8** %162, align 8, !tbaa !73
  %164 = icmp eq i8* %163, null
  br i1 %164, label %185, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %167 = load %struct.hash_entry*, %struct.hash_entry** %166, align 8, !tbaa !102
  %168 = icmp eq %struct.hash_entry* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %167, i64 0, i32 1
  %171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8, !tbaa !75
  store %struct.hash_entry* %171, %struct.hash_entry** %166, align 8, !tbaa !102
  br label %176

172:                                              ; preds = %165
  %173 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #37
  %174 = bitcast i8* %173 to %struct.hash_entry*
  %175 = icmp eq i8* %173, null
  br i1 %175, label %190, label %176

176:                                              ; preds = %169, %172
  %177 = phi %struct.hash_entry* [ %167, %169 ], [ %174, %172 ]
  %178 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 0
  store i8* %1, i8** %178, align 8, !tbaa !73
  %179 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 1
  %180 = load %struct.hash_entry*, %struct.hash_entry** %179, align 8, !tbaa !75
  %181 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 1
  store %struct.hash_entry* %180, %struct.hash_entry** %181, align 8, !tbaa !75
  store %struct.hash_entry* %177, %struct.hash_entry** %179, align 8, !tbaa !75
  %182 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %183 = load i64, i64* %182, align 8, !tbaa !70
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8, !tbaa !70
  br label %190

185:                                              ; preds = %160
  store i8* %1, i8** %162, align 8, !tbaa !73
  %186 = bitcast i64* %59 to <2 x i64>*
  %187 = load <2 x i64>, <2 x i64>* %186, align 8, !tbaa !65
  %188 = add <2 x i64> %187, <i64 1, i64 1>
  %189 = bitcast i64* %59 to <2 x i64>*
  store <2 x i64> %188, <2 x i64>* %189, align 8, !tbaa !65
  br label %190

190:                                              ; preds = %111, %176, %172, %109, %54, %57, %185
  %191 = phi i32 [ 1, %185 ], [ 0, %57 ], [ 0, %54 ], [ -1, %109 ], [ 1, %176 ], [ -1, %172 ], [ -1, %111 ]
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_insert(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #37
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* noundef %0, i8* noundef %1, i8** noundef nonnull %3)
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = load i8*, i8** %3, align 8
  %9 = select i1 %7, i8* %8, i8* %1
  %10 = select i1 %6, i8* null, i8* %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #37
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_remove(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !67
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #37
  %8 = load i64, i64* %5, align 8, !tbaa !67
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !73
  %17 = icmp eq i8* %16, null
  br i1 %17, label %145, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8* %16, %1
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !83
  %23 = tail call i1 %22(i8* noundef %1, i8* noundef nonnull %16) #37
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %15, align 8, !tbaa !73
  br label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !75
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %145, label %43

30:                                               ; preds = %24, %18
  %31 = phi i8* [ %25, %24 ], [ %1, %18 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !75
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = bitcast %struct.hash_entry* %14 to i8*
  %37 = bitcast %struct.hash_entry* %33 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #37, !tbaa.struct !118
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  store i8* null, i8** %38, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %40 = load %struct.hash_entry*, %struct.hash_entry** %39, align 8, !tbaa !102
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 1
  store %struct.hash_entry* %40, %struct.hash_entry** %41, align 8, !tbaa !75
  store %struct.hash_entry* %33, %struct.hash_entry** %39, align 8, !tbaa !102
  br label %68

42:                                               ; preds = %30
  store i8* null, i8** %15, align 8, !tbaa !73
  br label %68

43:                                               ; preds = %26, %64
  %44 = phi %struct.hash_entry* [ %66, %64 ], [ %28, %26 ]
  %45 = phi %struct.hash_entry** [ %65, %64 ], [ %27, %26 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %44, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !73
  %48 = icmp eq i8* %47, %1
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !83
  %51 = tail call i1 %50(i8* noundef %1, i8* noundef %47) #37
  %52 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !75
  br i1 %51, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !73
  br label %56

56:                                               ; preds = %43, %53
  %57 = phi i8* [ %55, %53 ], [ %1, %43 ]
  %58 = phi %struct.hash_entry* [ %52, %53 ], [ %44, %43 ]
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 1
  %61 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !tbaa !75
  store %struct.hash_entry* %61, %struct.hash_entry** %45, align 8, !tbaa !75
  store i8* null, i8** %59, align 8, !tbaa !73
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %63 = load %struct.hash_entry*, %struct.hash_entry** %62, align 8, !tbaa !102
  store %struct.hash_entry* %63, %struct.hash_entry** %60, align 8, !tbaa !75
  store %struct.hash_entry* %58, %struct.hash_entry** %62, align 8, !tbaa !102
  br label %68

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1
  %66 = load %struct.hash_entry*, %struct.hash_entry** %65, align 8, !tbaa !75
  %67 = icmp eq %struct.hash_entry* %66, null
  br i1 %67, label %145, label %43, !llvm.loop !119

68:                                               ; preds = %35, %42, %56
  %69 = phi i8* [ %31, %35 ], [ %31, %42 ], [ %57, %56 ]
  %70 = icmp eq i8* %69, null
  br i1 %70, label %145, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %73 = load i64, i64* %72, align 8, !tbaa !70
  %74 = add i64 %73, -1
  store i64 %74, i64* %72, align 8, !tbaa !70
  %75 = load i8*, i8** %15, align 8, !tbaa !73
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %145

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %79 = load i64, i64* %78, align 8, !tbaa !69
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8, !tbaa !69
  %81 = uitofp i64 %80 to float
  %82 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %83 = load %struct.hash_tuning*, %struct.hash_tuning** %82, align 8, !tbaa !94
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 0
  %85 = load float, float* %84, align 4, !tbaa !98
  %86 = load i64, i64* %5, align 8, !tbaa !67
  %87 = uitofp i64 %86 to float
  %88 = fmul float %85, %87
  %89 = fcmp ogt float %88, %81
  br i1 %89, label %90, label %145

90:                                               ; preds = %77
  %91 = icmp eq %struct.hash_tuning* %83, @default_tuning
  br i1 %91, label %114, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 2
  %94 = load float, float* %93, align 4, !tbaa !95
  %95 = fcmp ogt float %94, 0x3FB99999A0000000
  %96 = fcmp olt float %94, 0x3FECCCCCC0000000
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 3
  %100 = load float, float* %99, align 4, !tbaa !97
  %101 = fcmp ule float %100, 0x3FF19999A0000000
  %102 = fcmp ult float %85, 0.000000e+00
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = fadd float %85, 0x3FB99999A0000000
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 1
  %107 = load float, float* %106, align 4, !tbaa !99
  %108 = fcmp olt float %105, %107
  %109 = fcmp ole float %107, 1.000000e+00
  %110 = and i1 %108, %109
  %111 = fcmp olt float %105, %94
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %114, label %113

113:                                              ; preds = %104, %98, %92
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %82, align 8, !tbaa !94
  br label %114

114:                                              ; preds = %90, %104, %113
  %115 = phi float [ %85, %90 ], [ %85, %104 ], [ 0.000000e+00, %113 ]
  %116 = phi %struct.hash_tuning* [ @default_tuning, %90 ], [ %83, %104 ], [ @default_tuning, %113 ]
  %117 = fmul float %115, %87
  %118 = fcmp ogt float %117, %81
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 4
  %121 = load i8, i8* %120, align 4, !tbaa !100, !range !57
  %122 = icmp eq i8 %121, 0
  %123 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 1
  %124 = load float, float* %123, align 4, !tbaa !99
  %125 = fmul float %124, %87
  br i1 %122, label %126, label %130

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 2
  %128 = load float, float* %127, align 4, !tbaa !95
  %129 = fmul float %125, %128
  br label %130

130:                                              ; preds = %119, %126
  %131 = phi float [ %129, %126 ], [ %125, %119 ]
  %132 = fptoui float %131 to i64
  %133 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %132)
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %136 = load %struct.hash_entry*, %struct.hash_entry** %135, align 8, !tbaa !102
  %137 = icmp eq %struct.hash_entry* %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134, %138
  %139 = phi %struct.hash_entry* [ %141, %138 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %139, i64 0, i32 1
  %141 = load %struct.hash_entry*, %struct.hash_entry** %140, align 8, !tbaa !75
  %142 = bitcast %struct.hash_entry* %139 to i8*
  tail call void @free(i8* noundef %142) #37
  %143 = icmp eq %struct.hash_entry* %141, null
  br i1 %143, label %144, label %138, !llvm.loop !120

144:                                              ; preds = %138, %134
  store %struct.hash_entry* null, %struct.hash_entry** %135, align 8, !tbaa !102
  br label %145

145:                                              ; preds = %64, %26, %11, %71, %114, %77, %144, %130, %68
  %146 = phi i8* [ null, %68 ], [ %69, %130 ], [ %69, %144 ], [ %69, %77 ], [ %69, %114 ], [ %69, %71 ], [ null, %11 ], [ null, %26 ], [ null, %64 ]
  ret i8* %146
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @triple_hash(i8* nocapture noundef readonly %0, i64 noundef %1) #22 {
  %3 = bitcast i8* %0 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !63
  %5 = tail call i64 @hash_pjw(i8* noundef %4, i64 noundef %1) #38
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !121
  %9 = xor i64 %8, %5
  %10 = urem i64 %9, %1
  ret i64 %10
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i1 @triple_compare_ino_str(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #22 {
  %3 = getelementptr inbounds i8, i8* %0, i64 16
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !122
  %6 = getelementptr inbounds i8, i8* %1, i64 16
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !122
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !121
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !121
  %15 = icmp eq i64 %5, %8
  %16 = icmp eq i64 %11, %14
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = bitcast i8* %0 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !63
  %21 = bitcast i8* %1 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !63
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(1) %22) #38
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi i1 [ false, %2 ], [ %24, %18 ]
  ret i1 %26
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @triple_free(i8* nocapture noundef %0) #21 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !63
  tail call void @free(i8* noundef %3) #37
  tail call void @free(i8* noundef %0) #37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_pjw(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #27 {
  %3 = load i8, i8* %0, align 1, !tbaa !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %2
  %6 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %7 = urem i64 %6, %1
  ret i64 %7

8:                                                ; preds = %2, %8
  %9 = phi i8 [ %16, %8 ], [ %3, %2 ]
  %10 = phi i8* [ %15, %8 ], [ %0, %2 ]
  %11 = phi i64 [ %14, %8 ], [ 0, %2 ]
  %12 = zext i8 %9 to i64
  %13 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 9)
  %14 = add i64 %13, %12
  %15 = getelementptr inbounds i8, i8* %10, i64 1
  %16 = load i8, i8* %15, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %8, !llvm.loop !123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @next_prime(i64 noundef %0) local_unnamed_addr #25 {
  %2 = icmp ugt i64 %0, 10
  %3 = select i1 %2, i64 %0, i64 10
  %4 = or i64 %3, 1
  %5 = add i64 %4, 1
  %6 = icmp ult i64 %5, 10
  br i1 %6, label %24, label %7

7:                                                ; preds = %1, %20
  %8 = phi i64 [ %21, %20 ], [ %4, %1 ]
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i64 [ %17, %14 ], [ 9, %7 ]
  %11 = phi i64 [ %18, %14 ], [ 3, %7 ]
  %12 = urem i64 %8, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = shl i64 %11, 2
  %16 = add i64 %10, 4
  %17 = add i64 %16, %15
  %18 = add i64 %11, 2
  %19 = icmp ugt i64 %17, %8
  br i1 %19, label %24, label %9

20:                                               ; preds = %9
  %21 = add i64 %8, 2
  %22 = add i64 %8, 3
  %23 = icmp ult i64 %22, 10
  br i1 %23, label %24, label %7, !llvm.loop !124

24:                                               ; preds = %20, %14, %1
  %25 = phi i64 [ -1, %1 ], [ %8, %14 ], [ %21, %20 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #28 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #38
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
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0), i64 7) #37
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.124, i64 0, i64 0), i64 noundef 3) #38
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
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #37
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #37
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #37
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #37
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #37
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #40
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #44
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !125
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #30 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !21
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4, !tbaa !21
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #30 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !127
  store i32 %1, i32* %5, align 4, !tbaa !127
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !125
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !128
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !129
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #40
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !127
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !128
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !129
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18)
  store i32 %9, i32* %8, align 4, !tbaa !21
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  %17 = tail call i64 @__ctype_get_mb_cur_max() #37
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
  store i8 34, i8* %0, align 1, !tbaa !23
  br label %111

54:                                               ; preds = %36, %36
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.137, i64 0, i64 0), i32 noundef 5) #37
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.137, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #37
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #37
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #37
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), i32 noundef 5) #37
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #37
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #37
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #37
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  br i1 %45, label %97, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %80, align 1, !tbaa !23
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
  store i8 %86, i8* %91, align 1, !tbaa !23
  br label %92

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1
  %94 = getelementptr inbounds i8, i8* %87, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !23
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85, !llvm.loop !130

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #38
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
  store i8 39, i8* %0, align 1, !tbaa !23
  br label %111

109:                                              ; preds = %36
  br label %111

110:                                              ; preds = %36
  call void @abort() #39
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.139, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), %102 ]
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
  %144 = load i8, i8* %143, align 1, !tbaa !23
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
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #37
  %160 = icmp ne i32 %159, 0
  %161 = or i1 %160, %125
  %162 = xor i1 %160, true
  br i1 %161, label %163, label %647

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  %166 = getelementptr inbounds i8, i8* %2, i64 %139
  %167 = load i8, i8* %166, align 1, !tbaa !23
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
  store i8 39, i8* %175, align 1, !tbaa !23
  br label %176

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1
  %178 = icmp ult i64 %177, %140
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177
  store i8 36, i8* %180, align 1, !tbaa !23
  br label %181

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2
  %183 = icmp ult i64 %182, %140
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182
  store i8 39, i8* %185, align 1, !tbaa !23
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
  store i8 92, i8* %193, align 1, !tbaa !23
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
  %201 = load i8, i8* %200, align 1, !tbaa !23
  %202 = add i8 %201, -48
  %203 = icmp ult i8 %202, 10
  br i1 %203, label %204, label %456

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195
  store i8 48, i8* %207, align 1, !tbaa !23
  br label %208

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2
  %210 = icmp ult i64 %209, %140
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209
  store i8 48, i8* %212, align 1, !tbaa !23
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
  %225 = load i8, i8* %224, align 1, !tbaa !23
  %226 = icmp eq i8 %225, 63
  br i1 %226, label %227, label %456

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220
  %229 = load i8, i8* %228, align 1, !tbaa !23
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
  store i8 63, i8* %234, align 1, !tbaa !23
  br label %235

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1
  %237 = icmp ult i64 %236, %140
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1, !tbaa !23
  br label %240

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2
  %242 = icmp ult i64 %241, %140
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 34, i8* %244, align 1, !tbaa !23
  br label %245

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3
  %247 = icmp ult i64 %246, %140
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246
  store i8 63, i8* %249, align 1, !tbaa !23
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
  %267 = load i8, i8* %27, align 1, !tbaa !23
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
  store i8 39, i8* %285, align 1, !tbaa !23
  br label %286

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1, !tbaa !23
  br label %291

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1, !tbaa !23
  br label %296

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3
  br label %456

298:                                              ; preds = %163
  br i1 %18, label %299, label %307

299:                                              ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #40
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #37
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #37
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #37
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37
  br label %352

318:                                              ; preds = %311
  br label %346

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  %322 = getelementptr inbounds i8, i8* %2, i64 %320
  %323 = load i8, i8* %322, align 1, !tbaa !23
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %348, label %325

325:                                              ; preds = %319
  %326 = add i64 %321, 1
  %327 = add i64 %326, %139
  %328 = icmp eq i64 %326, %313
  br i1 %328, label %348, label %319, !llvm.loop !131

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false
  br i1 %331, label %332, label %340

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  %334 = add i64 %333, %139
  %335 = getelementptr inbounds i8, i8* %2, i64 %334
  %336 = load i8, i8* %335, align 1, !tbaa !23
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
  br i1 %339, label %340, label %332, !llvm.loop !132

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !21
  %342 = call i32 @iswprint(i32 noundef %341) #37
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37
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
  store i8 39, i8* %376, align 1, !tbaa !23
  br label %377

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1
  %379 = icmp ult i64 %378, %140
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378
  store i8 36, i8* %381, align 1, !tbaa !23
  br label %382

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2
  %384 = icmp ult i64 %383, %140
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383
  store i8 39, i8* %386, align 1, !tbaa !23
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
  store i8 92, i8* %394, align 1, !tbaa !23
  br label %395

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1
  %397 = icmp ult i64 %396, %140
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6
  %400 = or i8 %399, 48
  %401 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 %400, i8* %401, align 1, !tbaa !23
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
  store i8 %408, i8* %409, align 1, !tbaa !23
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
  store i8 92, i8* %418, align 1, !tbaa !23
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
  store i8 39, i8* %436, align 1, !tbaa !23
  br label %437

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1
  %439 = icmp ult i64 %438, %140
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438
  store i8 39, i8* %441, align 1, !tbaa !23
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
  store i8 %426, i8* %449, align 1, !tbaa !23
  br label %450

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1
  %452 = getelementptr inbounds i8, i8* %2, i64 %427
  %453 = load i8, i8* %452, align 1, !tbaa !23
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
  %493 = load i32, i32* %492, align 4, !tbaa !21
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
  store i8 39, i8* %525, align 1, !tbaa !23
  br label %526

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1
  %528 = icmp ult i64 %527, %519
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 36, i8* %530, align 1, !tbaa !23
  br label %531

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2
  %533 = icmp ult i64 %532, %519
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532
  store i8 39, i8* %535, align 1, !tbaa !23
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
  store i8 92, i8* %543, align 1, !tbaa !23
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
  store i8 39, i8* %562, align 1, !tbaa !23
  br label %563

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1
  %565 = icmp ult i64 %564, %556
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564
  store i8 39, i8* %567, align 1, !tbaa !23
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
  store i8 %572, i8* %582, align 1, !tbaa !23
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
  br label %132, !llvm.loop !133

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
  %617 = load i8, i8* %116, align 1, !tbaa !23
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
  store i8 %620, i8* %625, align 1, !tbaa !23
  br label %626

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1
  %628 = getelementptr inbounds i8, i8* %621, i64 1
  %629 = load i8, i8* %628, align 1, !tbaa !23
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %619, !llvm.loop !134

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ]
  %633 = icmp ult i64 %632, %140
  br i1 %633, label %634, label %653

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632
  store i8 0, i8* %635, align 1, !tbaa !23
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

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2
  %6 = tail call i32* @__errno_location() #40
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !127
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !129
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #37
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #43
  %21 = load i32, i32* %11, align 8, !tbaa !125
  %22 = load i8*, i8** %14, align 8, !tbaa !128
  %23 = load i8*, i8** %16, align 8, !tbaa !129
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #37
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #40
  %8 = load i32, i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !127
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !125
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !129
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #43
  %24 = load i32, i32* %14, align 8, !tbaa !125
  %25 = load i8*, i8** %17, align 8, !tbaa !128
  %26 = load i8*, i8** %19, align 8, !tbaa !129
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !21
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !65
  br label %29

29:                                               ; preds = %28, %4
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %2 = load i32, i32* @nslots, align 4, !tbaa !21
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  br label %10

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !135
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !135
  tail call void @free(i8* noundef %13) #37
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !137

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #37
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !138
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !135
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #37
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 {
  %5 = alloca i64, align 8
  %6 = tail call i32* @__errno_location() #40
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #37
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !65
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #37
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !139
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !65
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #37
  %34 = load i64, i64* %5, align 8, !tbaa !65
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #37
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !138
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !135
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !127
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !125
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !128
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !129
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !138
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #37
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #43
  store i8* %60, i8** %41, align 8, !tbaa !135
  %61 = load i32, i32* %46, align 8, !tbaa !125
  %62 = load i8*, i8** %49, align 8, !tbaa !128
  %63 = load i8*, i8** %51, align 8, !tbaa !129
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ]
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %66
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !alias.scope !140
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #39, !noalias !140
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !125, !alias.scope !140
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #37, !alias.scope !143
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #39, !noalias !143
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !125, !alias.scope !143
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146) #37
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #37, !alias.scope !146
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #39, !noalias !146
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !125, !alias.scope !146
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149) #37
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !alias.scope !149
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #39, !noalias !149
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !125, !alias.scope !149
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !152
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !21
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4, !tbaa !21
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !tbaa.struct !152
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4, !tbaa !21
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4, !tbaa !21
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !tbaa.struct !152
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !21
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #37
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !tbaa.struct !152
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !21
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #39, !noalias !153
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !152
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !21
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !21
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !tbaa.struct !152
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !125
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #39
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !129
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !152
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !125
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #39
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !129
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #37
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !tbaa.struct !152
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !125
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #39
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !128
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !129
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !tbaa.struct !152
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !125
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #39
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !129
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #37
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #37
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.146, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #37
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.148, i64 0, i64 0), i32 noundef 5) #37
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #37
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.150, i64 0, i64 0), i32 noundef 5) #37
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.151, i64 0, i64 0)) #37
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.152, i64 0, i64 0), i32 noundef 5) #37
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #37
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.153, i64 0, i64 0), i32 noundef 5) #37
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #37
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.154, i64 0, i64 0), i32 noundef 5) #37
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #37
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.155, i64 0, i64 0), i32 noundef 5) #37
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #37
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.156, i64 0, i64 0), i32 noundef 5) #37
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #37
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.157, i64 0, i64 0), i32 noundef 5) #37
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
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #37
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.158, i64 0, i64 0), i32 noundef 5) #37
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
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #37
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.159, i64 0, i64 0), i32 noundef 5) #37
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
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #37
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.160, i64 0, i64 0), i32 noundef 5) #37
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
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #37
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.161, i64 0, i64 0), i32 noundef 5) #37
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
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #37
  br label %147

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !156

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #37
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
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !58
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.149, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.166, i64 0, i64 0), i32 noundef 5) #37
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.167, i64 0, i64 0)) #37
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.168, i64 0, i64 0), i32 noundef 5) #37
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.170, i64 0, i64 0)) #37
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.171, i64 0, i64 0), i32 noundef 5) #37
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.172, i64 0, i64 0)) #37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #39
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #39
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #34 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #34 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #34 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #39
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 {
  %3 = load i64, i64* %1, align 8, !tbaa !65
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #37
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #39
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #37
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #39
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !65
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8, !tbaa !65
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
  tail call void @xalloc_die() #39
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #37
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #39
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !65
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = load i64, i64* %1, align 8, !tbaa !65
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
  store i64 0, i64* %1, align 8, !tbaa !65
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
  tail call void @xalloc_die() #39
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #37
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #39
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !65
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #34 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #34 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #39
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #38
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #39
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.187, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.188, i64 0, i64 0), i32 noundef 5) #37
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i64 0, i64 0), i8* noundef %2) #37
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #39
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #37
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #37
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #40
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #40
  store i32 0, i32* %21, align 4, !tbaa !21
  br label %22

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #37
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #40
  %20 = load i32, i32* %19, align 4, !tbaa !21
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !tbaa !21
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !34
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37
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
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !158
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !29
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !159
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !160
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !34
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !161
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
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.200, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #37
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #38
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
  tail call void @abort() #39
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #37
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !tbaa !23
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %6, align 4, !tbaa !21
  br label %30

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #21 {
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
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #37
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #40
  store i32 12, i32* %14, align 4, !tbaa !21
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #37
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #37
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.206, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #37
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #37
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #37
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #38
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  store i8 0, i8* %18, align 1, !tbaa !23
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
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { argmemonly nofree nounwind readonly willreturn }
attributes #30 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #32 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #36 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #37 = { nounwind }
attributes #38 = { nounwind readonly willreturn }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind readnone willreturn }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(1) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17, !13, i64 0}
!17 = !{!"infomap", !13, i64 0, !13, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!17, !13, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !14, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !14, i64 0}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = !{!30, !13, i64 40}
!30 = !{!"_IO_FILE", !22, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 116, !31, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !31, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !31, i64 184, !22, i64 192, !14, i64 196}
!31 = !{!"long", !14, i64 0}
!32 = !{!30, !13, i64 48}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!30, !22, i64 0}
!35 = distinct !{!35, !19}
!36 = !{!37, !13, i64 0}
!37 = !{!"scratch_buffer", !13, i64 0, !31, i64 8, !14, i64 16}
!38 = !{!37, !31, i64 8}
!39 = !{i32 0, i32 33}
!40 = !{!41, !13, i64 0}
!41 = !{!"realpath_bufs", !37, i64 0, !37, i64 1040, !37, i64 2080}
!42 = !{!41, !31, i64 8}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = !{!41, !13, i64 2080}
!49 = !{!41, !31, i64 2088}
!50 = !{!41, !13, i64 1040}
!51 = !{!41, !31, i64 1048}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !14, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !21, i64 28, i64 4, !21}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"vfprintf.inline: argument 0"}
!61 = distinct !{!61, !"vfprintf.inline"}
!62 = distinct !{!62, !61, !"vfprintf.inline: argument 1"}
!63 = !{!64, !13, i64 0}
!64 = !{!"F_triple", !13, i64 0, !31, i64 8, !31, i64 16}
!65 = !{!31, !31, i64 0}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!68, !31, i64 16}
!68 = !{!"hash_table", !13, i64 0, !13, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!69 = !{!68, !31, i64 24}
!70 = !{!68, !31, i64 32}
!71 = !{!68, !13, i64 0}
!72 = !{!68, !13, i64 8}
!73 = !{!74, !13, i64 0}
!74 = !{!"hash_entry", !13, i64 0, !13, i64 8}
!75 = !{!74, !13, i64 8}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = !{!68, !13, i64 48}
!83 = !{!68, !13, i64 56}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 1, !55}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !14, i64 0}
!94 = !{!68, !13, i64 40}
!95 = !{!96, !93, i64 8}
!96 = !{!"hash_tuning", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !56, i64 16}
!97 = !{!96, !93, i64 12}
!98 = !{!96, !93, i64 0}
!99 = !{!96, !93, i64 4}
!100 = !{!96, !56, i64 16}
!101 = !{!68, !13, i64 64}
!102 = !{!68, !13, i64 72}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19, !105}
!105 = !{!"llvm.loop.unswitch.partial.disable"}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = !{!64, !31, i64 8}
!122 = !{!64, !31, i64 16}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = !{!126, !14, i64 0}
!126 = !{!"quoting_options", !14, i64 0, !22, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!127 = !{!126, !22, i64 4}
!128 = !{!126, !13, i64 40}
!129 = !{!126, !13, i64 48}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = !{!136, !13, i64 8}
!136 = !{!"slotvec", !31, i64 0, !13, i64 8}
!137 = distinct !{!137, !19}
!138 = !{!136, !31, i64 0}
!139 = !{i64 0, i64 8, !65, i64 8, i64 8, !12}
!140 = !{!141}
!141 = distinct !{!141, !142, !"quoting_options_from_style: argument 0"}
!142 = distinct !{!142, !"quoting_options_from_style"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"quoting_options_from_style: argument 0"}
!145 = distinct !{!145, !"quoting_options_from_style"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"quoting_options_from_style: argument 0"}
!148 = distinct !{!148, !"quoting_options_from_style"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"quoting_options_from_style: argument 0"}
!151 = distinct !{!151, !"quoting_options_from_style"}
!152 = !{i64 0, i64 4, !23, i64 4, i64 4, !21, i64 8, i64 32, !23, i64 40, i64 8, !12, i64 48, i64 8, !12}
!153 = !{!154}
!154 = distinct !{!154, !155, !"quoting_options_from_style: argument 0"}
!155 = distinct !{!155, !"quoting_options_from_style"}
!156 = distinct !{!156, !19}
!157 = !{!30, !13, i64 16}
!158 = !{!30, !13, i64 8}
!159 = !{!30, !13, i64 32}
!160 = !{!30, !13, i64 72}
!161 = !{!30, !31, i64 144}
