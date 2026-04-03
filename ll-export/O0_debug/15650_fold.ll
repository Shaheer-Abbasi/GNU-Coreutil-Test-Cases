; ModuleID = 'src/fold.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbbuf_t = type { i8*, %struct._IO_FILE*, i64, i64, i64 }
%struct.mcel_t = type { i32, i8, i8 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  -b, --bytes\0A         count bytes rather than columns\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"  -c, --characters\0A         count characters rather than columns\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -s, --spaces\0A         break after blanks, or in words greater than WIDTH\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"  -w, --width=WIDTH\0A         use WIDTH columns instead of 80\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [36 x i8] c"bcsw:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !0
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !77
@counting_mode = internal global i32 0, align 4, !dbg !91
@break_spaces = internal global i8 0, align 1, !dbg !63
@optarg = external global i8*, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal global i8 0, align 1, !dbg !66
@stdin = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !68
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@fold_file.line_out = internal global [262144 x i8] zeroinitializer, align 1, !dbg !93
@fold_file.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !104
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@last_character_width = internal global i32 0, align 4, !dbg !106
@.str.63 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), align 8, !dbg !111
@file_name = internal global i8* null, align 8, !dbg !116
@ignore_EPIPE = internal global i8 0, align 1, !dbg !121
@.str.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.71 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.72 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !123
@stderr = external global %struct._IO_FILE*, align 8
@.str.74 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !152
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !129
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !148
@.str.1.80 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.81 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.82 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !150
@.str.4.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.76 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.77 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !157
@.str.109 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.110 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !163
@.str.113 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.115 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.116 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.117 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.118 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.119 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.120 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.121 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.122 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.116, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.122, i32 0, i32 0), i8* null], align 8, !dbg !174
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !186
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !204
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !219
@nslots = internal global i32 1, align 4, !dbg !226
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !206
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !228
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !192
@.str.10.123 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.124 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.125 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !211
@.str.133 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.134 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.135 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.136 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.137 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.138 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.139 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.140 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.141 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.142 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.143 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.144 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.145 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.146 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.147 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.148 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.149 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.154 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.155 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.156 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.157 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.158 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.159 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.160 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !234
@exit_failure = dso_local global i32 1, align 4, !dbg !242
@.str.173 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.171 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.172 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.195 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !248
@.str.206 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !391 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !394, metadata !DIExpression()), !dbg !395
  %3 = load i32, i32* %2, align 4, !dbg !396
  %4 = icmp ne i32 %3, 0, !dbg !398
  br i1 %4, label %5, label %12, !dbg !399

5:                                                ; preds = %1
  br label %6, !dbg !400

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !401
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !401
  %9 = load i8*, i8** @program_name, align 8, !dbg !401
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !401
  br label %11, !dbg !401

11:                                               ; preds = %6
  br label %25, !dbg !401

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !403
  %14 = load i8*, i8** @program_name, align 8, !dbg !405
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !406
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !407
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !407
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !407
  call void @emit_stdin_note(), !dbg !408
  call void @emit_mandatory_arg_note(), !dbg !409
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !410
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !410
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !411
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !411
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !412
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !412
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !413
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !413
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !414
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !414
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !415
  call void @oputs_(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24), !dbg !415
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !416
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %2, align 4, !dbg !417
  call void @exit(i32 noundef %26) #20, !dbg !418
  unreachable, !dbg !418
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stdin_note() #4 !dbg !419 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0)) #19, !dbg !420
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !420
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !422 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0)) #19, !dbg !423
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !423
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !70 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !425, metadata !DIExpression()), !dbg !426
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !427, metadata !DIExpression()), !dbg !428
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !429
  %15 = icmp eq i32 %14, -1, !dbg !431
  br i1 %15, label %16, label %30, !dbg !432

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !433, metadata !DIExpression()), !dbg !435
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #19, !dbg !436
  store i8* %17, i8** %5, align 8, !dbg !435
  %18 = load i8*, i8** %5, align 8, !dbg !437
  %19 = icmp ne i8* %18, null, !dbg !437
  br i1 %19, label %20, label %27, !dbg !438

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !439
  %22 = load i8, i8* %21, align 1, !dbg !440
  %23 = icmp ne i8 %22, 0, !dbg !440
  br i1 %23, label %24, label %27, !dbg !441

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !442
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)), !dbg !443
  br label %27, !dbg !441

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !441
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !444
  br label %30, !dbg !445

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !446
  %32 = icmp ne i32 %31, 0, !dbg !446
  br i1 %32, label %33, label %37, !dbg !448

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !449
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !449
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !449
  br label %274, !dbg !451

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !452, metadata !DIExpression()), !dbg !453
  store i8 1, i8* %6, align 1, !dbg !453
  call void @llvm.dbg.declare(metadata i8** %7, metadata !454, metadata !DIExpression()), !dbg !455
  %38 = load i8*, i8** %4, align 8, !dbg !456
  %39 = load i8*, i8** %4, align 8, !dbg !457
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #21, !dbg !458
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !459
  store i8* %41, i8** %7, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata i8** %8, metadata !460, metadata !DIExpression()), !dbg !461
  %42 = load i8*, i8** %4, align 8, !dbg !462
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !463
  store i8* %43, i8** %8, align 8, !dbg !461
  %44 = load i8*, i8** %8, align 8, !dbg !464
  %45 = icmp ne i8* %44, null, !dbg !464
  br i1 %45, label %48, label %46, !dbg !466

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !467
  store i8* %47, i8** %8, align 8, !dbg !469
  store i8 0, i8* %6, align 1, !dbg !470
  br label %89, !dbg !471

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !472
  %50 = load i8*, i8** %7, align 8, !dbg !474
  %51 = icmp ne i8* %49, %50, !dbg !475
  br i1 %51, label %52, label %88, !dbg !476

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !477, metadata !DIExpression()), !dbg !479
  %53 = load i8*, i8** %7, align 8, !dbg !480
  store i8* %53, i8** %9, align 8, !dbg !479
  call void @llvm.dbg.declare(metadata i64* %10, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 0, i64* %10, align 8, !dbg !482
  br label %54, !dbg !483

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !484
  %56 = load i8*, i8** %8, align 8, !dbg !485
  %57 = icmp ult i8* %55, %56, !dbg !486
  br i1 %57, label %58, label %61, !dbg !487

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !488
  %60 = icmp ult i64 %59, 2, !dbg !489
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !490
  br i1 %62, label %63, label %82, !dbg !483

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !491
  %65 = load i16*, i16** %64, align 8, !dbg !491
  %66 = load i8*, i8** %9, align 8, !dbg !491
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !491
  store i8* %67, i8** %9, align 8, !dbg !491
  %68 = load i8, i8* %66, align 1, !dbg !491
  %69 = zext i8 %68 to i32, !dbg !491
  %70 = sext i32 %69 to i64, !dbg !491
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !491
  %72 = load i16, i16* %71, align 2, !dbg !491
  %73 = zext i16 %72 to i32, !dbg !491
  %74 = and i32 %73, 8192, !dbg !491
  %75 = icmp ne i32 %74, 0, !dbg !492
  %76 = xor i1 %75, true, !dbg !492
  %77 = xor i1 %76, true, !dbg !493
  %78 = zext i1 %77 to i32, !dbg !493
  %79 = sext i32 %78 to i64, !dbg !493
  %80 = load i64, i64* %10, align 8, !dbg !494
  %81 = add i64 %80, %79, !dbg !494
  store i64 %81, i64* %10, align 8, !dbg !494
  br label %54, !dbg !483, !llvm.loop !495

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !497
  %84 = icmp eq i64 %83, 2, !dbg !499
  br i1 %84, label %85, label %87, !dbg !500

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !501
  store i8* %86, i8** %8, align 8, !dbg !503
  store i8 0, i8* %6, align 1, !dbg !504
  br label %87, !dbg !505

87:                                               ; preds = %85, %82
  br label %88, !dbg !506

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !507, metadata !DIExpression()), !dbg !508
  %90 = load i8*, i8** %8, align 8, !dbg !509
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #21, !dbg !510
  store i64 %91, i64* %11, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata i8** %12, metadata !511, metadata !DIExpression()), !dbg !512
  %92 = load i8*, i8** %8, align 8, !dbg !513
  %93 = load i64, i64* %11, align 8, !dbg !514
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !515
  store i8* %94, i8** %12, align 8, !dbg !512
  br label %95, !dbg !516

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !517
  %97 = load i8, i8* %96, align 1, !dbg !518
  %98 = zext i8 %97 to i32, !dbg !518
  %99 = icmp ne i32 %98, 0, !dbg !518
  br i1 %99, label %100, label %105, !dbg !519

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !520
  %102 = load i8, i8* %101, align 1, !dbg !521
  %103 = zext i8 %102 to i32, !dbg !521
  %104 = icmp ne i32 %103, 10, !dbg !522
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !523
  br i1 %106, label %107, label %164, !dbg !516

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !524
  %109 = load i8, i8* %108, align 1, !dbg !527
  %110 = zext i8 %109 to i32, !dbg !527
  %111 = icmp eq i32 %110, 45, !dbg !528
  br i1 %111, label %112, label %119, !dbg !529

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !530
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !531
  %115 = load i8, i8* %114, align 1, !dbg !532
  %116 = zext i8 %115 to i32, !dbg !532
  %117 = icmp eq i32 %116, 45, !dbg !533
  br i1 %117, label %118, label %119, !dbg !534

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !535
  br label %119, !dbg !536

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !537
  %121 = load i16*, i16** %120, align 8, !dbg !537
  %122 = load i8*, i8** %12, align 8, !dbg !537
  %123 = load i8, i8* %122, align 1, !dbg !537
  %124 = zext i8 %123 to i32, !dbg !537
  %125 = sext i32 %124 to i64, !dbg !537
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !537
  %127 = load i16, i16* %126, align 2, !dbg !537
  %128 = zext i16 %127 to i32, !dbg !537
  %129 = and i32 %128, 8192, !dbg !537
  %130 = icmp ne i32 %129, 0, !dbg !537
  br i1 %130, label %131, label %161, !dbg !539

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !540
  %133 = load i8, i8* %132, align 1, !dbg !543
  %134 = zext i8 %133 to i32, !dbg !543
  %135 = icmp eq i32 %134, 9, !dbg !544
  br i1 %135, label %149, label %136, !dbg !545

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !546
  %138 = load i16*, i16** %137, align 8, !dbg !546
  %139 = load i8*, i8** %12, align 8, !dbg !546
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !546
  %141 = load i8, i8* %140, align 1, !dbg !546
  %142 = zext i8 %141 to i32, !dbg !546
  %143 = sext i32 %142 to i64, !dbg !546
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !546
  %145 = load i16, i16* %144, align 2, !dbg !546
  %146 = zext i16 %145 to i32, !dbg !546
  %147 = and i32 %146, 8192, !dbg !546
  %148 = icmp ne i32 %147, 0, !dbg !546
  br i1 %148, label %149, label %150, !dbg !547

149:                                              ; preds = %136, %131
  br label %164, !dbg !548

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !549
  %152 = trunc i8 %151 to i1, !dbg !549
  br i1 %152, label %160, label %153, !dbg !551

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !552
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !553
  %156 = load i8, i8* %155, align 1, !dbg !554
  %157 = zext i8 %156 to i32, !dbg !554
  %158 = icmp ne i32 %157, 45, !dbg !555
  br i1 %158, label %159, label %160, !dbg !556

159:                                              ; preds = %153
  br label %164, !dbg !557

160:                                              ; preds = %153, %150
  br label %161, !dbg !558

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !559
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !559
  store i8* %163, i8** %12, align 8, !dbg !559
  br label %95, !dbg !516, !llvm.loop !560

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !562
  %166 = load i8*, i8** %7, align 8, !dbg !562
  %167 = load i8*, i8** %4, align 8, !dbg !562
  %168 = ptrtoint i8* %166 to i64, !dbg !562
  %169 = ptrtoint i8* %167 to i64, !dbg !562
  %170 = sub i64 %168, %169, !dbg !562
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !562
  call void @llvm.dbg.declare(metadata i8** %13, metadata !563, metadata !DIExpression()), !dbg !564
  %173 = load i8*, i8** %3, align 8, !dbg !565
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !566
  br i1 %174, label %175, label %176, !dbg !566

175:                                              ; preds = %164
  br label %232, !dbg !566

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !567
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)), !dbg !568
  br i1 %178, label %179, label %180, !dbg !568

179:                                              ; preds = %176
  br label %230, !dbg !568

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !569
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)), !dbg !570
  br i1 %182, label %183, label %184, !dbg !570

183:                                              ; preds = %180
  br label %228, !dbg !570

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !571
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)), !dbg !572
  br i1 %186, label %187, label %188, !dbg !572

187:                                              ; preds = %184
  br label %226, !dbg !572

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !573
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)), !dbg !574
  br i1 %190, label %191, label %192, !dbg !574

191:                                              ; preds = %188
  br label %224, !dbg !574

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !575
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)), !dbg !576
  br i1 %194, label %195, label %196, !dbg !576

195:                                              ; preds = %192
  br label %222, !dbg !576

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !577
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !578
  br i1 %198, label %199, label %200, !dbg !578

199:                                              ; preds = %196
  br label %220, !dbg !578

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !579
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !580
  br i1 %202, label %203, label %204, !dbg !580

203:                                              ; preds = %200
  br label %218, !dbg !580

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !581
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !582
  br i1 %206, label %207, label %208, !dbg !582

207:                                              ; preds = %204
  br label %216, !dbg !582

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !583
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)), !dbg !584
  br i1 %210, label %211, label %212, !dbg !584

211:                                              ; preds = %208
  br label %214, !dbg !584

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !585
  br label %214, !dbg !584

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !584
  br label %216, !dbg !582

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !582
  br label %218, !dbg !580

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !580
  br label %220, !dbg !578

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !578
  br label %222, !dbg !576

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !576
  br label %224, !dbg !574

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !574
  br label %226, !dbg !572

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !572
  br label %228, !dbg !570

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !570
  br label %230, !dbg !568

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !568
  br label %232, !dbg !566

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !566
  store i8* %233, i8** %13, align 8, !dbg !564
  %234 = load i8*, i8** %8, align 8, !dbg !586
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #21, !dbg !586
  %236 = icmp eq i32 %235, 0, !dbg !586
  br i1 %236, label %241, label %237, !dbg !588

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !589
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #21, !dbg !589
  %240 = icmp eq i32 %239, 0, !dbg !589
  br i1 %240, label %241, label %248, !dbg !590

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !591
  %243 = load i8*, i8** %13, align 8, !dbg !593
  %244 = load i64, i64* %11, align 8, !dbg !594
  %245 = trunc i64 %244 to i32, !dbg !595
  %246 = load i8*, i8** %8, align 8, !dbg !596
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !597
  br label %254, !dbg !598

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !599
  %250 = load i64, i64* %11, align 8, !dbg !601
  %251 = trunc i64 %250 to i32, !dbg !602
  %252 = load i8*, i8** %8, align 8, !dbg !603
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !604
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !605
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !606
  %259 = load i8*, i8** %7, align 8, !dbg !607
  %260 = load i8*, i8** %12, align 8, !dbg !607
  %261 = load i8*, i8** %7, align 8, !dbg !607
  %262 = ptrtoint i8* %260 to i64, !dbg !607
  %263 = ptrtoint i8* %261 to i64, !dbg !607
  %264 = sub i64 %262, %263, !dbg !607
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !607
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !608
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !609
  %271 = load i8*, i8** %12, align 8, !dbg !610
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !610
  br label %274, !dbg !611

274:                                              ; preds = %254, %33
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !612 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !617, metadata !DIExpression()), !dbg !624
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !624
  call void @llvm.dbg.declare(metadata i8** %4, metadata !625, metadata !DIExpression()), !dbg !626
  %9 = load i8*, i8** %2, align 8, !dbg !627
  store i8* %9, i8** %4, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !628, metadata !DIExpression()), !dbg !630
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !631
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !630
  br label %11, !dbg !632

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !633
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !634
  %14 = load i8*, i8** %13, align 8, !dbg !634
  %15 = icmp ne i8* %14, null, !dbg !633
  br i1 %15, label %16, label %23, !dbg !635

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !636
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !637
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !638
  %20 = load i8*, i8** %19, align 8, !dbg !638
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !639
  %22 = xor i1 %21, true, !dbg !640
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !641
  br i1 %24, label %25, label %28, !dbg !632

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !642
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !642
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !642
  br label %11, !dbg !632, !llvm.loop !643

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !644
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !646
  %31 = load i8*, i8** %30, align 8, !dbg !646
  %32 = icmp ne i8* %31, null, !dbg !644
  br i1 %32, label %33, label %37, !dbg !647

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !648
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !649
  %36 = load i8*, i8** %35, align 8, !dbg !649
  store i8* %36, i8** %4, align 8, !dbg !650
  br label %37, !dbg !651

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !652
  call void @llvm.dbg.declare(metadata i8** %6, metadata !653, metadata !DIExpression()), !dbg !654
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !655
  store i8* %38, i8** %6, align 8, !dbg !654
  %39 = load i8*, i8** %6, align 8, !dbg !656
  %40 = icmp ne i8* %39, null, !dbg !656
  br i1 %40, label %41, label %49, !dbg !658

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !659
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #21, !dbg !659
  %44 = icmp ne i32 %43, 0, !dbg !659
  br i1 %44, label %45, label %49, !dbg !660

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0)) #19, !dbg !661
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !661
  br label %49, !dbg !663

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !664, metadata !DIExpression()), !dbg !665
  %50 = load i8*, i8** %2, align 8, !dbg !666
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !667
  br i1 %51, label %52, label %53, !dbg !667

52:                                               ; preds = %49
  br label %55, !dbg !667

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !668
  br label %55, !dbg !667

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !667
  store i8* %56, i8** %7, align 8, !dbg !665
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0)) #19, !dbg !669
  %58 = load i8*, i8** %7, align 8, !dbg !670
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %58), !dbg !671
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0)) #19, !dbg !672
  %61 = load i8*, i8** %4, align 8, !dbg !673
  %62 = load i8*, i8** %4, align 8, !dbg !674
  %63 = load i8*, i8** %2, align 8, !dbg !675
  %64 = icmp eq i8* %62, %63, !dbg !676
  %65 = zext i1 %64 to i64, !dbg !674
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !674
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !677
  ret void, !dbg !678
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !679 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !683, metadata !DIExpression()), !dbg !684
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata i64* %6, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 80, i64* %6, align 8, !dbg !688
  call void @llvm.dbg.declare(metadata i32* %7, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i8* %8, metadata !691, metadata !DIExpression()), !dbg !692
  %11 = load i8**, i8*** %5, align 8, !dbg !693
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !693
  %13 = load i8*, i8** %12, align 8, !dbg !693
  call void @set_program_name(i8* noundef %13), !dbg !694
  %14 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !695
  %15 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !696
  %16 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !697
  %17 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !698
  br label %18, !dbg !699

18:                                               ; preds = %51, %2
  %19 = load i32, i32* %4, align 4, !dbg !700
  %20 = load i8**, i8*** %5, align 8, !dbg !701
  %21 = call i32 @getopt_long(i32 noundef %19, i8** noundef %20, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @shortopts, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #19, !dbg !702
  store i32 %21, i32* %7, align 4, !dbg !703
  %22 = icmp ne i32 %21, -1, !dbg !704
  br i1 %22, label %23, label %52, !dbg !699

23:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata [2 x i8]* %9, metadata !705, metadata !DIExpression()), !dbg !708
  %24 = load i32, i32* %7, align 4, !dbg !709
  switch i32 %24, label %50 [
    i32 98, label %25
    i32 99, label %26
    i32 115, label %27
    i32 48, label %28
    i32 49, label %28
    i32 50, label %28
    i32 51, label %28
    i32 52, label %28
    i32 53, label %28
    i32 54, label %28
    i32 55, label %28
    i32 56, label %28
    i32 57, label %28
    i32 119, label %41
    i32 -2, label %45
    i32 -3, label %46
  ], !dbg !710

25:                                               ; preds = %23
  store i32 1, i32* @counting_mode, align 4, !dbg !711
  br label %51, !dbg !713

26:                                               ; preds = %23
  store i32 2, i32* @counting_mode, align 4, !dbg !714
  br label %51, !dbg !715

27:                                               ; preds = %23
  store i8 1, i8* @break_spaces, align 1, !dbg !716
  br label %51, !dbg !717

28:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %29 = load i8*, i8** @optarg, align 8, !dbg !718
  %30 = icmp ne i8* %29, null, !dbg !718
  br i1 %30, label %31, label %34, !dbg !720

31:                                               ; preds = %28
  %32 = load i8*, i8** @optarg, align 8, !dbg !721
  %33 = getelementptr inbounds i8, i8* %32, i32 -1, !dbg !721
  store i8* %33, i8** @optarg, align 8, !dbg !721
  br label %40, !dbg !722

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4, !dbg !723
  %36 = trunc i32 %35 to i8, !dbg !723
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0, !dbg !725
  store i8 %36, i8* %37, align 1, !dbg !726
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1, !dbg !727
  store i8 0, i8* %38, align 1, !dbg !728
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0, !dbg !729
  store i8* %39, i8** @optarg, align 8, !dbg !730
  br label %40

40:                                               ; preds = %34, %31
  br label %41, !dbg !718

41:                                               ; preds = %23, %40
  %42 = load i8*, i8** @optarg, align 8, !dbg !731
  %43 = call i8* @gettext(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !732
  %44 = call i64 @xnumtoumax(i8* noundef %42, i32 noundef 10, i64 noundef 1, i64 noundef -10, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* noundef %43, i32 noundef 0, i32 noundef 12), !dbg !733
  store i64 %44, i64* %6, align 8, !dbg !734
  br label %51, !dbg !735

45:                                               ; preds = %23
  call void @usage(i32 noundef 0) #23, !dbg !736
  unreachable, !dbg !736

46:                                               ; preds = %23
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737
  %48 = load i8*, i8** @Version, align 8, !dbg !737
  %49 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)), !dbg !737
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %48, i8* noundef %49, i8* noundef null), !dbg !737
  call void @exit(i32 noundef 0) #20, !dbg !737
  unreachable, !dbg !737

50:                                               ; preds = %23
  call void @usage(i32 noundef 1) #23, !dbg !738
  unreachable, !dbg !738

51:                                               ; preds = %41, %27, %26, %25
  br label %18, !dbg !699, !llvm.loop !739

52:                                               ; preds = %18
  %53 = load i32, i32* %4, align 4, !dbg !741
  %54 = load i32, i32* @optind, align 4, !dbg !743
  %55 = icmp eq i32 %53, %54, !dbg !744
  br i1 %55, label %56, label %60, !dbg !745

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8, !dbg !746
  %58 = call i1 @fold_file(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 noundef %57), !dbg !747
  %59 = zext i1 %58 to i8, !dbg !748
  store i8 %59, i8* %8, align 1, !dbg !748
  br label %85, !dbg !749

60:                                               ; preds = %52
  store i8 1, i8* %8, align 1, !dbg !750
  call void @llvm.dbg.declare(metadata i32* %10, metadata !752, metadata !DIExpression()), !dbg !754
  %61 = load i32, i32* @optind, align 4, !dbg !755
  store i32 %61, i32* %10, align 4, !dbg !754
  br label %62, !dbg !756

62:                                               ; preds = %81, %60
  %63 = load i32, i32* %10, align 4, !dbg !757
  %64 = load i32, i32* %4, align 4, !dbg !759
  %65 = icmp slt i32 %63, %64, !dbg !760
  br i1 %65, label %66, label %84, !dbg !761

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8, !dbg !762
  %68 = load i32, i32* %10, align 4, !dbg !763
  %69 = sext i32 %68 to i64, !dbg !762
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69, !dbg !762
  %71 = load i8*, i8** %70, align 8, !dbg !762
  %72 = load i64, i64* %6, align 8, !dbg !764
  %73 = call i1 @fold_file(i8* noundef %71, i64 noundef %72), !dbg !765
  %74 = zext i1 %73 to i32, !dbg !765
  %75 = load i8, i8* %8, align 1, !dbg !766
  %76 = trunc i8 %75 to i1, !dbg !766
  %77 = zext i1 %76 to i32, !dbg !766
  %78 = and i32 %77, %74, !dbg !766
  %79 = icmp ne i32 %78, 0, !dbg !766
  %80 = zext i1 %79 to i8, !dbg !766
  store i8 %80, i8* %8, align 1, !dbg !766
  br label %81, !dbg !767

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4, !dbg !768
  %83 = add nsw i32 %82, 1, !dbg !768
  store i32 %83, i32* %10, align 4, !dbg !768
  br label %62, !dbg !769, !llvm.loop !770

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8, i8* @have_read_stdin, align 1, !dbg !772
  %87 = trunc i8 %86 to i1, !dbg !772
  br i1 %87, label %88, label %95, !dbg !774

88:                                               ; preds = %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !775
  %90 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %89), !dbg !776
  %91 = icmp eq i32 %90, -1, !dbg !777
  br i1 %91, label %92, label %95, !dbg !778

92:                                               ; preds = %88
  %93 = call i32* @__errno_location() #22, !dbg !779
  %94 = load i32, i32* %93, align 4, !dbg !779
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %94, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !779
  unreachable, !dbg !779

95:                                               ; preds = %88, %85
  %96 = load i8, i8* %8, align 1, !dbg !780
  %97 = trunc i8 %96 to i1, !dbg !780
  %98 = zext i1 %97 to i64, !dbg !780
  %99 = select i1 %97, i32 0, i32 1, !dbg !780
  ret i32 %99, !dbg !781
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
define internal i1 @fold_file(i8* noundef %0, i64 noundef %1) #4 !dbg !95 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbbuf_t, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mcel_t, align 4
  %12 = alloca %struct.mcel_t, align 4
  %13 = alloca %struct.mcel_t, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mcel_t, align 4
  %19 = alloca %struct.mcel_t, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.mcel_t, align 4
  %23 = alloca %struct.mcel_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !782, metadata !DIExpression()), !dbg !783
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !786, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata i64* %7, metadata !841, metadata !DIExpression()), !dbg !842
  store i64 0, i64* %7, align 8, !dbg !842
  call void @llvm.dbg.declare(metadata i64* %8, metadata !843, metadata !DIExpression()), !dbg !844
  store i64 0, i64* %8, align 8, !dbg !844
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t* %9, metadata !845, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata i32* %10, metadata !856, metadata !DIExpression()), !dbg !857
  %24 = load i8*, i8** %4, align 8, !dbg !858
  %25 = call i1 @streq(i8* noundef %24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !860
  br i1 %25, label %26, label %28, !dbg !861

26:                                               ; preds = %2
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !862
  store %struct._IO_FILE* %27, %struct._IO_FILE** %6, align 8, !dbg !864
  store i8 1, i8* @have_read_stdin, align 1, !dbg !865
  br label %31, !dbg !866

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8, !dbg !867
  %30 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)), !dbg !868
  store %struct._IO_FILE* %30, %struct._IO_FILE** %6, align 8, !dbg !869
  br label %31

31:                                               ; preds = %28, %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !870
  %33 = icmp eq %struct._IO_FILE* %32, null, !dbg !872
  br i1 %33, label %34, label %39, !dbg !873

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !874
  %36 = load i32, i32* %35, align 4, !dbg !874
  %37 = load i8*, i8** %4, align 8, !dbg !874
  %38 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %37), !dbg !874
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %38), !dbg !874
  store i1 false, i1* %3, align 1, !dbg !876
  br label %224, !dbg !876

39:                                               ; preds = %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !877
  call void @fadvise(%struct._IO_FILE* noundef %40, i32 noundef 2), !dbg !878
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !879
  call void @mbbuf_init(%struct.mbbuf_t* noundef %9, i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_in, i64 0, i64 0), i64 noundef 262144, %struct._IO_FILE* noundef %41), !dbg !880
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %11, metadata !881, metadata !DIExpression()), !dbg !892
  br label %42, !dbg !893

42:                                               ; preds = %174, %151, %56, %39
  %43 = call i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %9), !dbg !894
  %44 = bitcast %struct.mcel_t* %13 to i64*, !dbg !894
  store i64 %43, i64* %44, align 4, !dbg !894
  %45 = bitcast %struct.mcel_t* %11 to i8*, !dbg !894
  %46 = bitcast %struct.mcel_t* %13 to i8*, !dbg !894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 8, i1 false), !dbg !894
  %47 = bitcast %struct.mcel_t* %12 to i8*, !dbg !895
  %48 = bitcast %struct.mcel_t* %11 to i8*, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false), !dbg !895
  %49 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %12, i32 0, i32 0, !dbg !896
  %50 = load i32, i32* %49, align 4, !dbg !896
  %51 = icmp ne i32 %50, -1, !dbg !897
  br i1 %51, label %52, label %188, !dbg !893

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 0, !dbg !898
  %54 = load i32, i32* %53, align 4, !dbg !898
  %55 = icmp eq i32 %54, 10, !dbg !901
  br i1 %55, label %56, label %58, !dbg !902

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8, !dbg !903
  call void @write_out(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef %57, i1 noundef true), !dbg !905
  store i64 0, i64* %8, align 8, !dbg !906
  store i64 0, i64* %7, align 8, !dbg !907
  br label %42, !dbg !908, !llvm.loop !909

58:                                               ; preds = %52
  br label %59, !dbg !911

59:                                               ; preds = %163, %146, %58
  call void @llvm.dbg.label(metadata !912), !dbg !913
  %60 = load i64, i64* %7, align 8, !dbg !914
  %61 = bitcast %struct.mcel_t* %11 to i64*, !dbg !915
  %62 = load i64, i64* %61, align 4, !dbg !915
  %63 = call i64 @adjust_column(i64 noundef %60, i64 %62), !dbg !915
  store i64 %63, i64* %7, align 8, !dbg !916
  %64 = load i64, i64* %7, align 8, !dbg !917
  %65 = load i64, i64* %5, align 8, !dbg !919
  %66 = icmp ugt i64 %64, %65, !dbg !920
  br i1 %66, label %67, label %165, !dbg !921

67:                                               ; preds = %59
  %68 = load i8, i8* @break_spaces, align 1, !dbg !922
  %69 = trunc i8 %68 to i1, !dbg !922
  br i1 %69, label %70, label %148, !dbg !925

70:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i32* %14, metadata !926, metadata !DIExpression()), !dbg !928
  store i32 0, i32* %14, align 4, !dbg !928
  call void @llvm.dbg.declare(metadata i64* %15, metadata !929, metadata !DIExpression()), !dbg !930
  %71 = load i64, i64* %8, align 8, !dbg !931
  store i64 %71, i64* %15, align 8, !dbg !930
  call void @llvm.dbg.declare(metadata i8** %16, metadata !932, metadata !DIExpression()), !dbg !933
  store i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8** %16, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata i8** %17, metadata !934, metadata !DIExpression()), !dbg !935
  %72 = load i8*, i8** %16, align 8, !dbg !936
  %73 = load i64, i64* %15, align 8, !dbg !937
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !938
  store i8* %74, i8** %17, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %18, metadata !939, metadata !DIExpression()), !dbg !941
  br label %75, !dbg !942

75:                                               ; preds = %97, %70
  %76 = load i8*, i8** %16, align 8, !dbg !943
  %77 = load i8*, i8** %17, align 8, !dbg !945
  %78 = icmp ult i8* %76, %77, !dbg !946
  br i1 %78, label %79, label %104, !dbg !947

79:                                               ; preds = %75
  %80 = load i8*, i8** %16, align 8, !dbg !948
  %81 = load i8*, i8** %17, align 8, !dbg !950
  %82 = call i64 @mcel_scan(i8* noundef %80, i8* noundef %81), !dbg !951
  %83 = bitcast %struct.mcel_t* %19 to i64*, !dbg !951
  store i64 %82, i64* %83, align 4, !dbg !951
  %84 = bitcast %struct.mcel_t* %18 to i8*, !dbg !951
  %85 = bitcast %struct.mcel_t* %19 to i8*, !dbg !951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false), !dbg !951
  %86 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %18, i32 0, i32 0, !dbg !952
  %87 = load i32, i32* %86, align 4, !dbg !952
  %88 = call i1 @c32issep(i32 noundef %87) #21, !dbg !954
  br i1 %88, label %89, label %96, !dbg !955

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %18, i32 0, i32 2, !dbg !956
  %91 = load i8, i8* %90, align 1, !dbg !956
  %92 = zext i8 %91 to i32, !dbg !958
  store i32 %92, i32* %14, align 4, !dbg !959
  %93 = load i8*, i8** %16, align 8, !dbg !960
  %94 = ptrtoint i8* %93 to i64, !dbg !961
  %95 = sub i64 %94, ptrtoint ([262144 x i8]* @fold_file.line_out to i64), !dbg !961
  store i64 %95, i64* %15, align 8, !dbg !962
  br label %96, !dbg !963

96:                                               ; preds = %89, %79
  br label %97, !dbg !964

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %18, i32 0, i32 2, !dbg !965
  %99 = load i8, i8* %98, align 1, !dbg !965
  %100 = zext i8 %99 to i32, !dbg !966
  %101 = load i8*, i8** %16, align 8, !dbg !967
  %102 = sext i32 %100 to i64, !dbg !967
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !967
  store i8* %103, i8** %16, align 8, !dbg !967
  br label %75, !dbg !968, !llvm.loop !969

104:                                              ; preds = %75
  %105 = load i32, i32* %14, align 4, !dbg !971
  %106 = icmp ne i32 %105, 0, !dbg !971
  br i1 %106, label %107, label %147, !dbg !973

107:                                              ; preds = %104
  %108 = load i32, i32* %14, align 4, !dbg !974
  %109 = sext i32 %108 to i64, !dbg !974
  %110 = load i64, i64* %15, align 8, !dbg !976
  %111 = add nsw i64 %110, %109, !dbg !976
  store i64 %111, i64* %15, align 8, !dbg !976
  %112 = load i64, i64* %15, align 8, !dbg !977
  call void @write_out(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef %112, i1 noundef true), !dbg !978
  %113 = load i64, i64* %15, align 8, !dbg !979
  %114 = getelementptr inbounds i8, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 %113, !dbg !980
  %115 = load i64, i64* %8, align 8, !dbg !981
  %116 = load i64, i64* %15, align 8, !dbg !982
  %117 = sub nsw i64 %115, %116, !dbg !983
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* align 1 %114, i64 %117, i1 false), !dbg !984
  %118 = load i64, i64* %15, align 8, !dbg !985
  %119 = load i64, i64* %8, align 8, !dbg !986
  %120 = sub nsw i64 %119, %118, !dbg !986
  store i64 %120, i64* %8, align 8, !dbg !986
  store i64 0, i64* %7, align 8, !dbg !987
  call void @llvm.dbg.declare(metadata i8** %20, metadata !988, metadata !DIExpression()), !dbg !989
  store i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8** %20, align 8, !dbg !989
  call void @llvm.dbg.declare(metadata i8** %21, metadata !990, metadata !DIExpression()), !dbg !991
  %121 = load i8*, i8** %20, align 8, !dbg !992
  %122 = load i64, i64* %8, align 8, !dbg !993
  %123 = getelementptr inbounds i8, i8* %121, i64 %122, !dbg !994
  store i8* %123, i8** %21, align 8, !dbg !991
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %22, metadata !995, metadata !DIExpression()), !dbg !997
  br label %124, !dbg !998

124:                                              ; preds = %139, %107
  %125 = load i8*, i8** %20, align 8, !dbg !999
  %126 = load i8*, i8** %21, align 8, !dbg !1001
  %127 = icmp ult i8* %125, %126, !dbg !1002
  br i1 %127, label %128, label %146, !dbg !1003

128:                                              ; preds = %124
  %129 = load i8*, i8** %20, align 8, !dbg !1004
  %130 = load i8*, i8** %21, align 8, !dbg !1006
  %131 = call i64 @mcel_scan(i8* noundef %129, i8* noundef %130), !dbg !1007
  %132 = bitcast %struct.mcel_t* %23 to i64*, !dbg !1007
  store i64 %131, i64* %132, align 4, !dbg !1007
  %133 = bitcast %struct.mcel_t* %22 to i8*, !dbg !1007
  %134 = bitcast %struct.mcel_t* %23 to i8*, !dbg !1007
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 8, i1 false), !dbg !1007
  %135 = load i64, i64* %7, align 8, !dbg !1008
  %136 = bitcast %struct.mcel_t* %22 to i64*, !dbg !1009
  %137 = load i64, i64* %136, align 4, !dbg !1009
  %138 = call i64 @adjust_column(i64 noundef %135, i64 %137), !dbg !1009
  store i64 %138, i64* %7, align 8, !dbg !1010
  br label %139, !dbg !1011

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %22, i32 0, i32 2, !dbg !1012
  %141 = load i8, i8* %140, align 1, !dbg !1012
  %142 = zext i8 %141 to i32, !dbg !1013
  %143 = load i8*, i8** %20, align 8, !dbg !1014
  %144 = sext i32 %142 to i64, !dbg !1014
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1014
  store i8* %145, i8** %20, align 8, !dbg !1014
  br label %124, !dbg !1015, !llvm.loop !1016

146:                                              ; preds = %124
  br label %59, !dbg !1018

147:                                              ; preds = %104
  br label %148, !dbg !1019

148:                                              ; preds = %147, %67
  %149 = load i64, i64* %8, align 8, !dbg !1020
  %150 = icmp eq i64 %149, 0, !dbg !1022
  br i1 %150, label %151, label %163, !dbg !1023

151:                                              ; preds = %148
  %152 = bitcast %struct.mcel_t* %11 to i64*, !dbg !1024
  %153 = load i64, i64* %152, align 4, !dbg !1024
  %154 = call i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %9, i64 %153), !dbg !1024
  %155 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 2, !dbg !1026
  %156 = load i8, i8* %155, align 1, !dbg !1026
  %157 = zext i8 %156 to i64, !dbg !1027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i8* align 1 %154, i64 %157, i1 false), !dbg !1028
  %158 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 2, !dbg !1029
  %159 = load i8, i8* %158, align 1, !dbg !1029
  %160 = zext i8 %159 to i64, !dbg !1030
  %161 = load i64, i64* %8, align 8, !dbg !1031
  %162 = add nsw i64 %161, %160, !dbg !1031
  store i64 %162, i64* %8, align 8, !dbg !1031
  br label %42, !dbg !1032, !llvm.loop !909

163:                                              ; preds = %148
  %164 = load i64, i64* %8, align 8, !dbg !1033
  call void @write_out(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef %164, i1 noundef true), !dbg !1034
  store i64 0, i64* %8, align 8, !dbg !1035
  store i64 0, i64* %7, align 8, !dbg !1036
  br label %59, !dbg !1037

165:                                              ; preds = %59
  %166 = load i64, i64* %8, align 8, !dbg !1038
  %167 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 2, !dbg !1040
  %168 = load i8, i8* %167, align 1, !dbg !1040
  %169 = zext i8 %168 to i64, !dbg !1041
  %170 = add nsw i64 %166, %169, !dbg !1042
  %171 = icmp ule i64 262144, %170, !dbg !1043
  br i1 %171, label %172, label %174, !dbg !1044

172:                                              ; preds = %165
  %173 = load i64, i64* %8, align 8, !dbg !1045
  call void @write_out(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef %173, i1 noundef false), !dbg !1047
  store i64 0, i64* %8, align 8, !dbg !1048
  br label %174, !dbg !1049

174:                                              ; preds = %172, %165
  %175 = load i64, i64* %8, align 8, !dbg !1050
  %176 = getelementptr inbounds i8, i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 %175, !dbg !1051
  %177 = bitcast %struct.mcel_t* %11 to i64*, !dbg !1052
  %178 = load i64, i64* %177, align 4, !dbg !1052
  %179 = call i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %9, i64 %178), !dbg !1052
  %180 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 2, !dbg !1053
  %181 = load i8, i8* %180, align 1, !dbg !1053
  %182 = zext i8 %181 to i64, !dbg !1054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %176, i8* align 1 %179, i64 %182, i1 false), !dbg !1055
  %183 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %11, i32 0, i32 2, !dbg !1056
  %184 = load i8, i8* %183, align 1, !dbg !1056
  %185 = zext i8 %184 to i64, !dbg !1057
  %186 = load i64, i64* %8, align 8, !dbg !1058
  %187 = add nsw i64 %186, %185, !dbg !1058
  store i64 %187, i64* %8, align 8, !dbg !1058
  br label %42, !dbg !893, !llvm.loop !909

188:                                              ; preds = %42
  %189 = call i32* @__errno_location() #22, !dbg !1059
  %190 = load i32, i32* %189, align 4, !dbg !1059
  store i32 %190, i32* %10, align 4, !dbg !1060
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1061
  %192 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %191) #19, !dbg !1061
  %193 = icmp ne i32 %192, 0, !dbg !1061
  br i1 %193, label %195, label %194, !dbg !1063

194:                                              ; preds = %188
  store i32 0, i32* %10, align 4, !dbg !1064
  br label %195, !dbg !1065

195:                                              ; preds = %194, %188
  %196 = load i64, i64* %8, align 8, !dbg !1066
  %197 = icmp ne i64 %196, 0, !dbg !1066
  br i1 %197, label %198, label %200, !dbg !1068

198:                                              ; preds = %195
  %199 = load i64, i64* %8, align 8, !dbg !1069
  call void @write_out(i8* noundef getelementptr inbounds ([262144 x i8], [262144 x i8]* @fold_file.line_out, i64 0, i64 0), i64 noundef %199, i1 noundef false), !dbg !1070
  br label %200, !dbg !1070

200:                                              ; preds = %198, %195
  %201 = load i8*, i8** %4, align 8, !dbg !1071
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1073
  br i1 %202, label %203, label %205, !dbg !1074

203:                                              ; preds = %200
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1075
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %204) #19, !dbg !1075
  br label %216, !dbg !1075

205:                                              ; preds = %200
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1076
  %207 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %206), !dbg !1078
  %208 = icmp ne i32 %207, 0, !dbg !1079
  br i1 %208, label %209, label %215, !dbg !1080

209:                                              ; preds = %205
  %210 = load i32, i32* %10, align 4, !dbg !1081
  %211 = icmp ne i32 %210, 0, !dbg !1081
  br i1 %211, label %215, label %212, !dbg !1082

212:                                              ; preds = %209
  %213 = call i32* @__errno_location() #22, !dbg !1083
  %214 = load i32, i32* %213, align 4, !dbg !1083
  store i32 %214, i32* %10, align 4, !dbg !1084
  br label %215, !dbg !1085

215:                                              ; preds = %212, %209, %205
  br label %216

216:                                              ; preds = %215, %203
  %217 = load i32, i32* %10, align 4, !dbg !1086
  %218 = icmp ne i32 %217, 0, !dbg !1086
  br i1 %218, label %219, label %223, !dbg !1088

219:                                              ; preds = %216
  %220 = load i32, i32* %10, align 4, !dbg !1089
  %221 = load i8*, i8** %4, align 8, !dbg !1089
  %222 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %221), !dbg !1089
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %220, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef %222), !dbg !1089
  store i1 false, i1* %3, align 1, !dbg !1091
  br label %224, !dbg !1091

223:                                              ; preds = %216
  store i1 true, i1* %3, align 1, !dbg !1092
  br label %224, !dbg !1092

224:                                              ; preds = %223, %219, %34
  %225 = load i1, i1* %3, align 1, !dbg !1093
  ret i1 %225, !dbg !1093
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_out(i8* noundef %0, i64 noundef %1, i1 noundef %2) #4 !dbg !1094 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1099, metadata !DIExpression()), !dbg !1100
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1101, metadata !DIExpression()), !dbg !1102
  %8 = load i8*, i8** %4, align 8, !dbg !1103
  %9 = load i64, i64* %5, align 8, !dbg !1103
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1103
  %11 = call i64 @fwrite_unlocked(i8* noundef %8, i64 noundef 1, i64 noundef %9, %struct._IO_FILE* noundef %10), !dbg !1103
  %12 = load i64, i64* %5, align 8, !dbg !1105
  %13 = icmp ne i64 %11, %12, !dbg !1106
  br i1 %13, label %20, label %14, !dbg !1107

14:                                               ; preds = %3
  %15 = load i8, i8* %6, align 1, !dbg !1108
  %16 = trunc i8 %15 to i1, !dbg !1108
  br i1 %16, label %17, label %21, !dbg !1109

17:                                               ; preds = %14
  %18 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !1110
  %19 = icmp slt i32 %18, 0, !dbg !1111
  br i1 %19, label %20, label %21, !dbg !1112

20:                                               ; preds = %17, %3
  call void @write_error(), !dbg !1113
  br label %21, !dbg !1113

21:                                               ; preds = %20, %17, %14
  ret void, !dbg !1114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_column(i64 noundef %0, i64 %1) #4 !dbg !1115 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %1, i64* %6, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !1120, metadata !DIExpression()), !dbg !1121
  %7 = load i32, i32* @counting_mode, align 4, !dbg !1122
  %8 = icmp ne i32 %7, 1, !dbg !1124
  br i1 %8, label %9, label %60, !dbg !1125

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !1126
  %11 = load i32, i32* %10, align 4, !dbg !1126
  %12 = icmp eq i32 %11, 8, !dbg !1129
  br i1 %12, label %13, label %22, !dbg !1130

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8, !dbg !1131
  %15 = icmp ugt i64 %14, 0, !dbg !1134
  br i1 %15, label %16, label %21, !dbg !1135

16:                                               ; preds = %13
  %17 = load i32, i32* @last_character_width, align 4, !dbg !1136
  %18 = sext i32 %17 to i64, !dbg !1136
  %19 = load i64, i64* %4, align 8, !dbg !1137
  %20 = sub i64 %19, %18, !dbg !1137
  store i64 %20, i64* %4, align 8, !dbg !1137
  br label %21, !dbg !1138

21:                                               ; preds = %16, %13
  br label %59, !dbg !1139

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !1140
  %24 = load i32, i32* %23, align 4, !dbg !1140
  %25 = icmp eq i32 %24, 13, !dbg !1142
  br i1 %25, label %26, label %27, !dbg !1143

26:                                               ; preds = %22
  store i64 0, i64* %4, align 8, !dbg !1144
  br label %58, !dbg !1145

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !1146
  %29 = load i32, i32* %28, align 4, !dbg !1146
  %30 = icmp eq i32 %29, 9, !dbg !1148
  br i1 %30, label %31, label %37, !dbg !1149

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8, !dbg !1150
  %33 = urem i64 %32, 8, !dbg !1151
  %34 = sub i64 8, %33, !dbg !1152
  %35 = load i64, i64* %4, align 8, !dbg !1153
  %36 = add i64 %35, %34, !dbg !1153
  store i64 %36, i64* %4, align 8, !dbg !1153
  br label %57, !dbg !1154

37:                                               ; preds = %27
  %38 = load i32, i32* @counting_mode, align 4, !dbg !1155
  %39 = icmp eq i32 %38, 2, !dbg !1158
  br i1 %39, label %40, label %41, !dbg !1159

40:                                               ; preds = %37
  store i32 1, i32* @last_character_width, align 4, !dbg !1160
  br label %52, !dbg !1161

41:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1162, metadata !DIExpression()), !dbg !1164
  %42 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !1165
  %43 = load i32, i32* %42, align 4, !dbg !1165
  %44 = call i32 @c32width(i32 noundef %43), !dbg !1166
  store i32 %44, i32* %5, align 4, !dbg !1164
  %45 = load i32, i32* %5, align 4, !dbg !1167
  %46 = icmp slt i32 %45, 0, !dbg !1168
  br i1 %46, label %47, label %48, !dbg !1167

47:                                               ; preds = %41
  br label %50, !dbg !1167

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4, !dbg !1169
  br label %50, !dbg !1167

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 1, %47 ], [ %49, %48 ], !dbg !1167
  store i32 %51, i32* @last_character_width, align 4, !dbg !1170
  br label %52

52:                                               ; preds = %50, %40
  %53 = load i32, i32* @last_character_width, align 4, !dbg !1171
  %54 = sext i32 %53 to i64, !dbg !1171
  %55 = load i64, i64* %4, align 8, !dbg !1172
  %56 = add i64 %55, %54, !dbg !1172
  store i64 %56, i64* %4, align 8, !dbg !1172
  br label %57

57:                                               ; preds = %52, %31
  br label %58

58:                                               ; preds = %57, %26
  br label %59

59:                                               ; preds = %58, %21
  br label %66, !dbg !1173

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !1174
  %62 = load i8, i8* %61, align 1, !dbg !1174
  %63 = zext i8 %62 to i64, !dbg !1175
  %64 = load i64, i64* %4, align 8, !dbg !1176
  %65 = add i64 %64, %63, !dbg !1176
  store i64 %65, i64* %4, align 8, !dbg !1176
  br label %66

66:                                               ; preds = %60, %59
  %67 = load i64, i64* %4, align 8, !dbg !1177
  ret i64 %67, !dbg !1178
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i1 @c32issep(i32 noundef %0) #9 !dbg !1179 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1182, metadata !DIExpression()), !dbg !1183
  %3 = load i32, i32* %2, align 4, !dbg !1184
  %4 = call i32 @c32isblank(i32 noundef %3), !dbg !1185
  %5 = icmp ne i32 %4, 0, !dbg !1186
  %6 = xor i1 %5, true, !dbg !1186
  %7 = xor i1 %6, true, !dbg !1187
  ret i1 %7, !dbg !1188
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) #2

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #4 !dbg !1189 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1190, metadata !DIExpression()), !dbg !1191
  %2 = call i32* @__errno_location() #22, !dbg !1192
  %3 = load i32, i32* %2, align 4, !dbg !1192
  store i32 %3, i32* %1, align 4, !dbg !1191
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1193
  %5 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4), !dbg !1193
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1194
  %7 = call i32 @fpurge(%struct._IO_FILE* noundef %6), !dbg !1195
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %8) #19, !dbg !1196
  %9 = load i32, i32* %1, align 4, !dbg !1197
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0)) #19, !dbg !1197
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %10), !dbg !1197
  unreachable, !dbg !1197
}

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isblank(i32 noundef %0) #4 !dbg !1198 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1204, metadata !DIExpression()), !dbg !1205
  %3 = load i32, i32* %2, align 4, !dbg !1206
  %4 = call i32 @iswblank(i32 noundef %3) #19, !dbg !1207
  ret i32 %4, !dbg !1208
}

; Function Attrs: nounwind
declare i32 @iswblank(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32width(i32 noundef %0) #4 !dbg !1209 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1212, metadata !DIExpression()), !dbg !1213
  %3 = load i32, i32* %2, align 4, !dbg !1214
  %4 = call i32 @wcwidth(i32 noundef %3) #19, !dbg !1215
  ret i32 %4, !dbg !1216
}

; Function Attrs: nounwind
declare i32 @wcwidth(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1217 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1218, metadata !DIExpression()), !dbg !1219
  %3 = load i8*, i8** %2, align 8, !dbg !1220
  store i8* %3, i8** @file_name, align 8, !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1223 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1226, metadata !DIExpression()), !dbg !1227
  %4 = load i8, i8* %2, align 1, !dbg !1228
  %5 = trunc i8 %4 to i1, !dbg !1228
  %6 = zext i1 %5 to i8, !dbg !1229
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1229
  ret void, !dbg !1230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1231 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1234
  %4 = icmp ne i32 %3, 0, !dbg !1235
  br i1 %4, label %5, label %28, !dbg !1236

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1237
  %7 = trunc i8 %6 to i1, !dbg !1237
  br i1 %7, label %8, label %12, !dbg !1238

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !1239
  %10 = load i32, i32* %9, align 4, !dbg !1239
  %11 = icmp eq i32 %10, 32, !dbg !1240
  br i1 %11, label %28, label %12, !dbg !1241

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1242, metadata !DIExpression()), !dbg !1244
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.71, i64 0, i64 0)) #19, !dbg !1245
  store i8* %13, i8** %1, align 8, !dbg !1244
  %14 = load i8*, i8** @file_name, align 8, !dbg !1246
  %15 = icmp ne i8* %14, null, !dbg !1246
  br i1 %15, label %16, label %22, !dbg !1248

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !1249
  %18 = load i32, i32* %17, align 4, !dbg !1249
  %19 = load i8*, i8** @file_name, align 8, !dbg !1249
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1249
  %21 = load i8*, i8** %1, align 8, !dbg !1249
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.72, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1249
  br label %26, !dbg !1249

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !1250
  %24 = load i32, i32* %23, align 4, !dbg !1250
  %25 = load i8*, i8** %1, align 8, !dbg !1250
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.73, i64 0, i64 0), i8* noundef %25), !dbg !1250
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1251
  call void @_exit(i32 noundef %27) #23, !dbg !1252
  unreachable, !dbg !1252

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1253
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1255
  %31 = icmp ne i32 %30, 0, !dbg !1256
  br i1 %31, label %32, label %34, !dbg !1257

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1258
  call void @_exit(i32 noundef %33) #23, !dbg !1259
  unreachable, !dbg !1259

34:                                               ; preds = %28
  ret void, !dbg !1260
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !1261 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1266, metadata !DIExpression()), !dbg !1265
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1267, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1268, metadata !DIExpression()), !dbg !1265
  call void @flush_stdout(), !dbg !1269
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1270
  %10 = icmp ne void ()* %9, null, !dbg !1270
  br i1 %10, label %11, label %13, !dbg !1272

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1273
  call void %12(), !dbg !1274
  br label %17, !dbg !1274

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1275
  %15 = call i8* @getprogname() #21, !dbg !1277
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef %15), !dbg !1278
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1279
  %19 = load i32, i32* %6, align 4, !dbg !1279
  %20 = load i8*, i8** %7, align 8, !dbg !1279
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1279
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1279
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1281 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i32 1, i32* %1, align 4, !dbg !1284
  %2 = load i32, i32* %1, align 4, !dbg !1285
  %3 = icmp sle i32 0, %2, !dbg !1287
  br i1 %3, label %4, label %11, !dbg !1288

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1289
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1290
  %7 = icmp ne i32 %6, 0, !dbg !1290
  br i1 %7, label %8, label %11, !dbg !1291

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1292
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1292
  br label %11, !dbg !1292

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1293
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1294 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1297, metadata !DIExpression()), !dbg !1296
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1298, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1299, metadata !DIExpression()), !dbg !1296
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1300
  %10 = load i8*, i8** %7, align 8, !dbg !1301
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1302
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1302
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1302
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1303
  %15 = add i32 %14, 1, !dbg !1303
  store i32 %15, i32* @error_message_count, align 4, !dbg !1303
  %16 = load i32, i32* %6, align 4, !dbg !1304
  %17 = icmp ne i32 %16, 0, !dbg !1304
  br i1 %17, label %18, label %20, !dbg !1306

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1307
  call void @print_errno_message(i32 noundef %19), !dbg !1308
  br label %20, !dbg !1308

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1309
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1309
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1310
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1310
  %25 = load i32, i32* %5, align 4, !dbg !1311
  %26 = icmp ne i32 %25, 0, !dbg !1311
  br i1 %26, label %27, label %29, !dbg !1313

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1314
  call void @exit(i32 noundef %28) #20, !dbg !1315
  unreachable, !dbg !1315

29:                                               ; preds = %20
  ret void, !dbg !1316
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1317 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1322, metadata !DIExpression()), !dbg !1326
  %5 = load i32, i32* %2, align 4, !dbg !1327
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1328
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1329
  store i8* %7, i8** %3, align 8, !dbg !1330
  %8 = load i8*, i8** %3, align 8, !dbg !1331
  %9 = icmp ne i8* %8, null, !dbg !1331
  br i1 %9, label %12, label %10, !dbg !1333

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.76, i64 0, i64 0)) #19, !dbg !1334
  store i8* %11, i8** %3, align 8, !dbg !1335
  br label %12, !dbg !1336

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1337
  %14 = load i8*, i8** %3, align 8, !dbg !1338
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.77, i64 0, i64 0), i8* noundef %14), !dbg !1339
  ret void, !dbg !1340
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1341 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1344, metadata !DIExpression()), !dbg !1345
  %3 = load i32, i32* %2, align 4, !dbg !1346
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1347
  %5 = icmp sle i32 0, %4, !dbg !1348
  %6 = zext i1 %5 to i32, !dbg !1348
  ret i32 %6, !dbg !1349
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1350 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1353, metadata !DIExpression()), !dbg !1354
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1359, metadata !DIExpression()), !dbg !1360
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1361
  call void @llvm.va_start(i8* %9), !dbg !1361
  %10 = load i32, i32* %4, align 4, !dbg !1362
  %11 = load i32, i32* %5, align 4, !dbg !1362
  %12 = load i8*, i8** %6, align 8, !dbg !1362
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1362
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1362
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !1362
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1363
  call void @llvm.va_end(i8* %15), !dbg !1363
  ret void, !dbg !1364
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !131 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1367, metadata !DIExpression()), !dbg !1366
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1368, metadata !DIExpression()), !dbg !1366
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1369, metadata !DIExpression()), !dbg !1366
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1370, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1371, metadata !DIExpression()), !dbg !1366
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1372
  %14 = icmp ne i32 %13, 0, !dbg !1372
  br i1 %14, label %15, label %38, !dbg !1374

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1375
  %17 = load i32, i32* %10, align 4, !dbg !1378
  %18 = icmp eq i32 %16, %17, !dbg !1379
  br i1 %18, label %19, label %35, !dbg !1380

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1381
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1382
  %22 = icmp eq i8* %20, %21, !dbg !1383
  br i1 %22, label %34, label %23, !dbg !1384

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1385
  %25 = icmp ne i8* %24, null, !dbg !1386
  br i1 %25, label %26, label %35, !dbg !1387

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1388
  %28 = icmp ne i8* %27, null, !dbg !1389
  br i1 %28, label %29, label %35, !dbg !1390

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1391
  %31 = load i8*, i8** %9, align 8, !dbg !1392
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1393
  %33 = icmp eq i32 %32, 0, !dbg !1394
  br i1 %33, label %34, label %35, !dbg !1395

34:                                               ; preds = %29, %19
  br label %61, !dbg !1396

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1397
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1398
  %37 = load i32, i32* %10, align 4, !dbg !1399
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1400
  br label %38, !dbg !1401

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1402
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1403
  %40 = icmp ne void ()* %39, null, !dbg !1403
  br i1 %40, label %41, label %43, !dbg !1405

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1406
  call void %42(), !dbg !1407
  br label %47, !dbg !1407

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1408
  %45 = call i8* @getprogname() #21, !dbg !1410
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.80, i64 0, i64 0), i8* noundef %45), !dbg !1411
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1412
  %49 = load i8*, i8** %9, align 8, !dbg !1413
  %50 = icmp ne i8* %49, null, !dbg !1414
  %51 = zext i1 %50 to i64, !dbg !1413
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), !dbg !1413
  %53 = load i8*, i8** %9, align 8, !dbg !1415
  %54 = load i32, i32* %10, align 4, !dbg !1416
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1417
  %56 = load i32, i32* %7, align 4, !dbg !1418
  %57 = load i32, i32* %8, align 4, !dbg !1418
  %58 = load i8*, i8** %11, align 8, !dbg !1418
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1418
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1418
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1418
  br label %61, !dbg !1419

61:                                               ; preds = %47, %34
  ret void, !dbg !1419
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1420 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1425, metadata !DIExpression()), !dbg !1426
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1431, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1433, metadata !DIExpression()), !dbg !1434
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1435
  call void @llvm.va_start(i8* %13), !dbg !1435
  %14 = load i32, i32* %6, align 4, !dbg !1436
  %15 = load i32, i32* %7, align 4, !dbg !1436
  %16 = load i8*, i8** %8, align 8, !dbg !1436
  %17 = load i32, i32* %9, align 4, !dbg !1436
  %18 = load i8*, i8** %10, align 8, !dbg !1436
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1436
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1436
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1436
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1437
  call void @llvm.va_end(i8* %21), !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 !dbg !1439 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1444, metadata !DIExpression()), !dbg !1445
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1450, metadata !DIExpression()), !dbg !1451
  %9 = load i32, i32* %5, align 4, !dbg !1452
  %10 = load i64, i64* %6, align 8, !dbg !1452
  %11 = load i64, i64* %7, align 8, !dbg !1452
  %12 = load i32, i32* %8, align 4, !dbg !1452
  %13 = call i32 @posix_fadvise(i32 noundef %9, i64 noundef %10, i64 noundef %11, i32 noundef %12) #19, !dbg !1452
  ret void, !dbg !1453
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) #4 !dbg !1454 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1493, metadata !DIExpression()), !dbg !1494
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1495
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1495
  br i1 %6, label %7, label %11, !dbg !1497

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1498
  %9 = call i32 @fileno(%struct._IO_FILE* noundef %8) #19, !dbg !1499
  %10 = load i32, i32* %4, align 4, !dbg !1500
  call void @fdadvise(i32 noundef %9, i64 noundef 0, i64 noundef 0, i32 noundef %10), !dbg !1501
  br label %11, !dbg !1501

11:                                               ; preds = %7, %2
  ret void, !dbg !1502
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !1503 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1542, metadata !DIExpression()), !dbg !1543
  store i32 0, i32* %4, align 4, !dbg !1543
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1544, metadata !DIExpression()), !dbg !1545
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1546
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !1547
  store i32 %8, i32* %5, align 4, !dbg !1545
  %9 = load i32, i32* %5, align 4, !dbg !1548
  %10 = icmp slt i32 %9, 0, !dbg !1550
  br i1 %10, label %11, label %14, !dbg !1551

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1552
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !1553
  store i32 %13, i32* %2, align 4, !dbg !1554
  br label %40, !dbg !1554

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1555
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !1555
  %17 = icmp ne i32 %16, 0, !dbg !1555
  br i1 %17, label %18, label %23, !dbg !1557

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1558
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !1559
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !1560
  %22 = icmp ne i64 %21, -1, !dbg !1561
  br i1 %22, label %23, label %30, !dbg !1562

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1563
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !1564
  %26 = icmp ne i32 %25, 0, !dbg !1564
  br i1 %26, label %27, label %30, !dbg !1565

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !1566
  %29 = load i32, i32* %28, align 4, !dbg !1566
  store i32 %29, i32* %4, align 4, !dbg !1567
  br label %30, !dbg !1568

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i32 0, i32* %6, align 4, !dbg !1570
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1571
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !1572
  store i32 %32, i32* %6, align 4, !dbg !1573
  %33 = load i32, i32* %4, align 4, !dbg !1574
  %34 = icmp ne i32 %33, 0, !dbg !1576
  br i1 %34, label %35, label %38, !dbg !1577

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !1578
  %37 = call i32* @__errno_location() #22, !dbg !1580
  store i32 %36, i32* %37, align 4, !dbg !1581
  store i32 -1, i32* %6, align 4, !dbg !1582
  br label %38, !dbg !1583

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !1584
  store i32 %39, i32* %2, align 4, !dbg !1585
  br label %40, !dbg !1585

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !1586
  ret i32 %41, !dbg !1586
}

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !1587 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1624, metadata !DIExpression()), !dbg !1625
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1626
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !1628
  br i1 %5, label %10, label %6, !dbg !1629

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1630
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !1630
  %9 = icmp ne i32 %8, 0, !dbg !1630
  br i1 %9, label %13, label %10, !dbg !1631

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1632
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !1633
  store i32 %12, i32* %2, align 4, !dbg !1634
  br label %17, !dbg !1634

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1635
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !1636
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1637
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !1638
  store i32 %16, i32* %2, align 4, !dbg !1639
  br label %17, !dbg !1639

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !1640
  ret i32 %18, !dbg !1640
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !1641 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1644, metadata !DIExpression()), !dbg !1645
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1646
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !1648
  %5 = load i32, i32* %4, align 8, !dbg !1648
  %6 = and i32 %5, 256, !dbg !1649
  %7 = icmp ne i32 %6, 0, !dbg !1649
  br i1 %7, label %8, label %11, !dbg !1650

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1651
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !1652
  br label %11, !dbg !1652

11:                                               ; preds = %8, %1
  ret void, !dbg !1653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !1654 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1691, metadata !DIExpression()), !dbg !1692
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1693
  call void @__fpurge(%struct._IO_FILE* noundef %3) #19, !dbg !1694
  ret i32 0, !dbg !1695
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !1696 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1733, metadata !DIExpression()), !dbg !1734
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1735, metadata !DIExpression()), !dbg !1736
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1737, metadata !DIExpression()), !dbg !1738
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1739
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !1741
  %11 = load i8*, i8** %10, align 8, !dbg !1741
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1742
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !1743
  %14 = load i8*, i8** %13, align 8, !dbg !1743
  %15 = icmp eq i8* %11, %14, !dbg !1744
  br i1 %15, label %16, label %46, !dbg !1745

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1746
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !1747
  %19 = load i8*, i8** %18, align 8, !dbg !1747
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1748
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !1749
  %22 = load i8*, i8** %21, align 8, !dbg !1749
  %23 = icmp eq i8* %19, %22, !dbg !1750
  br i1 %23, label %24, label %46, !dbg !1751

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1752
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !1753
  %27 = load i8*, i8** %26, align 8, !dbg !1753
  %28 = icmp eq i8* %27, null, !dbg !1754
  br i1 %28, label %29, label %46, !dbg !1755

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1756, metadata !DIExpression()), !dbg !1758
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1759
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !1760
  %32 = load i64, i64* %6, align 8, !dbg !1761
  %33 = load i32, i32* %7, align 4, !dbg !1762
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !1763
  store i64 %34, i64* %8, align 8, !dbg !1758
  %35 = load i64, i64* %8, align 8, !dbg !1764
  %36 = icmp eq i64 %35, -1, !dbg !1766
  br i1 %36, label %37, label %38, !dbg !1767

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !1768
  br label %51, !dbg !1768

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1770
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !1771
  %41 = load i32, i32* %40, align 8, !dbg !1772
  %42 = and i32 %41, -17, !dbg !1772
  store i32 %42, i32* %40, align 8, !dbg !1772
  %43 = load i64, i64* %8, align 8, !dbg !1773
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1774
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !1775
  store i64 %43, i64* %45, align 8, !dbg !1776
  store i32 0, i32* %4, align 4, !dbg !1777
  br label %51, !dbg !1777

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1778
  %48 = load i64, i64* %6, align 8, !dbg !1779
  %49 = load i32, i32* %7, align 4, !dbg !1780
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !1781
  store i32 %50, i32* %4, align 4, !dbg !1782
  br label %51, !dbg !1782

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !1783
  ret i32 %52, !dbg !1783
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 !dbg !1784 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1787
  ret i8* %1, !dbg !1788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbbuf_init(%struct.mbbuf_t* noundef %0, i8* noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3) #4 !dbg !1789 {
  %5 = alloca %struct.mbbuf_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %5, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1839, metadata !DIExpression()), !dbg !1840
  store %struct._IO_FILE* %3, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !1841, metadata !DIExpression()), !dbg !1842
  %9 = load i64, i64* %7, align 8, !dbg !1843
  %10 = icmp slt i64 %9, 4, !dbg !1845
  br i1 %10, label %11, label %12, !dbg !1846

11:                                               ; preds = %4
  unreachable, !dbg !1847

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1848
  %14 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !1849
  %15 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %14, i32 0, i32 0, !dbg !1850
  store i8* %13, i8** %15, align 8, !dbg !1851
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1852
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !1853
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !1854
  store %struct._IO_FILE* %16, %struct._IO_FILE** %18, align 8, !dbg !1855
  %19 = load i64, i64* %7, align 8, !dbg !1856
  %20 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !1857
  %21 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %20, i32 0, i32 2, !dbg !1858
  store i64 %19, i64* %21, align 8, !dbg !1859
  %22 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !1860
  %23 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %22, i32 0, i32 3, !dbg !1861
  store i64 0, i64* %23, align 8, !dbg !1862
  %24 = load %struct.mbbuf_t*, %struct.mbbuf_t** %5, align 8, !dbg !1863
  %25 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %24, i32 0, i32 4, !dbg !1864
  store i64 0, i64* %25, align 8, !dbg !1865
  ret void, !dbg !1866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbbuf_get_char(%struct.mbbuf_t* noundef %0) #4 !dbg !1867 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca %struct.mbbuf_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mcel_t, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %3, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1878, metadata !DIExpression()), !dbg !1879
  %7 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1880
  %8 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %7, i32 0, i32 3, !dbg !1881
  %9 = load i64, i64* %8, align 8, !dbg !1881
  %10 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1882
  %11 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %10, i32 0, i32 4, !dbg !1883
  %12 = load i64, i64* %11, align 8, !dbg !1883
  %13 = sub nsw i64 %9, %12, !dbg !1884
  store i64 %13, i64* %4, align 8, !dbg !1879
  %14 = load i64, i64* %4, align 8, !dbg !1885
  %15 = icmp slt i64 %14, 4, !dbg !1887
  br i1 %15, label %16, label %67, !dbg !1888

16:                                               ; preds = %1
  %17 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1889
  %18 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %17, i32 0, i32 1, !dbg !1890
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8, !dbg !1890
  %20 = call i32 @feof(%struct._IO_FILE* noundef %19) #19, !dbg !1891
  %21 = icmp ne i32 %20, 0, !dbg !1891
  br i1 %21, label %67, label %22, !dbg !1892

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1893, metadata !DIExpression()), !dbg !1895
  %23 = load i64, i64* %4, align 8, !dbg !1896
  %24 = icmp slt i64 0, %23, !dbg !1898
  br i1 %24, label %26, label %25, !dbg !1899

25:                                               ; preds = %22
  store i64 0, i64* %5, align 8, !dbg !1900
  br label %39, !dbg !1901

26:                                               ; preds = %22
  %27 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1902
  %28 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %27, i32 0, i32 0, !dbg !1904
  %29 = load i8*, i8** %28, align 8, !dbg !1904
  %30 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1905
  %31 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %30, i32 0, i32 0, !dbg !1906
  %32 = load i8*, i8** %31, align 8, !dbg !1906
  %33 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1907
  %34 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %33, i32 0, i32 4, !dbg !1908
  %35 = load i64, i64* %34, align 8, !dbg !1908
  %36 = getelementptr inbounds i8, i8* %32, i64 %35, !dbg !1909
  %37 = load i64, i64* %4, align 8, !dbg !1910
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %36, i64 %37, i1 false), !dbg !1911
  %38 = load i64, i64* %4, align 8, !dbg !1912
  store i64 %38, i64* %5, align 8, !dbg !1913
  br label %39

39:                                               ; preds = %26, %25
  %40 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1914
  %41 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %40, i32 0, i32 0, !dbg !1915
  %42 = load i8*, i8** %41, align 8, !dbg !1915
  %43 = load i64, i64* %5, align 8, !dbg !1916
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !1917
  %45 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1918
  %46 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %45, i32 0, i32 2, !dbg !1919
  %47 = load i64, i64* %46, align 8, !dbg !1919
  %48 = load i64, i64* %5, align 8, !dbg !1920
  %49 = sub nsw i64 %47, %48, !dbg !1921
  %50 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1922
  %51 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %50, i32 0, i32 1, !dbg !1923
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %51, align 8, !dbg !1923
  %53 = call i64 @fread(i8* noundef %44, i64 noundef 1, i64 noundef %49, %struct._IO_FILE* noundef %52), !dbg !1924
  %54 = load i64, i64* %5, align 8, !dbg !1925
  %55 = add i64 %53, %54, !dbg !1926
  %56 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1927
  %57 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %56, i32 0, i32 3, !dbg !1928
  store i64 %55, i64* %57, align 8, !dbg !1929
  %58 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1930
  %59 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %58, i32 0, i32 4, !dbg !1931
  store i64 0, i64* %59, align 8, !dbg !1932
  %60 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1933
  %61 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %60, i32 0, i32 3, !dbg !1934
  %62 = load i64, i64* %61, align 8, !dbg !1934
  %63 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1935
  %64 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %63, i32 0, i32 4, !dbg !1936
  %65 = load i64, i64* %64, align 8, !dbg !1936
  %66 = sub nsw i64 %62, %65, !dbg !1937
  store i64 %66, i64* %4, align 8, !dbg !1938
  br label %67, !dbg !1939

67:                                               ; preds = %39, %16, %1
  %68 = load i64, i64* %4, align 8, !dbg !1940
  %69 = icmp sle i64 %68, 0, !dbg !1942
  br i1 %69, label %70, label %74, !dbg !1943

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !1944
  store i32 -1, i32* %71, align 4, !dbg !1944
  %72 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !1944
  store i8 0, i8* %72, align 4, !dbg !1944
  %73 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !1944
  store i8 0, i8* %73, align 1, !dbg !1944
  br label %117, !dbg !1945

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !1946, metadata !DIExpression()), !dbg !1947
  %75 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1948
  %76 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %75, i32 0, i32 0, !dbg !1949
  %77 = load i8*, i8** %76, align 8, !dbg !1949
  %78 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1950
  %79 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %78, i32 0, i32 4, !dbg !1951
  %80 = load i64, i64* %79, align 8, !dbg !1951
  %81 = getelementptr inbounds i8, i8* %77, i64 %80, !dbg !1952
  %82 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1953
  %83 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %82, i32 0, i32 0, !dbg !1954
  %84 = load i8*, i8** %83, align 8, !dbg !1954
  %85 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1955
  %86 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %85, i32 0, i32 3, !dbg !1956
  %87 = load i64, i64* %86, align 8, !dbg !1956
  %88 = getelementptr inbounds i8, i8* %84, i64 %87, !dbg !1957
  %89 = call i64 @mcel_scan(i8* noundef %81, i8* noundef %88), !dbg !1958
  %90 = bitcast %struct.mcel_t* %6 to i64*, !dbg !1958
  store i64 %89, i64* %90, align 4, !dbg !1958
  %91 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !1959
  %92 = load i8, i8* %91, align 4, !dbg !1959
  %93 = icmp ne i8 %92, 0, !dbg !1961
  br i1 %93, label %102, label %94, !dbg !1962

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 2, !dbg !1963
  %96 = load i8, i8* %95, align 1, !dbg !1963
  %97 = zext i8 %96 to i64, !dbg !1964
  %98 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1965
  %99 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %98, i32 0, i32 4, !dbg !1966
  %100 = load i64, i64* %99, align 8, !dbg !1967
  %101 = add nsw i64 %100, %97, !dbg !1967
  store i64 %101, i64* %99, align 8, !dbg !1967
  br label %114, !dbg !1965

102:                                              ; preds = %74
  %103 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1968
  %104 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %103, i32 0, i32 0, !dbg !1970
  %105 = load i8*, i8** %104, align 8, !dbg !1970
  %106 = load %struct.mbbuf_t*, %struct.mbbuf_t** %3, align 8, !dbg !1971
  %107 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %106, i32 0, i32 4, !dbg !1972
  %108 = load i64, i64* %107, align 8, !dbg !1973
  %109 = add nsw i64 %108, 1, !dbg !1973
  store i64 %109, i64* %107, align 8, !dbg !1973
  %110 = getelementptr inbounds i8, i8* %105, i64 %108, !dbg !1968
  %111 = load i8, i8* %110, align 1, !dbg !1968
  %112 = zext i8 %111 to i32, !dbg !1974
  %113 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !1975
  store i32 %112, i32* %113, align 4, !dbg !1976
  br label %114

114:                                              ; preds = %102, %94
  %115 = bitcast %struct.mcel_t* %2 to i8*, !dbg !1977
  %116 = bitcast %struct.mcel_t* %6 to i8*, !dbg !1977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false), !dbg !1977
  br label %117, !dbg !1978

117:                                              ; preds = %114, %70
  %118 = bitcast %struct.mcel_t* %2 to i64*, !dbg !1979
  %119 = load i64, i64* %118, align 4, !dbg !1979
  ret i64 %119, !dbg !1979
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #2

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbbuf_char_offset(%struct.mbbuf_t* noundef %0, i64 %1) #4 !dbg !1980 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mbbuf_t*, align 8
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.mbbuf_t* %0, %struct.mbbuf_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mbbuf_t** %4, metadata !1983, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !1985, metadata !DIExpression()), !dbg !1986
  %6 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !1987
  %7 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %6, i32 0, i32 4, !dbg !1989
  %8 = load i64, i64* %7, align 8, !dbg !1989
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !1990
  %10 = load i8, i8* %9, align 1, !dbg !1990
  %11 = zext i8 %10 to i64, !dbg !1991
  %12 = icmp slt i64 %8, %11, !dbg !1992
  br i1 %12, label %13, label %14, !dbg !1993

13:                                               ; preds = %2
  unreachable, !dbg !1994

14:                                               ; preds = %2
  %15 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !1995
  %16 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %15, i32 0, i32 0, !dbg !1996
  %17 = load i8*, i8** %16, align 8, !dbg !1996
  %18 = load %struct.mbbuf_t*, %struct.mbbuf_t** %4, align 8, !dbg !1997
  %19 = getelementptr inbounds %struct.mbbuf_t, %struct.mbbuf_t* %18, i32 0, i32 4, !dbg !1998
  %20 = load i64, i64* %19, align 8, !dbg !1998
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !1999
  %22 = load i8, i8* %21, align 1, !dbg !1999
  %23 = zext i8 %22 to i64, !dbg !2000
  %24 = sub nsw i64 %20, %23, !dbg !2001
  %25 = getelementptr inbounds i8, i8* %17, i64 %24, !dbg !2002
  ret i8* %25, !dbg !2003
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_ch(i32 noundef %0, i64 noundef %1) #4 !dbg !2004 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2015, metadata !DIExpression()), !dbg !2016
  %6 = load i64, i64* %5, align 8, !dbg !2017
  %7 = icmp ult i64 0, %6, !dbg !2017
  br i1 %7, label %8, label %9, !dbg !2017

8:                                                ; preds = %2
  br label %11, !dbg !2017

9:                                                ; preds = %2
  unreachable, !dbg !2017

10:                                               ; No predecessors!
  br label %11, !dbg !2017

11:                                               ; preds = %10, %8
  %12 = load i64, i64* %5, align 8, !dbg !2018
  %13 = icmp ule i64 %12, 4, !dbg !2018
  br i1 %13, label %14, label %15, !dbg !2018

14:                                               ; preds = %11
  br label %17, !dbg !2018

15:                                               ; preds = %11
  unreachable, !dbg !2018

16:                                               ; No predecessors!
  br label %17, !dbg !2018

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %4, align 4, !dbg !2019
  %19 = icmp ule i32 %18, 1114111, !dbg !2019
  br i1 %19, label %20, label %21, !dbg !2019

20:                                               ; preds = %17
  br label %23, !dbg !2019

21:                                               ; preds = %17
  unreachable, !dbg !2019

22:                                               ; No predecessors!
  br label %23, !dbg !2019

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2020
  %25 = load i32, i32* %4, align 4, !dbg !2021
  store i32 %25, i32* %24, align 4, !dbg !2020
  %26 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2020
  store i8 0, i8* %26, align 4, !dbg !2020
  %27 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 2, !dbg !2020
  %28 = load i64, i64* %5, align 8, !dbg !2022
  %29 = trunc i64 %28 to i8, !dbg !2022
  store i8 %29, i8* %27, align 1, !dbg !2020
  %30 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2023
  %31 = load i64, i64* %30, align 4, !dbg !2023
  ret i64 %31, !dbg !2023
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_err(i8 noundef %0) #4 !dbg !2024 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2027, metadata !DIExpression()), !dbg !2028
  %4 = load i8, i8* %3, align 1, !dbg !2029
  %5 = zext i8 %4 to i32, !dbg !2029
  %6 = icmp sle i32 128, %5, !dbg !2029
  br i1 %6, label %7, label %8, !dbg !2029

7:                                                ; preds = %1
  br label %10, !dbg !2029

8:                                                ; preds = %1
  unreachable, !dbg !2029

9:                                                ; No predecessors!
  br label %10, !dbg !2029

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 0, !dbg !2030
  store i32 0, i32* %11, align 4, !dbg !2030
  %12 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 1, !dbg !2030
  %13 = load i8, i8* %3, align 1, !dbg !2031
  store i8 %13, i8* %12, align 4, !dbg !2030
  %14 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %2, i32 0, i32 2, !dbg !2030
  store i8 1, i8* %14, align 1, !dbg !2030
  %15 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2032
  %16 = load i64, i64* %15, align 4, !dbg !2032
  ret i64 %16, !dbg !2032
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_cmp(i64 %0, i64 %1) #4 !dbg !2033 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %8, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2036, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2040, metadata !DIExpression()), !dbg !2041
  %9 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 0, !dbg !2042
  %10 = load i32, i32* %9, align 4, !dbg !2042
  store i32 %10, i32* %5, align 4, !dbg !2041
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2043, metadata !DIExpression()), !dbg !2044
  %11 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 0, !dbg !2045
  %12 = load i32, i32* %11, align 4, !dbg !2045
  store i32 %12, i32* %6, align 4, !dbg !2044
  %13 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %3, i32 0, i32 1, !dbg !2046
  %14 = load i8, i8* %13, align 4, !dbg !2046
  %15 = zext i8 %14 to i32, !dbg !2047
  %16 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %4, i32 0, i32 1, !dbg !2048
  %17 = load i8, i8* %16, align 4, !dbg !2048
  %18 = zext i8 %17 to i32, !dbg !2049
  %19 = sub nsw i32 %15, %18, !dbg !2050
  %20 = mul nsw i32 %19, 16384, !dbg !2051
  %21 = load i32, i32* %5, align 4, !dbg !2052
  %22 = load i32, i32* %6, align 4, !dbg !2053
  %23 = sub nsw i32 %21, %22, !dbg !2054
  %24 = add nsw i32 %20, %23, !dbg !2055
  ret i32 %24, !dbg !2056
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_eq(i64 %0, i64 %1) #4 !dbg !2057 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca %struct.mcel_t, align 4
  %5 = bitcast %struct.mcel_t* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.mcel_t* %4 to i64*
  store i64 %1, i64* %6, align 4
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %3, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %4, metadata !2062, metadata !DIExpression()), !dbg !2063
  %7 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2064
  %8 = load i64, i64* %7, align 4, !dbg !2064
  %9 = bitcast %struct.mcel_t* %4 to i64*, !dbg !2064
  %10 = load i64, i64* %9, align 4, !dbg !2064
  %11 = call i32 @mcel_cmp(i64 %8, i64 %10), !dbg !2064
  %12 = icmp ne i32 %11, 0, !dbg !2065
  %13 = xor i1 %12, true, !dbg !2065
  ret i1 %13, !dbg !2066
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcel_tocmp(i32 (i32)* noundef %0, i64 %1, i64 %2) #4 !dbg !2067 {
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
  call void @llvm.dbg.declare(metadata i32 (i32)** %7, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %5, metadata !2075, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.declare(metadata %struct.mcel_t* %6, metadata !2077, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2079, metadata !DIExpression()), !dbg !2080
  %13 = bitcast %struct.mcel_t* %5 to i64*, !dbg !2081
  %14 = load i64, i64* %13, align 4, !dbg !2081
  %15 = bitcast %struct.mcel_t* %6 to i64*, !dbg !2081
  %16 = load i64, i64* %15, align 4, !dbg !2081
  %17 = call i32 @mcel_cmp(i64 %14, i64 %16), !dbg !2081
  store i32 %17, i32* %8, align 4, !dbg !2080
  %18 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 1, !dbg !2082
  %19 = load i8, i8* %18, align 4, !dbg !2082
  %20 = zext i8 %19 to i32, !dbg !2082
  %21 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 1, !dbg !2082
  %22 = load i8, i8* %21, align 4, !dbg !2082
  %23 = zext i8 %22 to i32, !dbg !2082
  %24 = sub nsw i32 %20, %23, !dbg !2082
  %25 = load i32, i32* %8, align 4, !dbg !2082
  %26 = icmp ne i32 %25, 0, !dbg !2082
  %27 = xor i1 %26, true, !dbg !2082
  %28 = zext i1 %27 to i32, !dbg !2082
  %29 = or i32 %24, %28, !dbg !2082
  %30 = sext i32 %29 to i64, !dbg !2082
  %31 = icmp ne i64 %30, 0, !dbg !2082
  br i1 %31, label %32, label %34, !dbg !2084

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4, !dbg !2085
  store i32 %33, i32* %4, align 4, !dbg !2086
  br label %46, !dbg !2086

34:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2087, metadata !DIExpression()), !dbg !2088
  %35 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2089
  %36 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %5, i32 0, i32 0, !dbg !2090
  %37 = load i32, i32* %36, align 4, !dbg !2090
  %38 = call i32 %35(i32 noundef %37), !dbg !2089
  store i32 %38, i32* %9, align 4, !dbg !2088
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2091, metadata !DIExpression()), !dbg !2092
  %39 = load i32 (i32)*, i32 (i32)** %7, align 8, !dbg !2093
  %40 = getelementptr inbounds %struct.mcel_t, %struct.mcel_t* %6, i32 0, i32 0, !dbg !2094
  %41 = load i32, i32* %40, align 4, !dbg !2094
  %42 = call i32 %39(i32 noundef %41), !dbg !2093
  store i32 %42, i32* %10, align 4, !dbg !2092
  %43 = load i32, i32* %9, align 4, !dbg !2095
  %44 = load i32, i32* %10, align 4, !dbg !2096
  %45 = sub nsw i32 %43, %44, !dbg !2097
  store i32 %45, i32* %4, align 4, !dbg !2098
  br label %46, !dbg !2098

46:                                               ; preds = %34, %32
  %47 = load i32, i32* %4, align 4, !dbg !2099
  ret i32 %47, !dbg !2099
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @mcel_isbasic(i8 noundef %0) #4 !dbg !2100 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2103, metadata !DIExpression()), !dbg !2104
  %3 = load i8, i8* %2, align 1, !dbg !2105
  %4 = zext i8 %3 to i32, !dbg !2105
  %5 = icmp sle i32 0, %4, !dbg !2105
  br i1 %5, label %6, label %10, !dbg !2105

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !2105
  %8 = zext i8 %7 to i32, !dbg !2105
  %9 = icmp slt i32 %8, 128, !dbg !2105
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !2106
  %12 = zext i1 %11 to i32, !dbg !2105
  %13 = sext i32 %12 to i64, !dbg !2105
  %14 = icmp ne i64 %13, 0, !dbg !2105
  ret i1 %14, !dbg !2107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scan(i8* noundef %0, i8* noundef %1) #4 !dbg !2108 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2111, metadata !DIExpression()), !dbg !2112
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2113, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2115, metadata !DIExpression()), !dbg !2116
  %10 = load i8*, i8** %4, align 8, !dbg !2117
  %11 = load i8, i8* %10, align 1, !dbg !2118
  store i8 %11, i8* %6, align 1, !dbg !2116
  %12 = load i8, i8* %6, align 1, !dbg !2119
  %13 = call i1 @mcel_isbasic(i8 noundef %12), !dbg !2121
  br i1 %13, label %14, label %19, !dbg !2122

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1, !dbg !2123
  %16 = zext i8 %15 to i32, !dbg !2123
  %17 = call i64 @mcel_ch(i32 noundef %16, i64 noundef 1), !dbg !2124
  %18 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2124
  store i64 %17, i64* %18, align 4, !dbg !2124
  br label %42, !dbg !2125

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !2126, metadata !DIExpression()), !dbg !2137
  %20 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %7, i32 0, i32 0, !dbg !2138
  store i32 0, i32* %20, align 4, !dbg !2139
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2142, metadata !DIExpression()), !dbg !2143
  %21 = load i8*, i8** %4, align 8, !dbg !2144
  %22 = load i8*, i8** %5, align 8, !dbg !2145
  %23 = load i8*, i8** %4, align 8, !dbg !2146
  %24 = ptrtoint i8* %22 to i64, !dbg !2147
  %25 = ptrtoint i8* %23 to i64, !dbg !2147
  %26 = sub i64 %24, %25, !dbg !2147
  %27 = call i64 @mbrtoc32(i32* noundef %8, i8* noundef %21, i64 noundef %26, %struct.__mbstate_t* noundef %7) #19, !dbg !2148
  store i64 %27, i64* %9, align 8, !dbg !2143
  %28 = load i64, i64* %9, align 8, !dbg !2149
  %29 = icmp ult i64 9223372036854775807, %28, !dbg !2149
  %30 = zext i1 %29 to i32, !dbg !2149
  %31 = sext i32 %30 to i64, !dbg !2149
  %32 = icmp ne i64 %31, 0, !dbg !2149
  br i1 %32, label %33, label %37, !dbg !2151

33:                                               ; preds = %19
  %34 = load i8, i8* %6, align 1, !dbg !2152
  %35 = call i64 @mcel_err(i8 noundef %34), !dbg !2153
  %36 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2153
  store i64 %35, i64* %36, align 4, !dbg !2153
  br label %42, !dbg !2154

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4, !dbg !2155
  %39 = load i64, i64* %9, align 8, !dbg !2156
  %40 = call i64 @mcel_ch(i32 noundef %38, i64 noundef %39), !dbg !2157
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2157
  store i64 %40, i64* %41, align 4, !dbg !2157
  br label %42, !dbg !2158

42:                                               ; preds = %37, %33, %14
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2159
  %44 = load i64, i64* %43, align 4, !dbg !2159
  ret i64 %44, !dbg !2159
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scant(i8* noundef %0, i8 noundef %1) #4 !dbg !2160 {
  %3 = alloca %struct.mcel_t, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2163, metadata !DIExpression()), !dbg !2164
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2165, metadata !DIExpression()), !dbg !2166
  %8 = load i8*, i8** %4, align 8, !dbg !2167
  %9 = load i8, i8* %8, align 1, !dbg !2169
  %10 = call i1 @mcel_isbasic(i8 noundef %9), !dbg !2170
  br i1 %10, label %11, label %17, !dbg !2171

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !2172
  %13 = load i8, i8* %12, align 1, !dbg !2173
  %14 = zext i8 %13 to i32, !dbg !2173
  %15 = call i64 @mcel_ch(i32 noundef %14, i64 noundef 1), !dbg !2174
  %16 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2174
  store i64 %15, i64* %16, align 4, !dbg !2174
  br label %42, !dbg !2175

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2176, metadata !DIExpression()), !dbg !2177
  %18 = load i8*, i8** %4, align 8, !dbg !2178
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !2179
  store i8* %19, i8** %6, align 8, !dbg !2177
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2180, metadata !DIExpression()), !dbg !2182
  store i32 0, i32* %7, align 4, !dbg !2182
  br label %20, !dbg !2183

20:                                               ; preds = %34, %17
  %21 = load i32, i32* %7, align 4, !dbg !2184
  %22 = icmp slt i32 %21, 3, !dbg !2186
  br i1 %22, label %23, label %37, !dbg !2187

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8, !dbg !2188
  %25 = load i8, i8* %24, align 1, !dbg !2189
  %26 = zext i8 %25 to i32, !dbg !2189
  %27 = load i8, i8* %5, align 1, !dbg !2190
  %28 = zext i8 %27 to i32, !dbg !2190
  %29 = icmp ne i32 %26, %28, !dbg !2191
  %30 = zext i1 %29 to i32, !dbg !2191
  %31 = load i8*, i8** %6, align 8, !dbg !2192
  %32 = sext i32 %30 to i64, !dbg !2192
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !2192
  store i8* %33, i8** %6, align 8, !dbg !2192
  br label %34, !dbg !2193

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4, !dbg !2194
  %36 = add nsw i32 %35, 1, !dbg !2194
  store i32 %36, i32* %7, align 4, !dbg !2194
  br label %20, !dbg !2195, !llvm.loop !2196

37:                                               ; preds = %20
  %38 = load i8*, i8** %4, align 8, !dbg !2198
  %39 = load i8*, i8** %6, align 8, !dbg !2199
  %40 = call i64 @mcel_scan(i8* noundef %38, i8* noundef %39), !dbg !2200
  %41 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2200
  store i64 %40, i64* %41, align 4, !dbg !2200
  br label %42, !dbg !2201

42:                                               ; preds = %37, %11
  %43 = bitcast %struct.mcel_t* %3 to i64*, !dbg !2202
  %44 = load i64, i64* %43, align 4, !dbg !2202
  ret i64 %44, !dbg !2202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mcel_scanz(i8* noundef %0) #4 !dbg !2203 {
  %2 = alloca %struct.mcel_t, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2206, metadata !DIExpression()), !dbg !2207
  %4 = load i8*, i8** %3, align 8, !dbg !2208
  %5 = call i64 @mcel_scant(i8* noundef %4, i8 noundef 0), !dbg !2209
  %6 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2209
  store i64 %5, i64* %6, align 4, !dbg !2209
  %7 = bitcast %struct.mcel_t* %2 to i64*, !dbg !2210
  %8 = load i64, i64* %7, align 4, !dbg !2210
  ret i64 %8, !dbg !2210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !2211 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2214, metadata !DIExpression()), !dbg !2215
  %5 = load i8*, i8** %2, align 8, !dbg !2216
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !2217
  store i8* %6, i8** %3, align 8, !dbg !2215
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2218, metadata !DIExpression()), !dbg !2219
  %7 = load i8*, i8** %3, align 8, !dbg !2220
  %8 = icmp ne i8* %7, null, !dbg !2220
  br i1 %8, label %9, label %12, !dbg !2220

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !2221
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !2222
  br label %14, !dbg !2220

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !2223
  br label %14, !dbg !2220

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !2220
  store i8* %15, i8** %4, align 8, !dbg !2219
  %16 = load i8*, i8** %4, align 8, !dbg !2224
  %17 = load i8*, i8** %2, align 8, !dbg !2226
  %18 = ptrtoint i8* %16 to i64, !dbg !2227
  %19 = ptrtoint i8* %17 to i64, !dbg !2227
  %20 = sub i64 %18, %19, !dbg !2227
  %21 = icmp sle i64 7, %20, !dbg !2228
  br i1 %21, label %22, label %36, !dbg !2229

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !2230
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !2231
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), i64 noundef 7), !dbg !2232
  br i1 %25, label %26, label %36, !dbg !2233

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !2234
  store i8* %27, i8** %2, align 8, !dbg !2236
  %28 = load i8*, i8** %4, align 8, !dbg !2237
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.110, i64 0, i64 0), i64 noundef 3) #21, !dbg !2239
  %30 = icmp eq i32 %29, 0, !dbg !2240
  br i1 %30, label %31, label %35, !dbg !2241

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !2242
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !2242
  store i8* %33, i8** %4, align 8, !dbg !2242
  %34 = load i8*, i8** %4, align 8, !dbg !2244
  store i8* %34, i8** %2, align 8, !dbg !2245
  br label %35, !dbg !2246

35:                                               ; preds = %31, %26
  br label %36, !dbg !2247

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !2248
  store i8* %37, i8** @program_name, align 8, !dbg !2249
  %38 = load i8*, i8** %2, align 8, !dbg !2250
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !2251
  %39 = load i8*, i8** %4, align 8, !dbg !2252
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !2253
  ret void, !dbg !2254
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !165 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2255, metadata !DIExpression()), !dbg !2256
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2257, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2259, metadata !DIExpression()), !dbg !2260
  %9 = load i8*, i8** %4, align 8, !dbg !2261
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !2262
  store i8* %10, i8** %6, align 8, !dbg !2260
  %11 = load i8*, i8** %6, align 8, !dbg !2263
  %12 = load i8*, i8** %4, align 8, !dbg !2265
  %13 = icmp ne i8* %11, %12, !dbg !2266
  br i1 %13, label %14, label %16, !dbg !2267

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2268
  store i8* %15, i8** %3, align 8, !dbg !2269
  br label %26, !dbg !2269

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2270, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2272, metadata !DIExpression()), !dbg !2283
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2284
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !2285
  %18 = icmp eq i64 %17, 2, !dbg !2287
  br i1 %18, label %19, label %24, !dbg !2288

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2289
  %21 = icmp eq i32 %20, 2047, !dbg !2290
  br i1 %21, label %22, label %24, !dbg !2291

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !2292
  store i8* %23, i8** %3, align 8, !dbg !2293
  br label %26, !dbg !2293

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !2294
  store i8* %25, i8** %3, align 8, !dbg !2295
  br label %26, !dbg !2295

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !2296
  ret i8* %27, !dbg !2296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !2297 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2301, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2303, metadata !DIExpression()), !dbg !2304
  %5 = call i32* @__errno_location() #22, !dbg !2305
  %6 = load i32, i32* %5, align 4, !dbg !2305
  store i32 %6, i32* %3, align 4, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2306, metadata !DIExpression()), !dbg !2307
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2308
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2308
  br i1 %8, label %9, label %11, !dbg !2308

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2309
  br label %12, !dbg !2308

11:                                               ; preds = %1
  br label %12, !dbg !2308

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2308
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2308
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !2310
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2310
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2307
  %17 = load i32, i32* %3, align 4, !dbg !2311
  %18 = call i32* @__errno_location() #22, !dbg !2312
  store i32 %17, i32* %18, align 4, !dbg !2313
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2314
  ret %struct.quoting_options* %19, !dbg !2315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !2316 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2321, metadata !DIExpression()), !dbg !2322
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2323
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2323
  br i1 %4, label %5, label %7, !dbg !2323

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2324
  br label %8, !dbg !2323

7:                                                ; preds = %1
  br label %8, !dbg !2323

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2323
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2325
  %11 = load i32, i32* %10, align 8, !dbg !2325
  ret i32 %11, !dbg !2326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2327 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2332, metadata !DIExpression()), !dbg !2333
  %5 = load i32, i32* %4, align 4, !dbg !2334
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2335
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2335
  br i1 %7, label %8, label %10, !dbg !2335

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2336
  br label %11, !dbg !2335

10:                                               ; preds = %2
  br label %11, !dbg !2335

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2335
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2337
  store i32 %5, i32* %13, align 8, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !2340 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2343, metadata !DIExpression()), !dbg !2344
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2345, metadata !DIExpression()), !dbg !2346
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2349, metadata !DIExpression()), !dbg !2350
  %11 = load i8, i8* %5, align 1, !dbg !2351
  store i8 %11, i8* %7, align 1, !dbg !2350
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2352, metadata !DIExpression()), !dbg !2354
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2355
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2355
  br i1 %13, label %14, label %16, !dbg !2355

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2356
  br label %17, !dbg !2355

16:                                               ; preds = %3
  br label %17, !dbg !2355

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2355
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2357
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !2358
  %21 = load i8, i8* %7, align 1, !dbg !2359
  %22 = zext i8 %21 to i64, !dbg !2359
  %23 = udiv i64 %22, 32, !dbg !2360
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2361
  store i32* %24, i32** %8, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2362, metadata !DIExpression()), !dbg !2363
  %25 = load i8, i8* %7, align 1, !dbg !2364
  %26 = zext i8 %25 to i64, !dbg !2364
  %27 = urem i64 %26, 32, !dbg !2365
  %28 = trunc i64 %27 to i32, !dbg !2364
  store i32 %28, i32* %9, align 4, !dbg !2363
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2366, metadata !DIExpression()), !dbg !2367
  %29 = load i32*, i32** %8, align 8, !dbg !2368
  %30 = load i32, i32* %29, align 4, !dbg !2369
  %31 = load i32, i32* %9, align 4, !dbg !2370
  %32 = lshr i32 %30, %31, !dbg !2371
  %33 = and i32 %32, 1, !dbg !2372
  store i32 %33, i32* %10, align 4, !dbg !2367
  %34 = load i32, i32* %6, align 4, !dbg !2373
  %35 = and i32 %34, 1, !dbg !2374
  %36 = load i32, i32* %10, align 4, !dbg !2375
  %37 = xor i32 %35, %36, !dbg !2376
  %38 = load i32, i32* %9, align 4, !dbg !2377
  %39 = shl i32 %37, %38, !dbg !2378
  %40 = load i32*, i32** %8, align 8, !dbg !2379
  %41 = load i32, i32* %40, align 4, !dbg !2380
  %42 = xor i32 %41, %39, !dbg !2380
  store i32 %42, i32* %40, align 4, !dbg !2380
  %43 = load i32, i32* %10, align 4, !dbg !2381
  ret i32 %43, !dbg !2382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !2383 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2388, metadata !DIExpression()), !dbg !2389
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2390
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2390
  br i1 %7, label %9, label %8, !dbg !2392

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2393
  br label %9, !dbg !2394

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2395, metadata !DIExpression()), !dbg !2396
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2397
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2398
  %12 = load i32, i32* %11, align 4, !dbg !2398
  store i32 %12, i32* %5, align 4, !dbg !2396
  %13 = load i32, i32* %4, align 4, !dbg !2399
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2400
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2401
  store i32 %13, i32* %15, align 4, !dbg !2402
  %16 = load i32, i32* %5, align 4, !dbg !2403
  ret i32 %16, !dbg !2404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2405 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2408, metadata !DIExpression()), !dbg !2409
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2410, metadata !DIExpression()), !dbg !2411
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2412, metadata !DIExpression()), !dbg !2413
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2414
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2414
  br i1 %8, label %10, label %9, !dbg !2416

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2417
  br label %10, !dbg !2418

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2419
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2420
  store i32 10, i32* %12, align 8, !dbg !2421
  %13 = load i8*, i8** %5, align 8, !dbg !2422
  %14 = icmp ne i8* %13, null, !dbg !2422
  br i1 %14, label %15, label %18, !dbg !2424

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2425
  %17 = icmp ne i8* %16, null, !dbg !2425
  br i1 %17, label %19, label %18, !dbg !2426

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !2427
  unreachable, !dbg !2427

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2428
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2429
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2430
  store i8* %20, i8** %22, align 8, !dbg !2431
  %23 = load i8*, i8** %6, align 8, !dbg !2432
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2433
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2434
  store i8* %23, i8** %25, align 8, !dbg !2435
  ret void, !dbg !2436
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !2437 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2440, metadata !DIExpression()), !dbg !2441
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2442, metadata !DIExpression()), !dbg !2443
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2444, metadata !DIExpression()), !dbg !2445
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2446, metadata !DIExpression()), !dbg !2447
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2450, metadata !DIExpression()), !dbg !2451
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2452
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2452
  br i1 %15, label %16, label %18, !dbg !2452

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2453
  br label %19, !dbg !2452

18:                                               ; preds = %5
  br label %19, !dbg !2452

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2452
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2451
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2454, metadata !DIExpression()), !dbg !2455
  %21 = call i32* @__errno_location() #22, !dbg !2456
  %22 = load i32, i32* %21, align 4, !dbg !2456
  store i32 %22, i32* %12, align 4, !dbg !2455
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2457, metadata !DIExpression()), !dbg !2458
  %23 = load i8*, i8** %6, align 8, !dbg !2459
  %24 = load i64, i64* %7, align 8, !dbg !2460
  %25 = load i8*, i8** %8, align 8, !dbg !2461
  %26 = load i64, i64* %9, align 8, !dbg !2462
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2463
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2464
  %29 = load i32, i32* %28, align 8, !dbg !2464
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2465
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2466
  %32 = load i32, i32* %31, align 4, !dbg !2466
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2467
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2468
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2467
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2469
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2470
  %38 = load i8*, i8** %37, align 8, !dbg !2470
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2471
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2472
  %41 = load i8*, i8** %40, align 8, !dbg !2472
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !2473
  store i64 %42, i64* %13, align 8, !dbg !2458
  %43 = load i32, i32* %12, align 4, !dbg !2474
  %44 = call i32* @__errno_location() #22, !dbg !2475
  store i32 %43, i32* %44, align 4, !dbg !2476
  %45 = load i64, i64* %13, align 8, !dbg !2477
  ret i64 %45, !dbg !2478
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2479 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2490, metadata !DIExpression()), !dbg !2491
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2494, metadata !DIExpression()), !dbg !2495
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2502, metadata !DIExpression()), !dbg !2503
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !2504
  %45 = icmp eq i64 %44, 1, !dbg !2505
  %46 = zext i1 %45 to i8, !dbg !2503
  store i8 %46, i8* %20, align 1, !dbg !2503
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i64 0, i64* %21, align 8, !dbg !2507
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2508, metadata !DIExpression()), !dbg !2509
  store i64 0, i64* %22, align 8, !dbg !2509
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2510, metadata !DIExpression()), !dbg !2511
  store i8* null, i8** %23, align 8, !dbg !2511
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i64 0, i64* %24, align 8, !dbg !2513
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i8 0, i8* %25, align 1, !dbg !2515
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2516, metadata !DIExpression()), !dbg !2517
  %47 = load i32, i32* %16, align 4, !dbg !2518
  %48 = and i32 %47, 2, !dbg !2519
  %49 = icmp ne i32 %48, 0, !dbg !2520
  %50 = zext i1 %49 to i8, !dbg !2517
  store i8 %50, i8* %26, align 1, !dbg !2517
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2521, metadata !DIExpression()), !dbg !2522
  store i8 0, i8* %27, align 1, !dbg !2522
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i8 1, i8* %28, align 1, !dbg !2524
  br label %51, !dbg !2525

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2526), !dbg !2527
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2528, metadata !DIExpression()), !dbg !2529
  store i8 0, i8* %29, align 1, !dbg !2529
  %52 = load i32, i32* %15, align 4, !dbg !2530
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
  ], !dbg !2531

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2532
  store i8 1, i8* %26, align 1, !dbg !2534
  br label %54, !dbg !2535

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2536
  %56 = trunc i8 %55 to i1, !dbg !2536
  br i1 %56, label %70, label %57, !dbg !2538

57:                                               ; preds = %54
  br label %58, !dbg !2539

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2540
  %60 = load i64, i64* %12, align 8, !dbg !2540
  %61 = icmp ult i64 %59, %60, !dbg !2540
  br i1 %61, label %62, label %66, !dbg !2543

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2540
  %64 = load i64, i64* %21, align 8, !dbg !2540
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2540
  store i8 34, i8* %65, align 1, !dbg !2540
  br label %66, !dbg !2540

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2543
  %68 = add i64 %67, 1, !dbg !2543
  store i64 %68, i64* %21, align 8, !dbg !2543
  br label %69, !dbg !2543

69:                                               ; preds = %66
  br label %70, !dbg !2543

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2544
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), i8** %23, align 8, !dbg !2545
  store i64 1, i64* %24, align 8, !dbg !2546
  br label %138, !dbg !2547

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2548
  store i8 0, i8* %26, align 1, !dbg !2549
  br label %138, !dbg !2550

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2551
  %74 = icmp ne i32 %73, 10, !dbg !2554
  br i1 %74, label %75, label %80, !dbg !2555

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2556
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.124, i64 0, i64 0), i32 noundef %76), !dbg !2558
  store i8* %77, i8** %18, align 8, !dbg !2559
  %78 = load i32, i32* %15, align 4, !dbg !2560
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), i32 noundef %78), !dbg !2561
  store i8* %79, i8** %19, align 8, !dbg !2562
  br label %80, !dbg !2563

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2564
  %82 = trunc i8 %81 to i1, !dbg !2564
  br i1 %82, label %108, label %83, !dbg !2566

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2567, metadata !DIExpression()), !dbg !2569
  %84 = load i8*, i8** %18, align 8, !dbg !2570
  store i8* %84, i8** %30, align 8, !dbg !2569
  br label %85, !dbg !2571

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2572
  %87 = load i8, i8* %86, align 1, !dbg !2574
  %88 = icmp ne i8 %87, 0, !dbg !2575
  br i1 %88, label %89, label %107, !dbg !2575

89:                                               ; preds = %85
  br label %90, !dbg !2576

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2577
  %92 = load i64, i64* %12, align 8, !dbg !2577
  %93 = icmp ult i64 %91, %92, !dbg !2577
  br i1 %93, label %94, label %100, !dbg !2580

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2577
  %96 = load i8, i8* %95, align 1, !dbg !2577
  %97 = load i8*, i8** %11, align 8, !dbg !2577
  %98 = load i64, i64* %21, align 8, !dbg !2577
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2577
  store i8 %96, i8* %99, align 1, !dbg !2577
  br label %100, !dbg !2577

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2580
  %102 = add i64 %101, 1, !dbg !2580
  store i64 %102, i64* %21, align 8, !dbg !2580
  br label %103, !dbg !2580

103:                                              ; preds = %100
  br label %104, !dbg !2580

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2581
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2581
  store i8* %106, i8** %30, align 8, !dbg !2581
  br label %85, !dbg !2582, !llvm.loop !2583

107:                                              ; preds = %85
  br label %108, !dbg !2584

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2585
  %109 = load i8*, i8** %19, align 8, !dbg !2586
  store i8* %109, i8** %23, align 8, !dbg !2587
  %110 = load i8*, i8** %23, align 8, !dbg !2588
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !2589
  store i64 %111, i64* %24, align 8, !dbg !2590
  br label %138, !dbg !2591

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2592
  br label %113, !dbg !2593

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2594
  br label %114, !dbg !2595

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2596
  %116 = trunc i8 %115 to i1, !dbg !2596
  br i1 %116, label %118, label %117, !dbg !2598

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2599
  br label %118, !dbg !2600

118:                                              ; preds = %117, %114
  br label %119, !dbg !2596

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2601
  %120 = load i8, i8* %26, align 1, !dbg !2602
  %121 = trunc i8 %120 to i1, !dbg !2602
  br i1 %121, label %135, label %122, !dbg !2604

122:                                              ; preds = %119
  br label %123, !dbg !2605

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2606
  %125 = load i64, i64* %12, align 8, !dbg !2606
  %126 = icmp ult i64 %124, %125, !dbg !2606
  br i1 %126, label %127, label %131, !dbg !2609

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2606
  %129 = load i64, i64* %21, align 8, !dbg !2606
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2606
  store i8 39, i8* %130, align 1, !dbg !2606
  br label %131, !dbg !2606

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2609
  %133 = add i64 %132, 1, !dbg !2609
  store i64 %133, i64* %21, align 8, !dbg !2609
  br label %134, !dbg !2609

134:                                              ; preds = %131
  br label %135, !dbg !2609

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), i8** %23, align 8, !dbg !2610
  store i64 1, i64* %24, align 8, !dbg !2611
  br label %138, !dbg !2612

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2613
  br label %138, !dbg !2614

137:                                              ; preds = %51
  call void @abort() #20, !dbg !2615
  unreachable, !dbg !2615

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2616, metadata !DIExpression()), !dbg !2618
  store i64 0, i64* %31, align 8, !dbg !2618
  br label %139, !dbg !2619

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2620
  %141 = icmp eq i64 %140, -1, !dbg !2622
  br i1 %141, label %142, label %150, !dbg !2620

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2623
  %144 = load i64, i64* %31, align 8, !dbg !2624
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2623
  %146 = load i8, i8* %145, align 1, !dbg !2623
  %147 = zext i8 %146 to i32, !dbg !2623
  %148 = icmp eq i32 %147, 0, !dbg !2625
  %149 = zext i1 %148 to i32, !dbg !2625
  br label %155, !dbg !2620

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2626
  %152 = load i64, i64* %14, align 8, !dbg !2627
  %153 = icmp eq i64 %151, %152, !dbg !2628
  %154 = zext i1 %153 to i32, !dbg !2628
  br label %155, !dbg !2620

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2620
  %157 = icmp ne i32 %156, 0, !dbg !2629
  %158 = xor i1 %157, true, !dbg !2629
  br i1 %158, label %159, label %996, !dbg !2630

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2631, metadata !DIExpression()), !dbg !2633
  store i8 0, i8* %32, align 1, !dbg !2633
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i8 0, i8* %33, align 1, !dbg !2635
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8 0, i8* %34, align 1, !dbg !2637
  %160 = load i8, i8* %25, align 1, !dbg !2638
  %161 = trunc i8 %160 to i1, !dbg !2638
  br i1 %161, label %162, label %197, !dbg !2640

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2641
  %164 = icmp ne i32 %163, 2, !dbg !2642
  br i1 %164, label %165, label %197, !dbg !2643

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2644
  %167 = icmp ne i64 %166, 0, !dbg !2644
  br i1 %167, label %168, label %197, !dbg !2645

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2646
  %170 = load i64, i64* %24, align 8, !dbg !2647
  %171 = add i64 %169, %170, !dbg !2648
  %172 = load i64, i64* %14, align 8, !dbg !2649
  %173 = icmp eq i64 %172, -1, !dbg !2650
  br i1 %173, label %174, label %180, !dbg !2651

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2652
  %176 = icmp ult i64 1, %175, !dbg !2653
  br i1 %176, label %177, label %180, !dbg !2649

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2654
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !2655
  store i64 %179, i64* %14, align 8, !dbg !2656
  br label %182, !dbg !2649

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2657
  br label %182, !dbg !2649

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2649
  %184 = icmp ule i64 %171, %183, !dbg !2658
  br i1 %184, label %185, label %197, !dbg !2659

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2660
  %187 = load i64, i64* %31, align 8, !dbg !2661
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2662
  %189 = load i8*, i8** %23, align 8, !dbg !2663
  %190 = load i64, i64* %24, align 8, !dbg !2664
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2665
  br i1 %191, label %192, label %197, !dbg !2666

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2667
  %194 = trunc i8 %193 to i1, !dbg !2667
  br i1 %194, label %195, label %196, !dbg !2670

195:                                              ; preds = %192
  br label %1078, !dbg !2671

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2672
  br label %197, !dbg !2673

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2674, metadata !DIExpression()), !dbg !2675
  %198 = load i8*, i8** %13, align 8, !dbg !2676
  %199 = load i64, i64* %31, align 8, !dbg !2677
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2676
  %201 = load i8, i8* %200, align 1, !dbg !2676
  store i8 %201, i8* %35, align 1, !dbg !2675
  %202 = load i8, i8* %35, align 1, !dbg !2678
  %203 = zext i8 %202 to i32, !dbg !2678
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
  ], !dbg !2679

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2680
  %206 = trunc i8 %205 to i1, !dbg !2680
  br i1 %206, label %207, label %318, !dbg !2683

207:                                              ; preds = %204
  br label %208, !dbg !2684

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2686
  %210 = trunc i8 %209 to i1, !dbg !2686
  br i1 %210, label %211, label %212, !dbg !2689

211:                                              ; preds = %208
  br label %1078, !dbg !2686

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2689
  %213 = load i32, i32* %15, align 4, !dbg !2690
  %214 = icmp eq i32 %213, 2, !dbg !2690
  br i1 %214, label %215, label %255, !dbg !2690

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2690
  %217 = trunc i8 %216 to i1, !dbg !2690
  br i1 %217, label %255, label %218, !dbg !2689

218:                                              ; preds = %215
  br label %219, !dbg !2692

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2694
  %221 = load i64, i64* %12, align 8, !dbg !2694
  %222 = icmp ult i64 %220, %221, !dbg !2694
  br i1 %222, label %223, label %227, !dbg !2697

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2694
  %225 = load i64, i64* %21, align 8, !dbg !2694
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2694
  store i8 39, i8* %226, align 1, !dbg !2694
  br label %227, !dbg !2694

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2697
  %229 = add i64 %228, 1, !dbg !2697
  store i64 %229, i64* %21, align 8, !dbg !2697
  br label %230, !dbg !2697

230:                                              ; preds = %227
  br label %231, !dbg !2692

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2698
  %233 = load i64, i64* %12, align 8, !dbg !2698
  %234 = icmp ult i64 %232, %233, !dbg !2698
  br i1 %234, label %235, label %239, !dbg !2701

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2698
  %237 = load i64, i64* %21, align 8, !dbg !2698
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2698
  store i8 36, i8* %238, align 1, !dbg !2698
  br label %239, !dbg !2698

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2701
  %241 = add i64 %240, 1, !dbg !2701
  store i64 %241, i64* %21, align 8, !dbg !2701
  br label %242, !dbg !2701

242:                                              ; preds = %239
  br label %243, !dbg !2692

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2702
  %245 = load i64, i64* %12, align 8, !dbg !2702
  %246 = icmp ult i64 %244, %245, !dbg !2702
  br i1 %246, label %247, label %251, !dbg !2705

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2702
  %249 = load i64, i64* %21, align 8, !dbg !2702
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2702
  store i8 39, i8* %250, align 1, !dbg !2702
  br label %251, !dbg !2702

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2705
  %253 = add i64 %252, 1, !dbg !2705
  store i64 %253, i64* %21, align 8, !dbg !2705
  br label %254, !dbg !2705

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2692
  br label %255, !dbg !2692

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2689

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2706
  %258 = load i64, i64* %12, align 8, !dbg !2706
  %259 = icmp ult i64 %257, %258, !dbg !2706
  br i1 %259, label %260, label %264, !dbg !2709

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2706
  %262 = load i64, i64* %21, align 8, !dbg !2706
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2706
  store i8 92, i8* %263, align 1, !dbg !2706
  br label %264, !dbg !2706

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2709
  %266 = add i64 %265, 1, !dbg !2709
  store i64 %266, i64* %21, align 8, !dbg !2709
  br label %267, !dbg !2709

267:                                              ; preds = %264
  br label %268, !dbg !2689

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2710
  %270 = icmp ne i32 %269, 2, !dbg !2712
  br i1 %270, label %271, label %317, !dbg !2713

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2714
  %273 = add i64 %272, 1, !dbg !2715
  %274 = load i64, i64* %14, align 8, !dbg !2716
  %275 = icmp ult i64 %273, %274, !dbg !2717
  br i1 %275, label %276, label %317, !dbg !2718

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2719
  %278 = load i64, i64* %31, align 8, !dbg !2720
  %279 = add i64 %278, 1, !dbg !2721
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2719
  %281 = load i8, i8* %280, align 1, !dbg !2719
  %282 = zext i8 %281 to i32, !dbg !2719
  %283 = icmp sle i32 48, %282, !dbg !2722
  br i1 %283, label %284, label %317, !dbg !2723

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2724
  %286 = load i64, i64* %31, align 8, !dbg !2725
  %287 = add i64 %286, 1, !dbg !2726
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2724
  %289 = load i8, i8* %288, align 1, !dbg !2724
  %290 = zext i8 %289 to i32, !dbg !2724
  %291 = icmp sle i32 %290, 57, !dbg !2727
  br i1 %291, label %292, label %317, !dbg !2728

292:                                              ; preds = %284
  br label %293, !dbg !2729

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2731
  %295 = load i64, i64* %12, align 8, !dbg !2731
  %296 = icmp ult i64 %294, %295, !dbg !2731
  br i1 %296, label %297, label %301, !dbg !2734

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2731
  %299 = load i64, i64* %21, align 8, !dbg !2731
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2731
  store i8 48, i8* %300, align 1, !dbg !2731
  br label %301, !dbg !2731

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2734
  %303 = add i64 %302, 1, !dbg !2734
  store i64 %303, i64* %21, align 8, !dbg !2734
  br label %304, !dbg !2734

304:                                              ; preds = %301
  br label %305, !dbg !2735

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2736
  %307 = load i64, i64* %12, align 8, !dbg !2736
  %308 = icmp ult i64 %306, %307, !dbg !2736
  br i1 %308, label %309, label %313, !dbg !2739

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2736
  %311 = load i64, i64* %21, align 8, !dbg !2736
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2736
  store i8 48, i8* %312, align 1, !dbg !2736
  br label %313, !dbg !2736

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2739
  %315 = add i64 %314, 1, !dbg !2739
  store i64 %315, i64* %21, align 8, !dbg !2739
  br label %316, !dbg !2739

316:                                              ; preds = %313
  br label %317, !dbg !2740

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2741
  br label %324, !dbg !2742

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2743
  %320 = and i32 %319, 1, !dbg !2745
  %321 = icmp ne i32 %320, 0, !dbg !2745
  br i1 %321, label %322, label %323, !dbg !2746

322:                                              ; preds = %318
  br label %993, !dbg !2747

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2748

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2749
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2750

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2751
  %329 = trunc i8 %328 to i1, !dbg !2751
  br i1 %329, label %330, label %331, !dbg !2754

330:                                              ; preds = %327
  br label %1078, !dbg !2755

331:                                              ; preds = %327
  br label %418, !dbg !2756

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2757
  %334 = and i32 %333, 4, !dbg !2759
  %335 = icmp ne i32 %334, 0, !dbg !2759
  br i1 %335, label %336, label %417, !dbg !2760

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2761
  %338 = add i64 %337, 2, !dbg !2762
  %339 = load i64, i64* %14, align 8, !dbg !2763
  %340 = icmp ult i64 %338, %339, !dbg !2764
  br i1 %340, label %341, label %417, !dbg !2765

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2766
  %343 = load i64, i64* %31, align 8, !dbg !2767
  %344 = add i64 %343, 1, !dbg !2768
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2766
  %346 = load i8, i8* %345, align 1, !dbg !2766
  %347 = zext i8 %346 to i32, !dbg !2766
  %348 = icmp eq i32 %347, 63, !dbg !2769
  br i1 %348, label %349, label %417, !dbg !2770

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2771
  %351 = load i64, i64* %31, align 8, !dbg !2772
  %352 = add i64 %351, 2, !dbg !2773
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2771
  %354 = load i8, i8* %353, align 1, !dbg !2771
  %355 = zext i8 %354 to i32, !dbg !2771
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
  ], !dbg !2774

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2775
  %358 = trunc i8 %357 to i1, !dbg !2775
  br i1 %358, label %359, label %360, !dbg !2778

359:                                              ; preds = %356
  br label %1078, !dbg !2779

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2780
  %362 = load i64, i64* %31, align 8, !dbg !2781
  %363 = add i64 %362, 2, !dbg !2782
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2780
  %365 = load i8, i8* %364, align 1, !dbg !2780
  store i8 %365, i8* %35, align 1, !dbg !2783
  %366 = load i64, i64* %31, align 8, !dbg !2784
  %367 = add i64 %366, 2, !dbg !2784
  store i64 %367, i64* %31, align 8, !dbg !2784
  br label %368, !dbg !2785

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2786
  %370 = load i64, i64* %12, align 8, !dbg !2786
  %371 = icmp ult i64 %369, %370, !dbg !2786
  br i1 %371, label %372, label %376, !dbg !2789

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2786
  %374 = load i64, i64* %21, align 8, !dbg !2786
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2786
  store i8 63, i8* %375, align 1, !dbg !2786
  br label %376, !dbg !2786

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2789
  %378 = add i64 %377, 1, !dbg !2789
  store i64 %378, i64* %21, align 8, !dbg !2789
  br label %379, !dbg !2789

379:                                              ; preds = %376
  br label %380, !dbg !2790

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2791
  %382 = load i64, i64* %12, align 8, !dbg !2791
  %383 = icmp ult i64 %381, %382, !dbg !2791
  br i1 %383, label %384, label %388, !dbg !2794

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2791
  %386 = load i64, i64* %21, align 8, !dbg !2791
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2791
  store i8 34, i8* %387, align 1, !dbg !2791
  br label %388, !dbg !2791

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2794
  %390 = add i64 %389, 1, !dbg !2794
  store i64 %390, i64* %21, align 8, !dbg !2794
  br label %391, !dbg !2794

391:                                              ; preds = %388
  br label %392, !dbg !2795

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2796
  %394 = load i64, i64* %12, align 8, !dbg !2796
  %395 = icmp ult i64 %393, %394, !dbg !2796
  br i1 %395, label %396, label %400, !dbg !2799

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2796
  %398 = load i64, i64* %21, align 8, !dbg !2796
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2796
  store i8 34, i8* %399, align 1, !dbg !2796
  br label %400, !dbg !2796

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2799
  %402 = add i64 %401, 1, !dbg !2799
  store i64 %402, i64* %21, align 8, !dbg !2799
  br label %403, !dbg !2799

403:                                              ; preds = %400
  br label %404, !dbg !2800

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2801
  %406 = load i64, i64* %12, align 8, !dbg !2801
  %407 = icmp ult i64 %405, %406, !dbg !2801
  br i1 %407, label %408, label %412, !dbg !2804

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2801
  %410 = load i64, i64* %21, align 8, !dbg !2801
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2801
  store i8 63, i8* %411, align 1, !dbg !2801
  br label %412, !dbg !2801

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2804
  %414 = add i64 %413, 1, !dbg !2804
  store i64 %414, i64* %21, align 8, !dbg !2804
  br label %415, !dbg !2804

415:                                              ; preds = %412
  br label %416, !dbg !2805

416:                                              ; preds = %349, %415
  br label %417, !dbg !2806

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2807

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2808

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2809
  br label %454, !dbg !2811

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2812
  br label %454, !dbg !2813

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2814
  br label %454, !dbg !2815

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2816
  br label %446, !dbg !2817

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2818
  br label %446, !dbg !2819

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2820
  br label %446, !dbg !2821

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2822
  br label %454, !dbg !2823

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2824
  store i8 %427, i8* %36, align 1, !dbg !2825
  %428 = load i32, i32* %15, align 4, !dbg !2826
  %429 = icmp eq i32 %428, 2, !dbg !2828
  br i1 %429, label %430, label %435, !dbg !2829

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2830
  %432 = trunc i8 %431 to i1, !dbg !2830
  br i1 %432, label %433, label %434, !dbg !2833

433:                                              ; preds = %430
  br label %1078, !dbg !2834

434:                                              ; preds = %430
  br label %942, !dbg !2835

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2836
  %437 = trunc i8 %436 to i1, !dbg !2836
  br i1 %437, label %438, label %445, !dbg !2838

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2839
  %440 = trunc i8 %439 to i1, !dbg !2839
  br i1 %440, label %441, label %445, !dbg !2840

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2841
  %443 = icmp ne i64 %442, 0, !dbg !2841
  br i1 %443, label %444, label %445, !dbg !2842

444:                                              ; preds = %441
  br label %942, !dbg !2843

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2841

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2844), !dbg !2845
  %447 = load i32, i32* %15, align 4, !dbg !2846
  %448 = icmp eq i32 %447, 2, !dbg !2848
  br i1 %448, label %449, label %453, !dbg !2849

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2850
  %451 = trunc i8 %450 to i1, !dbg !2850
  br i1 %451, label %452, label %453, !dbg !2851

452:                                              ; preds = %449
  br label %1078, !dbg !2852

453:                                              ; preds = %449, %446
  br label %454, !dbg !2850

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2853), !dbg !2854
  %455 = load i8, i8* %25, align 1, !dbg !2855
  %456 = trunc i8 %455 to i1, !dbg !2855
  br i1 %456, label %457, label %459, !dbg !2857

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2858
  store i8 %458, i8* %35, align 1, !dbg !2860
  br label %880, !dbg !2861

459:                                              ; preds = %454
  br label %849, !dbg !2862

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2863
  %462 = icmp eq i64 %461, -1, !dbg !2865
  br i1 %462, label %463, label %469, !dbg !2866

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2867
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2867
  %466 = load i8, i8* %465, align 1, !dbg !2867
  %467 = zext i8 %466 to i32, !dbg !2867
  %468 = icmp eq i32 %467, 0, !dbg !2868
  br i1 %468, label %473, label %472, !dbg !2863

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2869
  %471 = icmp eq i64 %470, 1, !dbg !2870
  br i1 %471, label %473, label %472, !dbg !2866

472:                                              ; preds = %469, %463
  br label %849, !dbg !2871

473:                                              ; preds = %469, %463
  br label %474, !dbg !2872

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2873
  %476 = icmp ne i64 %475, 0, !dbg !2875
  br i1 %476, label %477, label %478, !dbg !2876

477:                                              ; preds = %474
  br label %849, !dbg !2877

478:                                              ; preds = %474
  br label %479, !dbg !2878

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2879
  br label %480, !dbg !2880

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2881
  %482 = icmp eq i32 %481, 2, !dbg !2883
  br i1 %482, label %483, label %487, !dbg !2884

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2885
  %485 = trunc i8 %484 to i1, !dbg !2885
  br i1 %485, label %486, label %487, !dbg !2886

486:                                              ; preds = %483
  br label %1078, !dbg !2887

487:                                              ; preds = %483, %480
  br label %849, !dbg !2888

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2889
  store i8 1, i8* %34, align 1, !dbg !2890
  %489 = load i32, i32* %15, align 4, !dbg !2891
  %490 = icmp eq i32 %489, 2, !dbg !2893
  br i1 %490, label %491, label %540, !dbg !2894

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2895
  %493 = trunc i8 %492 to i1, !dbg !2895
  br i1 %493, label %494, label %495, !dbg !2898

494:                                              ; preds = %491
  br label %1078, !dbg !2899

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2900
  %497 = icmp ne i64 %496, 0, !dbg !2900
  br i1 %497, label %498, label %503, !dbg !2902

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2903
  %500 = icmp ne i64 %499, 0, !dbg !2903
  br i1 %500, label %503, label %501, !dbg !2904

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2905
  store i64 %502, i64* %22, align 8, !dbg !2907
  store i64 0, i64* %12, align 8, !dbg !2908
  br label %503, !dbg !2909

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2910

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2911
  %506 = load i64, i64* %12, align 8, !dbg !2911
  %507 = icmp ult i64 %505, %506, !dbg !2911
  br i1 %507, label %508, label %512, !dbg !2914

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2911
  %510 = load i64, i64* %21, align 8, !dbg !2911
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2911
  store i8 39, i8* %511, align 1, !dbg !2911
  br label %512, !dbg !2911

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2914
  %514 = add i64 %513, 1, !dbg !2914
  store i64 %514, i64* %21, align 8, !dbg !2914
  br label %515, !dbg !2914

515:                                              ; preds = %512
  br label %516, !dbg !2915

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2916
  %518 = load i64, i64* %12, align 8, !dbg !2916
  %519 = icmp ult i64 %517, %518, !dbg !2916
  br i1 %519, label %520, label %524, !dbg !2919

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2916
  %522 = load i64, i64* %21, align 8, !dbg !2916
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2916
  store i8 92, i8* %523, align 1, !dbg !2916
  br label %524, !dbg !2916

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2919
  %526 = add i64 %525, 1, !dbg !2919
  store i64 %526, i64* %21, align 8, !dbg !2919
  br label %527, !dbg !2919

527:                                              ; preds = %524
  br label %528, !dbg !2920

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2921
  %530 = load i64, i64* %12, align 8, !dbg !2921
  %531 = icmp ult i64 %529, %530, !dbg !2921
  br i1 %531, label %532, label %536, !dbg !2924

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2921
  %534 = load i64, i64* %21, align 8, !dbg !2921
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2921
  store i8 39, i8* %535, align 1, !dbg !2921
  br label %536, !dbg !2921

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2924
  %538 = add i64 %537, 1, !dbg !2924
  store i64 %538, i64* %21, align 8, !dbg !2924
  br label %539, !dbg !2924

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2925
  br label %540, !dbg !2926

540:                                              ; preds = %539, %488
  br label %849, !dbg !2927

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2928
  br label %849, !dbg !2929

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2933, metadata !DIExpression()), !dbg !2934
  %543 = load i8, i8* %20, align 1, !dbg !2935
  %544 = trunc i8 %543 to i1, !dbg !2935
  br i1 %544, label %545, label %557, !dbg !2937

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2938
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2940
  %547 = load i16*, i16** %546, align 8, !dbg !2940
  %548 = load i8, i8* %35, align 1, !dbg !2940
  %549 = zext i8 %548 to i32, !dbg !2940
  %550 = sext i32 %549 to i64, !dbg !2940
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2940
  %552 = load i16, i16* %551, align 2, !dbg !2940
  %553 = zext i16 %552 to i32, !dbg !2940
  %554 = and i32 %553, 16384, !dbg !2940
  %555 = icmp ne i32 %554, 0, !dbg !2941
  %556 = zext i1 %555 to i8, !dbg !2942
  store i8 %556, i8* %38, align 1, !dbg !2942
  br label %648, !dbg !2943

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2944, metadata !DIExpression()), !dbg !2956
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2957
  store i64 0, i64* %37, align 8, !dbg !2958
  store i8 1, i8* %38, align 1, !dbg !2959
  %558 = load i64, i64* %14, align 8, !dbg !2960
  %559 = icmp eq i64 %558, -1, !dbg !2962
  br i1 %559, label %560, label %563, !dbg !2963

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2964
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2965
  store i64 %562, i64* %14, align 8, !dbg !2966
  br label %563, !dbg !2967

563:                                              ; preds = %560, %557
  br label %564, !dbg !2968

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2974, metadata !DIExpression()), !dbg !2975
  %565 = load i8*, i8** %13, align 8, !dbg !2976
  %566 = load i64, i64* %31, align 8, !dbg !2977
  %567 = load i64, i64* %37, align 8, !dbg !2978
  %568 = add i64 %566, %567, !dbg !2979
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2976
  %570 = load i64, i64* %14, align 8, !dbg !2980
  %571 = load i64, i64* %31, align 8, !dbg !2981
  %572 = load i64, i64* %37, align 8, !dbg !2982
  %573 = add i64 %571, %572, !dbg !2983
  %574 = sub i64 %570, %573, !dbg !2984
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2985
  store i64 %575, i64* %41, align 8, !dbg !2975
  %576 = load i64, i64* %41, align 8, !dbg !2986
  %577 = icmp eq i64 %576, 0, !dbg !2988
  br i1 %577, label %578, label %579, !dbg !2989

578:                                              ; preds = %564
  br label %647, !dbg !2990

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2991
  %581 = icmp eq i64 %580, -1, !dbg !2993
  br i1 %581, label %582, label %583, !dbg !2994

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2995
  br label %647, !dbg !2997

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2998
  %585 = icmp eq i64 %584, -2, !dbg !3000
  br i1 %585, label %586, label %608, !dbg !3001

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !3002
  br label %587, !dbg !3004

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !3005
  %589 = load i64, i64* %37, align 8, !dbg !3006
  %590 = add i64 %588, %589, !dbg !3007
  %591 = load i64, i64* %14, align 8, !dbg !3008
  %592 = icmp ult i64 %590, %591, !dbg !3009
  br i1 %592, label %593, label %602, !dbg !3010

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !3011
  %595 = load i64, i64* %31, align 8, !dbg !3012
  %596 = load i64, i64* %37, align 8, !dbg !3013
  %597 = add i64 %595, %596, !dbg !3014
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !3011
  %599 = load i8, i8* %598, align 1, !dbg !3011
  %600 = zext i8 %599 to i32, !dbg !3011
  %601 = icmp ne i32 %600, 0, !dbg !3010
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !3015
  br i1 %603, label %604, label %607, !dbg !3004

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !3016
  %606 = add i64 %605, 1, !dbg !3016
  store i64 %606, i64* %37, align 8, !dbg !3016
  br label %587, !dbg !3004, !llvm.loop !3017

607:                                              ; preds = %602
  br label %647, !dbg !3018

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !3019
  %610 = trunc i8 %609 to i1, !dbg !3019
  br i1 %610, label %611, label %635, !dbg !3022

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !3023
  %613 = icmp eq i32 %612, 2, !dbg !3024
  br i1 %613, label %614, label %635, !dbg !3025

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !3026, metadata !DIExpression()), !dbg !3029
  store i64 1, i64* %42, align 8, !dbg !3029
  br label %615, !dbg !3030

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !3031
  %617 = load i64, i64* %41, align 8, !dbg !3033
  %618 = icmp ult i64 %616, %617, !dbg !3034
  br i1 %618, label %619, label %634, !dbg !3035

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !3036
  %621 = load i64, i64* %31, align 8, !dbg !3037
  %622 = load i64, i64* %37, align 8, !dbg !3038
  %623 = add i64 %621, %622, !dbg !3039
  %624 = load i64, i64* %42, align 8, !dbg !3040
  %625 = add i64 %623, %624, !dbg !3041
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !3036
  %627 = load i8, i8* %626, align 1, !dbg !3036
  %628 = zext i8 %627 to i32, !dbg !3036
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !3042

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !3043

630:                                              ; preds = %619
  br label %631, !dbg !3045

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !3046
  %633 = add i64 %632, 1, !dbg !3046
  store i64 %633, i64* %42, align 8, !dbg !3046
  br label %615, !dbg !3047, !llvm.loop !3048

634:                                              ; preds = %615
  br label %635, !dbg !3050

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !3051
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !3053
  %638 = icmp ne i32 %637, 0, !dbg !3053
  br i1 %638, label %640, label %639, !dbg !3054

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !3055
  br label %640, !dbg !3056

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !3057
  %642 = load i64, i64* %37, align 8, !dbg !3058
  %643 = add i64 %642, %641, !dbg !3058
  store i64 %643, i64* %37, align 8, !dbg !3058
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !3059

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !3060
  %650 = trunc i8 %649 to i1, !dbg !3060
  %651 = zext i1 %650 to i8, !dbg !3061
  store i8 %651, i8* %34, align 1, !dbg !3061
  %652 = load i64, i64* %37, align 8, !dbg !3062
  %653 = icmp ult i64 1, %652, !dbg !3064
  br i1 %653, label %660, label %654, !dbg !3065

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !3066
  %656 = trunc i8 %655 to i1, !dbg !3066
  br i1 %656, label %657, label %848, !dbg !3067

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !3068
  %659 = trunc i8 %658 to i1, !dbg !3068
  br i1 %659, label %848, label %660, !dbg !3069

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !3070, metadata !DIExpression()), !dbg !3072
  %661 = load i64, i64* %31, align 8, !dbg !3073
  %662 = load i64, i64* %37, align 8, !dbg !3074
  %663 = add i64 %661, %662, !dbg !3075
  store i64 %663, i64* %43, align 8, !dbg !3072
  br label %664, !dbg !3076

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !3077
  %666 = trunc i8 %665 to i1, !dbg !3077
  br i1 %666, label %667, label %772, !dbg !3082

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !3083
  %669 = trunc i8 %668 to i1, !dbg !3083
  br i1 %669, label %772, label %670, !dbg !3084

670:                                              ; preds = %667
  br label %671, !dbg !3085

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !3087
  %673 = trunc i8 %672 to i1, !dbg !3087
  br i1 %673, label %674, label %675, !dbg !3090

674:                                              ; preds = %671
  br label %1078, !dbg !3087

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !3090
  %676 = load i32, i32* %15, align 4, !dbg !3091
  %677 = icmp eq i32 %676, 2, !dbg !3091
  br i1 %677, label %678, label %718, !dbg !3091

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !3091
  %680 = trunc i8 %679 to i1, !dbg !3091
  br i1 %680, label %718, label %681, !dbg !3090

681:                                              ; preds = %678
  br label %682, !dbg !3093

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !3095
  %684 = load i64, i64* %12, align 8, !dbg !3095
  %685 = icmp ult i64 %683, %684, !dbg !3095
  br i1 %685, label %686, label %690, !dbg !3098

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !3095
  %688 = load i64, i64* %21, align 8, !dbg !3095
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !3095
  store i8 39, i8* %689, align 1, !dbg !3095
  br label %690, !dbg !3095

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !3098
  %692 = add i64 %691, 1, !dbg !3098
  store i64 %692, i64* %21, align 8, !dbg !3098
  br label %693, !dbg !3098

693:                                              ; preds = %690
  br label %694, !dbg !3093

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !3099
  %696 = load i64, i64* %12, align 8, !dbg !3099
  %697 = icmp ult i64 %695, %696, !dbg !3099
  br i1 %697, label %698, label %702, !dbg !3102

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !3099
  %700 = load i64, i64* %21, align 8, !dbg !3099
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !3099
  store i8 36, i8* %701, align 1, !dbg !3099
  br label %702, !dbg !3099

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !3102
  %704 = add i64 %703, 1, !dbg !3102
  store i64 %704, i64* %21, align 8, !dbg !3102
  br label %705, !dbg !3102

705:                                              ; preds = %702
  br label %706, !dbg !3093

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !3103
  %708 = load i64, i64* %12, align 8, !dbg !3103
  %709 = icmp ult i64 %707, %708, !dbg !3103
  br i1 %709, label %710, label %714, !dbg !3106

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !3103
  %712 = load i64, i64* %21, align 8, !dbg !3103
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !3103
  store i8 39, i8* %713, align 1, !dbg !3103
  br label %714, !dbg !3103

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !3106
  %716 = add i64 %715, 1, !dbg !3106
  store i64 %716, i64* %21, align 8, !dbg !3106
  br label %717, !dbg !3106

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !3093
  br label %718, !dbg !3093

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !3090

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !3107
  %721 = load i64, i64* %12, align 8, !dbg !3107
  %722 = icmp ult i64 %720, %721, !dbg !3107
  br i1 %722, label %723, label %727, !dbg !3110

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !3107
  %725 = load i64, i64* %21, align 8, !dbg !3107
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !3107
  store i8 92, i8* %726, align 1, !dbg !3107
  br label %727, !dbg !3107

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !3110
  %729 = add i64 %728, 1, !dbg !3110
  store i64 %729, i64* %21, align 8, !dbg !3110
  br label %730, !dbg !3110

730:                                              ; preds = %727
  br label %731, !dbg !3090

731:                                              ; preds = %730
  br label %732, !dbg !3111

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !3112
  %734 = load i64, i64* %12, align 8, !dbg !3112
  %735 = icmp ult i64 %733, %734, !dbg !3112
  br i1 %735, label %736, label %745, !dbg !3115

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !3112
  %738 = zext i8 %737 to i32, !dbg !3112
  %739 = ashr i32 %738, 6, !dbg !3112
  %740 = add nsw i32 48, %739, !dbg !3112
  %741 = trunc i32 %740 to i8, !dbg !3112
  %742 = load i8*, i8** %11, align 8, !dbg !3112
  %743 = load i64, i64* %21, align 8, !dbg !3112
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !3112
  store i8 %741, i8* %744, align 1, !dbg !3112
  br label %745, !dbg !3112

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !3115
  %747 = add i64 %746, 1, !dbg !3115
  store i64 %747, i64* %21, align 8, !dbg !3115
  br label %748, !dbg !3115

748:                                              ; preds = %745
  br label %749, !dbg !3116

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !3117
  %751 = load i64, i64* %12, align 8, !dbg !3117
  %752 = icmp ult i64 %750, %751, !dbg !3117
  br i1 %752, label %753, label %763, !dbg !3120

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !3117
  %755 = zext i8 %754 to i32, !dbg !3117
  %756 = ashr i32 %755, 3, !dbg !3117
  %757 = and i32 %756, 7, !dbg !3117
  %758 = add nsw i32 48, %757, !dbg !3117
  %759 = trunc i32 %758 to i8, !dbg !3117
  %760 = load i8*, i8** %11, align 8, !dbg !3117
  %761 = load i64, i64* %21, align 8, !dbg !3117
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !3117
  store i8 %759, i8* %762, align 1, !dbg !3117
  br label %763, !dbg !3117

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !3120
  %765 = add i64 %764, 1, !dbg !3120
  store i64 %765, i64* %21, align 8, !dbg !3120
  br label %766, !dbg !3120

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !3121
  %768 = zext i8 %767 to i32, !dbg !3121
  %769 = and i32 %768, 7, !dbg !3122
  %770 = add nsw i32 48, %769, !dbg !3123
  %771 = trunc i32 %770 to i8, !dbg !3124
  store i8 %771, i8* %35, align 1, !dbg !3125
  br label %789, !dbg !3126

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !3127
  %774 = trunc i8 %773 to i1, !dbg !3127
  br i1 %774, label %775, label %788, !dbg !3129

775:                                              ; preds = %772
  br label %776, !dbg !3130

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !3132
  %778 = load i64, i64* %12, align 8, !dbg !3132
  %779 = icmp ult i64 %777, %778, !dbg !3132
  br i1 %779, label %780, label %784, !dbg !3135

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !3132
  %782 = load i64, i64* %21, align 8, !dbg !3132
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !3132
  store i8 92, i8* %783, align 1, !dbg !3132
  br label %784, !dbg !3132

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !3135
  %786 = add i64 %785, 1, !dbg !3135
  store i64 %786, i64* %21, align 8, !dbg !3135
  br label %787, !dbg !3135

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !3136
  br label %788, !dbg !3137

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !3138
  %791 = load i64, i64* %31, align 8, !dbg !3140
  %792 = add i64 %791, 1, !dbg !3141
  %793 = icmp ule i64 %790, %792, !dbg !3142
  br i1 %793, label %794, label %795, !dbg !3143

794:                                              ; preds = %789
  br label %847, !dbg !3144

795:                                              ; preds = %789
  br label %796, !dbg !3145

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !3146
  %798 = trunc i8 %797 to i1, !dbg !3146
  br i1 %798, label %799, label %827, !dbg !3146

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !3146
  %801 = trunc i8 %800 to i1, !dbg !3146
  br i1 %801, label %827, label %802, !dbg !3149

802:                                              ; preds = %799
  br label %803, !dbg !3150

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !3152
  %805 = load i64, i64* %12, align 8, !dbg !3152
  %806 = icmp ult i64 %804, %805, !dbg !3152
  br i1 %806, label %807, label %811, !dbg !3155

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !3152
  %809 = load i64, i64* %21, align 8, !dbg !3152
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !3152
  store i8 39, i8* %810, align 1, !dbg !3152
  br label %811, !dbg !3152

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !3155
  %813 = add i64 %812, 1, !dbg !3155
  store i64 %813, i64* %21, align 8, !dbg !3155
  br label %814, !dbg !3155

814:                                              ; preds = %811
  br label %815, !dbg !3150

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !3156
  %817 = load i64, i64* %12, align 8, !dbg !3156
  %818 = icmp ult i64 %816, %817, !dbg !3156
  br i1 %818, label %819, label %823, !dbg !3159

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !3156
  %821 = load i64, i64* %21, align 8, !dbg !3156
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !3156
  store i8 39, i8* %822, align 1, !dbg !3156
  br label %823, !dbg !3156

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !3159
  %825 = add i64 %824, 1, !dbg !3159
  store i64 %825, i64* %21, align 8, !dbg !3159
  br label %826, !dbg !3159

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !3150
  br label %827, !dbg !3150

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !3149

828:                                              ; preds = %827
  br label %829, !dbg !3160

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !3161
  %831 = load i64, i64* %12, align 8, !dbg !3161
  %832 = icmp ult i64 %830, %831, !dbg !3161
  br i1 %832, label %833, label %838, !dbg !3164

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !3161
  %835 = load i8*, i8** %11, align 8, !dbg !3161
  %836 = load i64, i64* %21, align 8, !dbg !3161
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !3161
  store i8 %834, i8* %837, align 1, !dbg !3161
  br label %838, !dbg !3161

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !3164
  %840 = add i64 %839, 1, !dbg !3164
  store i64 %840, i64* %21, align 8, !dbg !3164
  br label %841, !dbg !3164

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !3165
  %843 = load i64, i64* %31, align 8, !dbg !3166
  %844 = add i64 %843, 1, !dbg !3166
  store i64 %844, i64* %31, align 8, !dbg !3166
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !3165
  %846 = load i8, i8* %845, align 1, !dbg !3165
  store i8 %846, i8* %35, align 1, !dbg !3167
  br label %664, !dbg !3168, !llvm.loop !3169

847:                                              ; preds = %794
  br label %942, !dbg !3172

848:                                              ; preds = %657, %654
  br label %849, !dbg !3173

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !3174
  %851 = trunc i8 %850 to i1, !dbg !3174
  br i1 %851, label %852, label %855, !dbg !3176

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !3177
  %854 = icmp ne i32 %853, 2, !dbg !3178
  br i1 %854, label %858, label %855, !dbg !3179

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !3180
  %857 = trunc i8 %856 to i1, !dbg !3180
  br i1 %857, label %858, label %875, !dbg !3181

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !3182
  %860 = icmp ne i32* %859, null, !dbg !3182
  br i1 %860, label %861, label %875, !dbg !3183

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !3184
  %863 = load i8, i8* %35, align 1, !dbg !3185
  %864 = zext i8 %863 to i64, !dbg !3185
  %865 = udiv i64 %864, 32, !dbg !3186
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !3184
  %867 = load i32, i32* %866, align 4, !dbg !3184
  %868 = load i8, i8* %35, align 1, !dbg !3187
  %869 = zext i8 %868 to i64, !dbg !3187
  %870 = urem i64 %869, 32, !dbg !3188
  %871 = trunc i64 %870 to i32, !dbg !3189
  %872 = lshr i32 %867, %871, !dbg !3189
  %873 = and i32 %872, 1, !dbg !3190
  %874 = icmp ne i32 %873, 0, !dbg !3190
  br i1 %874, label %879, label %875, !dbg !3191

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !3192
  %877 = trunc i8 %876 to i1, !dbg !3192
  br i1 %877, label %879, label %878, !dbg !3193

878:                                              ; preds = %875
  br label %942, !dbg !3194

879:                                              ; preds = %875, %861
  br label %880, !dbg !3192

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !3195), !dbg !3196
  br label %881, !dbg !3197

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !3198
  %883 = trunc i8 %882 to i1, !dbg !3198
  br i1 %883, label %884, label %885, !dbg !3201

884:                                              ; preds = %881
  br label %1078, !dbg !3198

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !3201
  %886 = load i32, i32* %15, align 4, !dbg !3202
  %887 = icmp eq i32 %886, 2, !dbg !3202
  br i1 %887, label %888, label %928, !dbg !3202

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !3202
  %890 = trunc i8 %889 to i1, !dbg !3202
  br i1 %890, label %928, label %891, !dbg !3201

891:                                              ; preds = %888
  br label %892, !dbg !3204

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !3206
  %894 = load i64, i64* %12, align 8, !dbg !3206
  %895 = icmp ult i64 %893, %894, !dbg !3206
  br i1 %895, label %896, label %900, !dbg !3209

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !3206
  %898 = load i64, i64* %21, align 8, !dbg !3206
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !3206
  store i8 39, i8* %899, align 1, !dbg !3206
  br label %900, !dbg !3206

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !3209
  %902 = add i64 %901, 1, !dbg !3209
  store i64 %902, i64* %21, align 8, !dbg !3209
  br label %903, !dbg !3209

903:                                              ; preds = %900
  br label %904, !dbg !3204

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !3210
  %906 = load i64, i64* %12, align 8, !dbg !3210
  %907 = icmp ult i64 %905, %906, !dbg !3210
  br i1 %907, label %908, label %912, !dbg !3213

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !3210
  %910 = load i64, i64* %21, align 8, !dbg !3210
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !3210
  store i8 36, i8* %911, align 1, !dbg !3210
  br label %912, !dbg !3210

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !3213
  %914 = add i64 %913, 1, !dbg !3213
  store i64 %914, i64* %21, align 8, !dbg !3213
  br label %915, !dbg !3213

915:                                              ; preds = %912
  br label %916, !dbg !3204

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !3214
  %918 = load i64, i64* %12, align 8, !dbg !3214
  %919 = icmp ult i64 %917, %918, !dbg !3214
  br i1 %919, label %920, label %924, !dbg !3217

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !3214
  %922 = load i64, i64* %21, align 8, !dbg !3214
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !3214
  store i8 39, i8* %923, align 1, !dbg !3214
  br label %924, !dbg !3214

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !3217
  %926 = add i64 %925, 1, !dbg !3217
  store i64 %926, i64* %21, align 8, !dbg !3217
  br label %927, !dbg !3217

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !3204
  br label %928, !dbg !3204

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !3201

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !3218
  %931 = load i64, i64* %12, align 8, !dbg !3218
  %932 = icmp ult i64 %930, %931, !dbg !3218
  br i1 %932, label %933, label %937, !dbg !3221

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !3218
  %935 = load i64, i64* %21, align 8, !dbg !3218
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !3218
  store i8 92, i8* %936, align 1, !dbg !3218
  br label %937, !dbg !3218

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !3221
  %939 = add i64 %938, 1, !dbg !3221
  store i64 %939, i64* %21, align 8, !dbg !3221
  br label %940, !dbg !3221

940:                                              ; preds = %937
  br label %941, !dbg !3201

941:                                              ; preds = %940
  br label %942, !dbg !3201

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !3222), !dbg !3223
  br label %943, !dbg !3224

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !3225
  %945 = trunc i8 %944 to i1, !dbg !3225
  br i1 %945, label %946, label %974, !dbg !3225

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !3225
  %948 = trunc i8 %947 to i1, !dbg !3225
  br i1 %948, label %974, label %949, !dbg !3228

949:                                              ; preds = %946
  br label %950, !dbg !3229

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !3231
  %952 = load i64, i64* %12, align 8, !dbg !3231
  %953 = icmp ult i64 %951, %952, !dbg !3231
  br i1 %953, label %954, label %958, !dbg !3234

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !3231
  %956 = load i64, i64* %21, align 8, !dbg !3231
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !3231
  store i8 39, i8* %957, align 1, !dbg !3231
  br label %958, !dbg !3231

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !3234
  %960 = add i64 %959, 1, !dbg !3234
  store i64 %960, i64* %21, align 8, !dbg !3234
  br label %961, !dbg !3234

961:                                              ; preds = %958
  br label %962, !dbg !3229

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !3235
  %964 = load i64, i64* %12, align 8, !dbg !3235
  %965 = icmp ult i64 %963, %964, !dbg !3235
  br i1 %965, label %966, label %970, !dbg !3238

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !3235
  %968 = load i64, i64* %21, align 8, !dbg !3235
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !3235
  store i8 39, i8* %969, align 1, !dbg !3235
  br label %970, !dbg !3235

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !3238
  %972 = add i64 %971, 1, !dbg !3238
  store i64 %972, i64* %21, align 8, !dbg !3238
  br label %973, !dbg !3238

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !3229
  br label %974, !dbg !3229

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !3228

975:                                              ; preds = %974
  br label %976, !dbg !3239

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !3240
  %978 = load i64, i64* %12, align 8, !dbg !3240
  %979 = icmp ult i64 %977, %978, !dbg !3240
  br i1 %979, label %980, label %985, !dbg !3243

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !3240
  %982 = load i8*, i8** %11, align 8, !dbg !3240
  %983 = load i64, i64* %21, align 8, !dbg !3240
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !3240
  store i8 %981, i8* %984, align 1, !dbg !3240
  br label %985, !dbg !3240

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !3243
  %987 = add i64 %986, 1, !dbg !3243
  store i64 %987, i64* %21, align 8, !dbg !3243
  br label %988, !dbg !3243

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !3244
  %990 = trunc i8 %989 to i1, !dbg !3244
  br i1 %990, label %992, label %991, !dbg !3246

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !3247
  br label %992, !dbg !3248

992:                                              ; preds = %991, %988
  br label %993, !dbg !3249

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !3250
  %995 = add i64 %994, 1, !dbg !3250
  store i64 %995, i64* %31, align 8, !dbg !3250
  br label %139, !dbg !3251, !llvm.loop !3252

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !3254
  %998 = icmp eq i64 %997, 0, !dbg !3256
  br i1 %998, label %999, label %1006, !dbg !3257

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !3258
  %1001 = icmp eq i32 %1000, 2, !dbg !3259
  br i1 %1001, label %1002, label %1006, !dbg !3260

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !3261
  %1004 = trunc i8 %1003 to i1, !dbg !3261
  br i1 %1004, label %1005, label %1006, !dbg !3262

1005:                                             ; preds = %1002
  br label %1078, !dbg !3263

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !3264
  %1008 = icmp eq i32 %1007, 2, !dbg !3266
  br i1 %1008, label %1009, label %1038, !dbg !3267

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !3268
  %1011 = trunc i8 %1010 to i1, !dbg !3268
  br i1 %1011, label %1038, label %1012, !dbg !3269

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !3270
  %1014 = trunc i8 %1013 to i1, !dbg !3270
  br i1 %1014, label %1015, label %1038, !dbg !3271

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !3272
  %1017 = trunc i8 %1016 to i1, !dbg !3272
  br i1 %1017, label %1018, label %1028, !dbg !3275

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !3276
  %1020 = load i64, i64* %22, align 8, !dbg !3277
  %1021 = load i8*, i8** %13, align 8, !dbg !3278
  %1022 = load i64, i64* %14, align 8, !dbg !3279
  %1023 = load i32, i32* %16, align 4, !dbg !3280
  %1024 = load i32*, i32** %17, align 8, !dbg !3281
  %1025 = load i8*, i8** %18, align 8, !dbg !3282
  %1026 = load i8*, i8** %19, align 8, !dbg !3283
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !3284
  store i64 %1027, i64* %10, align 8, !dbg !3285
  br label %1096, !dbg !3285

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !3286
  %1030 = icmp ne i64 %1029, 0, !dbg !3286
  br i1 %1030, label %1036, label %1031, !dbg !3288

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !3289
  %1033 = icmp ne i64 %1032, 0, !dbg !3289
  br i1 %1033, label %1034, label %1036, !dbg !3290

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !3291
  store i64 %1035, i64* %12, align 8, !dbg !3293
  store i64 0, i64* %21, align 8, !dbg !3294
  br label %51, !dbg !3295

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !3296

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !3297
  %1040 = icmp ne i8* %1039, null, !dbg !3297
  br i1 %1040, label %1041, label %1068, !dbg !3299

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !3300
  %1043 = trunc i8 %1042 to i1, !dbg !3300
  br i1 %1043, label %1068, label %1044, !dbg !3301

1044:                                             ; preds = %1041
  br label %1045, !dbg !3302

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !3303
  %1047 = load i8, i8* %1046, align 1, !dbg !3306
  %1048 = icmp ne i8 %1047, 0, !dbg !3307
  br i1 %1048, label %1049, label %1067, !dbg !3307

1049:                                             ; preds = %1045
  br label %1050, !dbg !3308

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !3309
  %1052 = load i64, i64* %12, align 8, !dbg !3309
  %1053 = icmp ult i64 %1051, %1052, !dbg !3309
  br i1 %1053, label %1054, label %1060, !dbg !3312

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !3309
  %1056 = load i8, i8* %1055, align 1, !dbg !3309
  %1057 = load i8*, i8** %11, align 8, !dbg !3309
  %1058 = load i64, i64* %21, align 8, !dbg !3309
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !3309
  store i8 %1056, i8* %1059, align 1, !dbg !3309
  br label %1060, !dbg !3309

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !3312
  %1062 = add i64 %1061, 1, !dbg !3312
  store i64 %1062, i64* %21, align 8, !dbg !3312
  br label %1063, !dbg !3312

1063:                                             ; preds = %1060
  br label %1064, !dbg !3312

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !3313
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !3313
  store i8* %1066, i8** %23, align 8, !dbg !3313
  br label %1045, !dbg !3314, !llvm.loop !3315

1067:                                             ; preds = %1045
  br label %1068, !dbg !3316

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !3317
  %1070 = load i64, i64* %12, align 8, !dbg !3319
  %1071 = icmp ult i64 %1069, %1070, !dbg !3320
  br i1 %1071, label %1072, label %1076, !dbg !3321

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !3322
  %1074 = load i64, i64* %21, align 8, !dbg !3323
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !3322
  store i8 0, i8* %1075, align 1, !dbg !3324
  br label %1076, !dbg !3322

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !3325
  store i64 %1077, i64* %10, align 8, !dbg !3326
  br label %1096, !dbg !3326

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !3327), !dbg !3328
  %1079 = load i32, i32* %15, align 4, !dbg !3329
  %1080 = icmp eq i32 %1079, 2, !dbg !3331
  br i1 %1080, label %1081, label %1085, !dbg !3332

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !3333
  %1083 = trunc i8 %1082 to i1, !dbg !3333
  br i1 %1083, label %1084, label %1085, !dbg !3334

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !3335
  br label %1085, !dbg !3336

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !3337
  %1087 = load i64, i64* %12, align 8, !dbg !3338
  %1088 = load i8*, i8** %13, align 8, !dbg !3339
  %1089 = load i64, i64* %14, align 8, !dbg !3340
  %1090 = load i32, i32* %15, align 4, !dbg !3341
  %1091 = load i32, i32* %16, align 4, !dbg !3342
  %1092 = and i32 %1091, -3, !dbg !3343
  %1093 = load i8*, i8** %18, align 8, !dbg !3344
  %1094 = load i8*, i8** %19, align 8, !dbg !3345
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !3346
  store i64 %1095, i64* %10, align 8, !dbg !3347
  br label %1096, !dbg !3347

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !3348
  ret i64 %1097, !dbg !3348
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !213 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3353, metadata !DIExpression()), !dbg !3354
  %9 = load i8*, i8** %4, align 8, !dbg !3355
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.126, i64 0, i64 0), i8* noundef %9) #19, !dbg !3355
  store i8* %10, i8** %6, align 8, !dbg !3354
  %11 = load i8*, i8** %6, align 8, !dbg !3356
  %12 = load i8*, i8** %4, align 8, !dbg !3358
  %13 = icmp ne i8* %11, %12, !dbg !3359
  br i1 %13, label %14, label %16, !dbg !3360

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !3361
  store i8* %15, i8** %3, align 8, !dbg !3362
  br label %37, !dbg !3362

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !3365, metadata !DIExpression()), !dbg !3366
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !3367
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !3368
  %18 = icmp eq i64 %17, 3, !dbg !3370
  br i1 %18, label %19, label %32, !dbg !3371

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !3372
  %21 = icmp eq i32 %20, 8216, !dbg !3373
  br i1 %21, label %22, label %32, !dbg !3374

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !3375
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !3375
  %25 = load i8, i8* %24, align 1, !dbg !3375
  %26 = zext i8 %25 to i32, !dbg !3375
  %27 = icmp eq i32 %26, 39, !dbg !3376
  %28 = zext i1 %27 to i32, !dbg !3376
  %29 = sext i32 %28 to i64, !dbg !3377
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !3377
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !3377
  store i8* %31, i8** %3, align 8, !dbg !3378
  br label %37, !dbg !3378

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !3379
  %34 = icmp eq i32 %33, 9, !dbg !3380
  %35 = zext i1 %34 to i64, !dbg !3379
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), !dbg !3379
  store i8* %36, i8** %3, align 8, !dbg !3381
  br label %37, !dbg !3381

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !3382
  ret i8* %38, !dbg !3382
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !3383 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3386, metadata !DIExpression()), !dbg !3387
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3388, metadata !DIExpression()), !dbg !3389
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3390, metadata !DIExpression()), !dbg !3391
  %7 = load i8*, i8** %4, align 8, !dbg !3392
  %8 = load i64, i64* %5, align 8, !dbg !3393
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3394
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !3395
  ret i8* %10, !dbg !3396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3397 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3402, metadata !DIExpression()), !dbg !3403
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3404, metadata !DIExpression()), !dbg !3405
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3408, metadata !DIExpression()), !dbg !3409
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3410
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3410
  br i1 %15, label %16, label %18, !dbg !3410

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3411
  br label %19, !dbg !3410

18:                                               ; preds = %4
  br label %19, !dbg !3410

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3410
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3409
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3412, metadata !DIExpression()), !dbg !3413
  %21 = call i32* @__errno_location() #22, !dbg !3414
  %22 = load i32, i32* %21, align 4, !dbg !3414
  store i32 %22, i32* %10, align 4, !dbg !3413
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3415, metadata !DIExpression()), !dbg !3416
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3417
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3418
  %25 = load i32, i32* %24, align 4, !dbg !3418
  %26 = load i64*, i64** %7, align 8, !dbg !3419
  %27 = icmp ne i64* %26, null, !dbg !3419
  %28 = zext i1 %27 to i64, !dbg !3419
  %29 = select i1 %27, i32 0, i32 1, !dbg !3419
  %30 = or i32 %25, %29, !dbg !3420
  store i32 %30, i32* %11, align 4, !dbg !3416
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3421, metadata !DIExpression()), !dbg !3422
  %31 = load i8*, i8** %5, align 8, !dbg !3423
  %32 = load i64, i64* %6, align 8, !dbg !3424
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3425
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3426
  %35 = load i32, i32* %34, align 8, !dbg !3426
  %36 = load i32, i32* %11, align 4, !dbg !3427
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3428
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3429
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !3428
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3430
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3431
  %42 = load i8*, i8** %41, align 8, !dbg !3431
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3432
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3433
  %45 = load i8*, i8** %44, align 8, !dbg !3433
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !3434
  %47 = add i64 %46, 1, !dbg !3435
  store i64 %47, i64* %12, align 8, !dbg !3422
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3436, metadata !DIExpression()), !dbg !3437
  %48 = load i64, i64* %12, align 8, !dbg !3438
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !3439
  store i8* %49, i8** %13, align 8, !dbg !3437
  %50 = load i8*, i8** %13, align 8, !dbg !3440
  %51 = load i64, i64* %12, align 8, !dbg !3441
  %52 = load i8*, i8** %5, align 8, !dbg !3442
  %53 = load i64, i64* %6, align 8, !dbg !3443
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3444
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3445
  %56 = load i32, i32* %55, align 8, !dbg !3445
  %57 = load i32, i32* %11, align 4, !dbg !3446
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3447
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3448
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3447
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3449
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3450
  %63 = load i8*, i8** %62, align 8, !dbg !3450
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3451
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3452
  %66 = load i8*, i8** %65, align 8, !dbg !3452
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !3453
  %68 = load i32, i32* %10, align 4, !dbg !3454
  %69 = call i32* @__errno_location() #22, !dbg !3455
  store i32 %68, i32* %69, align 4, !dbg !3456
  %70 = load i64*, i64** %7, align 8, !dbg !3457
  %71 = icmp ne i64* %70, null, !dbg !3457
  br i1 %71, label %72, label %76, !dbg !3459

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3460
  %74 = sub i64 %73, 1, !dbg !3461
  %75 = load i64*, i64** %7, align 8, !dbg !3462
  store i64 %74, i64* %75, align 8, !dbg !3463
  br label %76, !dbg !3464

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3465
  ret i8* %77, !dbg !3466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !3467 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3468, metadata !DIExpression()), !dbg !3469
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3470
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3469
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3471, metadata !DIExpression()), !dbg !3473
  store i32 1, i32* %2, align 4, !dbg !3473
  br label %4, !dbg !3474

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3475
  %6 = load i32, i32* @nslots, align 4, !dbg !3477
  %7 = icmp slt i32 %5, %6, !dbg !3478
  br i1 %7, label %8, label %18, !dbg !3479

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3480
  %10 = load i32, i32* %2, align 4, !dbg !3481
  %11 = sext i32 %10 to i64, !dbg !3480
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3480
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3482
  %14 = load i8*, i8** %13, align 8, !dbg !3482
  call void @free(i8* noundef %14) #19, !dbg !3483
  br label %15, !dbg !3483

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3484
  %17 = add nsw i32 %16, 1, !dbg !3484
  store i32 %17, i32* %2, align 4, !dbg !3484
  br label %4, !dbg !3485, !llvm.loop !3486

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3488
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3488
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3490
  %22 = load i8*, i8** %21, align 8, !dbg !3490
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3491
  br i1 %23, label %24, label %29, !dbg !3492

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3493
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3493
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3495
  %28 = load i8*, i8** %27, align 8, !dbg !3495
  call void @free(i8* noundef %28) #19, !dbg !3496
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3497
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3498
  br label %29, !dbg !3499

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3500
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3502
  br i1 %31, label %32, label %35, !dbg !3503

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3504
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3504
  call void @free(i8* noundef %34) #19, !dbg !3506
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3507
  br label %35, !dbg !3508

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3509
  ret void, !dbg !3510
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3511 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3514, metadata !DIExpression()), !dbg !3515
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3516, metadata !DIExpression()), !dbg !3517
  %5 = load i32, i32* %3, align 4, !dbg !3518
  %6 = load i8*, i8** %4, align 8, !dbg !3519
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3520
  ret i8* %7, !dbg !3521
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3522 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3525, metadata !DIExpression()), !dbg !3526
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3527, metadata !DIExpression()), !dbg !3528
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3529, metadata !DIExpression()), !dbg !3530
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3533, metadata !DIExpression()), !dbg !3534
  %18 = call i32* @__errno_location() #22, !dbg !3535
  %19 = load i32, i32* %18, align 4, !dbg !3535
  store i32 %19, i32* %9, align 4, !dbg !3534
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3536, metadata !DIExpression()), !dbg !3537
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3538
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3537
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3539, metadata !DIExpression()), !dbg !3540
  store i32 2147483647, i32* %11, align 4, !dbg !3540
  %21 = load i32, i32* %5, align 4, !dbg !3541
  %22 = icmp sle i32 0, %21, !dbg !3543
  br i1 %22, label %23, label %27, !dbg !3544

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3545
  %25 = load i32, i32* %11, align 4, !dbg !3546
  %26 = icmp slt i32 %24, %25, !dbg !3547
  br i1 %26, label %28, label %27, !dbg !3548

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !3549
  unreachable, !dbg !3549

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3550
  %30 = load i32, i32* %5, align 4, !dbg !3552
  %31 = icmp sle i32 %29, %30, !dbg !3553
  br i1 %31, label %32, label %73, !dbg !3554

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3555, metadata !DIExpression()), !dbg !3557
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3558
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3559
  %35 = zext i1 %34 to i8, !dbg !3557
  store i8 %35, i8* %12, align 1, !dbg !3557
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3560, metadata !DIExpression()), !dbg !3561
  %36 = load i32, i32* @nslots, align 4, !dbg !3562
  %37 = sext i32 %36 to i64, !dbg !3562
  store i64 %37, i64* %13, align 8, !dbg !3561
  %38 = load i8, i8* %12, align 1, !dbg !3563
  %39 = trunc i8 %38 to i1, !dbg !3563
  br i1 %39, label %40, label %41, !dbg !3563

40:                                               ; preds = %32
  br label %43, !dbg !3563

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3564
  br label %43, !dbg !3563

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3563
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3563
  %46 = load i32, i32* %5, align 4, !dbg !3565
  %47 = load i32, i32* @nslots, align 4, !dbg !3566
  %48 = sub nsw i32 %46, %47, !dbg !3567
  %49 = add nsw i32 %48, 1, !dbg !3568
  %50 = sext i32 %49 to i64, !dbg !3565
  %51 = load i32, i32* %11, align 4, !dbg !3569
  %52 = sext i32 %51 to i64, !dbg !3569
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3570
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3570
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3571
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3572
  %55 = load i8, i8* %12, align 1, !dbg !3573
  %56 = trunc i8 %55 to i1, !dbg !3573
  br i1 %56, label %57, label %60, !dbg !3575

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3576
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3577
  br label %60, !dbg !3578

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3579
  %62 = load i32, i32* @nslots, align 4, !dbg !3580
  %63 = sext i32 %62 to i64, !dbg !3581
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3581
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3582
  %66 = load i64, i64* %13, align 8, !dbg !3583
  %67 = load i32, i32* @nslots, align 4, !dbg !3584
  %68 = sext i32 %67 to i64, !dbg !3584
  %69 = sub nsw i64 %66, %68, !dbg !3585
  %70 = mul i64 %69, 16, !dbg !3586
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3582
  %71 = load i64, i64* %13, align 8, !dbg !3587
  %72 = trunc i64 %71 to i32, !dbg !3587
  store i32 %72, i32* @nslots, align 4, !dbg !3588
  br label %73, !dbg !3589

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3590, metadata !DIExpression()), !dbg !3592
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3593
  %75 = load i32, i32* %5, align 4, !dbg !3594
  %76 = sext i32 %75 to i64, !dbg !3593
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3593
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3595
  %79 = load i64, i64* %78, align 8, !dbg !3595
  store i64 %79, i64* %14, align 8, !dbg !3592
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3596, metadata !DIExpression()), !dbg !3597
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3598
  %81 = load i32, i32* %5, align 4, !dbg !3599
  %82 = sext i32 %81 to i64, !dbg !3598
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3598
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3600
  %85 = load i8*, i8** %84, align 8, !dbg !3600
  store i8* %85, i8** %15, align 8, !dbg !3597
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3601, metadata !DIExpression()), !dbg !3602
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3603
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3604
  %88 = load i32, i32* %87, align 4, !dbg !3604
  %89 = or i32 %88, 1, !dbg !3605
  store i32 %89, i32* %16, align 4, !dbg !3602
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3606, metadata !DIExpression()), !dbg !3607
  %90 = load i8*, i8** %15, align 8, !dbg !3608
  %91 = load i64, i64* %14, align 8, !dbg !3609
  %92 = load i8*, i8** %6, align 8, !dbg !3610
  %93 = load i64, i64* %7, align 8, !dbg !3611
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3612
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3613
  %96 = load i32, i32* %95, align 8, !dbg !3613
  %97 = load i32, i32* %16, align 4, !dbg !3614
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3615
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3616
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3615
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3617
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3618
  %103 = load i8*, i8** %102, align 8, !dbg !3618
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3619
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3620
  %106 = load i8*, i8** %105, align 8, !dbg !3620
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3621
  store i64 %107, i64* %17, align 8, !dbg !3607
  %108 = load i64, i64* %14, align 8, !dbg !3622
  %109 = load i64, i64* %17, align 8, !dbg !3624
  %110 = icmp ule i64 %108, %109, !dbg !3625
  br i1 %110, label %111, label %149, !dbg !3626

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3627
  %113 = add i64 %112, 1, !dbg !3629
  store i64 %113, i64* %14, align 8, !dbg !3630
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3631
  %115 = load i32, i32* %5, align 4, !dbg !3632
  %116 = sext i32 %115 to i64, !dbg !3631
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3631
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3633
  store i64 %113, i64* %118, align 8, !dbg !3634
  %119 = load i8*, i8** %15, align 8, !dbg !3635
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3637
  br i1 %120, label %121, label %123, !dbg !3638

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3639
  call void @free(i8* noundef %122) #19, !dbg !3640
  br label %123, !dbg !3640

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3641
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !3642
  store i8* %125, i8** %15, align 8, !dbg !3643
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3644
  %127 = load i32, i32* %5, align 4, !dbg !3645
  %128 = sext i32 %127 to i64, !dbg !3644
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3644
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3646
  store i8* %125, i8** %130, align 8, !dbg !3647
  %131 = load i8*, i8** %15, align 8, !dbg !3648
  %132 = load i64, i64* %14, align 8, !dbg !3649
  %133 = load i8*, i8** %6, align 8, !dbg !3650
  %134 = load i64, i64* %7, align 8, !dbg !3651
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3652
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3653
  %137 = load i32, i32* %136, align 8, !dbg !3653
  %138 = load i32, i32* %16, align 4, !dbg !3654
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3655
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3656
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3655
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3657
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3658
  %144 = load i8*, i8** %143, align 8, !dbg !3658
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3659
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3660
  %147 = load i8*, i8** %146, align 8, !dbg !3660
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3661
  br label %149, !dbg !3662

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3663
  %151 = call i32* @__errno_location() #22, !dbg !3664
  store i32 %150, i32* %151, align 4, !dbg !3665
  %152 = load i8*, i8** %15, align 8, !dbg !3666
  ret i8* %152, !dbg !3667
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3668 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3671, metadata !DIExpression()), !dbg !3672
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3673, metadata !DIExpression()), !dbg !3674
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3675, metadata !DIExpression()), !dbg !3676
  %7 = load i32, i32* %4, align 4, !dbg !3677
  %8 = load i8*, i8** %5, align 8, !dbg !3678
  %9 = load i64, i64* %6, align 8, !dbg !3679
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3680
  ret i8* %10, !dbg !3681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3682 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3685, metadata !DIExpression()), !dbg !3686
  %3 = load i8*, i8** %2, align 8, !dbg !3687
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3688
  ret i8* %4, !dbg !3689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3690 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3693, metadata !DIExpression()), !dbg !3694
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3695, metadata !DIExpression()), !dbg !3696
  %5 = load i8*, i8** %3, align 8, !dbg !3697
  %6 = load i64, i64* %4, align 8, !dbg !3698
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3699
  ret i8* %7, !dbg !3700
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3701 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3704, metadata !DIExpression()), !dbg !3705
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3706, metadata !DIExpression()), !dbg !3707
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3710, metadata !DIExpression()), !dbg !3711
  %8 = load i32, i32* %5, align 4, !dbg !3712
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3713
  %9 = load i32, i32* %4, align 4, !dbg !3714
  %10 = load i8*, i8** %6, align 8, !dbg !3715
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3716
  ret i8* %11, !dbg !3717
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3718 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3723, metadata !DIExpression()), !dbg !3724
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3724
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3724
  %5 = load i32, i32* %3, align 4, !dbg !3725
  %6 = icmp eq i32 %5, 10, !dbg !3727
  br i1 %6, label %7, label %8, !dbg !3728

7:                                                ; preds = %2
  call void @abort() #20, !dbg !3729
  unreachable, !dbg !3729

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3730
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3731
  store i32 %9, i32* %10, align 8, !dbg !3732
  ret void, !dbg !3733
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3734 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3737, metadata !DIExpression()), !dbg !3738
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3739, metadata !DIExpression()), !dbg !3740
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3745, metadata !DIExpression()), !dbg !3746
  %10 = load i32, i32* %6, align 4, !dbg !3747
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3748
  %11 = load i32, i32* %5, align 4, !dbg !3749
  %12 = load i8*, i8** %7, align 8, !dbg !3750
  %13 = load i64, i64* %8, align 8, !dbg !3751
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3752
  ret i8* %14, !dbg !3753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3754 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3757, metadata !DIExpression()), !dbg !3758
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3759, metadata !DIExpression()), !dbg !3760
  %5 = load i32, i32* %3, align 4, !dbg !3761
  %6 = load i8*, i8** %4, align 8, !dbg !3762
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3763
  ret i8* %7, !dbg !3764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3765 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3772, metadata !DIExpression()), !dbg !3773
  %7 = load i32, i32* %4, align 4, !dbg !3774
  %8 = load i8*, i8** %5, align 8, !dbg !3775
  %9 = load i64, i64* %6, align 8, !dbg !3776
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3777
  ret i8* %10, !dbg !3778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3779 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3782, metadata !DIExpression()), !dbg !3783
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3788, metadata !DIExpression()), !dbg !3789
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3790
  %9 = load i8, i8* %6, align 1, !dbg !3791
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3792
  %11 = load i8*, i8** %4, align 8, !dbg !3793
  %12 = load i64, i64* %5, align 8, !dbg !3794
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3795
  ret i8* %13, !dbg !3796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3797 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3800, metadata !DIExpression()), !dbg !3801
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3802, metadata !DIExpression()), !dbg !3803
  %5 = load i8*, i8** %3, align 8, !dbg !3804
  %6 = load i8, i8* %4, align 1, !dbg !3805
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3806
  ret i8* %7, !dbg !3807
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3808 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3809, metadata !DIExpression()), !dbg !3810
  %3 = load i8*, i8** %2, align 8, !dbg !3811
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3812
  ret i8* %4, !dbg !3813
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3814 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3815, metadata !DIExpression()), !dbg !3816
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3817, metadata !DIExpression()), !dbg !3818
  %5 = load i8*, i8** %3, align 8, !dbg !3819
  %6 = load i64, i64* %4, align 8, !dbg !3820
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3821
  ret i8* %7, !dbg !3822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3823 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3824, metadata !DIExpression()), !dbg !3825
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3826, metadata !DIExpression()), !dbg !3827
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3828, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3830, metadata !DIExpression()), !dbg !3831
  %9 = load i32, i32* %5, align 4, !dbg !3832
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3833
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3833
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3833
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3834
  %13 = load i32, i32* %4, align 4, !dbg !3835
  %14 = load i8*, i8** %6, align 8, !dbg !3836
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3837
  ret i8* %15, !dbg !3838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3839 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3844, metadata !DIExpression()), !dbg !3845
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3846, metadata !DIExpression()), !dbg !3847
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3848, metadata !DIExpression()), !dbg !3849
  %9 = load i32, i32* %5, align 4, !dbg !3850
  %10 = load i8*, i8** %6, align 8, !dbg !3851
  %11 = load i8*, i8** %7, align 8, !dbg !3852
  %12 = load i8*, i8** %8, align 8, !dbg !3853
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3854
  ret i8* %13, !dbg !3855
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3856 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3859, metadata !DIExpression()), !dbg !3860
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3861, metadata !DIExpression()), !dbg !3862
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3863, metadata !DIExpression()), !dbg !3864
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3865, metadata !DIExpression()), !dbg !3866
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3869, metadata !DIExpression()), !dbg !3870
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3871
  %13 = load i8*, i8** %7, align 8, !dbg !3872
  %14 = load i8*, i8** %8, align 8, !dbg !3873
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3874
  %15 = load i32, i32* %6, align 4, !dbg !3875
  %16 = load i8*, i8** %9, align 8, !dbg !3876
  %17 = load i64, i64* %10, align 8, !dbg !3877
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3878
  ret i8* %18, !dbg !3879
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3880 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3883, metadata !DIExpression()), !dbg !3884
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3885, metadata !DIExpression()), !dbg !3886
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3887, metadata !DIExpression()), !dbg !3888
  %7 = load i8*, i8** %4, align 8, !dbg !3889
  %8 = load i8*, i8** %5, align 8, !dbg !3890
  %9 = load i8*, i8** %6, align 8, !dbg !3891
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3892
  ret i8* %10, !dbg !3893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3894 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3903, metadata !DIExpression()), !dbg !3904
  %9 = load i8*, i8** %5, align 8, !dbg !3905
  %10 = load i8*, i8** %6, align 8, !dbg !3906
  %11 = load i8*, i8** %7, align 8, !dbg !3907
  %12 = load i64, i64* %8, align 8, !dbg !3908
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3909
  ret i8* %13, !dbg !3910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3911 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3914, metadata !DIExpression()), !dbg !3915
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3916, metadata !DIExpression()), !dbg !3917
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3918, metadata !DIExpression()), !dbg !3919
  %7 = load i32, i32* %4, align 4, !dbg !3920
  %8 = load i8*, i8** %5, align 8, !dbg !3921
  %9 = load i64, i64* %6, align 8, !dbg !3922
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3923
  ret i8* %10, !dbg !3924
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3925 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3930, metadata !DIExpression()), !dbg !3931
  %5 = load i8*, i8** %3, align 8, !dbg !3932
  %6 = load i64, i64* %4, align 8, !dbg !3933
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3934
  ret i8* %7, !dbg !3935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3936 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3939, metadata !DIExpression()), !dbg !3940
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3941, metadata !DIExpression()), !dbg !3942
  %5 = load i32, i32* %3, align 4, !dbg !3943
  %6 = load i8*, i8** %4, align 8, !dbg !3944
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3945
  ret i8* %7, !dbg !3946
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3947 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3950, metadata !DIExpression()), !dbg !3951
  %3 = load i8*, i8** %2, align 8, !dbg !3952
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3953
  ret i8* %4, !dbg !3954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3955 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3959, metadata !DIExpression()), !dbg !3960
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3961, metadata !DIExpression()), !dbg !3962
  %5 = load i8*, i8** %3, align 8, !dbg !3963
  %6 = load i8*, i8** %4, align 8, !dbg !3964
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3965
  %8 = icmp ne i32 %7, 0, !dbg !3966
  %9 = xor i1 %8, true, !dbg !3966
  ret i1 %9, !dbg !3967
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3968 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4008, metadata !DIExpression()), !dbg !4009
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4010, metadata !DIExpression()), !dbg !4011
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4014, metadata !DIExpression()), !dbg !4015
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4016, metadata !DIExpression()), !dbg !4017
  %13 = load i8*, i8** %8, align 8, !dbg !4018
  %14 = icmp ne i8* %13, null, !dbg !4018
  br i1 %14, label %15, label %21, !dbg !4020

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4021
  %17 = load i8*, i8** %8, align 8, !dbg !4022
  %18 = load i8*, i8** %9, align 8, !dbg !4023
  %19 = load i8*, i8** %10, align 8, !dbg !4024
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.133, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !4025
  br label %26, !dbg !4025

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4026
  %23 = load i8*, i8** %9, align 8, !dbg !4027
  %24 = load i8*, i8** %10, align 8, !dbg !4028
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.134, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !4029
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4030
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.136, i64 0, i64 0)) #19, !dbg !4031
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !4032
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4033
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.137, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !4033
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4034
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.138, i64 0, i64 0)) #19, !dbg !4035
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.139, i64 0, i64 0)), !dbg !4036
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4037
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.137, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !4037
  %37 = load i64, i64* %12, align 8, !dbg !4038
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
  ], !dbg !4039

38:                                               ; preds = %26
  br label %241, !dbg !4040

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4042
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.140, i64 0, i64 0)) #19, !dbg !4043
  %42 = load i8**, i8*** %11, align 8, !dbg !4044
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !4044
  %44 = load i8*, i8** %43, align 8, !dbg !4044
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !4045
  br label %241, !dbg !4046

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4047
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.141, i64 0, i64 0)) #19, !dbg !4048
  %49 = load i8**, i8*** %11, align 8, !dbg !4049
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !4049
  %51 = load i8*, i8** %50, align 8, !dbg !4049
  %52 = load i8**, i8*** %11, align 8, !dbg !4050
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !4050
  %54 = load i8*, i8** %53, align 8, !dbg !4050
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !4051
  br label %241, !dbg !4052

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4053
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.142, i64 0, i64 0)) #19, !dbg !4054
  %59 = load i8**, i8*** %11, align 8, !dbg !4055
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !4055
  %61 = load i8*, i8** %60, align 8, !dbg !4055
  %62 = load i8**, i8*** %11, align 8, !dbg !4056
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !4056
  %64 = load i8*, i8** %63, align 8, !dbg !4056
  %65 = load i8**, i8*** %11, align 8, !dbg !4057
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !4057
  %67 = load i8*, i8** %66, align 8, !dbg !4057
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !4058
  br label %241, !dbg !4059

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4060
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.143, i64 0, i64 0)) #19, !dbg !4061
  %72 = load i8**, i8*** %11, align 8, !dbg !4062
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !4062
  %74 = load i8*, i8** %73, align 8, !dbg !4062
  %75 = load i8**, i8*** %11, align 8, !dbg !4063
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !4063
  %77 = load i8*, i8** %76, align 8, !dbg !4063
  %78 = load i8**, i8*** %11, align 8, !dbg !4064
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !4064
  %80 = load i8*, i8** %79, align 8, !dbg !4064
  %81 = load i8**, i8*** %11, align 8, !dbg !4065
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !4065
  %83 = load i8*, i8** %82, align 8, !dbg !4065
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !4066
  br label %241, !dbg !4067

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4068
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.144, i64 0, i64 0)) #19, !dbg !4069
  %88 = load i8**, i8*** %11, align 8, !dbg !4070
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !4070
  %90 = load i8*, i8** %89, align 8, !dbg !4070
  %91 = load i8**, i8*** %11, align 8, !dbg !4071
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !4071
  %93 = load i8*, i8** %92, align 8, !dbg !4071
  %94 = load i8**, i8*** %11, align 8, !dbg !4072
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !4072
  %96 = load i8*, i8** %95, align 8, !dbg !4072
  %97 = load i8**, i8*** %11, align 8, !dbg !4073
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !4073
  %99 = load i8*, i8** %98, align 8, !dbg !4073
  %100 = load i8**, i8*** %11, align 8, !dbg !4074
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !4074
  %102 = load i8*, i8** %101, align 8, !dbg !4074
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !4075
  br label %241, !dbg !4076

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4077
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.145, i64 0, i64 0)) #19, !dbg !4078
  %107 = load i8**, i8*** %11, align 8, !dbg !4079
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !4079
  %109 = load i8*, i8** %108, align 8, !dbg !4079
  %110 = load i8**, i8*** %11, align 8, !dbg !4080
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !4080
  %112 = load i8*, i8** %111, align 8, !dbg !4080
  %113 = load i8**, i8*** %11, align 8, !dbg !4081
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !4081
  %115 = load i8*, i8** %114, align 8, !dbg !4081
  %116 = load i8**, i8*** %11, align 8, !dbg !4082
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !4082
  %118 = load i8*, i8** %117, align 8, !dbg !4082
  %119 = load i8**, i8*** %11, align 8, !dbg !4083
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !4083
  %121 = load i8*, i8** %120, align 8, !dbg !4083
  %122 = load i8**, i8*** %11, align 8, !dbg !4084
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !4084
  %124 = load i8*, i8** %123, align 8, !dbg !4084
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !4085
  br label %241, !dbg !4086

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4087
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.146, i64 0, i64 0)) #19, !dbg !4088
  %129 = load i8**, i8*** %11, align 8, !dbg !4089
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !4089
  %131 = load i8*, i8** %130, align 8, !dbg !4089
  %132 = load i8**, i8*** %11, align 8, !dbg !4090
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !4090
  %134 = load i8*, i8** %133, align 8, !dbg !4090
  %135 = load i8**, i8*** %11, align 8, !dbg !4091
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !4091
  %137 = load i8*, i8** %136, align 8, !dbg !4091
  %138 = load i8**, i8*** %11, align 8, !dbg !4092
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !4092
  %140 = load i8*, i8** %139, align 8, !dbg !4092
  %141 = load i8**, i8*** %11, align 8, !dbg !4093
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !4093
  %143 = load i8*, i8** %142, align 8, !dbg !4093
  %144 = load i8**, i8*** %11, align 8, !dbg !4094
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !4094
  %146 = load i8*, i8** %145, align 8, !dbg !4094
  %147 = load i8**, i8*** %11, align 8, !dbg !4095
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !4095
  %149 = load i8*, i8** %148, align 8, !dbg !4095
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !4096
  br label %241, !dbg !4097

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4098
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.147, i64 0, i64 0)) #19, !dbg !4099
  %154 = load i8**, i8*** %11, align 8, !dbg !4100
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4100
  %156 = load i8*, i8** %155, align 8, !dbg !4100
  %157 = load i8**, i8*** %11, align 8, !dbg !4101
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !4101
  %159 = load i8*, i8** %158, align 8, !dbg !4101
  %160 = load i8**, i8*** %11, align 8, !dbg !4102
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !4102
  %162 = load i8*, i8** %161, align 8, !dbg !4102
  %163 = load i8**, i8*** %11, align 8, !dbg !4103
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !4103
  %165 = load i8*, i8** %164, align 8, !dbg !4103
  %166 = load i8**, i8*** %11, align 8, !dbg !4104
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !4104
  %168 = load i8*, i8** %167, align 8, !dbg !4104
  %169 = load i8**, i8*** %11, align 8, !dbg !4105
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !4105
  %171 = load i8*, i8** %170, align 8, !dbg !4105
  %172 = load i8**, i8*** %11, align 8, !dbg !4106
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !4106
  %174 = load i8*, i8** %173, align 8, !dbg !4106
  %175 = load i8**, i8*** %11, align 8, !dbg !4107
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !4107
  %177 = load i8*, i8** %176, align 8, !dbg !4107
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !4108
  br label %241, !dbg !4109

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4110
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.148, i64 0, i64 0)) #19, !dbg !4111
  %182 = load i8**, i8*** %11, align 8, !dbg !4112
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !4112
  %184 = load i8*, i8** %183, align 8, !dbg !4112
  %185 = load i8**, i8*** %11, align 8, !dbg !4113
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !4113
  %187 = load i8*, i8** %186, align 8, !dbg !4113
  %188 = load i8**, i8*** %11, align 8, !dbg !4114
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !4114
  %190 = load i8*, i8** %189, align 8, !dbg !4114
  %191 = load i8**, i8*** %11, align 8, !dbg !4115
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !4115
  %193 = load i8*, i8** %192, align 8, !dbg !4115
  %194 = load i8**, i8*** %11, align 8, !dbg !4116
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !4116
  %196 = load i8*, i8** %195, align 8, !dbg !4116
  %197 = load i8**, i8*** %11, align 8, !dbg !4117
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4117
  %199 = load i8*, i8** %198, align 8, !dbg !4117
  %200 = load i8**, i8*** %11, align 8, !dbg !4118
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4118
  %202 = load i8*, i8** %201, align 8, !dbg !4118
  %203 = load i8**, i8*** %11, align 8, !dbg !4119
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4119
  %205 = load i8*, i8** %204, align 8, !dbg !4119
  %206 = load i8**, i8*** %11, align 8, !dbg !4120
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4120
  %208 = load i8*, i8** %207, align 8, !dbg !4120
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4121
  br label %241, !dbg !4122

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4123
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.149, i64 0, i64 0)) #19, !dbg !4124
  %213 = load i8**, i8*** %11, align 8, !dbg !4125
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4125
  %215 = load i8*, i8** %214, align 8, !dbg !4125
  %216 = load i8**, i8*** %11, align 8, !dbg !4126
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4126
  %218 = load i8*, i8** %217, align 8, !dbg !4126
  %219 = load i8**, i8*** %11, align 8, !dbg !4127
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4127
  %221 = load i8*, i8** %220, align 8, !dbg !4127
  %222 = load i8**, i8*** %11, align 8, !dbg !4128
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4128
  %224 = load i8*, i8** %223, align 8, !dbg !4128
  %225 = load i8**, i8*** %11, align 8, !dbg !4129
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4129
  %227 = load i8*, i8** %226, align 8, !dbg !4129
  %228 = load i8**, i8*** %11, align 8, !dbg !4130
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4130
  %230 = load i8*, i8** %229, align 8, !dbg !4130
  %231 = load i8**, i8*** %11, align 8, !dbg !4131
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4131
  %233 = load i8*, i8** %232, align 8, !dbg !4131
  %234 = load i8**, i8*** %11, align 8, !dbg !4132
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4132
  %236 = load i8*, i8** %235, align 8, !dbg !4132
  %237 = load i8**, i8*** %11, align 8, !dbg !4133
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4133
  %239 = load i8*, i8** %238, align 8, !dbg !4133
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4134
  br label %241, !dbg !4135

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4137 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4142, metadata !DIExpression()), !dbg !4143
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4144, metadata !DIExpression()), !dbg !4145
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4146, metadata !DIExpression()), !dbg !4147
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4148, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4150, metadata !DIExpression()), !dbg !4151
  store i64 0, i64* %11, align 8, !dbg !4152
  br label %12, !dbg !4154

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4155
  %14 = load i64, i64* %11, align 8, !dbg !4157
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4155
  %16 = load i8*, i8** %15, align 8, !dbg !4155
  %17 = icmp ne i8* %16, null, !dbg !4158
  br i1 %17, label %18, label %22, !dbg !4158

18:                                               ; preds = %12
  br label %19, !dbg !4158

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4159
  %21 = add i64 %20, 1, !dbg !4159
  store i64 %21, i64* %11, align 8, !dbg !4159
  br label %12, !dbg !4160, !llvm.loop !4161

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4163
  %24 = load i8*, i8** %7, align 8, !dbg !4164
  %25 = load i8*, i8** %8, align 8, !dbg !4165
  %26 = load i8*, i8** %9, align 8, !dbg !4166
  %27 = load i8**, i8*** %10, align 8, !dbg !4167
  %28 = load i64, i64* %11, align 8, !dbg !4168
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4169
  ret void, !dbg !4170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4171 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4187, metadata !DIExpression()), !dbg !4188
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4197, metadata !DIExpression()), !dbg !4199
  store i64 0, i64* %10, align 8, !dbg !4200
  br label %12, !dbg !4202

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4203
  %14 = icmp ult i64 %13, 10, !dbg !4205
  br i1 %14, label %15, label %38, !dbg !4206

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4207
  %17 = load i32, i32* %16, align 8, !dbg !4207
  %18 = icmp sge i32 %17, 0, !dbg !4207
  br i1 %18, label %27, label %19, !dbg !4207

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4207
  store i32 %20, i32* %16, align 8, !dbg !4207
  %21 = icmp sle i32 %20, 0, !dbg !4207
  br i1 %21, label %22, label %27, !dbg !4207

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4207
  %24 = load i8*, i8** %23, align 8, !dbg !4207
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4207
  %26 = bitcast i8* %25 to i8**, !dbg !4207
  br label %32, !dbg !4207

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4207
  %29 = load i8*, i8** %28, align 8, !dbg !4207
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4207
  store i8* %30, i8** %28, align 8, !dbg !4207
  %31 = bitcast i8* %29 to i8**, !dbg !4207
  br label %32, !dbg !4207

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4207
  %34 = load i8*, i8** %33, align 8, !dbg !4207
  %35 = load i64, i64* %10, align 8, !dbg !4208
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4209
  store i8* %34, i8** %36, align 8, !dbg !4210
  %37 = icmp ne i8* %34, null, !dbg !4211
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4212
  br i1 %39, label %40, label %44, !dbg !4213

40:                                               ; preds = %38
  br label %41, !dbg !4213

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4214
  %43 = add i64 %42, 1, !dbg !4214
  store i64 %43, i64* %10, align 8, !dbg !4214
  br label %12, !dbg !4215, !llvm.loop !4216

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4218
  %46 = load i8*, i8** %7, align 8, !dbg !4219
  %47 = load i8*, i8** %8, align 8, !dbg !4220
  %48 = load i8*, i8** %9, align 8, !dbg !4221
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4222
  %50 = load i64, i64* %10, align 8, !dbg !4223
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4224
  ret void, !dbg !4225
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4226 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4231, metadata !DIExpression()), !dbg !4232
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4233, metadata !DIExpression()), !dbg !4234
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4237, metadata !DIExpression()), !dbg !4238
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4239
  call void @llvm.va_start(i8* %11), !dbg !4239
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4240
  %13 = load i8*, i8** %6, align 8, !dbg !4241
  %14 = load i8*, i8** %7, align 8, !dbg !4242
  %15 = load i8*, i8** %8, align 8, !dbg !4243
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4244
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4244
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4244
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4245
  call void @llvm.va_end(i8* %18), !dbg !4245
  ret void, !dbg !4246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4247 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4248
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.137, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4248
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.154, i64 0, i64 0)) #19, !dbg !4249
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.155, i64 0, i64 0)), !dbg !4250
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.156, i64 0, i64 0)) #19, !dbg !4251
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.158, i64 0, i64 0)), !dbg !4252
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.159, i64 0, i64 0)) #19, !dbg !4253
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.160, i64 0, i64 0)), !dbg !4254
  ret void, !dbg !4255
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4256 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4260, metadata !DIExpression()), !dbg !4261
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4262, metadata !DIExpression()), !dbg !4263
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4264, metadata !DIExpression()), !dbg !4265
  %7 = load i8*, i8** %4, align 8, !dbg !4266
  %8 = load i64, i64* %5, align 8, !dbg !4267
  %9 = load i64, i64* %6, align 8, !dbg !4268
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !4269
  ret i8* %10, !dbg !4270
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4271 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4272, metadata !DIExpression()), !dbg !4273
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4276, metadata !DIExpression()), !dbg !4277
  %7 = load i8*, i8** %4, align 8, !dbg !4278
  %8 = load i64, i64* %5, align 8, !dbg !4279
  %9 = load i64, i64* %6, align 8, !dbg !4280
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4281
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4282
  ret i8* %11, !dbg !4283
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4284 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4287, metadata !DIExpression()), !dbg !4288
  %3 = load i8*, i8** %2, align 8, !dbg !4289
  %4 = icmp ne i8* %3, null, !dbg !4289
  br i1 %4, label %6, label %5, !dbg !4291

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !4292
  unreachable, !dbg !4292

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4293
  ret i8* %7, !dbg !4294
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4295 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4298, metadata !DIExpression()), !dbg !4299
  %3 = load i64, i64* %2, align 8, !dbg !4300
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !4301
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4302
  ret i8* %5, !dbg !4303
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4304 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4307, metadata !DIExpression()), !dbg !4308
  %3 = load i64, i64* %2, align 8, !dbg !4309
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4310
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4311
  ret i8* %5, !dbg !4312
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4313 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4316, metadata !DIExpression()), !dbg !4317
  %3 = load i64, i64* %2, align 8, !dbg !4318
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !4318
  ret i8* %4, !dbg !4319
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4320 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4323, metadata !DIExpression()), !dbg !4324
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4325, metadata !DIExpression()), !dbg !4326
  %5 = load i8*, i8** %3, align 8, !dbg !4327
  %6 = load i64, i64* %4, align 8, !dbg !4328
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4329
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4330
  ret i8* %8, !dbg !4331
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4332 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4337, metadata !DIExpression()), !dbg !4338
  %5 = load i8*, i8** %3, align 8, !dbg !4339
  %6 = load i64, i64* %4, align 8, !dbg !4340
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4341
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4342
  ret i8* %8, !dbg !4343
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4344 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4347, metadata !DIExpression()), !dbg !4348
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4351, metadata !DIExpression()), !dbg !4352
  %7 = load i8*, i8** %4, align 8, !dbg !4353
  %8 = load i64, i64* %5, align 8, !dbg !4354
  %9 = load i64, i64* %6, align 8, !dbg !4355
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4356
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4357
  ret i8* %11, !dbg !4358
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4359 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4364, metadata !DIExpression()), !dbg !4365
  %5 = load i64, i64* %3, align 8, !dbg !4366
  %6 = load i64, i64* %4, align 8, !dbg !4367
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4368
  ret i8* %7, !dbg !4369
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4370 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4373, metadata !DIExpression()), !dbg !4374
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4375, metadata !DIExpression()), !dbg !4376
  %5 = load i64, i64* %3, align 8, !dbg !4377
  %6 = load i64, i64* %4, align 8, !dbg !4378
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4379
  ret i8* %7, !dbg !4380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4381 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4384, metadata !DIExpression()), !dbg !4385
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4386, metadata !DIExpression()), !dbg !4387
  %5 = load i8*, i8** %3, align 8, !dbg !4388
  %6 = load i64*, i64** %4, align 8, !dbg !4389
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4390
  ret i8* %7, !dbg !4391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !319 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4392, metadata !DIExpression()), !dbg !4393
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4394, metadata !DIExpression()), !dbg !4395
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4398, metadata !DIExpression()), !dbg !4399
  %8 = load i64*, i64** %5, align 8, !dbg !4400
  %9 = load i64, i64* %8, align 8, !dbg !4401
  store i64 %9, i64* %7, align 8, !dbg !4399
  %10 = load i8*, i8** %4, align 8, !dbg !4402
  %11 = icmp ne i8* %10, null, !dbg !4402
  br i1 %11, label %26, label %12, !dbg !4404

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4405
  %14 = icmp ne i64 %13, 0, !dbg !4405
  br i1 %14, label %25, label %15, !dbg !4408

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4409
  %17 = udiv i64 128, %16, !dbg !4411
  store i64 %17, i64* %7, align 8, !dbg !4412
  %18 = load i64, i64* %7, align 8, !dbg !4413
  %19 = icmp ne i64 %18, 0, !dbg !4414
  %20 = xor i1 %19, true, !dbg !4414
  %21 = zext i1 %20 to i32, !dbg !4414
  %22 = sext i32 %21 to i64, !dbg !4414
  %23 = load i64, i64* %7, align 8, !dbg !4415
  %24 = add i64 %23, %22, !dbg !4415
  store i64 %24, i64* %7, align 8, !dbg !4415
  br label %25, !dbg !4416

25:                                               ; preds = %15, %12
  br label %36, !dbg !4417

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4418
  %28 = load i64, i64* %7, align 8, !dbg !4418
  %29 = lshr i64 %28, 1, !dbg !4418
  %30 = add i64 %29, 1, !dbg !4418
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4418
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4418
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4418
  store i64 %33, i64* %7, align 8, !dbg !4418
  br i1 %32, label %34, label %35, !dbg !4421

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !4422
  unreachable, !dbg !4422

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4423
  %38 = load i64, i64* %7, align 8, !dbg !4424
  %39 = load i64, i64* %6, align 8, !dbg !4425
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !4426
  store i8* %40, i8** %4, align 8, !dbg !4427
  %41 = load i64, i64* %7, align 8, !dbg !4428
  %42 = load i64*, i64** %5, align 8, !dbg !4429
  store i64 %41, i64* %42, align 8, !dbg !4430
  %43 = load i8*, i8** %4, align 8, !dbg !4431
  ret i8* %43, !dbg !4432
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !326 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4443, metadata !DIExpression()), !dbg !4444
  %15 = load i64*, i64** %7, align 8, !dbg !4445
  %16 = load i64, i64* %15, align 8, !dbg !4446
  store i64 %16, i64* %11, align 8, !dbg !4444
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4447, metadata !DIExpression()), !dbg !4448
  %17 = load i64, i64* %11, align 8, !dbg !4449
  %18 = load i64, i64* %11, align 8, !dbg !4449
  %19 = ashr i64 %18, 1, !dbg !4449
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4449
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4449
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4449
  store i64 %22, i64* %12, align 8, !dbg !4449
  br i1 %21, label %23, label %24, !dbg !4451

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4452
  br label %24, !dbg !4453

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4454
  %26 = icmp sle i64 0, %25, !dbg !4456
  br i1 %26, label %27, label %33, !dbg !4457

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4458
  %29 = load i64, i64* %12, align 8, !dbg !4459
  %30 = icmp slt i64 %28, %29, !dbg !4460
  br i1 %30, label %31, label %33, !dbg !4461

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4462
  store i64 %32, i64* %12, align 8, !dbg !4463
  br label %33, !dbg !4464

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4467, metadata !DIExpression()), !dbg !4468
  %34 = load i64, i64* %10, align 8, !dbg !4469
  %35 = icmp slt i64 %34, 0, !dbg !4469
  br i1 %35, label %36, label %82, !dbg !4469

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4469
  %38 = icmp slt i64 %37, 0, !dbg !4469
  br i1 %38, label %39, label %62, !dbg !4469

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4469

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4469
  %42 = load i64, i64* %10, align 8, !dbg !4469
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4469
  %44 = icmp slt i64 %41, %43, !dbg !4469
  br i1 %44, label %111, label %115, !dbg !4469

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4469

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4469
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4469
  br i1 %48, label %52, label %53, !dbg !4469

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4469
  %51 = icmp slt i64 0, %50, !dbg !4469
  br i1 %51, label %52, label %53, !dbg !4469

52:                                               ; preds = %49, %46
  br label %57, !dbg !4469

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4469
  %55 = sub nsw i64 0, %54, !dbg !4469
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4469
  br label %57, !dbg !4469

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4469
  %59 = load i64, i64* %12, align 8, !dbg !4469
  %60 = sub nsw i64 -1, %59, !dbg !4469
  %61 = icmp sle i64 %58, %60, !dbg !4469
  br i1 %61, label %111, label %115, !dbg !4469

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4469
  %64 = icmp eq i64 %63, -1, !dbg !4469
  br i1 %64, label %65, label %77, !dbg !4469

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4469

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4469
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4469
  %69 = icmp slt i64 0, %68, !dbg !4469
  br i1 %69, label %111, label %115, !dbg !4469

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4469
  %72 = icmp slt i64 0, %71, !dbg !4469
  br i1 %72, label %73, label %115, !dbg !4469

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4469
  %75 = sub nsw i64 %74, 1, !dbg !4469
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4469
  br i1 %76, label %111, label %115, !dbg !4469

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4469
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4469
  %80 = load i64, i64* %12, align 8, !dbg !4469
  %81 = icmp slt i64 %79, %80, !dbg !4469
  br i1 %81, label %111, label %115, !dbg !4469

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4469
  %84 = icmp eq i64 %83, 0, !dbg !4469
  br i1 %84, label %85, label %86, !dbg !4469

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4469

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4469
  %88 = icmp slt i64 %87, 0, !dbg !4469
  br i1 %88, label %89, label %106, !dbg !4469

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4469
  %91 = icmp eq i64 %90, -1, !dbg !4469
  br i1 %91, label %92, label %101, !dbg !4469

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4469

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4469
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4469
  %96 = icmp slt i64 0, %95, !dbg !4469
  br i1 %96, label %111, label %115, !dbg !4469

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4469
  %99 = sub nsw i64 %98, 1, !dbg !4469
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4469
  br i1 %100, label %111, label %115, !dbg !4469

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4469
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4469
  %104 = load i64, i64* %10, align 8, !dbg !4469
  %105 = icmp slt i64 %103, %104, !dbg !4469
  br i1 %105, label %111, label %115, !dbg !4469

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4469
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4469
  %109 = load i64, i64* %12, align 8, !dbg !4469
  %110 = icmp slt i64 %108, %109, !dbg !4469
  br i1 %110, label %111, label %115, !dbg !4469

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4469
  %113 = load i64, i64* %10, align 8, !dbg !4469
  %114 = mul i64 %112, %113, !dbg !4469
  store i64 %114, i64* %13, align 8, !dbg !4469
  br label %119, !dbg !4469

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4469
  %117 = load i64, i64* %10, align 8, !dbg !4469
  %118 = mul i64 %116, %117, !dbg !4469
  store i64 %118, i64* %13, align 8, !dbg !4469
  br label %119, !dbg !4469

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4469
  %121 = icmp ne i32 %120, 0, !dbg !4469
  br i1 %121, label %122, label %123, !dbg !4469

122:                                              ; preds = %119
  br label %129, !dbg !4469

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4470
  %125 = icmp slt i64 %124, 128, !dbg !4471
  %126 = zext i1 %125 to i64, !dbg !4470
  %127 = select i1 %125, i32 128, i32 0, !dbg !4470
  %128 = sext i32 %127 to i64, !dbg !4470
  br label %129, !dbg !4469

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4469
  store i64 %130, i64* %14, align 8, !dbg !4468
  %131 = load i64, i64* %14, align 8, !dbg !4472
  %132 = icmp ne i64 %131, 0, !dbg !4472
  br i1 %132, label %133, label %142, !dbg !4474

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4475
  %135 = load i64, i64* %10, align 8, !dbg !4477
  %136 = sdiv i64 %134, %135, !dbg !4478
  store i64 %136, i64* %12, align 8, !dbg !4479
  %137 = load i64, i64* %14, align 8, !dbg !4480
  %138 = load i64, i64* %14, align 8, !dbg !4481
  %139 = load i64, i64* %10, align 8, !dbg !4482
  %140 = srem i64 %138, %139, !dbg !4483
  %141 = sub nsw i64 %137, %140, !dbg !4484
  store i64 %141, i64* %13, align 8, !dbg !4485
  br label %142, !dbg !4486

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4487
  %144 = icmp ne i8* %143, null, !dbg !4487
  br i1 %144, label %147, label %145, !dbg !4489

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4490
  store i64 0, i64* %146, align 8, !dbg !4491
  br label %147, !dbg !4492

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4493
  %149 = load i64, i64* %11, align 8, !dbg !4495
  %150 = sub nsw i64 %148, %149, !dbg !4496
  %151 = load i64, i64* %8, align 8, !dbg !4497
  %152 = icmp slt i64 %150, %151, !dbg !4498
  br i1 %152, label %153, label %256, !dbg !4499

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4500
  %155 = load i64, i64* %8, align 8, !dbg !4500
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4500
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4500
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4500
  store i64 %158, i64* %12, align 8, !dbg !4500
  br i1 %157, label %255, label %159, !dbg !4501

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4502
  %161 = icmp sle i64 0, %160, !dbg !4503
  br i1 %161, label %162, label %166, !dbg !4504

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4505
  %164 = load i64, i64* %12, align 8, !dbg !4506
  %165 = icmp slt i64 %163, %164, !dbg !4507
  br i1 %165, label %255, label %166, !dbg !4508

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4509
  %168 = icmp slt i64 %167, 0, !dbg !4509
  br i1 %168, label %169, label %215, !dbg !4509

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4509
  %171 = icmp slt i64 %170, 0, !dbg !4509
  br i1 %171, label %172, label %195, !dbg !4509

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4509

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4509
  %175 = load i64, i64* %10, align 8, !dbg !4509
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4509
  %177 = icmp slt i64 %174, %176, !dbg !4509
  br i1 %177, label %244, label %248, !dbg !4509

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4509

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4509
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4509
  br i1 %181, label %185, label %186, !dbg !4509

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4509
  %184 = icmp slt i64 0, %183, !dbg !4509
  br i1 %184, label %185, label %186, !dbg !4509

185:                                              ; preds = %182, %179
  br label %190, !dbg !4509

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4509
  %188 = sub nsw i64 0, %187, !dbg !4509
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4509
  br label %190, !dbg !4509

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4509
  %192 = load i64, i64* %12, align 8, !dbg !4509
  %193 = sub nsw i64 -1, %192, !dbg !4509
  %194 = icmp sle i64 %191, %193, !dbg !4509
  br i1 %194, label %244, label %248, !dbg !4509

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4509
  %197 = icmp eq i64 %196, -1, !dbg !4509
  br i1 %197, label %198, label %210, !dbg !4509

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4509

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4509
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4509
  %202 = icmp slt i64 0, %201, !dbg !4509
  br i1 %202, label %244, label %248, !dbg !4509

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4509
  %205 = icmp slt i64 0, %204, !dbg !4509
  br i1 %205, label %206, label %248, !dbg !4509

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4509
  %208 = sub nsw i64 %207, 1, !dbg !4509
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4509
  br i1 %209, label %244, label %248, !dbg !4509

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4509
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4509
  %213 = load i64, i64* %12, align 8, !dbg !4509
  %214 = icmp slt i64 %212, %213, !dbg !4509
  br i1 %214, label %244, label %248, !dbg !4509

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4509
  %217 = icmp eq i64 %216, 0, !dbg !4509
  br i1 %217, label %218, label %219, !dbg !4509

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4509

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4509
  %221 = icmp slt i64 %220, 0, !dbg !4509
  br i1 %221, label %222, label %239, !dbg !4509

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4509
  %224 = icmp eq i64 %223, -1, !dbg !4509
  br i1 %224, label %225, label %234, !dbg !4509

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4509

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4509
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4509
  %229 = icmp slt i64 0, %228, !dbg !4509
  br i1 %229, label %244, label %248, !dbg !4509

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4509
  %232 = sub nsw i64 %231, 1, !dbg !4509
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4509
  br i1 %233, label %244, label %248, !dbg !4509

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4509
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4509
  %237 = load i64, i64* %10, align 8, !dbg !4509
  %238 = icmp slt i64 %236, %237, !dbg !4509
  br i1 %238, label %244, label %248, !dbg !4509

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4509
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4509
  %242 = load i64, i64* %12, align 8, !dbg !4509
  %243 = icmp slt i64 %241, %242, !dbg !4509
  br i1 %243, label %244, label %248, !dbg !4509

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4509
  %246 = load i64, i64* %10, align 8, !dbg !4509
  %247 = mul i64 %245, %246, !dbg !4509
  store i64 %247, i64* %13, align 8, !dbg !4509
  br label %252, !dbg !4509

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4509
  %250 = load i64, i64* %10, align 8, !dbg !4509
  %251 = mul i64 %249, %250, !dbg !4509
  store i64 %251, i64* %13, align 8, !dbg !4509
  br label %252, !dbg !4509

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4509
  %254 = icmp ne i32 %253, 0, !dbg !4509
  br i1 %254, label %255, label %256, !dbg !4510

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !4511
  unreachable, !dbg !4511

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4512
  %258 = load i64, i64* %13, align 8, !dbg !4513
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !4514
  store i8* %259, i8** %6, align 8, !dbg !4515
  %260 = load i64, i64* %12, align 8, !dbg !4516
  %261 = load i64*, i64** %7, align 8, !dbg !4517
  store i64 %260, i64* %261, align 8, !dbg !4518
  %262 = load i8*, i8** %6, align 8, !dbg !4519
  ret i8* %262, !dbg !4520
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4521 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4522, metadata !DIExpression()), !dbg !4523
  %3 = load i64, i64* %2, align 8, !dbg !4524
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4525
  ret i8* %4, !dbg !4526
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4527 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4530, metadata !DIExpression()), !dbg !4531
  %5 = load i64, i64* %3, align 8, !dbg !4532
  %6 = load i64, i64* %4, align 8, !dbg !4533
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !4534
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4535
  ret i8* %8, !dbg !4536
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4537 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4538, metadata !DIExpression()), !dbg !4539
  %3 = load i64, i64* %2, align 8, !dbg !4540
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !4541
  ret i8* %4, !dbg !4542
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4543 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4544, metadata !DIExpression()), !dbg !4545
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4546, metadata !DIExpression()), !dbg !4547
  %5 = load i64, i64* %3, align 8, !dbg !4548
  %6 = load i64, i64* %4, align 8, !dbg !4549
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4550
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4551
  ret i8* %8, !dbg !4552
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4553 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4558, metadata !DIExpression()), !dbg !4559
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4560, metadata !DIExpression()), !dbg !4561
  %5 = load i64, i64* %4, align 8, !dbg !4562
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !4563
  %7 = load i8*, i8** %3, align 8, !dbg !4564
  %8 = load i64, i64* %4, align 8, !dbg !4565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4566
  ret i8* %6, !dbg !4567
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4568 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4571, metadata !DIExpression()), !dbg !4572
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4573, metadata !DIExpression()), !dbg !4574
  %5 = load i64, i64* %4, align 8, !dbg !4575
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !4576
  %7 = load i8*, i8** %3, align 8, !dbg !4577
  %8 = load i64, i64* %4, align 8, !dbg !4578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4579
  ret i8* %6, !dbg !4580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4581 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4584, metadata !DIExpression()), !dbg !4585
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4586, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4588, metadata !DIExpression()), !dbg !4589
  %6 = load i64, i64* %4, align 8, !dbg !4590
  %7 = add nsw i64 %6, 1, !dbg !4591
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !4592
  store i8* %8, i8** %5, align 8, !dbg !4589
  %9 = load i8*, i8** %5, align 8, !dbg !4593
  %10 = load i64, i64* %4, align 8, !dbg !4594
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4593
  store i8 0, i8* %11, align 1, !dbg !4595
  %12 = load i8*, i8** %5, align 8, !dbg !4596
  %13 = load i8*, i8** %3, align 8, !dbg !4597
  %14 = load i64, i64* %4, align 8, !dbg !4598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4599
  ret i8* %12, !dbg !4600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4601 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4602, metadata !DIExpression()), !dbg !4603
  %3 = load i8*, i8** %2, align 8, !dbg !4604
  %4 = load i8*, i8** %2, align 8, !dbg !4605
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !4606
  %6 = add i64 %5, 1, !dbg !4607
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !4608
  ret i8* %7, !dbg !4609
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4610 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4611, metadata !DIExpression()), !dbg !4614
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4614
  store i32 %2, i32* %1, align 4, !dbg !4614
  %3 = load i32, i32* %1, align 4, !dbg !4614
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.171, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.172, i64 0, i64 0)) #19, !dbg !4614
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.173, i64 0, i64 0), i8* noundef %4), !dbg !4614
  %5 = load i32, i32* %1, align 4, !dbg !4614
  %6 = icmp ne i32 %5, 0, !dbg !4614
  br i1 %6, label %7, label %9, !dbg !4614

7:                                                ; preds = %0
  unreachable, !dbg !4614

8:                                                ; No predecessors!
  br label %10, !dbg !4614

9:                                                ; preds = %0
  br label %10, !dbg !4614

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !4615
  unreachable, !dbg !4615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) #4 !dbg !4616 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4628, metadata !DIExpression()), !dbg !4629
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata i64* %18, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4640, metadata !DIExpression()), !dbg !4642
  %23 = load i8*, i8** %9, align 8, !dbg !4643
  %24 = load i32, i32* %10, align 4, !dbg !4644
  %25 = load i8*, i8** %13, align 8, !dbg !4645
  %26 = call i32 @xstrtoumax(i8* noundef %23, i8** noundef null, i32 noundef %24, i64* noundef %17, i8* noundef %25), !dbg !4646
  store i32 %26, i32* %19, align 4, !dbg !4642
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4647, metadata !DIExpression()), !dbg !4648
  %27 = load i32, i32* %19, align 4, !dbg !4649
  %28 = icmp ne i32 %27, 4, !dbg !4651
  br i1 %28, label %29, label %63, !dbg !4652

29:                                               ; preds = %8
  %30 = load i64, i64* %17, align 8, !dbg !4653
  %31 = load i64, i64* %11, align 8, !dbg !4656
  %32 = icmp ult i64 %30, %31, !dbg !4657
  br i1 %32, label %33, label %44, !dbg !4658

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8, !dbg !4659
  store i64 %34, i64* %18, align 8, !dbg !4661
  %35 = load i32, i32* %16, align 4, !dbg !4662
  %36 = and i32 %35, 4, !dbg !4663
  %37 = icmp ne i32 %36, 0, !dbg !4662
  %38 = zext i1 %37 to i64, !dbg !4662
  %39 = select i1 %37, i32 34, i32 75, !dbg !4662
  store i32 %39, i32* %20, align 4, !dbg !4664
  %40 = load i32, i32* %19, align 4, !dbg !4665
  %41 = icmp eq i32 %40, 0, !dbg !4667
  br i1 %41, label %42, label %43, !dbg !4668

42:                                               ; preds = %33
  store i32 1, i32* %19, align 4, !dbg !4669
  br label %43, !dbg !4670

43:                                               ; preds = %42, %33
  br label %62, !dbg !4671

44:                                               ; preds = %29
  %45 = load i64, i64* %12, align 8, !dbg !4672
  %46 = load i64, i64* %17, align 8, !dbg !4674
  %47 = icmp ult i64 %45, %46, !dbg !4675
  br i1 %47, label %48, label %59, !dbg !4676

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8, !dbg !4677
  store i64 %49, i64* %18, align 8, !dbg !4679
  %50 = load i32, i32* %16, align 4, !dbg !4680
  %51 = and i32 %50, 8, !dbg !4681
  %52 = icmp ne i32 %51, 0, !dbg !4680
  %53 = zext i1 %52 to i64, !dbg !4680
  %54 = select i1 %52, i32 34, i32 75, !dbg !4680
  store i32 %54, i32* %20, align 4, !dbg !4682
  %55 = load i32, i32* %19, align 4, !dbg !4683
  %56 = icmp eq i32 %55, 0, !dbg !4685
  br i1 %56, label %57, label %58, !dbg !4686

57:                                               ; preds = %48
  store i32 1, i32* %19, align 4, !dbg !4687
  br label %58, !dbg !4688

58:                                               ; preds = %57, %48
  br label %61, !dbg !4689

59:                                               ; preds = %44
  %60 = load i64, i64* %17, align 8, !dbg !4690
  store i64 %60, i64* %18, align 8, !dbg !4692
  store i32 75, i32* %20, align 4, !dbg !4693
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %43
  br label %63, !dbg !4694

63:                                               ; preds = %62, %8
  call void @llvm.dbg.declare(metadata i32* %21, metadata !4695, metadata !DIExpression()), !dbg !4696
  %64 = load i32, i32* %19, align 4, !dbg !4697
  %65 = icmp eq i32 %64, 1, !dbg !4698
  br i1 %65, label %66, label %68, !dbg !4697

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4, !dbg !4699
  br label %69, !dbg !4697

68:                                               ; preds = %63
  br label %69, !dbg !4697

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !4697
  store i32 %70, i32* %21, align 4, !dbg !4696
  %71 = load i32, i32* %19, align 4, !dbg !4700
  %72 = icmp eq i32 %71, 0, !dbg !4702
  br i1 %72, label %137, label %73, !dbg !4703

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4, !dbg !4704
  %75 = icmp eq i32 %74, 1, !dbg !4705
  br i1 %75, label %76, label %84, !dbg !4706

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4, !dbg !4707
  %78 = load i64, i64* %17, align 8, !dbg !4708
  %79 = icmp ult i64 %78, 0, !dbg !4709
  %80 = zext i1 %79 to i64, !dbg !4708
  %81 = select i1 %79, i32 1, i32 2, !dbg !4708
  %82 = and i32 %77, %81, !dbg !4710
  %83 = icmp ne i32 %82, 0, !dbg !4710
  br i1 %83, label %137, label %84, !dbg !4711

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %15, align 4, !dbg !4712
  %86 = icmp ne i32 %85, 0, !dbg !4712
  br i1 %86, label %87, label %89, !dbg !4712

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4, !dbg !4712
  br label %90, !dbg !4712

89:                                               ; preds = %84
  br label %90, !dbg !4712

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 1, %89 ], !dbg !4712
  %92 = call i1 @llvm.is.constant.i32(i32 %91), !dbg !4712
  br i1 %92, label %93, label %117, !dbg !4712

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4, !dbg !4712
  %95 = icmp ne i32 %94, 0, !dbg !4712
  br i1 %95, label %96, label %98, !dbg !4712

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4, !dbg !4712
  br label %99, !dbg !4712

98:                                               ; preds = %93
  br label %99, !dbg !4712

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 1, %98 ], !dbg !4712
  %101 = load i32, i32* %21, align 4, !dbg !4712
  %102 = load i8*, i8** %14, align 8, !dbg !4712
  %103 = load i8*, i8** %9, align 8, !dbg !4712
  %104 = call i8* @quote(i8* noundef %103), !dbg !4712
  call void (i32, i32, i8*, ...) @error(i32 noundef %100, i32 noundef %101, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), i8* noundef %102, i8* noundef %104), !dbg !4712
  %105 = load i32, i32* %15, align 4, !dbg !4712
  %106 = icmp ne i32 %105, 0, !dbg !4712
  br i1 %106, label %107, label %109, !dbg !4712

107:                                              ; preds = %99
  %108 = load i32, i32* %15, align 4, !dbg !4712
  br label %110, !dbg !4712

109:                                              ; preds = %99
  br label %110, !dbg !4712

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 1, %109 ], !dbg !4712
  %112 = icmp ne i32 %111, 0, !dbg !4712
  br i1 %112, label %113, label %115, !dbg !4712

113:                                              ; preds = %110
  unreachable, !dbg !4712

114:                                              ; No predecessors!
  br label %116, !dbg !4712

115:                                              ; preds = %110
  br label %116, !dbg !4712

116:                                              ; preds = %115, %114
  br label %136, !dbg !4712

117:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4713, metadata !DIExpression()), !dbg !4715
  %118 = load i32, i32* %15, align 4, !dbg !4715
  %119 = icmp ne i32 %118, 0, !dbg !4715
  br i1 %119, label %120, label %122, !dbg !4715

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4, !dbg !4715
  br label %123, !dbg !4715

122:                                              ; preds = %117
  br label %123, !dbg !4715

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 1, %122 ], !dbg !4715
  store i32 %124, i32* %22, align 4, !dbg !4715
  %125 = load i32, i32* %22, align 4, !dbg !4715
  %126 = load i32, i32* %21, align 4, !dbg !4715
  %127 = load i8*, i8** %14, align 8, !dbg !4715
  %128 = load i8*, i8** %9, align 8, !dbg !4715
  %129 = call i8* @quote(i8* noundef %128), !dbg !4715
  call void (i32, i32, i8*, ...) @error(i32 noundef %125, i32 noundef %126, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), i8* noundef %127, i8* noundef %129), !dbg !4715
  %130 = load i32, i32* %22, align 4, !dbg !4715
  %131 = icmp ne i32 %130, 0, !dbg !4715
  br i1 %131, label %132, label %134, !dbg !4715

132:                                              ; preds = %123
  unreachable, !dbg !4715

133:                                              ; No predecessors!
  br label %135, !dbg !4715

134:                                              ; preds = %123
  br label %135, !dbg !4715

135:                                              ; preds = %134, %133
  br label %136, !dbg !4712

136:                                              ; preds = %135, %116
  br label %137, !dbg !4712

137:                                              ; preds = %136, %76, %69
  %138 = load i32, i32* %21, align 4, !dbg !4716
  %139 = call i32* @__errno_location() #22, !dbg !4717
  store i32 %138, i32* %139, align 4, !dbg !4718
  %140 = load i64, i64* %18, align 8, !dbg !4719
  ret i64 %140, !dbg !4720
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) #4 !dbg !4721 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4724, metadata !DIExpression()), !dbg !4725
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4726, metadata !DIExpression()), !dbg !4727
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4728, metadata !DIExpression()), !dbg !4729
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4734, metadata !DIExpression()), !dbg !4735
  %13 = load i8*, i8** %7, align 8, !dbg !4736
  %14 = load i64, i64* %8, align 8, !dbg !4737
  %15 = load i64, i64* %9, align 8, !dbg !4738
  %16 = load i8*, i8** %10, align 8, !dbg !4739
  %17 = load i8*, i8** %11, align 8, !dbg !4740
  %18 = load i32, i32* %12, align 4, !dbg !4741
  %19 = call i64 @xnumtoumax(i8* noundef %13, i32 noundef 10, i64 noundef %14, i64 noundef %15, i8* noundef %16, i8* noundef %17, i32 noundef %18, i32 noundef 0), !dbg !4742
  ret i64 %19, !dbg !4743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !4744 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4753, metadata !DIExpression()), !dbg !4754
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4755, metadata !DIExpression()), !dbg !4756
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4761, metadata !DIExpression()), !dbg !4762
  %21 = load i8**, i8*** %8, align 8, !dbg !4763
  %22 = icmp ne i8** %21, null, !dbg !4763
  br i1 %22, label %23, label %25, !dbg !4763

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8, !dbg !4764
  br label %26, !dbg !4763

25:                                               ; preds = %5
  br label %26, !dbg !4763

26:                                               ; preds = %25, %23
  %27 = phi i8** [ %24, %23 ], [ %12, %25 ], !dbg !4763
  store i8** %27, i8*** %13, align 8, !dbg !4762
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4765, metadata !DIExpression()), !dbg !4768
  %28 = load i8*, i8** %7, align 8, !dbg !4769
  store i8* %28, i8** %14, align 8, !dbg !4768
  call void @llvm.dbg.declare(metadata i8* %15, metadata !4770, metadata !DIExpression()), !dbg !4771
  %29 = load i8*, i8** %14, align 8, !dbg !4772
  %30 = load i8, i8* %29, align 1, !dbg !4773
  store i8 %30, i8* %15, align 1, !dbg !4771
  br label %31, !dbg !4774

31:                                               ; preds = %42, %26
  %32 = call i16** @__ctype_b_loc() #22, !dbg !4775
  %33 = load i16*, i16** %32, align 8, !dbg !4775
  %34 = load i8, i8* %15, align 1, !dbg !4775
  %35 = zext i8 %34 to i32, !dbg !4775
  %36 = sext i32 %35 to i64, !dbg !4775
  %37 = getelementptr inbounds i16, i16* %33, i64 %36, !dbg !4775
  %38 = load i16, i16* %37, align 2, !dbg !4775
  %39 = zext i16 %38 to i32, !dbg !4775
  %40 = and i32 %39, 8192, !dbg !4775
  %41 = icmp ne i32 %40, 0, !dbg !4774
  br i1 %41, label %42, label %46, !dbg !4774

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8, !dbg !4776
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !4776
  store i8* %44, i8** %14, align 8, !dbg !4776
  %45 = load i8, i8* %44, align 1, !dbg !4777
  store i8 %45, i8* %15, align 1, !dbg !4778
  br label %31, !dbg !4774, !llvm.loop !4779

46:                                               ; preds = %31
  %47 = load i8, i8* %15, align 1, !dbg !4781
  %48 = zext i8 %47 to i32, !dbg !4781
  %49 = icmp eq i32 %48, 45, !dbg !4783
  br i1 %49, label %50, label %53, !dbg !4784

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8, !dbg !4785
  %52 = load i8**, i8*** %13, align 8, !dbg !4787
  store i8* %51, i8** %52, align 8, !dbg !4788
  store i32 4, i32* %6, align 4, !dbg !4789
  br label %218, !dbg !4789

53:                                               ; preds = %46
  %54 = call i32* @__errno_location() #22, !dbg !4790
  store i32 0, i32* %54, align 4, !dbg !4791
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4792, metadata !DIExpression()), !dbg !4793
  %55 = load i8*, i8** %7, align 8, !dbg !4794
  %56 = load i8**, i8*** %13, align 8, !dbg !4795
  %57 = load i32, i32* %9, align 4, !dbg !4796
  %58 = call i64 @strtoumax(i8* noundef %55, i8** noundef %56, i32 noundef %57) #19, !dbg !4797
  store i64 %58, i64* %16, align 8, !dbg !4793
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4798, metadata !DIExpression()), !dbg !4799
  store i32 0, i32* %17, align 4, !dbg !4799
  %59 = load i8**, i8*** %13, align 8, !dbg !4800
  %60 = load i8*, i8** %59, align 8, !dbg !4802
  %61 = load i8*, i8** %7, align 8, !dbg !4803
  %62 = icmp eq i8* %60, %61, !dbg !4804
  br i1 %62, label %63, label %80, !dbg !4805

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8, !dbg !4806
  %65 = icmp ne i8* %64, null, !dbg !4806
  br i1 %65, label %66, label %78, !dbg !4809

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !4810
  %68 = load i8, i8* %67, align 1, !dbg !4811
  %69 = zext i8 %68 to i32, !dbg !4811
  %70 = icmp ne i32 %69, 0, !dbg !4811
  br i1 %70, label %71, label %78, !dbg !4812

71:                                               ; preds = %66
  %72 = load i8*, i8** %11, align 8, !dbg !4813
  %73 = load i8*, i8** %7, align 8, !dbg !4814
  %74 = load i8, i8* %73, align 1, !dbg !4815
  %75 = zext i8 %74 to i32, !dbg !4815
  %76 = call i8* @strchr(i8* noundef %72, i32 noundef %75) #21, !dbg !4816
  %77 = icmp ne i8* %76, null, !dbg !4816
  br i1 %77, label %79, label %78, !dbg !4817

78:                                               ; preds = %71, %66, %63
  store i32 4, i32* %6, align 4, !dbg !4818
  br label %218, !dbg !4818

79:                                               ; preds = %71
  store i64 1, i64* %16, align 8, !dbg !4819
  br label %91, !dbg !4820

80:                                               ; preds = %53
  %81 = call i32* @__errno_location() #22, !dbg !4821
  %82 = load i32, i32* %81, align 4, !dbg !4821
  %83 = icmp ne i32 %82, 0, !dbg !4823
  br i1 %83, label %84, label %90, !dbg !4824

84:                                               ; preds = %80
  %85 = call i32* @__errno_location() #22, !dbg !4825
  %86 = load i32, i32* %85, align 4, !dbg !4825
  %87 = icmp ne i32 %86, 34, !dbg !4828
  br i1 %87, label %88, label %89, !dbg !4829

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4, !dbg !4830
  br label %218, !dbg !4830

89:                                               ; preds = %84
  store i32 1, i32* %17, align 4, !dbg !4831
  br label %90, !dbg !4832

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %11, align 8, !dbg !4833
  %93 = icmp ne i8* %92, null, !dbg !4833
  br i1 %93, label %98, label %94, !dbg !4835

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8, !dbg !4836
  %96 = load i64*, i64** %10, align 8, !dbg !4838
  store i64 %95, i64* %96, align 8, !dbg !4839
  %97 = load i32, i32* %17, align 4, !dbg !4840
  store i32 %97, i32* %6, align 4, !dbg !4841
  br label %218, !dbg !4841

98:                                               ; preds = %91
  %99 = load i8**, i8*** %13, align 8, !dbg !4842
  %100 = load i8*, i8** %99, align 8, !dbg !4844
  %101 = load i8, i8* %100, align 1, !dbg !4845
  %102 = zext i8 %101 to i32, !dbg !4845
  %103 = icmp ne i32 %102, 0, !dbg !4846
  br i1 %103, label %104, label %214, !dbg !4847

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8, !dbg !4848
  %106 = load i8**, i8*** %13, align 8, !dbg !4851
  %107 = load i8*, i8** %106, align 8, !dbg !4852
  %108 = load i8, i8* %107, align 1, !dbg !4853
  %109 = zext i8 %108 to i32, !dbg !4853
  %110 = call i8* @strchr(i8* noundef %105, i32 noundef %109) #21, !dbg !4854
  %111 = icmp ne i8* %110, null, !dbg !4854
  br i1 %111, label %117, label %112, !dbg !4855

112:                                              ; preds = %104
  %113 = load i64, i64* %16, align 8, !dbg !4856
  %114 = load i64*, i64** %10, align 8, !dbg !4858
  store i64 %113, i64* %114, align 8, !dbg !4859
  %115 = load i32, i32* %17, align 4, !dbg !4860
  %116 = or i32 %115, 2, !dbg !4861
  store i32 %116, i32* %6, align 4, !dbg !4862
  br label %218, !dbg !4862

117:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4863, metadata !DIExpression()), !dbg !4864
  store i32 1024, i32* %18, align 4, !dbg !4864
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4865, metadata !DIExpression()), !dbg !4866
  store i32 1, i32* %19, align 4, !dbg !4866
  %118 = load i8**, i8*** %13, align 8, !dbg !4867
  %119 = load i8*, i8** %118, align 8, !dbg !4868
  %120 = load i8, i8* %119, align 1, !dbg !4869
  %121 = zext i8 %120 to i32, !dbg !4869
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
  ], !dbg !4870

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load i8*, i8** %11, align 8, !dbg !4871
  %124 = call i8* @strchr(i8* noundef %123, i32 noundef 48) #21, !dbg !4874
  %125 = icmp ne i8* %124, null, !dbg !4874
  br i1 %125, label %126, label %149, !dbg !4875

126:                                              ; preds = %122
  %127 = load i8**, i8*** %13, align 8, !dbg !4876
  %128 = getelementptr inbounds i8*, i8** %127, i64 0, !dbg !4876
  %129 = load i8*, i8** %128, align 8, !dbg !4876
  %130 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !4876
  %131 = load i8, i8* %130, align 1, !dbg !4876
  %132 = zext i8 %131 to i32, !dbg !4876
  switch i32 %132, label %148 [
    i32 105, label %133
    i32 66, label %145
    i32 68, label %145
  ], !dbg !4877

133:                                              ; preds = %126
  %134 = load i8**, i8*** %13, align 8, !dbg !4878
  %135 = getelementptr inbounds i8*, i8** %134, i64 0, !dbg !4878
  %136 = load i8*, i8** %135, align 8, !dbg !4878
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !4878
  %138 = load i8, i8* %137, align 1, !dbg !4878
  %139 = zext i8 %138 to i32, !dbg !4878
  %140 = icmp eq i32 %139, 66, !dbg !4881
  br i1 %140, label %141, label %144, !dbg !4882

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4, !dbg !4883
  %143 = add nsw i32 %142, 2, !dbg !4883
  store i32 %143, i32* %19, align 4, !dbg !4883
  br label %144, !dbg !4884

144:                                              ; preds = %141, %133
  br label %148, !dbg !4885

145:                                              ; preds = %126, %126
  store i32 1000, i32* %18, align 4, !dbg !4886
  %146 = load i32, i32* %19, align 4, !dbg !4887
  %147 = add nsw i32 %146, 1, !dbg !4887
  store i32 %147, i32* %19, align 4, !dbg !4887
  br label %148, !dbg !4888

148:                                              ; preds = %126, %145, %144
  br label %149, !dbg !4889

149:                                              ; preds = %148, %122
  br label %150, !dbg !4890

150:                                              ; preds = %149, %117
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4891, metadata !DIExpression()), !dbg !4892
  %151 = load i8**, i8*** %13, align 8, !dbg !4893
  %152 = load i8*, i8** %151, align 8, !dbg !4894
  %153 = load i8, i8* %152, align 1, !dbg !4895
  %154 = zext i8 %153 to i32, !dbg !4895
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
  ], !dbg !4896

155:                                              ; preds = %150
  %156 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 512), !dbg !4897
  store i32 %156, i32* %20, align 4, !dbg !4899
  br label %197, !dbg !4900

157:                                              ; preds = %150
  %158 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 1024), !dbg !4901
  store i32 %158, i32* %20, align 4, !dbg !4902
  br label %197, !dbg !4903

159:                                              ; preds = %150
  store i32 0, i32* %20, align 4, !dbg !4904
  br label %197, !dbg !4905

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4, !dbg !4906
  %162 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %161, i32 noundef 6), !dbg !4907
  store i32 %162, i32* %20, align 4, !dbg !4908
  br label %197, !dbg !4909

163:                                              ; preds = %150, %150
  %164 = load i32, i32* %18, align 4, !dbg !4910
  %165 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %164, i32 noundef 3), !dbg !4911
  store i32 %165, i32* %20, align 4, !dbg !4912
  br label %197, !dbg !4913

166:                                              ; preds = %150, %150
  %167 = load i32, i32* %18, align 4, !dbg !4914
  %168 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %167, i32 noundef 1), !dbg !4915
  store i32 %168, i32* %20, align 4, !dbg !4916
  br label %197, !dbg !4917

169:                                              ; preds = %150, %150
  %170 = load i32, i32* %18, align 4, !dbg !4918
  %171 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %170, i32 noundef 2), !dbg !4919
  store i32 %171, i32* %20, align 4, !dbg !4920
  br label %197, !dbg !4921

172:                                              ; preds = %150
  %173 = load i32, i32* %18, align 4, !dbg !4922
  %174 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %173, i32 noundef 5), !dbg !4923
  store i32 %174, i32* %20, align 4, !dbg !4924
  br label %197, !dbg !4925

175:                                              ; preds = %150
  %176 = load i32, i32* %18, align 4, !dbg !4926
  %177 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %176, i32 noundef 10), !dbg !4927
  store i32 %177, i32* %20, align 4, !dbg !4928
  br label %197, !dbg !4929

178:                                              ; preds = %150
  %179 = load i32, i32* %18, align 4, !dbg !4930
  %180 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %179, i32 noundef 9), !dbg !4931
  store i32 %180, i32* %20, align 4, !dbg !4932
  br label %197, !dbg !4933

181:                                              ; preds = %150, %150
  %182 = load i32, i32* %18, align 4, !dbg !4934
  %183 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %182, i32 noundef 4), !dbg !4935
  store i32 %183, i32* %20, align 4, !dbg !4936
  br label %197, !dbg !4937

184:                                              ; preds = %150
  %185 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 2), !dbg !4938
  store i32 %185, i32* %20, align 4, !dbg !4939
  br label %197, !dbg !4940

186:                                              ; preds = %150
  %187 = load i32, i32* %18, align 4, !dbg !4941
  %188 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %187, i32 noundef 8), !dbg !4942
  store i32 %188, i32* %20, align 4, !dbg !4943
  br label %197, !dbg !4944

189:                                              ; preds = %150
  %190 = load i32, i32* %18, align 4, !dbg !4945
  %191 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %190, i32 noundef 7), !dbg !4946
  store i32 %191, i32* %20, align 4, !dbg !4947
  br label %197, !dbg !4948

192:                                              ; preds = %150
  %193 = load i64, i64* %16, align 8, !dbg !4949
  %194 = load i64*, i64** %10, align 8, !dbg !4950
  store i64 %193, i64* %194, align 8, !dbg !4951
  %195 = load i32, i32* %17, align 4, !dbg !4952
  %196 = or i32 %195, 2, !dbg !4953
  store i32 %196, i32* %6, align 4, !dbg !4954
  br label %218, !dbg !4954

197:                                              ; preds = %189, %186, %184, %181, %178, %175, %172, %169, %166, %163, %160, %159, %157, %155
  %198 = load i32, i32* %20, align 4, !dbg !4955
  %199 = load i32, i32* %17, align 4, !dbg !4956
  %200 = or i32 %199, %198, !dbg !4956
  store i32 %200, i32* %17, align 4, !dbg !4956
  %201 = load i32, i32* %19, align 4, !dbg !4957
  %202 = load i8**, i8*** %13, align 8, !dbg !4958
  %203 = load i8*, i8** %202, align 8, !dbg !4959
  %204 = sext i32 %201 to i64, !dbg !4959
  %205 = getelementptr inbounds i8, i8* %203, i64 %204, !dbg !4959
  store i8* %205, i8** %202, align 8, !dbg !4959
  %206 = load i8**, i8*** %13, align 8, !dbg !4960
  %207 = load i8*, i8** %206, align 8, !dbg !4962
  %208 = load i8, i8* %207, align 1, !dbg !4963
  %209 = icmp ne i8 %208, 0, !dbg !4963
  br i1 %209, label %210, label %213, !dbg !4964

210:                                              ; preds = %197
  %211 = load i32, i32* %17, align 4, !dbg !4965
  %212 = or i32 %211, 2, !dbg !4965
  store i32 %212, i32* %17, align 4, !dbg !4965
  br label %213, !dbg !4966

213:                                              ; preds = %210, %197
  br label %214, !dbg !4967

214:                                              ; preds = %213, %98
  %215 = load i64, i64* %16, align 8, !dbg !4968
  %216 = load i64*, i64** %10, align 8, !dbg !4969
  store i64 %215, i64* %216, align 8, !dbg !4970
  %217 = load i32, i32* %17, align 4, !dbg !4971
  store i32 %217, i32* %6, align 4, !dbg !4972
  br label %218, !dbg !4972

218:                                              ; preds = %214, %192, %112, %94, %88, %78, %50
  %219 = load i32, i32* %6, align 4, !dbg !4973
  ret i32 %219, !dbg !4973
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !4974 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4977, metadata !DIExpression()), !dbg !4978
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4979, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4981, metadata !DIExpression()), !dbg !4982
  %7 = load i32, i32* %5, align 4, !dbg !4983
  %8 = icmp slt i32 %7, 0, !dbg !4983
  br i1 %8, label %9, label %68, !dbg !4983

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !4983
  %11 = load i64, i64* %10, align 8, !dbg !4983
  %12 = icmp ult i64 %11, 0, !dbg !4983
  br i1 %12, label %13, label %40, !dbg !4983

13:                                               ; preds = %9
  br i1 false, label %14, label %21, !dbg !4983

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !4983
  %16 = load i64, i64* %15, align 8, !dbg !4983
  %17 = load i32, i32* %5, align 4, !dbg !4983
  %18 = sext i32 %17 to i64, !dbg !4983
  %19 = udiv i64 -1, %18, !dbg !4983
  %20 = icmp ult i64 %16, %19, !dbg !4983
  br i1 %20, label %106, label %112, !dbg !4983

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !4983

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !4983
  %24 = icmp slt i32 %23, -2147483647, !dbg !4983
  br i1 %24, label %28, label %29, !dbg !4983

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !4983
  %27 = icmp slt i32 0, %26, !dbg !4983
  br i1 %27, label %28, label %29, !dbg !4983

28:                                               ; preds = %25, %22
  br label %34, !dbg !4983

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !4983
  %31 = sub nsw i32 0, %30, !dbg !4983
  %32 = sext i32 %31 to i64, !dbg !4983
  %33 = udiv i64 -1, %32, !dbg !4983
  br label %34, !dbg !4983

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8589934591, %28 ], [ %33, %29 ], !dbg !4983
  %36 = load i64*, i64** %4, align 8, !dbg !4983
  %37 = load i64, i64* %36, align 8, !dbg !4983
  %38 = sub i64 -1, %37, !dbg !4983
  %39 = icmp ule i64 %35, %38, !dbg !4983
  br i1 %39, label %106, label %112, !dbg !4983

40:                                               ; preds = %9
  br i1 true, label %41, label %42, !dbg !4983

41:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4983

42:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4983

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4, !dbg !4983
  %45 = icmp eq i32 %44, -1, !dbg !4983
  br i1 %45, label %46, label %61, !dbg !4983

46:                                               ; preds = %43
  br i1 false, label %47, label %52, !dbg !4983

47:                                               ; preds = %46
  %48 = load i64*, i64** %4, align 8, !dbg !4983
  %49 = load i64, i64* %48, align 8, !dbg !4983
  %50 = add i64 %49, 0, !dbg !4983
  %51 = icmp ult i64 0, %50, !dbg !4983
  br i1 %51, label %106, label %112, !dbg !4983

52:                                               ; preds = %46
  %53 = load i64*, i64** %4, align 8, !dbg !4983
  %54 = load i64, i64* %53, align 8, !dbg !4983
  %55 = icmp ult i64 0, %54, !dbg !4983
  br i1 %55, label %56, label %112, !dbg !4983

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8, !dbg !4983
  %58 = load i64, i64* %57, align 8, !dbg !4983
  %59 = sub i64 %58, 1, !dbg !4983
  %60 = icmp ult i64 -1, %59, !dbg !4983
  br i1 %60, label %106, label %112, !dbg !4983

61:                                               ; preds = %43, %42, %41
  %62 = load i32, i32* %5, align 4, !dbg !4983
  %63 = sdiv i32 0, %62, !dbg !4983
  %64 = sext i32 %63 to i64, !dbg !4983
  %65 = load i64*, i64** %4, align 8, !dbg !4983
  %66 = load i64, i64* %65, align 8, !dbg !4983
  %67 = icmp ult i64 %64, %66, !dbg !4983
  br i1 %67, label %106, label %112, !dbg !4983

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4, !dbg !4983
  %70 = icmp eq i32 %69, 0, !dbg !4983
  br i1 %70, label %71, label %72, !dbg !4983

71:                                               ; preds = %68
  br i1 false, label %106, label %112, !dbg !4983

72:                                               ; preds = %68
  %73 = load i64*, i64** %4, align 8, !dbg !4983
  %74 = load i64, i64* %73, align 8, !dbg !4983
  %75 = icmp ult i64 %74, 0, !dbg !4983
  br i1 %75, label %76, label %99, !dbg !4983

76:                                               ; preds = %72
  br i1 false, label %77, label %78, !dbg !4983

77:                                               ; preds = %76
  br i1 true, label %79, label %92, !dbg !4983

78:                                               ; preds = %76
  br i1 false, label %79, label %92, !dbg !4983

79:                                               ; preds = %78, %77
  %80 = load i64*, i64** %4, align 8, !dbg !4983
  %81 = load i64, i64* %80, align 8, !dbg !4983
  %82 = icmp eq i64 %81, -1, !dbg !4983
  br i1 %82, label %83, label %92, !dbg !4983

83:                                               ; preds = %79
  br i1 true, label %84, label %88, !dbg !4983

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4, !dbg !4983
  %86 = add nsw i32 %85, 0, !dbg !4983
  %87 = icmp slt i32 0, %86, !dbg !4983
  br i1 %87, label %106, label %112, !dbg !4983

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4, !dbg !4983
  %90 = sub nsw i32 %89, 1, !dbg !4983
  %91 = icmp slt i32 -1, %90, !dbg !4983
  br i1 %91, label %106, label %112, !dbg !4983

92:                                               ; preds = %79, %78, %77
  %93 = load i64*, i64** %4, align 8, !dbg !4983
  %94 = load i64, i64* %93, align 8, !dbg !4983
  %95 = udiv i64 0, %94, !dbg !4983
  %96 = load i32, i32* %5, align 4, !dbg !4983
  %97 = sext i32 %96 to i64, !dbg !4983
  %98 = icmp ult i64 %95, %97, !dbg !4983
  br i1 %98, label %106, label %112, !dbg !4983

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4, !dbg !4983
  %101 = sext i32 %100 to i64, !dbg !4983
  %102 = udiv i64 -1, %101, !dbg !4983
  %103 = load i64*, i64** %4, align 8, !dbg !4983
  %104 = load i64, i64* %103, align 8, !dbg !4983
  %105 = icmp ult i64 %102, %104, !dbg !4983
  br i1 %105, label %106, label %112, !dbg !4983

106:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %47, %34, %14
  %107 = load i64*, i64** %4, align 8, !dbg !4983
  %108 = load i64, i64* %107, align 8, !dbg !4983
  %109 = load i32, i32* %5, align 4, !dbg !4983
  %110 = sext i32 %109 to i64, !dbg !4983
  %111 = mul i64 %108, %110, !dbg !4983
  store i64 %111, i64* %6, align 8, !dbg !4983
  br label %118, !dbg !4983

112:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %52, %47, %34, %14
  %113 = load i64*, i64** %4, align 8, !dbg !4983
  %114 = load i64, i64* %113, align 8, !dbg !4983
  %115 = load i32, i32* %5, align 4, !dbg !4983
  %116 = sext i32 %115 to i64, !dbg !4983
  %117 = mul i64 %114, %116, !dbg !4983
  store i64 %117, i64* %6, align 8, !dbg !4983
  br label %118, !dbg !4983

118:                                              ; preds = %112, %106
  %119 = phi i32 [ 1, %106 ], [ 0, %112 ], !dbg !4983
  %120 = icmp ne i32 %119, 0, !dbg !4983
  br i1 %120, label %121, label %128, !dbg !4985

121:                                              ; preds = %118
  %122 = load i64*, i64** %4, align 8, !dbg !4986
  %123 = load i64, i64* %122, align 8, !dbg !4988
  %124 = icmp ult i64 %123, 0, !dbg !4989
  %125 = zext i1 %124 to i64, !dbg !4988
  %126 = select i1 %124, i64 0, i64 -1, !dbg !4988
  %127 = load i64*, i64** %4, align 8, !dbg !4990
  store i64 %126, i64* %127, align 8, !dbg !4991
  store i32 1, i32* %3, align 4, !dbg !4992
  br label %131, !dbg !4992

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8, !dbg !4993
  %130 = load i64*, i64** %4, align 8, !dbg !4994
  store i64 %129, i64* %130, align 8, !dbg !4995
  store i32 0, i32* %3, align 4, !dbg !4996
  br label %131, !dbg !4996

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %3, align 4, !dbg !4997
  ret i32 %132, !dbg !4997
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !4998 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5003, metadata !DIExpression()), !dbg !5004
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5007, metadata !DIExpression()), !dbg !5008
  store i32 0, i32* %7, align 4, !dbg !5008
  br label %8, !dbg !5009

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !5010
  %10 = add nsw i32 %9, -1, !dbg !5010
  store i32 %10, i32* %6, align 4, !dbg !5010
  %11 = icmp ne i32 %9, 0, !dbg !5009
  br i1 %11, label %12, label %18, !dbg !5009

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !5011
  %14 = load i32, i32* %5, align 4, !dbg !5012
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !5013
  %16 = load i32, i32* %7, align 4, !dbg !5014
  %17 = or i32 %16, %15, !dbg !5014
  store i32 %17, i32* %7, align 4, !dbg !5014
  br label %8, !dbg !5009, !llvm.loop !5015

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !5017
  ret i32 %19, !dbg !5018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #4 !dbg !5019 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5056, metadata !DIExpression()), !dbg !5057
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5058, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i32 0, i32* %6, align 4, !dbg !5061
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5062, metadata !DIExpression()), !dbg !5063
  store i32 0, i32* %7, align 4, !dbg !5063
  call void @llvm.dbg.declare(metadata i8* %8, metadata !5064, metadata !DIExpression()), !dbg !5065
  store i8 0, i8* %8, align 1, !dbg !5065
  call void @llvm.dbg.declare(metadata [81 x i8]* %9, metadata !5066, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5071, metadata !DIExpression()), !dbg !5073
  %16 = load i8*, i8** %5, align 8, !dbg !5074
  store i8* %16, i8** %10, align 8, !dbg !5073
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5075, metadata !DIExpression()), !dbg !5076
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5077
  store i8* %17, i8** %11, align 8, !dbg !5076
  br label %18, !dbg !5078

18:                                               ; preds = %120, %2
  %19 = load i8*, i8** %10, align 8, !dbg !5079
  %20 = load i8, i8* %19, align 1, !dbg !5082
  %21 = zext i8 %20 to i32, !dbg !5082
  %22 = icmp ne i32 %21, 0, !dbg !5083
  br i1 %22, label %23, label %123, !dbg !5084

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !5085
  %25 = load i8, i8* %24, align 1, !dbg !5087
  %26 = zext i8 %25 to i32, !dbg !5087
  switch i32 %26, label %94 [
    i32 114, label %27
    i32 119, label %38
    i32 97, label %51
    i32 98, label %64
    i32 43, label %77
    i32 120, label %88
    i32 101, label %91
  ], !dbg !5088

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4, !dbg !5089
  %28 = load i8*, i8** %11, align 8, !dbg !5091
  %29 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5093
  %30 = getelementptr inbounds i8, i8* %29, i64 80, !dbg !5094
  %31 = icmp ult i8* %28, %30, !dbg !5095
  br i1 %31, label %32, label %37, !dbg !5096

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8, !dbg !5097
  %34 = load i8, i8* %33, align 1, !dbg !5098
  %35 = load i8*, i8** %11, align 8, !dbg !5099
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !5099
  store i8* %36, i8** %11, align 8, !dbg !5099
  store i8 %34, i8* %35, align 1, !dbg !5100
  br label %37, !dbg !5101

37:                                               ; preds = %32, %27
  br label %120, !dbg !5102

38:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5103
  %39 = load i32, i32* %7, align 4, !dbg !5104
  %40 = or i32 %39, 576, !dbg !5104
  store i32 %40, i32* %7, align 4, !dbg !5104
  %41 = load i8*, i8** %11, align 8, !dbg !5105
  %42 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5107
  %43 = getelementptr inbounds i8, i8* %42, i64 80, !dbg !5108
  %44 = icmp ult i8* %41, %43, !dbg !5109
  br i1 %44, label %45, label %50, !dbg !5110

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8, !dbg !5111
  %47 = load i8, i8* %46, align 1, !dbg !5112
  %48 = load i8*, i8** %11, align 8, !dbg !5113
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !5113
  store i8* %49, i8** %11, align 8, !dbg !5113
  store i8 %47, i8* %48, align 1, !dbg !5114
  br label %50, !dbg !5115

50:                                               ; preds = %45, %38
  br label %120, !dbg !5116

51:                                               ; preds = %23
  store i32 1, i32* %6, align 4, !dbg !5117
  %52 = load i32, i32* %7, align 4, !dbg !5118
  %53 = or i32 %52, 1088, !dbg !5118
  store i32 %53, i32* %7, align 4, !dbg !5118
  %54 = load i8*, i8** %11, align 8, !dbg !5119
  %55 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5121
  %56 = getelementptr inbounds i8, i8* %55, i64 80, !dbg !5122
  %57 = icmp ult i8* %54, %56, !dbg !5123
  br i1 %57, label %58, label %63, !dbg !5124

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8, !dbg !5125
  %60 = load i8, i8* %59, align 1, !dbg !5126
  %61 = load i8*, i8** %11, align 8, !dbg !5127
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !5127
  store i8* %62, i8** %11, align 8, !dbg !5127
  store i8 %60, i8* %61, align 1, !dbg !5128
  br label %63, !dbg !5129

63:                                               ; preds = %58, %51
  br label %120, !dbg !5130

64:                                               ; preds = %23
  %65 = load i32, i32* %7, align 4, !dbg !5131
  %66 = or i32 %65, 0, !dbg !5131
  store i32 %66, i32* %7, align 4, !dbg !5131
  %67 = load i8*, i8** %11, align 8, !dbg !5132
  %68 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5134
  %69 = getelementptr inbounds i8, i8* %68, i64 80, !dbg !5135
  %70 = icmp ult i8* %67, %69, !dbg !5136
  br i1 %70, label %71, label %76, !dbg !5137

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8, !dbg !5138
  %73 = load i8, i8* %72, align 1, !dbg !5139
  %74 = load i8*, i8** %11, align 8, !dbg !5140
  %75 = getelementptr inbounds i8, i8* %74, i32 1, !dbg !5140
  store i8* %75, i8** %11, align 8, !dbg !5140
  store i8 %73, i8* %74, align 1, !dbg !5141
  br label %76, !dbg !5142

76:                                               ; preds = %71, %64
  br label %120, !dbg !5143

77:                                               ; preds = %23
  store i32 2, i32* %6, align 4, !dbg !5144
  %78 = load i8*, i8** %11, align 8, !dbg !5145
  %79 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5147
  %80 = getelementptr inbounds i8, i8* %79, i64 80, !dbg !5148
  %81 = icmp ult i8* %78, %80, !dbg !5149
  br i1 %81, label %82, label %87, !dbg !5150

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !5151
  %84 = load i8, i8* %83, align 1, !dbg !5152
  %85 = load i8*, i8** %11, align 8, !dbg !5153
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !5153
  store i8* %86, i8** %11, align 8, !dbg !5153
  store i8 %84, i8* %85, align 1, !dbg !5154
  br label %87, !dbg !5155

87:                                               ; preds = %82, %77
  br label %120, !dbg !5156

88:                                               ; preds = %23
  %89 = load i32, i32* %7, align 4, !dbg !5157
  %90 = or i32 %89, 128, !dbg !5157
  store i32 %90, i32* %7, align 4, !dbg !5157
  store i8 1, i8* %8, align 1, !dbg !5158
  br label %120, !dbg !5159

91:                                               ; preds = %23
  %92 = load i32, i32* %7, align 4, !dbg !5160
  %93 = or i32 %92, 524288, !dbg !5160
  store i32 %93, i32* %7, align 4, !dbg !5160
  store i8 1, i8* %8, align 1, !dbg !5161
  br label %120, !dbg !5162

94:                                               ; preds = %23
  br label %95, !dbg !5163

95:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata i64* %12, metadata !5164, metadata !DIExpression()), !dbg !5166
  %96 = load i8*, i8** %10, align 8, !dbg !5167
  %97 = call i64 @strlen(i8* noundef %96) #21, !dbg !5168
  store i64 %97, i64* %12, align 8, !dbg !5166
  %98 = load i64, i64* %12, align 8, !dbg !5169
  %99 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5171
  %100 = getelementptr inbounds i8, i8* %99, i64 80, !dbg !5172
  %101 = load i8*, i8** %11, align 8, !dbg !5173
  %102 = ptrtoint i8* %100 to i64, !dbg !5174
  %103 = ptrtoint i8* %101 to i64, !dbg !5174
  %104 = sub i64 %102, %103, !dbg !5174
  %105 = icmp ugt i64 %98, %104, !dbg !5175
  br i1 %105, label %106, label %113, !dbg !5176

106:                                              ; preds = %95
  %107 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5177
  %108 = getelementptr inbounds i8, i8* %107, i64 80, !dbg !5178
  %109 = load i8*, i8** %11, align 8, !dbg !5179
  %110 = ptrtoint i8* %108 to i64, !dbg !5180
  %111 = ptrtoint i8* %109 to i64, !dbg !5180
  %112 = sub i64 %110, %111, !dbg !5180
  store i64 %112, i64* %12, align 8, !dbg !5181
  br label %113, !dbg !5182

113:                                              ; preds = %106, %95
  %114 = load i8*, i8** %11, align 8, !dbg !5183
  %115 = load i8*, i8** %10, align 8, !dbg !5184
  %116 = load i64, i64* %12, align 8, !dbg !5185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %115, i64 %116, i1 false), !dbg !5186
  %117 = load i64, i64* %12, align 8, !dbg !5187
  %118 = load i8*, i8** %11, align 8, !dbg !5188
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5188
  store i8* %119, i8** %11, align 8, !dbg !5188
  br label %123, !dbg !5189

120:                                              ; preds = %91, %88, %87, %76, %63, %50, %37
  %121 = load i8*, i8** %10, align 8, !dbg !5190
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !5190
  store i8* %122, i8** %10, align 8, !dbg !5190
  br label %18, !dbg !5191, !llvm.loop !5192

123:                                              ; preds = %113, %18
  %124 = load i8*, i8** %11, align 8, !dbg !5194
  store i8 0, i8* %124, align 1, !dbg !5195
  %125 = load i8, i8* %8, align 1, !dbg !5196
  %126 = trunc i8 %125 to i1, !dbg !5196
  br i1 %126, label %127, label %151, !dbg !5198

127:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5199, metadata !DIExpression()), !dbg !5201
  %128 = load i8*, i8** %4, align 8, !dbg !5202
  %129 = load i32, i32* %6, align 4, !dbg !5203
  %130 = load i32, i32* %7, align 4, !dbg !5204
  %131 = or i32 %129, %130, !dbg !5205
  %132 = call i32 (i8*, i32, ...) @open(i8* noundef %128, i32 noundef %131, i32 noundef 438), !dbg !5206
  store i32 %132, i32* %13, align 4, !dbg !5201
  %133 = load i32, i32* %13, align 4, !dbg !5207
  %134 = icmp slt i32 %133, 0, !dbg !5209
  br i1 %134, label %135, label %136, !dbg !5210

135:                                              ; preds = %127
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !5211
  br label %156, !dbg !5211

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !5212, metadata !DIExpression()), !dbg !5213
  %137 = load i32, i32* %13, align 4, !dbg !5214
  %138 = getelementptr inbounds [81 x i8], [81 x i8]* %9, i64 0, i64 0, !dbg !5215
  %139 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %137, i8* noundef %138) #19, !dbg !5216
  store %struct._IO_FILE* %139, %struct._IO_FILE** %14, align 8, !dbg !5213
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5217
  %141 = icmp eq %struct._IO_FILE* %140, null, !dbg !5219
  br i1 %141, label %142, label %149, !dbg !5220

142:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5221, metadata !DIExpression()), !dbg !5223
  %143 = call i32* @__errno_location() #22, !dbg !5224
  %144 = load i32, i32* %143, align 4, !dbg !5224
  store i32 %144, i32* %15, align 4, !dbg !5223
  %145 = load i32, i32* %13, align 4, !dbg !5225
  %146 = call i32 @close(i32 noundef %145), !dbg !5226
  %147 = load i32, i32* %15, align 4, !dbg !5227
  %148 = call i32* @__errno_location() #22, !dbg !5228
  store i32 %147, i32* %148, align 4, !dbg !5229
  br label %149, !dbg !5230

149:                                              ; preds = %142, %136
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5231
  store %struct._IO_FILE* %150, %struct._IO_FILE** %3, align 8, !dbg !5232
  br label %156, !dbg !5232

151:                                              ; preds = %123
  %152 = load i32, i32* %6, align 4, !dbg !5233
  %153 = load i8*, i8** %4, align 8, !dbg !5234
  %154 = load i8*, i8** %5, align 8, !dbg !5235
  %155 = call %struct._IO_FILE* @orig_fopen(i8* noundef %153, i8* noundef %154), !dbg !5236
  store %struct._IO_FILE* %155, %struct._IO_FILE** %3, align 8, !dbg !5237
  br label %156, !dbg !5237

156:                                              ; preds = %151, %149, %135
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5238
  ret %struct._IO_FILE* %157, !dbg !5238
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._IO_FILE* @orig_fopen(i8* noundef %0, i8* noundef %1) #4 !dbg !5239 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5240, metadata !DIExpression()), !dbg !5241
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5242, metadata !DIExpression()), !dbg !5243
  %5 = load i8*, i8** %3, align 8, !dbg !5244
  %6 = load i8*, i8** %4, align 8, !dbg !5245
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef %6), !dbg !5246
  ret %struct._IO_FILE* %7, !dbg !5247
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !5248 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5249, metadata !DIExpression()), !dbg !5250
  %3 = load i32, i32* %2, align 4, !dbg !5251
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !5252
  ret i32 %4, !dbg !5253
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !5254 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5293, metadata !DIExpression()), !dbg !5295
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5296
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !5297
  %9 = icmp ne i64 %8, 0, !dbg !5298
  %10 = zext i1 %9 to i8, !dbg !5295
  store i8 %10, i8* %4, align 1, !dbg !5295
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5299, metadata !DIExpression()), !dbg !5300
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5301
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !5301
  %13 = icmp ne i32 %12, 0, !dbg !5302
  %14 = zext i1 %13 to i8, !dbg !5300
  store i8 %14, i8* %5, align 1, !dbg !5300
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5303, metadata !DIExpression()), !dbg !5304
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5305
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !5306
  %17 = icmp ne i32 %16, 0, !dbg !5307
  %18 = zext i1 %17 to i8, !dbg !5304
  store i8 %18, i8* %6, align 1, !dbg !5304
  %19 = load i8, i8* %5, align 1, !dbg !5308
  %20 = trunc i8 %19 to i1, !dbg !5308
  br i1 %20, label %31, label %21, !dbg !5310

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5311
  %23 = trunc i8 %22 to i1, !dbg !5311
  br i1 %23, label %24, label %37, !dbg !5312

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5313
  %26 = trunc i8 %25 to i1, !dbg !5313
  br i1 %26, label %31, label %27, !dbg !5314

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !5315
  %29 = load i32, i32* %28, align 4, !dbg !5315
  %30 = icmp ne i32 %29, 9, !dbg !5316
  br i1 %30, label %31, label %37, !dbg !5317

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5318
  %33 = trunc i8 %32 to i1, !dbg !5318
  br i1 %33, label %36, label %34, !dbg !5321

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !5322
  store i32 0, i32* %35, align 4, !dbg !5323
  br label %36, !dbg !5322

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5324
  br label %38, !dbg !5324

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5325
  br label %38, !dbg !5325

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5326
  ret i32 %39, !dbg !5326
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !5327 {
  %1 = call i32* @__errno_location() #22, !dbg !5330
  store i32 12, i32* %1, align 4, !dbg !5331
  ret i8* null, !dbg !5332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5333 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5334, metadata !DIExpression()), !dbg !5335
  %3 = load i64, i64* %2, align 8, !dbg !5336
  %4 = icmp ule i64 %3, -1, !dbg !5337
  br i1 %4, label %5, label %8, !dbg !5336

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5338
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !5339
  br label %10, !dbg !5336

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !5340
  br label %10, !dbg !5336

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5336
  ret i8* %11, !dbg !5341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5342 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5345, metadata !DIExpression()), !dbg !5346
  %5 = load i64, i64* %4, align 8, !dbg !5347
  %6 = icmp ule i64 %5, -1, !dbg !5348
  br i1 %6, label %7, label %11, !dbg !5347

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5349
  %9 = load i64, i64* %4, align 8, !dbg !5350
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5351
  br label %13, !dbg !5347

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5352
  br label %13, !dbg !5347

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5347
  ret i8* %14, !dbg !5353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5354 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5357, metadata !DIExpression()), !dbg !5358
  %6 = load i64, i64* %4, align 8, !dbg !5359
  %7 = icmp ult i64 -1, %6, !dbg !5361
  br i1 %7, label %8, label %14, !dbg !5362

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5363
  %10 = icmp ne i64 %9, 0, !dbg !5366
  br i1 %10, label %11, label %13, !dbg !5367

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !5368
  store i8* %12, i8** %3, align 8, !dbg !5369
  br label %27, !dbg !5369

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5370
  br label %14, !dbg !5371

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5372
  %16 = icmp ult i64 -1, %15, !dbg !5374
  br i1 %16, label %17, label %23, !dbg !5375

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5376
  %19 = icmp ne i64 %18, 0, !dbg !5379
  br i1 %19, label %20, label %22, !dbg !5380

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !5381
  store i8* %21, i8** %3, align 8, !dbg !5382
  br label %27, !dbg !5382

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5383
  br label %23, !dbg !5384

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5385
  %25 = load i64, i64* %5, align 8, !dbg !5386
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !5387
  store i8* %26, i8** %3, align 8, !dbg !5388
  br label %27, !dbg !5388

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5389
  ret i8* %28, !dbg !5389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5390 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5391, metadata !DIExpression()), !dbg !5392
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5395, metadata !DIExpression()), !dbg !5396
  %7 = load i64, i64* %5, align 8, !dbg !5397
  %8 = icmp ule i64 %7, -1, !dbg !5398
  br i1 %8, label %9, label %17, !dbg !5399

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5400
  %11 = icmp ule i64 %10, -1, !dbg !5401
  br i1 %11, label %12, label %17, !dbg !5397

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5402
  %14 = load i64, i64* %5, align 8, !dbg !5403
  %15 = load i64, i64* %6, align 8, !dbg !5404
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5405
  br label %19, !dbg !5397

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !5406
  br label %19, !dbg !5397

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5397
  ret i8* %20, !dbg !5407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5408 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5417, metadata !DIExpression()), !dbg !5418
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5419, metadata !DIExpression()), !dbg !5420
  %11 = load i8*, i8** %7, align 8, !dbg !5421
  %12 = icmp eq i8* %11, null, !dbg !5423
  br i1 %12, label %13, label %14, !dbg !5424

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5425
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), i8** %7, align 8, !dbg !5427
  store i64 1, i64* %8, align 8, !dbg !5428
  br label %14, !dbg !5429

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5430
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5432
  br i1 %16, label %17, label %18, !dbg !5433

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5434
  br label %18, !dbg !5435

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5436, metadata !DIExpression()), !dbg !5437
  %19 = load i32*, i32** %6, align 8, !dbg !5438
  %20 = load i8*, i8** %7, align 8, !dbg !5439
  %21 = load i64, i64* %8, align 8, !dbg !5440
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5441
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !5442
  store i64 %23, i64* %10, align 8, !dbg !5437
  %24 = load i64, i64* %10, align 8, !dbg !5443
  %25 = icmp ult i64 %24, -3, !dbg !5445
  br i1 %25, label %26, label %32, !dbg !5446

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5447
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !5448
  %29 = icmp ne i32 %28, 0, !dbg !5448
  br i1 %29, label %32, label %30, !dbg !5449

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5450
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5451
  br label %32, !dbg !5451

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5452
  %34 = icmp eq i64 %33, -3, !dbg !5454
  br i1 %34, label %35, label %36, !dbg !5455

35:                                               ; preds = %32
  call void @abort() #20, !dbg !5456
  unreachable, !dbg !5456

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5457
  %38 = icmp ule i64 -2, %37, !dbg !5459
  br i1 %38, label %39, label %53, !dbg !5460

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5461
  %41 = icmp ne i64 %40, 0, !dbg !5462
  br i1 %41, label %42, label %53, !dbg !5463

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5464
  br i1 %43, label %53, label %44, !dbg !5465

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5466
  %46 = icmp ne i32* %45, null, !dbg !5469
  br i1 %46, label %47, label %52, !dbg !5470

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5471
  %49 = load i8, i8* %48, align 1, !dbg !5472
  %50 = zext i8 %49 to i32, !dbg !5473
  %51 = load i32*, i32** %6, align 8, !dbg !5474
  store i32 %50, i32* %51, align 4, !dbg !5475
  br label %52, !dbg !5476

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5477
  br label %55, !dbg !5477

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5478
  store i64 %54, i64* %5, align 8, !dbg !5479
  br label %55, !dbg !5479

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5480
  ret i64 %56, !dbg !5480
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5481 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5496, metadata !DIExpression()), !dbg !5497
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5498
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5499
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5499
  ret void, !dbg !5500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5501 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5504, metadata !DIExpression()), !dbg !5505
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5508, metadata !DIExpression()), !dbg !5509
  %7 = load i8*, i8** %4, align 8, !dbg !5510
  %8 = load i8*, i8** %5, align 8, !dbg !5511
  %9 = load i64, i64* %6, align 8, !dbg !5512
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !5513
  %11 = icmp ne i32 %10, 0, !dbg !5514
  %12 = xor i1 %11, true, !dbg !5514
  ret i1 %12, !dbg !5515
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5516 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5518, metadata !DIExpression()), !dbg !5519
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5520, metadata !DIExpression()), !dbg !5521
  %5 = load i8*, i8** %3, align 8, !dbg !5522
  %6 = load i64, i64* %4, align 8, !dbg !5523
  %7 = icmp ne i64 %6, 0, !dbg !5523
  br i1 %7, label %8, label %10, !dbg !5523

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5524
  br label %11, !dbg !5523

10:                                               ; preds = %2
  br label %11, !dbg !5523

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5523
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !5525
  ret i8* %13, !dbg !5526
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5527 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5532, metadata !DIExpression()), !dbg !5533
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5534, metadata !DIExpression()), !dbg !5535
  %9 = load i64, i64* %7, align 8, !dbg !5536
  %10 = icmp ult i64 %9, 0, !dbg !5536
  br i1 %10, label %11, label %60, !dbg !5536

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5536
  %13 = icmp ult i64 %12, 0, !dbg !5536
  br i1 %13, label %14, label %37, !dbg !5536

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5536

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5536
  %17 = load i64, i64* %7, align 8, !dbg !5536
  %18 = udiv i64 -1, %17, !dbg !5536
  %19 = icmp ult i64 %16, %18, !dbg !5536
  br i1 %19, label %92, label %96, !dbg !5536

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5536

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5536
  %23 = icmp ult i64 %22, 1, !dbg !5536
  br i1 %23, label %27, label %28, !dbg !5536

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5536
  %26 = icmp ult i64 0, %25, !dbg !5536
  br i1 %26, label %27, label %28, !dbg !5536

27:                                               ; preds = %24, %21
  br label %32, !dbg !5536

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5536
  %30 = sub i64 0, %29, !dbg !5536
  %31 = udiv i64 -1, %30, !dbg !5536
  br label %32, !dbg !5536

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5536
  %34 = load i64, i64* %6, align 8, !dbg !5536
  %35 = sub i64 -1, %34, !dbg !5536
  %36 = icmp ule i64 %33, %35, !dbg !5536
  br i1 %36, label %92, label %96, !dbg !5536

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5536

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5536

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5536

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5536
  %42 = icmp eq i64 %41, -1, !dbg !5536
  br i1 %42, label %43, label %55, !dbg !5536

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5536

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5536
  %46 = add i64 %45, 0, !dbg !5536
  %47 = icmp ult i64 0, %46, !dbg !5536
  br i1 %47, label %92, label %96, !dbg !5536

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5536
  %50 = icmp ult i64 0, %49, !dbg !5536
  br i1 %50, label %51, label %96, !dbg !5536

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5536
  %53 = sub i64 %52, 1, !dbg !5536
  %54 = icmp ult i64 -1, %53, !dbg !5536
  br i1 %54, label %92, label %96, !dbg !5536

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5536
  %57 = udiv i64 0, %56, !dbg !5536
  %58 = load i64, i64* %6, align 8, !dbg !5536
  %59 = icmp ult i64 %57, %58, !dbg !5536
  br i1 %59, label %92, label %96, !dbg !5536

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5536
  %62 = icmp eq i64 %61, 0, !dbg !5536
  br i1 %62, label %63, label %64, !dbg !5536

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5536

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5536
  %66 = icmp ult i64 %65, 0, !dbg !5536
  br i1 %66, label %67, label %87, !dbg !5536

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5536

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5536

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5536

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5536
  %72 = icmp eq i64 %71, -1, !dbg !5536
  br i1 %72, label %73, label %82, !dbg !5536

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5536

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5536
  %76 = add i64 %75, 0, !dbg !5536
  %77 = icmp ult i64 0, %76, !dbg !5536
  br i1 %77, label %92, label %96, !dbg !5536

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5536
  %80 = sub i64 %79, 1, !dbg !5536
  %81 = icmp ult i64 -1, %80, !dbg !5536
  br i1 %81, label %92, label %96, !dbg !5536

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5536
  %84 = udiv i64 0, %83, !dbg !5536
  %85 = load i64, i64* %7, align 8, !dbg !5536
  %86 = icmp ult i64 %84, %85, !dbg !5536
  br i1 %86, label %92, label %96, !dbg !5536

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5536
  %89 = udiv i64 -1, %88, !dbg !5536
  %90 = load i64, i64* %6, align 8, !dbg !5536
  %91 = icmp ult i64 %89, %90, !dbg !5536
  br i1 %91, label %92, label %96, !dbg !5536

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5536
  %94 = load i64, i64* %7, align 8, !dbg !5536
  %95 = mul i64 %93, %94, !dbg !5536
  store i64 %95, i64* %8, align 8, !dbg !5536
  br label %100, !dbg !5536

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5536
  %98 = load i64, i64* %7, align 8, !dbg !5536
  %99 = mul i64 %97, %98, !dbg !5536
  store i64 %99, i64* %8, align 8, !dbg !5536
  br label %100, !dbg !5536

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5536
  %102 = icmp ne i32 %101, 0, !dbg !5536
  br i1 %102, label %103, label %105, !dbg !5538

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !5539
  store i32 12, i32* %104, align 4, !dbg !5541
  store i8* null, i8** %4, align 8, !dbg !5542
  br label %109, !dbg !5542

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5543
  %107 = load i64, i64* %8, align 8, !dbg !5544
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5545
  store i8* %108, i8** %4, align 8, !dbg !5546
  br label %109, !dbg !5546

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5547
  ret i8* %110, !dbg !5547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5548 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5551, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5553, metadata !DIExpression()), !dbg !5557
  %5 = load i32, i32* %3, align 4, !dbg !5558
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5560
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5561
  %8 = icmp ne i32 %7, 0, !dbg !5561
  br i1 %8, label %9, label %10, !dbg !5562

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5563
  br label %18, !dbg !5563

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5564
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0)), !dbg !5566
  br i1 %12, label %17, label %13, !dbg !5567

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5568
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0)), !dbg !5569
  br i1 %15, label %17, label %16, !dbg !5570

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5571
  br label %18, !dbg !5571

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5572
  br label %18, !dbg !5572

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5573
  ret i1 %19, !dbg !5573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5574 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5577, metadata !DIExpression()), !dbg !5578
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5579, metadata !DIExpression()), !dbg !5580
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5581, metadata !DIExpression()), !dbg !5582
  %7 = load i32, i32* %4, align 4, !dbg !5583
  %8 = load i8*, i8** %5, align 8, !dbg !5584
  %9 = load i64, i64* %6, align 8, !dbg !5585
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5586
  ret i32 %10, !dbg !5587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5588 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5591, metadata !DIExpression()), !dbg !5592
  %3 = load i32, i32* %2, align 4, !dbg !5593
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5594
  ret i8* %4, !dbg !5595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5596 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5597, metadata !DIExpression()), !dbg !5598
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5599, metadata !DIExpression()), !dbg !5600
  %4 = load i32, i32* %2, align 4, !dbg !5601
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !5602
  store i8* %5, i8** %3, align 8, !dbg !5600
  %6 = load i8*, i8** %3, align 8, !dbg !5603
  ret i8* %6, !dbg !5604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5605 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5606, metadata !DIExpression()), !dbg !5607
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5608, metadata !DIExpression()), !dbg !5609
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5612, metadata !DIExpression()), !dbg !5613
  %10 = load i32, i32* %5, align 4, !dbg !5614
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5615
  store i8* %11, i8** %8, align 8, !dbg !5613
  %12 = load i8*, i8** %8, align 8, !dbg !5616
  %13 = icmp eq i8* %12, null, !dbg !5618
  br i1 %13, label %14, label %21, !dbg !5619

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5620
  %16 = icmp ugt i64 %15, 0, !dbg !5623
  br i1 %16, label %17, label %20, !dbg !5624

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5625
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5625
  store i8 0, i8* %19, align 1, !dbg !5626
  br label %20, !dbg !5625

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5627
  br label %45, !dbg !5627

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5628, metadata !DIExpression()), !dbg !5630
  %22 = load i8*, i8** %8, align 8, !dbg !5631
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !5632
  store i64 %23, i64* %9, align 8, !dbg !5630
  %24 = load i64, i64* %9, align 8, !dbg !5633
  %25 = load i64, i64* %7, align 8, !dbg !5635
  %26 = icmp ult i64 %24, %25, !dbg !5636
  br i1 %26, label %27, label %32, !dbg !5637

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5638
  %29 = load i8*, i8** %8, align 8, !dbg !5640
  %30 = load i64, i64* %9, align 8, !dbg !5641
  %31 = add i64 %30, 1, !dbg !5642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5643
  store i32 0, i32* %4, align 4, !dbg !5644
  br label %45, !dbg !5644

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5645
  %34 = icmp ugt i64 %33, 0, !dbg !5648
  br i1 %34, label %35, label %44, !dbg !5649

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5650
  %37 = load i8*, i8** %8, align 8, !dbg !5652
  %38 = load i64, i64* %7, align 8, !dbg !5653
  %39 = sub i64 %38, 1, !dbg !5654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5655
  %40 = load i8*, i8** %6, align 8, !dbg !5656
  %41 = load i64, i64* %7, align 8, !dbg !5657
  %42 = sub i64 %41, 1, !dbg !5658
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5656
  store i8 0, i8* %43, align 1, !dbg !5659
  br label %44, !dbg !5660

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5661
  br label %45, !dbg !5661

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5662
  ret i32 %46, !dbg !5662
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
attributes #18 = { convergent nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { noreturn }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(0) }
attributes #27 = { allocsize(1,2) }
attributes #28 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !113, !269, !271, !118, !125, !244, !273, !276, !278, !280, !282, !284, !286, !294, !159, !169, !176, !307, !309, !236, !315, !335, !337, !348, !356, !358, !360, !362, !250, !364, !366, !368, !370, !373, !375, !377}
!llvm.ident = !{!379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379, !379}
!llvm.module.flags = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 56, type: !108, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fold.c", directory: "/src", checksumkind: CSK_MD5, checksum: "eee9b3e52e2800e339faad5506a934a5")
!4 = !{!5, !11, !18, !33, !47}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 43, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "COUNT_COLUMNS", value: 0)
!9 = !DIEnumerator(name: "COUNT_BYTES", value: 1)
!10 = !DIEnumerator(name: "COUNT_CHARACTERS", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 24, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!15 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!16 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!17 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !6, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256)
!22 = !DIEnumerator(name: "_ISlower", value: 512)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!26 = !DIEnumerator(name: "_ISspace", value: 8192)
!27 = !DIEnumerator(name: "_ISprint", value: 16384)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768)
!29 = !DIEnumerator(name: "_ISblank", value: 1)
!30 = !DIEnumerator(name: "_IScntrl", value: 2)
!31 = !DIEnumerator(name: "_ISpunct", value: 4)
!32 = !DIEnumerator(name: "_ISalnum", value: 8)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !34, line: 42, baseType: !6, size: 32, elements: !35)
!34 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!37 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!38 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!39 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!40 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!41 = !DIEnumerator(name: "c_quoting_style", value: 5)
!42 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!43 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!44 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!45 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!46 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 44, baseType: !6, size: 32, elements: !49)
!48 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!51 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!52 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!53 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!54 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!55 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!56 = !{!57, !59, !60, !61}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !{!63, !66, !68, !0, !77, !91, !93, !104, !106}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 40, type: !65, isLocal: true, isDefinition: true)
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 51, type: !65, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !70, file: !71, line: 575, type: !60, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "oputs_", scope: !71, file: !71, line: 573, type: !72, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!71 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!76 = !{}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1792, elements: !89)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !82, line: 50, size: 256, elements: !83)
!82 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!83 = !{!84, !85, !86, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 52, baseType: !74, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !81, file: !82, line: 55, baseType: !60, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !81, file: !82, line: 56, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !82, line: 57, baseType: !60, size: 32, offset: 192)
!89 = !{!90}
!90 = !DISubrange(count: 7)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "counting_mode", scope: !2, file: !3, line: 48, type: !5, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "line_out", scope: !95, file: !3, line: 164, type: !101, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 159, type: !96, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!96 = !DISubroutineType(types: !97)
!97 = !{!65, !74, !98}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2097152, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 262144)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "line_in", scope: !95, file: !3, line: 165, type: !101, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "last_character_width", scope: !2, file: !3, line: 54, type: !60, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 288, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 36)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "Version", scope: !113, file: !114, line: 3, type: !74, isLocal: false, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !115, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!115 = !{!111}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "file_name", scope: !118, file: !119, line: 45, type: !74, isLocal: true, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !120, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!120 = !{!116, !121}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !118, file: !119, line: 55, type: !65, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !125, file: !126, line: 66, type: !154, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, globals: !128, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!127 = !{!59}
!128 = !{!129, !148, !123, !150, !152}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "old_file_name", scope: !131, file: !126, line: 304, type: !74, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "verror_at_line", scope: !126, file: !126, line: 298, type: !132, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !76)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !60, !60, !74, !6, !74, !134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !135, line: 52, baseType: !136)
!135 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !137, line: 32, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !139, baseType: !140)
!139 = !DIFile(filename: "lib/error.c", directory: "/src")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !141, size: 256, elements: !142)
!141 = !DINamespace(name: "std", scope: null)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !140, file: !139, baseType: !59, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !140, file: !139, baseType: !59, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !140, file: !139, baseType: !59, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !140, file: !139, baseType: !60, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !140, file: !139, baseType: !60, size: 32, offset: 224)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "old_line_number", scope: !131, file: !126, line: 305, type: !6, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "error_message_count", scope: !125, file: !126, line: 69, type: !6, isLocal: false, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !125, file: !126, line: 295, type: !60, isLocal: false, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "program_name", scope: !159, file: !160, line: 31, type: !74, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !161, globals: !162, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!161 = !{!57}
!162 = !{!157}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "utf07FF", scope: !165, file: !166, line: 46, type: !171, isLocal: true, isDefinition: true)
!165 = distinct !DISubprogram(name: "proper_name_lite", scope: !166, file: !166, line: 38, type: !167, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !169, retainedNodes: !76)
!166 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!167 = !DISubroutineType(types: !168)
!168 = !{!74, !74, !74}
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !170, splitDebugInlining: false, nameTableKind: None)
!170 = !{!163}
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 16, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !176, file: !177, line: 76, type: !230, isLocal: false, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !184, globals: !185, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!178 = !{!33, !179, !18}
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !34, line: 254, baseType: !6, size: 32, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!182 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!183 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!184 = !{!60, !61, !98}
!185 = !{!174, !186, !192, !204, !206, !211, !219, !226, !228}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !176, file: !177, line: 92, type: !188, isLocal: false, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!190 = !{!191}
!191 = !DISubrange(count: 10)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !176, file: !177, line: 1040, type: !194, isLocal: false, isDefinition: true)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !177, line: 56, size: 448, elements: !195)
!195 = !{!196, !197, !198, !202, !203}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !194, file: !177, line: 59, baseType: !33, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !177, line: 62, baseType: !60, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !194, file: !177, line: 66, baseType: !199, size: 256, offset: 64)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !194, file: !177, line: 69, baseType: !74, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !194, file: !177, line: 72, baseType: !74, size: 64, offset: 384)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !176, file: !177, line: 107, type: !194, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "slot0", scope: !176, file: !177, line: 831, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2048, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 256)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "quote", scope: !213, file: !177, line: 228, type: !216, isLocal: true, isDefinition: true)
!213 = distinct !DISubprogram(name: "gettext_quote", scope: !177, file: !177, line: 197, type: !214, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !176, retainedNodes: !76)
!214 = !DISubroutineType(types: !215)
!215 = !{!74, !74, !33}
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !217)
!217 = !{!173, !218}
!218 = !DISubrange(count: 4)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "slotvec", scope: !176, file: !177, line: 834, type: !221, isLocal: true, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !177, line: 823, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !222, file: !177, line: 825, baseType: !98, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !222, file: !177, line: 826, baseType: !57, size: 64, offset: 64)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "nslots", scope: !176, file: !177, line: 832, type: !60, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "slotvec0", scope: !176, file: !177, line: 833, type: !222, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 704, elements: !232)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!232 = !{!233}
!233 = !DISubrange(count: 11)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !236, file: !237, line: 26, type: !239, isLocal: false, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !238, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!238 = !{!234}
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 47)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "exit_failure", scope: !244, file: !245, line: 24, type: !247, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !246, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!246 = !{!242}
!247 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "internal_state", scope: !250, file: !251, line: 97, type: !255, isLocal: true, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !252, globals: !254, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!252 = !{!59, !98, !253}
!253 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!254 = !{!248}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !256, line: 6, baseType: !257)
!256 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !258, line: 21, baseType: !259)
!258 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 13, size: 64, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !259, file: !258, line: 15, baseType: !60, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !259, file: !258, line: 20, baseType: !263, size: 32, offset: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 16, size: 32, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !263, file: !258, line: 18, baseType: !6, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !263, file: !258, line: 19, baseType: !267, size: 32)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !268)
!268 = !{!218}
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/c32isblank.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fdc50bdf98dbcb7b574dd3202ecd546c")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/c32width.c", directory: "/src", checksumkind: CSK_MD5, checksum: "85b2c5ee6f572eb09c0f075561e000ef")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!275 = !{!47}
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !293, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/mbbuf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b7bac851fa0e451a46f67e401f301ae1")
!288 = !{!289}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 127, baseType: !6, size: 32, elements: !291)
!290 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!291 = !{!292}
!292 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!293 = !{!253}
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !306, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/mcel.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4bc577b690b70e5442e17a02996a7034")
!296 = !{!289, !297, !300, !303}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 130, baseType: !6, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 131, baseType: !6, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 150, baseType: !6, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIEnumerator(name: "MCEL_ERR_SHIFT", value: 14)
!306 = !{!98}
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !311, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!311 = !{!312}
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !310, line: 40, baseType: !6, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !317, retainedTypes: !334, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!317 = !{!318, !325}
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !319, file: !316, line: 188, baseType: !6, size: 32, elements: !323)
!319 = distinct !DISubprogram(name: "x2nrealloc", scope: !316, file: !316, line: 176, type: !320, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!320 = !DISubroutineType(types: !321)
!321 = !{!59, !59, !322, !98}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!323 = !{!324}
!324 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !326, file: !316, line: 228, baseType: !6, size: 32, elements: !323)
!326 = distinct !DISubprogram(name: "xpalloc", scope: !316, file: !316, line: 223, type: !327, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!327 = !DISubroutineType(types: !328)
!328 = !{!59, !59, !329, !330, !332, !330}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !331, line: 130, baseType: !332)
!331 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !99, line: 35, baseType: !333)
!333 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!334 = !{!57, !59, !65, !333, !100}
!335 = distinct !DICompileUnit(language: DW_LANG_C99, file: !336, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !339, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!339 = !{!340, !11}
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !341, line: 30, baseType: !6, size: 32, elements: !342)
!341 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!342 = !{!343, !344, !345, !346, !347}
!343 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!344 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!345 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!346 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!347 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !350, retainedTypes: !351, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!350 = !{!340, !18}
!351 = !{!60, !61, !57, !65, !100, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !353, line: 102, baseType: !354)
!353 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !355, line: 73, baseType: !100)
!355 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!372 = !{!65, !100, !59}
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!379 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!380 = !{i32 7, !"Dwarf Version", i32 5}
!381 = !{i32 2, !"Debug Info Version", i32 3}
!382 = !{i32 1, !"wchar_size", i32 4}
!383 = !{i32 1, !"branch-target-enforcement", i32 0}
!384 = !{i32 1, !"sign-return-address", i32 0}
!385 = !{i32 1, !"sign-return-address-all", i32 0}
!386 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"PIC Level", i32 2}
!388 = !{i32 7, !"PIE Level", i32 2}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 1}
!391 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 70, type: !392, scopeLine: 71, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !60}
!394 = !DILocalVariable(name: "status", arg: 1, scope: !391, file: !3, line: 70, type: !60)
!395 = !DILocation(line: 70, column: 12, scope: !391)
!396 = !DILocation(line: 72, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !3, line: 72, column: 7)
!398 = !DILocation(line: 72, column: 14, scope: !397)
!399 = !DILocation(line: 72, column: 7, scope: !391)
!400 = !DILocation(line: 73, column: 5, scope: !397)
!401 = !DILocation(line: 73, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !3, line: 73, column: 5)
!403 = !DILocation(line: 76, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !397, file: !3, line: 75, column: 5)
!405 = !DILocation(line: 79, column: 15, scope: !404)
!406 = !DILocation(line: 76, column: 7, scope: !404)
!407 = !DILocation(line: 80, column: 7, scope: !404)
!408 = !DILocation(line: 84, column: 7, scope: !404)
!409 = !DILocation(line: 85, column: 7, scope: !404)
!410 = !DILocation(line: 87, column: 7, scope: !404)
!411 = !DILocation(line: 91, column: 7, scope: !404)
!412 = !DILocation(line: 95, column: 7, scope: !404)
!413 = !DILocation(line: 99, column: 7, scope: !404)
!414 = !DILocation(line: 103, column: 7, scope: !404)
!415 = !DILocation(line: 104, column: 7, scope: !404)
!416 = !DILocation(line: 105, column: 7, scope: !404)
!417 = !DILocation(line: 107, column: 9, scope: !391)
!418 = !DILocation(line: 107, column: 3, scope: !391)
!419 = distinct !DISubprogram(name: "emit_stdin_note", scope: !71, file: !71, line: 727, type: !155, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!420 = !DILocation(line: 729, column: 3, scope: !419)
!421 = !DILocation(line: 732, column: 1, scope: !419)
!422 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !71, file: !71, line: 734, type: !155, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!423 = !DILocation(line: 736, column: 3, scope: !422)
!424 = !DILocation(line: 739, column: 1, scope: !422)
!425 = !DILocalVariable(name: "program", arg: 1, scope: !70, file: !71, line: 573, type: !74)
!426 = !DILocation(line: 573, column: 34, scope: !70)
!427 = !DILocalVariable(name: "option", arg: 2, scope: !70, file: !71, line: 573, type: !74)
!428 = !DILocation(line: 573, column: 55, scope: !70)
!429 = !DILocation(line: 581, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !70, file: !71, line: 581, column: 7)
!431 = !DILocation(line: 581, column: 19, scope: !430)
!432 = !DILocation(line: 581, column: 7, scope: !70)
!433 = !DILocalVariable(name: "term", scope: !434, file: !71, line: 585, type: !74)
!434 = distinct !DILexicalBlock(scope: !430, file: !71, line: 582, column: 5)
!435 = !DILocation(line: 585, column: 19, scope: !434)
!436 = !DILocation(line: 585, column: 26, scope: !434)
!437 = !DILocation(line: 586, column: 23, scope: !434)
!438 = !DILocation(line: 586, column: 28, scope: !434)
!439 = !DILocation(line: 586, column: 33, scope: !434)
!440 = !DILocation(line: 586, column: 32, scope: !434)
!441 = !DILocation(line: 586, column: 38, scope: !434)
!442 = !DILocation(line: 586, column: 48, scope: !434)
!443 = !DILocation(line: 586, column: 41, scope: !434)
!444 = !DILocation(line: 586, column: 19, scope: !434)
!445 = !DILocation(line: 587, column: 5, scope: !434)
!446 = !DILocation(line: 588, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !70, file: !71, line: 588, column: 7)
!448 = !DILocation(line: 588, column: 7, scope: !70)
!449 = !DILocation(line: 590, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !71, line: 589, column: 5)
!451 = !DILocation(line: 591, column: 7, scope: !450)
!452 = !DILocalVariable(name: "double_space", scope: !70, file: !71, line: 594, type: !65)
!453 = !DILocation(line: 594, column: 8, scope: !70)
!454 = !DILocalVariable(name: "first_word", scope: !70, file: !71, line: 595, type: !74)
!455 = !DILocation(line: 595, column: 15, scope: !70)
!456 = !DILocation(line: 595, column: 28, scope: !70)
!457 = !DILocation(line: 595, column: 45, scope: !70)
!458 = !DILocation(line: 595, column: 37, scope: !70)
!459 = !DILocation(line: 595, column: 35, scope: !70)
!460 = !DILocalVariable(name: "option_text", scope: !70, file: !71, line: 596, type: !74)
!461 = !DILocation(line: 596, column: 15, scope: !70)
!462 = !DILocation(line: 596, column: 37, scope: !70)
!463 = !DILocation(line: 596, column: 29, scope: !70)
!464 = !DILocation(line: 597, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !70, file: !71, line: 597, column: 7)
!466 = !DILocation(line: 597, column: 7, scope: !70)
!467 = !DILocation(line: 599, column: 21, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !71, line: 598, column: 5)
!469 = !DILocation(line: 599, column: 19, scope: !468)
!470 = !DILocation(line: 602, column: 20, scope: !468)
!471 = !DILocation(line: 603, column: 5, scope: !468)
!472 = !DILocation(line: 604, column: 12, scope: !473)
!473 = distinct !DILexicalBlock(scope: !465, file: !71, line: 604, column: 12)
!474 = !DILocation(line: 604, column: 27, scope: !473)
!475 = !DILocation(line: 604, column: 24, scope: !473)
!476 = !DILocation(line: 604, column: 12, scope: !465)
!477 = !DILocalVariable(name: "s", scope: !478, file: !71, line: 608, type: !74)
!478 = distinct !DILexicalBlock(scope: !473, file: !71, line: 605, column: 5)
!479 = !DILocation(line: 608, column: 19, scope: !478)
!480 = !DILocation(line: 608, column: 23, scope: !478)
!481 = !DILocalVariable(name: "spaces", scope: !478, file: !71, line: 609, type: !98)
!482 = !DILocation(line: 609, column: 14, scope: !478)
!483 = !DILocation(line: 610, column: 7, scope: !478)
!484 = !DILocation(line: 610, column: 14, scope: !478)
!485 = !DILocation(line: 610, column: 18, scope: !478)
!486 = !DILocation(line: 610, column: 16, scope: !478)
!487 = !DILocation(line: 610, column: 30, scope: !478)
!488 = !DILocation(line: 610, column: 33, scope: !478)
!489 = !DILocation(line: 610, column: 40, scope: !478)
!490 = !DILocation(line: 0, scope: !478)
!491 = !DILocation(line: 611, column: 21, scope: !478)
!492 = !DILocation(line: 611, column: 20, scope: !478)
!493 = !DILocation(line: 611, column: 19, scope: !478)
!494 = !DILocation(line: 611, column: 16, scope: !478)
!495 = distinct !{!495, !483, !491, !496}
!496 = !{!"llvm.loop.mustprogress"}
!497 = !DILocation(line: 612, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !478, file: !71, line: 612, column: 11)
!499 = !DILocation(line: 612, column: 18, scope: !498)
!500 = !DILocation(line: 612, column: 11, scope: !478)
!501 = !DILocation(line: 615, column: 25, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !71, line: 613, column: 9)
!503 = !DILocation(line: 615, column: 23, scope: !502)
!504 = !DILocation(line: 616, column: 24, scope: !502)
!505 = !DILocation(line: 617, column: 9, scope: !502)
!506 = !DILocation(line: 618, column: 5, scope: !478)
!507 = !DILocalVariable(name: "anchor_len", scope: !70, file: !71, line: 620, type: !98)
!508 = !DILocation(line: 620, column: 10, scope: !70)
!509 = !DILocation(line: 620, column: 32, scope: !70)
!510 = !DILocation(line: 620, column: 23, scope: !70)
!511 = !DILocalVariable(name: "desc_text", scope: !70, file: !71, line: 625, type: !74)
!512 = !DILocation(line: 625, column: 15, scope: !70)
!513 = !DILocation(line: 625, column: 27, scope: !70)
!514 = !DILocation(line: 625, column: 41, scope: !70)
!515 = !DILocation(line: 625, column: 39, scope: !70)
!516 = !DILocation(line: 626, column: 3, scope: !70)
!517 = !DILocation(line: 626, column: 11, scope: !70)
!518 = !DILocation(line: 626, column: 10, scope: !70)
!519 = !DILocation(line: 626, column: 21, scope: !70)
!520 = !DILocation(line: 626, column: 25, scope: !70)
!521 = !DILocation(line: 626, column: 24, scope: !70)
!522 = !DILocation(line: 626, column: 35, scope: !70)
!523 = !DILocation(line: 0, scope: !70)
!524 = !DILocation(line: 628, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !71, line: 628, column: 11)
!526 = distinct !DILexicalBlock(scope: !70, file: !71, line: 627, column: 5)
!527 = !DILocation(line: 628, column: 11, scope: !525)
!528 = !DILocation(line: 628, column: 22, scope: !525)
!529 = !DILocation(line: 628, column: 29, scope: !525)
!530 = !DILocation(line: 628, column: 34, scope: !525)
!531 = !DILocation(line: 628, column: 44, scope: !525)
!532 = !DILocation(line: 628, column: 32, scope: !525)
!533 = !DILocation(line: 628, column: 49, scope: !525)
!534 = !DILocation(line: 628, column: 11, scope: !526)
!535 = !DILocation(line: 629, column: 22, scope: !525)
!536 = !DILocation(line: 629, column: 9, scope: !525)
!537 = !DILocation(line: 630, column: 11, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !71, line: 630, column: 11)
!539 = !DILocation(line: 630, column: 11, scope: !526)
!540 = !DILocation(line: 632, column: 16, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !71, line: 632, column: 15)
!542 = distinct !DILexicalBlock(scope: !538, file: !71, line: 631, column: 9)
!543 = !DILocation(line: 632, column: 15, scope: !541)
!544 = !DILocation(line: 632, column: 26, scope: !541)
!545 = !DILocation(line: 632, column: 34, scope: !541)
!546 = !DILocation(line: 632, column: 37, scope: !541)
!547 = !DILocation(line: 632, column: 15, scope: !542)
!548 = !DILocation(line: 633, column: 13, scope: !541)
!549 = !DILocation(line: 636, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !542, file: !71, line: 636, column: 15)
!551 = !DILocation(line: 636, column: 29, scope: !550)
!552 = !DILocation(line: 636, column: 34, scope: !550)
!553 = !DILocation(line: 636, column: 44, scope: !550)
!554 = !DILocation(line: 636, column: 32, scope: !550)
!555 = !DILocation(line: 636, column: 49, scope: !550)
!556 = !DILocation(line: 636, column: 15, scope: !542)
!557 = !DILocation(line: 637, column: 13, scope: !550)
!558 = !DILocation(line: 638, column: 9, scope: !542)
!559 = !DILocation(line: 640, column: 16, scope: !526)
!560 = distinct !{!560, !516, !561, !496}
!561 = !DILocation(line: 641, column: 5, scope: !70)
!562 = !DILocation(line: 644, column: 3, scope: !70)
!563 = !DILocalVariable(name: "url_program", scope: !70, file: !71, line: 648, type: !74)
!564 = !DILocation(line: 648, column: 15, scope: !70)
!565 = !DILocation(line: 648, column: 38, scope: !70)
!566 = !DILocation(line: 648, column: 31, scope: !70)
!567 = !DILocation(line: 649, column: 38, scope: !70)
!568 = !DILocation(line: 649, column: 31, scope: !70)
!569 = !DILocation(line: 650, column: 38, scope: !70)
!570 = !DILocation(line: 650, column: 31, scope: !70)
!571 = !DILocation(line: 651, column: 38, scope: !70)
!572 = !DILocation(line: 651, column: 31, scope: !70)
!573 = !DILocation(line: 652, column: 38, scope: !70)
!574 = !DILocation(line: 652, column: 31, scope: !70)
!575 = !DILocation(line: 653, column: 38, scope: !70)
!576 = !DILocation(line: 653, column: 31, scope: !70)
!577 = !DILocation(line: 654, column: 38, scope: !70)
!578 = !DILocation(line: 654, column: 31, scope: !70)
!579 = !DILocation(line: 655, column: 38, scope: !70)
!580 = !DILocation(line: 655, column: 31, scope: !70)
!581 = !DILocation(line: 656, column: 38, scope: !70)
!582 = !DILocation(line: 656, column: 31, scope: !70)
!583 = !DILocation(line: 657, column: 38, scope: !70)
!584 = !DILocation(line: 657, column: 31, scope: !70)
!585 = !DILocation(line: 658, column: 31, scope: !70)
!586 = !DILocation(line: 663, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !70, file: !71, line: 663, column: 7)
!588 = !DILocation(line: 664, column: 7, scope: !587)
!589 = !DILocation(line: 664, column: 10, scope: !587)
!590 = !DILocation(line: 663, column: 7, scope: !70)
!591 = !DILocation(line: 670, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !71, line: 665, column: 5)
!593 = !DILocation(line: 670, column: 28, scope: !592)
!594 = !DILocation(line: 670, column: 47, scope: !592)
!595 = !DILocation(line: 670, column: 41, scope: !592)
!596 = !DILocation(line: 670, column: 59, scope: !592)
!597 = !DILocation(line: 669, column: 7, scope: !592)
!598 = !DILocation(line: 671, column: 5, scope: !592)
!599 = !DILocation(line: 676, column: 48, scope: !600)
!600 = distinct !DILexicalBlock(scope: !587, file: !71, line: 673, column: 5)
!601 = !DILocation(line: 677, column: 21, scope: !600)
!602 = !DILocation(line: 677, column: 15, scope: !600)
!603 = !DILocation(line: 677, column: 33, scope: !600)
!604 = !DILocation(line: 676, column: 7, scope: !600)
!605 = !DILocation(line: 679, column: 3, scope: !70)
!606 = !DILocation(line: 683, column: 3, scope: !70)
!607 = !DILocation(line: 686, column: 3, scope: !70)
!608 = !DILocation(line: 688, column: 3, scope: !70)
!609 = !DILocation(line: 691, column: 3, scope: !70)
!610 = !DILocation(line: 695, column: 3, scope: !70)
!611 = !DILocation(line: 696, column: 1, scope: !70)
!612 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 836, type: !613, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !74}
!615 = !DILocalVariable(name: "program", arg: 1, scope: !612, file: !71, line: 836, type: !74)
!616 = !DILocation(line: 836, column: 34, scope: !612)
!617 = !DILocalVariable(name: "infomap", scope: !612, file: !71, line: 838, type: !618)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 896, elements: !89)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !612, file: !71, line: 838, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !620, file: !71, line: 838, baseType: !74, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !71, line: 838, baseType: !74, size: 64, offset: 64)
!624 = !DILocation(line: 838, column: 67, scope: !612)
!625 = !DILocalVariable(name: "node", scope: !612, file: !71, line: 848, type: !74)
!626 = !DILocation(line: 848, column: 15, scope: !612)
!627 = !DILocation(line: 848, column: 22, scope: !612)
!628 = !DILocalVariable(name: "map_prog", scope: !612, file: !71, line: 849, type: !629)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!630 = !DILocation(line: 849, column: 25, scope: !612)
!631 = !DILocation(line: 849, column: 36, scope: !612)
!632 = !DILocation(line: 851, column: 3, scope: !612)
!633 = !DILocation(line: 851, column: 10, scope: !612)
!634 = !DILocation(line: 851, column: 20, scope: !612)
!635 = !DILocation(line: 851, column: 28, scope: !612)
!636 = !DILocation(line: 851, column: 40, scope: !612)
!637 = !DILocation(line: 851, column: 49, scope: !612)
!638 = !DILocation(line: 851, column: 59, scope: !612)
!639 = !DILocation(line: 851, column: 33, scope: !612)
!640 = !DILocation(line: 851, column: 31, scope: !612)
!641 = !DILocation(line: 0, scope: !612)
!642 = !DILocation(line: 852, column: 13, scope: !612)
!643 = distinct !{!643, !632, !642, !496}
!644 = !DILocation(line: 854, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !612, file: !71, line: 854, column: 7)
!646 = !DILocation(line: 854, column: 17, scope: !645)
!647 = !DILocation(line: 854, column: 7, scope: !612)
!648 = !DILocation(line: 855, column: 12, scope: !645)
!649 = !DILocation(line: 855, column: 22, scope: !645)
!650 = !DILocation(line: 855, column: 10, scope: !645)
!651 = !DILocation(line: 855, column: 5, scope: !645)
!652 = !DILocation(line: 857, column: 3, scope: !612)
!653 = !DILocalVariable(name: "lc_messages", scope: !612, file: !71, line: 861, type: !74)
!654 = !DILocation(line: 861, column: 15, scope: !612)
!655 = !DILocation(line: 861, column: 29, scope: !612)
!656 = !DILocation(line: 862, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !612, file: !71, line: 862, column: 7)
!658 = !DILocation(line: 862, column: 19, scope: !657)
!659 = !DILocation(line: 862, column: 22, scope: !657)
!660 = !DILocation(line: 862, column: 7, scope: !612)
!661 = !DILocation(line: 868, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !71, line: 863, column: 5)
!663 = !DILocation(line: 870, column: 5, scope: !662)
!664 = !DILocalVariable(name: "url_program", scope: !612, file: !71, line: 874, type: !74)
!665 = !DILocation(line: 874, column: 15, scope: !612)
!666 = !DILocation(line: 874, column: 36, scope: !612)
!667 = !DILocation(line: 874, column: 29, scope: !612)
!668 = !DILocation(line: 874, column: 61, scope: !612)
!669 = !DILocation(line: 875, column: 11, scope: !612)
!670 = !DILocation(line: 876, column: 24, scope: !612)
!671 = !DILocation(line: 875, column: 3, scope: !612)
!672 = !DILocation(line: 877, column: 11, scope: !612)
!673 = !DILocation(line: 878, column: 11, scope: !612)
!674 = !DILocation(line: 878, column: 17, scope: !612)
!675 = !DILocation(line: 878, column: 25, scope: !612)
!676 = !DILocation(line: 878, column: 22, scope: !612)
!677 = !DILocation(line: 877, column: 3, scope: !612)
!678 = !DILocation(line: 879, column: 1, scope: !612)
!679 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 289, type: !680, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!680 = !DISubroutineType(types: !681)
!681 = !{!60, !60, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!683 = !DILocalVariable(name: "argc", arg: 1, scope: !679, file: !3, line: 289, type: !60)
!684 = !DILocation(line: 289, column: 11, scope: !679)
!685 = !DILocalVariable(name: "argv", arg: 2, scope: !679, file: !3, line: 289, type: !682)
!686 = !DILocation(line: 289, column: 24, scope: !679)
!687 = !DILocalVariable(name: "width", scope: !679, file: !3, line: 291, type: !98)
!688 = !DILocation(line: 291, column: 10, scope: !679)
!689 = !DILocalVariable(name: "optc", scope: !679, file: !3, line: 292, type: !60)
!690 = !DILocation(line: 292, column: 7, scope: !679)
!691 = !DILocalVariable(name: "ok", scope: !679, file: !3, line: 293, type: !65)
!692 = !DILocation(line: 293, column: 8, scope: !679)
!693 = !DILocation(line: 296, column: 21, scope: !679)
!694 = !DILocation(line: 296, column: 3, scope: !679)
!695 = !DILocation(line: 297, column: 3, scope: !679)
!696 = !DILocation(line: 298, column: 3, scope: !679)
!697 = !DILocation(line: 299, column: 3, scope: !679)
!698 = !DILocation(line: 301, column: 3, scope: !679)
!699 = !DILocation(line: 303, column: 3, scope: !679)
!700 = !DILocation(line: 303, column: 31, scope: !679)
!701 = !DILocation(line: 303, column: 37, scope: !679)
!702 = !DILocation(line: 303, column: 18, scope: !679)
!703 = !DILocation(line: 303, column: 16, scope: !679)
!704 = !DILocation(line: 303, column: 71, scope: !679)
!705 = !DILocalVariable(name: "optargbuf", scope: !706, file: !3, line: 305, type: !707)
!706 = distinct !DILexicalBlock(scope: !679, file: !3, line: 304, column: 5)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 16, elements: !172)
!708 = !DILocation(line: 305, column: 12, scope: !706)
!709 = !DILocation(line: 307, column: 15, scope: !706)
!710 = !DILocation(line: 307, column: 7, scope: !706)
!711 = !DILocation(line: 310, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !706, file: !3, line: 308, column: 9)
!713 = !DILocation(line: 311, column: 11, scope: !712)
!714 = !DILocation(line: 314, column: 25, scope: !712)
!715 = !DILocation(line: 315, column: 11, scope: !712)
!716 = !DILocation(line: 318, column: 24, scope: !712)
!717 = !DILocation(line: 319, column: 11, scope: !712)
!718 = !DILocation(line: 323, column: 15, scope: !719)
!719 = distinct !DILexicalBlock(scope: !712, file: !3, line: 323, column: 15)
!720 = !DILocation(line: 323, column: 15, scope: !712)
!721 = !DILocation(line: 324, column: 19, scope: !719)
!722 = !DILocation(line: 324, column: 13, scope: !719)
!723 = !DILocation(line: 327, column: 30, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 326, column: 13)
!725 = !DILocation(line: 327, column: 15, scope: !724)
!726 = !DILocation(line: 327, column: 28, scope: !724)
!727 = !DILocation(line: 328, column: 15, scope: !724)
!728 = !DILocation(line: 328, column: 28, scope: !724)
!729 = !DILocation(line: 329, column: 24, scope: !724)
!730 = !DILocation(line: 329, column: 22, scope: !724)
!731 = !DILocation(line: 333, column: 31, scope: !712)
!732 = !DILocation(line: 334, column: 31, scope: !712)
!733 = !DILocation(line: 333, column: 19, scope: !712)
!734 = !DILocation(line: 333, column: 17, scope: !712)
!735 = !DILocation(line: 336, column: 11, scope: !712)
!736 = !DILocation(line: 338, column: 9, scope: !712)
!737 = !DILocation(line: 340, column: 9, scope: !712)
!738 = !DILocation(line: 343, column: 11, scope: !712)
!739 = distinct !{!739, !699, !740, !496}
!740 = !DILocation(line: 345, column: 5, scope: !679)
!741 = !DILocation(line: 347, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !679, file: !3, line: 347, column: 7)
!743 = !DILocation(line: 347, column: 15, scope: !742)
!744 = !DILocation(line: 347, column: 12, scope: !742)
!745 = !DILocation(line: 347, column: 7, scope: !679)
!746 = !DILocation(line: 348, column: 26, scope: !742)
!747 = !DILocation(line: 348, column: 10, scope: !742)
!748 = !DILocation(line: 348, column: 8, scope: !742)
!749 = !DILocation(line: 348, column: 5, scope: !742)
!750 = !DILocation(line: 351, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !742, file: !3, line: 350, column: 5)
!752 = !DILocalVariable(name: "i", scope: !753, file: !3, line: 352, type: !60)
!753 = distinct !DILexicalBlock(scope: !751, file: !3, line: 352, column: 7)
!754 = !DILocation(line: 352, column: 16, scope: !753)
!755 = !DILocation(line: 352, column: 20, scope: !753)
!756 = !DILocation(line: 352, column: 12, scope: !753)
!757 = !DILocation(line: 352, column: 28, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 352, column: 7)
!759 = !DILocation(line: 352, column: 32, scope: !758)
!760 = !DILocation(line: 352, column: 30, scope: !758)
!761 = !DILocation(line: 352, column: 7, scope: !753)
!762 = !DILocation(line: 353, column: 26, scope: !758)
!763 = !DILocation(line: 353, column: 31, scope: !758)
!764 = !DILocation(line: 353, column: 35, scope: !758)
!765 = !DILocation(line: 353, column: 15, scope: !758)
!766 = !DILocation(line: 353, column: 12, scope: !758)
!767 = !DILocation(line: 353, column: 9, scope: !758)
!768 = !DILocation(line: 352, column: 39, scope: !758)
!769 = !DILocation(line: 352, column: 7, scope: !758)
!770 = distinct !{!770, !761, !771, !496}
!771 = !DILocation(line: 353, column: 40, scope: !753)
!772 = !DILocation(line: 356, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !679, file: !3, line: 356, column: 7)
!774 = !DILocation(line: 356, column: 23, scope: !773)
!775 = !DILocation(line: 356, column: 34, scope: !773)
!776 = !DILocation(line: 356, column: 26, scope: !773)
!777 = !DILocation(line: 356, column: 41, scope: !773)
!778 = !DILocation(line: 356, column: 7, scope: !679)
!779 = !DILocation(line: 357, column: 5, scope: !773)
!780 = !DILocation(line: 359, column: 10, scope: !679)
!781 = !DILocation(line: 359, column: 3, scope: !679)
!782 = !DILocalVariable(name: "filename", arg: 1, scope: !95, file: !3, line: 159, type: !74)
!783 = !DILocation(line: 159, column: 24, scope: !95)
!784 = !DILocalVariable(name: "width", arg: 2, scope: !95, file: !3, line: 159, type: !98)
!785 = !DILocation(line: 159, column: 41, scope: !95)
!786 = !DILocalVariable(name: "istream", scope: !95, file: !3, line: 161, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !790)
!789 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !792)
!791 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !808, !810, !811, !812, !814, !815, !817, !821, !824, !826, !829, !832, !833, !834, !835, !836}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !790, file: !791, line: 51, baseType: !60, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !790, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !790, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !790, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !790, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !790, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !790, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !790, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !790, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !790, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !790, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !790, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !790, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !791, line: 36, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !790, file: !791, line: 70, baseType: !809, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !790, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !790, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !790, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !355, line: 152, baseType: !333)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !790, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !790, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!816 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !790, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 1)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !790, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !791, line: 43, baseType: null)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !790, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !355, line: 153, baseType: !333)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !790, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !791, line: 37, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !790, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !791, line: 38, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !790, file: !791, line: 93, baseType: !809, size: 64, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !790, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !790, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !790, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !790, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 20)
!840 = !DILocation(line: 161, column: 9, scope: !95)
!841 = !DILocalVariable(name: "column", scope: !95, file: !3, line: 162, type: !98)
!842 = !DILocation(line: 162, column: 10, scope: !95)
!843 = !DILocalVariable(name: "offset_out", scope: !95, file: !3, line: 163, type: !330)
!844 = !DILocation(line: 163, column: 9, scope: !95)
!845 = !DILocalVariable(name: "mbbuf", scope: !95, file: !3, line: 166, type: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !847, line: 50, baseType: !848)
!847 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !847, line: 43, size: 320, elements: !849)
!849 = !{!850, !851, !852, !853, !854}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !848, file: !847, line: 45, baseType: !57, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !848, file: !847, line: 46, baseType: !787, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !848, file: !847, line: 47, baseType: !330, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !848, file: !847, line: 48, baseType: !330, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !848, file: !847, line: 49, baseType: !330, size: 64, offset: 256)
!855 = !DILocation(line: 166, column: 11, scope: !95)
!856 = !DILocalVariable(name: "saved_errno", scope: !95, file: !3, line: 167, type: !60)
!857 = !DILocation(line: 167, column: 7, scope: !95)
!858 = !DILocation(line: 169, column: 14, scope: !859)
!859 = distinct !DILexicalBlock(scope: !95, file: !3, line: 169, column: 7)
!860 = !DILocation(line: 169, column: 7, scope: !859)
!861 = !DILocation(line: 169, column: 7, scope: !95)
!862 = !DILocation(line: 171, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 170, column: 5)
!864 = !DILocation(line: 171, column: 15, scope: !863)
!865 = !DILocation(line: 172, column: 23, scope: !863)
!866 = !DILocation(line: 173, column: 5, scope: !863)
!867 = !DILocation(line: 175, column: 22, scope: !859)
!868 = !DILocation(line: 175, column: 15, scope: !859)
!869 = !DILocation(line: 175, column: 13, scope: !859)
!870 = !DILocation(line: 177, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !95, file: !3, line: 177, column: 7)
!872 = !DILocation(line: 177, column: 15, scope: !871)
!873 = !DILocation(line: 177, column: 7, scope: !95)
!874 = !DILocation(line: 179, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 178, column: 5)
!876 = !DILocation(line: 180, column: 7, scope: !875)
!877 = !DILocation(line: 183, column: 12, scope: !95)
!878 = !DILocation(line: 183, column: 3, scope: !95)
!879 = !DILocation(line: 184, column: 48, scope: !95)
!880 = !DILocation(line: 184, column: 3, scope: !95)
!881 = !DILocalVariable(name: "g", scope: !95, file: !3, line: 186, type: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !290, line: 143, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 138, size: 64, elements: !884)
!884 = !{!885, !890, !891}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !883, file: !290, line: 140, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !887, line: 37, baseType: !888)
!887 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !355, line: 57, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !355, line: 42, baseType: !6)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !883, file: !290, line: 141, baseType: !253, size: 8, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !883, file: !290, line: 142, baseType: !253, size: 8, offset: 40)
!892 = !DILocation(line: 186, column: 10, scope: !95)
!893 = !DILocation(line: 187, column: 3, scope: !95)
!894 = !DILocation(line: 187, column: 15, scope: !95)
!895 = !DILocation(line: 187, column: 13, scope: !95)
!896 = !DILocation(line: 187, column: 40, scope: !95)
!897 = !DILocation(line: 187, column: 43, scope: !95)
!898 = !DILocation(line: 189, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 189, column: 11)
!900 = distinct !DILexicalBlock(scope: !95, file: !3, line: 188, column: 5)
!901 = !DILocation(line: 189, column: 16, scope: !899)
!902 = !DILocation(line: 189, column: 11, scope: !900)
!903 = !DILocation(line: 191, column: 32, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 190, column: 9)
!905 = !DILocation(line: 191, column: 11, scope: !904)
!906 = !DILocation(line: 192, column: 31, scope: !904)
!907 = !DILocation(line: 192, column: 18, scope: !904)
!908 = !DILocation(line: 193, column: 11, scope: !904)
!909 = distinct !{!909, !893, !910, !496}
!910 = !DILocation(line: 265, column: 5, scope: !95)
!911 = !DILocation(line: 189, column: 19, scope: !899)
!912 = !DILabel(scope: !900, name: "rescan", file: !3, line: 195)
!913 = !DILocation(line: 195, column: 5, scope: !900)
!914 = !DILocation(line: 196, column: 31, scope: !900)
!915 = !DILocation(line: 196, column: 16, scope: !900)
!916 = !DILocation(line: 196, column: 14, scope: !900)
!917 = !DILocation(line: 198, column: 11, scope: !918)
!918 = distinct !DILexicalBlock(scope: !900, file: !3, line: 198, column: 11)
!919 = !DILocation(line: 198, column: 20, scope: !918)
!920 = !DILocation(line: 198, column: 18, scope: !918)
!921 = !DILocation(line: 198, column: 11, scope: !900)
!922 = !DILocation(line: 203, column: 15, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 203, column: 15)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 199, column: 9)
!925 = !DILocation(line: 203, column: 15, scope: !924)
!926 = !DILocalVariable(name: "space_length", scope: !927, file: !3, line: 205, type: !60)
!927 = distinct !DILexicalBlock(scope: !923, file: !3, line: 204, column: 13)
!928 = !DILocation(line: 205, column: 19, scope: !927)
!929 = !DILocalVariable(name: "logical_end", scope: !927, file: !3, line: 206, type: !330)
!930 = !DILocation(line: 206, column: 21, scope: !927)
!931 = !DILocation(line: 206, column: 35, scope: !927)
!932 = !DILocalVariable(name: "logical_p", scope: !927, file: !3, line: 207, type: !57)
!933 = !DILocation(line: 207, column: 21, scope: !927)
!934 = !DILocalVariable(name: "logical_lim", scope: !927, file: !3, line: 208, type: !57)
!935 = !DILocation(line: 208, column: 21, scope: !927)
!936 = !DILocation(line: 208, column: 35, scope: !927)
!937 = !DILocation(line: 208, column: 47, scope: !927)
!938 = !DILocation(line: 208, column: 45, scope: !927)
!939 = !DILocalVariable(name: "g2", scope: !940, file: !3, line: 210, type: !882)
!940 = distinct !DILexicalBlock(scope: !927, file: !3, line: 210, column: 15)
!941 = !DILocation(line: 210, column: 27, scope: !940)
!942 = !DILocation(line: 210, column: 20, scope: !940)
!943 = !DILocation(line: 210, column: 31, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 210, column: 15)
!945 = !DILocation(line: 210, column: 43, scope: !944)
!946 = !DILocation(line: 210, column: 41, scope: !944)
!947 = !DILocation(line: 210, column: 15, scope: !940)
!948 = !DILocation(line: 212, column: 35, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 211, column: 17)
!950 = !DILocation(line: 212, column: 46, scope: !949)
!951 = !DILocation(line: 212, column: 24, scope: !949)
!952 = !DILocation(line: 213, column: 36, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !3, line: 213, column: 23)
!954 = !DILocation(line: 213, column: 23, scope: !953)
!955 = !DILocation(line: 213, column: 23, scope: !949)
!956 = !DILocation(line: 215, column: 41, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 214, column: 21)
!958 = !DILocation(line: 215, column: 38, scope: !957)
!959 = !DILocation(line: 215, column: 36, scope: !957)
!960 = !DILocation(line: 216, column: 37, scope: !957)
!961 = !DILocation(line: 216, column: 47, scope: !957)
!962 = !DILocation(line: 216, column: 35, scope: !957)
!963 = !DILocation(line: 217, column: 21, scope: !957)
!964 = !DILocation(line: 218, column: 17, scope: !949)
!965 = !DILocation(line: 210, column: 72, scope: !944)
!966 = !DILocation(line: 210, column: 69, scope: !944)
!967 = !DILocation(line: 210, column: 66, scope: !944)
!968 = !DILocation(line: 210, column: 15, scope: !944)
!969 = distinct !{!969, !947, !970, !496}
!970 = !DILocation(line: 218, column: 17, scope: !940)
!971 = !DILocation(line: 220, column: 19, scope: !972)
!972 = distinct !DILexicalBlock(scope: !927, file: !3, line: 220, column: 19)
!973 = !DILocation(line: 220, column: 19, scope: !927)
!974 = !DILocation(line: 222, column: 34, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 221, column: 17)
!976 = !DILocation(line: 222, column: 31, scope: !975)
!977 = !DILocation(line: 224, column: 40, scope: !975)
!978 = !DILocation(line: 224, column: 19, scope: !975)
!979 = !DILocation(line: 227, column: 49, scope: !975)
!980 = !DILocation(line: 227, column: 47, scope: !975)
!981 = !DILocation(line: 228, column: 28, scope: !975)
!982 = !DILocation(line: 228, column: 41, scope: !975)
!983 = !DILocation(line: 228, column: 39, scope: !975)
!984 = !DILocation(line: 227, column: 19, scope: !975)
!985 = !DILocation(line: 229, column: 33, scope: !975)
!986 = !DILocation(line: 229, column: 30, scope: !975)
!987 = !DILocation(line: 230, column: 26, scope: !975)
!988 = !DILocalVariable(name: "printed_p", scope: !975, file: !3, line: 231, type: !57)
!989 = !DILocation(line: 231, column: 25, scope: !975)
!990 = !DILocalVariable(name: "printed_lim", scope: !975, file: !3, line: 232, type: !57)
!991 = !DILocation(line: 232, column: 25, scope: !975)
!992 = !DILocation(line: 232, column: 39, scope: !975)
!993 = !DILocation(line: 232, column: 51, scope: !975)
!994 = !DILocation(line: 232, column: 49, scope: !975)
!995 = !DILocalVariable(name: "g2", scope: !996, file: !3, line: 233, type: !882)
!996 = distinct !DILexicalBlock(scope: !975, file: !3, line: 233, column: 19)
!997 = !DILocation(line: 233, column: 31, scope: !996)
!998 = !DILocation(line: 233, column: 24, scope: !996)
!999 = !DILocation(line: 233, column: 35, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 233, column: 19)
!1001 = !DILocation(line: 233, column: 47, scope: !1000)
!1002 = !DILocation(line: 233, column: 45, scope: !1000)
!1003 = !DILocation(line: 233, column: 19, scope: !996)
!1004 = !DILocation(line: 236, column: 39, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 235, column: 21)
!1006 = !DILocation(line: 236, column: 50, scope: !1005)
!1007 = !DILocation(line: 236, column: 28, scope: !1005)
!1008 = !DILocation(line: 237, column: 47, scope: !1005)
!1009 = !DILocation(line: 237, column: 32, scope: !1005)
!1010 = !DILocation(line: 237, column: 30, scope: !1005)
!1011 = !DILocation(line: 238, column: 21, scope: !1005)
!1012 = !DILocation(line: 234, column: 40, scope: !1000)
!1013 = !DILocation(line: 234, column: 37, scope: !1000)
!1014 = !DILocation(line: 234, column: 34, scope: !1000)
!1015 = !DILocation(line: 233, column: 19, scope: !1000)
!1016 = distinct !{!1016, !1003, !1017, !496}
!1017 = !DILocation(line: 238, column: 21, scope: !996)
!1018 = !DILocation(line: 239, column: 19, scope: !975)
!1019 = !DILocation(line: 241, column: 13, scope: !927)
!1020 = !DILocation(line: 243, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !924, file: !3, line: 243, column: 15)
!1022 = !DILocation(line: 243, column: 26, scope: !1021)
!1023 = !DILocation(line: 243, column: 15, scope: !924)
!1024 = !DILocation(line: 245, column: 33, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 244, column: 13)
!1026 = !DILocation(line: 245, column: 66, scope: !1025)
!1027 = !DILocation(line: 245, column: 64, scope: !1025)
!1028 = !DILocation(line: 245, column: 15, scope: !1025)
!1029 = !DILocation(line: 246, column: 31, scope: !1025)
!1030 = !DILocation(line: 246, column: 29, scope: !1025)
!1031 = !DILocation(line: 246, column: 26, scope: !1025)
!1032 = !DILocation(line: 247, column: 15, scope: !1025)
!1033 = !DILocation(line: 250, column: 32, scope: !924)
!1034 = !DILocation(line: 250, column: 11, scope: !924)
!1035 = !DILocation(line: 251, column: 31, scope: !924)
!1036 = !DILocation(line: 251, column: 18, scope: !924)
!1037 = !DILocation(line: 252, column: 11, scope: !924)
!1038 = !DILocation(line: 257, column: 30, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !900, file: !3, line: 257, column: 11)
!1040 = !DILocation(line: 257, column: 45, scope: !1039)
!1041 = !DILocation(line: 257, column: 43, scope: !1039)
!1042 = !DILocation(line: 257, column: 41, scope: !1039)
!1043 = !DILocation(line: 257, column: 27, scope: !1039)
!1044 = !DILocation(line: 257, column: 11, scope: !900)
!1045 = !DILocation(line: 259, column: 32, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 258, column: 9)
!1047 = !DILocation(line: 259, column: 11, scope: !1046)
!1048 = !DILocation(line: 260, column: 22, scope: !1046)
!1049 = !DILocation(line: 261, column: 9, scope: !1046)
!1050 = !DILocation(line: 263, column: 26, scope: !900)
!1051 = !DILocation(line: 263, column: 24, scope: !900)
!1052 = !DILocation(line: 263, column: 38, scope: !900)
!1053 = !DILocation(line: 263, column: 71, scope: !900)
!1054 = !DILocation(line: 263, column: 69, scope: !900)
!1055 = !DILocation(line: 263, column: 7, scope: !900)
!1056 = !DILocation(line: 264, column: 23, scope: !900)
!1057 = !DILocation(line: 264, column: 21, scope: !900)
!1058 = !DILocation(line: 264, column: 18, scope: !900)
!1059 = !DILocation(line: 267, column: 17, scope: !95)
!1060 = !DILocation(line: 267, column: 15, scope: !95)
!1061 = !DILocation(line: 268, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !95, file: !3, line: 268, column: 7)
!1063 = !DILocation(line: 268, column: 7, scope: !95)
!1064 = !DILocation(line: 269, column: 17, scope: !1062)
!1065 = !DILocation(line: 269, column: 5, scope: !1062)
!1066 = !DILocation(line: 271, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !95, file: !3, line: 271, column: 7)
!1068 = !DILocation(line: 271, column: 7, scope: !95)
!1069 = !DILocation(line: 272, column: 26, scope: !1067)
!1070 = !DILocation(line: 272, column: 5, scope: !1067)
!1071 = !DILocation(line: 274, column: 14, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !95, file: !3, line: 274, column: 7)
!1073 = !DILocation(line: 274, column: 7, scope: !1072)
!1074 = !DILocation(line: 274, column: 7, scope: !95)
!1075 = !DILocation(line: 275, column: 5, scope: !1072)
!1076 = !DILocation(line: 276, column: 20, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 276, column: 12)
!1078 = !DILocation(line: 276, column: 12, scope: !1077)
!1079 = !DILocation(line: 276, column: 29, scope: !1077)
!1080 = !DILocation(line: 276, column: 34, scope: !1077)
!1081 = !DILocation(line: 276, column: 38, scope: !1077)
!1082 = !DILocation(line: 276, column: 12, scope: !1072)
!1083 = !DILocation(line: 277, column: 19, scope: !1077)
!1084 = !DILocation(line: 277, column: 17, scope: !1077)
!1085 = !DILocation(line: 277, column: 5, scope: !1077)
!1086 = !DILocation(line: 279, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !95, file: !3, line: 279, column: 7)
!1088 = !DILocation(line: 279, column: 7, scope: !95)
!1089 = !DILocation(line: 281, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 280, column: 5)
!1091 = !DILocation(line: 282, column: 7, scope: !1090)
!1092 = !DILocation(line: 285, column: 3, scope: !95)
!1093 = !DILocation(line: 286, column: 1, scope: !95)
!1094 = distinct !DISubprogram(name: "write_out", scope: !3, file: !3, line: 147, type: !1095, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !74, !98, !65}
!1097 = !DILocalVariable(name: "line", arg: 1, scope: !1094, file: !3, line: 147, type: !74)
!1098 = !DILocation(line: 147, column: 24, scope: !1094)
!1099 = !DILocalVariable(name: "line_len", arg: 2, scope: !1094, file: !3, line: 147, type: !98)
!1100 = !DILocation(line: 147, column: 37, scope: !1094)
!1101 = !DILocalVariable(name: "newline", arg: 3, scope: !1094, file: !3, line: 147, type: !65)
!1102 = !DILocation(line: 147, column: 52, scope: !1094)
!1103 = !DILocation(line: 149, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 149, column: 7)
!1105 = !DILocation(line: 149, column: 57, scope: !1104)
!1106 = !DILocation(line: 149, column: 54, scope: !1104)
!1107 = !DILocation(line: 150, column: 7, scope: !1104)
!1108 = !DILocation(line: 150, column: 11, scope: !1104)
!1109 = !DILocation(line: 150, column: 19, scope: !1104)
!1110 = !DILocation(line: 150, column: 22, scope: !1104)
!1111 = !DILocation(line: 150, column: 37, scope: !1104)
!1112 = !DILocation(line: 149, column: 7, scope: !1094)
!1113 = !DILocation(line: 151, column: 5, scope: !1104)
!1114 = !DILocation(line: 152, column: 1, scope: !1094)
!1115 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 115, type: !1116, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!98, !98, !882}
!1118 = !DILocalVariable(name: "column", arg: 1, scope: !1115, file: !3, line: 115, type: !98)
!1119 = !DILocation(line: 115, column: 23, scope: !1115)
!1120 = !DILocalVariable(name: "g", arg: 2, scope: !1115, file: !3, line: 115, type: !882)
!1121 = !DILocation(line: 115, column: 38, scope: !1115)
!1122 = !DILocation(line: 117, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 117, column: 7)
!1124 = !DILocation(line: 117, column: 21, scope: !1123)
!1125 = !DILocation(line: 117, column: 7, scope: !1115)
!1126 = !DILocation(line: 119, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 119, column: 11)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 118, column: 5)
!1129 = !DILocation(line: 119, column: 16, scope: !1127)
!1130 = !DILocation(line: 119, column: 11, scope: !1128)
!1131 = !DILocation(line: 121, column: 15, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 121, column: 15)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 120, column: 9)
!1134 = !DILocation(line: 121, column: 22, scope: !1132)
!1135 = !DILocation(line: 121, column: 15, scope: !1133)
!1136 = !DILocation(line: 122, column: 23, scope: !1132)
!1137 = !DILocation(line: 122, column: 20, scope: !1132)
!1138 = !DILocation(line: 122, column: 13, scope: !1132)
!1139 = !DILocation(line: 123, column: 9, scope: !1133)
!1140 = !DILocation(line: 124, column: 18, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 124, column: 16)
!1142 = !DILocation(line: 124, column: 21, scope: !1141)
!1143 = !DILocation(line: 124, column: 16, scope: !1127)
!1144 = !DILocation(line: 125, column: 16, scope: !1141)
!1145 = !DILocation(line: 125, column: 9, scope: !1141)
!1146 = !DILocation(line: 126, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 126, column: 16)
!1148 = !DILocation(line: 126, column: 21, scope: !1147)
!1149 = !DILocation(line: 126, column: 16, scope: !1141)
!1150 = !DILocation(line: 127, column: 31, scope: !1147)
!1151 = !DILocation(line: 127, column: 38, scope: !1147)
!1152 = !DILocation(line: 127, column: 29, scope: !1147)
!1153 = !DILocation(line: 127, column: 16, scope: !1147)
!1154 = !DILocation(line: 127, column: 9, scope: !1147)
!1155 = !DILocation(line: 130, column: 15, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 130, column: 15)
!1157 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 129, column: 9)
!1158 = !DILocation(line: 130, column: 29, scope: !1156)
!1159 = !DILocation(line: 130, column: 15, scope: !1157)
!1160 = !DILocation(line: 131, column: 34, scope: !1156)
!1161 = !DILocation(line: 131, column: 13, scope: !1156)
!1162 = !DILocalVariable(name: "width", scope: !1163, file: !3, line: 134, type: !60)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 133, column: 13)
!1164 = !DILocation(line: 134, column: 19, scope: !1163)
!1165 = !DILocation(line: 134, column: 39, scope: !1163)
!1166 = !DILocation(line: 134, column: 27, scope: !1163)
!1167 = !DILocation(line: 136, column: 38, scope: !1163)
!1168 = !DILocation(line: 136, column: 44, scope: !1163)
!1169 = !DILocation(line: 136, column: 54, scope: !1163)
!1170 = !DILocation(line: 136, column: 36, scope: !1163)
!1171 = !DILocation(line: 138, column: 21, scope: !1157)
!1172 = !DILocation(line: 138, column: 18, scope: !1157)
!1173 = !DILocation(line: 140, column: 5, scope: !1128)
!1174 = !DILocation(line: 142, column: 17, scope: !1123)
!1175 = !DILocation(line: 142, column: 15, scope: !1123)
!1176 = !DILocation(line: 142, column: 12, scope: !1123)
!1177 = !DILocation(line: 143, column: 10, scope: !1115)
!1178 = !DILocation(line: 143, column: 3, scope: !1115)
!1179 = distinct !DISubprogram(name: "c32issep", scope: !71, file: !71, line: 178, type: !1180, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!65, !886}
!1182 = !DILocalVariable(name: "wc", arg: 1, scope: !1179, file: !71, line: 178, type: !886)
!1183 = !DILocation(line: 178, column: 20, scope: !1179)
!1184 = !DILocation(line: 181, column: 25, scope: !1179)
!1185 = !DILocation(line: 181, column: 13, scope: !1179)
!1186 = !DILocation(line: 181, column: 11, scope: !1179)
!1187 = !DILocation(line: 181, column: 10, scope: !1179)
!1188 = !DILocation(line: 181, column: 3, scope: !1179)
!1189 = distinct !DISubprogram(name: "write_error", scope: !71, file: !71, line: 946, type: !155, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!1190 = !DILocalVariable(name: "saved_errno", scope: !1189, file: !71, line: 948, type: !60)
!1191 = !DILocation(line: 948, column: 7, scope: !1189)
!1192 = !DILocation(line: 948, column: 21, scope: !1189)
!1193 = !DILocation(line: 949, column: 3, scope: !1189)
!1194 = !DILocation(line: 950, column: 11, scope: !1189)
!1195 = !DILocation(line: 950, column: 3, scope: !1189)
!1196 = !DILocation(line: 951, column: 3, scope: !1189)
!1197 = !DILocation(line: 952, column: 3, scope: !1189)
!1198 = distinct !DISubprogram(name: "c32isblank", scope: !1199, file: !1199, line: 41, type: !1200, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !76)
!1199 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!60, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1203, line: 20, baseType: !6)
!1203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1204 = !DILocalVariable(name: "wc", arg: 1, scope: !1198, file: !1199, line: 41, type: !1202)
!1205 = !DILocation(line: 41, column: 14, scope: !1198)
!1206 = !DILocation(line: 66, column: 22, scope: !1198)
!1207 = !DILocation(line: 66, column: 10, scope: !1198)
!1208 = !DILocation(line: 66, column: 3, scope: !1198)
!1209 = distinct !DISubprogram(name: "c32width", scope: !272, file: !272, line: 47, type: !1210, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !76)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!60, !886}
!1212 = !DILocalVariable(name: "wc", arg: 1, scope: !1209, file: !272, line: 47, type: !886)
!1213 = !DILocation(line: 47, column: 20, scope: !1209)
!1214 = !DILocation(line: 67, column: 19, scope: !1209)
!1215 = !DILocation(line: 67, column: 10, scope: !1209)
!1216 = !DILocation(line: 67, column: 3, scope: !1209)
!1217 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !119, file: !119, line: 50, type: !613, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !76)
!1218 = !DILocalVariable(name: "file", arg: 1, scope: !1217, file: !119, line: 50, type: !74)
!1219 = !DILocation(line: 50, column: 41, scope: !1217)
!1220 = !DILocation(line: 52, column: 15, scope: !1217)
!1221 = !DILocation(line: 52, column: 13, scope: !1217)
!1222 = !DILocation(line: 53, column: 1, scope: !1217)
!1223 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !119, file: !119, line: 87, type: !1224, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !76)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !65}
!1226 = !DILocalVariable(name: "ignore", arg: 1, scope: !1223, file: !119, line: 87, type: !65)
!1227 = !DILocation(line: 87, column: 37, scope: !1223)
!1228 = !DILocation(line: 89, column: 18, scope: !1223)
!1229 = !DILocation(line: 89, column: 16, scope: !1223)
!1230 = !DILocation(line: 90, column: 1, scope: !1223)
!1231 = distinct !DISubprogram(name: "close_stdout", scope: !119, file: !119, line: 116, type: !155, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !76)
!1232 = !DILocation(line: 118, column: 21, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !119, line: 118, column: 7)
!1234 = !DILocation(line: 118, column: 7, scope: !1233)
!1235 = !DILocation(line: 118, column: 29, scope: !1233)
!1236 = !DILocation(line: 119, column: 7, scope: !1233)
!1237 = !DILocation(line: 119, column: 12, scope: !1233)
!1238 = !DILocation(line: 119, column: 25, scope: !1233)
!1239 = !DILocation(line: 119, column: 28, scope: !1233)
!1240 = !DILocation(line: 119, column: 34, scope: !1233)
!1241 = !DILocation(line: 118, column: 7, scope: !1231)
!1242 = !DILocalVariable(name: "write_error", scope: !1243, file: !119, line: 121, type: !74)
!1243 = distinct !DILexicalBlock(scope: !1233, file: !119, line: 120, column: 5)
!1244 = !DILocation(line: 121, column: 19, scope: !1243)
!1245 = !DILocation(line: 121, column: 33, scope: !1243)
!1246 = !DILocation(line: 122, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !119, line: 122, column: 11)
!1248 = !DILocation(line: 122, column: 11, scope: !1243)
!1249 = !DILocation(line: 123, column: 9, scope: !1247)
!1250 = !DILocation(line: 126, column: 9, scope: !1247)
!1251 = !DILocation(line: 128, column: 14, scope: !1243)
!1252 = !DILocation(line: 128, column: 7, scope: !1243)
!1253 = !DILocation(line: 133, column: 42, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1231, file: !119, line: 133, column: 7)
!1255 = !DILocation(line: 133, column: 28, scope: !1254)
!1256 = !DILocation(line: 133, column: 50, scope: !1254)
!1257 = !DILocation(line: 133, column: 7, scope: !1231)
!1258 = !DILocation(line: 134, column: 12, scope: !1254)
!1259 = !DILocation(line: 134, column: 5, scope: !1254)
!1260 = !DILocation(line: 135, column: 1, scope: !1231)
!1261 = distinct !DISubprogram(name: "verror", scope: !126, file: !126, line: 251, type: !1262, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !60, !60, !74, !134}
!1264 = !DILocalVariable(name: "status", arg: 1, scope: !1261, file: !126, line: 251, type: !60)
!1265 = !DILocation(line: 251, column: 1, scope: !1261)
!1266 = !DILocalVariable(name: "errnum", arg: 2, scope: !1261, file: !126, line: 251, type: !60)
!1267 = !DILocalVariable(name: "message", arg: 3, scope: !1261, file: !126, line: 251, type: !74)
!1268 = !DILocalVariable(name: "args", arg: 4, scope: !1261, file: !126, line: 251, type: !134)
!1269 = !DILocation(line: 261, column: 3, scope: !1261)
!1270 = !DILocation(line: 265, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !126, line: 265, column: 7)
!1272 = !DILocation(line: 265, column: 7, scope: !1261)
!1273 = !DILocation(line: 266, column: 7, scope: !1271)
!1274 = !DILocation(line: 266, column: 5, scope: !1271)
!1275 = !DILocation(line: 272, column: 16, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !126, line: 268, column: 5)
!1277 = !DILocation(line: 272, column: 32, scope: !1276)
!1278 = !DILocation(line: 272, column: 7, scope: !1276)
!1279 = !DILocation(line: 276, column: 3, scope: !1261)
!1280 = !DILocation(line: 282, column: 1, scope: !1261)
!1281 = distinct !DISubprogram(name: "flush_stdout", scope: !126, file: !126, line: 163, type: !155, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1282 = !DILocalVariable(name: "stdout_fd", scope: !1281, file: !126, line: 166, type: !60)
!1283 = !DILocation(line: 166, column: 7, scope: !1281)
!1284 = !DILocation(line: 172, column: 13, scope: !1281)
!1285 = !DILocation(line: 182, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !126, line: 182, column: 7)
!1287 = !DILocation(line: 182, column: 9, scope: !1286)
!1288 = !DILocation(line: 182, column: 22, scope: !1286)
!1289 = !DILocation(line: 182, column: 34, scope: !1286)
!1290 = !DILocation(line: 182, column: 25, scope: !1286)
!1291 = !DILocation(line: 182, column: 7, scope: !1281)
!1292 = !DILocation(line: 184, column: 5, scope: !1286)
!1293 = !DILocation(line: 185, column: 1, scope: !1281)
!1294 = distinct !DISubprogram(name: "error_tail", scope: !126, file: !126, line: 219, type: !1262, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1295 = !DILocalVariable(name: "status", arg: 1, scope: !1294, file: !126, line: 219, type: !60)
!1296 = !DILocation(line: 219, column: 1, scope: !1294)
!1297 = !DILocalVariable(name: "errnum", arg: 2, scope: !1294, file: !126, line: 219, type: !60)
!1298 = !DILocalVariable(name: "message", arg: 3, scope: !1294, file: !126, line: 219, type: !74)
!1299 = !DILocalVariable(name: "args", arg: 4, scope: !1294, file: !126, line: 219, type: !134)
!1300 = !DILocation(line: 229, column: 13, scope: !1294)
!1301 = !DILocation(line: 229, column: 21, scope: !1294)
!1302 = !DILocation(line: 229, column: 3, scope: !1294)
!1303 = !DILocation(line: 232, column: 3, scope: !1294)
!1304 = !DILocation(line: 233, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !126, line: 233, column: 7)
!1306 = !DILocation(line: 233, column: 7, scope: !1294)
!1307 = !DILocation(line: 234, column: 26, scope: !1305)
!1308 = !DILocation(line: 234, column: 5, scope: !1305)
!1309 = !DILocation(line: 238, column: 3, scope: !1294)
!1310 = !DILocation(line: 240, column: 3, scope: !1294)
!1311 = !DILocation(line: 241, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1294, file: !126, line: 241, column: 7)
!1313 = !DILocation(line: 241, column: 7, scope: !1294)
!1314 = !DILocation(line: 242, column: 11, scope: !1312)
!1315 = !DILocation(line: 242, column: 5, scope: !1312)
!1316 = !DILocation(line: 243, column: 1, scope: !1294)
!1317 = distinct !DISubprogram(name: "print_errno_message", scope: !126, file: !126, line: 188, type: !392, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1318 = !DILocalVariable(name: "errnum", arg: 1, scope: !1317, file: !126, line: 188, type: !60)
!1319 = !DILocation(line: 188, column: 26, scope: !1317)
!1320 = !DILocalVariable(name: "s", scope: !1317, file: !126, line: 190, type: !74)
!1321 = !DILocation(line: 190, column: 15, scope: !1317)
!1322 = !DILocalVariable(name: "errbuf", scope: !1317, file: !126, line: 193, type: !1323)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8192, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: 1024)
!1326 = !DILocation(line: 193, column: 8, scope: !1317)
!1327 = !DILocation(line: 195, column: 21, scope: !1317)
!1328 = !DILocation(line: 195, column: 29, scope: !1317)
!1329 = !DILocation(line: 195, column: 7, scope: !1317)
!1330 = !DILocation(line: 195, column: 5, scope: !1317)
!1331 = !DILocation(line: 207, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1317, file: !126, line: 207, column: 7)
!1333 = !DILocation(line: 207, column: 7, scope: !1317)
!1334 = !DILocation(line: 208, column: 9, scope: !1332)
!1335 = !DILocation(line: 208, column: 7, scope: !1332)
!1336 = !DILocation(line: 208, column: 5, scope: !1332)
!1337 = !DILocation(line: 214, column: 12, scope: !1317)
!1338 = !DILocation(line: 214, column: 28, scope: !1317)
!1339 = !DILocation(line: 214, column: 3, scope: !1317)
!1340 = !DILocation(line: 216, column: 1, scope: !1317)
!1341 = distinct !DISubprogram(name: "is_open", scope: !126, file: !126, line: 145, type: !1342, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!60, !60}
!1344 = !DILocalVariable(name: "fd", arg: 1, scope: !1341, file: !126, line: 145, type: !60)
!1345 = !DILocation(line: 145, column: 14, scope: !1341)
!1346 = !DILocation(line: 157, column: 22, scope: !1341)
!1347 = !DILocation(line: 157, column: 15, scope: !1341)
!1348 = !DILocation(line: 157, column: 12, scope: !1341)
!1349 = !DILocation(line: 157, column: 3, scope: !1341)
!1350 = distinct !DISubprogram(name: "error", scope: !126, file: !126, line: 285, type: !1351, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !60, !60, !74, null}
!1353 = !DILocalVariable(name: "status", arg: 1, scope: !1350, file: !126, line: 285, type: !60)
!1354 = !DILocation(line: 285, column: 12, scope: !1350)
!1355 = !DILocalVariable(name: "errnum", arg: 2, scope: !1350, file: !126, line: 285, type: !60)
!1356 = !DILocation(line: 285, column: 24, scope: !1350)
!1357 = !DILocalVariable(name: "message", arg: 3, scope: !1350, file: !126, line: 285, type: !74)
!1358 = !DILocation(line: 285, column: 44, scope: !1350)
!1359 = !DILocalVariable(name: "ap", scope: !1350, file: !126, line: 287, type: !134)
!1360 = !DILocation(line: 287, column: 11, scope: !1350)
!1361 = !DILocation(line: 288, column: 3, scope: !1350)
!1362 = !DILocation(line: 289, column: 3, scope: !1350)
!1363 = !DILocation(line: 290, column: 3, scope: !1350)
!1364 = !DILocation(line: 291, column: 1, scope: !1350)
!1365 = !DILocalVariable(name: "status", arg: 1, scope: !131, file: !126, line: 298, type: !60)
!1366 = !DILocation(line: 298, column: 1, scope: !131)
!1367 = !DILocalVariable(name: "errnum", arg: 2, scope: !131, file: !126, line: 298, type: !60)
!1368 = !DILocalVariable(name: "file_name", arg: 3, scope: !131, file: !126, line: 298, type: !74)
!1369 = !DILocalVariable(name: "line_number", arg: 4, scope: !131, file: !126, line: 298, type: !6)
!1370 = !DILocalVariable(name: "message", arg: 5, scope: !131, file: !126, line: 298, type: !74)
!1371 = !DILocalVariable(name: "args", arg: 6, scope: !131, file: !126, line: 298, type: !134)
!1372 = !DILocation(line: 302, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !131, file: !126, line: 302, column: 7)
!1374 = !DILocation(line: 302, column: 7, scope: !131)
!1375 = !DILocation(line: 307, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !126, line: 307, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !126, line: 303, column: 5)
!1378 = !DILocation(line: 307, column: 30, scope: !1376)
!1379 = !DILocation(line: 307, column: 27, scope: !1376)
!1380 = !DILocation(line: 308, column: 11, scope: !1376)
!1381 = !DILocation(line: 308, column: 15, scope: !1376)
!1382 = !DILocation(line: 308, column: 28, scope: !1376)
!1383 = !DILocation(line: 308, column: 25, scope: !1376)
!1384 = !DILocation(line: 309, column: 15, scope: !1376)
!1385 = !DILocation(line: 309, column: 19, scope: !1376)
!1386 = !DILocation(line: 309, column: 33, scope: !1376)
!1387 = !DILocation(line: 310, column: 19, scope: !1376)
!1388 = !DILocation(line: 310, column: 22, scope: !1376)
!1389 = !DILocation(line: 310, column: 32, scope: !1376)
!1390 = !DILocation(line: 311, column: 19, scope: !1376)
!1391 = !DILocation(line: 311, column: 30, scope: !1376)
!1392 = !DILocation(line: 311, column: 45, scope: !1376)
!1393 = !DILocation(line: 311, column: 22, scope: !1376)
!1394 = !DILocation(line: 311, column: 56, scope: !1376)
!1395 = !DILocation(line: 307, column: 11, scope: !1377)
!1396 = !DILocation(line: 314, column: 9, scope: !1376)
!1397 = !DILocation(line: 316, column: 23, scope: !1377)
!1398 = !DILocation(line: 316, column: 21, scope: !1377)
!1399 = !DILocation(line: 317, column: 25, scope: !1377)
!1400 = !DILocation(line: 317, column: 23, scope: !1377)
!1401 = !DILocation(line: 318, column: 5, scope: !1377)
!1402 = !DILocation(line: 327, column: 3, scope: !131)
!1403 = !DILocation(line: 331, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !131, file: !126, line: 331, column: 7)
!1405 = !DILocation(line: 331, column: 7, scope: !131)
!1406 = !DILocation(line: 332, column: 7, scope: !1404)
!1407 = !DILocation(line: 332, column: 5, scope: !1404)
!1408 = !DILocation(line: 338, column: 16, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !126, line: 334, column: 5)
!1410 = !DILocation(line: 338, column: 31, scope: !1409)
!1411 = !DILocation(line: 338, column: 7, scope: !1409)
!1412 = !DILocation(line: 346, column: 12, scope: !131)
!1413 = !DILocation(line: 346, column: 20, scope: !131)
!1414 = !DILocation(line: 346, column: 30, scope: !131)
!1415 = !DILocation(line: 347, column: 12, scope: !131)
!1416 = !DILocation(line: 347, column: 23, scope: !131)
!1417 = !DILocation(line: 346, column: 3, scope: !131)
!1418 = !DILocation(line: 350, column: 3, scope: !131)
!1419 = !DILocation(line: 356, column: 1, scope: !131)
!1420 = distinct !DISubprogram(name: "error_at_line", scope: !126, file: !126, line: 359, type: !1421, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !76)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !60, !60, !74, !6, !74, null}
!1423 = !DILocalVariable(name: "status", arg: 1, scope: !1420, file: !126, line: 359, type: !60)
!1424 = !DILocation(line: 359, column: 20, scope: !1420)
!1425 = !DILocalVariable(name: "errnum", arg: 2, scope: !1420, file: !126, line: 359, type: !60)
!1426 = !DILocation(line: 359, column: 32, scope: !1420)
!1427 = !DILocalVariable(name: "file_name", arg: 3, scope: !1420, file: !126, line: 359, type: !74)
!1428 = !DILocation(line: 359, column: 52, scope: !1420)
!1429 = !DILocalVariable(name: "line_number", arg: 4, scope: !1420, file: !126, line: 360, type: !6)
!1430 = !DILocation(line: 360, column: 29, scope: !1420)
!1431 = !DILocalVariable(name: "message", arg: 5, scope: !1420, file: !126, line: 360, type: !74)
!1432 = !DILocation(line: 360, column: 54, scope: !1420)
!1433 = !DILocalVariable(name: "ap", scope: !1420, file: !126, line: 362, type: !134)
!1434 = !DILocation(line: 362, column: 11, scope: !1420)
!1435 = !DILocation(line: 363, column: 3, scope: !1420)
!1436 = !DILocation(line: 364, column: 3, scope: !1420)
!1437 = !DILocation(line: 366, column: 3, scope: !1420)
!1438 = !DILocation(line: 367, column: 1, scope: !1420)
!1439 = distinct !DISubprogram(name: "fdadvise", scope: !274, file: !274, line: 25, type: !1440, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !76)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !60, !1442, !1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !135, line: 63, baseType: !813)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !48, line: 51, baseType: !47)
!1444 = !DILocalVariable(name: "fd", arg: 1, scope: !1439, file: !274, line: 25, type: !60)
!1445 = !DILocation(line: 25, column: 15, scope: !1439)
!1446 = !DILocalVariable(name: "offset", arg: 2, scope: !1439, file: !274, line: 25, type: !1442)
!1447 = !DILocation(line: 25, column: 25, scope: !1439)
!1448 = !DILocalVariable(name: "len", arg: 3, scope: !1439, file: !274, line: 25, type: !1442)
!1449 = !DILocation(line: 25, column: 39, scope: !1439)
!1450 = !DILocalVariable(name: "advice", arg: 4, scope: !1439, file: !274, line: 25, type: !1443)
!1451 = !DILocation(line: 25, column: 54, scope: !1439)
!1452 = !DILocation(line: 28, column: 3, scope: !1439)
!1453 = !DILocation(line: 30, column: 1, scope: !1439)
!1454 = distinct !DISubprogram(name: "fadvise", scope: !274, file: !274, line: 33, type: !1455, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !273, retainedNodes: !76)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1457, !1443}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1459, file: !791, line: 51, baseType: !60, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1459, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1459, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1459, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1459, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1459, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1459, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1459, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1459, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1459, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1459, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1459, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1459, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1459, file: !791, line: 70, baseType: !1475, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1459, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1459, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1459, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1459, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1459, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1459, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1459, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1459, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1459, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1459, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1459, file: !791, line: 93, baseType: !1475, size: 64, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1459, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1459, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1459, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1459, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1491 = !DILocalVariable(name: "fp", arg: 1, scope: !1454, file: !274, line: 33, type: !1457)
!1492 = !DILocation(line: 33, column: 16, scope: !1454)
!1493 = !DILocalVariable(name: "advice", arg: 2, scope: !1454, file: !274, line: 33, type: !1443)
!1494 = !DILocation(line: 33, column: 30, scope: !1454)
!1495 = !DILocation(line: 35, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1454, file: !274, line: 35, column: 7)
!1497 = !DILocation(line: 35, column: 7, scope: !1454)
!1498 = !DILocation(line: 36, column: 23, scope: !1496)
!1499 = !DILocation(line: 36, column: 15, scope: !1496)
!1500 = !DILocation(line: 36, column: 34, scope: !1496)
!1501 = !DILocation(line: 36, column: 5, scope: !1496)
!1502 = !DILocation(line: 37, column: 1, scope: !1454)
!1503 = distinct !DISubprogram(name: "rpl_fclose", scope: !277, file: !277, line: 58, type: !1504, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !76)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!60, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1508, file: !791, line: 51, baseType: !60, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1508, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1508, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1508, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1508, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1508, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1508, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1508, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1508, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1508, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1508, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1508, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1508, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1508, file: !791, line: 70, baseType: !1524, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1508, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1508, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1508, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1508, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1508, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1508, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1508, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1508, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1508, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1508, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1508, file: !791, line: 93, baseType: !1524, size: 64, offset: 1344)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1508, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1508, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1508, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1508, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1540 = !DILocalVariable(name: "fp", arg: 1, scope: !1503, file: !277, line: 58, type: !1506)
!1541 = !DILocation(line: 58, column: 19, scope: !1503)
!1542 = !DILocalVariable(name: "saved_errno", scope: !1503, file: !277, line: 60, type: !60)
!1543 = !DILocation(line: 60, column: 7, scope: !1503)
!1544 = !DILocalVariable(name: "fd", scope: !1503, file: !277, line: 63, type: !60)
!1545 = !DILocation(line: 63, column: 7, scope: !1503)
!1546 = !DILocation(line: 63, column: 20, scope: !1503)
!1547 = !DILocation(line: 63, column: 12, scope: !1503)
!1548 = !DILocation(line: 64, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1503, file: !277, line: 64, column: 7)
!1550 = !DILocation(line: 64, column: 10, scope: !1549)
!1551 = !DILocation(line: 64, column: 7, scope: !1503)
!1552 = !DILocation(line: 65, column: 28, scope: !1549)
!1553 = !DILocation(line: 65, column: 12, scope: !1549)
!1554 = !DILocation(line: 65, column: 5, scope: !1549)
!1555 = !DILocation(line: 70, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1503, file: !277, line: 70, column: 7)
!1557 = !DILocation(line: 70, column: 23, scope: !1556)
!1558 = !DILocation(line: 70, column: 41, scope: !1556)
!1559 = !DILocation(line: 70, column: 33, scope: !1556)
!1560 = !DILocation(line: 70, column: 26, scope: !1556)
!1561 = !DILocation(line: 70, column: 59, scope: !1556)
!1562 = !DILocation(line: 71, column: 7, scope: !1556)
!1563 = !DILocation(line: 71, column: 18, scope: !1556)
!1564 = !DILocation(line: 71, column: 10, scope: !1556)
!1565 = !DILocation(line: 70, column: 7, scope: !1503)
!1566 = !DILocation(line: 72, column: 19, scope: !1556)
!1567 = !DILocation(line: 72, column: 17, scope: !1556)
!1568 = !DILocation(line: 72, column: 5, scope: !1556)
!1569 = !DILocalVariable(name: "result", scope: !1503, file: !277, line: 74, type: !60)
!1570 = !DILocation(line: 74, column: 7, scope: !1503)
!1571 = !DILocation(line: 100, column: 28, scope: !1503)
!1572 = !DILocation(line: 100, column: 12, scope: !1503)
!1573 = !DILocation(line: 100, column: 10, scope: !1503)
!1574 = !DILocation(line: 105, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1503, file: !277, line: 105, column: 7)
!1576 = !DILocation(line: 105, column: 19, scope: !1575)
!1577 = !DILocation(line: 105, column: 7, scope: !1503)
!1578 = !DILocation(line: 107, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !277, line: 106, column: 5)
!1580 = !DILocation(line: 107, column: 7, scope: !1579)
!1581 = !DILocation(line: 107, column: 13, scope: !1579)
!1582 = !DILocation(line: 108, column: 14, scope: !1579)
!1583 = !DILocation(line: 109, column: 5, scope: !1579)
!1584 = !DILocation(line: 111, column: 10, scope: !1503)
!1585 = !DILocation(line: 111, column: 3, scope: !1503)
!1586 = !DILocation(line: 112, column: 1, scope: !1503)
!1587 = distinct !DISubprogram(name: "rpl_fflush", scope: !279, file: !279, line: 130, type: !1588, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !76)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!60, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1592, file: !791, line: 51, baseType: !60, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1592, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1592, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1592, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1592, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1592, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1592, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1592, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1592, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1592, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1592, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1592, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1592, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1592, file: !791, line: 70, baseType: !1608, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1592, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1592, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1592, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1592, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1592, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1592, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1592, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1592, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1592, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1592, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1592, file: !791, line: 93, baseType: !1608, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1592, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1592, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1592, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1592, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1624 = !DILocalVariable(name: "stream", arg: 1, scope: !1587, file: !279, line: 130, type: !1590)
!1625 = !DILocation(line: 130, column: 19, scope: !1587)
!1626 = !DILocation(line: 151, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1587, file: !279, line: 151, column: 7)
!1628 = !DILocation(line: 151, column: 14, scope: !1627)
!1629 = !DILocation(line: 151, column: 22, scope: !1627)
!1630 = !DILocation(line: 151, column: 27, scope: !1627)
!1631 = !DILocation(line: 151, column: 7, scope: !1587)
!1632 = !DILocation(line: 152, column: 20, scope: !1627)
!1633 = !DILocation(line: 152, column: 12, scope: !1627)
!1634 = !DILocation(line: 152, column: 5, scope: !1627)
!1635 = !DILocation(line: 157, column: 44, scope: !1587)
!1636 = !DILocation(line: 157, column: 3, scope: !1587)
!1637 = !DILocation(line: 159, column: 18, scope: !1587)
!1638 = !DILocation(line: 159, column: 10, scope: !1587)
!1639 = !DILocation(line: 159, column: 3, scope: !1587)
!1640 = !DILocation(line: 236, column: 1, scope: !1587)
!1641 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !279, file: !279, line: 42, type: !1642, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !278, retainedNodes: !76)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1590}
!1644 = !DILocalVariable(name: "fp", arg: 1, scope: !1641, file: !279, line: 42, type: !1590)
!1645 = !DILocation(line: 42, column: 48, scope: !1641)
!1646 = !DILocation(line: 44, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !279, line: 44, column: 7)
!1648 = !DILocation(line: 44, column: 12, scope: !1647)
!1649 = !DILocation(line: 44, column: 19, scope: !1647)
!1650 = !DILocation(line: 44, column: 7, scope: !1641)
!1651 = !DILocation(line: 46, column: 13, scope: !1647)
!1652 = !DILocation(line: 46, column: 5, scope: !1647)
!1653 = !DILocation(line: 47, column: 1, scope: !1641)
!1654 = distinct !DISubprogram(name: "fpurge", scope: !281, file: !281, line: 32, type: !1655, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !76)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!60, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1659, file: !791, line: 51, baseType: !60, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1659, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1659, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1659, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1659, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1659, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1659, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1659, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1659, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1659, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1659, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1659, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1659, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1659, file: !791, line: 70, baseType: !1675, size: 64, offset: 832)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1659, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1659, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1659, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1659, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1659, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1659, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1659, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1659, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1659, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1659, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1659, file: !791, line: 93, baseType: !1675, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1659, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1659, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1659, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1659, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1691 = !DILocalVariable(name: "fp", arg: 1, scope: !1654, file: !281, line: 32, type: !1657)
!1692 = !DILocation(line: 32, column: 15, scope: !1654)
!1693 = !DILocation(line: 36, column: 13, scope: !1654)
!1694 = !DILocation(line: 36, column: 3, scope: !1654)
!1695 = !DILocation(line: 38, column: 3, scope: !1654)
!1696 = distinct !DISubprogram(name: "rpl_fseeko", scope: !283, file: !283, line: 28, type: !1697, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !76)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!60, !1699, !1442, !60}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1702)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1701, file: !791, line: 51, baseType: !60, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1701, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1701, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1701, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1701, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1701, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1701, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1701, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1701, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1701, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1701, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1701, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1701, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1701, file: !791, line: 70, baseType: !1717, size: 64, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1701, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1701, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1701, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1701, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1701, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1701, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1701, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1701, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1701, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1701, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1701, file: !791, line: 93, baseType: !1717, size: 64, offset: 1344)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1701, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1701, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1701, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1701, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1733 = !DILocalVariable(name: "fp", arg: 1, scope: !1696, file: !283, line: 28, type: !1699)
!1734 = !DILocation(line: 28, column: 15, scope: !1696)
!1735 = !DILocalVariable(name: "offset", arg: 2, scope: !1696, file: !283, line: 28, type: !1442)
!1736 = !DILocation(line: 28, column: 25, scope: !1696)
!1737 = !DILocalVariable(name: "whence", arg: 3, scope: !1696, file: !283, line: 28, type: !60)
!1738 = !DILocation(line: 28, column: 37, scope: !1696)
!1739 = !DILocation(line: 55, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1696, file: !283, line: 55, column: 7)
!1741 = !DILocation(line: 55, column: 12, scope: !1740)
!1742 = !DILocation(line: 55, column: 28, scope: !1740)
!1743 = !DILocation(line: 55, column: 33, scope: !1740)
!1744 = !DILocation(line: 55, column: 25, scope: !1740)
!1745 = !DILocation(line: 56, column: 7, scope: !1740)
!1746 = !DILocation(line: 56, column: 10, scope: !1740)
!1747 = !DILocation(line: 56, column: 15, scope: !1740)
!1748 = !DILocation(line: 56, column: 32, scope: !1740)
!1749 = !DILocation(line: 56, column: 37, scope: !1740)
!1750 = !DILocation(line: 56, column: 29, scope: !1740)
!1751 = !DILocation(line: 57, column: 7, scope: !1740)
!1752 = !DILocation(line: 57, column: 10, scope: !1740)
!1753 = !DILocation(line: 57, column: 15, scope: !1740)
!1754 = !DILocation(line: 57, column: 29, scope: !1740)
!1755 = !DILocation(line: 55, column: 7, scope: !1696)
!1756 = !DILocalVariable(name: "pos", scope: !1757, file: !283, line: 123, type: !1442)
!1757 = distinct !DILexicalBlock(scope: !1740, file: !283, line: 119, column: 5)
!1758 = !DILocation(line: 123, column: 13, scope: !1757)
!1759 = !DILocation(line: 123, column: 34, scope: !1757)
!1760 = !DILocation(line: 123, column: 26, scope: !1757)
!1761 = !DILocation(line: 123, column: 39, scope: !1757)
!1762 = !DILocation(line: 123, column: 47, scope: !1757)
!1763 = !DILocation(line: 123, column: 19, scope: !1757)
!1764 = !DILocation(line: 124, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1757, file: !283, line: 124, column: 11)
!1766 = !DILocation(line: 124, column: 15, scope: !1765)
!1767 = !DILocation(line: 124, column: 11, scope: !1757)
!1768 = !DILocation(line: 130, column: 11, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !283, line: 125, column: 9)
!1770 = !DILocation(line: 135, column: 7, scope: !1757)
!1771 = !DILocation(line: 135, column: 12, scope: !1757)
!1772 = !DILocation(line: 135, column: 19, scope: !1757)
!1773 = !DILocation(line: 136, column: 22, scope: !1757)
!1774 = !DILocation(line: 136, column: 7, scope: !1757)
!1775 = !DILocation(line: 136, column: 12, scope: !1757)
!1776 = !DILocation(line: 136, column: 20, scope: !1757)
!1777 = !DILocation(line: 167, column: 7, scope: !1757)
!1778 = !DILocation(line: 169, column: 18, scope: !1696)
!1779 = !DILocation(line: 169, column: 22, scope: !1696)
!1780 = !DILocation(line: 169, column: 30, scope: !1696)
!1781 = !DILocation(line: 169, column: 10, scope: !1696)
!1782 = !DILocation(line: 169, column: 3, scope: !1696)
!1783 = !DILocation(line: 170, column: 1, scope: !1696)
!1784 = distinct !DISubprogram(name: "getprogname", scope: !285, file: !285, line: 54, type: !1785, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !76)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!74}
!1787 = !DILocation(line: 58, column: 10, scope: !1784)
!1788 = !DILocation(line: 58, column: 3, scope: !1784)
!1789 = distinct !DISubprogram(name: "mbbuf_init", scope: !847, file: !847, line: 56, type: !1790, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !76)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !1792, !57, !330, !1798}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !847, line: 50, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !847, line: 43, size: 320, elements: !1795)
!1795 = !{!1796, !1797, !1832, !1833, !1834}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1794, file: !847, line: 45, baseType: !57, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !1794, file: !847, line: 46, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1800, file: !791, line: 51, baseType: !60, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1800, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1800, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1800, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1800, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1800, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1800, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1800, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1800, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1800, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1800, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1800, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1800, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1800, file: !791, line: 70, baseType: !1816, size: 64, offset: 832)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1800, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1800, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1800, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1800, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1800, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1800, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1800, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1800, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1800, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1800, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1800, file: !791, line: 93, baseType: !1816, size: 64, offset: 1344)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1800, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1800, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1800, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1800, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1794, file: !847, line: 47, baseType: !330, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1794, file: !847, line: 48, baseType: !330, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1794, file: !847, line: 49, baseType: !330, size: 64, offset: 256)
!1835 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1789, file: !847, line: 56, type: !1792)
!1836 = !DILocation(line: 56, column: 22, scope: !1789)
!1837 = !DILocalVariable(name: "buffer", arg: 2, scope: !1789, file: !847, line: 56, type: !57)
!1838 = !DILocation(line: 56, column: 35, scope: !1789)
!1839 = !DILocalVariable(name: "size", arg: 3, scope: !1789, file: !847, line: 56, type: !330)
!1840 = !DILocation(line: 56, column: 49, scope: !1789)
!1841 = !DILocalVariable(name: "fp", arg: 4, scope: !1789, file: !847, line: 56, type: !1798)
!1842 = !DILocation(line: 56, column: 61, scope: !1789)
!1843 = !DILocation(line: 58, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1789, file: !847, line: 58, column: 7)
!1845 = !DILocation(line: 58, column: 12, scope: !1844)
!1846 = !DILocation(line: 58, column: 7, scope: !1789)
!1847 = !DILocation(line: 59, column: 5, scope: !1844)
!1848 = !DILocation(line: 60, column: 19, scope: !1789)
!1849 = !DILocation(line: 60, column: 3, scope: !1789)
!1850 = !DILocation(line: 60, column: 10, scope: !1789)
!1851 = !DILocation(line: 60, column: 17, scope: !1789)
!1852 = !DILocation(line: 61, column: 15, scope: !1789)
!1853 = !DILocation(line: 61, column: 3, scope: !1789)
!1854 = !DILocation(line: 61, column: 10, scope: !1789)
!1855 = !DILocation(line: 61, column: 13, scope: !1789)
!1856 = !DILocation(line: 62, column: 17, scope: !1789)
!1857 = !DILocation(line: 62, column: 3, scope: !1789)
!1858 = !DILocation(line: 62, column: 10, scope: !1789)
!1859 = !DILocation(line: 62, column: 15, scope: !1789)
!1860 = !DILocation(line: 63, column: 3, scope: !1789)
!1861 = !DILocation(line: 63, column: 10, scope: !1789)
!1862 = !DILocation(line: 63, column: 17, scope: !1789)
!1863 = !DILocation(line: 64, column: 3, scope: !1789)
!1864 = !DILocation(line: 64, column: 10, scope: !1789)
!1865 = !DILocation(line: 64, column: 17, scope: !1789)
!1866 = !DILocation(line: 65, column: 1, scope: !1789)
!1867 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !847, file: !847, line: 71, type: !1868, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !76)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1870, !1792}
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !290, line: 143, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 138, size: 64, elements: !1872)
!1872 = !{!1873, !1874, !1875}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !1871, file: !290, line: 140, baseType: !886, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1871, file: !290, line: 141, baseType: !253, size: 8, offset: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1871, file: !290, line: 142, baseType: !253, size: 8, offset: 40)
!1876 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1867, file: !847, line: 71, type: !1792)
!1877 = !DILocation(line: 71, column: 26, scope: !1867)
!1878 = !DILocalVariable(name: "available", scope: !1867, file: !847, line: 73, type: !330)
!1879 = !DILocation(line: 73, column: 9, scope: !1867)
!1880 = !DILocation(line: 73, column: 21, scope: !1867)
!1881 = !DILocation(line: 73, column: 28, scope: !1867)
!1882 = !DILocation(line: 73, column: 37, scope: !1867)
!1883 = !DILocation(line: 73, column: 44, scope: !1867)
!1884 = !DILocation(line: 73, column: 35, scope: !1867)
!1885 = !DILocation(line: 75, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1867, file: !847, line: 75, column: 7)
!1887 = !DILocation(line: 75, column: 17, scope: !1886)
!1888 = !DILocation(line: 75, column: 32, scope: !1886)
!1889 = !DILocation(line: 75, column: 43, scope: !1886)
!1890 = !DILocation(line: 75, column: 50, scope: !1886)
!1891 = !DILocation(line: 75, column: 37, scope: !1886)
!1892 = !DILocation(line: 75, column: 7, scope: !1867)
!1893 = !DILocalVariable(name: "start", scope: !1894, file: !847, line: 77, type: !330)
!1894 = distinct !DILexicalBlock(scope: !1886, file: !847, line: 76, column: 5)
!1895 = !DILocation(line: 77, column: 13, scope: !1894)
!1896 = !DILocation(line: 78, column: 17, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !847, line: 78, column: 11)
!1898 = !DILocation(line: 78, column: 15, scope: !1897)
!1899 = !DILocation(line: 78, column: 11, scope: !1894)
!1900 = !DILocation(line: 79, column: 15, scope: !1897)
!1901 = !DILocation(line: 79, column: 9, scope: !1897)
!1902 = !DILocation(line: 82, column: 20, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !847, line: 81, column: 9)
!1904 = !DILocation(line: 82, column: 27, scope: !1903)
!1905 = !DILocation(line: 82, column: 35, scope: !1903)
!1906 = !DILocation(line: 82, column: 42, scope: !1903)
!1907 = !DILocation(line: 82, column: 51, scope: !1903)
!1908 = !DILocation(line: 82, column: 58, scope: !1903)
!1909 = !DILocation(line: 82, column: 49, scope: !1903)
!1910 = !DILocation(line: 82, column: 66, scope: !1903)
!1911 = !DILocation(line: 82, column: 11, scope: !1903)
!1912 = !DILocation(line: 83, column: 19, scope: !1903)
!1913 = !DILocation(line: 83, column: 17, scope: !1903)
!1914 = !DILocation(line: 85, column: 30, scope: !1894)
!1915 = !DILocation(line: 85, column: 37, scope: !1894)
!1916 = !DILocation(line: 85, column: 46, scope: !1894)
!1917 = !DILocation(line: 85, column: 44, scope: !1894)
!1918 = !DILocation(line: 85, column: 56, scope: !1894)
!1919 = !DILocation(line: 85, column: 63, scope: !1894)
!1920 = !DILocation(line: 85, column: 70, scope: !1894)
!1921 = !DILocation(line: 85, column: 68, scope: !1894)
!1922 = !DILocation(line: 86, column: 30, scope: !1894)
!1923 = !DILocation(line: 86, column: 37, scope: !1894)
!1924 = !DILocation(line: 85, column: 23, scope: !1894)
!1925 = !DILocation(line: 86, column: 43, scope: !1894)
!1926 = !DILocation(line: 86, column: 41, scope: !1894)
!1927 = !DILocation(line: 85, column: 7, scope: !1894)
!1928 = !DILocation(line: 85, column: 14, scope: !1894)
!1929 = !DILocation(line: 85, column: 21, scope: !1894)
!1930 = !DILocation(line: 87, column: 7, scope: !1894)
!1931 = !DILocation(line: 87, column: 14, scope: !1894)
!1932 = !DILocation(line: 87, column: 21, scope: !1894)
!1933 = !DILocation(line: 88, column: 19, scope: !1894)
!1934 = !DILocation(line: 88, column: 26, scope: !1894)
!1935 = !DILocation(line: 88, column: 35, scope: !1894)
!1936 = !DILocation(line: 88, column: 42, scope: !1894)
!1937 = !DILocation(line: 88, column: 33, scope: !1894)
!1938 = !DILocation(line: 88, column: 17, scope: !1894)
!1939 = !DILocation(line: 89, column: 5, scope: !1894)
!1940 = !DILocation(line: 90, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1867, file: !847, line: 90, column: 7)
!1942 = !DILocation(line: 90, column: 17, scope: !1941)
!1943 = !DILocation(line: 90, column: 7, scope: !1867)
!1944 = !DILocation(line: 91, column: 21, scope: !1941)
!1945 = !DILocation(line: 91, column: 5, scope: !1941)
!1946 = !DILocalVariable(name: "g", scope: !1867, file: !847, line: 92, type: !1870)
!1947 = !DILocation(line: 92, column: 10, scope: !1867)
!1948 = !DILocation(line: 92, column: 25, scope: !1867)
!1949 = !DILocation(line: 92, column: 32, scope: !1867)
!1950 = !DILocation(line: 92, column: 41, scope: !1867)
!1951 = !DILocation(line: 92, column: 48, scope: !1867)
!1952 = !DILocation(line: 92, column: 39, scope: !1867)
!1953 = !DILocation(line: 93, column: 25, scope: !1867)
!1954 = !DILocation(line: 93, column: 32, scope: !1867)
!1955 = !DILocation(line: 93, column: 41, scope: !1867)
!1956 = !DILocation(line: 93, column: 48, scope: !1867)
!1957 = !DILocation(line: 93, column: 39, scope: !1867)
!1958 = !DILocation(line: 92, column: 14, scope: !1867)
!1959 = !DILocation(line: 94, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1867, file: !847, line: 94, column: 7)
!1961 = !DILocation(line: 94, column: 9, scope: !1960)
!1962 = !DILocation(line: 94, column: 7, scope: !1867)
!1963 = !DILocation(line: 95, column: 24, scope: !1960)
!1964 = !DILocation(line: 95, column: 22, scope: !1960)
!1965 = !DILocation(line: 95, column: 5, scope: !1960)
!1966 = !DILocation(line: 95, column: 12, scope: !1960)
!1967 = !DILocation(line: 95, column: 19, scope: !1960)
!1968 = !DILocation(line: 99, column: 30, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1960, file: !847, line: 97, column: 5)
!1970 = !DILocation(line: 99, column: 37, scope: !1969)
!1971 = !DILocation(line: 99, column: 44, scope: !1969)
!1972 = !DILocation(line: 99, column: 51, scope: !1969)
!1973 = !DILocation(line: 99, column: 57, scope: !1969)
!1974 = !DILocation(line: 99, column: 14, scope: !1969)
!1975 = !DILocation(line: 99, column: 9, scope: !1969)
!1976 = !DILocation(line: 99, column: 12, scope: !1969)
!1977 = !DILocation(line: 101, column: 10, scope: !1867)
!1978 = !DILocation(line: 101, column: 3, scope: !1867)
!1979 = !DILocation(line: 102, column: 1, scope: !1867)
!1980 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !847, file: !847, line: 107, type: !1981, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !76)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!57, !1792, !1870}
!1983 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1980, file: !847, line: 107, type: !1792)
!1984 = !DILocation(line: 107, column: 29, scope: !1980)
!1985 = !DILocalVariable(name: "g", arg: 2, scope: !1980, file: !847, line: 107, type: !1870)
!1986 = !DILocation(line: 107, column: 43, scope: !1980)
!1987 = !DILocation(line: 109, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !847, line: 109, column: 7)
!1989 = !DILocation(line: 109, column: 14, scope: !1988)
!1990 = !DILocation(line: 109, column: 25, scope: !1988)
!1991 = !DILocation(line: 109, column: 23, scope: !1988)
!1992 = !DILocation(line: 109, column: 21, scope: !1988)
!1993 = !DILocation(line: 109, column: 7, scope: !1980)
!1994 = !DILocation(line: 110, column: 5, scope: !1988)
!1995 = !DILocation(line: 111, column: 10, scope: !1980)
!1996 = !DILocation(line: 111, column: 17, scope: !1980)
!1997 = !DILocation(line: 111, column: 27, scope: !1980)
!1998 = !DILocation(line: 111, column: 34, scope: !1980)
!1999 = !DILocation(line: 111, column: 45, scope: !1980)
!2000 = !DILocation(line: 111, column: 43, scope: !1980)
!2001 = !DILocation(line: 111, column: 41, scope: !1980)
!2002 = !DILocation(line: 111, column: 24, scope: !1980)
!2003 = !DILocation(line: 111, column: 3, scope: !1980)
!2004 = distinct !DISubprogram(name: "mcel_ch", scope: !290, file: !290, line: 167, type: !2005, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!2007, !886, !98}
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !290, line: 143, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 138, size: 64, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !2008, file: !290, line: 140, baseType: !886, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2008, file: !290, line: 141, baseType: !253, size: 8, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2008, file: !290, line: 142, baseType: !253, size: 8, offset: 40)
!2013 = !DILocalVariable(name: "ch", arg: 1, scope: !2004, file: !290, line: 167, type: !886)
!2014 = !DILocation(line: 167, column: 19, scope: !2004)
!2015 = !DILocalVariable(name: "len", arg: 2, scope: !2004, file: !290, line: 167, type: !98)
!2016 = !DILocation(line: 167, column: 30, scope: !2004)
!2017 = !DILocation(line: 169, column: 3, scope: !2004)
!2018 = !DILocation(line: 170, column: 3, scope: !2004)
!2019 = !DILocation(line: 171, column: 3, scope: !2004)
!2020 = !DILocation(line: 172, column: 19, scope: !2004)
!2021 = !DILocation(line: 172, column: 26, scope: !2004)
!2022 = !DILocation(line: 172, column: 37, scope: !2004)
!2023 = !DILocation(line: 172, column: 3, scope: !2004)
!2024 = distinct !DISubprogram(name: "mcel_err", scope: !290, file: !290, line: 175, type: !2025, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2007, !253}
!2027 = !DILocalVariable(name: "err", arg: 1, scope: !2024, file: !290, line: 175, type: !253)
!2028 = !DILocation(line: 175, column: 25, scope: !2024)
!2029 = !DILocation(line: 177, column: 3, scope: !2024)
!2030 = !DILocation(line: 178, column: 19, scope: !2024)
!2031 = !DILocation(line: 178, column: 27, scope: !2024)
!2032 = !DILocation(line: 178, column: 3, scope: !2024)
!2033 = distinct !DISubprogram(name: "mcel_cmp", scope: !290, file: !290, line: 184, type: !2034, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!60, !2007, !2007}
!2036 = !DILocalVariable(name: "c1", arg: 1, scope: !2033, file: !290, line: 184, type: !2007)
!2037 = !DILocation(line: 184, column: 18, scope: !2033)
!2038 = !DILocalVariable(name: "c2", arg: 2, scope: !2033, file: !290, line: 184, type: !2007)
!2039 = !DILocation(line: 184, column: 29, scope: !2033)
!2040 = !DILocalVariable(name: "ch1", scope: !2033, file: !290, line: 186, type: !60)
!2041 = !DILocation(line: 186, column: 7, scope: !2033)
!2042 = !DILocation(line: 186, column: 16, scope: !2033)
!2043 = !DILocalVariable(name: "ch2", scope: !2033, file: !290, line: 186, type: !60)
!2044 = !DILocation(line: 186, column: 20, scope: !2033)
!2045 = !DILocation(line: 186, column: 29, scope: !2033)
!2046 = !DILocation(line: 187, column: 15, scope: !2033)
!2047 = !DILocation(line: 187, column: 12, scope: !2033)
!2048 = !DILocation(line: 187, column: 24, scope: !2033)
!2049 = !DILocation(line: 187, column: 21, scope: !2033)
!2050 = !DILocation(line: 187, column: 19, scope: !2033)
!2051 = !DILocation(line: 187, column: 29, scope: !2033)
!2052 = !DILocation(line: 187, column: 57, scope: !2033)
!2053 = !DILocation(line: 187, column: 63, scope: !2033)
!2054 = !DILocation(line: 187, column: 61, scope: !2033)
!2055 = !DILocation(line: 187, column: 54, scope: !2033)
!2056 = !DILocation(line: 187, column: 3, scope: !2033)
!2057 = distinct !DISubprogram(name: "mcel_eq", scope: !290, file: !290, line: 192, type: !2058, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!65, !2007, !2007}
!2060 = !DILocalVariable(name: "c1", arg: 1, scope: !2057, file: !290, line: 192, type: !2007)
!2061 = !DILocation(line: 192, column: 17, scope: !2057)
!2062 = !DILocalVariable(name: "c2", arg: 2, scope: !2057, file: !290, line: 192, type: !2007)
!2063 = !DILocation(line: 192, column: 28, scope: !2057)
!2064 = !DILocation(line: 194, column: 12, scope: !2057)
!2065 = !DILocation(line: 194, column: 10, scope: !2057)
!2066 = !DILocation(line: 194, column: 3, scope: !2057)
!2067 = distinct !DISubprogram(name: "mcel_tocmp", scope: !290, file: !290, line: 201, type: !2068, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!60, !2070, !2007, !2007}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!1202, !1202}
!2073 = !DILocalVariable(name: "to", arg: 1, scope: !2067, file: !290, line: 201, type: !2070)
!2074 = !DILocation(line: 201, column: 22, scope: !2067)
!2075 = !DILocalVariable(name: "c1", arg: 2, scope: !2067, file: !290, line: 201, type: !2007)
!2076 = !DILocation(line: 201, column: 43, scope: !2067)
!2077 = !DILocalVariable(name: "c2", arg: 3, scope: !2067, file: !290, line: 201, type: !2007)
!2078 = !DILocation(line: 201, column: 54, scope: !2067)
!2079 = !DILocalVariable(name: "cmp", scope: !2067, file: !290, line: 203, type: !60)
!2080 = !DILocation(line: 203, column: 7, scope: !2067)
!2081 = !DILocation(line: 203, column: 13, scope: !2067)
!2082 = !DILocation(line: 204, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2067, file: !290, line: 204, column: 7)
!2084 = !DILocation(line: 204, column: 7, scope: !2067)
!2085 = !DILocation(line: 205, column: 12, scope: !2083)
!2086 = !DILocation(line: 205, column: 5, scope: !2083)
!2087 = !DILocalVariable(name: "ch1", scope: !2067, file: !290, line: 206, type: !60)
!2088 = !DILocation(line: 206, column: 7, scope: !2067)
!2089 = !DILocation(line: 206, column: 13, scope: !2067)
!2090 = !DILocation(line: 206, column: 20, scope: !2067)
!2091 = !DILocalVariable(name: "ch2", scope: !2067, file: !290, line: 206, type: !60)
!2092 = !DILocation(line: 206, column: 25, scope: !2067)
!2093 = !DILocation(line: 206, column: 31, scope: !2067)
!2094 = !DILocation(line: 206, column: 38, scope: !2067)
!2095 = !DILocation(line: 207, column: 10, scope: !2067)
!2096 = !DILocation(line: 207, column: 16, scope: !2067)
!2097 = !DILocation(line: 207, column: 14, scope: !2067)
!2098 = !DILocation(line: 207, column: 3, scope: !2067)
!2099 = !DILocation(line: 208, column: 1, scope: !2067)
!2100 = distinct !DISubprogram(name: "mcel_isbasic", scope: !290, file: !290, line: 215, type: !2101, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!65, !58}
!2103 = !DILocalVariable(name: "c", arg: 1, scope: !2100, file: !290, line: 215, type: !58)
!2104 = !DILocation(line: 215, column: 20, scope: !2100)
!2105 = !DILocation(line: 217, column: 10, scope: !2100)
!2106 = !DILocation(line: 0, scope: !2100)
!2107 = !DILocation(line: 217, column: 3, scope: !2100)
!2108 = distinct !DISubprogram(name: "mcel_scan", scope: !290, file: !290, line: 230, type: !2109, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2007, !74, !74}
!2111 = !DILocalVariable(name: "p", arg: 1, scope: !2108, file: !290, line: 230, type: !74)
!2112 = !DILocation(line: 230, column: 24, scope: !2108)
!2113 = !DILocalVariable(name: "lim", arg: 2, scope: !2108, file: !290, line: 230, type: !74)
!2114 = !DILocation(line: 230, column: 39, scope: !2108)
!2115 = !DILocalVariable(name: "c", scope: !2108, file: !290, line: 235, type: !58)
!2116 = !DILocation(line: 235, column: 8, scope: !2108)
!2117 = !DILocation(line: 235, column: 13, scope: !2108)
!2118 = !DILocation(line: 235, column: 12, scope: !2108)
!2119 = !DILocation(line: 236, column: 21, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !290, line: 236, column: 7)
!2121 = !DILocation(line: 236, column: 7, scope: !2120)
!2122 = !DILocation(line: 236, column: 7, scope: !2108)
!2123 = !DILocation(line: 237, column: 21, scope: !2120)
!2124 = !DILocation(line: 237, column: 12, scope: !2120)
!2125 = !DILocation(line: 237, column: 5, scope: !2120)
!2126 = !DILocalVariable(name: "mbs", scope: !2108, file: !290, line: 244, type: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !256, line: 6, baseType: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !258, line: 21, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 13, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2129, file: !258, line: 15, baseType: !60, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2129, file: !258, line: 20, baseType: !2133, size: 32, offset: 32)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !258, line: 16, size: 32, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2133, file: !258, line: 18, baseType: !6, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2133, file: !258, line: 19, baseType: !267, size: 32)
!2137 = !DILocation(line: 244, column: 13, scope: !2108)
!2138 = !DILocation(line: 244, column: 22, scope: !2108)
!2139 = !DILocation(line: 244, column: 30, scope: !2108)
!2140 = !DILocalVariable(name: "ch", scope: !2108, file: !290, line: 267, type: !886)
!2141 = !DILocation(line: 267, column: 12, scope: !2108)
!2142 = !DILocalVariable(name: "len", scope: !2108, file: !290, line: 268, type: !98)
!2143 = !DILocation(line: 268, column: 10, scope: !2108)
!2144 = !DILocation(line: 268, column: 31, scope: !2108)
!2145 = !DILocation(line: 268, column: 34, scope: !2108)
!2146 = !DILocation(line: 268, column: 40, scope: !2108)
!2147 = !DILocation(line: 268, column: 38, scope: !2108)
!2148 = !DILocation(line: 268, column: 16, scope: !2108)
!2149 = !DILocation(line: 274, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2108, file: !290, line: 274, column: 7)
!2151 = !DILocation(line: 274, column: 7, scope: !2108)
!2152 = !DILocation(line: 275, column: 22, scope: !2150)
!2153 = !DILocation(line: 275, column: 12, scope: !2150)
!2154 = !DILocation(line: 275, column: 5, scope: !2150)
!2155 = !DILocation(line: 279, column: 19, scope: !2108)
!2156 = !DILocation(line: 279, column: 23, scope: !2108)
!2157 = !DILocation(line: 279, column: 10, scope: !2108)
!2158 = !DILocation(line: 279, column: 3, scope: !2108)
!2159 = !DILocation(line: 280, column: 1, scope: !2108)
!2160 = distinct !DISubprogram(name: "mcel_scant", scope: !290, file: !290, line: 288, type: !2161, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2007, !74, !58}
!2163 = !DILocalVariable(name: "p", arg: 1, scope: !2160, file: !290, line: 288, type: !74)
!2164 = !DILocation(line: 288, column: 25, scope: !2160)
!2165 = !DILocalVariable(name: "terminator", arg: 2, scope: !2160, file: !290, line: 288, type: !58)
!2166 = !DILocation(line: 288, column: 33, scope: !2160)
!2167 = !DILocation(line: 291, column: 22, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !290, line: 291, column: 7)
!2169 = !DILocation(line: 291, column: 21, scope: !2168)
!2170 = !DILocation(line: 291, column: 7, scope: !2168)
!2171 = !DILocation(line: 291, column: 7, scope: !2160)
!2172 = !DILocation(line: 292, column: 22, scope: !2168)
!2173 = !DILocation(line: 292, column: 21, scope: !2168)
!2174 = !DILocation(line: 292, column: 12, scope: !2168)
!2175 = !DILocation(line: 292, column: 5, scope: !2168)
!2176 = !DILocalVariable(name: "lim", scope: !2160, file: !290, line: 296, type: !74)
!2177 = !DILocation(line: 296, column: 15, scope: !2160)
!2178 = !DILocation(line: 296, column: 21, scope: !2160)
!2179 = !DILocation(line: 296, column: 23, scope: !2160)
!2180 = !DILocalVariable(name: "i", scope: !2181, file: !290, line: 297, type: !60)
!2181 = distinct !DILexicalBlock(scope: !2160, file: !290, line: 297, column: 3)
!2182 = !DILocation(line: 297, column: 12, scope: !2181)
!2183 = !DILocation(line: 297, column: 8, scope: !2181)
!2184 = !DILocation(line: 297, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !290, line: 297, column: 3)
!2186 = !DILocation(line: 297, column: 21, scope: !2185)
!2187 = !DILocation(line: 297, column: 3, scope: !2181)
!2188 = !DILocation(line: 298, column: 13, scope: !2185)
!2189 = !DILocation(line: 298, column: 12, scope: !2185)
!2190 = !DILocation(line: 298, column: 20, scope: !2185)
!2191 = !DILocation(line: 298, column: 17, scope: !2185)
!2192 = !DILocation(line: 298, column: 9, scope: !2185)
!2193 = !DILocation(line: 298, column: 5, scope: !2185)
!2194 = !DILocation(line: 297, column: 42, scope: !2185)
!2195 = !DILocation(line: 297, column: 3, scope: !2185)
!2196 = distinct !{!2196, !2187, !2197, !496}
!2197 = !DILocation(line: 298, column: 20, scope: !2181)
!2198 = !DILocation(line: 299, column: 21, scope: !2160)
!2199 = !DILocation(line: 299, column: 24, scope: !2160)
!2200 = !DILocation(line: 299, column: 10, scope: !2160)
!2201 = !DILocation(line: 299, column: 3, scope: !2160)
!2202 = !DILocation(line: 300, column: 1, scope: !2160)
!2203 = distinct !DISubprogram(name: "mcel_scanz", scope: !290, file: !290, line: 307, type: !2204, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !76)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2007, !74}
!2206 = !DILocalVariable(name: "p", arg: 1, scope: !2203, file: !290, line: 307, type: !74)
!2207 = !DILocation(line: 307, column: 25, scope: !2203)
!2208 = !DILocation(line: 309, column: 22, scope: !2203)
!2209 = !DILocation(line: 309, column: 10, scope: !2203)
!2210 = !DILocation(line: 309, column: 3, scope: !2203)
!2211 = distinct !DISubprogram(name: "set_program_name", scope: !160, file: !160, line: 37, type: !613, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !159, retainedNodes: !76)
!2212 = !DILocalVariable(name: "argv0", arg: 1, scope: !2211, file: !160, line: 37, type: !74)
!2213 = !DILocation(line: 37, column: 31, scope: !2211)
!2214 = !DILocalVariable(name: "slash", scope: !2211, file: !160, line: 44, type: !74)
!2215 = !DILocation(line: 44, column: 15, scope: !2211)
!2216 = !DILocation(line: 44, column: 32, scope: !2211)
!2217 = !DILocation(line: 44, column: 23, scope: !2211)
!2218 = !DILocalVariable(name: "base", scope: !2211, file: !160, line: 45, type: !74)
!2219 = !DILocation(line: 45, column: 15, scope: !2211)
!2220 = !DILocation(line: 45, column: 22, scope: !2211)
!2221 = !DILocation(line: 45, column: 30, scope: !2211)
!2222 = !DILocation(line: 45, column: 36, scope: !2211)
!2223 = !DILocation(line: 45, column: 42, scope: !2211)
!2224 = !DILocation(line: 46, column: 12, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2211, file: !160, line: 46, column: 7)
!2226 = !DILocation(line: 46, column: 19, scope: !2225)
!2227 = !DILocation(line: 46, column: 17, scope: !2225)
!2228 = !DILocation(line: 46, column: 9, scope: !2225)
!2229 = !DILocation(line: 46, column: 25, scope: !2225)
!2230 = !DILocation(line: 46, column: 35, scope: !2225)
!2231 = !DILocation(line: 46, column: 40, scope: !2225)
!2232 = !DILocation(line: 46, column: 28, scope: !2225)
!2233 = !DILocation(line: 46, column: 7, scope: !2211)
!2234 = !DILocation(line: 48, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2225, file: !160, line: 47, column: 5)
!2236 = !DILocation(line: 48, column: 13, scope: !2235)
!2237 = !DILocation(line: 49, column: 20, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !160, line: 49, column: 11)
!2239 = !DILocation(line: 49, column: 11, scope: !2238)
!2240 = !DILocation(line: 49, column: 36, scope: !2238)
!2241 = !DILocation(line: 49, column: 11, scope: !2235)
!2242 = !DILocation(line: 51, column: 16, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !160, line: 50, column: 9)
!2244 = !DILocation(line: 52, column: 19, scope: !2243)
!2245 = !DILocation(line: 52, column: 17, scope: !2243)
!2246 = !DILocation(line: 53, column: 9, scope: !2243)
!2247 = !DILocation(line: 54, column: 5, scope: !2235)
!2248 = !DILocation(line: 65, column: 18, scope: !2211)
!2249 = !DILocation(line: 65, column: 16, scope: !2211)
!2250 = !DILocation(line: 71, column: 38, scope: !2211)
!2251 = !DILocation(line: 71, column: 27, scope: !2211)
!2252 = !DILocation(line: 74, column: 44, scope: !2211)
!2253 = !DILocation(line: 74, column: 33, scope: !2211)
!2254 = !DILocation(line: 76, column: 1, scope: !2211)
!2255 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !165, file: !166, line: 38, type: !74)
!2256 = !DILocation(line: 38, column: 31, scope: !165)
!2257 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !165, file: !166, line: 38, type: !74)
!2258 = !DILocation(line: 38, column: 66, scope: !165)
!2259 = !DILocalVariable(name: "translation", scope: !165, file: !166, line: 40, type: !74)
!2260 = !DILocation(line: 40, column: 15, scope: !165)
!2261 = !DILocation(line: 40, column: 38, scope: !165)
!2262 = !DILocation(line: 40, column: 29, scope: !165)
!2263 = !DILocation(line: 41, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !165, file: !166, line: 41, column: 7)
!2265 = !DILocation(line: 41, column: 22, scope: !2264)
!2266 = !DILocation(line: 41, column: 19, scope: !2264)
!2267 = !DILocation(line: 41, column: 7, scope: !165)
!2268 = !DILocation(line: 42, column: 12, scope: !2264)
!2269 = !DILocation(line: 42, column: 5, scope: !2264)
!2270 = !DILocalVariable(name: "w", scope: !165, file: !166, line: 47, type: !886)
!2271 = !DILocation(line: 47, column: 12, scope: !165)
!2272 = !DILocalVariable(name: "mbs", scope: !165, file: !166, line: 48, type: !2273)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !256, line: 6, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !258, line: 21, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 13, size: 64, elements: !2276)
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2275, file: !258, line: 15, baseType: !60, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2275, file: !258, line: 20, baseType: !2279, size: 32, offset: 32)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !258, line: 16, size: 32, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2279, file: !258, line: 18, baseType: !6, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2279, file: !258, line: 19, baseType: !267, size: 32)
!2283 = !DILocation(line: 48, column: 13, scope: !165)
!2284 = !DILocation(line: 48, column: 18, scope: !165)
!2285 = !DILocation(line: 49, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !165, file: !166, line: 49, column: 7)
!2287 = !DILocation(line: 49, column: 39, scope: !2286)
!2288 = !DILocation(line: 49, column: 44, scope: !2286)
!2289 = !DILocation(line: 49, column: 47, scope: !2286)
!2290 = !DILocation(line: 49, column: 49, scope: !2286)
!2291 = !DILocation(line: 49, column: 7, scope: !165)
!2292 = !DILocation(line: 50, column: 12, scope: !2286)
!2293 = !DILocation(line: 50, column: 5, scope: !2286)
!2294 = !DILocation(line: 53, column: 10, scope: !165)
!2295 = !DILocation(line: 53, column: 3, scope: !165)
!2296 = !DILocation(line: 54, column: 1, scope: !165)
!2297 = distinct !DISubprogram(name: "clone_quoting_options", scope: !177, file: !177, line: 113, type: !2298, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2300, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!2301 = !DILocalVariable(name: "o", arg: 1, scope: !2297, file: !177, line: 113, type: !2300)
!2302 = !DILocation(line: 113, column: 48, scope: !2297)
!2303 = !DILocalVariable(name: "saved_errno", scope: !2297, file: !177, line: 115, type: !60)
!2304 = !DILocation(line: 115, column: 7, scope: !2297)
!2305 = !DILocation(line: 115, column: 21, scope: !2297)
!2306 = !DILocalVariable(name: "p", scope: !2297, file: !177, line: 116, type: !2300)
!2307 = !DILocation(line: 116, column: 27, scope: !2297)
!2308 = !DILocation(line: 116, column: 40, scope: !2297)
!2309 = !DILocation(line: 116, column: 44, scope: !2297)
!2310 = !DILocation(line: 116, column: 31, scope: !2297)
!2311 = !DILocation(line: 118, column: 11, scope: !2297)
!2312 = !DILocation(line: 118, column: 3, scope: !2297)
!2313 = !DILocation(line: 118, column: 9, scope: !2297)
!2314 = !DILocation(line: 119, column: 10, scope: !2297)
!2315 = !DILocation(line: 119, column: 3, scope: !2297)
!2316 = distinct !DISubprogram(name: "get_quoting_style", scope: !177, file: !177, line: 124, type: !2317, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!33, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!2321 = !DILocalVariable(name: "o", arg: 1, scope: !2316, file: !177, line: 124, type: !2319)
!2322 = !DILocation(line: 124, column: 50, scope: !2316)
!2323 = !DILocation(line: 126, column: 11, scope: !2316)
!2324 = !DILocation(line: 126, column: 15, scope: !2316)
!2325 = !DILocation(line: 126, column: 46, scope: !2316)
!2326 = !DILocation(line: 126, column: 3, scope: !2316)
!2327 = distinct !DISubprogram(name: "set_quoting_style", scope: !177, file: !177, line: 132, type: !2328, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2300, !33}
!2330 = !DILocalVariable(name: "o", arg: 1, scope: !2327, file: !177, line: 132, type: !2300)
!2331 = !DILocation(line: 132, column: 44, scope: !2327)
!2332 = !DILocalVariable(name: "s", arg: 2, scope: !2327, file: !177, line: 132, type: !33)
!2333 = !DILocation(line: 132, column: 66, scope: !2327)
!2334 = !DILocation(line: 134, column: 47, scope: !2327)
!2335 = !DILocation(line: 134, column: 4, scope: !2327)
!2336 = !DILocation(line: 134, column: 8, scope: !2327)
!2337 = !DILocation(line: 134, column: 39, scope: !2327)
!2338 = !DILocation(line: 134, column: 45, scope: !2327)
!2339 = !DILocation(line: 135, column: 1, scope: !2327)
!2340 = distinct !DISubprogram(name: "set_char_quoting", scope: !177, file: !177, line: 143, type: !2341, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!60, !2300, !58, !60}
!2343 = !DILocalVariable(name: "o", arg: 1, scope: !2340, file: !177, line: 143, type: !2300)
!2344 = !DILocation(line: 143, column: 43, scope: !2340)
!2345 = !DILocalVariable(name: "c", arg: 2, scope: !2340, file: !177, line: 143, type: !58)
!2346 = !DILocation(line: 143, column: 51, scope: !2340)
!2347 = !DILocalVariable(name: "i", arg: 3, scope: !2340, file: !177, line: 143, type: !60)
!2348 = !DILocation(line: 143, column: 58, scope: !2340)
!2349 = !DILocalVariable(name: "uc", scope: !2340, file: !177, line: 145, type: !253)
!2350 = !DILocation(line: 145, column: 17, scope: !2340)
!2351 = !DILocation(line: 145, column: 22, scope: !2340)
!2352 = !DILocalVariable(name: "p", scope: !2340, file: !177, line: 146, type: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2354 = !DILocation(line: 146, column: 17, scope: !2340)
!2355 = !DILocation(line: 147, column: 6, scope: !2340)
!2356 = !DILocation(line: 147, column: 10, scope: !2340)
!2357 = !DILocation(line: 147, column: 41, scope: !2340)
!2358 = !DILocation(line: 147, column: 5, scope: !2340)
!2359 = !DILocation(line: 147, column: 59, scope: !2340)
!2360 = !DILocation(line: 147, column: 62, scope: !2340)
!2361 = !DILocation(line: 147, column: 57, scope: !2340)
!2362 = !DILocalVariable(name: "shift", scope: !2340, file: !177, line: 148, type: !60)
!2363 = !DILocation(line: 148, column: 7, scope: !2340)
!2364 = !DILocation(line: 148, column: 15, scope: !2340)
!2365 = !DILocation(line: 148, column: 18, scope: !2340)
!2366 = !DILocalVariable(name: "r", scope: !2340, file: !177, line: 149, type: !6)
!2367 = !DILocation(line: 149, column: 16, scope: !2340)
!2368 = !DILocation(line: 149, column: 22, scope: !2340)
!2369 = !DILocation(line: 149, column: 21, scope: !2340)
!2370 = !DILocation(line: 149, column: 27, scope: !2340)
!2371 = !DILocation(line: 149, column: 24, scope: !2340)
!2372 = !DILocation(line: 149, column: 34, scope: !2340)
!2373 = !DILocation(line: 150, column: 11, scope: !2340)
!2374 = !DILocation(line: 150, column: 13, scope: !2340)
!2375 = !DILocation(line: 150, column: 21, scope: !2340)
!2376 = !DILocation(line: 150, column: 19, scope: !2340)
!2377 = !DILocation(line: 150, column: 27, scope: !2340)
!2378 = !DILocation(line: 150, column: 24, scope: !2340)
!2379 = !DILocation(line: 150, column: 4, scope: !2340)
!2380 = !DILocation(line: 150, column: 6, scope: !2340)
!2381 = !DILocation(line: 151, column: 10, scope: !2340)
!2382 = !DILocation(line: 151, column: 3, scope: !2340)
!2383 = distinct !DISubprogram(name: "set_quoting_flags", scope: !177, file: !177, line: 159, type: !2384, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!60, !2300, !60}
!2386 = !DILocalVariable(name: "o", arg: 1, scope: !2383, file: !177, line: 159, type: !2300)
!2387 = !DILocation(line: 159, column: 44, scope: !2383)
!2388 = !DILocalVariable(name: "i", arg: 2, scope: !2383, file: !177, line: 159, type: !60)
!2389 = !DILocation(line: 159, column: 51, scope: !2383)
!2390 = !DILocation(line: 161, column: 8, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2383, file: !177, line: 161, column: 7)
!2392 = !DILocation(line: 161, column: 7, scope: !2383)
!2393 = !DILocation(line: 162, column: 7, scope: !2391)
!2394 = !DILocation(line: 162, column: 5, scope: !2391)
!2395 = !DILocalVariable(name: "r", scope: !2383, file: !177, line: 163, type: !60)
!2396 = !DILocation(line: 163, column: 7, scope: !2383)
!2397 = !DILocation(line: 163, column: 11, scope: !2383)
!2398 = !DILocation(line: 163, column: 14, scope: !2383)
!2399 = !DILocation(line: 164, column: 14, scope: !2383)
!2400 = !DILocation(line: 164, column: 3, scope: !2383)
!2401 = !DILocation(line: 164, column: 6, scope: !2383)
!2402 = !DILocation(line: 164, column: 12, scope: !2383)
!2403 = !DILocation(line: 165, column: 10, scope: !2383)
!2404 = !DILocation(line: 165, column: 3, scope: !2383)
!2405 = distinct !DISubprogram(name: "set_custom_quoting", scope: !177, file: !177, line: 169, type: !2406, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2300, !74, !74}
!2408 = !DILocalVariable(name: "o", arg: 1, scope: !2405, file: !177, line: 169, type: !2300)
!2409 = !DILocation(line: 169, column: 45, scope: !2405)
!2410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2405, file: !177, line: 170, type: !74)
!2411 = !DILocation(line: 170, column: 33, scope: !2405)
!2412 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2405, file: !177, line: 170, type: !74)
!2413 = !DILocation(line: 170, column: 57, scope: !2405)
!2414 = !DILocation(line: 172, column: 8, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !177, line: 172, column: 7)
!2416 = !DILocation(line: 172, column: 7, scope: !2405)
!2417 = !DILocation(line: 173, column: 7, scope: !2415)
!2418 = !DILocation(line: 173, column: 5, scope: !2415)
!2419 = !DILocation(line: 174, column: 3, scope: !2405)
!2420 = !DILocation(line: 174, column: 6, scope: !2405)
!2421 = !DILocation(line: 174, column: 12, scope: !2405)
!2422 = !DILocation(line: 175, column: 8, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2405, file: !177, line: 175, column: 7)
!2424 = !DILocation(line: 175, column: 19, scope: !2423)
!2425 = !DILocation(line: 175, column: 23, scope: !2423)
!2426 = !DILocation(line: 175, column: 7, scope: !2405)
!2427 = !DILocation(line: 176, column: 5, scope: !2423)
!2428 = !DILocation(line: 177, column: 19, scope: !2405)
!2429 = !DILocation(line: 177, column: 3, scope: !2405)
!2430 = !DILocation(line: 177, column: 6, scope: !2405)
!2431 = !DILocation(line: 177, column: 17, scope: !2405)
!2432 = !DILocation(line: 178, column: 20, scope: !2405)
!2433 = !DILocation(line: 178, column: 3, scope: !2405)
!2434 = !DILocation(line: 178, column: 6, scope: !2405)
!2435 = !DILocation(line: 178, column: 18, scope: !2405)
!2436 = !DILocation(line: 179, column: 1, scope: !2405)
!2437 = distinct !DISubprogram(name: "quotearg_buffer", scope: !177, file: !177, line: 774, type: !2438, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!98, !57, !98, !74, !98, !2319}
!2440 = !DILocalVariable(name: "buffer", arg: 1, scope: !2437, file: !177, line: 774, type: !57)
!2441 = !DILocation(line: 774, column: 24, scope: !2437)
!2442 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2437, file: !177, line: 774, type: !98)
!2443 = !DILocation(line: 774, column: 39, scope: !2437)
!2444 = !DILocalVariable(name: "arg", arg: 3, scope: !2437, file: !177, line: 775, type: !74)
!2445 = !DILocation(line: 775, column: 30, scope: !2437)
!2446 = !DILocalVariable(name: "argsize", arg: 4, scope: !2437, file: !177, line: 775, type: !98)
!2447 = !DILocation(line: 775, column: 42, scope: !2437)
!2448 = !DILocalVariable(name: "o", arg: 5, scope: !2437, file: !177, line: 776, type: !2319)
!2449 = !DILocation(line: 776, column: 48, scope: !2437)
!2450 = !DILocalVariable(name: "p", scope: !2437, file: !177, line: 778, type: !2319)
!2451 = !DILocation(line: 778, column: 33, scope: !2437)
!2452 = !DILocation(line: 778, column: 37, scope: !2437)
!2453 = !DILocation(line: 778, column: 41, scope: !2437)
!2454 = !DILocalVariable(name: "saved_errno", scope: !2437, file: !177, line: 779, type: !60)
!2455 = !DILocation(line: 779, column: 7, scope: !2437)
!2456 = !DILocation(line: 779, column: 21, scope: !2437)
!2457 = !DILocalVariable(name: "r", scope: !2437, file: !177, line: 780, type: !98)
!2458 = !DILocation(line: 780, column: 10, scope: !2437)
!2459 = !DILocation(line: 780, column: 40, scope: !2437)
!2460 = !DILocation(line: 780, column: 48, scope: !2437)
!2461 = !DILocation(line: 780, column: 60, scope: !2437)
!2462 = !DILocation(line: 780, column: 65, scope: !2437)
!2463 = !DILocation(line: 781, column: 40, scope: !2437)
!2464 = !DILocation(line: 781, column: 43, scope: !2437)
!2465 = !DILocation(line: 781, column: 50, scope: !2437)
!2466 = !DILocation(line: 781, column: 53, scope: !2437)
!2467 = !DILocation(line: 781, column: 60, scope: !2437)
!2468 = !DILocation(line: 781, column: 63, scope: !2437)
!2469 = !DILocation(line: 782, column: 40, scope: !2437)
!2470 = !DILocation(line: 782, column: 43, scope: !2437)
!2471 = !DILocation(line: 782, column: 55, scope: !2437)
!2472 = !DILocation(line: 782, column: 58, scope: !2437)
!2473 = !DILocation(line: 780, column: 14, scope: !2437)
!2474 = !DILocation(line: 783, column: 11, scope: !2437)
!2475 = !DILocation(line: 783, column: 3, scope: !2437)
!2476 = !DILocation(line: 783, column: 9, scope: !2437)
!2477 = !DILocation(line: 784, column: 10, scope: !2437)
!2478 = !DILocation(line: 784, column: 3, scope: !2437)
!2479 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !177, file: !177, line: 251, type: !2480, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !176, retainedNodes: !76)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!98, !57, !98, !74, !98, !33, !60, !2482, !74, !74}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2484 = !DILocalVariable(name: "buffer", arg: 1, scope: !2479, file: !177, line: 251, type: !57)
!2485 = !DILocation(line: 251, column: 33, scope: !2479)
!2486 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2479, file: !177, line: 251, type: !98)
!2487 = !DILocation(line: 251, column: 48, scope: !2479)
!2488 = !DILocalVariable(name: "arg", arg: 3, scope: !2479, file: !177, line: 252, type: !74)
!2489 = !DILocation(line: 252, column: 39, scope: !2479)
!2490 = !DILocalVariable(name: "argsize", arg: 4, scope: !2479, file: !177, line: 252, type: !98)
!2491 = !DILocation(line: 252, column: 51, scope: !2479)
!2492 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2479, file: !177, line: 253, type: !33)
!2493 = !DILocation(line: 253, column: 46, scope: !2479)
!2494 = !DILocalVariable(name: "flags", arg: 6, scope: !2479, file: !177, line: 253, type: !60)
!2495 = !DILocation(line: 253, column: 65, scope: !2479)
!2496 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2479, file: !177, line: 254, type: !2482)
!2497 = !DILocation(line: 254, column: 47, scope: !2479)
!2498 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2479, file: !177, line: 255, type: !74)
!2499 = !DILocation(line: 255, column: 39, scope: !2479)
!2500 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2479, file: !177, line: 256, type: !74)
!2501 = !DILocation(line: 256, column: 39, scope: !2479)
!2502 = !DILocalVariable(name: "unibyte_locale", scope: !2479, file: !177, line: 258, type: !65)
!2503 = !DILocation(line: 258, column: 8, scope: !2479)
!2504 = !DILocation(line: 258, column: 25, scope: !2479)
!2505 = !DILocation(line: 258, column: 36, scope: !2479)
!2506 = !DILocalVariable(name: "len", scope: !2479, file: !177, line: 260, type: !98)
!2507 = !DILocation(line: 260, column: 10, scope: !2479)
!2508 = !DILocalVariable(name: "orig_buffersize", scope: !2479, file: !177, line: 261, type: !98)
!2509 = !DILocation(line: 261, column: 10, scope: !2479)
!2510 = !DILocalVariable(name: "quote_string", scope: !2479, file: !177, line: 262, type: !74)
!2511 = !DILocation(line: 262, column: 15, scope: !2479)
!2512 = !DILocalVariable(name: "quote_string_len", scope: !2479, file: !177, line: 263, type: !98)
!2513 = !DILocation(line: 263, column: 10, scope: !2479)
!2514 = !DILocalVariable(name: "backslash_escapes", scope: !2479, file: !177, line: 264, type: !65)
!2515 = !DILocation(line: 264, column: 8, scope: !2479)
!2516 = !DILocalVariable(name: "elide_outer_quotes", scope: !2479, file: !177, line: 265, type: !65)
!2517 = !DILocation(line: 265, column: 8, scope: !2479)
!2518 = !DILocation(line: 265, column: 30, scope: !2479)
!2519 = !DILocation(line: 265, column: 36, scope: !2479)
!2520 = !DILocation(line: 265, column: 61, scope: !2479)
!2521 = !DILocalVariable(name: "encountered_single_quote", scope: !2479, file: !177, line: 266, type: !65)
!2522 = !DILocation(line: 266, column: 8, scope: !2479)
!2523 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2479, file: !177, line: 267, type: !65)
!2524 = !DILocation(line: 267, column: 8, scope: !2479)
!2525 = !DILocation(line: 267, column: 3, scope: !2479)
!2526 = !DILabel(scope: !2479, name: "process_input", file: !177, line: 308)
!2527 = !DILocation(line: 308, column: 2, scope: !2479)
!2528 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2479, file: !177, line: 309, type: !65)
!2529 = !DILocation(line: 309, column: 8, scope: !2479)
!2530 = !DILocation(line: 311, column: 11, scope: !2479)
!2531 = !DILocation(line: 311, column: 3, scope: !2479)
!2532 = !DILocation(line: 314, column: 21, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 312, column: 5)
!2534 = !DILocation(line: 315, column: 26, scope: !2533)
!2535 = !DILocation(line: 315, column: 7, scope: !2533)
!2536 = !DILocation(line: 318, column: 12, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !177, line: 318, column: 11)
!2538 = !DILocation(line: 318, column: 11, scope: !2533)
!2539 = !DILocation(line: 319, column: 9, scope: !2537)
!2540 = !DILocation(line: 319, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !177, line: 319, column: 9)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !177, line: 319, column: 9)
!2543 = !DILocation(line: 319, column: 9, scope: !2542)
!2544 = !DILocation(line: 320, column: 25, scope: !2533)
!2545 = !DILocation(line: 321, column: 20, scope: !2533)
!2546 = !DILocation(line: 322, column: 24, scope: !2533)
!2547 = !DILocation(line: 323, column: 7, scope: !2533)
!2548 = !DILocation(line: 326, column: 25, scope: !2533)
!2549 = !DILocation(line: 327, column: 26, scope: !2533)
!2550 = !DILocation(line: 328, column: 7, scope: !2533)
!2551 = !DILocation(line: 334, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !177, line: 334, column: 13)
!2553 = distinct !DILexicalBlock(scope: !2533, file: !177, line: 333, column: 7)
!2554 = !DILocation(line: 334, column: 27, scope: !2552)
!2555 = !DILocation(line: 334, column: 13, scope: !2553)
!2556 = !DILocation(line: 357, column: 50, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !177, line: 335, column: 11)
!2558 = !DILocation(line: 357, column: 26, scope: !2557)
!2559 = !DILocation(line: 357, column: 24, scope: !2557)
!2560 = !DILocation(line: 358, column: 51, scope: !2557)
!2561 = !DILocation(line: 358, column: 27, scope: !2557)
!2562 = !DILocation(line: 358, column: 25, scope: !2557)
!2563 = !DILocation(line: 359, column: 11, scope: !2557)
!2564 = !DILocation(line: 360, column: 14, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2553, file: !177, line: 360, column: 13)
!2566 = !DILocation(line: 360, column: 13, scope: !2553)
!2567 = !DILocalVariable(name: "lq", scope: !2568, file: !177, line: 361, type: !74)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !177, line: 361, column: 11)
!2569 = !DILocation(line: 361, column: 28, scope: !2568)
!2570 = !DILocation(line: 361, column: 33, scope: !2568)
!2571 = !DILocation(line: 361, column: 16, scope: !2568)
!2572 = !DILocation(line: 361, column: 46, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !177, line: 361, column: 11)
!2574 = !DILocation(line: 361, column: 45, scope: !2573)
!2575 = !DILocation(line: 361, column: 11, scope: !2568)
!2576 = !DILocation(line: 362, column: 13, scope: !2573)
!2577 = !DILocation(line: 362, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !177, line: 362, column: 13)
!2579 = distinct !DILexicalBlock(scope: !2573, file: !177, line: 362, column: 13)
!2580 = !DILocation(line: 362, column: 13, scope: !2579)
!2581 = !DILocation(line: 361, column: 52, scope: !2573)
!2582 = !DILocation(line: 361, column: 11, scope: !2573)
!2583 = distinct !{!2583, !2575, !2584, !496}
!2584 = !DILocation(line: 362, column: 13, scope: !2568)
!2585 = !DILocation(line: 363, column: 27, scope: !2553)
!2586 = !DILocation(line: 364, column: 24, scope: !2553)
!2587 = !DILocation(line: 364, column: 22, scope: !2553)
!2588 = !DILocation(line: 365, column: 36, scope: !2553)
!2589 = !DILocation(line: 365, column: 28, scope: !2553)
!2590 = !DILocation(line: 365, column: 26, scope: !2553)
!2591 = !DILocation(line: 367, column: 7, scope: !2533)
!2592 = !DILocation(line: 370, column: 25, scope: !2533)
!2593 = !DILocation(line: 370, column: 7, scope: !2533)
!2594 = !DILocation(line: 373, column: 26, scope: !2533)
!2595 = !DILocation(line: 373, column: 7, scope: !2533)
!2596 = !DILocation(line: 376, column: 12, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2533, file: !177, line: 376, column: 11)
!2598 = !DILocation(line: 376, column: 11, scope: !2533)
!2599 = !DILocation(line: 377, column: 27, scope: !2597)
!2600 = !DILocation(line: 377, column: 9, scope: !2597)
!2601 = !DILocation(line: 380, column: 21, scope: !2533)
!2602 = !DILocation(line: 381, column: 12, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2533, file: !177, line: 381, column: 11)
!2604 = !DILocation(line: 381, column: 11, scope: !2533)
!2605 = !DILocation(line: 382, column: 9, scope: !2603)
!2606 = !DILocation(line: 382, column: 9, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !177, line: 382, column: 9)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !177, line: 382, column: 9)
!2609 = !DILocation(line: 382, column: 9, scope: !2608)
!2610 = !DILocation(line: 383, column: 20, scope: !2533)
!2611 = !DILocation(line: 384, column: 24, scope: !2533)
!2612 = !DILocation(line: 385, column: 7, scope: !2533)
!2613 = !DILocation(line: 388, column: 26, scope: !2533)
!2614 = !DILocation(line: 389, column: 7, scope: !2533)
!2615 = !DILocation(line: 392, column: 7, scope: !2533)
!2616 = !DILocalVariable(name: "i", scope: !2617, file: !177, line: 395, type: !98)
!2617 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 395, column: 3)
!2618 = !DILocation(line: 395, column: 15, scope: !2617)
!2619 = !DILocation(line: 395, column: 8, scope: !2617)
!2620 = !DILocation(line: 395, column: 26, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !177, line: 395, column: 3)
!2622 = !DILocation(line: 395, column: 34, scope: !2621)
!2623 = !DILocation(line: 395, column: 48, scope: !2621)
!2624 = !DILocation(line: 395, column: 52, scope: !2621)
!2625 = !DILocation(line: 395, column: 55, scope: !2621)
!2626 = !DILocation(line: 395, column: 65, scope: !2621)
!2627 = !DILocation(line: 395, column: 70, scope: !2621)
!2628 = !DILocation(line: 395, column: 67, scope: !2621)
!2629 = !DILocation(line: 395, column: 23, scope: !2621)
!2630 = !DILocation(line: 395, column: 3, scope: !2617)
!2631 = !DILocalVariable(name: "is_right_quote", scope: !2632, file: !177, line: 397, type: !65)
!2632 = distinct !DILexicalBlock(scope: !2621, file: !177, line: 396, column: 5)
!2633 = !DILocation(line: 397, column: 12, scope: !2632)
!2634 = !DILocalVariable(name: "escaping", scope: !2632, file: !177, line: 398, type: !65)
!2635 = !DILocation(line: 398, column: 12, scope: !2632)
!2636 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2632, file: !177, line: 399, type: !65)
!2637 = !DILocation(line: 399, column: 12, scope: !2632)
!2638 = !DILocation(line: 401, column: 11, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 401, column: 11)
!2640 = !DILocation(line: 402, column: 11, scope: !2639)
!2641 = !DILocation(line: 402, column: 14, scope: !2639)
!2642 = !DILocation(line: 402, column: 28, scope: !2639)
!2643 = !DILocation(line: 403, column: 11, scope: !2639)
!2644 = !DILocation(line: 403, column: 14, scope: !2639)
!2645 = !DILocation(line: 404, column: 11, scope: !2639)
!2646 = !DILocation(line: 404, column: 15, scope: !2639)
!2647 = !DILocation(line: 404, column: 19, scope: !2639)
!2648 = !DILocation(line: 404, column: 17, scope: !2639)
!2649 = !DILocation(line: 405, column: 19, scope: !2639)
!2650 = !DILocation(line: 405, column: 27, scope: !2639)
!2651 = !DILocation(line: 405, column: 39, scope: !2639)
!2652 = !DILocation(line: 405, column: 46, scope: !2639)
!2653 = !DILocation(line: 405, column: 44, scope: !2639)
!2654 = !DILocation(line: 409, column: 40, scope: !2639)
!2655 = !DILocation(line: 409, column: 32, scope: !2639)
!2656 = !DILocation(line: 409, column: 30, scope: !2639)
!2657 = !DILocation(line: 409, column: 48, scope: !2639)
!2658 = !DILocation(line: 405, column: 15, scope: !2639)
!2659 = !DILocation(line: 410, column: 11, scope: !2639)
!2660 = !DILocation(line: 410, column: 21, scope: !2639)
!2661 = !DILocation(line: 410, column: 27, scope: !2639)
!2662 = !DILocation(line: 410, column: 25, scope: !2639)
!2663 = !DILocation(line: 410, column: 30, scope: !2639)
!2664 = !DILocation(line: 410, column: 44, scope: !2639)
!2665 = !DILocation(line: 410, column: 14, scope: !2639)
!2666 = !DILocation(line: 401, column: 11, scope: !2632)
!2667 = !DILocation(line: 412, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !177, line: 412, column: 15)
!2669 = distinct !DILexicalBlock(scope: !2639, file: !177, line: 411, column: 9)
!2670 = !DILocation(line: 412, column: 15, scope: !2669)
!2671 = !DILocation(line: 413, column: 13, scope: !2668)
!2672 = !DILocation(line: 414, column: 26, scope: !2669)
!2673 = !DILocation(line: 415, column: 9, scope: !2669)
!2674 = !DILocalVariable(name: "c", scope: !2632, file: !177, line: 417, type: !253)
!2675 = !DILocation(line: 417, column: 21, scope: !2632)
!2676 = !DILocation(line: 417, column: 25, scope: !2632)
!2677 = !DILocation(line: 417, column: 29, scope: !2632)
!2678 = !DILocation(line: 418, column: 15, scope: !2632)
!2679 = !DILocation(line: 418, column: 7, scope: !2632)
!2680 = !DILocation(line: 421, column: 15, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 421, column: 15)
!2682 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 419, column: 9)
!2683 = !DILocation(line: 421, column: 15, scope: !2682)
!2684 = !DILocation(line: 423, column: 15, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !177, line: 422, column: 13)
!2686 = !DILocation(line: 423, column: 15, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !177, line: 423, column: 15)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !177, line: 423, column: 15)
!2689 = !DILocation(line: 423, column: 15, scope: !2688)
!2690 = !DILocation(line: 423, column: 15, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !177, line: 423, column: 15)
!2692 = !DILocation(line: 423, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !177, line: 423, column: 15)
!2694 = !DILocation(line: 423, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !177, line: 423, column: 15)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !177, line: 423, column: 15)
!2697 = !DILocation(line: 423, column: 15, scope: !2696)
!2698 = !DILocation(line: 423, column: 15, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !177, line: 423, column: 15)
!2700 = distinct !DILexicalBlock(scope: !2693, file: !177, line: 423, column: 15)
!2701 = !DILocation(line: 423, column: 15, scope: !2700)
!2702 = !DILocation(line: 423, column: 15, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !177, line: 423, column: 15)
!2704 = distinct !DILexicalBlock(scope: !2693, file: !177, line: 423, column: 15)
!2705 = !DILocation(line: 423, column: 15, scope: !2704)
!2706 = !DILocation(line: 423, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !177, line: 423, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2688, file: !177, line: 423, column: 15)
!2709 = !DILocation(line: 423, column: 15, scope: !2708)
!2710 = !DILocation(line: 430, column: 19, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2685, file: !177, line: 430, column: 19)
!2712 = !DILocation(line: 430, column: 33, scope: !2711)
!2713 = !DILocation(line: 431, column: 19, scope: !2711)
!2714 = !DILocation(line: 431, column: 22, scope: !2711)
!2715 = !DILocation(line: 431, column: 24, scope: !2711)
!2716 = !DILocation(line: 431, column: 30, scope: !2711)
!2717 = !DILocation(line: 431, column: 28, scope: !2711)
!2718 = !DILocation(line: 431, column: 38, scope: !2711)
!2719 = !DILocation(line: 431, column: 48, scope: !2711)
!2720 = !DILocation(line: 431, column: 52, scope: !2711)
!2721 = !DILocation(line: 431, column: 54, scope: !2711)
!2722 = !DILocation(line: 431, column: 45, scope: !2711)
!2723 = !DILocation(line: 431, column: 59, scope: !2711)
!2724 = !DILocation(line: 431, column: 62, scope: !2711)
!2725 = !DILocation(line: 431, column: 66, scope: !2711)
!2726 = !DILocation(line: 431, column: 68, scope: !2711)
!2727 = !DILocation(line: 431, column: 73, scope: !2711)
!2728 = !DILocation(line: 430, column: 19, scope: !2685)
!2729 = !DILocation(line: 433, column: 19, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2711, file: !177, line: 432, column: 17)
!2731 = !DILocation(line: 433, column: 19, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !177, line: 433, column: 19)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !177, line: 433, column: 19)
!2734 = !DILocation(line: 433, column: 19, scope: !2733)
!2735 = !DILocation(line: 434, column: 19, scope: !2730)
!2736 = !DILocation(line: 434, column: 19, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !177, line: 434, column: 19)
!2738 = distinct !DILexicalBlock(scope: !2730, file: !177, line: 434, column: 19)
!2739 = !DILocation(line: 434, column: 19, scope: !2738)
!2740 = !DILocation(line: 435, column: 17, scope: !2730)
!2741 = !DILocation(line: 436, column: 17, scope: !2685)
!2742 = !DILocation(line: 441, column: 13, scope: !2685)
!2743 = !DILocation(line: 442, column: 20, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2681, file: !177, line: 442, column: 20)
!2745 = !DILocation(line: 442, column: 26, scope: !2744)
!2746 = !DILocation(line: 442, column: 20, scope: !2681)
!2747 = !DILocation(line: 443, column: 13, scope: !2744)
!2748 = !DILocation(line: 444, column: 11, scope: !2682)
!2749 = !DILocation(line: 447, column: 20, scope: !2682)
!2750 = !DILocation(line: 447, column: 11, scope: !2682)
!2751 = !DILocation(line: 450, column: 19, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !177, line: 450, column: 19)
!2753 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 448, column: 13)
!2754 = !DILocation(line: 450, column: 19, scope: !2753)
!2755 = !DILocation(line: 451, column: 17, scope: !2752)
!2756 = !DILocation(line: 452, column: 15, scope: !2753)
!2757 = !DILocation(line: 455, column: 20, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !177, line: 455, column: 19)
!2759 = !DILocation(line: 455, column: 26, scope: !2758)
!2760 = !DILocation(line: 456, column: 19, scope: !2758)
!2761 = !DILocation(line: 456, column: 22, scope: !2758)
!2762 = !DILocation(line: 456, column: 24, scope: !2758)
!2763 = !DILocation(line: 456, column: 30, scope: !2758)
!2764 = !DILocation(line: 456, column: 28, scope: !2758)
!2765 = !DILocation(line: 456, column: 38, scope: !2758)
!2766 = !DILocation(line: 456, column: 41, scope: !2758)
!2767 = !DILocation(line: 456, column: 45, scope: !2758)
!2768 = !DILocation(line: 456, column: 47, scope: !2758)
!2769 = !DILocation(line: 456, column: 52, scope: !2758)
!2770 = !DILocation(line: 455, column: 19, scope: !2753)
!2771 = !DILocation(line: 457, column: 25, scope: !2758)
!2772 = !DILocation(line: 457, column: 29, scope: !2758)
!2773 = !DILocation(line: 457, column: 31, scope: !2758)
!2774 = !DILocation(line: 457, column: 17, scope: !2758)
!2775 = !DILocation(line: 464, column: 25, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !177, line: 464, column: 25)
!2777 = distinct !DILexicalBlock(scope: !2758, file: !177, line: 458, column: 19)
!2778 = !DILocation(line: 464, column: 25, scope: !2777)
!2779 = !DILocation(line: 465, column: 23, scope: !2776)
!2780 = !DILocation(line: 466, column: 25, scope: !2777)
!2781 = !DILocation(line: 466, column: 29, scope: !2777)
!2782 = !DILocation(line: 466, column: 31, scope: !2777)
!2783 = !DILocation(line: 466, column: 23, scope: !2777)
!2784 = !DILocation(line: 467, column: 23, scope: !2777)
!2785 = !DILocation(line: 468, column: 21, scope: !2777)
!2786 = !DILocation(line: 468, column: 21, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !177, line: 468, column: 21)
!2788 = distinct !DILexicalBlock(scope: !2777, file: !177, line: 468, column: 21)
!2789 = !DILocation(line: 468, column: 21, scope: !2788)
!2790 = !DILocation(line: 469, column: 21, scope: !2777)
!2791 = !DILocation(line: 469, column: 21, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !177, line: 469, column: 21)
!2793 = distinct !DILexicalBlock(scope: !2777, file: !177, line: 469, column: 21)
!2794 = !DILocation(line: 469, column: 21, scope: !2793)
!2795 = !DILocation(line: 470, column: 21, scope: !2777)
!2796 = !DILocation(line: 470, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !177, line: 470, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2777, file: !177, line: 470, column: 21)
!2799 = !DILocation(line: 470, column: 21, scope: !2798)
!2800 = !DILocation(line: 471, column: 21, scope: !2777)
!2801 = !DILocation(line: 471, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !177, line: 471, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2777, file: !177, line: 471, column: 21)
!2804 = !DILocation(line: 471, column: 21, scope: !2803)
!2805 = !DILocation(line: 472, column: 21, scope: !2777)
!2806 = !DILocation(line: 473, column: 19, scope: !2777)
!2807 = !DILocation(line: 474, column: 15, scope: !2753)
!2808 = !DILocation(line: 476, column: 11, scope: !2682)
!2809 = !DILocation(line: 481, column: 26, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 478, column: 9)
!2811 = !DILocation(line: 481, column: 33, scope: !2810)
!2812 = !DILocation(line: 482, column: 26, scope: !2810)
!2813 = !DILocation(line: 482, column: 33, scope: !2810)
!2814 = !DILocation(line: 483, column: 26, scope: !2810)
!2815 = !DILocation(line: 483, column: 33, scope: !2810)
!2816 = !DILocation(line: 484, column: 26, scope: !2810)
!2817 = !DILocation(line: 484, column: 33, scope: !2810)
!2818 = !DILocation(line: 485, column: 26, scope: !2810)
!2819 = !DILocation(line: 485, column: 33, scope: !2810)
!2820 = !DILocation(line: 486, column: 26, scope: !2810)
!2821 = !DILocation(line: 486, column: 33, scope: !2810)
!2822 = !DILocation(line: 487, column: 26, scope: !2810)
!2823 = !DILocation(line: 487, column: 33, scope: !2810)
!2824 = !DILocation(line: 488, column: 28, scope: !2810)
!2825 = !DILocation(line: 488, column: 26, scope: !2810)
!2826 = !DILocation(line: 490, column: 17, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2810, file: !177, line: 490, column: 17)
!2828 = !DILocation(line: 490, column: 31, scope: !2827)
!2829 = !DILocation(line: 490, column: 17, scope: !2810)
!2830 = !DILocation(line: 492, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !177, line: 492, column: 21)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !177, line: 491, column: 15)
!2833 = !DILocation(line: 492, column: 21, scope: !2832)
!2834 = !DILocation(line: 493, column: 19, scope: !2831)
!2835 = !DILocation(line: 494, column: 17, scope: !2832)
!2836 = !DILocation(line: 499, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2810, file: !177, line: 499, column: 17)
!2838 = !DILocation(line: 499, column: 35, scope: !2837)
!2839 = !DILocation(line: 499, column: 38, scope: !2837)
!2840 = !DILocation(line: 499, column: 57, scope: !2837)
!2841 = !DILocation(line: 499, column: 60, scope: !2837)
!2842 = !DILocation(line: 499, column: 17, scope: !2810)
!2843 = !DILocation(line: 500, column: 15, scope: !2837)
!2844 = !DILabel(scope: !2810, name: "c_and_shell_escape", file: !177, line: 502)
!2845 = !DILocation(line: 502, column: 11, scope: !2810)
!2846 = !DILocation(line: 503, column: 17, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2810, file: !177, line: 503, column: 17)
!2848 = !DILocation(line: 503, column: 31, scope: !2847)
!2849 = !DILocation(line: 504, column: 17, scope: !2847)
!2850 = !DILocation(line: 504, column: 20, scope: !2847)
!2851 = !DILocation(line: 503, column: 17, scope: !2810)
!2852 = !DILocation(line: 505, column: 15, scope: !2847)
!2853 = !DILabel(scope: !2810, name: "c_escape", file: !177, line: 507)
!2854 = !DILocation(line: 507, column: 11, scope: !2810)
!2855 = !DILocation(line: 508, column: 17, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2810, file: !177, line: 508, column: 17)
!2857 = !DILocation(line: 508, column: 17, scope: !2810)
!2858 = !DILocation(line: 510, column: 21, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !177, line: 509, column: 15)
!2860 = !DILocation(line: 510, column: 19, scope: !2859)
!2861 = !DILocation(line: 511, column: 17, scope: !2859)
!2862 = !DILocation(line: 513, column: 13, scope: !2810)
!2863 = !DILocation(line: 517, column: 18, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 517, column: 15)
!2865 = !DILocation(line: 517, column: 26, scope: !2864)
!2866 = !DILocation(line: 517, column: 15, scope: !2682)
!2867 = !DILocation(line: 517, column: 40, scope: !2864)
!2868 = !DILocation(line: 517, column: 47, scope: !2864)
!2869 = !DILocation(line: 517, column: 57, scope: !2864)
!2870 = !DILocation(line: 517, column: 65, scope: !2864)
!2871 = !DILocation(line: 518, column: 13, scope: !2864)
!2872 = !DILocation(line: 517, column: 69, scope: !2864)
!2873 = !DILocation(line: 521, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 521, column: 15)
!2875 = !DILocation(line: 521, column: 17, scope: !2874)
!2876 = !DILocation(line: 521, column: 15, scope: !2682)
!2877 = !DILocation(line: 522, column: 13, scope: !2874)
!2878 = !DILocation(line: 521, column: 20, scope: !2874)
!2879 = !DILocation(line: 525, column: 36, scope: !2682)
!2880 = !DILocation(line: 525, column: 11, scope: !2682)
!2881 = !DILocation(line: 536, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 536, column: 15)
!2883 = !DILocation(line: 536, column: 29, scope: !2882)
!2884 = !DILocation(line: 537, column: 15, scope: !2882)
!2885 = !DILocation(line: 537, column: 18, scope: !2882)
!2886 = !DILocation(line: 536, column: 15, scope: !2682)
!2887 = !DILocation(line: 538, column: 13, scope: !2882)
!2888 = !DILocation(line: 539, column: 11, scope: !2682)
!2889 = !DILocation(line: 542, column: 36, scope: !2682)
!2890 = !DILocation(line: 543, column: 36, scope: !2682)
!2891 = !DILocation(line: 544, column: 15, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 544, column: 15)
!2893 = !DILocation(line: 544, column: 29, scope: !2892)
!2894 = !DILocation(line: 544, column: 15, scope: !2682)
!2895 = !DILocation(line: 546, column: 19, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !177, line: 546, column: 19)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !177, line: 545, column: 13)
!2898 = !DILocation(line: 546, column: 19, scope: !2897)
!2899 = !DILocation(line: 547, column: 17, scope: !2896)
!2900 = !DILocation(line: 549, column: 19, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2897, file: !177, line: 549, column: 19)
!2902 = !DILocation(line: 549, column: 30, scope: !2901)
!2903 = !DILocation(line: 549, column: 35, scope: !2901)
!2904 = !DILocation(line: 549, column: 19, scope: !2897)
!2905 = !DILocation(line: 554, column: 37, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !177, line: 550, column: 17)
!2907 = !DILocation(line: 554, column: 35, scope: !2906)
!2908 = !DILocation(line: 555, column: 30, scope: !2906)
!2909 = !DILocation(line: 556, column: 17, scope: !2906)
!2910 = !DILocation(line: 558, column: 15, scope: !2897)
!2911 = !DILocation(line: 558, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !177, line: 558, column: 15)
!2913 = distinct !DILexicalBlock(scope: !2897, file: !177, line: 558, column: 15)
!2914 = !DILocation(line: 558, column: 15, scope: !2913)
!2915 = !DILocation(line: 559, column: 15, scope: !2897)
!2916 = !DILocation(line: 559, column: 15, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !177, line: 559, column: 15)
!2918 = distinct !DILexicalBlock(scope: !2897, file: !177, line: 559, column: 15)
!2919 = !DILocation(line: 559, column: 15, scope: !2918)
!2920 = !DILocation(line: 560, column: 15, scope: !2897)
!2921 = !DILocation(line: 560, column: 15, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !177, line: 560, column: 15)
!2923 = distinct !DILexicalBlock(scope: !2897, file: !177, line: 560, column: 15)
!2924 = !DILocation(line: 560, column: 15, scope: !2923)
!2925 = !DILocation(line: 561, column: 40, scope: !2897)
!2926 = !DILocation(line: 562, column: 13, scope: !2897)
!2927 = !DILocation(line: 563, column: 11, scope: !2682)
!2928 = !DILocation(line: 587, column: 36, scope: !2682)
!2929 = !DILocation(line: 588, column: 11, scope: !2682)
!2930 = !DILocalVariable(name: "m", scope: !2931, file: !177, line: 598, type: !98)
!2931 = distinct !DILexicalBlock(scope: !2682, file: !177, line: 596, column: 11)
!2932 = !DILocation(line: 598, column: 20, scope: !2931)
!2933 = !DILocalVariable(name: "printable", scope: !2931, file: !177, line: 600, type: !65)
!2934 = !DILocation(line: 600, column: 18, scope: !2931)
!2935 = !DILocation(line: 602, column: 17, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !177, line: 602, column: 17)
!2937 = !DILocation(line: 602, column: 17, scope: !2931)
!2938 = !DILocation(line: 604, column: 19, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !177, line: 603, column: 15)
!2940 = !DILocation(line: 605, column: 29, scope: !2939)
!2941 = !DILocation(line: 605, column: 41, scope: !2939)
!2942 = !DILocation(line: 605, column: 27, scope: !2939)
!2943 = !DILocation(line: 606, column: 15, scope: !2939)
!2944 = !DILocalVariable(name: "mbs", scope: !2945, file: !177, line: 609, type: !2946)
!2945 = distinct !DILexicalBlock(scope: !2936, file: !177, line: 608, column: 15)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !256, line: 6, baseType: !2947)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !258, line: 21, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 13, size: 64, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2948, file: !258, line: 15, baseType: !60, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2948, file: !258, line: 20, baseType: !2952, size: 32, offset: 32)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !258, line: 16, size: 32, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2952, file: !258, line: 18, baseType: !6, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2952, file: !258, line: 19, baseType: !267, size: 32)
!2956 = !DILocation(line: 609, column: 27, scope: !2945)
!2957 = !DILocation(line: 609, column: 32, scope: !2945)
!2958 = !DILocation(line: 611, column: 19, scope: !2945)
!2959 = !DILocation(line: 612, column: 27, scope: !2945)
!2960 = !DILocation(line: 613, column: 21, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2945, file: !177, line: 613, column: 21)
!2962 = !DILocation(line: 613, column: 29, scope: !2961)
!2963 = !DILocation(line: 613, column: 21, scope: !2945)
!2964 = !DILocation(line: 614, column: 37, scope: !2961)
!2965 = !DILocation(line: 614, column: 29, scope: !2961)
!2966 = !DILocation(line: 614, column: 27, scope: !2961)
!2967 = !DILocation(line: 614, column: 19, scope: !2961)
!2968 = !DILocation(line: 616, column: 17, scope: !2945)
!2969 = !DILocalVariable(name: "w", scope: !2970, file: !177, line: 618, type: !886)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !177, line: 617, column: 19)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !177, line: 616, column: 17)
!2972 = distinct !DILexicalBlock(scope: !2945, file: !177, line: 616, column: 17)
!2973 = !DILocation(line: 618, column: 30, scope: !2970)
!2974 = !DILocalVariable(name: "bytes", scope: !2970, file: !177, line: 619, type: !98)
!2975 = !DILocation(line: 619, column: 28, scope: !2970)
!2976 = !DILocation(line: 619, column: 51, scope: !2970)
!2977 = !DILocation(line: 619, column: 55, scope: !2970)
!2978 = !DILocation(line: 619, column: 59, scope: !2970)
!2979 = !DILocation(line: 619, column: 57, scope: !2970)
!2980 = !DILocation(line: 620, column: 46, scope: !2970)
!2981 = !DILocation(line: 620, column: 57, scope: !2970)
!2982 = !DILocation(line: 620, column: 61, scope: !2970)
!2983 = !DILocation(line: 620, column: 59, scope: !2970)
!2984 = !DILocation(line: 620, column: 54, scope: !2970)
!2985 = !DILocation(line: 619, column: 36, scope: !2970)
!2986 = !DILocation(line: 621, column: 25, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2970, file: !177, line: 621, column: 25)
!2988 = !DILocation(line: 621, column: 31, scope: !2987)
!2989 = !DILocation(line: 621, column: 25, scope: !2970)
!2990 = !DILocation(line: 622, column: 23, scope: !2987)
!2991 = !DILocation(line: 623, column: 30, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !177, line: 623, column: 30)
!2993 = !DILocation(line: 623, column: 36, scope: !2992)
!2994 = !DILocation(line: 623, column: 30, scope: !2987)
!2995 = !DILocation(line: 625, column: 35, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !177, line: 624, column: 23)
!2997 = !DILocation(line: 626, column: 25, scope: !2996)
!2998 = !DILocation(line: 628, column: 30, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2992, file: !177, line: 628, column: 30)
!3000 = !DILocation(line: 628, column: 36, scope: !2999)
!3001 = !DILocation(line: 628, column: 30, scope: !2992)
!3002 = !DILocation(line: 630, column: 35, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !177, line: 629, column: 23)
!3004 = !DILocation(line: 631, column: 25, scope: !3003)
!3005 = !DILocation(line: 631, column: 32, scope: !3003)
!3006 = !DILocation(line: 631, column: 36, scope: !3003)
!3007 = !DILocation(line: 631, column: 34, scope: !3003)
!3008 = !DILocation(line: 631, column: 40, scope: !3003)
!3009 = !DILocation(line: 631, column: 38, scope: !3003)
!3010 = !DILocation(line: 631, column: 48, scope: !3003)
!3011 = !DILocation(line: 631, column: 51, scope: !3003)
!3012 = !DILocation(line: 631, column: 55, scope: !3003)
!3013 = !DILocation(line: 631, column: 59, scope: !3003)
!3014 = !DILocation(line: 631, column: 57, scope: !3003)
!3015 = !DILocation(line: 0, scope: !3003)
!3016 = !DILocation(line: 632, column: 28, scope: !3003)
!3017 = distinct !{!3017, !3004, !3016, !496}
!3018 = !DILocation(line: 633, column: 25, scope: !3003)
!3019 = !DILocation(line: 645, column: 44, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !177, line: 645, column: 29)
!3021 = distinct !DILexicalBlock(scope: !2999, file: !177, line: 636, column: 23)
!3022 = !DILocation(line: 646, column: 29, scope: !3020)
!3023 = !DILocation(line: 646, column: 32, scope: !3020)
!3024 = !DILocation(line: 646, column: 46, scope: !3020)
!3025 = !DILocation(line: 645, column: 29, scope: !3021)
!3026 = !DILocalVariable(name: "j", scope: !3027, file: !177, line: 648, type: !98)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !177, line: 648, column: 29)
!3028 = distinct !DILexicalBlock(scope: !3020, file: !177, line: 647, column: 27)
!3029 = !DILocation(line: 648, column: 41, scope: !3027)
!3030 = !DILocation(line: 648, column: 34, scope: !3027)
!3031 = !DILocation(line: 648, column: 48, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !177, line: 648, column: 29)
!3033 = !DILocation(line: 648, column: 52, scope: !3032)
!3034 = !DILocation(line: 648, column: 50, scope: !3032)
!3035 = !DILocation(line: 648, column: 29, scope: !3027)
!3036 = !DILocation(line: 649, column: 39, scope: !3032)
!3037 = !DILocation(line: 649, column: 43, scope: !3032)
!3038 = !DILocation(line: 649, column: 47, scope: !3032)
!3039 = !DILocation(line: 649, column: 45, scope: !3032)
!3040 = !DILocation(line: 649, column: 51, scope: !3032)
!3041 = !DILocation(line: 649, column: 49, scope: !3032)
!3042 = !DILocation(line: 649, column: 31, scope: !3032)
!3043 = !DILocation(line: 653, column: 35, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3032, file: !177, line: 650, column: 33)
!3045 = !DILocation(line: 654, column: 33, scope: !3044)
!3046 = !DILocation(line: 648, column: 60, scope: !3032)
!3047 = !DILocation(line: 648, column: 29, scope: !3032)
!3048 = distinct !{!3048, !3035, !3049, !496}
!3049 = !DILocation(line: 654, column: 33, scope: !3027)
!3050 = !DILocation(line: 655, column: 27, scope: !3028)
!3051 = !DILocation(line: 657, column: 43, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3021, file: !177, line: 657, column: 29)
!3053 = !DILocation(line: 657, column: 31, scope: !3052)
!3054 = !DILocation(line: 657, column: 29, scope: !3021)
!3055 = !DILocation(line: 658, column: 37, scope: !3052)
!3056 = !DILocation(line: 658, column: 27, scope: !3052)
!3057 = !DILocation(line: 659, column: 30, scope: !3021)
!3058 = !DILocation(line: 659, column: 27, scope: !3021)
!3059 = !DILocation(line: 664, column: 23, scope: !2970)
!3060 = !DILocation(line: 668, column: 40, scope: !2931)
!3061 = !DILocation(line: 668, column: 38, scope: !2931)
!3062 = !DILocation(line: 670, column: 21, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2931, file: !177, line: 670, column: 17)
!3064 = !DILocation(line: 670, column: 19, scope: !3063)
!3065 = !DILocation(line: 670, column: 23, scope: !3063)
!3066 = !DILocation(line: 670, column: 27, scope: !3063)
!3067 = !DILocation(line: 670, column: 45, scope: !3063)
!3068 = !DILocation(line: 670, column: 50, scope: !3063)
!3069 = !DILocation(line: 670, column: 17, scope: !2931)
!3070 = !DILocalVariable(name: "ilim", scope: !3071, file: !177, line: 674, type: !98)
!3071 = distinct !DILexicalBlock(scope: !3063, file: !177, line: 671, column: 15)
!3072 = !DILocation(line: 674, column: 24, scope: !3071)
!3073 = !DILocation(line: 674, column: 31, scope: !3071)
!3074 = !DILocation(line: 674, column: 35, scope: !3071)
!3075 = !DILocation(line: 674, column: 33, scope: !3071)
!3076 = !DILocation(line: 676, column: 17, scope: !3071)
!3077 = !DILocation(line: 678, column: 25, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !177, line: 678, column: 25)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !177, line: 677, column: 19)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !177, line: 676, column: 17)
!3081 = distinct !DILexicalBlock(scope: !3071, file: !177, line: 676, column: 17)
!3082 = !DILocation(line: 678, column: 43, scope: !3078)
!3083 = !DILocation(line: 678, column: 48, scope: !3078)
!3084 = !DILocation(line: 678, column: 25, scope: !3079)
!3085 = !DILocation(line: 680, column: 25, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3078, file: !177, line: 679, column: 23)
!3087 = !DILocation(line: 680, column: 25, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !177, line: 680, column: 25)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !177, line: 680, column: 25)
!3090 = !DILocation(line: 680, column: 25, scope: !3089)
!3091 = !DILocation(line: 680, column: 25, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !177, line: 680, column: 25)
!3093 = !DILocation(line: 680, column: 25, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !177, line: 680, column: 25)
!3095 = !DILocation(line: 680, column: 25, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !177, line: 680, column: 25)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !177, line: 680, column: 25)
!3098 = !DILocation(line: 680, column: 25, scope: !3097)
!3099 = !DILocation(line: 680, column: 25, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !177, line: 680, column: 25)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !177, line: 680, column: 25)
!3102 = !DILocation(line: 680, column: 25, scope: !3101)
!3103 = !DILocation(line: 680, column: 25, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !177, line: 680, column: 25)
!3105 = distinct !DILexicalBlock(scope: !3094, file: !177, line: 680, column: 25)
!3106 = !DILocation(line: 680, column: 25, scope: !3105)
!3107 = !DILocation(line: 680, column: 25, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !177, line: 680, column: 25)
!3109 = distinct !DILexicalBlock(scope: !3089, file: !177, line: 680, column: 25)
!3110 = !DILocation(line: 680, column: 25, scope: !3109)
!3111 = !DILocation(line: 681, column: 25, scope: !3086)
!3112 = !DILocation(line: 681, column: 25, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !177, line: 681, column: 25)
!3114 = distinct !DILexicalBlock(scope: !3086, file: !177, line: 681, column: 25)
!3115 = !DILocation(line: 681, column: 25, scope: !3114)
!3116 = !DILocation(line: 682, column: 25, scope: !3086)
!3117 = !DILocation(line: 682, column: 25, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !177, line: 682, column: 25)
!3119 = distinct !DILexicalBlock(scope: !3086, file: !177, line: 682, column: 25)
!3120 = !DILocation(line: 682, column: 25, scope: !3119)
!3121 = !DILocation(line: 683, column: 36, scope: !3086)
!3122 = !DILocation(line: 683, column: 38, scope: !3086)
!3123 = !DILocation(line: 683, column: 33, scope: !3086)
!3124 = !DILocation(line: 683, column: 29, scope: !3086)
!3125 = !DILocation(line: 683, column: 27, scope: !3086)
!3126 = !DILocation(line: 684, column: 23, scope: !3086)
!3127 = !DILocation(line: 685, column: 30, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3078, file: !177, line: 685, column: 30)
!3129 = !DILocation(line: 685, column: 30, scope: !3078)
!3130 = !DILocation(line: 687, column: 25, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !177, line: 686, column: 23)
!3132 = !DILocation(line: 687, column: 25, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !177, line: 687, column: 25)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !177, line: 687, column: 25)
!3135 = !DILocation(line: 687, column: 25, scope: !3134)
!3136 = !DILocation(line: 688, column: 40, scope: !3131)
!3137 = !DILocation(line: 689, column: 23, scope: !3131)
!3138 = !DILocation(line: 690, column: 25, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3079, file: !177, line: 690, column: 25)
!3140 = !DILocation(line: 690, column: 33, scope: !3139)
!3141 = !DILocation(line: 690, column: 35, scope: !3139)
!3142 = !DILocation(line: 690, column: 30, scope: !3139)
!3143 = !DILocation(line: 690, column: 25, scope: !3079)
!3144 = !DILocation(line: 691, column: 23, scope: !3139)
!3145 = !DILocation(line: 692, column: 21, scope: !3079)
!3146 = !DILocation(line: 692, column: 21, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !177, line: 692, column: 21)
!3148 = distinct !DILexicalBlock(scope: !3079, file: !177, line: 692, column: 21)
!3149 = !DILocation(line: 692, column: 21, scope: !3148)
!3150 = !DILocation(line: 692, column: 21, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !177, line: 692, column: 21)
!3152 = !DILocation(line: 692, column: 21, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !177, line: 692, column: 21)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !177, line: 692, column: 21)
!3155 = !DILocation(line: 692, column: 21, scope: !3154)
!3156 = !DILocation(line: 692, column: 21, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !177, line: 692, column: 21)
!3158 = distinct !DILexicalBlock(scope: !3151, file: !177, line: 692, column: 21)
!3159 = !DILocation(line: 692, column: 21, scope: !3158)
!3160 = !DILocation(line: 693, column: 21, scope: !3079)
!3161 = !DILocation(line: 693, column: 21, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !177, line: 693, column: 21)
!3163 = distinct !DILexicalBlock(scope: !3079, file: !177, line: 693, column: 21)
!3164 = !DILocation(line: 693, column: 21, scope: !3163)
!3165 = !DILocation(line: 694, column: 25, scope: !3079)
!3166 = !DILocation(line: 694, column: 29, scope: !3079)
!3167 = !DILocation(line: 694, column: 23, scope: !3079)
!3168 = !DILocation(line: 676, column: 17, scope: !3080)
!3169 = distinct !{!3169, !3170, !3171}
!3170 = !DILocation(line: 676, column: 17, scope: !3081)
!3171 = !DILocation(line: 695, column: 19, scope: !3081)
!3172 = !DILocation(line: 697, column: 17, scope: !3071)
!3173 = !DILocation(line: 700, column: 9, scope: !2682)
!3174 = !DILocation(line: 702, column: 16, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 702, column: 11)
!3176 = !DILocation(line: 702, column: 34, scope: !3175)
!3177 = !DILocation(line: 702, column: 37, scope: !3175)
!3178 = !DILocation(line: 702, column: 51, scope: !3175)
!3179 = !DILocation(line: 703, column: 15, scope: !3175)
!3180 = !DILocation(line: 703, column: 18, scope: !3175)
!3181 = !DILocation(line: 704, column: 14, scope: !3175)
!3182 = !DILocation(line: 704, column: 17, scope: !3175)
!3183 = !DILocation(line: 705, column: 14, scope: !3175)
!3184 = !DILocation(line: 705, column: 17, scope: !3175)
!3185 = !DILocation(line: 705, column: 33, scope: !3175)
!3186 = !DILocation(line: 705, column: 35, scope: !3175)
!3187 = !DILocation(line: 705, column: 51, scope: !3175)
!3188 = !DILocation(line: 705, column: 53, scope: !3175)
!3189 = !DILocation(line: 705, column: 47, scope: !3175)
!3190 = !DILocation(line: 705, column: 65, scope: !3175)
!3191 = !DILocation(line: 706, column: 11, scope: !3175)
!3192 = !DILocation(line: 706, column: 15, scope: !3175)
!3193 = !DILocation(line: 702, column: 11, scope: !2632)
!3194 = !DILocation(line: 707, column: 9, scope: !3175)
!3195 = !DILabel(scope: !2632, name: "store_escape", file: !177, line: 709)
!3196 = !DILocation(line: 709, column: 5, scope: !2632)
!3197 = !DILocation(line: 710, column: 7, scope: !2632)
!3198 = !DILocation(line: 710, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !177, line: 710, column: 7)
!3200 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 710, column: 7)
!3201 = !DILocation(line: 710, column: 7, scope: !3200)
!3202 = !DILocation(line: 710, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3200, file: !177, line: 710, column: 7)
!3204 = !DILocation(line: 710, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3203, file: !177, line: 710, column: 7)
!3206 = !DILocation(line: 710, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !177, line: 710, column: 7)
!3208 = distinct !DILexicalBlock(scope: !3205, file: !177, line: 710, column: 7)
!3209 = !DILocation(line: 710, column: 7, scope: !3208)
!3210 = !DILocation(line: 710, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !177, line: 710, column: 7)
!3212 = distinct !DILexicalBlock(scope: !3205, file: !177, line: 710, column: 7)
!3213 = !DILocation(line: 710, column: 7, scope: !3212)
!3214 = !DILocation(line: 710, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !177, line: 710, column: 7)
!3216 = distinct !DILexicalBlock(scope: !3205, file: !177, line: 710, column: 7)
!3217 = !DILocation(line: 710, column: 7, scope: !3216)
!3218 = !DILocation(line: 710, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !177, line: 710, column: 7)
!3220 = distinct !DILexicalBlock(scope: !3200, file: !177, line: 710, column: 7)
!3221 = !DILocation(line: 710, column: 7, scope: !3220)
!3222 = !DILabel(scope: !2632, name: "store_c", file: !177, line: 712)
!3223 = !DILocation(line: 712, column: 5, scope: !2632)
!3224 = !DILocation(line: 713, column: 7, scope: !2632)
!3225 = !DILocation(line: 713, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !177, line: 713, column: 7)
!3227 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 713, column: 7)
!3228 = !DILocation(line: 713, column: 7, scope: !3227)
!3229 = !DILocation(line: 713, column: 7, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !177, line: 713, column: 7)
!3231 = !DILocation(line: 713, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !177, line: 713, column: 7)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !177, line: 713, column: 7)
!3234 = !DILocation(line: 713, column: 7, scope: !3233)
!3235 = !DILocation(line: 713, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !177, line: 713, column: 7)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !177, line: 713, column: 7)
!3238 = !DILocation(line: 713, column: 7, scope: !3237)
!3239 = !DILocation(line: 714, column: 7, scope: !2632)
!3240 = !DILocation(line: 714, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !177, line: 714, column: 7)
!3242 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 714, column: 7)
!3243 = !DILocation(line: 714, column: 7, scope: !3242)
!3244 = !DILocation(line: 716, column: 13, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !2632, file: !177, line: 716, column: 11)
!3246 = !DILocation(line: 716, column: 11, scope: !2632)
!3247 = !DILocation(line: 717, column: 38, scope: !3245)
!3248 = !DILocation(line: 717, column: 9, scope: !3245)
!3249 = !DILocation(line: 718, column: 5, scope: !2632)
!3250 = !DILocation(line: 395, column: 82, scope: !2621)
!3251 = !DILocation(line: 395, column: 3, scope: !2621)
!3252 = distinct !{!3252, !2630, !3253, !496}
!3253 = !DILocation(line: 718, column: 5, scope: !2617)
!3254 = !DILocation(line: 720, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 720, column: 7)
!3256 = !DILocation(line: 720, column: 11, scope: !3255)
!3257 = !DILocation(line: 720, column: 16, scope: !3255)
!3258 = !DILocation(line: 720, column: 19, scope: !3255)
!3259 = !DILocation(line: 720, column: 33, scope: !3255)
!3260 = !DILocation(line: 721, column: 7, scope: !3255)
!3261 = !DILocation(line: 721, column: 10, scope: !3255)
!3262 = !DILocation(line: 720, column: 7, scope: !2479)
!3263 = !DILocation(line: 722, column: 5, scope: !3255)
!3264 = !DILocation(line: 728, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 728, column: 7)
!3266 = !DILocation(line: 728, column: 21, scope: !3265)
!3267 = !DILocation(line: 728, column: 51, scope: !3265)
!3268 = !DILocation(line: 728, column: 56, scope: !3265)
!3269 = !DILocation(line: 729, column: 7, scope: !3265)
!3270 = !DILocation(line: 729, column: 10, scope: !3265)
!3271 = !DILocation(line: 728, column: 7, scope: !2479)
!3272 = !DILocation(line: 731, column: 11, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !177, line: 731, column: 11)
!3274 = distinct !DILexicalBlock(scope: !3265, file: !177, line: 730, column: 5)
!3275 = !DILocation(line: 731, column: 11, scope: !3274)
!3276 = !DILocation(line: 732, column: 42, scope: !3273)
!3277 = !DILocation(line: 732, column: 50, scope: !3273)
!3278 = !DILocation(line: 732, column: 67, scope: !3273)
!3279 = !DILocation(line: 732, column: 72, scope: !3273)
!3280 = !DILocation(line: 734, column: 42, scope: !3273)
!3281 = !DILocation(line: 734, column: 49, scope: !3273)
!3282 = !DILocation(line: 735, column: 42, scope: !3273)
!3283 = !DILocation(line: 735, column: 54, scope: !3273)
!3284 = !DILocation(line: 732, column: 16, scope: !3273)
!3285 = !DILocation(line: 732, column: 9, scope: !3273)
!3286 = !DILocation(line: 736, column: 18, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3273, file: !177, line: 736, column: 16)
!3288 = !DILocation(line: 736, column: 29, scope: !3287)
!3289 = !DILocation(line: 736, column: 32, scope: !3287)
!3290 = !DILocation(line: 736, column: 16, scope: !3273)
!3291 = !DILocation(line: 739, column: 24, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3287, file: !177, line: 737, column: 9)
!3293 = !DILocation(line: 739, column: 22, scope: !3292)
!3294 = !DILocation(line: 740, column: 15, scope: !3292)
!3295 = !DILocation(line: 741, column: 11, scope: !3292)
!3296 = !DILocation(line: 743, column: 5, scope: !3274)
!3297 = !DILocation(line: 745, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 745, column: 7)
!3299 = !DILocation(line: 745, column: 20, scope: !3298)
!3300 = !DILocation(line: 745, column: 24, scope: !3298)
!3301 = !DILocation(line: 745, column: 7, scope: !2479)
!3302 = !DILocation(line: 746, column: 5, scope: !3298)
!3303 = !DILocation(line: 746, column: 13, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !177, line: 746, column: 5)
!3305 = distinct !DILexicalBlock(scope: !3298, file: !177, line: 746, column: 5)
!3306 = !DILocation(line: 746, column: 12, scope: !3304)
!3307 = !DILocation(line: 746, column: 5, scope: !3305)
!3308 = !DILocation(line: 747, column: 7, scope: !3304)
!3309 = !DILocation(line: 747, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !177, line: 747, column: 7)
!3311 = distinct !DILexicalBlock(scope: !3304, file: !177, line: 747, column: 7)
!3312 = !DILocation(line: 747, column: 7, scope: !3311)
!3313 = !DILocation(line: 746, column: 39, scope: !3304)
!3314 = !DILocation(line: 746, column: 5, scope: !3304)
!3315 = distinct !{!3315, !3307, !3316, !496}
!3316 = !DILocation(line: 747, column: 7, scope: !3305)
!3317 = !DILocation(line: 749, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 749, column: 7)
!3319 = !DILocation(line: 749, column: 13, scope: !3318)
!3320 = !DILocation(line: 749, column: 11, scope: !3318)
!3321 = !DILocation(line: 749, column: 7, scope: !2479)
!3322 = !DILocation(line: 750, column: 5, scope: !3318)
!3323 = !DILocation(line: 750, column: 12, scope: !3318)
!3324 = !DILocation(line: 750, column: 17, scope: !3318)
!3325 = !DILocation(line: 751, column: 10, scope: !2479)
!3326 = !DILocation(line: 751, column: 3, scope: !2479)
!3327 = !DILabel(scope: !2479, name: "force_outer_quoting_style", file: !177, line: 753)
!3328 = !DILocation(line: 753, column: 2, scope: !2479)
!3329 = !DILocation(line: 756, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !2479, file: !177, line: 756, column: 7)
!3331 = !DILocation(line: 756, column: 21, scope: !3330)
!3332 = !DILocation(line: 756, column: 51, scope: !3330)
!3333 = !DILocation(line: 756, column: 54, scope: !3330)
!3334 = !DILocation(line: 756, column: 7, scope: !2479)
!3335 = !DILocation(line: 757, column: 19, scope: !3330)
!3336 = !DILocation(line: 757, column: 5, scope: !3330)
!3337 = !DILocation(line: 758, column: 36, scope: !2479)
!3338 = !DILocation(line: 758, column: 44, scope: !2479)
!3339 = !DILocation(line: 758, column: 56, scope: !2479)
!3340 = !DILocation(line: 758, column: 61, scope: !2479)
!3341 = !DILocation(line: 759, column: 36, scope: !2479)
!3342 = !DILocation(line: 760, column: 36, scope: !2479)
!3343 = !DILocation(line: 760, column: 42, scope: !2479)
!3344 = !DILocation(line: 761, column: 36, scope: !2479)
!3345 = !DILocation(line: 761, column: 48, scope: !2479)
!3346 = !DILocation(line: 758, column: 10, scope: !2479)
!3347 = !DILocation(line: 758, column: 3, scope: !2479)
!3348 = !DILocation(line: 762, column: 1, scope: !2479)
!3349 = !DILocalVariable(name: "msgid", arg: 1, scope: !213, file: !177, line: 197, type: !74)
!3350 = !DILocation(line: 197, column: 28, scope: !213)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !213, file: !177, line: 197, type: !33)
!3352 = !DILocation(line: 197, column: 54, scope: !213)
!3353 = !DILocalVariable(name: "translation", scope: !213, file: !177, line: 199, type: !74)
!3354 = !DILocation(line: 199, column: 15, scope: !213)
!3355 = !DILocation(line: 199, column: 29, scope: !213)
!3356 = !DILocation(line: 201, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !213, file: !177, line: 201, column: 7)
!3358 = !DILocation(line: 201, column: 22, scope: !3357)
!3359 = !DILocation(line: 201, column: 19, scope: !3357)
!3360 = !DILocation(line: 201, column: 7, scope: !213)
!3361 = !DILocation(line: 202, column: 12, scope: !3357)
!3362 = !DILocation(line: 202, column: 5, scope: !3357)
!3363 = !DILocalVariable(name: "w", scope: !213, file: !177, line: 229, type: !886)
!3364 = !DILocation(line: 229, column: 12, scope: !213)
!3365 = !DILocalVariable(name: "mbs", scope: !213, file: !177, line: 230, type: !2946)
!3366 = !DILocation(line: 230, column: 13, scope: !213)
!3367 = !DILocation(line: 230, column: 18, scope: !213)
!3368 = !DILocation(line: 231, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !213, file: !177, line: 231, column: 7)
!3370 = !DILocation(line: 231, column: 40, scope: !3369)
!3371 = !DILocation(line: 231, column: 45, scope: !3369)
!3372 = !DILocation(line: 231, column: 48, scope: !3369)
!3373 = !DILocation(line: 231, column: 50, scope: !3369)
!3374 = !DILocation(line: 231, column: 7, scope: !213)
!3375 = !DILocation(line: 232, column: 18, scope: !3369)
!3376 = !DILocation(line: 232, column: 27, scope: !3369)
!3377 = !DILocation(line: 232, column: 12, scope: !3369)
!3378 = !DILocation(line: 232, column: 5, scope: !3369)
!3379 = !DILocation(line: 234, column: 11, scope: !213)
!3380 = !DILocation(line: 234, column: 13, scope: !213)
!3381 = !DILocation(line: 234, column: 3, scope: !213)
!3382 = !DILocation(line: 235, column: 1, scope: !213)
!3383 = distinct !DISubprogram(name: "quotearg_alloc", scope: !177, file: !177, line: 788, type: !3384, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!57, !74, !98, !2319}
!3386 = !DILocalVariable(name: "arg", arg: 1, scope: !3383, file: !177, line: 788, type: !74)
!3387 = !DILocation(line: 788, column: 29, scope: !3383)
!3388 = !DILocalVariable(name: "argsize", arg: 2, scope: !3383, file: !177, line: 788, type: !98)
!3389 = !DILocation(line: 788, column: 41, scope: !3383)
!3390 = !DILocalVariable(name: "o", arg: 3, scope: !3383, file: !177, line: 789, type: !2319)
!3391 = !DILocation(line: 789, column: 47, scope: !3383)
!3392 = !DILocation(line: 791, column: 30, scope: !3383)
!3393 = !DILocation(line: 791, column: 35, scope: !3383)
!3394 = !DILocation(line: 791, column: 50, scope: !3383)
!3395 = !DILocation(line: 791, column: 10, scope: !3383)
!3396 = !DILocation(line: 791, column: 3, scope: !3383)
!3397 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !177, file: !177, line: 801, type: !3398, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!57, !74, !98, !322, !2319}
!3400 = !DILocalVariable(name: "arg", arg: 1, scope: !3397, file: !177, line: 801, type: !74)
!3401 = !DILocation(line: 801, column: 33, scope: !3397)
!3402 = !DILocalVariable(name: "argsize", arg: 2, scope: !3397, file: !177, line: 801, type: !98)
!3403 = !DILocation(line: 801, column: 45, scope: !3397)
!3404 = !DILocalVariable(name: "size", arg: 3, scope: !3397, file: !177, line: 801, type: !322)
!3405 = !DILocation(line: 801, column: 62, scope: !3397)
!3406 = !DILocalVariable(name: "o", arg: 4, scope: !3397, file: !177, line: 802, type: !2319)
!3407 = !DILocation(line: 802, column: 51, scope: !3397)
!3408 = !DILocalVariable(name: "p", scope: !3397, file: !177, line: 804, type: !2319)
!3409 = !DILocation(line: 804, column: 33, scope: !3397)
!3410 = !DILocation(line: 804, column: 37, scope: !3397)
!3411 = !DILocation(line: 804, column: 41, scope: !3397)
!3412 = !DILocalVariable(name: "saved_errno", scope: !3397, file: !177, line: 805, type: !60)
!3413 = !DILocation(line: 805, column: 7, scope: !3397)
!3414 = !DILocation(line: 805, column: 21, scope: !3397)
!3415 = !DILocalVariable(name: "flags", scope: !3397, file: !177, line: 807, type: !60)
!3416 = !DILocation(line: 807, column: 7, scope: !3397)
!3417 = !DILocation(line: 807, column: 15, scope: !3397)
!3418 = !DILocation(line: 807, column: 18, scope: !3397)
!3419 = !DILocation(line: 807, column: 27, scope: !3397)
!3420 = !DILocation(line: 807, column: 24, scope: !3397)
!3421 = !DILocalVariable(name: "bufsize", scope: !3397, file: !177, line: 808, type: !98)
!3422 = !DILocation(line: 808, column: 10, scope: !3397)
!3423 = !DILocation(line: 808, column: 55, scope: !3397)
!3424 = !DILocation(line: 808, column: 60, scope: !3397)
!3425 = !DILocation(line: 808, column: 69, scope: !3397)
!3426 = !DILocation(line: 808, column: 72, scope: !3397)
!3427 = !DILocation(line: 809, column: 46, scope: !3397)
!3428 = !DILocation(line: 809, column: 53, scope: !3397)
!3429 = !DILocation(line: 809, column: 56, scope: !3397)
!3430 = !DILocation(line: 810, column: 46, scope: !3397)
!3431 = !DILocation(line: 810, column: 49, scope: !3397)
!3432 = !DILocation(line: 811, column: 46, scope: !3397)
!3433 = !DILocation(line: 811, column: 49, scope: !3397)
!3434 = !DILocation(line: 808, column: 20, scope: !3397)
!3435 = !DILocation(line: 811, column: 62, scope: !3397)
!3436 = !DILocalVariable(name: "buf", scope: !3397, file: !177, line: 812, type: !57)
!3437 = !DILocation(line: 812, column: 9, scope: !3397)
!3438 = !DILocation(line: 812, column: 27, scope: !3397)
!3439 = !DILocation(line: 812, column: 15, scope: !3397)
!3440 = !DILocation(line: 813, column: 29, scope: !3397)
!3441 = !DILocation(line: 813, column: 34, scope: !3397)
!3442 = !DILocation(line: 813, column: 43, scope: !3397)
!3443 = !DILocation(line: 813, column: 48, scope: !3397)
!3444 = !DILocation(line: 813, column: 57, scope: !3397)
!3445 = !DILocation(line: 813, column: 60, scope: !3397)
!3446 = !DILocation(line: 813, column: 67, scope: !3397)
!3447 = !DILocation(line: 814, column: 29, scope: !3397)
!3448 = !DILocation(line: 814, column: 32, scope: !3397)
!3449 = !DILocation(line: 815, column: 29, scope: !3397)
!3450 = !DILocation(line: 815, column: 32, scope: !3397)
!3451 = !DILocation(line: 815, column: 44, scope: !3397)
!3452 = !DILocation(line: 815, column: 47, scope: !3397)
!3453 = !DILocation(line: 813, column: 3, scope: !3397)
!3454 = !DILocation(line: 816, column: 11, scope: !3397)
!3455 = !DILocation(line: 816, column: 3, scope: !3397)
!3456 = !DILocation(line: 816, column: 9, scope: !3397)
!3457 = !DILocation(line: 817, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3397, file: !177, line: 817, column: 7)
!3459 = !DILocation(line: 817, column: 7, scope: !3397)
!3460 = !DILocation(line: 818, column: 13, scope: !3458)
!3461 = !DILocation(line: 818, column: 21, scope: !3458)
!3462 = !DILocation(line: 818, column: 6, scope: !3458)
!3463 = !DILocation(line: 818, column: 11, scope: !3458)
!3464 = !DILocation(line: 818, column: 5, scope: !3458)
!3465 = !DILocation(line: 819, column: 10, scope: !3397)
!3466 = !DILocation(line: 819, column: 3, scope: !3397)
!3467 = distinct !DISubprogram(name: "quotearg_free", scope: !177, file: !177, line: 837, type: !155, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3468 = !DILocalVariable(name: "sv", scope: !3467, file: !177, line: 839, type: !221)
!3469 = !DILocation(line: 839, column: 19, scope: !3467)
!3470 = !DILocation(line: 839, column: 24, scope: !3467)
!3471 = !DILocalVariable(name: "i", scope: !3472, file: !177, line: 840, type: !60)
!3472 = distinct !DILexicalBlock(scope: !3467, file: !177, line: 840, column: 3)
!3473 = !DILocation(line: 840, column: 12, scope: !3472)
!3474 = !DILocation(line: 840, column: 8, scope: !3472)
!3475 = !DILocation(line: 840, column: 19, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !177, line: 840, column: 3)
!3477 = !DILocation(line: 840, column: 23, scope: !3476)
!3478 = !DILocation(line: 840, column: 21, scope: !3476)
!3479 = !DILocation(line: 840, column: 3, scope: !3472)
!3480 = !DILocation(line: 841, column: 11, scope: !3476)
!3481 = !DILocation(line: 841, column: 14, scope: !3476)
!3482 = !DILocation(line: 841, column: 17, scope: !3476)
!3483 = !DILocation(line: 841, column: 5, scope: !3476)
!3484 = !DILocation(line: 840, column: 32, scope: !3476)
!3485 = !DILocation(line: 840, column: 3, scope: !3476)
!3486 = distinct !{!3486, !3479, !3487, !496}
!3487 = !DILocation(line: 841, column: 20, scope: !3472)
!3488 = !DILocation(line: 842, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3467, file: !177, line: 842, column: 7)
!3490 = !DILocation(line: 842, column: 13, scope: !3489)
!3491 = !DILocation(line: 842, column: 17, scope: !3489)
!3492 = !DILocation(line: 842, column: 7, scope: !3467)
!3493 = !DILocation(line: 844, column: 13, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3489, file: !177, line: 843, column: 5)
!3495 = !DILocation(line: 844, column: 19, scope: !3494)
!3496 = !DILocation(line: 844, column: 7, scope: !3494)
!3497 = !DILocation(line: 845, column: 21, scope: !3494)
!3498 = !DILocation(line: 846, column: 20, scope: !3494)
!3499 = !DILocation(line: 847, column: 5, scope: !3494)
!3500 = !DILocation(line: 848, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3467, file: !177, line: 848, column: 7)
!3502 = !DILocation(line: 848, column: 10, scope: !3501)
!3503 = !DILocation(line: 848, column: 7, scope: !3467)
!3504 = !DILocation(line: 850, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3501, file: !177, line: 849, column: 5)
!3506 = !DILocation(line: 850, column: 7, scope: !3505)
!3507 = !DILocation(line: 851, column: 15, scope: !3505)
!3508 = !DILocation(line: 852, column: 5, scope: !3505)
!3509 = !DILocation(line: 853, column: 10, scope: !3467)
!3510 = !DILocation(line: 854, column: 1, scope: !3467)
!3511 = distinct !DISubprogram(name: "quotearg_n", scope: !177, file: !177, line: 919, type: !3512, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!57, !60, !74}
!3514 = !DILocalVariable(name: "n", arg: 1, scope: !3511, file: !177, line: 919, type: !60)
!3515 = !DILocation(line: 919, column: 17, scope: !3511)
!3516 = !DILocalVariable(name: "arg", arg: 2, scope: !3511, file: !177, line: 919, type: !74)
!3517 = !DILocation(line: 919, column: 32, scope: !3511)
!3518 = !DILocation(line: 921, column: 30, scope: !3511)
!3519 = !DILocation(line: 921, column: 33, scope: !3511)
!3520 = !DILocation(line: 921, column: 10, scope: !3511)
!3521 = !DILocation(line: 921, column: 3, scope: !3511)
!3522 = distinct !DISubprogram(name: "quotearg_n_options", scope: !177, file: !177, line: 866, type: !3523, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!57, !60, !74, !98, !2319}
!3525 = !DILocalVariable(name: "n", arg: 1, scope: !3522, file: !177, line: 866, type: !60)
!3526 = !DILocation(line: 866, column: 25, scope: !3522)
!3527 = !DILocalVariable(name: "arg", arg: 2, scope: !3522, file: !177, line: 866, type: !74)
!3528 = !DILocation(line: 866, column: 40, scope: !3522)
!3529 = !DILocalVariable(name: "argsize", arg: 3, scope: !3522, file: !177, line: 866, type: !98)
!3530 = !DILocation(line: 866, column: 52, scope: !3522)
!3531 = !DILocalVariable(name: "options", arg: 4, scope: !3522, file: !177, line: 867, type: !2319)
!3532 = !DILocation(line: 867, column: 51, scope: !3522)
!3533 = !DILocalVariable(name: "saved_errno", scope: !3522, file: !177, line: 869, type: !60)
!3534 = !DILocation(line: 869, column: 7, scope: !3522)
!3535 = !DILocation(line: 869, column: 21, scope: !3522)
!3536 = !DILocalVariable(name: "sv", scope: !3522, file: !177, line: 871, type: !221)
!3537 = !DILocation(line: 871, column: 19, scope: !3522)
!3538 = !DILocation(line: 871, column: 24, scope: !3522)
!3539 = !DILocalVariable(name: "nslots_max", scope: !3522, file: !177, line: 873, type: !60)
!3540 = !DILocation(line: 873, column: 7, scope: !3522)
!3541 = !DILocation(line: 874, column: 15, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3522, file: !177, line: 874, column: 7)
!3543 = !DILocation(line: 874, column: 12, scope: !3542)
!3544 = !DILocation(line: 874, column: 17, scope: !3542)
!3545 = !DILocation(line: 874, column: 20, scope: !3542)
!3546 = !DILocation(line: 874, column: 24, scope: !3542)
!3547 = !DILocation(line: 874, column: 22, scope: !3542)
!3548 = !DILocation(line: 874, column: 7, scope: !3522)
!3549 = !DILocation(line: 875, column: 5, scope: !3542)
!3550 = !DILocation(line: 877, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3522, file: !177, line: 877, column: 7)
!3552 = !DILocation(line: 877, column: 17, scope: !3551)
!3553 = !DILocation(line: 877, column: 14, scope: !3551)
!3554 = !DILocation(line: 877, column: 7, scope: !3522)
!3555 = !DILocalVariable(name: "preallocated", scope: !3556, file: !177, line: 879, type: !65)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !177, line: 878, column: 5)
!3557 = !DILocation(line: 879, column: 12, scope: !3556)
!3558 = !DILocation(line: 879, column: 28, scope: !3556)
!3559 = !DILocation(line: 879, column: 31, scope: !3556)
!3560 = !DILocalVariable(name: "new_nslots", scope: !3556, file: !177, line: 880, type: !330)
!3561 = !DILocation(line: 880, column: 13, scope: !3556)
!3562 = !DILocation(line: 880, column: 26, scope: !3556)
!3563 = !DILocation(line: 882, column: 31, scope: !3556)
!3564 = !DILocation(line: 882, column: 53, scope: !3556)
!3565 = !DILocation(line: 883, column: 31, scope: !3556)
!3566 = !DILocation(line: 883, column: 35, scope: !3556)
!3567 = !DILocation(line: 883, column: 33, scope: !3556)
!3568 = !DILocation(line: 883, column: 42, scope: !3556)
!3569 = !DILocation(line: 883, column: 47, scope: !3556)
!3570 = !DILocation(line: 882, column: 22, scope: !3556)
!3571 = !DILocation(line: 882, column: 20, scope: !3556)
!3572 = !DILocation(line: 882, column: 15, scope: !3556)
!3573 = !DILocation(line: 884, column: 11, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3556, file: !177, line: 884, column: 11)
!3575 = !DILocation(line: 884, column: 11, scope: !3556)
!3576 = !DILocation(line: 885, column: 10, scope: !3574)
!3577 = !DILocation(line: 885, column: 15, scope: !3574)
!3578 = !DILocation(line: 885, column: 9, scope: !3574)
!3579 = !DILocation(line: 886, column: 15, scope: !3556)
!3580 = !DILocation(line: 886, column: 20, scope: !3556)
!3581 = !DILocation(line: 886, column: 18, scope: !3556)
!3582 = !DILocation(line: 886, column: 7, scope: !3556)
!3583 = !DILocation(line: 886, column: 32, scope: !3556)
!3584 = !DILocation(line: 886, column: 45, scope: !3556)
!3585 = !DILocation(line: 886, column: 43, scope: !3556)
!3586 = !DILocation(line: 886, column: 53, scope: !3556)
!3587 = !DILocation(line: 887, column: 16, scope: !3556)
!3588 = !DILocation(line: 887, column: 14, scope: !3556)
!3589 = !DILocation(line: 888, column: 5, scope: !3556)
!3590 = !DILocalVariable(name: "size", scope: !3591, file: !177, line: 891, type: !98)
!3591 = distinct !DILexicalBlock(scope: !3522, file: !177, line: 890, column: 3)
!3592 = !DILocation(line: 891, column: 12, scope: !3591)
!3593 = !DILocation(line: 891, column: 19, scope: !3591)
!3594 = !DILocation(line: 891, column: 22, scope: !3591)
!3595 = !DILocation(line: 891, column: 25, scope: !3591)
!3596 = !DILocalVariable(name: "val", scope: !3591, file: !177, line: 892, type: !57)
!3597 = !DILocation(line: 892, column: 11, scope: !3591)
!3598 = !DILocation(line: 892, column: 17, scope: !3591)
!3599 = !DILocation(line: 892, column: 20, scope: !3591)
!3600 = !DILocation(line: 892, column: 23, scope: !3591)
!3601 = !DILocalVariable(name: "flags", scope: !3591, file: !177, line: 894, type: !60)
!3602 = !DILocation(line: 894, column: 9, scope: !3591)
!3603 = !DILocation(line: 894, column: 17, scope: !3591)
!3604 = !DILocation(line: 894, column: 26, scope: !3591)
!3605 = !DILocation(line: 894, column: 32, scope: !3591)
!3606 = !DILocalVariable(name: "qsize", scope: !3591, file: !177, line: 895, type: !98)
!3607 = !DILocation(line: 895, column: 12, scope: !3591)
!3608 = !DILocation(line: 895, column: 46, scope: !3591)
!3609 = !DILocation(line: 895, column: 51, scope: !3591)
!3610 = !DILocation(line: 895, column: 57, scope: !3591)
!3611 = !DILocation(line: 895, column: 62, scope: !3591)
!3612 = !DILocation(line: 896, column: 46, scope: !3591)
!3613 = !DILocation(line: 896, column: 55, scope: !3591)
!3614 = !DILocation(line: 896, column: 62, scope: !3591)
!3615 = !DILocation(line: 897, column: 46, scope: !3591)
!3616 = !DILocation(line: 897, column: 55, scope: !3591)
!3617 = !DILocation(line: 898, column: 46, scope: !3591)
!3618 = !DILocation(line: 898, column: 55, scope: !3591)
!3619 = !DILocation(line: 899, column: 46, scope: !3591)
!3620 = !DILocation(line: 899, column: 55, scope: !3591)
!3621 = !DILocation(line: 895, column: 20, scope: !3591)
!3622 = !DILocation(line: 901, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3591, file: !177, line: 901, column: 9)
!3624 = !DILocation(line: 901, column: 17, scope: !3623)
!3625 = !DILocation(line: 901, column: 14, scope: !3623)
!3626 = !DILocation(line: 901, column: 9, scope: !3591)
!3627 = !DILocation(line: 903, column: 29, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3623, file: !177, line: 902, column: 7)
!3629 = !DILocation(line: 903, column: 35, scope: !3628)
!3630 = !DILocation(line: 903, column: 27, scope: !3628)
!3631 = !DILocation(line: 903, column: 9, scope: !3628)
!3632 = !DILocation(line: 903, column: 12, scope: !3628)
!3633 = !DILocation(line: 903, column: 15, scope: !3628)
!3634 = !DILocation(line: 903, column: 20, scope: !3628)
!3635 = !DILocation(line: 904, column: 13, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3628, file: !177, line: 904, column: 13)
!3637 = !DILocation(line: 904, column: 17, scope: !3636)
!3638 = !DILocation(line: 904, column: 13, scope: !3628)
!3639 = !DILocation(line: 905, column: 17, scope: !3636)
!3640 = !DILocation(line: 905, column: 11, scope: !3636)
!3641 = !DILocation(line: 906, column: 39, scope: !3628)
!3642 = !DILocation(line: 906, column: 27, scope: !3628)
!3643 = !DILocation(line: 906, column: 25, scope: !3628)
!3644 = !DILocation(line: 906, column: 9, scope: !3628)
!3645 = !DILocation(line: 906, column: 12, scope: !3628)
!3646 = !DILocation(line: 906, column: 15, scope: !3628)
!3647 = !DILocation(line: 906, column: 19, scope: !3628)
!3648 = !DILocation(line: 907, column: 35, scope: !3628)
!3649 = !DILocation(line: 907, column: 40, scope: !3628)
!3650 = !DILocation(line: 907, column: 46, scope: !3628)
!3651 = !DILocation(line: 907, column: 51, scope: !3628)
!3652 = !DILocation(line: 907, column: 60, scope: !3628)
!3653 = !DILocation(line: 907, column: 69, scope: !3628)
!3654 = !DILocation(line: 908, column: 35, scope: !3628)
!3655 = !DILocation(line: 908, column: 42, scope: !3628)
!3656 = !DILocation(line: 908, column: 51, scope: !3628)
!3657 = !DILocation(line: 909, column: 35, scope: !3628)
!3658 = !DILocation(line: 909, column: 44, scope: !3628)
!3659 = !DILocation(line: 910, column: 35, scope: !3628)
!3660 = !DILocation(line: 910, column: 44, scope: !3628)
!3661 = !DILocation(line: 907, column: 9, scope: !3628)
!3662 = !DILocation(line: 911, column: 7, scope: !3628)
!3663 = !DILocation(line: 913, column: 13, scope: !3591)
!3664 = !DILocation(line: 913, column: 5, scope: !3591)
!3665 = !DILocation(line: 913, column: 11, scope: !3591)
!3666 = !DILocation(line: 914, column: 12, scope: !3591)
!3667 = !DILocation(line: 914, column: 5, scope: !3591)
!3668 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !177, file: !177, line: 925, type: !3669, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!57, !60, !74, !98}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3668, file: !177, line: 925, type: !60)
!3672 = !DILocation(line: 925, column: 21, scope: !3668)
!3673 = !DILocalVariable(name: "arg", arg: 2, scope: !3668, file: !177, line: 925, type: !74)
!3674 = !DILocation(line: 925, column: 36, scope: !3668)
!3675 = !DILocalVariable(name: "argsize", arg: 3, scope: !3668, file: !177, line: 925, type: !98)
!3676 = !DILocation(line: 925, column: 48, scope: !3668)
!3677 = !DILocation(line: 927, column: 30, scope: !3668)
!3678 = !DILocation(line: 927, column: 33, scope: !3668)
!3679 = !DILocation(line: 927, column: 38, scope: !3668)
!3680 = !DILocation(line: 927, column: 10, scope: !3668)
!3681 = !DILocation(line: 927, column: 3, scope: !3668)
!3682 = distinct !DISubprogram(name: "quotearg", scope: !177, file: !177, line: 931, type: !3683, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!57, !74}
!3685 = !DILocalVariable(name: "arg", arg: 1, scope: !3682, file: !177, line: 931, type: !74)
!3686 = !DILocation(line: 931, column: 23, scope: !3682)
!3687 = !DILocation(line: 933, column: 25, scope: !3682)
!3688 = !DILocation(line: 933, column: 10, scope: !3682)
!3689 = !DILocation(line: 933, column: 3, scope: !3682)
!3690 = distinct !DISubprogram(name: "quotearg_mem", scope: !177, file: !177, line: 937, type: !3691, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!57, !74, !98}
!3693 = !DILocalVariable(name: "arg", arg: 1, scope: !3690, file: !177, line: 937, type: !74)
!3694 = !DILocation(line: 937, column: 27, scope: !3690)
!3695 = !DILocalVariable(name: "argsize", arg: 2, scope: !3690, file: !177, line: 937, type: !98)
!3696 = !DILocation(line: 937, column: 39, scope: !3690)
!3697 = !DILocation(line: 939, column: 29, scope: !3690)
!3698 = !DILocation(line: 939, column: 34, scope: !3690)
!3699 = !DILocation(line: 939, column: 10, scope: !3690)
!3700 = !DILocation(line: 939, column: 3, scope: !3690)
!3701 = distinct !DISubprogram(name: "quotearg_n_style", scope: !177, file: !177, line: 943, type: !3702, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!57, !60, !33, !74}
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3701, file: !177, line: 943, type: !60)
!3705 = !DILocation(line: 943, column: 23, scope: !3701)
!3706 = !DILocalVariable(name: "s", arg: 2, scope: !3701, file: !177, line: 943, type: !33)
!3707 = !DILocation(line: 943, column: 45, scope: !3701)
!3708 = !DILocalVariable(name: "arg", arg: 3, scope: !3701, file: !177, line: 943, type: !74)
!3709 = !DILocation(line: 943, column: 60, scope: !3701)
!3710 = !DILocalVariable(name: "o", scope: !3701, file: !177, line: 945, type: !2320)
!3711 = !DILocation(line: 945, column: 32, scope: !3701)
!3712 = !DILocation(line: 945, column: 64, scope: !3701)
!3713 = !DILocation(line: 945, column: 36, scope: !3701)
!3714 = !DILocation(line: 946, column: 30, scope: !3701)
!3715 = !DILocation(line: 946, column: 33, scope: !3701)
!3716 = !DILocation(line: 946, column: 10, scope: !3701)
!3717 = !DILocation(line: 946, column: 3, scope: !3701)
!3718 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !177, file: !177, line: 183, type: !3719, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!194, !33}
!3721 = !DILocalVariable(name: "style", arg: 1, scope: !3718, file: !177, line: 183, type: !33)
!3722 = !DILocation(line: 183, column: 48, scope: !3718)
!3723 = !DILocalVariable(name: "o", scope: !3718, file: !177, line: 185, type: !194)
!3724 = !DILocation(line: 185, column: 26, scope: !3718)
!3725 = !DILocation(line: 186, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3718, file: !177, line: 186, column: 7)
!3727 = !DILocation(line: 186, column: 13, scope: !3726)
!3728 = !DILocation(line: 186, column: 7, scope: !3718)
!3729 = !DILocation(line: 187, column: 5, scope: !3726)
!3730 = !DILocation(line: 188, column: 13, scope: !3718)
!3731 = !DILocation(line: 188, column: 5, scope: !3718)
!3732 = !DILocation(line: 188, column: 11, scope: !3718)
!3733 = !DILocation(line: 189, column: 3, scope: !3718)
!3734 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !177, file: !177, line: 950, type: !3735, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!57, !60, !33, !74, !98}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3734, file: !177, line: 950, type: !60)
!3738 = !DILocation(line: 950, column: 27, scope: !3734)
!3739 = !DILocalVariable(name: "s", arg: 2, scope: !3734, file: !177, line: 950, type: !33)
!3740 = !DILocation(line: 950, column: 49, scope: !3734)
!3741 = !DILocalVariable(name: "arg", arg: 3, scope: !3734, file: !177, line: 951, type: !74)
!3742 = !DILocation(line: 951, column: 35, scope: !3734)
!3743 = !DILocalVariable(name: "argsize", arg: 4, scope: !3734, file: !177, line: 951, type: !98)
!3744 = !DILocation(line: 951, column: 47, scope: !3734)
!3745 = !DILocalVariable(name: "o", scope: !3734, file: !177, line: 953, type: !2320)
!3746 = !DILocation(line: 953, column: 32, scope: !3734)
!3747 = !DILocation(line: 953, column: 64, scope: !3734)
!3748 = !DILocation(line: 953, column: 36, scope: !3734)
!3749 = !DILocation(line: 954, column: 30, scope: !3734)
!3750 = !DILocation(line: 954, column: 33, scope: !3734)
!3751 = !DILocation(line: 954, column: 38, scope: !3734)
!3752 = !DILocation(line: 954, column: 10, scope: !3734)
!3753 = !DILocation(line: 954, column: 3, scope: !3734)
!3754 = distinct !DISubprogram(name: "quotearg_style", scope: !177, file: !177, line: 958, type: !3755, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!57, !33, !74}
!3757 = !DILocalVariable(name: "s", arg: 1, scope: !3754, file: !177, line: 958, type: !33)
!3758 = !DILocation(line: 958, column: 36, scope: !3754)
!3759 = !DILocalVariable(name: "arg", arg: 2, scope: !3754, file: !177, line: 958, type: !74)
!3760 = !DILocation(line: 958, column: 51, scope: !3754)
!3761 = !DILocation(line: 960, column: 31, scope: !3754)
!3762 = !DILocation(line: 960, column: 34, scope: !3754)
!3763 = !DILocation(line: 960, column: 10, scope: !3754)
!3764 = !DILocation(line: 960, column: 3, scope: !3754)
!3765 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !177, file: !177, line: 964, type: !3766, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!57, !33, !74, !98}
!3768 = !DILocalVariable(name: "s", arg: 1, scope: !3765, file: !177, line: 964, type: !33)
!3769 = !DILocation(line: 964, column: 40, scope: !3765)
!3770 = !DILocalVariable(name: "arg", arg: 2, scope: !3765, file: !177, line: 964, type: !74)
!3771 = !DILocation(line: 964, column: 55, scope: !3765)
!3772 = !DILocalVariable(name: "argsize", arg: 3, scope: !3765, file: !177, line: 964, type: !98)
!3773 = !DILocation(line: 964, column: 67, scope: !3765)
!3774 = !DILocation(line: 966, column: 35, scope: !3765)
!3775 = !DILocation(line: 966, column: 38, scope: !3765)
!3776 = !DILocation(line: 966, column: 43, scope: !3765)
!3777 = !DILocation(line: 966, column: 10, scope: !3765)
!3778 = !DILocation(line: 966, column: 3, scope: !3765)
!3779 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !177, file: !177, line: 970, type: !3780, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!57, !74, !98, !58}
!3782 = !DILocalVariable(name: "arg", arg: 1, scope: !3779, file: !177, line: 970, type: !74)
!3783 = !DILocation(line: 970, column: 32, scope: !3779)
!3784 = !DILocalVariable(name: "argsize", arg: 2, scope: !3779, file: !177, line: 970, type: !98)
!3785 = !DILocation(line: 970, column: 44, scope: !3779)
!3786 = !DILocalVariable(name: "ch", arg: 3, scope: !3779, file: !177, line: 970, type: !58)
!3787 = !DILocation(line: 970, column: 58, scope: !3779)
!3788 = !DILocalVariable(name: "options", scope: !3779, file: !177, line: 972, type: !194)
!3789 = !DILocation(line: 972, column: 26, scope: !3779)
!3790 = !DILocation(line: 973, column: 13, scope: !3779)
!3791 = !DILocation(line: 974, column: 31, scope: !3779)
!3792 = !DILocation(line: 974, column: 3, scope: !3779)
!3793 = !DILocation(line: 975, column: 33, scope: !3779)
!3794 = !DILocation(line: 975, column: 38, scope: !3779)
!3795 = !DILocation(line: 975, column: 10, scope: !3779)
!3796 = !DILocation(line: 975, column: 3, scope: !3779)
!3797 = distinct !DISubprogram(name: "quotearg_char", scope: !177, file: !177, line: 979, type: !3798, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!57, !74, !58}
!3800 = !DILocalVariable(name: "arg", arg: 1, scope: !3797, file: !177, line: 979, type: !74)
!3801 = !DILocation(line: 979, column: 28, scope: !3797)
!3802 = !DILocalVariable(name: "ch", arg: 2, scope: !3797, file: !177, line: 979, type: !58)
!3803 = !DILocation(line: 979, column: 38, scope: !3797)
!3804 = !DILocation(line: 981, column: 29, scope: !3797)
!3805 = !DILocation(line: 981, column: 44, scope: !3797)
!3806 = !DILocation(line: 981, column: 10, scope: !3797)
!3807 = !DILocation(line: 981, column: 3, scope: !3797)
!3808 = distinct !DISubprogram(name: "quotearg_colon", scope: !177, file: !177, line: 985, type: !3683, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3809 = !DILocalVariable(name: "arg", arg: 1, scope: !3808, file: !177, line: 985, type: !74)
!3810 = !DILocation(line: 985, column: 29, scope: !3808)
!3811 = !DILocation(line: 987, column: 25, scope: !3808)
!3812 = !DILocation(line: 987, column: 10, scope: !3808)
!3813 = !DILocation(line: 987, column: 3, scope: !3808)
!3814 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !177, file: !177, line: 991, type: !3691, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3815 = !DILocalVariable(name: "arg", arg: 1, scope: !3814, file: !177, line: 991, type: !74)
!3816 = !DILocation(line: 991, column: 33, scope: !3814)
!3817 = !DILocalVariable(name: "argsize", arg: 2, scope: !3814, file: !177, line: 991, type: !98)
!3818 = !DILocation(line: 991, column: 45, scope: !3814)
!3819 = !DILocation(line: 993, column: 29, scope: !3814)
!3820 = !DILocation(line: 993, column: 34, scope: !3814)
!3821 = !DILocation(line: 993, column: 10, scope: !3814)
!3822 = !DILocation(line: 993, column: 3, scope: !3814)
!3823 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !177, file: !177, line: 997, type: !3702, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3824 = !DILocalVariable(name: "n", arg: 1, scope: !3823, file: !177, line: 997, type: !60)
!3825 = !DILocation(line: 997, column: 29, scope: !3823)
!3826 = !DILocalVariable(name: "s", arg: 2, scope: !3823, file: !177, line: 997, type: !33)
!3827 = !DILocation(line: 997, column: 51, scope: !3823)
!3828 = !DILocalVariable(name: "arg", arg: 3, scope: !3823, file: !177, line: 997, type: !74)
!3829 = !DILocation(line: 997, column: 66, scope: !3823)
!3830 = !DILocalVariable(name: "options", scope: !3823, file: !177, line: 999, type: !194)
!3831 = !DILocation(line: 999, column: 26, scope: !3823)
!3832 = !DILocation(line: 1000, column: 41, scope: !3823)
!3833 = !DILocation(line: 1000, column: 13, scope: !3823)
!3834 = !DILocation(line: 1001, column: 3, scope: !3823)
!3835 = !DILocation(line: 1002, column: 30, scope: !3823)
!3836 = !DILocation(line: 1002, column: 33, scope: !3823)
!3837 = !DILocation(line: 1002, column: 10, scope: !3823)
!3838 = !DILocation(line: 1002, column: 3, scope: !3823)
!3839 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !177, file: !177, line: 1006, type: !3840, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!57, !60, !74, !74, !74}
!3842 = !DILocalVariable(name: "n", arg: 1, scope: !3839, file: !177, line: 1006, type: !60)
!3843 = !DILocation(line: 1006, column: 24, scope: !3839)
!3844 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3839, file: !177, line: 1006, type: !74)
!3845 = !DILocation(line: 1006, column: 39, scope: !3839)
!3846 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3839, file: !177, line: 1007, type: !74)
!3847 = !DILocation(line: 1007, column: 32, scope: !3839)
!3848 = !DILocalVariable(name: "arg", arg: 4, scope: !3839, file: !177, line: 1007, type: !74)
!3849 = !DILocation(line: 1007, column: 57, scope: !3839)
!3850 = !DILocation(line: 1009, column: 33, scope: !3839)
!3851 = !DILocation(line: 1009, column: 36, scope: !3839)
!3852 = !DILocation(line: 1009, column: 48, scope: !3839)
!3853 = !DILocation(line: 1009, column: 61, scope: !3839)
!3854 = !DILocation(line: 1009, column: 10, scope: !3839)
!3855 = !DILocation(line: 1009, column: 3, scope: !3839)
!3856 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !177, file: !177, line: 1014, type: !3857, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!57, !60, !74, !74, !74, !98}
!3859 = !DILocalVariable(name: "n", arg: 1, scope: !3856, file: !177, line: 1014, type: !60)
!3860 = !DILocation(line: 1014, column: 28, scope: !3856)
!3861 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3856, file: !177, line: 1014, type: !74)
!3862 = !DILocation(line: 1014, column: 43, scope: !3856)
!3863 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3856, file: !177, line: 1015, type: !74)
!3864 = !DILocation(line: 1015, column: 36, scope: !3856)
!3865 = !DILocalVariable(name: "arg", arg: 4, scope: !3856, file: !177, line: 1016, type: !74)
!3866 = !DILocation(line: 1016, column: 36, scope: !3856)
!3867 = !DILocalVariable(name: "argsize", arg: 5, scope: !3856, file: !177, line: 1016, type: !98)
!3868 = !DILocation(line: 1016, column: 48, scope: !3856)
!3869 = !DILocalVariable(name: "o", scope: !3856, file: !177, line: 1018, type: !194)
!3870 = !DILocation(line: 1018, column: 26, scope: !3856)
!3871 = !DILocation(line: 1018, column: 30, scope: !3856)
!3872 = !DILocation(line: 1019, column: 27, scope: !3856)
!3873 = !DILocation(line: 1019, column: 39, scope: !3856)
!3874 = !DILocation(line: 1019, column: 3, scope: !3856)
!3875 = !DILocation(line: 1020, column: 30, scope: !3856)
!3876 = !DILocation(line: 1020, column: 33, scope: !3856)
!3877 = !DILocation(line: 1020, column: 38, scope: !3856)
!3878 = !DILocation(line: 1020, column: 10, scope: !3856)
!3879 = !DILocation(line: 1020, column: 3, scope: !3856)
!3880 = distinct !DISubprogram(name: "quotearg_custom", scope: !177, file: !177, line: 1024, type: !3881, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!57, !74, !74, !74}
!3883 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3880, file: !177, line: 1024, type: !74)
!3884 = !DILocation(line: 1024, column: 30, scope: !3880)
!3885 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3880, file: !177, line: 1024, type: !74)
!3886 = !DILocation(line: 1024, column: 54, scope: !3880)
!3887 = !DILocalVariable(name: "arg", arg: 3, scope: !3880, file: !177, line: 1025, type: !74)
!3888 = !DILocation(line: 1025, column: 30, scope: !3880)
!3889 = !DILocation(line: 1027, column: 32, scope: !3880)
!3890 = !DILocation(line: 1027, column: 44, scope: !3880)
!3891 = !DILocation(line: 1027, column: 57, scope: !3880)
!3892 = !DILocation(line: 1027, column: 10, scope: !3880)
!3893 = !DILocation(line: 1027, column: 3, scope: !3880)
!3894 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !177, file: !177, line: 1031, type: !3895, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!57, !74, !74, !74, !98}
!3897 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3894, file: !177, line: 1031, type: !74)
!3898 = !DILocation(line: 1031, column: 34, scope: !3894)
!3899 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3894, file: !177, line: 1031, type: !74)
!3900 = !DILocation(line: 1031, column: 58, scope: !3894)
!3901 = !DILocalVariable(name: "arg", arg: 3, scope: !3894, file: !177, line: 1032, type: !74)
!3902 = !DILocation(line: 1032, column: 34, scope: !3894)
!3903 = !DILocalVariable(name: "argsize", arg: 4, scope: !3894, file: !177, line: 1032, type: !98)
!3904 = !DILocation(line: 1032, column: 46, scope: !3894)
!3905 = !DILocation(line: 1034, column: 36, scope: !3894)
!3906 = !DILocation(line: 1034, column: 48, scope: !3894)
!3907 = !DILocation(line: 1034, column: 61, scope: !3894)
!3908 = !DILocation(line: 1035, column: 33, scope: !3894)
!3909 = !DILocation(line: 1034, column: 10, scope: !3894)
!3910 = !DILocation(line: 1034, column: 3, scope: !3894)
!3911 = distinct !DISubprogram(name: "quote_n_mem", scope: !177, file: !177, line: 1049, type: !3912, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!74, !60, !74, !98}
!3914 = !DILocalVariable(name: "n", arg: 1, scope: !3911, file: !177, line: 1049, type: !60)
!3915 = !DILocation(line: 1049, column: 18, scope: !3911)
!3916 = !DILocalVariable(name: "arg", arg: 2, scope: !3911, file: !177, line: 1049, type: !74)
!3917 = !DILocation(line: 1049, column: 33, scope: !3911)
!3918 = !DILocalVariable(name: "argsize", arg: 3, scope: !3911, file: !177, line: 1049, type: !98)
!3919 = !DILocation(line: 1049, column: 45, scope: !3911)
!3920 = !DILocation(line: 1051, column: 30, scope: !3911)
!3921 = !DILocation(line: 1051, column: 33, scope: !3911)
!3922 = !DILocation(line: 1051, column: 38, scope: !3911)
!3923 = !DILocation(line: 1051, column: 10, scope: !3911)
!3924 = !DILocation(line: 1051, column: 3, scope: !3911)
!3925 = distinct !DISubprogram(name: "quote_mem", scope: !177, file: !177, line: 1055, type: !3926, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!74, !74, !98}
!3928 = !DILocalVariable(name: "arg", arg: 1, scope: !3925, file: !177, line: 1055, type: !74)
!3929 = !DILocation(line: 1055, column: 24, scope: !3925)
!3930 = !DILocalVariable(name: "argsize", arg: 2, scope: !3925, file: !177, line: 1055, type: !98)
!3931 = !DILocation(line: 1055, column: 36, scope: !3925)
!3932 = !DILocation(line: 1057, column: 26, scope: !3925)
!3933 = !DILocation(line: 1057, column: 31, scope: !3925)
!3934 = !DILocation(line: 1057, column: 10, scope: !3925)
!3935 = !DILocation(line: 1057, column: 3, scope: !3925)
!3936 = distinct !DISubprogram(name: "quote_n", scope: !177, file: !177, line: 1061, type: !3937, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!74, !60, !74}
!3939 = !DILocalVariable(name: "n", arg: 1, scope: !3936, file: !177, line: 1061, type: !60)
!3940 = !DILocation(line: 1061, column: 14, scope: !3936)
!3941 = !DILocalVariable(name: "arg", arg: 2, scope: !3936, file: !177, line: 1061, type: !74)
!3942 = !DILocation(line: 1061, column: 29, scope: !3936)
!3943 = !DILocation(line: 1063, column: 23, scope: !3936)
!3944 = !DILocation(line: 1063, column: 26, scope: !3936)
!3945 = !DILocation(line: 1063, column: 10, scope: !3936)
!3946 = !DILocation(line: 1063, column: 3, scope: !3936)
!3947 = distinct !DISubprogram(name: "quote", scope: !177, file: !177, line: 1067, type: !3948, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !76)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!74, !74}
!3950 = !DILocalVariable(name: "arg", arg: 1, scope: !3947, file: !177, line: 1067, type: !74)
!3951 = !DILocation(line: 1067, column: 20, scope: !3947)
!3952 = !DILocation(line: 1069, column: 22, scope: !3947)
!3953 = !DILocation(line: 1069, column: 10, scope: !3947)
!3954 = !DILocation(line: 1069, column: 3, scope: !3947)
!3955 = distinct !DISubprogram(name: "streq", scope: !3956, file: !3956, line: 1359, type: !3957, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !76)
!3956 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!65, !74, !74}
!3959 = !DILocalVariable(name: "__s1", arg: 1, scope: !3955, file: !3956, line: 1359, type: !74)
!3960 = !DILocation(line: 1359, column: 20, scope: !3955)
!3961 = !DILocalVariable(name: "__s2", arg: 2, scope: !3955, file: !3956, line: 1359, type: !74)
!3962 = !DILocation(line: 1359, column: 38, scope: !3955)
!3963 = !DILocation(line: 1361, column: 19, scope: !3955)
!3964 = !DILocation(line: 1361, column: 25, scope: !3955)
!3965 = !DILocation(line: 1361, column: 11, scope: !3955)
!3966 = !DILocation(line: 1361, column: 10, scope: !3955)
!3967 = !DILocation(line: 1361, column: 3, scope: !3955)
!3968 = distinct !DISubprogram(name: "version_etc_arn", scope: !310, file: !310, line: 61, type: !3969, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3971, !74, !74, !74, !4005, !98}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !3973)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3973, file: !791, line: 51, baseType: !60, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3973, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3973, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3973, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3973, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3973, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3973, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3973, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3973, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3973, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3973, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3973, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3973, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3973, file: !791, line: 70, baseType: !3989, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3973, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3973, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3973, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3973, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3973, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3973, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3973, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3973, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3973, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3973, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3973, file: !791, line: 93, baseType: !3989, size: 64, offset: 1344)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3973, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3973, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3973, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3973, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!4006 = !DILocalVariable(name: "stream", arg: 1, scope: !3968, file: !310, line: 61, type: !3971)
!4007 = !DILocation(line: 61, column: 24, scope: !3968)
!4008 = !DILocalVariable(name: "command_name", arg: 2, scope: !3968, file: !310, line: 62, type: !74)
!4009 = !DILocation(line: 62, column: 30, scope: !3968)
!4010 = !DILocalVariable(name: "package", arg: 3, scope: !3968, file: !310, line: 62, type: !74)
!4011 = !DILocation(line: 62, column: 56, scope: !3968)
!4012 = !DILocalVariable(name: "version", arg: 4, scope: !3968, file: !310, line: 63, type: !74)
!4013 = !DILocation(line: 63, column: 30, scope: !3968)
!4014 = !DILocalVariable(name: "authors", arg: 5, scope: !3968, file: !310, line: 64, type: !4005)
!4015 = !DILocation(line: 64, column: 39, scope: !3968)
!4016 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3968, file: !310, line: 64, type: !98)
!4017 = !DILocation(line: 64, column: 55, scope: !3968)
!4018 = !DILocation(line: 66, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3968, file: !310, line: 66, column: 7)
!4020 = !DILocation(line: 66, column: 7, scope: !3968)
!4021 = !DILocation(line: 67, column: 14, scope: !4019)
!4022 = !DILocation(line: 67, column: 38, scope: !4019)
!4023 = !DILocation(line: 67, column: 52, scope: !4019)
!4024 = !DILocation(line: 67, column: 61, scope: !4019)
!4025 = !DILocation(line: 67, column: 5, scope: !4019)
!4026 = !DILocation(line: 69, column: 14, scope: !4019)
!4027 = !DILocation(line: 69, column: 33, scope: !4019)
!4028 = !DILocation(line: 69, column: 42, scope: !4019)
!4029 = !DILocation(line: 69, column: 5, scope: !4019)
!4030 = !DILocation(line: 83, column: 12, scope: !3968)
!4031 = !DILocation(line: 83, column: 43, scope: !3968)
!4032 = !DILocation(line: 83, column: 3, scope: !3968)
!4033 = !DILocation(line: 85, column: 3, scope: !3968)
!4034 = !DILocation(line: 88, column: 12, scope: !3968)
!4035 = !DILocation(line: 88, column: 20, scope: !3968)
!4036 = !DILocation(line: 88, column: 3, scope: !3968)
!4037 = !DILocation(line: 95, column: 3, scope: !3968)
!4038 = !DILocation(line: 97, column: 11, scope: !3968)
!4039 = !DILocation(line: 97, column: 3, scope: !3968)
!4040 = !DILocation(line: 102, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3968, file: !310, line: 98, column: 5)
!4042 = !DILocation(line: 105, column: 16, scope: !4041)
!4043 = !DILocation(line: 105, column: 24, scope: !4041)
!4044 = !DILocation(line: 105, column: 47, scope: !4041)
!4045 = !DILocation(line: 105, column: 7, scope: !4041)
!4046 = !DILocation(line: 106, column: 7, scope: !4041)
!4047 = !DILocation(line: 109, column: 16, scope: !4041)
!4048 = !DILocation(line: 109, column: 24, scope: !4041)
!4049 = !DILocation(line: 109, column: 54, scope: !4041)
!4050 = !DILocation(line: 109, column: 66, scope: !4041)
!4051 = !DILocation(line: 109, column: 7, scope: !4041)
!4052 = !DILocation(line: 110, column: 7, scope: !4041)
!4053 = !DILocation(line: 113, column: 16, scope: !4041)
!4054 = !DILocation(line: 113, column: 24, scope: !4041)
!4055 = !DILocation(line: 114, column: 16, scope: !4041)
!4056 = !DILocation(line: 114, column: 28, scope: !4041)
!4057 = !DILocation(line: 114, column: 40, scope: !4041)
!4058 = !DILocation(line: 113, column: 7, scope: !4041)
!4059 = !DILocation(line: 115, column: 7, scope: !4041)
!4060 = !DILocation(line: 120, column: 16, scope: !4041)
!4061 = !DILocation(line: 120, column: 24, scope: !4041)
!4062 = !DILocation(line: 121, column: 16, scope: !4041)
!4063 = !DILocation(line: 121, column: 28, scope: !4041)
!4064 = !DILocation(line: 121, column: 40, scope: !4041)
!4065 = !DILocation(line: 121, column: 52, scope: !4041)
!4066 = !DILocation(line: 120, column: 7, scope: !4041)
!4067 = !DILocation(line: 122, column: 7, scope: !4041)
!4068 = !DILocation(line: 127, column: 16, scope: !4041)
!4069 = !DILocation(line: 127, column: 24, scope: !4041)
!4070 = !DILocation(line: 128, column: 16, scope: !4041)
!4071 = !DILocation(line: 128, column: 28, scope: !4041)
!4072 = !DILocation(line: 128, column: 40, scope: !4041)
!4073 = !DILocation(line: 128, column: 52, scope: !4041)
!4074 = !DILocation(line: 128, column: 64, scope: !4041)
!4075 = !DILocation(line: 127, column: 7, scope: !4041)
!4076 = !DILocation(line: 129, column: 7, scope: !4041)
!4077 = !DILocation(line: 134, column: 16, scope: !4041)
!4078 = !DILocation(line: 134, column: 24, scope: !4041)
!4079 = !DILocation(line: 135, column: 16, scope: !4041)
!4080 = !DILocation(line: 135, column: 28, scope: !4041)
!4081 = !DILocation(line: 135, column: 40, scope: !4041)
!4082 = !DILocation(line: 135, column: 52, scope: !4041)
!4083 = !DILocation(line: 135, column: 64, scope: !4041)
!4084 = !DILocation(line: 136, column: 16, scope: !4041)
!4085 = !DILocation(line: 134, column: 7, scope: !4041)
!4086 = !DILocation(line: 137, column: 7, scope: !4041)
!4087 = !DILocation(line: 142, column: 16, scope: !4041)
!4088 = !DILocation(line: 142, column: 24, scope: !4041)
!4089 = !DILocation(line: 143, column: 16, scope: !4041)
!4090 = !DILocation(line: 143, column: 28, scope: !4041)
!4091 = !DILocation(line: 143, column: 40, scope: !4041)
!4092 = !DILocation(line: 143, column: 52, scope: !4041)
!4093 = !DILocation(line: 143, column: 64, scope: !4041)
!4094 = !DILocation(line: 144, column: 16, scope: !4041)
!4095 = !DILocation(line: 144, column: 28, scope: !4041)
!4096 = !DILocation(line: 142, column: 7, scope: !4041)
!4097 = !DILocation(line: 145, column: 7, scope: !4041)
!4098 = !DILocation(line: 150, column: 16, scope: !4041)
!4099 = !DILocation(line: 150, column: 24, scope: !4041)
!4100 = !DILocation(line: 152, column: 17, scope: !4041)
!4101 = !DILocation(line: 152, column: 29, scope: !4041)
!4102 = !DILocation(line: 152, column: 41, scope: !4041)
!4103 = !DILocation(line: 152, column: 53, scope: !4041)
!4104 = !DILocation(line: 152, column: 65, scope: !4041)
!4105 = !DILocation(line: 153, column: 17, scope: !4041)
!4106 = !DILocation(line: 153, column: 29, scope: !4041)
!4107 = !DILocation(line: 153, column: 41, scope: !4041)
!4108 = !DILocation(line: 150, column: 7, scope: !4041)
!4109 = !DILocation(line: 154, column: 7, scope: !4041)
!4110 = !DILocation(line: 159, column: 16, scope: !4041)
!4111 = !DILocation(line: 159, column: 24, scope: !4041)
!4112 = !DILocation(line: 161, column: 16, scope: !4041)
!4113 = !DILocation(line: 161, column: 28, scope: !4041)
!4114 = !DILocation(line: 161, column: 40, scope: !4041)
!4115 = !DILocation(line: 161, column: 52, scope: !4041)
!4116 = !DILocation(line: 161, column: 64, scope: !4041)
!4117 = !DILocation(line: 162, column: 16, scope: !4041)
!4118 = !DILocation(line: 162, column: 28, scope: !4041)
!4119 = !DILocation(line: 162, column: 40, scope: !4041)
!4120 = !DILocation(line: 162, column: 52, scope: !4041)
!4121 = !DILocation(line: 159, column: 7, scope: !4041)
!4122 = !DILocation(line: 163, column: 7, scope: !4041)
!4123 = !DILocation(line: 170, column: 16, scope: !4041)
!4124 = !DILocation(line: 170, column: 24, scope: !4041)
!4125 = !DILocation(line: 172, column: 17, scope: !4041)
!4126 = !DILocation(line: 172, column: 29, scope: !4041)
!4127 = !DILocation(line: 172, column: 41, scope: !4041)
!4128 = !DILocation(line: 172, column: 53, scope: !4041)
!4129 = !DILocation(line: 172, column: 65, scope: !4041)
!4130 = !DILocation(line: 173, column: 17, scope: !4041)
!4131 = !DILocation(line: 173, column: 29, scope: !4041)
!4132 = !DILocation(line: 173, column: 41, scope: !4041)
!4133 = !DILocation(line: 173, column: 53, scope: !4041)
!4134 = !DILocation(line: 170, column: 7, scope: !4041)
!4135 = !DILocation(line: 174, column: 7, scope: !4041)
!4136 = !DILocation(line: 176, column: 1, scope: !3968)
!4137 = distinct !DISubprogram(name: "version_etc_ar", scope: !310, file: !310, line: 183, type: !4138, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !3971, !74, !74, !74, !4005}
!4140 = !DILocalVariable(name: "stream", arg: 1, scope: !4137, file: !310, line: 183, type: !3971)
!4141 = !DILocation(line: 183, column: 23, scope: !4137)
!4142 = !DILocalVariable(name: "command_name", arg: 2, scope: !4137, file: !310, line: 184, type: !74)
!4143 = !DILocation(line: 184, column: 29, scope: !4137)
!4144 = !DILocalVariable(name: "package", arg: 3, scope: !4137, file: !310, line: 184, type: !74)
!4145 = !DILocation(line: 184, column: 55, scope: !4137)
!4146 = !DILocalVariable(name: "version", arg: 4, scope: !4137, file: !310, line: 185, type: !74)
!4147 = !DILocation(line: 185, column: 29, scope: !4137)
!4148 = !DILocalVariable(name: "authors", arg: 5, scope: !4137, file: !310, line: 185, type: !4005)
!4149 = !DILocation(line: 185, column: 59, scope: !4137)
!4150 = !DILocalVariable(name: "n_authors", scope: !4137, file: !310, line: 187, type: !98)
!4151 = !DILocation(line: 187, column: 10, scope: !4137)
!4152 = !DILocation(line: 189, column: 18, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4137, file: !310, line: 189, column: 3)
!4154 = !DILocation(line: 189, column: 8, scope: !4153)
!4155 = !DILocation(line: 189, column: 23, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !310, line: 189, column: 3)
!4157 = !DILocation(line: 189, column: 31, scope: !4156)
!4158 = !DILocation(line: 189, column: 3, scope: !4153)
!4159 = !DILocation(line: 189, column: 52, scope: !4156)
!4160 = !DILocation(line: 189, column: 3, scope: !4156)
!4161 = distinct !{!4161, !4158, !4162, !496}
!4162 = !DILocation(line: 190, column: 5, scope: !4153)
!4163 = !DILocation(line: 191, column: 20, scope: !4137)
!4164 = !DILocation(line: 191, column: 28, scope: !4137)
!4165 = !DILocation(line: 191, column: 42, scope: !4137)
!4166 = !DILocation(line: 191, column: 51, scope: !4137)
!4167 = !DILocation(line: 191, column: 60, scope: !4137)
!4168 = !DILocation(line: 191, column: 69, scope: !4137)
!4169 = !DILocation(line: 191, column: 3, scope: !4137)
!4170 = !DILocation(line: 192, column: 1, scope: !4137)
!4171 = distinct !DISubprogram(name: "version_etc_va", scope: !310, file: !310, line: 199, type: !4172, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !3971, !74, !74, !74, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !135, line: 52, baseType: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !137, line: 32, baseType: !4176)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4177, baseType: !4178)
!4177 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !141, size: 256, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4183, !4184}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4178, file: !4177, line: 192, baseType: !59, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4178, file: !4177, line: 192, baseType: !59, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4178, file: !4177, line: 192, baseType: !59, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4178, file: !4177, line: 192, baseType: !60, size: 32, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4178, file: !4177, line: 192, baseType: !60, size: 32, offset: 224)
!4185 = !DILocalVariable(name: "stream", arg: 1, scope: !4171, file: !310, line: 199, type: !3971)
!4186 = !DILocation(line: 199, column: 23, scope: !4171)
!4187 = !DILocalVariable(name: "command_name", arg: 2, scope: !4171, file: !310, line: 200, type: !74)
!4188 = !DILocation(line: 200, column: 29, scope: !4171)
!4189 = !DILocalVariable(name: "package", arg: 3, scope: !4171, file: !310, line: 200, type: !74)
!4190 = !DILocation(line: 200, column: 55, scope: !4171)
!4191 = !DILocalVariable(name: "version", arg: 4, scope: !4171, file: !310, line: 201, type: !74)
!4192 = !DILocation(line: 201, column: 29, scope: !4171)
!4193 = !DILocalVariable(name: "authors", arg: 5, scope: !4171, file: !310, line: 201, type: !4174)
!4194 = !DILocation(line: 201, column: 46, scope: !4171)
!4195 = !DILocalVariable(name: "n_authors", scope: !4171, file: !310, line: 203, type: !98)
!4196 = !DILocation(line: 203, column: 10, scope: !4171)
!4197 = !DILocalVariable(name: "authtab", scope: !4171, file: !310, line: 204, type: !4198)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !190)
!4199 = !DILocation(line: 204, column: 15, scope: !4171)
!4200 = !DILocation(line: 206, column: 18, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4171, file: !310, line: 206, column: 3)
!4202 = !DILocation(line: 206, column: 8, scope: !4201)
!4203 = !DILocation(line: 207, column: 8, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4201, file: !310, line: 206, column: 3)
!4205 = !DILocation(line: 207, column: 18, scope: !4204)
!4206 = !DILocation(line: 208, column: 10, scope: !4204)
!4207 = !DILocation(line: 208, column: 35, scope: !4204)
!4208 = !DILocation(line: 208, column: 22, scope: !4204)
!4209 = !DILocation(line: 208, column: 14, scope: !4204)
!4210 = !DILocation(line: 208, column: 33, scope: !4204)
!4211 = !DILocation(line: 208, column: 67, scope: !4204)
!4212 = !DILocation(line: 0, scope: !4204)
!4213 = !DILocation(line: 206, column: 3, scope: !4201)
!4214 = !DILocation(line: 209, column: 17, scope: !4204)
!4215 = !DILocation(line: 206, column: 3, scope: !4204)
!4216 = distinct !{!4216, !4213, !4217, !496}
!4217 = !DILocation(line: 210, column: 5, scope: !4201)
!4218 = !DILocation(line: 211, column: 20, scope: !4171)
!4219 = !DILocation(line: 211, column: 28, scope: !4171)
!4220 = !DILocation(line: 211, column: 42, scope: !4171)
!4221 = !DILocation(line: 211, column: 51, scope: !4171)
!4222 = !DILocation(line: 212, column: 20, scope: !4171)
!4223 = !DILocation(line: 212, column: 29, scope: !4171)
!4224 = !DILocation(line: 211, column: 3, scope: !4171)
!4225 = !DILocation(line: 213, column: 1, scope: !4171)
!4226 = distinct !DISubprogram(name: "version_etc", scope: !310, file: !310, line: 230, type: !4227, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !3971, !74, !74, !74, null}
!4229 = !DILocalVariable(name: "stream", arg: 1, scope: !4226, file: !310, line: 230, type: !3971)
!4230 = !DILocation(line: 230, column: 20, scope: !4226)
!4231 = !DILocalVariable(name: "command_name", arg: 2, scope: !4226, file: !310, line: 231, type: !74)
!4232 = !DILocation(line: 231, column: 26, scope: !4226)
!4233 = !DILocalVariable(name: "package", arg: 3, scope: !4226, file: !310, line: 231, type: !74)
!4234 = !DILocation(line: 231, column: 52, scope: !4226)
!4235 = !DILocalVariable(name: "version", arg: 4, scope: !4226, file: !310, line: 232, type: !74)
!4236 = !DILocation(line: 232, column: 26, scope: !4226)
!4237 = !DILocalVariable(name: "authors", scope: !4226, file: !310, line: 234, type: !4174)
!4238 = !DILocation(line: 234, column: 11, scope: !4226)
!4239 = !DILocation(line: 235, column: 3, scope: !4226)
!4240 = !DILocation(line: 236, column: 19, scope: !4226)
!4241 = !DILocation(line: 236, column: 27, scope: !4226)
!4242 = !DILocation(line: 236, column: 41, scope: !4226)
!4243 = !DILocation(line: 236, column: 50, scope: !4226)
!4244 = !DILocation(line: 236, column: 3, scope: !4226)
!4245 = !DILocation(line: 237, column: 3, scope: !4226)
!4246 = !DILocation(line: 238, column: 1, scope: !4226)
!4247 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !310, file: !310, line: 241, type: !155, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4248 = !DILocation(line: 243, column: 3, scope: !4247)
!4249 = !DILocation(line: 248, column: 11, scope: !4247)
!4250 = !DILocation(line: 248, column: 3, scope: !4247)
!4251 = !DILocation(line: 254, column: 11, scope: !4247)
!4252 = !DILocation(line: 254, column: 3, scope: !4247)
!4253 = !DILocation(line: 259, column: 11, scope: !4247)
!4254 = !DILocation(line: 259, column: 3, scope: !4247)
!4255 = !DILocation(line: 261, column: 1, scope: !4247)
!4256 = distinct !DISubprogram(name: "xnrealloc", scope: !4257, file: !4257, line: 147, type: !4258, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4257 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!59, !59, !98, !98}
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4256, file: !4257, line: 147, type: !59)
!4261 = !DILocation(line: 147, column: 18, scope: !4256)
!4262 = !DILocalVariable(name: "n", arg: 2, scope: !4256, file: !4257, line: 147, type: !98)
!4263 = !DILocation(line: 147, column: 28, scope: !4256)
!4264 = !DILocalVariable(name: "s", arg: 3, scope: !4256, file: !4257, line: 147, type: !98)
!4265 = !DILocation(line: 147, column: 38, scope: !4256)
!4266 = !DILocation(line: 149, column: 25, scope: !4256)
!4267 = !DILocation(line: 149, column: 28, scope: !4256)
!4268 = !DILocation(line: 149, column: 31, scope: !4256)
!4269 = !DILocation(line: 149, column: 10, scope: !4256)
!4270 = !DILocation(line: 149, column: 3, scope: !4256)
!4271 = distinct !DISubprogram(name: "xreallocarray", scope: !316, file: !316, line: 83, type: !4258, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4272 = !DILocalVariable(name: "p", arg: 1, scope: !4271, file: !316, line: 83, type: !59)
!4273 = !DILocation(line: 83, column: 22, scope: !4271)
!4274 = !DILocalVariable(name: "n", arg: 2, scope: !4271, file: !316, line: 83, type: !98)
!4275 = !DILocation(line: 83, column: 32, scope: !4271)
!4276 = !DILocalVariable(name: "s", arg: 3, scope: !4271, file: !316, line: 83, type: !98)
!4277 = !DILocation(line: 83, column: 42, scope: !4271)
!4278 = !DILocation(line: 85, column: 39, scope: !4271)
!4279 = !DILocation(line: 85, column: 42, scope: !4271)
!4280 = !DILocation(line: 85, column: 45, scope: !4271)
!4281 = !DILocation(line: 85, column: 25, scope: !4271)
!4282 = !DILocation(line: 85, column: 10, scope: !4271)
!4283 = !DILocation(line: 85, column: 3, scope: !4271)
!4284 = distinct !DISubprogram(name: "check_nonnull", scope: !316, file: !316, line: 37, type: !4285, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!59, !59}
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4284, file: !316, line: 37, type: !59)
!4288 = !DILocation(line: 37, column: 22, scope: !4284)
!4289 = !DILocation(line: 39, column: 8, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4284, file: !316, line: 39, column: 7)
!4291 = !DILocation(line: 39, column: 7, scope: !4284)
!4292 = !DILocation(line: 40, column: 5, scope: !4290)
!4293 = !DILocation(line: 41, column: 10, scope: !4284)
!4294 = !DILocation(line: 41, column: 3, scope: !4284)
!4295 = distinct !DISubprogram(name: "xmalloc", scope: !316, file: !316, line: 47, type: !4296, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!59, !98}
!4298 = !DILocalVariable(name: "s", arg: 1, scope: !4295, file: !316, line: 47, type: !98)
!4299 = !DILocation(line: 47, column: 17, scope: !4295)
!4300 = !DILocation(line: 49, column: 33, scope: !4295)
!4301 = !DILocation(line: 49, column: 25, scope: !4295)
!4302 = !DILocation(line: 49, column: 10, scope: !4295)
!4303 = !DILocation(line: 49, column: 3, scope: !4295)
!4304 = distinct !DISubprogram(name: "ximalloc", scope: !316, file: !316, line: 53, type: !4305, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!59, !330}
!4307 = !DILocalVariable(name: "s", arg: 1, scope: !4304, file: !316, line: 53, type: !330)
!4308 = !DILocation(line: 53, column: 17, scope: !4304)
!4309 = !DILocation(line: 55, column: 34, scope: !4304)
!4310 = !DILocation(line: 55, column: 25, scope: !4304)
!4311 = !DILocation(line: 55, column: 10, scope: !4304)
!4312 = !DILocation(line: 55, column: 3, scope: !4304)
!4313 = distinct !DISubprogram(name: "xcharalloc", scope: !316, file: !316, line: 59, type: !4314, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!57, !98}
!4316 = !DILocalVariable(name: "n", arg: 1, scope: !4313, file: !316, line: 59, type: !98)
!4317 = !DILocation(line: 59, column: 20, scope: !4313)
!4318 = !DILocation(line: 61, column: 10, scope: !4313)
!4319 = !DILocation(line: 61, column: 3, scope: !4313)
!4320 = distinct !DISubprogram(name: "xrealloc", scope: !316, file: !316, line: 68, type: !4321, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!59, !59, !98}
!4323 = !DILocalVariable(name: "p", arg: 1, scope: !4320, file: !316, line: 68, type: !59)
!4324 = !DILocation(line: 68, column: 17, scope: !4320)
!4325 = !DILocalVariable(name: "s", arg: 2, scope: !4320, file: !316, line: 68, type: !98)
!4326 = !DILocation(line: 68, column: 27, scope: !4320)
!4327 = !DILocation(line: 70, column: 34, scope: !4320)
!4328 = !DILocation(line: 70, column: 37, scope: !4320)
!4329 = !DILocation(line: 70, column: 25, scope: !4320)
!4330 = !DILocation(line: 70, column: 10, scope: !4320)
!4331 = !DILocation(line: 70, column: 3, scope: !4320)
!4332 = distinct !DISubprogram(name: "xirealloc", scope: !316, file: !316, line: 74, type: !4333, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!59, !59, !330}
!4335 = !DILocalVariable(name: "p", arg: 1, scope: !4332, file: !316, line: 74, type: !59)
!4336 = !DILocation(line: 74, column: 18, scope: !4332)
!4337 = !DILocalVariable(name: "s", arg: 2, scope: !4332, file: !316, line: 74, type: !330)
!4338 = !DILocation(line: 74, column: 27, scope: !4332)
!4339 = !DILocation(line: 76, column: 35, scope: !4332)
!4340 = !DILocation(line: 76, column: 38, scope: !4332)
!4341 = !DILocation(line: 76, column: 25, scope: !4332)
!4342 = !DILocation(line: 76, column: 10, scope: !4332)
!4343 = !DILocation(line: 76, column: 3, scope: !4332)
!4344 = distinct !DISubprogram(name: "xireallocarray", scope: !316, file: !316, line: 89, type: !4345, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!59, !59, !330, !330}
!4347 = !DILocalVariable(name: "p", arg: 1, scope: !4344, file: !316, line: 89, type: !59)
!4348 = !DILocation(line: 89, column: 23, scope: !4344)
!4349 = !DILocalVariable(name: "n", arg: 2, scope: !4344, file: !316, line: 89, type: !330)
!4350 = !DILocation(line: 89, column: 32, scope: !4344)
!4351 = !DILocalVariable(name: "s", arg: 3, scope: !4344, file: !316, line: 89, type: !330)
!4352 = !DILocation(line: 89, column: 41, scope: !4344)
!4353 = !DILocation(line: 91, column: 40, scope: !4344)
!4354 = !DILocation(line: 91, column: 43, scope: !4344)
!4355 = !DILocation(line: 91, column: 46, scope: !4344)
!4356 = !DILocation(line: 91, column: 25, scope: !4344)
!4357 = !DILocation(line: 91, column: 10, scope: !4344)
!4358 = !DILocation(line: 91, column: 3, scope: !4344)
!4359 = distinct !DISubprogram(name: "xnmalloc", scope: !316, file: !316, line: 98, type: !4360, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!59, !98, !98}
!4362 = !DILocalVariable(name: "n", arg: 1, scope: !4359, file: !316, line: 98, type: !98)
!4363 = !DILocation(line: 98, column: 18, scope: !4359)
!4364 = !DILocalVariable(name: "s", arg: 2, scope: !4359, file: !316, line: 98, type: !98)
!4365 = !DILocation(line: 98, column: 28, scope: !4359)
!4366 = !DILocation(line: 100, column: 31, scope: !4359)
!4367 = !DILocation(line: 100, column: 34, scope: !4359)
!4368 = !DILocation(line: 100, column: 10, scope: !4359)
!4369 = !DILocation(line: 100, column: 3, scope: !4359)
!4370 = distinct !DISubprogram(name: "xinmalloc", scope: !316, file: !316, line: 104, type: !4371, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!59, !330, !330}
!4373 = !DILocalVariable(name: "n", arg: 1, scope: !4370, file: !316, line: 104, type: !330)
!4374 = !DILocation(line: 104, column: 18, scope: !4370)
!4375 = !DILocalVariable(name: "s", arg: 2, scope: !4370, file: !316, line: 104, type: !330)
!4376 = !DILocation(line: 104, column: 27, scope: !4370)
!4377 = !DILocation(line: 106, column: 32, scope: !4370)
!4378 = !DILocation(line: 106, column: 35, scope: !4370)
!4379 = !DILocation(line: 106, column: 10, scope: !4370)
!4380 = !DILocation(line: 106, column: 3, scope: !4370)
!4381 = distinct !DISubprogram(name: "x2realloc", scope: !316, file: !316, line: 116, type: !4382, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!59, !59, !322}
!4384 = !DILocalVariable(name: "p", arg: 1, scope: !4381, file: !316, line: 116, type: !59)
!4385 = !DILocation(line: 116, column: 18, scope: !4381)
!4386 = !DILocalVariable(name: "ps", arg: 2, scope: !4381, file: !316, line: 116, type: !322)
!4387 = !DILocation(line: 116, column: 29, scope: !4381)
!4388 = !DILocation(line: 118, column: 22, scope: !4381)
!4389 = !DILocation(line: 118, column: 25, scope: !4381)
!4390 = !DILocation(line: 118, column: 10, scope: !4381)
!4391 = !DILocation(line: 118, column: 3, scope: !4381)
!4392 = !DILocalVariable(name: "p", arg: 1, scope: !319, file: !316, line: 176, type: !59)
!4393 = !DILocation(line: 176, column: 19, scope: !319)
!4394 = !DILocalVariable(name: "pn", arg: 2, scope: !319, file: !316, line: 176, type: !322)
!4395 = !DILocation(line: 176, column: 30, scope: !319)
!4396 = !DILocalVariable(name: "s", arg: 3, scope: !319, file: !316, line: 176, type: !98)
!4397 = !DILocation(line: 176, column: 41, scope: !319)
!4398 = !DILocalVariable(name: "n", scope: !319, file: !316, line: 178, type: !98)
!4399 = !DILocation(line: 178, column: 10, scope: !319)
!4400 = !DILocation(line: 178, column: 15, scope: !319)
!4401 = !DILocation(line: 178, column: 14, scope: !319)
!4402 = !DILocation(line: 180, column: 9, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !319, file: !316, line: 180, column: 7)
!4404 = !DILocation(line: 180, column: 7, scope: !319)
!4405 = !DILocation(line: 182, column: 13, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !316, line: 182, column: 11)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !316, line: 181, column: 5)
!4408 = !DILocation(line: 182, column: 11, scope: !4407)
!4409 = !DILocation(line: 190, column: 32, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !316, line: 183, column: 9)
!4411 = !DILocation(line: 190, column: 30, scope: !4410)
!4412 = !DILocation(line: 190, column: 13, scope: !4410)
!4413 = !DILocation(line: 191, column: 17, scope: !4410)
!4414 = !DILocation(line: 191, column: 16, scope: !4410)
!4415 = !DILocation(line: 191, column: 13, scope: !4410)
!4416 = !DILocation(line: 192, column: 9, scope: !4410)
!4417 = !DILocation(line: 193, column: 5, scope: !4407)
!4418 = !DILocation(line: 197, column: 11, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !316, line: 197, column: 11)
!4420 = distinct !DILexicalBlock(scope: !4403, file: !316, line: 195, column: 5)
!4421 = !DILocation(line: 197, column: 11, scope: !4420)
!4422 = !DILocation(line: 198, column: 9, scope: !4419)
!4423 = !DILocation(line: 201, column: 22, scope: !319)
!4424 = !DILocation(line: 201, column: 25, scope: !319)
!4425 = !DILocation(line: 201, column: 28, scope: !319)
!4426 = !DILocation(line: 201, column: 7, scope: !319)
!4427 = !DILocation(line: 201, column: 5, scope: !319)
!4428 = !DILocation(line: 202, column: 9, scope: !319)
!4429 = !DILocation(line: 202, column: 4, scope: !319)
!4430 = !DILocation(line: 202, column: 7, scope: !319)
!4431 = !DILocation(line: 203, column: 10, scope: !319)
!4432 = !DILocation(line: 203, column: 3, scope: !319)
!4433 = !DILocalVariable(name: "pa", arg: 1, scope: !326, file: !316, line: 223, type: !59)
!4434 = !DILocation(line: 223, column: 16, scope: !326)
!4435 = !DILocalVariable(name: "pn", arg: 2, scope: !326, file: !316, line: 223, type: !329)
!4436 = !DILocation(line: 223, column: 27, scope: !326)
!4437 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !326, file: !316, line: 223, type: !330)
!4438 = !DILocation(line: 223, column: 37, scope: !326)
!4439 = !DILocalVariable(name: "n_max", arg: 4, scope: !326, file: !316, line: 223, type: !332)
!4440 = !DILocation(line: 223, column: 59, scope: !326)
!4441 = !DILocalVariable(name: "s", arg: 5, scope: !326, file: !316, line: 223, type: !330)
!4442 = !DILocation(line: 223, column: 72, scope: !326)
!4443 = !DILocalVariable(name: "n0", scope: !326, file: !316, line: 230, type: !330)
!4444 = !DILocation(line: 230, column: 9, scope: !326)
!4445 = !DILocation(line: 230, column: 15, scope: !326)
!4446 = !DILocation(line: 230, column: 14, scope: !326)
!4447 = !DILocalVariable(name: "n", scope: !326, file: !316, line: 237, type: !330)
!4448 = !DILocation(line: 237, column: 9, scope: !326)
!4449 = !DILocation(line: 238, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !326, file: !316, line: 238, column: 7)
!4451 = !DILocation(line: 238, column: 7, scope: !326)
!4452 = !DILocation(line: 239, column: 7, scope: !4450)
!4453 = !DILocation(line: 239, column: 5, scope: !4450)
!4454 = !DILocation(line: 240, column: 12, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !326, file: !316, line: 240, column: 7)
!4456 = !DILocation(line: 240, column: 9, scope: !4455)
!4457 = !DILocation(line: 240, column: 18, scope: !4455)
!4458 = !DILocation(line: 240, column: 21, scope: !4455)
!4459 = !DILocation(line: 240, column: 29, scope: !4455)
!4460 = !DILocation(line: 240, column: 27, scope: !4455)
!4461 = !DILocation(line: 240, column: 7, scope: !326)
!4462 = !DILocation(line: 241, column: 9, scope: !4455)
!4463 = !DILocation(line: 241, column: 7, scope: !4455)
!4464 = !DILocation(line: 241, column: 5, scope: !4455)
!4465 = !DILocalVariable(name: "nbytes", scope: !326, file: !316, line: 248, type: !330)
!4466 = !DILocation(line: 248, column: 9, scope: !326)
!4467 = !DILocalVariable(name: "adjusted_nbytes", scope: !326, file: !316, line: 252, type: !330)
!4468 = !DILocation(line: 252, column: 9, scope: !326)
!4469 = !DILocation(line: 253, column: 8, scope: !326)
!4470 = !DILocation(line: 255, column: 10, scope: !326)
!4471 = !DILocation(line: 255, column: 17, scope: !326)
!4472 = !DILocation(line: 256, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !326, file: !316, line: 256, column: 7)
!4474 = !DILocation(line: 256, column: 7, scope: !326)
!4475 = !DILocation(line: 258, column: 11, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !316, line: 257, column: 5)
!4477 = !DILocation(line: 258, column: 29, scope: !4476)
!4478 = !DILocation(line: 258, column: 27, scope: !4476)
!4479 = !DILocation(line: 258, column: 9, scope: !4476)
!4480 = !DILocation(line: 259, column: 16, scope: !4476)
!4481 = !DILocation(line: 259, column: 34, scope: !4476)
!4482 = !DILocation(line: 259, column: 52, scope: !4476)
!4483 = !DILocation(line: 259, column: 50, scope: !4476)
!4484 = !DILocation(line: 259, column: 32, scope: !4476)
!4485 = !DILocation(line: 259, column: 14, scope: !4476)
!4486 = !DILocation(line: 260, column: 5, scope: !4476)
!4487 = !DILocation(line: 262, column: 9, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !326, file: !316, line: 262, column: 7)
!4489 = !DILocation(line: 262, column: 7, scope: !326)
!4490 = !DILocation(line: 263, column: 6, scope: !4488)
!4491 = !DILocation(line: 263, column: 9, scope: !4488)
!4492 = !DILocation(line: 263, column: 5, scope: !4488)
!4493 = !DILocation(line: 264, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !326, file: !316, line: 264, column: 7)
!4495 = !DILocation(line: 264, column: 11, scope: !4494)
!4496 = !DILocation(line: 264, column: 9, scope: !4494)
!4497 = !DILocation(line: 264, column: 16, scope: !4494)
!4498 = !DILocation(line: 264, column: 14, scope: !4494)
!4499 = !DILocation(line: 265, column: 7, scope: !4494)
!4500 = !DILocation(line: 265, column: 11, scope: !4494)
!4501 = !DILocation(line: 266, column: 11, scope: !4494)
!4502 = !DILocation(line: 266, column: 20, scope: !4494)
!4503 = !DILocation(line: 266, column: 17, scope: !4494)
!4504 = !DILocation(line: 266, column: 26, scope: !4494)
!4505 = !DILocation(line: 266, column: 29, scope: !4494)
!4506 = !DILocation(line: 266, column: 37, scope: !4494)
!4507 = !DILocation(line: 266, column: 35, scope: !4494)
!4508 = !DILocation(line: 267, column: 11, scope: !4494)
!4509 = !DILocation(line: 267, column: 14, scope: !4494)
!4510 = !DILocation(line: 264, column: 7, scope: !326)
!4511 = !DILocation(line: 268, column: 5, scope: !4494)
!4512 = !DILocation(line: 269, column: 18, scope: !326)
!4513 = !DILocation(line: 269, column: 22, scope: !326)
!4514 = !DILocation(line: 269, column: 8, scope: !326)
!4515 = !DILocation(line: 269, column: 6, scope: !326)
!4516 = !DILocation(line: 270, column: 9, scope: !326)
!4517 = !DILocation(line: 270, column: 4, scope: !326)
!4518 = !DILocation(line: 270, column: 7, scope: !326)
!4519 = !DILocation(line: 271, column: 10, scope: !326)
!4520 = !DILocation(line: 271, column: 3, scope: !326)
!4521 = distinct !DISubprogram(name: "xzalloc", scope: !316, file: !316, line: 279, type: !4296, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4522 = !DILocalVariable(name: "s", arg: 1, scope: !4521, file: !316, line: 279, type: !98)
!4523 = !DILocation(line: 279, column: 17, scope: !4521)
!4524 = !DILocation(line: 281, column: 19, scope: !4521)
!4525 = !DILocation(line: 281, column: 10, scope: !4521)
!4526 = !DILocation(line: 281, column: 3, scope: !4521)
!4527 = distinct !DISubprogram(name: "xcalloc", scope: !316, file: !316, line: 294, type: !4360, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4528 = !DILocalVariable(name: "n", arg: 1, scope: !4527, file: !316, line: 294, type: !98)
!4529 = !DILocation(line: 294, column: 17, scope: !4527)
!4530 = !DILocalVariable(name: "s", arg: 2, scope: !4527, file: !316, line: 294, type: !98)
!4531 = !DILocation(line: 294, column: 27, scope: !4527)
!4532 = !DILocation(line: 296, column: 33, scope: !4527)
!4533 = !DILocation(line: 296, column: 36, scope: !4527)
!4534 = !DILocation(line: 296, column: 25, scope: !4527)
!4535 = !DILocation(line: 296, column: 10, scope: !4527)
!4536 = !DILocation(line: 296, column: 3, scope: !4527)
!4537 = distinct !DISubprogram(name: "xizalloc", scope: !316, file: !316, line: 285, type: !4305, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4538 = !DILocalVariable(name: "s", arg: 1, scope: !4537, file: !316, line: 285, type: !330)
!4539 = !DILocation(line: 285, column: 17, scope: !4537)
!4540 = !DILocation(line: 287, column: 20, scope: !4537)
!4541 = !DILocation(line: 287, column: 10, scope: !4537)
!4542 = !DILocation(line: 287, column: 3, scope: !4537)
!4543 = distinct !DISubprogram(name: "xicalloc", scope: !316, file: !316, line: 300, type: !4371, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4544 = !DILocalVariable(name: "n", arg: 1, scope: !4543, file: !316, line: 300, type: !330)
!4545 = !DILocation(line: 300, column: 17, scope: !4543)
!4546 = !DILocalVariable(name: "s", arg: 2, scope: !4543, file: !316, line: 300, type: !330)
!4547 = !DILocation(line: 300, column: 26, scope: !4543)
!4548 = !DILocation(line: 302, column: 34, scope: !4543)
!4549 = !DILocation(line: 302, column: 37, scope: !4543)
!4550 = !DILocation(line: 302, column: 25, scope: !4543)
!4551 = !DILocation(line: 302, column: 10, scope: !4543)
!4552 = !DILocation(line: 302, column: 3, scope: !4543)
!4553 = distinct !DISubprogram(name: "xmemdup", scope: !316, file: !316, line: 310, type: !4554, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!59, !4556, !98}
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4558 = !DILocalVariable(name: "p", arg: 1, scope: !4553, file: !316, line: 310, type: !4556)
!4559 = !DILocation(line: 310, column: 22, scope: !4553)
!4560 = !DILocalVariable(name: "s", arg: 2, scope: !4553, file: !316, line: 310, type: !98)
!4561 = !DILocation(line: 310, column: 32, scope: !4553)
!4562 = !DILocation(line: 312, column: 27, scope: !4553)
!4563 = !DILocation(line: 312, column: 18, scope: !4553)
!4564 = !DILocation(line: 312, column: 31, scope: !4553)
!4565 = !DILocation(line: 312, column: 34, scope: !4553)
!4566 = !DILocation(line: 312, column: 10, scope: !4553)
!4567 = !DILocation(line: 312, column: 3, scope: !4553)
!4568 = distinct !DISubprogram(name: "ximemdup", scope: !316, file: !316, line: 316, type: !4569, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!59, !4556, !330}
!4571 = !DILocalVariable(name: "p", arg: 1, scope: !4568, file: !316, line: 316, type: !4556)
!4572 = !DILocation(line: 316, column: 23, scope: !4568)
!4573 = !DILocalVariable(name: "s", arg: 2, scope: !4568, file: !316, line: 316, type: !330)
!4574 = !DILocation(line: 316, column: 32, scope: !4568)
!4575 = !DILocation(line: 318, column: 28, scope: !4568)
!4576 = !DILocation(line: 318, column: 18, scope: !4568)
!4577 = !DILocation(line: 318, column: 32, scope: !4568)
!4578 = !DILocation(line: 318, column: 35, scope: !4568)
!4579 = !DILocation(line: 318, column: 10, scope: !4568)
!4580 = !DILocation(line: 318, column: 3, scope: !4568)
!4581 = distinct !DISubprogram(name: "ximemdup0", scope: !316, file: !316, line: 325, type: !4582, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!57, !4556, !330}
!4584 = !DILocalVariable(name: "p", arg: 1, scope: !4581, file: !316, line: 325, type: !4556)
!4585 = !DILocation(line: 325, column: 24, scope: !4581)
!4586 = !DILocalVariable(name: "s", arg: 2, scope: !4581, file: !316, line: 325, type: !330)
!4587 = !DILocation(line: 325, column: 33, scope: !4581)
!4588 = !DILocalVariable(name: "result", scope: !4581, file: !316, line: 327, type: !57)
!4589 = !DILocation(line: 327, column: 9, scope: !4581)
!4590 = !DILocation(line: 327, column: 28, scope: !4581)
!4591 = !DILocation(line: 327, column: 30, scope: !4581)
!4592 = !DILocation(line: 327, column: 18, scope: !4581)
!4593 = !DILocation(line: 328, column: 3, scope: !4581)
!4594 = !DILocation(line: 328, column: 10, scope: !4581)
!4595 = !DILocation(line: 328, column: 13, scope: !4581)
!4596 = !DILocation(line: 329, column: 18, scope: !4581)
!4597 = !DILocation(line: 329, column: 26, scope: !4581)
!4598 = !DILocation(line: 329, column: 29, scope: !4581)
!4599 = !DILocation(line: 329, column: 10, scope: !4581)
!4600 = !DILocation(line: 329, column: 3, scope: !4581)
!4601 = distinct !DISubprogram(name: "xstrdup", scope: !316, file: !316, line: 335, type: !3683, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4602 = !DILocalVariable(name: "string", arg: 1, scope: !4601, file: !316, line: 335, type: !74)
!4603 = !DILocation(line: 335, column: 22, scope: !4601)
!4604 = !DILocation(line: 337, column: 19, scope: !4601)
!4605 = !DILocation(line: 337, column: 35, scope: !4601)
!4606 = !DILocation(line: 337, column: 27, scope: !4601)
!4607 = !DILocation(line: 337, column: 43, scope: !4601)
!4608 = !DILocation(line: 337, column: 10, scope: !4601)
!4609 = !DILocation(line: 337, column: 3, scope: !4601)
!4610 = distinct !DISubprogram(name: "xalloc_die", scope: !336, file: !336, line: 32, type: !155, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !335, retainedNodes: !76)
!4611 = !DILocalVariable(name: "__errstatus", scope: !4612, file: !336, line: 34, type: !4613)
!4612 = distinct !DILexicalBlock(scope: !4610, file: !336, line: 34, column: 3)
!4613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!4614 = !DILocation(line: 34, column: 3, scope: !4612)
!4615 = !DILocation(line: 40, column: 3, scope: !4610)
!4616 = distinct !DISubprogram(name: "xnumtoumax", scope: !4617, file: !4617, line: 42, type: !4618, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !337, retainedNodes: !76)
!4617 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!352, !74, !60, !352, !352, !74, !74, !60, !60}
!4620 = !DILocalVariable(name: "n_str", arg: 1, scope: !4616, file: !4617, line: 42, type: !74)
!4621 = !DILocation(line: 42, column: 26, scope: !4616)
!4622 = !DILocalVariable(name: "base", arg: 2, scope: !4616, file: !4617, line: 42, type: !60)
!4623 = !DILocation(line: 42, column: 37, scope: !4616)
!4624 = !DILocalVariable(name: "min", arg: 3, scope: !4616, file: !4617, line: 42, type: !352)
!4625 = !DILocation(line: 42, column: 57, scope: !4616)
!4626 = !DILocalVariable(name: "max", arg: 4, scope: !4616, file: !4617, line: 42, type: !352)
!4627 = !DILocation(line: 42, column: 76, scope: !4616)
!4628 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4616, file: !4617, line: 43, type: !74)
!4629 = !DILocation(line: 43, column: 26, scope: !4616)
!4630 = !DILocalVariable(name: "err", arg: 6, scope: !4616, file: !4617, line: 43, type: !74)
!4631 = !DILocation(line: 43, column: 48, scope: !4616)
!4632 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4616, file: !4617, line: 43, type: !60)
!4633 = !DILocation(line: 43, column: 57, scope: !4616)
!4634 = !DILocalVariable(name: "flags", arg: 8, scope: !4616, file: !4617, line: 44, type: !60)
!4635 = !DILocation(line: 44, column: 18, scope: !4616)
!4636 = !DILocalVariable(name: "tnum", scope: !4616, file: !4617, line: 46, type: !352)
!4637 = !DILocation(line: 46, column: 17, scope: !4616)
!4638 = !DILocalVariable(name: "r", scope: !4616, file: !4617, line: 46, type: !352)
!4639 = !DILocation(line: 46, column: 23, scope: !4616)
!4640 = !DILocalVariable(name: "s_err", scope: !4616, file: !4617, line: 47, type: !4641)
!4641 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !341, line: 43, baseType: !340)
!4642 = !DILocation(line: 47, column: 16, scope: !4616)
!4643 = !DILocation(line: 47, column: 35, scope: !4616)
!4644 = !DILocation(line: 47, column: 48, scope: !4616)
!4645 = !DILocation(line: 47, column: 61, scope: !4616)
!4646 = !DILocation(line: 47, column: 24, scope: !4616)
!4647 = !DILocalVariable(name: "overflow_errno", scope: !4616, file: !4617, line: 50, type: !60)
!4648 = !DILocation(line: 50, column: 7, scope: !4616)
!4649 = !DILocation(line: 52, column: 7, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4616, file: !4617, line: 52, column: 7)
!4651 = !DILocation(line: 52, column: 13, scope: !4650)
!4652 = !DILocation(line: 52, column: 7, scope: !4616)
!4653 = !DILocation(line: 54, column: 11, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !4617, line: 54, column: 11)
!4655 = distinct !DILexicalBlock(scope: !4650, file: !4617, line: 53, column: 5)
!4656 = !DILocation(line: 54, column: 18, scope: !4654)
!4657 = !DILocation(line: 54, column: 16, scope: !4654)
!4658 = !DILocation(line: 54, column: 11, scope: !4655)
!4659 = !DILocation(line: 56, column: 15, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4654, file: !4617, line: 55, column: 9)
!4661 = !DILocation(line: 56, column: 13, scope: !4660)
!4662 = !DILocation(line: 57, column: 28, scope: !4660)
!4663 = !DILocation(line: 57, column: 34, scope: !4660)
!4664 = !DILocation(line: 57, column: 26, scope: !4660)
!4665 = !DILocation(line: 58, column: 15, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4660, file: !4617, line: 58, column: 15)
!4667 = !DILocation(line: 58, column: 21, scope: !4666)
!4668 = !DILocation(line: 58, column: 15, scope: !4660)
!4669 = !DILocation(line: 59, column: 19, scope: !4666)
!4670 = !DILocation(line: 59, column: 13, scope: !4666)
!4671 = !DILocation(line: 60, column: 9, scope: !4660)
!4672 = !DILocation(line: 61, column: 16, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4654, file: !4617, line: 61, column: 16)
!4674 = !DILocation(line: 61, column: 22, scope: !4673)
!4675 = !DILocation(line: 61, column: 20, scope: !4673)
!4676 = !DILocation(line: 61, column: 16, scope: !4654)
!4677 = !DILocation(line: 63, column: 15, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4673, file: !4617, line: 62, column: 9)
!4679 = !DILocation(line: 63, column: 13, scope: !4678)
!4680 = !DILocation(line: 64, column: 28, scope: !4678)
!4681 = !DILocation(line: 64, column: 34, scope: !4678)
!4682 = !DILocation(line: 64, column: 26, scope: !4678)
!4683 = !DILocation(line: 65, column: 15, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4678, file: !4617, line: 65, column: 15)
!4685 = !DILocation(line: 65, column: 21, scope: !4684)
!4686 = !DILocation(line: 65, column: 15, scope: !4678)
!4687 = !DILocation(line: 66, column: 19, scope: !4684)
!4688 = !DILocation(line: 66, column: 13, scope: !4684)
!4689 = !DILocation(line: 67, column: 9, scope: !4678)
!4690 = !DILocation(line: 70, column: 15, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4673, file: !4617, line: 69, column: 9)
!4692 = !DILocation(line: 70, column: 13, scope: !4691)
!4693 = !DILocation(line: 71, column: 26, scope: !4691)
!4694 = !DILocation(line: 73, column: 5, scope: !4655)
!4695 = !DILocalVariable(name: "e", scope: !4616, file: !4617, line: 75, type: !60)
!4696 = !DILocation(line: 75, column: 7, scope: !4616)
!4697 = !DILocation(line: 75, column: 11, scope: !4616)
!4698 = !DILocation(line: 75, column: 17, scope: !4616)
!4699 = !DILocation(line: 75, column: 39, scope: !4616)
!4700 = !DILocation(line: 77, column: 10, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4616, file: !4617, line: 77, column: 7)
!4702 = !DILocation(line: 77, column: 16, scope: !4701)
!4703 = !DILocation(line: 78, column: 10, scope: !4701)
!4704 = !DILocation(line: 78, column: 14, scope: !4701)
!4705 = !DILocation(line: 78, column: 20, scope: !4701)
!4706 = !DILocation(line: 79, column: 14, scope: !4701)
!4707 = !DILocation(line: 79, column: 17, scope: !4701)
!4708 = !DILocation(line: 79, column: 26, scope: !4701)
!4709 = !DILocation(line: 79, column: 31, scope: !4701)
!4710 = !DILocation(line: 79, column: 23, scope: !4701)
!4711 = !DILocation(line: 77, column: 7, scope: !4616)
!4712 = !DILocation(line: 80, column: 5, scope: !4701)
!4713 = !DILocalVariable(name: "__errstatus", scope: !4714, file: !4617, line: 80, type: !4613)
!4714 = distinct !DILexicalBlock(scope: !4701, file: !4617, line: 80, column: 5)
!4715 = !DILocation(line: 80, column: 5, scope: !4714)
!4716 = !DILocation(line: 82, column: 11, scope: !4616)
!4717 = !DILocation(line: 82, column: 3, scope: !4616)
!4718 = !DILocation(line: 82, column: 9, scope: !4616)
!4719 = !DILocation(line: 83, column: 10, scope: !4616)
!4720 = !DILocation(line: 83, column: 3, scope: !4616)
!4721 = distinct !DISubprogram(name: "xdectoumax", scope: !4617, file: !4617, line: 92, type: !4722, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !337, retainedNodes: !76)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!352, !74, !352, !352, !74, !74, !60}
!4724 = !DILocalVariable(name: "n_str", arg: 1, scope: !4721, file: !4617, line: 92, type: !74)
!4725 = !DILocation(line: 92, column: 26, scope: !4721)
!4726 = !DILocalVariable(name: "min", arg: 2, scope: !4721, file: !4617, line: 92, type: !352)
!4727 = !DILocation(line: 92, column: 47, scope: !4721)
!4728 = !DILocalVariable(name: "max", arg: 3, scope: !4721, file: !4617, line: 92, type: !352)
!4729 = !DILocation(line: 92, column: 66, scope: !4721)
!4730 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4721, file: !4617, line: 93, type: !74)
!4731 = !DILocation(line: 93, column: 26, scope: !4721)
!4732 = !DILocalVariable(name: "err", arg: 5, scope: !4721, file: !4617, line: 93, type: !74)
!4733 = !DILocation(line: 93, column: 48, scope: !4721)
!4734 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4721, file: !4617, line: 93, type: !60)
!4735 = !DILocation(line: 93, column: 57, scope: !4721)
!4736 = !DILocation(line: 95, column: 23, scope: !4721)
!4737 = !DILocation(line: 95, column: 34, scope: !4721)
!4738 = !DILocation(line: 95, column: 39, scope: !4721)
!4739 = !DILocation(line: 95, column: 44, scope: !4721)
!4740 = !DILocation(line: 95, column: 54, scope: !4721)
!4741 = !DILocation(line: 95, column: 59, scope: !4721)
!4742 = !DILocation(line: 95, column: 10, scope: !4721)
!4743 = !DILocation(line: 95, column: 3, scope: !4721)
!4744 = distinct !DISubprogram(name: "xstrtoumax", scope: !4745, file: !4745, line: 71, type: !4746, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !76)
!4745 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!4641, !74, !682, !60, !4748, !74}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!4749 = !DILocalVariable(name: "nptr", arg: 1, scope: !4744, file: !4745, line: 71, type: !74)
!4750 = !DILocation(line: 71, column: 24, scope: !4744)
!4751 = !DILocalVariable(name: "endptr", arg: 2, scope: !4744, file: !4745, line: 71, type: !682)
!4752 = !DILocation(line: 71, column: 37, scope: !4744)
!4753 = !DILocalVariable(name: "base", arg: 3, scope: !4744, file: !4745, line: 71, type: !60)
!4754 = !DILocation(line: 71, column: 49, scope: !4744)
!4755 = !DILocalVariable(name: "val", arg: 4, scope: !4744, file: !4745, line: 72, type: !4748)
!4756 = !DILocation(line: 72, column: 24, scope: !4744)
!4757 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4744, file: !4745, line: 72, type: !74)
!4758 = !DILocation(line: 72, column: 41, scope: !4744)
!4759 = !DILocalVariable(name: "t_ptr", scope: !4744, file: !4745, line: 74, type: !57)
!4760 = !DILocation(line: 74, column: 9, scope: !4744)
!4761 = !DILocalVariable(name: "p", scope: !4744, file: !4745, line: 75, type: !682)
!4762 = !DILocation(line: 75, column: 10, scope: !4744)
!4763 = !DILocation(line: 75, column: 14, scope: !4744)
!4764 = !DILocation(line: 75, column: 23, scope: !4744)
!4765 = !DILocalVariable(name: "q", scope: !4766, file: !4745, line: 79, type: !74)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !4745, line: 78, column: 5)
!4767 = distinct !DILexicalBlock(scope: !4744, file: !4745, line: 77, column: 7)
!4768 = !DILocation(line: 79, column: 19, scope: !4766)
!4769 = !DILocation(line: 79, column: 23, scope: !4766)
!4770 = !DILocalVariable(name: "ch", scope: !4766, file: !4745, line: 80, type: !253)
!4771 = !DILocation(line: 80, column: 21, scope: !4766)
!4772 = !DILocation(line: 80, column: 27, scope: !4766)
!4773 = !DILocation(line: 80, column: 26, scope: !4766)
!4774 = !DILocation(line: 81, column: 7, scope: !4766)
!4775 = !DILocation(line: 81, column: 14, scope: !4766)
!4776 = !DILocation(line: 82, column: 15, scope: !4766)
!4777 = !DILocation(line: 82, column: 14, scope: !4766)
!4778 = !DILocation(line: 82, column: 12, scope: !4766)
!4779 = distinct !{!4779, !4774, !4780, !496}
!4780 = !DILocation(line: 82, column: 17, scope: !4766)
!4781 = !DILocation(line: 83, column: 11, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4766, file: !4745, line: 83, column: 11)
!4783 = !DILocation(line: 83, column: 14, scope: !4782)
!4784 = !DILocation(line: 83, column: 11, scope: !4766)
!4785 = !DILocation(line: 85, column: 25, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !4745, line: 84, column: 9)
!4787 = !DILocation(line: 85, column: 12, scope: !4786)
!4788 = !DILocation(line: 85, column: 14, scope: !4786)
!4789 = !DILocation(line: 86, column: 11, scope: !4786)
!4790 = !DILocation(line: 90, column: 3, scope: !4744)
!4791 = !DILocation(line: 90, column: 9, scope: !4744)
!4792 = !DILocalVariable(name: "tmp", scope: !4744, file: !4745, line: 91, type: !352)
!4793 = !DILocation(line: 91, column: 14, scope: !4744)
!4794 = !DILocation(line: 91, column: 30, scope: !4744)
!4795 = !DILocation(line: 91, column: 36, scope: !4744)
!4796 = !DILocation(line: 91, column: 39, scope: !4744)
!4797 = !DILocation(line: 91, column: 20, scope: !4744)
!4798 = !DILocalVariable(name: "err", scope: !4744, file: !4745, line: 92, type: !4641)
!4799 = !DILocation(line: 92, column: 16, scope: !4744)
!4800 = !DILocation(line: 94, column: 8, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4744, file: !4745, line: 94, column: 7)
!4802 = !DILocation(line: 94, column: 7, scope: !4801)
!4803 = !DILocation(line: 94, column: 13, scope: !4801)
!4804 = !DILocation(line: 94, column: 10, scope: !4801)
!4805 = !DILocation(line: 94, column: 7, scope: !4744)
!4806 = !DILocation(line: 98, column: 14, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !4745, line: 98, column: 11)
!4808 = distinct !DILexicalBlock(scope: !4801, file: !4745, line: 95, column: 5)
!4809 = !DILocation(line: 98, column: 29, scope: !4807)
!4810 = !DILocation(line: 98, column: 33, scope: !4807)
!4811 = !DILocation(line: 98, column: 32, scope: !4807)
!4812 = !DILocation(line: 98, column: 38, scope: !4807)
!4813 = !DILocation(line: 98, column: 49, scope: !4807)
!4814 = !DILocation(line: 98, column: 66, scope: !4807)
!4815 = !DILocation(line: 98, column: 65, scope: !4807)
!4816 = !DILocation(line: 98, column: 41, scope: !4807)
!4817 = !DILocation(line: 98, column: 11, scope: !4808)
!4818 = !DILocation(line: 99, column: 9, scope: !4807)
!4819 = !DILocation(line: 100, column: 11, scope: !4808)
!4820 = !DILocation(line: 101, column: 5, scope: !4808)
!4821 = !DILocation(line: 102, column: 12, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4801, file: !4745, line: 102, column: 12)
!4823 = !DILocation(line: 102, column: 18, scope: !4822)
!4824 = !DILocation(line: 102, column: 12, scope: !4801)
!4825 = !DILocation(line: 104, column: 11, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !4745, line: 104, column: 11)
!4827 = distinct !DILexicalBlock(scope: !4822, file: !4745, line: 103, column: 5)
!4828 = !DILocation(line: 104, column: 17, scope: !4826)
!4829 = !DILocation(line: 104, column: 11, scope: !4827)
!4830 = !DILocation(line: 105, column: 9, scope: !4826)
!4831 = !DILocation(line: 106, column: 11, scope: !4827)
!4832 = !DILocation(line: 107, column: 5, scope: !4827)
!4833 = !DILocation(line: 112, column: 8, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4744, file: !4745, line: 112, column: 7)
!4835 = !DILocation(line: 112, column: 7, scope: !4744)
!4836 = !DILocation(line: 114, column: 14, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !4745, line: 113, column: 5)
!4838 = !DILocation(line: 114, column: 8, scope: !4837)
!4839 = !DILocation(line: 114, column: 12, scope: !4837)
!4840 = !DILocation(line: 115, column: 14, scope: !4837)
!4841 = !DILocation(line: 115, column: 7, scope: !4837)
!4842 = !DILocation(line: 118, column: 9, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4744, file: !4745, line: 118, column: 7)
!4844 = !DILocation(line: 118, column: 8, scope: !4843)
!4845 = !DILocation(line: 118, column: 7, scope: !4843)
!4846 = !DILocation(line: 118, column: 11, scope: !4843)
!4847 = !DILocation(line: 118, column: 7, scope: !4744)
!4848 = !DILocation(line: 120, column: 20, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !4745, line: 120, column: 11)
!4850 = distinct !DILexicalBlock(scope: !4843, file: !4745, line: 119, column: 5)
!4851 = !DILocation(line: 120, column: 38, scope: !4849)
!4852 = !DILocation(line: 120, column: 37, scope: !4849)
!4853 = !DILocation(line: 120, column: 36, scope: !4849)
!4854 = !DILocation(line: 120, column: 12, scope: !4849)
!4855 = !DILocation(line: 120, column: 11, scope: !4850)
!4856 = !DILocation(line: 122, column: 18, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4849, file: !4745, line: 121, column: 9)
!4858 = !DILocation(line: 122, column: 12, scope: !4857)
!4859 = !DILocation(line: 122, column: 16, scope: !4857)
!4860 = !DILocation(line: 123, column: 18, scope: !4857)
!4861 = !DILocation(line: 123, column: 22, scope: !4857)
!4862 = !DILocation(line: 123, column: 11, scope: !4857)
!4863 = !DILocalVariable(name: "xbase", scope: !4850, file: !4745, line: 126, type: !60)
!4864 = !DILocation(line: 126, column: 11, scope: !4850)
!4865 = !DILocalVariable(name: "suffixes", scope: !4850, file: !4745, line: 127, type: !60)
!4866 = !DILocation(line: 127, column: 11, scope: !4850)
!4867 = !DILocation(line: 128, column: 17, scope: !4850)
!4868 = !DILocation(line: 128, column: 16, scope: !4850)
!4869 = !DILocation(line: 128, column: 15, scope: !4850)
!4870 = !DILocation(line: 128, column: 7, scope: !4850)
!4871 = !DILocation(line: 140, column: 23, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !4745, line: 140, column: 15)
!4873 = distinct !DILexicalBlock(scope: !4850, file: !4745, line: 129, column: 9)
!4874 = !DILocation(line: 140, column: 15, scope: !4872)
!4875 = !DILocation(line: 140, column: 15, scope: !4873)
!4876 = !DILocation(line: 141, column: 21, scope: !4872)
!4877 = !DILocation(line: 141, column: 13, scope: !4872)
!4878 = !DILocation(line: 144, column: 21, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !4745, line: 144, column: 21)
!4880 = distinct !DILexicalBlock(scope: !4872, file: !4745, line: 142, column: 15)
!4881 = !DILocation(line: 144, column: 29, scope: !4879)
!4882 = !DILocation(line: 144, column: 21, scope: !4880)
!4883 = !DILocation(line: 145, column: 28, scope: !4879)
!4884 = !DILocation(line: 145, column: 19, scope: !4879)
!4885 = !DILocation(line: 146, column: 17, scope: !4880)
!4886 = !DILocation(line: 150, column: 23, scope: !4880)
!4887 = !DILocation(line: 151, column: 25, scope: !4880)
!4888 = !DILocation(line: 152, column: 17, scope: !4880)
!4889 = !DILocation(line: 153, column: 15, scope: !4880)
!4890 = !DILocation(line: 154, column: 9, scope: !4873)
!4891 = !DILocalVariable(name: "overflow", scope: !4850, file: !4745, line: 156, type: !4641)
!4892 = !DILocation(line: 156, column: 20, scope: !4850)
!4893 = !DILocation(line: 157, column: 17, scope: !4850)
!4894 = !DILocation(line: 157, column: 16, scope: !4850)
!4895 = !DILocation(line: 157, column: 15, scope: !4850)
!4896 = !DILocation(line: 157, column: 7, scope: !4850)
!4897 = !DILocation(line: 160, column: 22, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4850, file: !4745, line: 158, column: 9)
!4899 = !DILocation(line: 160, column: 20, scope: !4898)
!4900 = !DILocation(line: 161, column: 11, scope: !4898)
!4901 = !DILocation(line: 167, column: 22, scope: !4898)
!4902 = !DILocation(line: 167, column: 20, scope: !4898)
!4903 = !DILocation(line: 168, column: 11, scope: !4898)
!4904 = !DILocation(line: 171, column: 20, scope: !4898)
!4905 = !DILocation(line: 172, column: 11, scope: !4898)
!4906 = !DILocation(line: 175, column: 48, scope: !4898)
!4907 = !DILocation(line: 175, column: 22, scope: !4898)
!4908 = !DILocation(line: 175, column: 20, scope: !4898)
!4909 = !DILocation(line: 176, column: 11, scope: !4898)
!4910 = !DILocation(line: 180, column: 48, scope: !4898)
!4911 = !DILocation(line: 180, column: 22, scope: !4898)
!4912 = !DILocation(line: 180, column: 20, scope: !4898)
!4913 = !DILocation(line: 181, column: 11, scope: !4898)
!4914 = !DILocation(line: 185, column: 48, scope: !4898)
!4915 = !DILocation(line: 185, column: 22, scope: !4898)
!4916 = !DILocation(line: 185, column: 20, scope: !4898)
!4917 = !DILocation(line: 186, column: 11, scope: !4898)
!4918 = !DILocation(line: 190, column: 48, scope: !4898)
!4919 = !DILocation(line: 190, column: 22, scope: !4898)
!4920 = !DILocation(line: 190, column: 20, scope: !4898)
!4921 = !DILocation(line: 191, column: 11, scope: !4898)
!4922 = !DILocation(line: 194, column: 48, scope: !4898)
!4923 = !DILocation(line: 194, column: 22, scope: !4898)
!4924 = !DILocation(line: 194, column: 20, scope: !4898)
!4925 = !DILocation(line: 195, column: 11, scope: !4898)
!4926 = !DILocation(line: 198, column: 48, scope: !4898)
!4927 = !DILocation(line: 198, column: 22, scope: !4898)
!4928 = !DILocation(line: 198, column: 20, scope: !4898)
!4929 = !DILocation(line: 199, column: 11, scope: !4898)
!4930 = !DILocation(line: 202, column: 48, scope: !4898)
!4931 = !DILocation(line: 202, column: 22, scope: !4898)
!4932 = !DILocation(line: 202, column: 20, scope: !4898)
!4933 = !DILocation(line: 203, column: 11, scope: !4898)
!4934 = !DILocation(line: 207, column: 48, scope: !4898)
!4935 = !DILocation(line: 207, column: 22, scope: !4898)
!4936 = !DILocation(line: 207, column: 20, scope: !4898)
!4937 = !DILocation(line: 208, column: 11, scope: !4898)
!4938 = !DILocation(line: 211, column: 22, scope: !4898)
!4939 = !DILocation(line: 211, column: 20, scope: !4898)
!4940 = !DILocation(line: 212, column: 11, scope: !4898)
!4941 = !DILocation(line: 215, column: 48, scope: !4898)
!4942 = !DILocation(line: 215, column: 22, scope: !4898)
!4943 = !DILocation(line: 215, column: 20, scope: !4898)
!4944 = !DILocation(line: 216, column: 11, scope: !4898)
!4945 = !DILocation(line: 219, column: 48, scope: !4898)
!4946 = !DILocation(line: 219, column: 22, scope: !4898)
!4947 = !DILocation(line: 219, column: 20, scope: !4898)
!4948 = !DILocation(line: 220, column: 11, scope: !4898)
!4949 = !DILocation(line: 223, column: 18, scope: !4898)
!4950 = !DILocation(line: 223, column: 12, scope: !4898)
!4951 = !DILocation(line: 223, column: 16, scope: !4898)
!4952 = !DILocation(line: 224, column: 18, scope: !4898)
!4953 = !DILocation(line: 224, column: 22, scope: !4898)
!4954 = !DILocation(line: 224, column: 11, scope: !4898)
!4955 = !DILocation(line: 227, column: 14, scope: !4850)
!4956 = !DILocation(line: 227, column: 11, scope: !4850)
!4957 = !DILocation(line: 228, column: 13, scope: !4850)
!4958 = !DILocation(line: 228, column: 8, scope: !4850)
!4959 = !DILocation(line: 228, column: 10, scope: !4850)
!4960 = !DILocation(line: 229, column: 13, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4850, file: !4745, line: 229, column: 11)
!4962 = !DILocation(line: 229, column: 12, scope: !4961)
!4963 = !DILocation(line: 229, column: 11, scope: !4961)
!4964 = !DILocation(line: 229, column: 11, scope: !4850)
!4965 = !DILocation(line: 230, column: 13, scope: !4961)
!4966 = !DILocation(line: 230, column: 9, scope: !4961)
!4967 = !DILocation(line: 231, column: 5, scope: !4850)
!4968 = !DILocation(line: 233, column: 10, scope: !4744)
!4969 = !DILocation(line: 233, column: 4, scope: !4744)
!4970 = !DILocation(line: 233, column: 8, scope: !4744)
!4971 = !DILocation(line: 234, column: 10, scope: !4744)
!4972 = !DILocation(line: 234, column: 3, scope: !4744)
!4973 = !DILocation(line: 235, column: 1, scope: !4744)
!4974 = distinct !DISubprogram(name: "bkm_scale", scope: !4745, file: !4745, line: 47, type: !4975, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !348, retainedNodes: !76)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!4641, !4748, !60}
!4977 = !DILocalVariable(name: "x", arg: 1, scope: !4974, file: !4745, line: 47, type: !4748)
!4978 = !DILocation(line: 47, column: 24, scope: !4974)
!4979 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4974, file: !4745, line: 47, type: !60)
!4980 = !DILocation(line: 47, column: 31, scope: !4974)
!4981 = !DILocalVariable(name: "scaled", scope: !4974, file: !4745, line: 49, type: !352)
!4982 = !DILocation(line: 49, column: 14, scope: !4974)
!4983 = !DILocation(line: 50, column: 7, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4974, file: !4745, line: 50, column: 7)
!4985 = !DILocation(line: 50, column: 7, scope: !4974)
!4986 = !DILocation(line: 52, column: 13, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4984, file: !4745, line: 51, column: 5)
!4988 = !DILocation(line: 52, column: 12, scope: !4987)
!4989 = !DILocation(line: 52, column: 15, scope: !4987)
!4990 = !DILocation(line: 52, column: 8, scope: !4987)
!4991 = !DILocation(line: 52, column: 10, scope: !4987)
!4992 = !DILocation(line: 53, column: 7, scope: !4987)
!4993 = !DILocation(line: 56, column: 8, scope: !4974)
!4994 = !DILocation(line: 56, column: 4, scope: !4974)
!4995 = !DILocation(line: 56, column: 6, scope: !4974)
!4996 = !DILocation(line: 58, column: 3, scope: !4974)
!4997 = !DILocation(line: 59, column: 1, scope: !4974)
!4998 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4745, file: !4745, line: 62, type: !4999, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !348, retainedNodes: !76)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!4641, !4748, !60, !60}
!5001 = !DILocalVariable(name: "x", arg: 1, scope: !4998, file: !4745, line: 62, type: !4748)
!5002 = !DILocation(line: 62, column: 33, scope: !4998)
!5003 = !DILocalVariable(name: "base", arg: 2, scope: !4998, file: !4745, line: 62, type: !60)
!5004 = !DILocation(line: 62, column: 40, scope: !4998)
!5005 = !DILocalVariable(name: "power", arg: 3, scope: !4998, file: !4745, line: 62, type: !60)
!5006 = !DILocation(line: 62, column: 50, scope: !4998)
!5007 = !DILocalVariable(name: "err", scope: !4998, file: !4745, line: 64, type: !4641)
!5008 = !DILocation(line: 64, column: 16, scope: !4998)
!5009 = !DILocation(line: 65, column: 3, scope: !4998)
!5010 = !DILocation(line: 65, column: 15, scope: !4998)
!5011 = !DILocation(line: 66, column: 23, scope: !4998)
!5012 = !DILocation(line: 66, column: 26, scope: !4998)
!5013 = !DILocation(line: 66, column: 12, scope: !4998)
!5014 = !DILocation(line: 66, column: 9, scope: !4998)
!5015 = distinct !{!5015, !5009, !5016, !496}
!5016 = !DILocation(line: 66, column: 30, scope: !4998)
!5017 = !DILocation(line: 67, column: 10, scope: !4998)
!5018 = !DILocation(line: 67, column: 3, scope: !4998)
!5019 = distinct !DISubprogram(name: "rpl_fopen", scope: !357, file: !357, line: 46, type: !5020, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !356, retainedNodes: !76)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!5022, !74, !74}
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !5024)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !5025)
!5025 = !{!5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5024, file: !791, line: 51, baseType: !60, size: 32)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5024, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5024, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5024, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5024, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5024, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5024, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5024, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5024, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5024, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5024, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5024, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5024, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5024, file: !791, line: 70, baseType: !5040, size: 64, offset: 832)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5024, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5024, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5024, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5024, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5024, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5024, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5024, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5024, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5024, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5024, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5024, file: !791, line: 93, baseType: !5040, size: 64, offset: 1344)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5024, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5024, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5024, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5024, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!5056 = !DILocalVariable(name: "filename", arg: 1, scope: !5019, file: !357, line: 46, type: !74)
!5057 = !DILocation(line: 46, column: 24, scope: !5019)
!5058 = !DILocalVariable(name: "mode", arg: 2, scope: !5019, file: !357, line: 46, type: !74)
!5059 = !DILocation(line: 46, column: 46, scope: !5019)
!5060 = !DILocalVariable(name: "open_direction", scope: !5019, file: !357, line: 54, type: !60)
!5061 = !DILocation(line: 54, column: 7, scope: !5019)
!5062 = !DILocalVariable(name: "open_flags", scope: !5019, file: !357, line: 55, type: !60)
!5063 = !DILocation(line: 55, column: 7, scope: !5019)
!5064 = !DILocalVariable(name: "open_flags_gnu", scope: !5019, file: !357, line: 57, type: !65)
!5065 = !DILocation(line: 57, column: 8, scope: !5019)
!5066 = !DILocalVariable(name: "fdopen_mode_buf", scope: !5019, file: !357, line: 59, type: !5067)
!5067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 648, elements: !5068)
!5068 = !{!5069}
!5069 = !DISubrange(count: 81)
!5070 = !DILocation(line: 59, column: 8, scope: !5019)
!5071 = !DILocalVariable(name: "p", scope: !5072, file: !357, line: 62, type: !74)
!5072 = distinct !DILexicalBlock(scope: !5019, file: !357, line: 61, column: 3)
!5073 = !DILocation(line: 62, column: 17, scope: !5072)
!5074 = !DILocation(line: 62, column: 21, scope: !5072)
!5075 = !DILocalVariable(name: "q", scope: !5072, file: !357, line: 64, type: !57)
!5076 = !DILocation(line: 64, column: 11, scope: !5072)
!5077 = !DILocation(line: 64, column: 15, scope: !5072)
!5078 = !DILocation(line: 67, column: 5, scope: !5072)
!5079 = !DILocation(line: 67, column: 13, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !357, line: 67, column: 5)
!5081 = distinct !DILexicalBlock(scope: !5072, file: !357, line: 67, column: 5)
!5082 = !DILocation(line: 67, column: 12, scope: !5080)
!5083 = !DILocation(line: 67, column: 15, scope: !5080)
!5084 = !DILocation(line: 67, column: 5, scope: !5081)
!5085 = !DILocation(line: 69, column: 18, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5080, file: !357, line: 68, column: 7)
!5087 = !DILocation(line: 69, column: 17, scope: !5086)
!5088 = !DILocation(line: 69, column: 9, scope: !5086)
!5089 = !DILocation(line: 72, column: 28, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5086, file: !357, line: 70, column: 11)
!5091 = !DILocation(line: 74, column: 17, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5090, file: !357, line: 74, column: 17)
!5093 = !DILocation(line: 74, column: 21, scope: !5092)
!5094 = !DILocation(line: 74, column: 37, scope: !5092)
!5095 = !DILocation(line: 74, column: 19, scope: !5092)
!5096 = !DILocation(line: 74, column: 17, scope: !5090)
!5097 = !DILocation(line: 75, column: 23, scope: !5092)
!5098 = !DILocation(line: 75, column: 22, scope: !5092)
!5099 = !DILocation(line: 75, column: 17, scope: !5092)
!5100 = !DILocation(line: 75, column: 20, scope: !5092)
!5101 = !DILocation(line: 75, column: 15, scope: !5092)
!5102 = !DILocation(line: 77, column: 13, scope: !5090)
!5103 = !DILocation(line: 79, column: 28, scope: !5090)
!5104 = !DILocation(line: 80, column: 24, scope: !5090)
!5105 = !DILocation(line: 82, column: 17, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5090, file: !357, line: 82, column: 17)
!5107 = !DILocation(line: 82, column: 21, scope: !5106)
!5108 = !DILocation(line: 82, column: 37, scope: !5106)
!5109 = !DILocation(line: 82, column: 19, scope: !5106)
!5110 = !DILocation(line: 82, column: 17, scope: !5090)
!5111 = !DILocation(line: 83, column: 23, scope: !5106)
!5112 = !DILocation(line: 83, column: 22, scope: !5106)
!5113 = !DILocation(line: 83, column: 17, scope: !5106)
!5114 = !DILocation(line: 83, column: 20, scope: !5106)
!5115 = !DILocation(line: 83, column: 15, scope: !5106)
!5116 = !DILocation(line: 85, column: 13, scope: !5090)
!5117 = !DILocation(line: 87, column: 28, scope: !5090)
!5118 = !DILocation(line: 88, column: 24, scope: !5090)
!5119 = !DILocation(line: 90, column: 17, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5090, file: !357, line: 90, column: 17)
!5121 = !DILocation(line: 90, column: 21, scope: !5120)
!5122 = !DILocation(line: 90, column: 37, scope: !5120)
!5123 = !DILocation(line: 90, column: 19, scope: !5120)
!5124 = !DILocation(line: 90, column: 17, scope: !5090)
!5125 = !DILocation(line: 91, column: 23, scope: !5120)
!5126 = !DILocation(line: 91, column: 22, scope: !5120)
!5127 = !DILocation(line: 91, column: 17, scope: !5120)
!5128 = !DILocation(line: 91, column: 20, scope: !5120)
!5129 = !DILocation(line: 91, column: 15, scope: !5120)
!5130 = !DILocation(line: 93, column: 13, scope: !5090)
!5131 = !DILocation(line: 98, column: 24, scope: !5090)
!5132 = !DILocation(line: 100, column: 17, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5090, file: !357, line: 100, column: 17)
!5134 = !DILocation(line: 100, column: 21, scope: !5133)
!5135 = !DILocation(line: 100, column: 37, scope: !5133)
!5136 = !DILocation(line: 100, column: 19, scope: !5133)
!5137 = !DILocation(line: 100, column: 17, scope: !5090)
!5138 = !DILocation(line: 101, column: 23, scope: !5133)
!5139 = !DILocation(line: 101, column: 22, scope: !5133)
!5140 = !DILocation(line: 101, column: 17, scope: !5133)
!5141 = !DILocation(line: 101, column: 20, scope: !5133)
!5142 = !DILocation(line: 101, column: 15, scope: !5133)
!5143 = !DILocation(line: 103, column: 13, scope: !5090)
!5144 = !DILocation(line: 105, column: 28, scope: !5090)
!5145 = !DILocation(line: 107, column: 17, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5090, file: !357, line: 107, column: 17)
!5147 = !DILocation(line: 107, column: 21, scope: !5146)
!5148 = !DILocation(line: 107, column: 37, scope: !5146)
!5149 = !DILocation(line: 107, column: 19, scope: !5146)
!5150 = !DILocation(line: 107, column: 17, scope: !5090)
!5151 = !DILocation(line: 108, column: 23, scope: !5146)
!5152 = !DILocation(line: 108, column: 22, scope: !5146)
!5153 = !DILocation(line: 108, column: 17, scope: !5146)
!5154 = !DILocation(line: 108, column: 20, scope: !5146)
!5155 = !DILocation(line: 108, column: 15, scope: !5146)
!5156 = !DILocation(line: 110, column: 13, scope: !5090)
!5157 = !DILocation(line: 113, column: 24, scope: !5090)
!5158 = !DILocation(line: 114, column: 28, scope: !5090)
!5159 = !DILocation(line: 115, column: 13, scope: !5090)
!5160 = !DILocation(line: 117, column: 24, scope: !5090)
!5161 = !DILocation(line: 118, column: 28, scope: !5090)
!5162 = !DILocation(line: 119, column: 13, scope: !5090)
!5163 = !DILocation(line: 122, column: 13, scope: !5090)
!5164 = !DILocalVariable(name: "len", scope: !5165, file: !357, line: 128, type: !98)
!5165 = distinct !DILexicalBlock(scope: !5086, file: !357, line: 127, column: 9)
!5166 = !DILocation(line: 128, column: 18, scope: !5165)
!5167 = !DILocation(line: 128, column: 32, scope: !5165)
!5168 = !DILocation(line: 128, column: 24, scope: !5165)
!5169 = !DILocation(line: 129, column: 15, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5165, file: !357, line: 129, column: 15)
!5171 = !DILocation(line: 129, column: 21, scope: !5170)
!5172 = !DILocation(line: 129, column: 37, scope: !5170)
!5173 = !DILocation(line: 129, column: 50, scope: !5170)
!5174 = !DILocation(line: 129, column: 48, scope: !5170)
!5175 = !DILocation(line: 129, column: 19, scope: !5170)
!5176 = !DILocation(line: 129, column: 15, scope: !5165)
!5177 = !DILocation(line: 130, column: 19, scope: !5170)
!5178 = !DILocation(line: 130, column: 35, scope: !5170)
!5179 = !DILocation(line: 130, column: 48, scope: !5170)
!5180 = !DILocation(line: 130, column: 46, scope: !5170)
!5181 = !DILocation(line: 130, column: 17, scope: !5170)
!5182 = !DILocation(line: 130, column: 13, scope: !5170)
!5183 = !DILocation(line: 131, column: 19, scope: !5165)
!5184 = !DILocation(line: 131, column: 22, scope: !5165)
!5185 = !DILocation(line: 131, column: 25, scope: !5165)
!5186 = !DILocation(line: 131, column: 11, scope: !5165)
!5187 = !DILocation(line: 132, column: 16, scope: !5165)
!5188 = !DILocation(line: 132, column: 13, scope: !5165)
!5189 = !DILocation(line: 135, column: 9, scope: !5086)
!5190 = !DILocation(line: 67, column: 25, scope: !5080)
!5191 = !DILocation(line: 67, column: 5, scope: !5080)
!5192 = distinct !{!5192, !5084, !5193, !496}
!5193 = !DILocation(line: 136, column: 7, scope: !5081)
!5194 = !DILocation(line: 138, column: 6, scope: !5072)
!5195 = !DILocation(line: 138, column: 8, scope: !5072)
!5196 = !DILocation(line: 197, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5019, file: !357, line: 197, column: 7)
!5198 = !DILocation(line: 197, column: 7, scope: !5019)
!5199 = !DILocalVariable(name: "fd", scope: !5200, file: !357, line: 199, type: !60)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !357, line: 198, column: 5)
!5201 = !DILocation(line: 199, column: 11, scope: !5200)
!5202 = !DILocation(line: 199, column: 22, scope: !5200)
!5203 = !DILocation(line: 199, column: 32, scope: !5200)
!5204 = !DILocation(line: 199, column: 49, scope: !5200)
!5205 = !DILocation(line: 199, column: 47, scope: !5200)
!5206 = !DILocation(line: 199, column: 16, scope: !5200)
!5207 = !DILocation(line: 201, column: 11, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !357, line: 201, column: 11)
!5209 = !DILocation(line: 201, column: 14, scope: !5208)
!5210 = !DILocation(line: 201, column: 11, scope: !5200)
!5211 = !DILocation(line: 202, column: 9, scope: !5208)
!5212 = !DILocalVariable(name: "fp", scope: !5200, file: !357, line: 204, type: !5022)
!5213 = !DILocation(line: 204, column: 13, scope: !5200)
!5214 = !DILocation(line: 204, column: 26, scope: !5200)
!5215 = !DILocation(line: 204, column: 30, scope: !5200)
!5216 = !DILocation(line: 204, column: 18, scope: !5200)
!5217 = !DILocation(line: 205, column: 11, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5200, file: !357, line: 205, column: 11)
!5219 = !DILocation(line: 205, column: 14, scope: !5218)
!5220 = !DILocation(line: 205, column: 11, scope: !5200)
!5221 = !DILocalVariable(name: "saved_errno", scope: !5222, file: !357, line: 207, type: !60)
!5222 = distinct !DILexicalBlock(scope: !5218, file: !357, line: 206, column: 9)
!5223 = !DILocation(line: 207, column: 15, scope: !5222)
!5224 = !DILocation(line: 207, column: 29, scope: !5222)
!5225 = !DILocation(line: 208, column: 18, scope: !5222)
!5226 = !DILocation(line: 208, column: 11, scope: !5222)
!5227 = !DILocation(line: 209, column: 19, scope: !5222)
!5228 = !DILocation(line: 209, column: 11, scope: !5222)
!5229 = !DILocation(line: 209, column: 17, scope: !5222)
!5230 = !DILocation(line: 210, column: 9, scope: !5222)
!5231 = !DILocation(line: 211, column: 14, scope: !5200)
!5232 = !DILocation(line: 211, column: 7, scope: !5200)
!5233 = !DILocation(line: 217, column: 10, scope: !5019)
!5234 = !DILocation(line: 219, column: 22, scope: !5019)
!5235 = !DILocation(line: 219, column: 32, scope: !5019)
!5236 = !DILocation(line: 219, column: 10, scope: !5019)
!5237 = !DILocation(line: 219, column: 3, scope: !5019)
!5238 = !DILocation(line: 220, column: 1, scope: !5019)
!5239 = distinct !DISubprogram(name: "orig_fopen", scope: !357, file: !357, line: 30, type: !5020, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !356, retainedNodes: !76)
!5240 = !DILocalVariable(name: "filename", arg: 1, scope: !5239, file: !357, line: 30, type: !74)
!5241 = !DILocation(line: 30, column: 25, scope: !5239)
!5242 = !DILocalVariable(name: "mode", arg: 2, scope: !5239, file: !357, line: 30, type: !74)
!5243 = !DILocation(line: 30, column: 47, scope: !5239)
!5244 = !DILocation(line: 32, column: 17, scope: !5239)
!5245 = !DILocation(line: 32, column: 27, scope: !5239)
!5246 = !DILocation(line: 32, column: 10, scope: !5239)
!5247 = !DILocation(line: 32, column: 3, scope: !5239)
!5248 = distinct !DISubprogram(name: "c32isprint", scope: !1199, file: !1199, line: 41, type: !1200, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !358, retainedNodes: !76)
!5249 = !DILocalVariable(name: "wc", arg: 1, scope: !5248, file: !1199, line: 41, type: !1202)
!5250 = !DILocation(line: 41, column: 14, scope: !5248)
!5251 = !DILocation(line: 66, column: 22, scope: !5248)
!5252 = !DILocation(line: 66, column: 10, scope: !5248)
!5253 = !DILocation(line: 66, column: 3, scope: !5248)
!5254 = distinct !DISubprogram(name: "close_stream", scope: !361, file: !361, line: 55, type: !5255, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !360, retainedNodes: !76)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!60, !5257}
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !789, line: 7, baseType: !5259)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !791, line: 49, size: 1728, elements: !5260)
!5260 = !{!5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5259, file: !791, line: 51, baseType: !60, size: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5259, file: !791, line: 54, baseType: !57, size: 64, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5259, file: !791, line: 55, baseType: !57, size: 64, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5259, file: !791, line: 56, baseType: !57, size: 64, offset: 192)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5259, file: !791, line: 57, baseType: !57, size: 64, offset: 256)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5259, file: !791, line: 58, baseType: !57, size: 64, offset: 320)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5259, file: !791, line: 59, baseType: !57, size: 64, offset: 384)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5259, file: !791, line: 60, baseType: !57, size: 64, offset: 448)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5259, file: !791, line: 61, baseType: !57, size: 64, offset: 512)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5259, file: !791, line: 64, baseType: !57, size: 64, offset: 576)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5259, file: !791, line: 65, baseType: !57, size: 64, offset: 640)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5259, file: !791, line: 66, baseType: !57, size: 64, offset: 704)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5259, file: !791, line: 68, baseType: !806, size: 64, offset: 768)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5259, file: !791, line: 70, baseType: !5275, size: 64, offset: 832)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5259, file: !791, line: 72, baseType: !60, size: 32, offset: 896)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5259, file: !791, line: 73, baseType: !60, size: 32, offset: 928)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5259, file: !791, line: 74, baseType: !813, size: 64, offset: 960)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5259, file: !791, line: 77, baseType: !61, size: 16, offset: 1024)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5259, file: !791, line: 78, baseType: !816, size: 8, offset: 1040)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5259, file: !791, line: 79, baseType: !818, size: 8, offset: 1048)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5259, file: !791, line: 81, baseType: !822, size: 64, offset: 1088)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5259, file: !791, line: 89, baseType: !825, size: 64, offset: 1152)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5259, file: !791, line: 91, baseType: !827, size: 64, offset: 1216)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5259, file: !791, line: 92, baseType: !830, size: 64, offset: 1280)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5259, file: !791, line: 93, baseType: !5275, size: 64, offset: 1344)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5259, file: !791, line: 94, baseType: !59, size: 64, offset: 1408)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5259, file: !791, line: 95, baseType: !98, size: 64, offset: 1472)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5259, file: !791, line: 96, baseType: !60, size: 32, offset: 1536)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5259, file: !791, line: 98, baseType: !837, size: 160, offset: 1568)
!5291 = !DILocalVariable(name: "stream", arg: 1, scope: !5254, file: !361, line: 55, type: !5257)
!5292 = !DILocation(line: 55, column: 21, scope: !5254)
!5293 = !DILocalVariable(name: "some_pending", scope: !5254, file: !361, line: 57, type: !5294)
!5294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!5295 = !DILocation(line: 57, column: 14, scope: !5254)
!5296 = !DILocation(line: 57, column: 42, scope: !5254)
!5297 = !DILocation(line: 57, column: 30, scope: !5254)
!5298 = !DILocation(line: 57, column: 50, scope: !5254)
!5299 = !DILocalVariable(name: "prev_fail", scope: !5254, file: !361, line: 58, type: !5294)
!5300 = !DILocation(line: 58, column: 14, scope: !5254)
!5301 = !DILocation(line: 58, column: 27, scope: !5254)
!5302 = !DILocation(line: 58, column: 43, scope: !5254)
!5303 = !DILocalVariable(name: "fclose_fail", scope: !5254, file: !361, line: 59, type: !5294)
!5304 = !DILocation(line: 59, column: 14, scope: !5254)
!5305 = !DILocation(line: 59, column: 37, scope: !5254)
!5306 = !DILocation(line: 59, column: 29, scope: !5254)
!5307 = !DILocation(line: 59, column: 45, scope: !5254)
!5308 = !DILocation(line: 69, column: 7, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5254, file: !361, line: 69, column: 7)
!5310 = !DILocation(line: 69, column: 17, scope: !5309)
!5311 = !DILocation(line: 69, column: 21, scope: !5309)
!5312 = !DILocation(line: 69, column: 33, scope: !5309)
!5313 = !DILocation(line: 69, column: 37, scope: !5309)
!5314 = !DILocation(line: 69, column: 50, scope: !5309)
!5315 = !DILocation(line: 69, column: 53, scope: !5309)
!5316 = !DILocation(line: 69, column: 59, scope: !5309)
!5317 = !DILocation(line: 69, column: 7, scope: !5254)
!5318 = !DILocation(line: 71, column: 13, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5320, file: !361, line: 71, column: 11)
!5320 = distinct !DILexicalBlock(scope: !5309, file: !361, line: 70, column: 5)
!5321 = !DILocation(line: 71, column: 11, scope: !5320)
!5322 = !DILocation(line: 72, column: 9, scope: !5319)
!5323 = !DILocation(line: 72, column: 15, scope: !5319)
!5324 = !DILocation(line: 73, column: 7, scope: !5320)
!5325 = !DILocation(line: 76, column: 3, scope: !5254)
!5326 = !DILocation(line: 77, column: 1, scope: !5254)
!5327 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5328, file: !5328, line: 43, type: !5329, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !76)
!5328 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5329 = !DISubroutineType(types: !127)
!5330 = !DILocation(line: 45, column: 3, scope: !5327)
!5331 = !DILocation(line: 45, column: 9, scope: !5327)
!5332 = !DILocation(line: 46, column: 3, scope: !5327)
!5333 = distinct !DISubprogram(name: "imalloc", scope: !5328, file: !5328, line: 55, type: !4305, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !76)
!5334 = !DILocalVariable(name: "s", arg: 1, scope: !5333, file: !5328, line: 55, type: !330)
!5335 = !DILocation(line: 55, column: 16, scope: !5333)
!5336 = !DILocation(line: 57, column: 10, scope: !5333)
!5337 = !DILocation(line: 57, column: 12, scope: !5333)
!5338 = !DILocation(line: 57, column: 34, scope: !5333)
!5339 = !DILocation(line: 57, column: 26, scope: !5333)
!5340 = !DILocation(line: 57, column: 39, scope: !5333)
!5341 = !DILocation(line: 57, column: 3, scope: !5333)
!5342 = distinct !DISubprogram(name: "irealloc", scope: !5328, file: !5328, line: 66, type: !4333, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !76)
!5343 = !DILocalVariable(name: "p", arg: 1, scope: !5342, file: !5328, line: 66, type: !59)
!5344 = !DILocation(line: 66, column: 17, scope: !5342)
!5345 = !DILocalVariable(name: "s", arg: 2, scope: !5342, file: !5328, line: 66, type: !330)
!5346 = !DILocation(line: 66, column: 26, scope: !5342)
!5347 = !DILocation(line: 68, column: 10, scope: !5342)
!5348 = !DILocation(line: 68, column: 12, scope: !5342)
!5349 = !DILocation(line: 68, column: 35, scope: !5342)
!5350 = !DILocation(line: 68, column: 38, scope: !5342)
!5351 = !DILocation(line: 68, column: 26, scope: !5342)
!5352 = !DILocation(line: 68, column: 43, scope: !5342)
!5353 = !DILocation(line: 68, column: 3, scope: !5342)
!5354 = distinct !DISubprogram(name: "icalloc", scope: !5328, file: !5328, line: 77, type: !4371, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !76)
!5355 = !DILocalVariable(name: "n", arg: 1, scope: !5354, file: !5328, line: 77, type: !330)
!5356 = !DILocation(line: 77, column: 16, scope: !5354)
!5357 = !DILocalVariable(name: "s", arg: 2, scope: !5354, file: !5328, line: 77, type: !330)
!5358 = !DILocation(line: 77, column: 25, scope: !5354)
!5359 = !DILocation(line: 79, column: 18, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5354, file: !5328, line: 79, column: 7)
!5361 = !DILocation(line: 79, column: 16, scope: !5360)
!5362 = !DILocation(line: 79, column: 7, scope: !5354)
!5363 = !DILocation(line: 81, column: 11, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5365, file: !5328, line: 81, column: 11)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !5328, line: 80, column: 5)
!5366 = !DILocation(line: 81, column: 13, scope: !5364)
!5367 = !DILocation(line: 81, column: 11, scope: !5365)
!5368 = !DILocation(line: 82, column: 16, scope: !5364)
!5369 = !DILocation(line: 82, column: 9, scope: !5364)
!5370 = !DILocation(line: 83, column: 9, scope: !5365)
!5371 = !DILocation(line: 84, column: 5, scope: !5365)
!5372 = !DILocation(line: 85, column: 18, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5354, file: !5328, line: 85, column: 7)
!5374 = !DILocation(line: 85, column: 16, scope: !5373)
!5375 = !DILocation(line: 85, column: 7, scope: !5354)
!5376 = !DILocation(line: 87, column: 11, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !5328, line: 87, column: 11)
!5378 = distinct !DILexicalBlock(scope: !5373, file: !5328, line: 86, column: 5)
!5379 = !DILocation(line: 87, column: 13, scope: !5377)
!5380 = !DILocation(line: 87, column: 11, scope: !5378)
!5381 = !DILocation(line: 88, column: 16, scope: !5377)
!5382 = !DILocation(line: 88, column: 9, scope: !5377)
!5383 = !DILocation(line: 89, column: 9, scope: !5378)
!5384 = !DILocation(line: 90, column: 5, scope: !5378)
!5385 = !DILocation(line: 91, column: 18, scope: !5354)
!5386 = !DILocation(line: 91, column: 21, scope: !5354)
!5387 = !DILocation(line: 91, column: 10, scope: !5354)
!5388 = !DILocation(line: 91, column: 3, scope: !5354)
!5389 = !DILocation(line: 92, column: 1, scope: !5354)
!5390 = distinct !DISubprogram(name: "ireallocarray", scope: !5328, file: !5328, line: 98, type: !4345, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !362, retainedNodes: !76)
!5391 = !DILocalVariable(name: "p", arg: 1, scope: !5390, file: !5328, line: 98, type: !59)
!5392 = !DILocation(line: 98, column: 22, scope: !5390)
!5393 = !DILocalVariable(name: "n", arg: 2, scope: !5390, file: !5328, line: 98, type: !330)
!5394 = !DILocation(line: 98, column: 31, scope: !5390)
!5395 = !DILocalVariable(name: "s", arg: 3, scope: !5390, file: !5328, line: 98, type: !330)
!5396 = !DILocation(line: 98, column: 40, scope: !5390)
!5397 = !DILocation(line: 100, column: 11, scope: !5390)
!5398 = !DILocation(line: 100, column: 13, scope: !5390)
!5399 = !DILocation(line: 100, column: 25, scope: !5390)
!5400 = !DILocation(line: 100, column: 28, scope: !5390)
!5401 = !DILocation(line: 100, column: 30, scope: !5390)
!5402 = !DILocation(line: 101, column: 27, scope: !5390)
!5403 = !DILocation(line: 101, column: 30, scope: !5390)
!5404 = !DILocation(line: 101, column: 33, scope: !5390)
!5405 = !DILocation(line: 101, column: 13, scope: !5390)
!5406 = !DILocation(line: 102, column: 13, scope: !5390)
!5407 = !DILocation(line: 100, column: 3, scope: !5390)
!5408 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !251, file: !251, line: 100, type: !5409, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!98, !5411, !74, !98, !5412}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!5413 = !DILocalVariable(name: "pwc", arg: 1, scope: !5408, file: !251, line: 100, type: !5411)
!5414 = !DILocation(line: 100, column: 21, scope: !5408)
!5415 = !DILocalVariable(name: "s", arg: 2, scope: !5408, file: !251, line: 100, type: !74)
!5416 = !DILocation(line: 100, column: 38, scope: !5408)
!5417 = !DILocalVariable(name: "n", arg: 3, scope: !5408, file: !251, line: 100, type: !98)
!5418 = !DILocation(line: 100, column: 48, scope: !5408)
!5419 = !DILocalVariable(name: "ps", arg: 4, scope: !5408, file: !251, line: 100, type: !5412)
!5420 = !DILocation(line: 100, column: 62, scope: !5408)
!5421 = !DILocation(line: 105, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5408, file: !251, line: 105, column: 7)
!5423 = !DILocation(line: 105, column: 9, scope: !5422)
!5424 = !DILocation(line: 105, column: 7, scope: !5408)
!5425 = !DILocation(line: 107, column: 11, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5422, file: !251, line: 106, column: 5)
!5427 = !DILocation(line: 108, column: 9, scope: !5426)
!5428 = !DILocation(line: 109, column: 9, scope: !5426)
!5429 = !DILocation(line: 110, column: 5, scope: !5426)
!5430 = !DILocation(line: 117, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5408, file: !251, line: 117, column: 7)
!5432 = !DILocation(line: 117, column: 10, scope: !5431)
!5433 = !DILocation(line: 117, column: 7, scope: !5408)
!5434 = !DILocation(line: 118, column: 8, scope: !5431)
!5435 = !DILocation(line: 118, column: 5, scope: !5431)
!5436 = !DILocalVariable(name: "ret", scope: !5408, file: !251, line: 130, type: !98)
!5437 = !DILocation(line: 130, column: 10, scope: !5408)
!5438 = !DILocation(line: 130, column: 26, scope: !5408)
!5439 = !DILocation(line: 130, column: 31, scope: !5408)
!5440 = !DILocation(line: 130, column: 34, scope: !5408)
!5441 = !DILocation(line: 130, column: 37, scope: !5408)
!5442 = !DILocation(line: 130, column: 16, scope: !5408)
!5443 = !DILocation(line: 135, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5408, file: !251, line: 135, column: 7)
!5445 = !DILocation(line: 135, column: 11, scope: !5444)
!5446 = !DILocation(line: 135, column: 25, scope: !5444)
!5447 = !DILocation(line: 135, column: 39, scope: !5444)
!5448 = !DILocation(line: 135, column: 30, scope: !5444)
!5449 = !DILocation(line: 135, column: 7, scope: !5408)
!5450 = !DILocation(line: 137, column: 14, scope: !5444)
!5451 = !DILocation(line: 137, column: 5, scope: !5444)
!5452 = !DILocation(line: 138, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5408, file: !251, line: 138, column: 7)
!5454 = !DILocation(line: 138, column: 11, scope: !5453)
!5455 = !DILocation(line: 138, column: 7, scope: !5408)
!5456 = !DILocation(line: 139, column: 5, scope: !5453)
!5457 = !DILocation(line: 143, column: 22, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5408, file: !251, line: 143, column: 7)
!5459 = !DILocation(line: 143, column: 19, scope: !5458)
!5460 = !DILocation(line: 143, column: 26, scope: !5458)
!5461 = !DILocation(line: 143, column: 29, scope: !5458)
!5462 = !DILocation(line: 143, column: 31, scope: !5458)
!5463 = !DILocation(line: 143, column: 36, scope: !5458)
!5464 = !DILocation(line: 143, column: 41, scope: !5458)
!5465 = !DILocation(line: 143, column: 7, scope: !5408)
!5466 = !DILocation(line: 145, column: 11, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !251, line: 145, column: 11)
!5468 = distinct !DILexicalBlock(scope: !5458, file: !251, line: 144, column: 5)
!5469 = !DILocation(line: 145, column: 15, scope: !5467)
!5470 = !DILocation(line: 145, column: 11, scope: !5468)
!5471 = !DILocation(line: 146, column: 33, scope: !5467)
!5472 = !DILocation(line: 146, column: 32, scope: !5467)
!5473 = !DILocation(line: 146, column: 16, scope: !5467)
!5474 = !DILocation(line: 146, column: 10, scope: !5467)
!5475 = !DILocation(line: 146, column: 14, scope: !5467)
!5476 = !DILocation(line: 146, column: 9, scope: !5467)
!5477 = !DILocation(line: 147, column: 7, scope: !5468)
!5478 = !DILocation(line: 151, column: 10, scope: !5408)
!5479 = !DILocation(line: 151, column: 3, scope: !5408)
!5480 = !DILocation(line: 286, column: 1, scope: !5408)
!5481 = distinct !DISubprogram(name: "mbszero", scope: !5482, file: !5482, line: 1135, type: !5483, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !364, retainedNodes: !76)
!5482 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !5485}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !256, line: 6, baseType: !5487)
!5487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !258, line: 21, baseType: !5488)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 13, size: 64, elements: !5489)
!5489 = !{!5490, !5491}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5488, file: !258, line: 15, baseType: !60, size: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5488, file: !258, line: 20, baseType: !5492, size: 32, offset: 32)
!5492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5488, file: !258, line: 16, size: 32, elements: !5493)
!5493 = !{!5494, !5495}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5492, file: !258, line: 18, baseType: !6, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5492, file: !258, line: 19, baseType: !267, size: 32)
!5496 = !DILocalVariable(name: "ps", arg: 1, scope: !5481, file: !5482, line: 1135, type: !5485)
!5497 = !DILocation(line: 1135, column: 21, scope: !5481)
!5498 = !DILocation(line: 1137, column: 11, scope: !5481)
!5499 = !DILocation(line: 1137, column: 3, scope: !5481)
!5500 = !DILocation(line: 1138, column: 1, scope: !5481)
!5501 = distinct !DISubprogram(name: "memeq", scope: !3956, file: !3956, line: 974, type: !5502, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !366, retainedNodes: !76)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!65, !4556, !4556, !98}
!5504 = !DILocalVariable(name: "__s1", arg: 1, scope: !5501, file: !3956, line: 974, type: !4556)
!5505 = !DILocation(line: 974, column: 20, scope: !5501)
!5506 = !DILocalVariable(name: "__s2", arg: 2, scope: !5501, file: !3956, line: 974, type: !4556)
!5507 = !DILocation(line: 974, column: 38, scope: !5501)
!5508 = !DILocalVariable(name: "__n", arg: 3, scope: !5501, file: !3956, line: 974, type: !98)
!5509 = !DILocation(line: 974, column: 51, scope: !5501)
!5510 = !DILocation(line: 976, column: 19, scope: !5501)
!5511 = !DILocation(line: 976, column: 25, scope: !5501)
!5512 = !DILocation(line: 976, column: 31, scope: !5501)
!5513 = !DILocation(line: 976, column: 11, scope: !5501)
!5514 = !DILocation(line: 976, column: 10, scope: !5501)
!5515 = !DILocation(line: 976, column: 3, scope: !5501)
!5516 = distinct !DISubprogram(name: "rpl_realloc", scope: !5517, file: !5517, line: 2057, type: !4321, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !368, retainedNodes: !76)
!5517 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5518 = !DILocalVariable(name: "ptr", arg: 1, scope: !5516, file: !5517, line: 2057, type: !59)
!5519 = !DILocation(line: 2057, column: 20, scope: !5516)
!5520 = !DILocalVariable(name: "size", arg: 2, scope: !5516, file: !5517, line: 2057, type: !98)
!5521 = !DILocation(line: 2057, column: 32, scope: !5516)
!5522 = !DILocation(line: 2059, column: 19, scope: !5516)
!5523 = !DILocation(line: 2059, column: 24, scope: !5516)
!5524 = !DILocation(line: 2059, column: 31, scope: !5516)
!5525 = !DILocation(line: 2059, column: 10, scope: !5516)
!5526 = !DILocation(line: 2059, column: 3, scope: !5516)
!5527 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !371, file: !371, line: 27, type: !4258, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !370, retainedNodes: !76)
!5528 = !DILocalVariable(name: "ptr", arg: 1, scope: !5527, file: !371, line: 27, type: !59)
!5529 = !DILocation(line: 27, column: 21, scope: !5527)
!5530 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5527, file: !371, line: 27, type: !98)
!5531 = !DILocation(line: 27, column: 33, scope: !5527)
!5532 = !DILocalVariable(name: "size", arg: 3, scope: !5527, file: !371, line: 27, type: !98)
!5533 = !DILocation(line: 27, column: 47, scope: !5527)
!5534 = !DILocalVariable(name: "nbytes", scope: !5527, file: !371, line: 29, type: !98)
!5535 = !DILocation(line: 29, column: 10, scope: !5527)
!5536 = !DILocation(line: 30, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5527, file: !371, line: 30, column: 7)
!5538 = !DILocation(line: 30, column: 7, scope: !5527)
!5539 = !DILocation(line: 32, column: 7, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5537, file: !371, line: 31, column: 5)
!5541 = !DILocation(line: 32, column: 13, scope: !5540)
!5542 = !DILocation(line: 33, column: 7, scope: !5540)
!5543 = !DILocation(line: 37, column: 19, scope: !5527)
!5544 = !DILocation(line: 37, column: 24, scope: !5527)
!5545 = !DILocation(line: 37, column: 10, scope: !5527)
!5546 = !DILocation(line: 37, column: 3, scope: !5527)
!5547 = !DILocation(line: 38, column: 1, scope: !5527)
!5548 = distinct !DISubprogram(name: "hard_locale", scope: !374, file: !374, line: 28, type: !5549, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !373, retainedNodes: !76)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!65, !60}
!5551 = !DILocalVariable(name: "category", arg: 1, scope: !5548, file: !374, line: 28, type: !60)
!5552 = !DILocation(line: 28, column: 18, scope: !5548)
!5553 = !DILocalVariable(name: "locale", scope: !5548, file: !374, line: 30, type: !5554)
!5554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2056, elements: !5555)
!5555 = !{!5556}
!5556 = !DISubrange(count: 257)
!5557 = !DILocation(line: 30, column: 8, scope: !5548)
!5558 = !DILocation(line: 32, column: 25, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5548, file: !374, line: 32, column: 7)
!5560 = !DILocation(line: 32, column: 35, scope: !5559)
!5561 = !DILocation(line: 32, column: 7, scope: !5559)
!5562 = !DILocation(line: 32, column: 7, scope: !5548)
!5563 = !DILocation(line: 33, column: 5, scope: !5559)
!5564 = !DILocation(line: 35, column: 16, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5548, file: !374, line: 35, column: 7)
!5566 = !DILocation(line: 35, column: 9, scope: !5565)
!5567 = !DILocation(line: 35, column: 29, scope: !5565)
!5568 = !DILocation(line: 35, column: 39, scope: !5565)
!5569 = !DILocation(line: 35, column: 32, scope: !5565)
!5570 = !DILocation(line: 35, column: 7, scope: !5548)
!5571 = !DILocation(line: 36, column: 5, scope: !5565)
!5572 = !DILocation(line: 46, column: 3, scope: !5548)
!5573 = !DILocation(line: 47, column: 1, scope: !5548)
!5574 = distinct !DISubprogram(name: "setlocale_null_r", scope: !376, file: !376, line: 154, type: !5575, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !76)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!60, !60, !57, !98}
!5577 = !DILocalVariable(name: "category", arg: 1, scope: !5574, file: !376, line: 154, type: !60)
!5578 = !DILocation(line: 154, column: 23, scope: !5574)
!5579 = !DILocalVariable(name: "buf", arg: 2, scope: !5574, file: !376, line: 154, type: !57)
!5580 = !DILocation(line: 154, column: 39, scope: !5574)
!5581 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5574, file: !376, line: 154, type: !98)
!5582 = !DILocation(line: 154, column: 51, scope: !5574)
!5583 = !DILocation(line: 159, column: 37, scope: !5574)
!5584 = !DILocation(line: 159, column: 47, scope: !5574)
!5585 = !DILocation(line: 159, column: 52, scope: !5574)
!5586 = !DILocation(line: 159, column: 10, scope: !5574)
!5587 = !DILocation(line: 159, column: 3, scope: !5574)
!5588 = distinct !DISubprogram(name: "setlocale_null", scope: !376, file: !376, line: 186, type: !5589, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !375, retainedNodes: !76)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!74, !60}
!5591 = !DILocalVariable(name: "category", arg: 1, scope: !5588, file: !376, line: 186, type: !60)
!5592 = !DILocation(line: 186, column: 21, scope: !5588)
!5593 = !DILocation(line: 189, column: 35, scope: !5588)
!5594 = !DILocation(line: 189, column: 10, scope: !5588)
!5595 = !DILocation(line: 189, column: 3, scope: !5588)
!5596 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !378, file: !378, line: 35, type: !5589, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !377, retainedNodes: !76)
!5597 = !DILocalVariable(name: "category", arg: 1, scope: !5596, file: !378, line: 35, type: !60)
!5598 = !DILocation(line: 35, column: 30, scope: !5596)
!5599 = !DILocalVariable(name: "result", scope: !5596, file: !378, line: 37, type: !74)
!5600 = !DILocation(line: 37, column: 15, scope: !5596)
!5601 = !DILocation(line: 37, column: 35, scope: !5596)
!5602 = !DILocation(line: 37, column: 24, scope: !5596)
!5603 = !DILocation(line: 62, column: 10, scope: !5596)
!5604 = !DILocation(line: 62, column: 3, scope: !5596)
!5605 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !378, file: !378, line: 66, type: !5575, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !377, retainedNodes: !76)
!5606 = !DILocalVariable(name: "category", arg: 1, scope: !5605, file: !378, line: 66, type: !60)
!5607 = !DILocation(line: 66, column: 32, scope: !5605)
!5608 = !DILocalVariable(name: "buf", arg: 2, scope: !5605, file: !378, line: 66, type: !57)
!5609 = !DILocation(line: 66, column: 48, scope: !5605)
!5610 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5605, file: !378, line: 66, type: !98)
!5611 = !DILocation(line: 66, column: 60, scope: !5605)
!5612 = !DILocalVariable(name: "result", scope: !5605, file: !378, line: 111, type: !74)
!5613 = !DILocation(line: 111, column: 15, scope: !5605)
!5614 = !DILocation(line: 111, column: 49, scope: !5605)
!5615 = !DILocation(line: 111, column: 24, scope: !5605)
!5616 = !DILocation(line: 113, column: 7, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5605, file: !378, line: 113, column: 7)
!5618 = !DILocation(line: 113, column: 14, scope: !5617)
!5619 = !DILocation(line: 113, column: 7, scope: !5605)
!5620 = !DILocation(line: 116, column: 11, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !378, line: 116, column: 11)
!5622 = distinct !DILexicalBlock(scope: !5617, file: !378, line: 114, column: 5)
!5623 = !DILocation(line: 116, column: 19, scope: !5621)
!5624 = !DILocation(line: 116, column: 11, scope: !5622)
!5625 = !DILocation(line: 120, column: 9, scope: !5621)
!5626 = !DILocation(line: 120, column: 16, scope: !5621)
!5627 = !DILocation(line: 121, column: 7, scope: !5622)
!5628 = !DILocalVariable(name: "length", scope: !5629, file: !378, line: 125, type: !98)
!5629 = distinct !DILexicalBlock(scope: !5617, file: !378, line: 124, column: 5)
!5630 = !DILocation(line: 125, column: 14, scope: !5629)
!5631 = !DILocation(line: 125, column: 31, scope: !5629)
!5632 = !DILocation(line: 125, column: 23, scope: !5629)
!5633 = !DILocation(line: 126, column: 11, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5629, file: !378, line: 126, column: 11)
!5635 = !DILocation(line: 126, column: 20, scope: !5634)
!5636 = !DILocation(line: 126, column: 18, scope: !5634)
!5637 = !DILocation(line: 126, column: 11, scope: !5629)
!5638 = !DILocation(line: 128, column: 19, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !378, line: 127, column: 9)
!5640 = !DILocation(line: 128, column: 24, scope: !5639)
!5641 = !DILocation(line: 128, column: 32, scope: !5639)
!5642 = !DILocation(line: 128, column: 39, scope: !5639)
!5643 = !DILocation(line: 128, column: 11, scope: !5639)
!5644 = !DILocation(line: 129, column: 11, scope: !5639)
!5645 = !DILocation(line: 133, column: 15, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !378, line: 133, column: 15)
!5647 = distinct !DILexicalBlock(scope: !5634, file: !378, line: 132, column: 9)
!5648 = !DILocation(line: 133, column: 23, scope: !5646)
!5649 = !DILocation(line: 133, column: 15, scope: !5647)
!5650 = !DILocation(line: 138, column: 23, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5646, file: !378, line: 134, column: 13)
!5652 = !DILocation(line: 138, column: 28, scope: !5651)
!5653 = !DILocation(line: 138, column: 36, scope: !5651)
!5654 = !DILocation(line: 138, column: 44, scope: !5651)
!5655 = !DILocation(line: 138, column: 15, scope: !5651)
!5656 = !DILocation(line: 139, column: 15, scope: !5651)
!5657 = !DILocation(line: 139, column: 19, scope: !5651)
!5658 = !DILocation(line: 139, column: 27, scope: !5651)
!5659 = !DILocation(line: 139, column: 32, scope: !5651)
!5660 = !DILocation(line: 140, column: 13, scope: !5651)
!5661 = !DILocation(line: 141, column: 11, scope: !5647)
!5662 = !DILocation(line: 145, column: 1, scope: !5605)
