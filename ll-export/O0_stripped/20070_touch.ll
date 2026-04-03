; ModuleID = 'src/touch.stripped.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.timespec = type { i64, i64 }
%struct.infomap = type { i8*, i8* }
%union.YYSTYPE = type { %struct.relative_time }
%struct.relative_time = type { i64, i64, i64, i64, i64, i64, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.table = type { i8*, i32, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.parser_control = type { i8*, i64, i32, i32, i32, i32, %struct.textint, i64, i64, i64, i64, %struct.timespec, %struct.relative_time, i8, i8, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.table] }
%struct.textint = type { i8, i64, i64 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [292 x i8] c"Update the access and modification times of each FILE to the current time.\0A\0AA FILE argument that does not exist is created empty, unless -c or -h\0Ais supplied.\0A\0AA FILE argument string of - is handled specially and causes touch to\0Achange the times of the file associated with standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"  -a\0A         change only the access time\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"  -c, --no-create\0A         do not create any files\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"  -d, --date=STRING\0A         parse STRING and use it instead of current time\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  -f\0A         (ignored)\0A\00", align 1
@.str.8 = private unnamed_addr constant [167 x i8] c"  -h, --no-dereference\0A         affect each symbolic link instead of any referenced file;\0A         useful only on systems that can change the timestamps of a symlink\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"  -m\0A         change only the modification time\0A\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"  -r, --reference=FILE\0A         use this file's times instead of current time\0A\00", align 1
@.str.11 = private unnamed_addr constant [137 x i8] c"  -t [[CC]YY]MMDDhhmm[.ss]\0A         use specified time instead of current time,\0A         with a date-time format that differs from -d's\0A\00", align 1
@.str.12 = private unnamed_addr constant [162 x i8] c"      --time=WORD\0A         specify which time to change:\0A         access time (-a): 'access', 'atime', 'use';\0A         modification time (-m): 'modify', 'mtime'\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"acd:fhmr:t:\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@change_times = internal global i32 0, align 4
@no_create = internal global i8 0, align 1
@optarg = external global i8*, align 8
@no_dereference = internal global i8 0, align 1
@use_ref = internal global i8 0, align 1
@ref_file = internal global i8* null, align 8
@newtime = internal global [2 x %struct.timespec] zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"invalid date format %s\00", align 1
@time_masks = internal constant [5 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2], align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"--time\00", align 1
@time_args = internal constant [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* null], align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Jim Kingdon\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Randy Smith\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"cannot specify times from more than one source\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@optind = external global i32, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"warning: 'touch %s' is obsolete; use 'touch -t %04ld%02d%02d%02d%02d.%02d'\00", align 1
@amtime_now = internal global i8 0, align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.63 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.64 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.66 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"change_times == 1\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"src/touch.c\00", align 1
@__PRETTY_FUNCTION__.touch = private unnamed_addr constant [26 x i8] c"_Bool touch(const char *)\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"cannot touch %s\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"setting times of %s\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), align 8
@argmatch_die = dso_local global void ()* @__argmatch_die, align 8
@.str.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.90 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.91 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.92 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.93 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.94 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.100 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8
@.str.103 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4
@verror_at_line.old_file_name = internal global i8* null, align 8
@verror_at_line.old_line_number = internal global i32 0, align 4
@.str.1.109 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.110 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.111 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4
@.str.4.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.105 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.106 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@yyparse.yyval_default = internal global %union.YYSTYPE zeroinitializer, align 8
@yypact = internal constant [121 x i8] c"\F2K\18\A3&\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\00\A3P\15F\03S\FCLM\A3Q\A3\A3\A3\A3\A3\A3\A3\A3\A3I\A3]\A3\A3\A3\A3\A3\A3RJ\A3\A3\A3\A3\A3\A3\A3\A3\1A\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A31\0BTU2\A3\A3\A3\A3\A3V\A3\A3WX\A3\A3\A3\A3\A3/YOZ\0A\A3\A3\A3\A3\\\13\A3\A3[\A3^_\FA\A3\A3(\A3\A3\13a", align 1
@yytranslate = internal constant [279 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1C\02\1E\1D\02\02\02\02\02\02\02\02\02\02\1B\02\02\02\02\02\18\02\02\02\02\02\02\02\02\02\19\02\02\02\02\02\02\02\02\02\1A\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17", align 1
@yycheck = internal constant [121 x i8] c"\1B\05\06\07\08\09\0A\04\0C\0F\18\0F\10\13j\13\05\06\07\08\09\0A\13\1B\00\1D\1Ew\1C\13\13\05\06\07\08\09\0A\1B\1B\14\13\14\17\05\06\07\08\09\0A\0B\0C\0D\0E\1B\10\11\12\13\14\13\16\17\0F\19\1Aq\13\1B\13\14\14\15xd\1B\05\06\07\08\09\0A\19\0C\1B\04\09\09\1F\05\06\07\08\09\0A\13\14\03\16\17\1A\13\13\1CV\14\14\14\14\14\1E\FF\14<\FF\14\14\13\FF\1D\1B\1E", align 1
@yytable = internal constant [121 x i8] c"QDEFGHI;Ju\01KLiqM>?@ABC<N\0COPx0i^>?@ABCpZ\0623\08\0D\0E\0F\10\11\12\13\14\15\16Z\17\18\19\1A\1Bi\1C\1Dh\1E\1Fviw\\]bcvQj456789=:R1STU>?@ABC\05\06W\07\08V\1AXYe`adfgn\00r[\00sti\00mZo", align 1
@yydefact = internal constant [121 x i8] c"\05\00\00\02\03XZWY\04UV\01;>DGLAT&$\1D\00\00\1F\00[\00\00\0A \06\07\11\08\16\09\0B\0D\0C4\0E7M8\0F\10'\1E\0009<BEH?(%]!NOQRSP:=CFI@)\132]\00\00\00\17\\JK\22\006/\00\00#.35\1C\1A*\00\00\00\121^\14]\00\18\1B\00,\00\00\1A+-\1A\15\19\00\1A", align 1
@yyr2 = internal constant [95 x i8] c"\00\02\01\01\02\00\02\01\01\01\01\01\01\01\01\01\01\01\03\02\04\06\01\02\04\06\00\01\02\01\02\01\01\02\02\03\01\02\01\02\02\02\03\05\04\05\03\03\02\04\02\03\01\03\02\01\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\02\02\01\01\02\02\02\02\02\02\01\01\01\01\01\01\01\01\02\00\02", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.125 = private unnamed_addr constant [18 x i8] c"number of seconds\00", align 1
@.str.2.126 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.3.127 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.4.128 = private unnamed_addr constant [11 x i8] c"local_zone\00", align 1
@.str.5.129 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.6.130 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.7.131 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.8.132 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.9.133 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.10.134 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11.135 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.12.136 = private unnamed_addr constant [56 x i8] c"warning: value %ld has %ld digits. Assuming YYYY/MM/DD\0A\00", align 1
@.str.13.137 = private unnamed_addr constant [66 x i8] c"warning: value %ld has less than 4 digits. Assuming MM/DD/YY[YY]\0A\00", align 1
@yyr1 = internal constant [95 x i8] c"\00\1F  !\22\22##########$%&&&&'''(()**+++++++,,,,-----------.///00000000000000000000011111123344556788", align 1
@yypgoto = internal constant [26 x i8] c"\A3\A3\A3\A3\A3\A3\A3\A3\11\D0\E5\A3\A3\A3\A3\A3\A3\A38\A3\A3\A3\A4\A3\A34", align 1
@yydefgoto = internal constant [26 x i8] c"\00\02\03\04 !\22#$kl%&'()*+,-\09\0A\0B./_", align 1
@.str.14.138 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.15.139 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.16.140 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [121 x i8] c"\00\18 !\22\13\14\16\17345\00\05\06\07\08\09\0A\0B\0C\0D\0E\10\11\12\13\14\16\17\19\1A#$%&'*+,-./01267\1C\04\13\14\05\06\07\08\09\0A\0C\04\131\05\06\07\08\09\0A\05\06\07\08\09\0A\0C\0F\10\13\1B\1D\1E)1\09\091\1A\03\13\1C\1B8\13\14\138\14\14\14\15\14'\14\14\0F\13\1B()\1D\1E\1E\1B5\14\14\14\0F(\1B5", align 1
@.str.17.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.18.142 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.19.143 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.20.216 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.21.146 = private unnamed_addr constant [17 x i8] c"parsed %s part: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.22.156 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %04ld-%02ld-%02ld\00", align 1
@.str.23.157 = private unnamed_addr constant [12 x i8] c"year: %04ld\00", align 1
@.str.24.158 = private unnamed_addr constant [19 x i8] c" %02ld:%02ld:%02ld\00", align 1
@.str.25.159 = private unnamed_addr constant [6 x i8] c".%09d\00", align 1
@.str.26.160 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.27.161 = private unnamed_addr constant [31 x i8] c"%s (day ordinal=%ld number=%d)\00", align 1
@.str.28.162 = private unnamed_addr constant [12 x i8] c" isdst=%d%s\00", align 1
@.str.29.163 = private unnamed_addr constant [5 x i8] c" DST\00", align 1
@.str.30.164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31.165 = private unnamed_addr constant [7 x i8] c" UTC%s\00", align 1
@.str.32.166 = private unnamed_addr constant [23 x i8] c"number of seconds: %ld\00", align 1
@str_days.ordinal_values = internal constant [14 x [11 x i8]] [[11 x i8] c"last\00\00\00\00\00\00\00", [11 x i8] c"this\00\00\00\00\00\00\00", [11 x i8] c"next/first\00", [11 x i8] c"(SECOND)\00\00\00", [11 x i8] c"third\00\00\00\00\00\00", [11 x i8] c"fourth\00\00\00\00\00", [11 x i8] c"fifth\00\00\00\00\00\00", [11 x i8] c"sixth\00\00\00\00\00\00", [11 x i8] c"seventh\00\00\00\00", [11 x i8] c"eight\00\00\00\00\00\00", [11 x i8] c"ninth\00\00\00\00\00\00", [11 x i8] c"tenth\00\00\00\00\00\00", [11 x i8] c"eleventh\00\00\00", [11 x i8] c"twelfth\00\00\00\00"], align 1
@str_days.days_values = internal constant [7 x [4 x i8]] [[4 x i8] c"Sun\00", [4 x i8] c"Mon\00", [4 x i8] c"Tue\00", [4 x i8] c"Wed\00", [4 x i8] c"Thu\00", [4 x i8] c"Fri\00", [4 x i8] c"Sat\00"], align 1
@.str.33.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34.169 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.35.170 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.36.167 = private unnamed_addr constant [7 x i8] c"%c%02d\00", align 1
@.str.37.147 = private unnamed_addr constant [16 x i8] c"today/this/now\0A\00", align 1
@.str.38.148 = private unnamed_addr constant [8 x i8] c"year(s)\00", align 1
@.str.39.149 = private unnamed_addr constant [9 x i8] c"month(s)\00", align 1
@.str.40.150 = private unnamed_addr constant [7 x i8] c"day(s)\00", align 1
@.str.41.151 = private unnamed_addr constant [8 x i8] c"hour(s)\00", align 1
@.str.42.152 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.43.153 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.44.154 = private unnamed_addr constant [12 x i8] c"nanoseconds\00", align 1
@.str.45.155 = private unnamed_addr constant [9 x i8] c" %+ld %s\00", align 1
@.str.46.145 = private unnamed_addr constant [7 x i8] c"date: \00", align 1
@.str.47.144 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.48.171 = private unnamed_addr constant [26 x i8] c"error: unknown word '%s'\0A\00", align 1
@meridian_table = internal constant [5 x %struct.table] [%struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.210, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50.211, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.212, i32 0, i32 0), i32 270, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52.213, i32 0, i32 0), i32 270, i32 1 }, %struct.table zeroinitializer], align 8
@month_and_day_table = internal constant [25 x %struct.table] [%struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53.186, i32 0, i32 0), i32 271, i32 1 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.187, i32 0, i32 0), i32 271, i32 2 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55.188, i32 0, i32 0), i32 271, i32 3 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56.189, i32 0, i32 0), i32 271, i32 4 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57.190, i32 0, i32 0), i32 271, i32 5 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58.191, i32 0, i32 0), i32 271, i32 6 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59.192, i32 0, i32 0), i32 271, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60.193, i32 0, i32 0), i32 271, i32 8 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61.194, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62.195, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63.196, i32 0, i32 0), i32 271, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64.197, i32 0, i32 0), i32 271, i32 11 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65.198, i32 0, i32 0), i32 271, i32 12 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66.199, i32 0, i32 0), i32 267, i32 0 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67.200, i32 0, i32 0), i32 267, i32 1 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68.201, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69.202, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70.203, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71.204, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72.205, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73.206, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74.207, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75.208, i32 0, i32 0), i32 267, i32 5 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76.209, i32 0, i32 0), i32 267, i32 6 }, %struct.table zeroinitializer], align 8
@dst_table = internal constant [1 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 259, i32 0 }], align 8
@time_units_table = internal constant [11 x %struct.table] [%struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 260, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i32 261, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i32 265, i32 14 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 265, i32 7 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i32 265, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 262, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i32 264, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i32 264, i32 1 }, %struct.table zeroinitializer], align 8
@relative_time_table = internal constant [21 x %struct.table] [%struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0), i32 266, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i32 266, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 272, i32 -1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i32 272, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32 272, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 272, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i32 272, i32 5 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i32 272, i32 6 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0), i32 272, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0), i32 272, i32 8 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i32 272, i32 9 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i32 272, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 272, i32 11 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 272, i32 12 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0), i32 258, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i32 258, i32 1 }, %struct.table zeroinitializer], align 8
@military_table = internal constant [27 x %struct.table] [%struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i32 273, i32 14400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i32 273, i32 18000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i32 0, i32 0), i32 273, i32 21600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i32 0, i32 0), i32 273, i32 25200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), i32 273, i32 28800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.129, i32 0, i32 0), i32 74, i32 0 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i32 0, i32 0), i32 273, i32 36000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0), i32 273, i32 39600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), i32 273, i32 43200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i32 0, i32 0), i32 273, i32 -3600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0), i32 273, i32 -7200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0), i32 273, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i32 273, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0), i32 84, i32 0 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0), i32 273, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0), i32 273, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0), i32 273, i32 -39600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0), i32 273, i32 -43200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 8
@.str.49.210 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.50.211 = private unnamed_addr constant [5 x i8] c"A.M.\00", align 1
@.str.51.212 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.52.213 = private unnamed_addr constant [5 x i8] c"P.M.\00", align 1
@.str.53.186 = private unnamed_addr constant [8 x i8] c"JANUARY\00", align 1
@.str.54.187 = private unnamed_addr constant [9 x i8] c"FEBRUARY\00", align 1
@.str.55.188 = private unnamed_addr constant [6 x i8] c"MARCH\00", align 1
@.str.56.189 = private unnamed_addr constant [6 x i8] c"APRIL\00", align 1
@.str.57.190 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@.str.58.191 = private unnamed_addr constant [5 x i8] c"JUNE\00", align 1
@.str.59.192 = private unnamed_addr constant [5 x i8] c"JULY\00", align 1
@.str.60.193 = private unnamed_addr constant [7 x i8] c"AUGUST\00", align 1
@.str.61.194 = private unnamed_addr constant [10 x i8] c"SEPTEMBER\00", align 1
@.str.62.195 = private unnamed_addr constant [5 x i8] c"SEPT\00", align 1
@.str.63.196 = private unnamed_addr constant [8 x i8] c"OCTOBER\00", align 1
@.str.64.197 = private unnamed_addr constant [9 x i8] c"NOVEMBER\00", align 1
@.str.65.198 = private unnamed_addr constant [9 x i8] c"DECEMBER\00", align 1
@.str.66.199 = private unnamed_addr constant [7 x i8] c"SUNDAY\00", align 1
@.str.67.200 = private unnamed_addr constant [7 x i8] c"MONDAY\00", align 1
@.str.68.201 = private unnamed_addr constant [8 x i8] c"TUESDAY\00", align 1
@.str.69.202 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1
@.str.70.203 = private unnamed_addr constant [10 x i8] c"WEDNESDAY\00", align 1
@.str.71.204 = private unnamed_addr constant [7 x i8] c"WEDNES\00", align 1
@.str.72.205 = private unnamed_addr constant [9 x i8] c"THURSDAY\00", align 1
@.str.73.206 = private unnamed_addr constant [5 x i8] c"THUR\00", align 1
@.str.74.207 = private unnamed_addr constant [6 x i8] c"THURS\00", align 1
@.str.75.208 = private unnamed_addr constant [7 x i8] c"FRIDAY\00", align 1
@.str.76.209 = private unnamed_addr constant [9 x i8] c"SATURDAY\00", align 1
@universal_time_zone_table = internal constant [4 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77.183, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78.184, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79.185, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 8
@time_zone_table = internal constant [48 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80.172, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81.173, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82.174, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83.175, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84.176, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85.177, i32 0, i32 0), i32 268, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86.178, i32 0, i32 0), i32 273, i32 -12600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 268, i32 -12600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89.179, i32 0, i32 0), i32 268, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 268, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 273, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 268, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 273, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i32 268, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i32 273, i32 -25200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i32 268, i32 -25200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i32 273, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99.180, i32 0, i32 0), i32 268, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i32 273, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 268, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103.181, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 268, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 273, i32 -43200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i32 268, i32 7200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i32 268, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i32 273, i32 19800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), i32 273, i32 28800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124.182, i32 0, i32 0), i32 273, i32 36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 273, i32 43200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i32 268, i32 43200 }, %struct.table zeroinitializer], align 8
@.str.77.183 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.78.184 = private unnamed_addr constant [3 x i8] c"UT\00", align 1
@.str.79.185 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.80.172 = private unnamed_addr constant [4 x i8] c"WET\00", align 1
@.str.81.173 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.82.174 = private unnamed_addr constant [4 x i8] c"BST\00", align 1
@.str.83.175 = private unnamed_addr constant [4 x i8] c"ART\00", align 1
@.str.84.176 = private unnamed_addr constant [4 x i8] c"BRT\00", align 1
@.str.85.177 = private unnamed_addr constant [5 x i8] c"BRST\00", align 1
@.str.86.178 = private unnamed_addr constant [4 x i8] c"NST\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"NDT\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"AST\00", align 1
@.str.89.179 = private unnamed_addr constant [4 x i8] c"ADT\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"CLT\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"CLST\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"CST\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"MDT\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.99.180 = private unnamed_addr constant [4 x i8] c"PDT\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"AKST\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"AKDT\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"HST\00", align 1
@.str.103.181 = private unnamed_addr constant [5 x i8] c"HAST\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"HADT\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"SST\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"WAT\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"CET\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"CEST\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"MET\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"MEZ\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"MEST\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"MESZ\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"EET\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"EEST\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"CAT\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"SAST\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"EAT\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"MSD\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"IST\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"SGT\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"KST\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"JST\00", align 1
@.str.124.182 = private unnamed_addr constant [4 x i8] c"GST\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"NZST\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"NZDT\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"YEAR\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"MONTH\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"FORTNIGHT\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"WEEK\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"DAY\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"MINUTE\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"SECOND\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"TOMORROW\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"YESTERDAY\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"TODAY\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"NEXT\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"THIRD\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"FOURTH\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"FIFTH\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"SIXTH\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"SEVENTH\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"EIGHTH\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"NINTH\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"TENTH\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"ELEVENTH\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"TWELFTH\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"AGO\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"HENCE\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"TZ=\22\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.185 = private unnamed_addr constant [34 x i8] c"error: initial year out of range\0A\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"error: parsing failed\0A\00", align 1
@.str.187 = private unnamed_addr constant [40 x i8] c"error: parsing failed, stopped at '%s'\0A\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"input timezone: \00", align 1
@.str.189 = private unnamed_addr constant [25 x i8] c"'@timespec' - always UTC\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"parsed date/time string\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"TZ=\22%s\22 in date string\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"UTC0\00", align 1
@.str.193 = private unnamed_addr constant [34 x i8] c"TZ=\22UTC0\22 environment value or -u\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"TZ=\22%s\22 environment value\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"system default\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c", dst\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.198 = private unnamed_addr constant [33 x i8] c"error: seen multiple time parts\0A\00", align 1
@.str.199 = private unnamed_addr constant [33 x i8] c"error: seen multiple date parts\0A\00", align 1
@.str.200 = private unnamed_addr constant [33 x i8] c"error: seen multiple days parts\0A\00", align 1
@.str.201 = private unnamed_addr constant [44 x i8] c"error: seen multiple daylight-saving parts\0A\00", align 1
@.str.202 = private unnamed_addr constant [38 x i8] c"error: seen multiple time-zone parts\0A\00", align 1
@.str.203 = private unnamed_addr constant [37 x i8] c"error: year, month, or day overflow\0A\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.205 = private unnamed_addr constant [27 x i8] c"error: invalid hour %ld%s\0A\00", align 1
@.str.206 = private unnamed_addr constant [46 x i8] c"using specified time as starting value: '%s'\0A\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c"using current time as starting value: '%s'\0A\00", align 1
@.str.208 = private unnamed_addr constant [46 x i8] c"warning: using midnight as starting time: %s\0A\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"00:00:00\00", align 1
@.str.210 = private unnamed_addr constant [30 x i8] c"error: tzalloc (\22%s\22) failed\0A\00", align 1
@.str.211 = private unnamed_addr constant [79 x i8] c"error: day '%s' (day ordinal=%ld number=%d) resulted in an invalid date: '%s'\0A\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"new start date: '%s' is '%s'\0A\00", align 1
@.str.213 = private unnamed_addr constant [44 x i8] c"using current date as starting value: '%s'\0A\00", align 1
@.str.214 = private unnamed_addr constant [57 x i8] c"warning: day (%s) ignored when explicit dates are given\0A\00", align 1
@.str.215 = private unnamed_addr constant [26 x i8] c"starting date/time: '%s'\0A\00", align 1
@.str.216 = private unnamed_addr constant [97 x i8] c"warning: when adding relative months/years, it is recommended to specify the 15th of the months\0A\00", align 1
@.str.217 = private unnamed_addr constant [71 x i8] c"warning: when adding relative days, it is recommended to specify noon\0A\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"error: %s:%d\0A\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"parse-datetime.y\00", align 1
@.str.220 = private unnamed_addr constant [63 x i8] c"error: adding relative date resulted in an invalid date: '%s'\0A\00", align 1
@.str.221 = private unnamed_addr constant [61 x i8] c"after date adjustment (%+ld years, %+ld months, %+ld days),\0A\00", align 1
@.str.222 = private unnamed_addr constant [26 x i8] c"    new date/time = '%s'\0A\00", align 1
@.str.223 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after date adjustment\0A\00", align 1
@.str.224 = private unnamed_addr constant [59 x i8] c"warning: month/year adjustment resulted in shifted dates:\0A\00", align 1
@.str.225 = private unnamed_addr constant [35 x i8] c"     adjusted Y M D: %s %02d %02d\0A\00", align 1
@.str.226 = private unnamed_addr constant [35 x i8] c"   normalized Y M D: %s %02d %02d\0A\00", align 1
@.str.227 = private unnamed_addr constant [43 x i8] c"error: timezone %d caused time_t overflow\0A\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"'%s' = %ld epoch-seconds\0A\00", align 1
@.str.229 = private unnamed_addr constant [48 x i8] c"error: adding relative time caused an overflow\0A\00", align 1
@.str.230 = private unnamed_addr constant [73 x i8] c"after time adjustment (%+ld hours, %+ld minutes, %+ld seconds, %+d ns),\0A\00", align 1
@.str.231 = private unnamed_addr constant [34 x i8] c"    new time = %ld epoch-seconds\0A\00", align 1
@.str.232 = private unnamed_addr constant [61 x i8] c"warning: daylight saving time changed after time adjustment\0A\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"timezone: system default\0A\00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"timezone: Universal Time\0A\00", align 1
@.str.235 = private unnamed_addr constant [37 x i8] c"timezone: TZ=\22%s\22 environment value\0A\00", align 1
@.str.236 = private unnamed_addr constant [33 x i8] c"final: %ld.%09d (epoch-seconds)\0A\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"final: %s (UTC)\0A\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"final: %s (UTC%s)\0A\00", align 1
@.str.239 = private unnamed_addr constant [38 x i8] c"final: %s (unknown time zone offset)\0A\00", align 1
@.str.240 = private unnamed_addr constant [42 x i8] c"warning: adjusting year value %ld to %ld\0A\00", align 1
@.str.241 = private unnamed_addr constant [30 x i8] c"error: out-of-range year %ld\0A\00", align 1
@.str.242 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.243 = private unnamed_addr constant [33 x i8] c"error: invalid date/time value:\0A\00", align 1
@.str.244 = private unnamed_addr constant [30 x i8] c"    user provided time: '%s'\0A\00", align 1
@.str.245 = private unnamed_addr constant [34 x i8] c"    time could not be normalized\0A\00", align 1
@.str.246 = private unnamed_addr constant [30 x i8] c"       normalized time: '%s'\0A\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"%37s %2s %2s %2s %2s %2s\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.251 = private unnamed_addr constant [24 x i8] c"     possible reasons:\0A\00", align 1
@.str.252 = private unnamed_addr constant [49 x i8] c"       nonexistent due to daylight-saving time;\0A\00", align 1
@.str.253 = private unnamed_addr constant [39 x i8] c"       invalid day/month combination;\0A\00", align 1
@.str.254 = private unnamed_addr constant [33 x i8] c"       numeric values overflow;\0A\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"       %s\0A\00", align 1
@.str.256 = private unnamed_addr constant [19 x i8] c"incorrect timezone\00", align 1
@.str.257 = private unnamed_addr constant [17 x i8] c"missing timezone\00", align 1
@.str.258 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %Y-%m-%d %H:%M:%S\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c" TZ=%s\00", align 1
@.str.260 = private unnamed_addr constant [21 x i8] c"(Y-M-D) %s-%02d-%02d\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"-%02d%02d\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.267 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.268 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.272 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.273 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.274 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.275 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.276 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.277 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.278 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.279 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.280 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.272, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.273, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.274, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.275, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.276, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.277, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.278, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.279, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.280, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.281 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.282 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.283 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.284 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.310 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.313 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.314 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.315 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.316 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.317 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.318 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.319 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.320 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.321 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.322 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.323 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.324 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.325 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.326 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.327 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.328 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.329 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.334 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.335 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.336 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.337 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.338 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.339 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.340 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.353 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.351 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.352 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.382 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.393 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.394 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  br label %30

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #18
  %14 = load i8*, i8** @program_name, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14)
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([292 x i8], [292 x i8]* @.str.2, i64 0, i64 0)) #18
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17)
  call void @emit_mandatory_arg_note()
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19)
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20)
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21)
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22)
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([167 x i8], [167 x i8]* @.str.8, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23)
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24)
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %25)
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.11, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %26)
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @.str.12, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %27)
  %28 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %28)
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0)) #18
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29)
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %12, %11
  %31 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %31) #19
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
define internal void @emit_mandatory_arg_note() #4 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0)) #18
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 {
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
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #18
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @oputs_.help_no_sgr, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35)
  br label %274

37:                                               ; preds = %30
  store i8 1, i8* %6, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #20
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %8, align 8
  store i8 0, i8* %6, align 1
  br label %89

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = icmp ult i64 %59, 2
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %82

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21
  %65 = load i16*, i16** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %65, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 8192
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %10, align 8
  br label %54, !llvm.loop !12

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  store i8* %86, i8** %8, align 8
  store i8 0, i8* %6, align 1
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #20
  store i64 %91, i64* %11, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 10
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %164

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1
  br label %119

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21
  %121 = load i16*, i16** %120, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %121, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = and i32 %128, 8192
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 9
  br i1 %135, label %149, label %136

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21
  %138 = load i16*, i16** %137, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %138, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, 8192
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136, %131
  br label %164

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1
  %152 = trunc i8 %151 to i1
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 45
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %164

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %12, align 8
  br label %95, !llvm.loop !14

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171)
  %173 = load i8*, i8** %3, align 8
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %232

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %230

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %228

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %226

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %224

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %222

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0))
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %220

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0))
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %218

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %214

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %211 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %207 ], [ %215, %214 ]
  br label %218

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %203 ], [ %217, %216 ]
  br label %220

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %199 ], [ %219, %218 ]
  br label %222

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %195 ], [ %221, %220 ]
  br label %224

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %191 ], [ %223, %222 ]
  br label %226

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), %187 ], [ %225, %224 ]
  br label %228

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %183 ], [ %227, %226 ]
  br label %230

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %179 ], [ %229, %228 ]
  br label %232

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %175 ], [ %231, %230 ]
  store i8* %233, i8** %13, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i64 noundef 6) #20
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i64 noundef 9) #20
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = load i64, i64* %11, align 8
  %245 = trunc i64 %244 to i32
  %246 = load i8*, i8** %8, align 8
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246)
  br label %254

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8
  %250 = load i64, i64* %11, align 8
  %251 = trunc i64 %250 to i32
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252)
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %255)
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %257)
  %259 = load i8*, i8** %7, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265)
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %267)
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %269)
  %271 = load i8*, i8** %12, align 8
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272)
  br label %274

274:                                              ; preds = %254, %33
  ret void
}

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
  br label %11, !llvm.loop !15

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
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i64 noundef 3) #20
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.64, i64 0, i64 0)) #18
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i8*, i8** %2, align 8
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %52 ], [ %54, %53 ]
  store i8* %56, i8** %7, align 8
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0)) #18
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef %58)
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i64 0, i64 0)) #18
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = icmp eq i8* %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca %struct.timespec, align 8
  %14 = alloca %struct.timespec, align 8
  %15 = alloca %struct.timespec, align 8
  %16 = alloca %struct.timespec, align 8
  %17 = alloca %struct.timespec, align 8
  %18 = alloca %struct.timespec, align 8
  %19 = alloca %struct.tm*, align 8
  %20 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %6, align 1
  store i8* null, i8** %7, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  call void @set_program_name(i8* noundef %23)
  %24 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #18
  %25 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #18
  %26 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #18
  %27 = call i32 @atexit(void ()* noundef @close_stdout) #18
  br label %28

28:                                               ; preds = %74, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt_long(i32 noundef %29, i8** noundef %30, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %75

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %73 [
    i32 97, label %35
    i32 99, label %38
    i32 100, label %39
    i32 102, label %41
    i32 104, label %42
    i32 109, label %43
    i32 114, label %46
    i32 116, label %48
    i32 256, label %56
    i32 -2, label %64
    i32 -3, label %65
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @change_times, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* @change_times, align 4
  br label %74

38:                                               ; preds = %33
  store i8 1, i8* @no_create, align 1
  br label %74

39:                                               ; preds = %33
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %7, align 8
  br label %74

41:                                               ; preds = %33
  br label %74

42:                                               ; preds = %33
  store i8 1, i8* @no_dereference, align 1
  br label %74

43:                                               ; preds = %33
  %44 = load i32, i32* @change_times, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* @change_times, align 4
  br label %74

46:                                               ; preds = %33
  store i8 1, i8* @use_ref, align 1
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** @ref_file, align 8
  br label %74

48:                                               ; preds = %33
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i1 @posixtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), i8* noundef %49, i32 noundef 6)
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #18
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i8* @quote(i8* noundef %53)
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %52, i8* noundef %54)
  unreachable

55:                                               ; preds = %48
  store i64 0, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false)
  store i8 1, i8* %6, align 1
  br label %74

56:                                               ; preds = %33
  %57 = load i8*, i8** @optarg, align 8
  %58 = load void ()*, void ()** @argmatch_die, align 8
  %59 = call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* noundef %57, i8** noundef getelementptr inbounds ([6 x i8*], [6 x i8*]* @time_args, i64 0, i64 0), i8* noundef bitcast ([5 x i32]* @time_masks to i8*), i64 noundef 4, void ()* noundef %58, i1 noundef true)
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* @time_masks, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @change_times, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @change_times, align 4
  br label %74

64:                                               ; preds = %33
  call void @usage(i32 noundef 0) #22
  unreachable

65:                                               ; preds = %33
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = load i8*, i8** @Version, align 8
  %68 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %69 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %70 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %71 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %72 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef %67, i8* noundef %68, i8* noundef %69, i8* noundef %70, i8* noundef %71, i8* noundef %72, i8* noundef null)
  call void @exit(i32 noundef 0) #19
  unreachable

73:                                               ; preds = %33
  call void @usage(i32 noundef 1) #22
  unreachable

74:                                               ; preds = %56, %55, %46, %43, %42, %41, %39, %38, %35
  br label %28, !llvm.loop !16

75:                                               ; preds = %28
  %76 = load i32, i32* @change_times, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 3, i32* @change_times, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i8, i8* %6, align 1
  %81 = trunc i8 %80 to i1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i8, i8* @use_ref, align 1
  %84 = trunc i8 %83 to i1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82
  %89 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %89)
  call void @usage(i32 noundef 1) #22
  unreachable

90:                                               ; preds = %85, %79
  %91 = load i8, i8* @use_ref, align 1
  %92 = trunc i8 %91 to i1
  br i1 %92, label %93, label %141

93:                                               ; preds = %90
  %94 = load i8, i8* @no_dereference, align 1
  %95 = trunc i8 %94 to i1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i8*, i8** @ref_file, align 8
  %98 = call i32 @lstat(i8* noundef %97, %struct.stat* noundef %9) #18
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %110

100:                                              ; preds = %93
  %101 = load i8*, i8** @ref_file, align 8
  %102 = call i32 @stat(i8* noundef %101, %struct.stat* noundef %9) #18
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100, %96
  %105 = call i32* @__errno_location() #21
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0)) #18
  %108 = load i8*, i8** @ref_file, align 8
  %109 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %108)
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %106, i8* noundef %107, i8* noundef %109)
  unreachable

110:                                              ; preds = %100, %96
  %111 = call [2 x i64] @get_stat_atime(%struct.stat* noundef %9) #20
  %112 = bitcast %struct.timespec* %10 to [2 x i64]*
  store [2 x i64] %111, [2 x i64]* %112, align 8
  %113 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i8* align 8 %113, i64 16, i1 false)
  %114 = call [2 x i64] @get_stat_mtime(%struct.stat* noundef %9) #20
  %115 = bitcast %struct.timespec* %11 to [2 x i64]*
  store [2 x i64] %114, [2 x i64]* %115, align 8
  %116 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* align 8 %116, i64 16, i1 false)
  store i8 1, i8* %6, align 1
  %117 = load i8*, i8** %7, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %140

119:                                              ; preds = %110
  %120 = load i32, i32* @change_times, align 4
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load [2 x i64], [2 x i64]* bitcast ([2 x %struct.timespec]* @newtime to [2 x i64]*), align 8
  %126 = call [2 x i64] @date_relative(i8* noundef %124, [2 x i64] %125)
  %127 = bitcast %struct.timespec* %12 to [2 x i64]*
  store [2 x i64] %126, [2 x i64]* %127, align 8
  %128 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i8* align 8 %128, i64 16, i1 false)
  br label %129

129:                                              ; preds = %123, %119
  %130 = load i32, i32* @change_times, align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = load [2 x i64], [2 x i64]* bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to [2 x i64]*), align 8
  %136 = call [2 x i64] @date_relative(i8* noundef %134, [2 x i64] %135)
  %137 = bitcast %struct.timespec* %13 to [2 x i64]*
  store [2 x i64] %136, [2 x i64]* %137, align 8
  %138 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* align 8 %138, i64 16, i1 false)
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %110
  br label %195

141:                                              ; preds = %90
  %142 = load i8*, i8** %7, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %194

144:                                              ; preds = %141
  %145 = call [2 x i64] @current_timespec()
  %146 = bitcast %struct.timespec* %14 to [2 x i64]*
  store [2 x i64] %145, [2 x i64]* %146, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = bitcast %struct.timespec* %14 to [2 x i64]*
  %149 = load [2 x i64], [2 x i64]* %148, align 8
  %150 = call [2 x i64] @date_relative(i8* noundef %147, [2 x i64] %149)
  %151 = bitcast %struct.timespec* %15 to [2 x i64]*
  store [2 x i64] %150, [2 x i64]* %151, align 8
  %152 = bitcast %struct.timespec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i8* align 8 %152, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false)
  store i8 1, i8* %6, align 1
  %153 = load i32, i32* @change_times, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %193

155:                                              ; preds = %144
  %156 = load i64, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), align 8
  %157 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %160, label %193

160:                                              ; preds = %155
  %161 = load i64, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8
  %162 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %165, label %193

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = xor i64 %167, 1
  %169 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i64 %171, i64* %172, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = bitcast %struct.timespec* %16 to [2 x i64]*
  %175 = load [2 x i64], [2 x i64]* %174, align 8
  %176 = call [2 x i64] @date_relative(i8* noundef %173, [2 x i64] %175)
  %177 = bitcast %struct.timespec* %18 to [2 x i64]*
  store [2 x i64] %176, [2 x i64]* %177, align 8
  %178 = bitcast %struct.timespec* %17 to i8*
  %179 = bitcast %struct.timespec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %181, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %165
  %186 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i8 0, i8* %6, align 1
  br label %192

192:                                              ; preds = %191, %185, %165
  br label %193

193:                                              ; preds = %192, %160, %155, %144
  br label %194

194:                                              ; preds = %193, %141
  br label %195

195:                                              ; preds = %194, %140
  %196 = load i8, i8* %6, align 1
  %197 = trunc i8 %196 to i1
  br i1 %197, label %252, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @optind, align 4
  %201 = sub nsw i32 %199, %200
  %202 = icmp sle i32 2, %201
  br i1 %202, label %203, label %252

203:                                              ; preds = %198
  %204 = call i32 @posix2_version()
  %205 = icmp slt i32 %204, 200112
  br i1 %205, label %206, label %252

206:                                              ; preds = %203
  %207 = load i8**, i8*** %5, align 8
  %208 = load i32, i32* @optind, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = call i1 @posixtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), i8* noundef %211, i32 noundef 9)
  br i1 %212, label %213, label %252

213:                                              ; preds = %206
  store i64 0, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* align 8 bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false)
  store i8 1, i8* %6, align 1
  %214 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #18
  %215 = icmp ne i8* %214, null
  br i1 %215, label %249, label %216

216:                                              ; preds = %213
  %217 = call %struct.tm* @localtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0)) #18
  store %struct.tm* %217, %struct.tm** %19, align 8
  %218 = load %struct.tm*, %struct.tm** %19, align 8
  %219 = icmp ne %struct.tm* %218, null
  br i1 %219, label %220, label %248

220:                                              ; preds = %216
  %221 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.30, i64 0, i64 0)) #18
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* @optind, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.tm*, %struct.tm** %19, align 8
  %228 = getelementptr inbounds %struct.tm, %struct.tm* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, 1900
  %232 = load %struct.tm*, %struct.tm** %19, align 8
  %233 = getelementptr inbounds %struct.tm, %struct.tm* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  %236 = load %struct.tm*, %struct.tm** %19, align 8
  %237 = getelementptr inbounds %struct.tm, %struct.tm* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.tm*, %struct.tm** %19, align 8
  %240 = getelementptr inbounds %struct.tm, %struct.tm* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.tm*, %struct.tm** %19, align 8
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.tm*, %struct.tm** %19, align 8
  %246 = getelementptr inbounds %struct.tm, %struct.tm* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %221, i8* noundef %226, i64 noundef %231, i32 noundef %235, i32 noundef %238, i32 noundef %241, i32 noundef %244, i32 noundef %247)
  br label %248

248:                                              ; preds = %220, %216
  br label %249

249:                                              ; preds = %248, %213
  %250 = load i32, i32* @optind, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @optind, align 4
  br label %252

252:                                              ; preds = %249, %206, %203, %198, %195
  %253 = load i8, i8* %6, align 1
  %254 = trunc i8 %253 to i1
  br i1 %254, label %261, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* @change_times, align 4
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i8 1, i8* @amtime_now, align 1
  br label %260

259:                                              ; preds = %255
  store i64 1073741823, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8
  store i64 1073741823, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8
  br label %260

260:                                              ; preds = %259, %258
  br label %261

261:                                              ; preds = %260, %252
  %262 = load i32, i32* @optind, align 4
  %263 = load i32, i32* %4, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %266)
  call void @usage(i32 noundef 1) #22
  unreachable

267:                                              ; preds = %261
  store i8 1, i8* %20, align 1
  br label %268

268:                                              ; preds = %286, %267
  %269 = load i32, i32* @optind, align 4
  %270 = load i32, i32* %4, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %268
  %273 = load i8**, i8*** %5, align 8
  %274 = load i32, i32* @optind, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i1 @touch(i8* noundef %277)
  %279 = zext i1 %278 to i32
  %280 = load i8, i8* %20, align 1
  %281 = trunc i8 %280 to i1
  %282 = zext i1 %281 to i32
  %283 = and i32 %282, %279
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %20, align 1
  br label %286

286:                                              ; preds = %272
  %287 = load i32, i32* @optind, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* @optind, align 4
  br label %268, !llvm.loop !17

289:                                              ; preds = %268
  %290 = load i8, i8* %20, align 1
  %291 = trunc i8 %290 to i1
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i32 0, i32 1
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind
declare i32 @lstat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal [2 x i64] @date_relative(i8* noundef %0, [2 x i64] %1) #4 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.timespec* %4 to [2 x i64]*
  store [2 x i64] %1, [2 x i64]* %6, align 8
  store i8* %0, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i1 @parse_datetime(%struct.timespec* noundef %3, i8* noundef %7, %struct.timespec* noundef %4)
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #18
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @quote(i8* noundef %11)
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %10, i8* noundef %12)
  unreachable

13:                                               ; preds = %2
  %14 = bitcast %struct.timespec* %3 to [2 x i64]*
  %15 = load [2 x i64], [2 x i64]* %14, align 8
  ret [2 x i64] %15
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @touch(i8* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0), %struct.timespec** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load i8, i8* @no_create, align 1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = load i8, i8* @no_dereference, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @fd_reopen(i32 noundef 0, i8* noundef %21, i32 noundef 2369, i32 noundef 438)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32* @__errno_location() #21
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %17, %14
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* @change_times, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* @change_times, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 1073741822, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @change_times, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.touch, i64 0, i64 0)) #19
  unreachable

42:                                               ; preds = %40
  store i64 1073741822, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i8, i8* @amtime_now, align 1
  %46 = trunc i8 %45 to i1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store %struct.timespec* null, %struct.timespec** %6, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i8* [ null, %51 ], [ %53, %52 ]
  store i8* %55, i8** %7, align 8
  %56 = load i8, i8* @no_dereference, align 1
  %57 = trunc i8 %56 to i1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 256, i32 0
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.timespec*, %struct.timespec** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @fdutimensat(i32 noundef %60, i32 noundef -100, i8* noundef %61, %struct.timespec* noundef %62, i32 noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %70

67:                                               ; preds = %54
  %68 = call i32* @__errno_location() #21
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = call i32 @close(i32 noundef 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = call i32* @__errno_location() #21
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @gettext(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0)) #18
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %81)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %79, i8* noundef %80, i8* noundef %82)
  store i1 false, i1* %2, align 1
  br label %139

83:                                               ; preds = %74
  br label %96

84:                                               ; preds = %70
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8, i8* @no_create, align 1
  %92 = trunc i8 %91 to i1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i1 true, i1* %2, align 1
  br label %139

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %84
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 21
  br i1 %104, label %125, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = icmp eq i32 %106, 22
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 17
  br i1 %110, label %111, label %120

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %3, align 8
  %113 = call i32 @stat(i8* noundef %112, %struct.stat* noundef %10) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 61440
  %119 = icmp eq i32 %118, 16384
  br i1 %119, label %125, label %120

120:                                              ; preds = %115, %111, %108
  %121 = load i32, i32* %5, align 4
  %122 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i64 0, i64 0)) #18
  %123 = load i8*, i8** %3, align 8
  %124 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %123)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %121, i8* noundef %122, i8* noundef %124)
  br label %137

125:                                              ; preds = %115, %102, %99
  %126 = load i8, i8* @no_create, align 1
  %127 = trunc i8 %126 to i1
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i1 true, i1* %2, align 1
  br label %139

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %9, align 4
  %134 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0)) #18
  %135 = load i8*, i8** %3, align 8
  %136 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %135)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %133, i8* noundef %134, i8* noundef %136)
  br label %137

137:                                              ; preds = %132, %120
  store i1 false, i1* %2, align 1
  br label %139

138:                                              ; preds = %96
  store i1 true, i1* %2, align 1
  br label %139

139:                                              ; preds = %138, %137, %131, %93, %77
  %140 = load i1, i1* %2, align 1
  ret i1 %140
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__argmatch_die() #4 {
  call void @usage(i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @argmatch(i8* noundef %0, i8** noundef %1, i8* noundef %2, i64 noundef %3) #9 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* noundef %14) #20
  store i64 %15, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  store i8 0, i8* %12, align 1
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %67, %4
  %17 = load i8**, i8*** %7, align 8
  %18 = load i64, i64* %13, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = load i8**, i8*** %7, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @strncmp(i8* noundef %26, i8* noundef %27, i64 noundef %28) #20
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* noundef %35) #20
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %5, align 8
  br label %76

41:                                               ; preds = %31
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %11, align 8
  br label %64

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = mul i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = mul i64 %56, %57
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = call i1 @memeq(i8* noundef %54, i8* noundef %59, i64 noundef %60)
  br i1 %61, label %63, label %62

62:                                               ; preds = %49, %46
  store i8 1, i8* %12, align 1
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %22
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %16, !llvm.loop !18

70:                                               ; preds = %16
  %71 = load i8, i8* %12, align 1
  %72 = trunc i8 %71 to i1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i64 -2, i64* %5, align 8
  br label %76

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %73, %39
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* noundef %0, i8** noundef %1) #9 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i8**, i8*** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i1 @streq(i8* noundef %17, i8* noundef %18)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %3, align 8
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %7, !llvm.loop !19

26:                                               ; preds = %7
  store i64 -1, i64* %3, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.90, i64 0, i64 0)) #18
  br label %14

12:                                               ; preds = %3
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.91, i64 0, i64 0)) #18
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i8* [ %11, %10 ], [ %13, %12 ]
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @quote_n(i32 noundef 1, i8* noundef %19)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %16, i8* noundef %18, i8* noundef %20)
  ret void
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_valid(i8** noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %9 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.92, i64 0, i64 0)) #18
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 @fputs_unlocked(i8* noundef %9, %struct._IO_FILE* noundef %10)
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %52, %3
  %13 = load i8**, i8*** %4, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = mul i64 %24, %25
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i64, i64* %6, align 8
  %29 = call i1 @memeq(i8* noundef %22, i8* noundef %27, i64 noundef %28)
  br i1 %29, label %43, label %30

30:                                               ; preds = %21, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @quote(i8* noundef %35)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.93, i64 0, i64 0), i8* noundef %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = mul i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %7, align 8
  br label %51

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @quote(i8* noundef %48)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.94, i64 0, i64 0), i8* noundef %49)
  br label %51

51:                                               ; preds = %43, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %12, !llvm.loop !20

55:                                               ; preds = %12
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %56)
  ret void
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** noundef %2, i8* noundef %3, i64 noundef %4, void ()* noundef %5, i1 noundef %6) #4 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca void ()*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store void ()* %5, void ()** %14, align 8
  %17 = zext i1 %6 to i8
  store i8 %17, i8* %15, align 1
  %18 = load i8, i8* %15, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i8*, i8** %10, align 8
  %22 = load i8**, i8*** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i64 @argmatch(i8* noundef %21, i8** noundef %22, i8* noundef %23, i64 noundef %24) #20
  store i64 %25, i64* %16, align 8
  br label %30

26:                                               ; preds = %7
  %27 = load i8*, i8** %10, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = call i64 @argmatch_exact(i8* noundef %27, i8** noundef %28) #20
  store i64 %29, i64* %16, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i64, i64* %16, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* %16, align 8
  store i64 %34, i64* %8, align 8
  br label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %16, align 8
  call void @argmatch_invalid(i8* noundef %36, i8* noundef %37, i64 noundef %38)
  %39 = load i8**, i8*** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %13, align 8
  call void @argmatch_valid(i8** noundef %39, i8* noundef %40, i64 noundef %41)
  %42 = load void ()*, void ()** %14, align 8
  call void %42()
  store i64 -1, i64* %8, align 8
  br label %43

43:                                               ; preds = %35, %33
  %44 = load i64, i64* %8, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* noundef %0, i8** noundef %1, i8* noundef %2, i64 noundef %3) #9 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i64, i64* %10, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = mul i64 %20, %21
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i64, i64* %9, align 8
  %25 = call i1 @memeq(i8* noundef %18, i8* noundef %23, i64 noundef %24)
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i8**, i8*** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %11, !llvm.loop !21

35:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

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

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 {
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
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i64 0, i64 0), i8* noundef %15)
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
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.105, i64 0, i64 0)) #18
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.106, i64 0, i64 0), i8* noundef %14)
  ret void
}

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
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 {
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
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.109, i64 0, i64 0), i8* noundef %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.111, i64 0, i64 0)
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
define dso_local i32 @fd_reopen(i32 noundef %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (i8*, i32, ...) @open(i8* noundef %13, i32 noundef %14, i32 noundef %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dup2(i32 noundef %26, i32 noundef %27) #18
  store i32 %28, i32* %11, align 4
  %29 = call i32* @__errno_location() #21
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @close(i32 noundef %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32* @__errno_location() #21
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %25, %23
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdutimensat(i32 noundef %0, i32 noundef %1, i8* noundef %2, %struct.timespec* noundef %3, i32 noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 0, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.timespec*, %struct.timespec** %9, align 8
  %17 = call i32 @futimens(i32 noundef %15, %struct.timespec* noundef %16) #18
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.timespec*, %struct.timespec** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @utimensat(i32 noundef %32, i8* noundef %33, %struct.timespec* noundef %34, i32 noundef %35) #18
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %31, %27, %24, %18
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32* @__errno_location() #21
  store i32 9, i32* %41, align 4
  store i32 -1, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, %struct.timespec* noundef) #2

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, i8* noundef, %struct.timespec* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gettime(%struct.timespec* noundef nonnull %0) #4 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %3 = load %struct.timespec*, %struct.timespec** %2, align 8
  %4 = call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef %3) #18
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [2 x i64] @current_timespec() #4 {
  %1 = alloca %struct.timespec, align 8
  call void @gettime(%struct.timespec* noundef %1)
  %2 = bitcast %struct.timespec* %1 to [2 x i64]*
  %3 = load [2 x i64], [2 x i64]* %2, align 8
  ret [2 x i64] %3
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
define dso_local i32 @yyparse(%struct.parser_control* noundef %0) #4 {
  %2 = alloca %struct.parser_control*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.YYSTYPE, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [20 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x %union.YYSTYPE], align 8
  %13 = alloca %union.YYSTYPE*, align 8
  %14 = alloca %union.YYSTYPE*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.YYSTYPE, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %union.yyalloc*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.textint, align 8
  %26 = alloca %struct.relative_time, align 8
  %27 = alloca %struct.relative_time, align 8
  %28 = alloca %struct.textint, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.relative_time, align 8
  %31 = alloca %struct.relative_time, align 8
  %32 = alloca %struct.relative_time, align 8
  %33 = alloca %struct.relative_time, align 8
  %34 = alloca %struct.relative_time, align 8
  %35 = alloca %struct.relative_time, align 8
  %36 = alloca %struct.relative_time, align 8
  %37 = alloca %struct.relative_time, align 8
  %38 = alloca %struct.relative_time, align 8
  %39 = alloca %struct.relative_time, align 8
  %40 = alloca %struct.relative_time, align 8
  %41 = alloca %struct.relative_time, align 8
  %42 = alloca %struct.relative_time, align 8
  %43 = alloca %struct.relative_time, align 8
  %44 = alloca %struct.relative_time, align 8
  %45 = alloca %struct.relative_time, align 8
  %46 = alloca %struct.relative_time, align 8
  %47 = alloca %struct.relative_time, align 8
  %48 = alloca %struct.relative_time, align 8
  %49 = alloca %struct.relative_time, align 8
  %50 = alloca %struct.relative_time, align 8
  %51 = alloca %struct.relative_time, align 8
  %52 = alloca %struct.relative_time, align 8
  %53 = alloca %struct.relative_time, align 8
  %54 = alloca %struct.relative_time, align 8
  %55 = alloca %struct.relative_time, align 8
  %56 = alloca %struct.relative_time, align 8
  %57 = alloca %struct.relative_time, align 8
  %58 = alloca %struct.relative_time, align 8
  %59 = alloca %struct.relative_time, align 8
  %60 = alloca %struct.timespec, align 8
  %61 = alloca %struct.timespec, align 8
  %62 = alloca %struct.textint, align 8
  %63 = alloca %struct.textint, align 8
  %64 = alloca %struct.relative_time, align 8
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store %struct.parser_control* %0, %struct.parser_control** %2, align 8
  %67 = bitcast %union.YYSTYPE* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 bitcast (%union.YYSTYPE* @yyparse.yyval_default to i8*), i64 56, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 20, i64* %8, align 8
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %11, align 8
  %70 = getelementptr inbounds [20 x %union.YYSTYPE], [20 x %union.YYSTYPE]* %12, i64 0, i64 0
  store %union.YYSTYPE* %70, %union.YYSTYPE** %13, align 8
  %71 = load %union.YYSTYPE*, %union.YYSTYPE** %13, align 8
  store %union.YYSTYPE* %71, %union.YYSTYPE** %14, align 8
  store i32 -2, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 -2, i32* %3, align 4
  br label %75

72:                                               ; preds = %2066, %1950, %247
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %72, %1
  %76 = load i32, i32* %6, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %11, align 8
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ule i8* %82, %83
  br i1 %84, label %85, label %168

85:                                               ; preds = %75
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp sle i64 20, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %2074

95:                                               ; preds = %85
  %96 = load i64, i64* %8, align 8
  %97 = mul nsw i64 %96, 2
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp slt i64 20, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i64 20, i64* %8, align 8
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i8*, i8** %10, align 8
  store i8* %102, i8** %21, align 8
  %103 = load i64, i64* %8, align 8
  %104 = mul nsw i64 %103, 57
  %105 = add nsw i64 %104, 55
  %106 = call noalias i8* @malloc(i64 noundef %105) #18
  %107 = bitcast i8* %106 to %union.yyalloc*
  store %union.yyalloc* %107, %union.yyalloc** %22, align 8
  %108 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %109 = icmp ne %union.yyalloc* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %2074

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %114 = bitcast %union.yyalloc* %113 to i8*
  %115 = load i8*, i8** %10, align 8
  %116 = load i64, i64* %20, align 8
  %117 = mul i64 %116, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 1 %115, i64 %117, i1 false)
  %118 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %119 = bitcast %union.yyalloc* %118 to i8*
  store i8* %119, i8** %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = mul nsw i64 %120, 1
  %122 = add nsw i64 %121, 55
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %23, align 8
  %124 = sdiv i64 %123, 56
  %125 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %126 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %125, i64 %124
  store %union.yyalloc* %126, %union.yyalloc** %22, align 8
  br label %127

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127
  %129 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %130 = bitcast %union.yyalloc* %129 to %union.YYSTYPE*
  %131 = bitcast %union.YYSTYPE* %130 to i8*
  %132 = load %union.YYSTYPE*, %union.YYSTYPE** %13, align 8
  %133 = bitcast %union.YYSTYPE* %132 to i8*
  %134 = load i64, i64* %20, align 8
  %135 = mul i64 %134, 56
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %133, i64 %135, i1 false)
  %136 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %137 = bitcast %union.yyalloc* %136 to %union.YYSTYPE*
  store %union.YYSTYPE* %137, %union.YYSTYPE** %13, align 8
  %138 = load i64, i64* %8, align 8
  %139 = mul nsw i64 %138, 56
  %140 = add nsw i64 %139, 55
  store i64 %140, i64* %24, align 8
  %141 = load i64, i64* %24, align 8
  %142 = sdiv i64 %141, 56
  %143 = load %union.yyalloc*, %union.yyalloc** %22, align 8
  %144 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %143, i64 %142
  store %union.yyalloc* %144, %union.yyalloc** %22, align 8
  br label %145

145:                                              ; preds = %128
  %146 = load i8*, i8** %21, align 8
  %147 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %150) #18
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i8*, i8** %10, align 8
  %153 = load i64, i64* %20, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 -1
  store i8* %155, i8** %11, align 8
  %156 = load %union.YYSTYPE*, %union.YYSTYPE** %13, align 8
  %157 = load i64, i64* %20, align 8
  %158 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %156, i64 %157
  %159 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %158, i64 -1
  store %union.YYSTYPE* %159, %union.YYSTYPE** %14, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %8, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  %164 = load i8*, i8** %11, align 8
  %165 = icmp ule i8* %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %2073

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %75
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, 12
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %2072

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [121 x i8], [121 x i8]* @yypact, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp eq i32 %179, -93
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %253

182:                                              ; preds = %173
  %183 = load i32, i32* %3, align 4
  %184 = icmp eq i32 %183, -2
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %187 = call i32 @yylex(%union.YYSTYPE* noundef %4, %struct.parser_control* noundef %186)
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %3, align 4
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  store i32 0, i32* %17, align 4
  br label %212

192:                                              ; preds = %188
  %193 = load i32, i32* %3, align 4
  %194 = icmp eq i32 %193, 256
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 257, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %2011

196:                                              ; preds = %192
  %197 = load i32, i32* %3, align 4
  %198 = icmp sle i32 0, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i32, i32* %3, align 4
  %201 = icmp sle i32 %200, 278
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [279 x i8], [279 x i8]* @yytranslate, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  br label %209

208:                                              ; preds = %199, %196
  br label %209

209:                                              ; preds = %208, %202
  %210 = phi i32 [ %207, %202 ], [ 2, %208 ]
  store i32 %210, i32* %17, align 4
  br label %211

211:                                              ; preds = %209
  br label %212

212:                                              ; preds = %211, %191
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %229, label %218

218:                                              ; preds = %212
  %219 = load i32, i32* %15, align 4
  %220 = icmp slt i32 120, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [121 x i8], [121 x i8]* @yycheck, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %221, %218, %212
  br label %253

230:                                              ; preds = %221
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [121 x i8], [121 x i8]* @yytable, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %230
  %239 = load i32, i32* %15, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %15, align 4
  br label %263

241:                                              ; preds = %230
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i32, i32* %15, align 4
  store i32 %248, i32* %6, align 4
  %249 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %250 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %249, i32 1
  store %union.YYSTYPE* %250, %union.YYSTYPE** %14, align 8
  %251 = bitcast %union.YYSTYPE* %250 to i8*
  %252 = bitcast %union.YYSTYPE* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* align 8 %252, i64 56, i1 false)
  store i32 -2, i32* %3, align 4
  br label %72

253:                                              ; preds = %229, %181
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [121 x i8], [121 x i8]* @yydefact, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %1952

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262, %238
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [95 x i8], [95 x i8]* @yyr2, i64 0, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  store i32 %268, i32* %19, align 4
  %269 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %270 = load i32, i32* %19, align 4
  %271 = sub nsw i32 1, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %269, i64 %272
  %274 = bitcast %union.YYSTYPE* %18 to i8*
  %275 = bitcast %union.YYSTYPE* %273 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %274, i8* align 8 %275, i64 56, i1 false)
  %276 = load i32, i32* %15, align 4
  switch i32 %276, label %1892 [
    i32 4, label %277
    i32 7, label %289
    i32 8, label %300
    i32 9, label %307
    i32 10, label %314
    i32 11, label %320
    i32 12, label %327
    i32 13, label %334
    i32 14, label %341
    i32 15, label %344
    i32 16, label %347
    i32 19, label %350
    i32 20, label %364
    i32 21, label %383
    i32 23, label %413
    i32 24, label %422
    i32 25, label %436
    i32 28, label %461
    i32 29, label %479
    i32 30, label %487
    i32 31, label %494
    i32 32, label %502
    i32 33, label %505
    i32 34, label %524
    i32 35, label %538
    i32 36, label %571
    i32 37, label %580
    i32 38, label %589
    i32 39, label %599
    i32 40, label %609
    i32 41, label %625
    i32 42, label %642
    i32 43, label %657
    i32 44, label %735
    i32 45, label %750
    i32 46, label %772
    i32 47, label %807
    i32 48, label %847
    i32 49, label %861
    i32 50, label %882
    i32 51, label %896
    i32 53, label %917
    i32 54, label %949
    i32 55, label %964
    i32 56, label %974
    i32 57, label %984
    i32 58, label %995
    i32 59, label %1007
    i32 60, label %1014
    i32 61, label %1025
    i32 62, label %1037
    i32 63, label %1044
    i32 64, label %1224
    i32 65, label %1417
    i32 66, label %1428
    i32 67, label %1439
    i32 68, label %1451
    i32 69, label %1458
    i32 70, label %1469
    i32 71, label %1481
    i32 72, label %1488
    i32 73, label %1499
    i32 74, label %1511
    i32 75, label %1531
    i32 76, label %1551
    i32 78, label %1558
    i32 79, label %1570
    i32 80, label %1582
    i32 81, label %1775
    i32 82, label %1787
    i32 83, label %1799
    i32 84, label %1811
    i32 88, label %1822
    i32 90, label %1841
    i32 91, label %1860
    i32 92, label %1867
    i32 93, label %1883
    i32 94, label %1885
  ]

277:                                              ; preds = %263
  %278 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %279 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %278, i32 0, i32 11
  %280 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %281 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %280, i64 0
  %282 = bitcast %union.YYSTYPE* %281 to %struct.timespec*
  %283 = bitcast %struct.timespec* %279 to i8*
  %284 = bitcast %struct.timespec* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 16, i1 false)
  %285 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %286 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %285, i32 0, i32 13
  store i8 1, i8* %286, align 8
  %287 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.125, i64 0, i64 0)) #18
  %288 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %287, %struct.parser_control* noundef %288)
  br label %1893

289:                                              ; preds = %263
  %290 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %291 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %290, i32 0, i32 20
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %292, 1
  store i64 %293, i64* %291, align 8
  %294 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %295 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %294, i32 0, i32 15
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %295, align 8
  %298 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.126, i64 0, i64 0)) #18
  %299 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %298, %struct.parser_control* noundef %299)
  br label %1893

300:                                              ; preds = %263
  %301 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %302 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %301, i32 0, i32 20
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %302, align 8
  %305 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.127, i64 0, i64 0)) #18
  %306 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %305, %struct.parser_control* noundef %306)
  br label %1893

307:                                              ; preds = %263
  %308 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %309 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %308, i32 0, i32 18
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %309, align 8
  %312 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.128, i64 0, i64 0)) #18
  %313 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %312, %struct.parser_control* noundef %313)
  br label %1893

314:                                              ; preds = %263
  %315 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %316 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %315, i32 0, i32 17
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %316, align 8
  %319 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.129, i64 0, i64 0), %struct.parser_control* noundef %319)
  br label %1893

320:                                              ; preds = %263
  %321 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %322 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %321, i32 0, i32 21
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %323, 1
  store i64 %324, i64* %322, align 8
  %325 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.130, i64 0, i64 0)) #18
  %326 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %325, %struct.parser_control* noundef %326)
  br label %1893

327:                                              ; preds = %263
  %328 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %329 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %328, i32 0, i32 15
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %329, align 8
  %332 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.131, i64 0, i64 0)) #18
  %333 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %332, %struct.parser_control* noundef %333)
  br label %1893

334:                                              ; preds = %263
  %335 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %336 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %335, i32 0, i32 16
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 1
  store i64 %338, i64* %336, align 8
  %339 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.132, i64 0, i64 0)) #18
  %340 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %339, %struct.parser_control* noundef %340)
  br label %1893

341:                                              ; preds = %263
  %342 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.133, i64 0, i64 0)) #18
  %343 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_relative_time(i8* noundef %342, %struct.parser_control* noundef %343)
  br label %1893

344:                                              ; preds = %263
  %345 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.134, i64 0, i64 0)) #18
  %346 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_current_time(i8* noundef %345, %struct.parser_control* noundef %346)
  br label %1893

347:                                              ; preds = %263
  %348 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.135, i64 0, i64 0)) #18
  %349 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_relative_time(i8* noundef %348, %struct.parser_control* noundef %349)
  br label %1893

350:                                              ; preds = %263
  %351 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %352 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %353 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %352, i64 -1
  %354 = bitcast %union.YYSTYPE* %353 to %struct.textint*
  %355 = getelementptr inbounds %struct.textint, %struct.textint* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  call void @set_hhmmss(%struct.parser_control* noundef %351, i64 noundef %356, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %358 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 0
  %359 = bitcast %union.YYSTYPE* %358 to i64*
  %360 = load i64, i64* %359, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %363 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  br label %1893

364:                                              ; preds = %263
  %365 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %366 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %367 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %366, i64 -3
  %368 = bitcast %union.YYSTYPE* %367 to %struct.textint*
  %369 = getelementptr inbounds %struct.textint, %struct.textint* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %372 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %371, i64 -1
  %373 = bitcast %union.YYSTYPE* %372 to %struct.textint*
  %374 = getelementptr inbounds %struct.textint, %struct.textint* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  call void @set_hhmmss(%struct.parser_control* noundef %365, i64 noundef %370, i64 noundef %375, i64 noundef 0, i32 noundef 0)
  %376 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %377 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %376, i64 0
  %378 = bitcast %union.YYSTYPE* %377 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = trunc i64 %379 to i32
  %381 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %382 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %381, i32 0, i32 5
  store i32 %380, i32* %382, align 4
  br label %1893

383:                                              ; preds = %263
  %384 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %385 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %386 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %385, i64 -5
  %387 = bitcast %union.YYSTYPE* %386 to %struct.textint*
  %388 = getelementptr inbounds %struct.textint, %struct.textint* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %391 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %390, i64 -3
  %392 = bitcast %union.YYSTYPE* %391 to %struct.textint*
  %393 = getelementptr inbounds %struct.textint, %struct.textint* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %396 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %395, i64 -1
  %397 = bitcast %union.YYSTYPE* %396 to %struct.timespec*
  %398 = getelementptr inbounds %struct.timespec, %struct.timespec* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %401 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %400, i64 -1
  %402 = bitcast %union.YYSTYPE* %401 to %struct.timespec*
  %403 = getelementptr inbounds %struct.timespec, %struct.timespec* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  call void @set_hhmmss(%struct.parser_control* noundef %384, i64 noundef %389, i64 noundef %394, i64 noundef %399, i32 noundef %405)
  %406 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %407 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %406, i64 0
  %408 = bitcast %union.YYSTYPE* %407 to i64*
  %409 = load i64, i64* %408, align 8
  %410 = trunc i64 %409 to i32
  %411 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %412 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %411, i32 0, i32 5
  store i32 %410, i32* %412, align 4
  br label %1893

413:                                              ; preds = %263
  %414 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %415 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %416 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %415, i64 -1
  %417 = bitcast %union.YYSTYPE* %416 to %struct.textint*
  %418 = getelementptr inbounds %struct.textint, %struct.textint* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  call void @set_hhmmss(%struct.parser_control* noundef %414, i64 noundef %419, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  %420 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %421 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %420, i32 0, i32 5
  store i32 2, i32* %421, align 4
  br label %1893

422:                                              ; preds = %263
  %423 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %424 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %425 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %424, i64 -3
  %426 = bitcast %union.YYSTYPE* %425 to %struct.textint*
  %427 = getelementptr inbounds %struct.textint, %struct.textint* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %430 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %429, i64 -1
  %431 = bitcast %union.YYSTYPE* %430 to %struct.textint*
  %432 = getelementptr inbounds %struct.textint, %struct.textint* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  call void @set_hhmmss(%struct.parser_control* noundef %423, i64 noundef %428, i64 noundef %433, i64 noundef 0, i32 noundef 0)
  %434 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %435 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %434, i32 0, i32 5
  store i32 2, i32* %435, align 4
  br label %1893

436:                                              ; preds = %263
  %437 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %438 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %439 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %438, i64 -5
  %440 = bitcast %union.YYSTYPE* %439 to %struct.textint*
  %441 = getelementptr inbounds %struct.textint, %struct.textint* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %444 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %443, i64 -3
  %445 = bitcast %union.YYSTYPE* %444 to %struct.textint*
  %446 = getelementptr inbounds %struct.textint, %struct.textint* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %449 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %448, i64 -1
  %450 = bitcast %union.YYSTYPE* %449 to %struct.timespec*
  %451 = getelementptr inbounds %struct.timespec, %struct.timespec* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %454 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %453, i64 -1
  %455 = bitcast %union.YYSTYPE* %454 to %struct.timespec*
  %456 = getelementptr inbounds %struct.timespec, %struct.timespec* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = trunc i64 %457 to i32
  call void @set_hhmmss(%struct.parser_control* noundef %437, i64 noundef %442, i64 noundef %447, i64 noundef %452, i32 noundef %458)
  %459 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %460 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %459, i32 0, i32 5
  store i32 2, i32* %460, align 4
  br label %1893

461:                                              ; preds = %263
  %462 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %463 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %462, i32 0, i32 21
  %464 = load i64, i64* %463, align 8
  %465 = add nsw i64 %464, 1
  store i64 %465, i64* %463, align 8
  %466 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %467 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %468 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %467, i64 -1
  %469 = bitcast %union.YYSTYPE* %468 to %struct.textint*
  %470 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %471 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %470, i64 0
  %472 = bitcast %union.YYSTYPE* %471 to i64*
  %473 = load i64, i64* %472, align 8
  %474 = bitcast %struct.textint* %25 to i8*
  %475 = bitcast %struct.textint* %469 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %474, i8* align 8 %475, i64 24, i1 false)
  %476 = call i1 @time_zone_hhmm(%struct.parser_control* noundef %466, %struct.textint* noundef %25, i64 noundef %473)
  br i1 %476, label %478, label %477

477:                                              ; preds = %461
  br label %2073

478:                                              ; preds = %461
  br label %1893

479:                                              ; preds = %263
  %480 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %481 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %480, i64 0
  %482 = bitcast %union.YYSTYPE* %481 to i64*
  %483 = load i64, i64* %482, align 8
  %484 = trunc i64 %483 to i32
  %485 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %486 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %485, i32 0, i32 3
  store i32 %484, i32* %486, align 4
  br label %1893

487:                                              ; preds = %263
  %488 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %489 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %488, i32 0, i32 3
  store i32 1, i32* %489, align 4
  %490 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %491 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %490, i32 0, i32 19
  %492 = load i64, i64* %491, align 8
  %493 = add nsw i64 %492, 1
  store i64 %493, i64* %491, align 8
  br label %1893

494:                                              ; preds = %263
  %495 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %496 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %495, i64 0
  %497 = bitcast %union.YYSTYPE* %496 to i64*
  %498 = load i64, i64* %497, align 8
  %499 = trunc i64 %498 to i32
  %500 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %501 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %500, i32 0, i32 4
  store i32 %499, i32* %501, align 8
  br label %1893

502:                                              ; preds = %263
  %503 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %504 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %503, i32 0, i32 4
  store i32 -25200, i32* %504, align 8
  br label %1893

505:                                              ; preds = %263
  %506 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %507 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %506, i64 -1
  %508 = bitcast %union.YYSTYPE* %507 to i64*
  %509 = load i64, i64* %508, align 8
  %510 = trunc i64 %509 to i32
  %511 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %512 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %511, i32 0, i32 4
  store i32 %510, i32* %512, align 8
  %513 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %514 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %515 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %514, i64 0
  %516 = bitcast %union.YYSTYPE* %515 to %struct.relative_time*
  %517 = bitcast %struct.relative_time* %26 to i8*
  %518 = bitcast %struct.relative_time* %516 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %517, i8* align 8 %518, i64 56, i1 false)
  %519 = call i1 @apply_relative_time(%struct.parser_control* noundef %513, %struct.relative_time* noundef %26, i32 noundef 1)
  br i1 %519, label %521, label %520

520:                                              ; preds = %505
  br label %2073

521:                                              ; preds = %505
  %522 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.133, i64 0, i64 0)) #18
  %523 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_relative_time(i8* noundef %522, %struct.parser_control* noundef %523)
  br label %1893

524:                                              ; preds = %263
  %525 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %526 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %525, i32 0, i32 4
  store i32 -25200, i32* %526, align 8
  %527 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %528 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %529 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %528, i64 0
  %530 = bitcast %union.YYSTYPE* %529 to %struct.relative_time*
  %531 = bitcast %struct.relative_time* %27 to i8*
  %532 = bitcast %struct.relative_time* %530 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %531, i8* align 8 %532, i64 56, i1 false)
  %533 = call i1 @apply_relative_time(%struct.parser_control* noundef %527, %struct.relative_time* noundef %27, i32 noundef 1)
  br i1 %533, label %535, label %534

534:                                              ; preds = %524
  br label %2073

535:                                              ; preds = %524
  %536 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.133, i64 0, i64 0)) #18
  %537 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @debug_print_relative_time(i8* noundef %536, %struct.parser_control* noundef %537)
  br label %1893

538:                                              ; preds = %263
  %539 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %540 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %541 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %540, i64 -1
  %542 = bitcast %union.YYSTYPE* %541 to %struct.textint*
  %543 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %544 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %543, i64 0
  %545 = bitcast %union.YYSTYPE* %544 to i64*
  %546 = load i64, i64* %545, align 8
  %547 = bitcast %struct.textint* %28 to i8*
  %548 = bitcast %struct.textint* %542 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %547, i8* align 8 %548, i64 24, i1 false)
  %549 = call i1 @time_zone_hhmm(%struct.parser_control* noundef %539, %struct.textint* noundef %28, i64 noundef %546)
  br i1 %549, label %551, label %550

550:                                              ; preds = %538
  br label %2073

551:                                              ; preds = %538
  %552 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %553 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 8
  %555 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %556 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %555, i64 -2
  %557 = bitcast %union.YYSTYPE* %556 to i64*
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %560 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %559, i32 0, i32 4
  %561 = sext i32 %554 to i64
  %562 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %561, i64 %558)
  %563 = extractvalue { i64, i1 } %562, 1
  %564 = extractvalue { i64, i1 } %562, 0
  %565 = trunc i64 %564 to i32
  %566 = sext i32 %565 to i64
  %567 = icmp ne i64 %564, %566
  %568 = or i1 %563, %567
  store i32 %565, i32* %560, align 8
  br i1 %568, label %569, label %570

569:                                              ; preds = %551
  br label %2073

570:                                              ; preds = %551
  br label %1893

571:                                              ; preds = %263
  %572 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %573 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %572, i64 0
  %574 = bitcast %union.YYSTYPE* %573 to i64*
  %575 = load i64, i64* %574, align 8
  %576 = add nsw i64 %575, 3600
  %577 = trunc i64 %576 to i32
  %578 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %579 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %578, i32 0, i32 4
  store i32 %577, i32* %579, align 8
  br label %1893

580:                                              ; preds = %263
  %581 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %582 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %581, i64 -1
  %583 = bitcast %union.YYSTYPE* %582 to i64*
  %584 = load i64, i64* %583, align 8
  %585 = add nsw i64 %584, 3600
  %586 = trunc i64 %585 to i32
  %587 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %588 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %587, i32 0, i32 4
  store i32 %586, i32* %588, align 8
  br label %1893

589:                                              ; preds = %263
  %590 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %591 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %590, i32 0, i32 1
  store i64 0, i64* %591, align 8
  %592 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %593 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %592, i64 0
  %594 = bitcast %union.YYSTYPE* %593 to i64*
  %595 = load i64, i64* %594, align 8
  %596 = trunc i64 %595 to i32
  %597 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %598 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %597, i32 0, i32 2
  store i32 %596, i32* %598, align 8
  br label %1893

599:                                              ; preds = %263
  %600 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %601 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %600, i32 0, i32 1
  store i64 0, i64* %601, align 8
  %602 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %603 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %602, i64 -1
  %604 = bitcast %union.YYSTYPE* %603 to i64*
  %605 = load i64, i64* %604, align 8
  %606 = trunc i64 %605 to i32
  %607 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %608 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %607, i32 0, i32 2
  store i32 %606, i32* %608, align 8
  br label %1893

609:                                              ; preds = %263
  %610 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %611 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %610, i64 -1
  %612 = bitcast %union.YYSTYPE* %611 to i64*
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %615 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %614, i32 0, i32 1
  store i64 %613, i64* %615, align 8
  %616 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %617 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %616, i64 0
  %618 = bitcast %union.YYSTYPE* %617 to i64*
  %619 = load i64, i64* %618, align 8
  %620 = trunc i64 %619 to i32
  %621 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %622 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %621, i32 0, i32 2
  store i32 %620, i32* %622, align 8
  %623 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %624 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %623, i32 0, i32 31
  store i8 1, i8* %624, align 1
  br label %1893

625:                                              ; preds = %263
  %626 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %627 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %626, i64 -1
  %628 = bitcast %union.YYSTYPE* %627 to %struct.textint*
  %629 = getelementptr inbounds %struct.textint, %struct.textint* %628, i32 0, i32 1
  %630 = load i64, i64* %629, align 8
  %631 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %632 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %631, i32 0, i32 1
  store i64 %630, i64* %632, align 8
  %633 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %634 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %633, i64 0
  %635 = bitcast %union.YYSTYPE* %634 to i64*
  %636 = load i64, i64* %635, align 8
  %637 = trunc i64 %636 to i32
  %638 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %639 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %638, i32 0, i32 2
  store i32 %637, i32* %639, align 8
  %640 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %641 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %640, i32 0, i32 31
  store i8 1, i8* %641, align 1
  br label %1893

642:                                              ; preds = %263
  %643 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %644 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %643, i64 -2
  %645 = bitcast %union.YYSTYPE* %644 to %struct.textint*
  %646 = getelementptr inbounds %struct.textint, %struct.textint* %645, i32 0, i32 1
  %647 = load i64, i64* %646, align 8
  %648 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %649 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %648, i32 0, i32 7
  store i64 %647, i64* %649, align 8
  %650 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %651 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %650, i64 0
  %652 = bitcast %union.YYSTYPE* %651 to %struct.textint*
  %653 = getelementptr inbounds %struct.textint, %struct.textint* %652, i32 0, i32 1
  %654 = load i64, i64* %653, align 8
  %655 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %656 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %655, i32 0, i32 8
  store i64 %654, i64* %656, align 8
  br label %1893

657:                                              ; preds = %263
  %658 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %659 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %658, i64 -4
  %660 = bitcast %union.YYSTYPE* %659 to %struct.textint*
  %661 = getelementptr inbounds %struct.textint, %struct.textint* %660, i32 0, i32 2
  %662 = load i64, i64* %661, align 8
  %663 = icmp sle i64 4, %662
  br i1 %663, label %664, label %702

664:                                              ; preds = %657
  %665 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %666 = call i1 @debugging(%struct.parser_control* noundef %665)
  br i1 %666, label %667, label %680

667:                                              ; preds = %664
  %668 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %669 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %668, i64 -4
  %670 = bitcast %union.YYSTYPE* %669 to %struct.textint*
  %671 = getelementptr inbounds %struct.textint, %struct.textint* %670, i32 0, i32 2
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %29, align 8
  %673 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12.136, i64 0, i64 0)) #18
  %674 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %675 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %674, i64 -4
  %676 = bitcast %union.YYSTYPE* %675 to %struct.textint*
  %677 = getelementptr inbounds %struct.textint, %struct.textint* %676, i32 0, i32 1
  %678 = load i64, i64* %677, align 8
  %679 = load i64, i64* %29, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %673, i64 noundef %678, i64 noundef %679)
  br label %680

680:                                              ; preds = %667, %664
  %681 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %682 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %681, i32 0, i32 6
  %683 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %684 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %683, i64 -4
  %685 = bitcast %union.YYSTYPE* %684 to %struct.textint*
  %686 = bitcast %struct.textint* %682 to i8*
  %687 = bitcast %struct.textint* %685 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %686, i8* align 8 %687, i64 24, i1 false)
  %688 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %689 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %688, i64 -2
  %690 = bitcast %union.YYSTYPE* %689 to %struct.textint*
  %691 = getelementptr inbounds %struct.textint, %struct.textint* %690, i32 0, i32 1
  %692 = load i64, i64* %691, align 8
  %693 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %694 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %693, i32 0, i32 7
  store i64 %692, i64* %694, align 8
  %695 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %696 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %695, i64 0
  %697 = bitcast %union.YYSTYPE* %696 to %struct.textint*
  %698 = getelementptr inbounds %struct.textint, %struct.textint* %697, i32 0, i32 1
  %699 = load i64, i64* %698, align 8
  %700 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %701 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %700, i32 0, i32 8
  store i64 %699, i64* %701, align 8
  br label %734

702:                                              ; preds = %657
  %703 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %704 = call i1 @debugging(%struct.parser_control* noundef %703)
  br i1 %704, label %705, label %712

705:                                              ; preds = %702
  %706 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13.137, i64 0, i64 0)) #18
  %707 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %708 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %707, i64 -4
  %709 = bitcast %union.YYSTYPE* %708 to %struct.textint*
  %710 = getelementptr inbounds %struct.textint, %struct.textint* %709, i32 0, i32 1
  %711 = load i64, i64* %710, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %706, i64 noundef %711)
  br label %712

712:                                              ; preds = %705, %702
  %713 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %714 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %713, i64 -4
  %715 = bitcast %union.YYSTYPE* %714 to %struct.textint*
  %716 = getelementptr inbounds %struct.textint, %struct.textint* %715, i32 0, i32 1
  %717 = load i64, i64* %716, align 8
  %718 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %719 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %718, i32 0, i32 7
  store i64 %717, i64* %719, align 8
  %720 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %721 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %720, i64 -2
  %722 = bitcast %union.YYSTYPE* %721 to %struct.textint*
  %723 = getelementptr inbounds %struct.textint, %struct.textint* %722, i32 0, i32 1
  %724 = load i64, i64* %723, align 8
  %725 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %726 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %725, i32 0, i32 8
  store i64 %724, i64* %726, align 8
  %727 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %728 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %727, i32 0, i32 6
  %729 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %730 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %729, i64 0
  %731 = bitcast %union.YYSTYPE* %730 to %struct.textint*
  %732 = bitcast %struct.textint* %728 to i8*
  %733 = bitcast %struct.textint* %731 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %732, i8* align 8 %733, i64 24, i1 false)
  br label %734

734:                                              ; preds = %712, %680
  br label %1893

735:                                              ; preds = %263
  %736 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %737 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %736, i64 -3
  %738 = bitcast %union.YYSTYPE* %737 to %struct.textint*
  %739 = getelementptr inbounds %struct.textint, %struct.textint* %738, i32 0, i32 1
  %740 = load i64, i64* %739, align 8
  %741 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %742 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %741, i32 0, i32 8
  store i64 %740, i64* %742, align 8
  %743 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %743, i64 -1
  %745 = bitcast %union.YYSTYPE* %744 to %struct.textint*
  %746 = getelementptr inbounds %struct.textint, %struct.textint* %745, i32 0, i32 1
  %747 = load i64, i64* %746, align 8
  %748 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %749 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %748, i32 0, i32 7
  store i64 %747, i64* %749, align 8
  br label %1893

750:                                              ; preds = %263
  %751 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %752 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %751, i64 -4
  %753 = bitcast %union.YYSTYPE* %752 to %struct.textint*
  %754 = getelementptr inbounds %struct.textint, %struct.textint* %753, i32 0, i32 1
  %755 = load i64, i64* %754, align 8
  %756 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %757 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %756, i32 0, i32 8
  store i64 %755, i64* %757, align 8
  %758 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %759 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %758, i64 -2
  %760 = bitcast %union.YYSTYPE* %759 to %struct.textint*
  %761 = getelementptr inbounds %struct.textint, %struct.textint* %760, i32 0, i32 1
  %762 = load i64, i64* %761, align 8
  %763 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %764 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %763, i32 0, i32 7
  store i64 %762, i64* %764, align 8
  %765 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %766 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %765, i32 0, i32 6
  %767 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %768 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %767, i64 0
  %769 = bitcast %union.YYSTYPE* %768 to %struct.textint*
  %770 = bitcast %struct.textint* %766 to i8*
  %771 = bitcast %struct.textint* %769 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %770, i8* align 8 %771, i64 24, i1 false)
  br label %1893

772:                                              ; preds = %263
  %773 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %774 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %773, i64 -2
  %775 = bitcast %union.YYSTYPE* %774 to %struct.textint*
  %776 = getelementptr inbounds %struct.textint, %struct.textint* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %779 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %778, i32 0, i32 8
  store i64 %777, i64* %779, align 8
  %780 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %781 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %780, i64 -1
  %782 = bitcast %union.YYSTYPE* %781 to i64*
  %783 = load i64, i64* %782, align 8
  %784 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %785 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %784, i32 0, i32 7
  store i64 %783, i64* %785, align 8
  %786 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %787 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %786, i64 0
  %788 = bitcast %union.YYSTYPE* %787 to %struct.textint*
  %789 = getelementptr inbounds %struct.textint, %struct.textint* %788, i32 0, i32 1
  %790 = load i64, i64* %789, align 8
  %791 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %792 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %791, i32 0, i32 6
  %793 = getelementptr inbounds %struct.textint, %struct.textint* %792, i32 0, i32 1
  %794 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %790)
  %795 = extractvalue { i64, i1 } %794, 1
  %796 = extractvalue { i64, i1 } %794, 0
  store i64 %796, i64* %793, align 8
  br i1 %795, label %797, label %798

797:                                              ; preds = %772
  br label %2073

798:                                              ; preds = %772
  %799 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %800 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %799, i64 0
  %801 = bitcast %union.YYSTYPE* %800 to %struct.textint*
  %802 = getelementptr inbounds %struct.textint, %struct.textint* %801, i32 0, i32 2
  %803 = load i64, i64* %802, align 8
  %804 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %805 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %804, i32 0, i32 6
  %806 = getelementptr inbounds %struct.textint, %struct.textint* %805, i32 0, i32 2
  store i64 %803, i64* %806, align 8
  br label %1893

807:                                              ; preds = %263
  %808 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %809 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %808, i64 -2
  %810 = bitcast %union.YYSTYPE* %809 to i64*
  %811 = load i64, i64* %810, align 8
  %812 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %813 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %812, i32 0, i32 7
  store i64 %811, i64* %813, align 8
  %814 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %815 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %814, i64 -1
  %816 = bitcast %union.YYSTYPE* %815 to %struct.textint*
  %817 = getelementptr inbounds %struct.textint, %struct.textint* %816, i32 0, i32 1
  %818 = load i64, i64* %817, align 8
  %819 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %820 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %819, i32 0, i32 8
  %821 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %818)
  %822 = extractvalue { i64, i1 } %821, 1
  %823 = extractvalue { i64, i1 } %821, 0
  store i64 %823, i64* %820, align 8
  br i1 %822, label %824, label %825

824:                                              ; preds = %807
  br label %2073

825:                                              ; preds = %807
  %826 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %827 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %826, i64 0
  %828 = bitcast %union.YYSTYPE* %827 to %struct.textint*
  %829 = getelementptr inbounds %struct.textint, %struct.textint* %828, i32 0, i32 1
  %830 = load i64, i64* %829, align 8
  %831 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %832 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %831, i32 0, i32 6
  %833 = getelementptr inbounds %struct.textint, %struct.textint* %832, i32 0, i32 1
  %834 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %830)
  %835 = extractvalue { i64, i1 } %834, 1
  %836 = extractvalue { i64, i1 } %834, 0
  store i64 %836, i64* %833, align 8
  br i1 %835, label %837, label %838

837:                                              ; preds = %825
  br label %2073

838:                                              ; preds = %825
  %839 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %840 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %839, i64 0
  %841 = bitcast %union.YYSTYPE* %840 to %struct.textint*
  %842 = getelementptr inbounds %struct.textint, %struct.textint* %841, i32 0, i32 2
  %843 = load i64, i64* %842, align 8
  %844 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %845 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %844, i32 0, i32 6
  %846 = getelementptr inbounds %struct.textint, %struct.textint* %845, i32 0, i32 2
  store i64 %843, i64* %846, align 8
  br label %1893

847:                                              ; preds = %263
  %848 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %849 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %848, i64 -1
  %850 = bitcast %union.YYSTYPE* %849 to i64*
  %851 = load i64, i64* %850, align 8
  %852 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %853 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %852, i32 0, i32 7
  store i64 %851, i64* %853, align 8
  %854 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %855 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %854, i64 0
  %856 = bitcast %union.YYSTYPE* %855 to %struct.textint*
  %857 = getelementptr inbounds %struct.textint, %struct.textint* %856, i32 0, i32 1
  %858 = load i64, i64* %857, align 8
  %859 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %860 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %859, i32 0, i32 8
  store i64 %858, i64* %860, align 8
  br label %1893

861:                                              ; preds = %263
  %862 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %863 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %862, i64 -3
  %864 = bitcast %union.YYSTYPE* %863 to i64*
  %865 = load i64, i64* %864, align 8
  %866 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %867 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %866, i32 0, i32 7
  store i64 %865, i64* %867, align 8
  %868 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %869 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %868, i64 -2
  %870 = bitcast %union.YYSTYPE* %869 to %struct.textint*
  %871 = getelementptr inbounds %struct.textint, %struct.textint* %870, i32 0, i32 1
  %872 = load i64, i64* %871, align 8
  %873 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %874 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %873, i32 0, i32 8
  store i64 %872, i64* %874, align 8
  %875 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %876 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %875, i32 0, i32 6
  %877 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %878 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %877, i64 0
  %879 = bitcast %union.YYSTYPE* %878 to %struct.textint*
  %880 = bitcast %struct.textint* %876 to i8*
  %881 = bitcast %struct.textint* %879 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %880, i8* align 8 %881, i64 24, i1 false)
  br label %1893

882:                                              ; preds = %263
  %883 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %884 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %883, i64 -1
  %885 = bitcast %union.YYSTYPE* %884 to %struct.textint*
  %886 = getelementptr inbounds %struct.textint, %struct.textint* %885, i32 0, i32 1
  %887 = load i64, i64* %886, align 8
  %888 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %889 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %888, i32 0, i32 8
  store i64 %887, i64* %889, align 8
  %890 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %891 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %890, i64 0
  %892 = bitcast %union.YYSTYPE* %891 to i64*
  %893 = load i64, i64* %892, align 8
  %894 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %895 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %894, i32 0, i32 7
  store i64 %893, i64* %895, align 8
  br label %1893

896:                                              ; preds = %263
  %897 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %898 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %897, i64 -2
  %899 = bitcast %union.YYSTYPE* %898 to %struct.textint*
  %900 = getelementptr inbounds %struct.textint, %struct.textint* %899, i32 0, i32 1
  %901 = load i64, i64* %900, align 8
  %902 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %903 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %902, i32 0, i32 8
  store i64 %901, i64* %903, align 8
  %904 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %905 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %904, i64 -1
  %906 = bitcast %union.YYSTYPE* %905 to i64*
  %907 = load i64, i64* %906, align 8
  %908 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %909 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %908, i32 0, i32 7
  store i64 %907, i64* %909, align 8
  %910 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %911 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %910, i32 0, i32 6
  %912 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %913 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %912, i64 0
  %914 = bitcast %union.YYSTYPE* %913 to %struct.textint*
  %915 = bitcast %struct.textint* %911 to i8*
  %916 = bitcast %struct.textint* %914 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %915, i8* align 8 %916, i64 24, i1 false)
  br label %1893

917:                                              ; preds = %263
  %918 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %919 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %918, i32 0, i32 6
  %920 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %921 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %920, i64 -2
  %922 = bitcast %union.YYSTYPE* %921 to %struct.textint*
  %923 = bitcast %struct.textint* %919 to i8*
  %924 = bitcast %struct.textint* %922 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %923, i8* align 8 %924, i64 24, i1 false)
  %925 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %926 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %925, i64 -1
  %927 = bitcast %union.YYSTYPE* %926 to %struct.textint*
  %928 = getelementptr inbounds %struct.textint, %struct.textint* %927, i32 0, i32 1
  %929 = load i64, i64* %928, align 8
  %930 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %931 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %930, i32 0, i32 7
  %932 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %929)
  %933 = extractvalue { i64, i1 } %932, 1
  %934 = extractvalue { i64, i1 } %932, 0
  store i64 %934, i64* %931, align 8
  br i1 %933, label %935, label %936

935:                                              ; preds = %917
  br label %2073

936:                                              ; preds = %917
  %937 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %938 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %937, i64 0
  %939 = bitcast %union.YYSTYPE* %938 to %struct.textint*
  %940 = getelementptr inbounds %struct.textint, %struct.textint* %939, i32 0, i32 1
  %941 = load i64, i64* %940, align 8
  %942 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %943 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %942, i32 0, i32 8
  %944 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %941)
  %945 = extractvalue { i64, i1 } %944, 1
  %946 = extractvalue { i64, i1 } %944, 0
  store i64 %946, i64* %943, align 8
  br i1 %945, label %947, label %948

947:                                              ; preds = %936
  br label %2073

948:                                              ; preds = %936
  br label %1893

949:                                              ; preds = %263
  %950 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %951 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %952 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %951, i64 -1
  %953 = bitcast %union.YYSTYPE* %952 to %struct.relative_time*
  %954 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %955 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %954, i64 0
  %956 = bitcast %union.YYSTYPE* %955 to i64*
  %957 = load i64, i64* %956, align 8
  %958 = trunc i64 %957 to i32
  %959 = bitcast %struct.relative_time* %30 to i8*
  %960 = bitcast %struct.relative_time* %953 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %959, i8* align 8 %960, i64 56, i1 false)
  %961 = call i1 @apply_relative_time(%struct.parser_control* noundef %950, %struct.relative_time* noundef %30, i32 noundef %958)
  br i1 %961, label %963, label %962

962:                                              ; preds = %949
  br label %2073

963:                                              ; preds = %949
  br label %1893

964:                                              ; preds = %263
  %965 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %966 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %967 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %966, i64 0
  %968 = bitcast %union.YYSTYPE* %967 to %struct.relative_time*
  %969 = bitcast %struct.relative_time* %31 to i8*
  %970 = bitcast %struct.relative_time* %968 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %969, i8* align 8 %970, i64 56, i1 false)
  %971 = call i1 @apply_relative_time(%struct.parser_control* noundef %965, %struct.relative_time* noundef %31, i32 noundef 1)
  br i1 %971, label %973, label %972

972:                                              ; preds = %964
  br label %2073

973:                                              ; preds = %964
  br label %1893

974:                                              ; preds = %263
  %975 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %976 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %977 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %976, i64 0
  %978 = bitcast %union.YYSTYPE* %977 to %struct.relative_time*
  %979 = bitcast %struct.relative_time* %32 to i8*
  %980 = bitcast %struct.relative_time* %978 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %979, i8* align 8 %980, i64 56, i1 false)
  %981 = call i1 @apply_relative_time(%struct.parser_control* noundef %975, %struct.relative_time* noundef %32, i32 noundef 1)
  br i1 %981, label %983, label %982

982:                                              ; preds = %974
  br label %2073

983:                                              ; preds = %974
  br label %1893

984:                                              ; preds = %263
  %985 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %986 = bitcast %struct.relative_time* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %986, i8 0, i64 56, i1 false)
  %987 = bitcast %struct.relative_time* %985 to i8*
  %988 = bitcast %struct.relative_time* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %987, i8* align 8 %988, i64 56, i1 false)
  %989 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %990 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %989, i64 -1
  %991 = bitcast %union.YYSTYPE* %990 to i64*
  %992 = load i64, i64* %991, align 8
  %993 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %994 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %993, i32 0, i32 0
  store i64 %992, i64* %994, align 8
  br label %1893

995:                                              ; preds = %263
  %996 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %997 = bitcast %struct.relative_time* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %997, i8 0, i64 56, i1 false)
  %998 = bitcast %struct.relative_time* %996 to i8*
  %999 = bitcast %struct.relative_time* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %998, i8* align 8 %999, i64 56, i1 false)
  %1000 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1001 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1000, i64 -1
  %1002 = bitcast %union.YYSTYPE* %1001 to %struct.textint*
  %1003 = getelementptr inbounds %struct.textint, %struct.textint* %1002, i32 0, i32 1
  %1004 = load i64, i64* %1003, align 8
  %1005 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1006 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1005, i32 0, i32 0
  store i64 %1004, i64* %1006, align 8
  br label %1893

1007:                                             ; preds = %263
  %1008 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1009 = bitcast %struct.relative_time* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1009, i8 0, i64 56, i1 false)
  %1010 = bitcast %struct.relative_time* %1008 to i8*
  %1011 = bitcast %struct.relative_time* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1010, i8* align 8 %1011, i64 56, i1 false)
  %1012 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1013 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1012, i32 0, i32 0
  store i64 1, i64* %1013, align 8
  br label %1893

1014:                                             ; preds = %263
  %1015 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1016 = bitcast %struct.relative_time* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1016, i8 0, i64 56, i1 false)
  %1017 = bitcast %struct.relative_time* %1015 to i8*
  %1018 = bitcast %struct.relative_time* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1017, i8* align 8 %1018, i64 56, i1 false)
  %1019 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1020 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1019, i64 -1
  %1021 = bitcast %union.YYSTYPE* %1020 to i64*
  %1022 = load i64, i64* %1021, align 8
  %1023 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1024 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1023, i32 0, i32 1
  store i64 %1022, i64* %1024, align 8
  br label %1893

1025:                                             ; preds = %263
  %1026 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1027 = bitcast %struct.relative_time* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1027, i8 0, i64 56, i1 false)
  %1028 = bitcast %struct.relative_time* %1026 to i8*
  %1029 = bitcast %struct.relative_time* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1028, i8* align 8 %1029, i64 56, i1 false)
  %1030 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1031 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1030, i64 -1
  %1032 = bitcast %union.YYSTYPE* %1031 to %struct.textint*
  %1033 = getelementptr inbounds %struct.textint, %struct.textint* %1032, i32 0, i32 1
  %1034 = load i64, i64* %1033, align 8
  %1035 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1036 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1035, i32 0, i32 1
  store i64 %1034, i64* %1036, align 8
  br label %1893

1037:                                             ; preds = %263
  %1038 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1039 = bitcast %struct.relative_time* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1039, i8 0, i64 56, i1 false)
  %1040 = bitcast %struct.relative_time* %1038 to i8*
  %1041 = bitcast %struct.relative_time* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1040, i8* align 8 %1041, i64 56, i1 false)
  %1042 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1043 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1042, i32 0, i32 1
  store i64 1, i64* %1043, align 8
  br label %1893

1044:                                             ; preds = %263
  %1045 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1046 = bitcast %struct.relative_time* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1046, i8 0, i64 56, i1 false)
  %1047 = bitcast %struct.relative_time* %1045 to i8*
  %1048 = bitcast %struct.relative_time* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1047, i8* align 8 %1048, i64 56, i1 false)
  %1049 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1050 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1049, i64 0
  %1051 = bitcast %union.YYSTYPE* %1050 to i64*
  %1052 = load i64, i64* %1051, align 8
  %1053 = icmp slt i64 %1052, 0
  br i1 %1053, label %1054, label %1139

1054:                                             ; preds = %1044
  %1055 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1056 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1055, i64 -1
  %1057 = bitcast %union.YYSTYPE* %1056 to i64*
  %1058 = load i64, i64* %1057, align 8
  %1059 = icmp slt i64 %1058, 0
  br i1 %1059, label %1060, label %1101

1060:                                             ; preds = %1054
  br i1 true, label %1061, label %1072

1061:                                             ; preds = %1060
  %1062 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1063 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1062, i64 -1
  %1064 = bitcast %union.YYSTYPE* %1063 to i64*
  %1065 = load i64, i64* %1064, align 8
  %1066 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1067 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1066, i64 0
  %1068 = bitcast %union.YYSTYPE* %1067 to i64*
  %1069 = load i64, i64* %1068, align 8
  %1070 = sdiv i64 9223372036854775807, %1069
  %1071 = icmp slt i64 %1065, %1070
  br i1 %1071, label %1195, label %1207

1072:                                             ; preds = %1060
  br i1 true, label %1073, label %1079

1073:                                             ; preds = %1072
  %1074 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1075 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1074, i64 0
  %1076 = bitcast %union.YYSTYPE* %1075 to i64*
  %1077 = load i64, i64* %1076, align 8
  %1078 = icmp slt i64 %1077, -9223372036854775807
  br i1 %1078, label %1085, label %1086

1079:                                             ; preds = %1072
  %1080 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1081 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1080, i64 0
  %1082 = bitcast %union.YYSTYPE* %1081 to i64*
  %1083 = load i64, i64* %1082, align 8
  %1084 = icmp slt i64 0, %1083
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1079, %1073
  br label %1093

1086:                                             ; preds = %1079, %1073
  %1087 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1088 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1087, i64 0
  %1089 = bitcast %union.YYSTYPE* %1088 to i64*
  %1090 = load i64, i64* %1089, align 8
  %1091 = sub nsw i64 0, %1090
  %1092 = sdiv i64 9223372036854775807, %1091
  br label %1093

1093:                                             ; preds = %1086, %1085
  %1094 = phi i64 [ 0, %1085 ], [ %1092, %1086 ]
  %1095 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1096 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1095, i64 -1
  %1097 = bitcast %union.YYSTYPE* %1096 to i64*
  %1098 = load i64, i64* %1097, align 8
  %1099 = sub nsw i64 -1, %1098
  %1100 = icmp sle i64 %1094, %1099
  br i1 %1100, label %1195, label %1207

1101:                                             ; preds = %1054
  %1102 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1103 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1102, i64 0
  %1104 = bitcast %union.YYSTYPE* %1103 to i64*
  %1105 = load i64, i64* %1104, align 8
  %1106 = icmp eq i64 %1105, -1
  br i1 %1106, label %1107, label %1128

1107:                                             ; preds = %1101
  br i1 true, label %1108, label %1115

1108:                                             ; preds = %1107
  %1109 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1110 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1109, i64 -1
  %1111 = bitcast %union.YYSTYPE* %1110 to i64*
  %1112 = load i64, i64* %1111, align 8
  %1113 = add nsw i64 %1112, -9223372036854775808
  %1114 = icmp slt i64 0, %1113
  br i1 %1114, label %1195, label %1207

1115:                                             ; preds = %1107
  %1116 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1117 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1116, i64 -1
  %1118 = bitcast %union.YYSTYPE* %1117 to i64*
  %1119 = load i64, i64* %1118, align 8
  %1120 = icmp slt i64 0, %1119
  br i1 %1120, label %1121, label %1207

1121:                                             ; preds = %1115
  %1122 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1123 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1122, i64 -1
  %1124 = bitcast %union.YYSTYPE* %1123 to i64*
  %1125 = load i64, i64* %1124, align 8
  %1126 = sub nsw i64 %1125, 1
  %1127 = icmp slt i64 9223372036854775807, %1126
  br i1 %1127, label %1195, label %1207

1128:                                             ; preds = %1101
  %1129 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1130 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1129, i64 0
  %1131 = bitcast %union.YYSTYPE* %1130 to i64*
  %1132 = load i64, i64* %1131, align 8
  %1133 = sdiv i64 -9223372036854775808, %1132
  %1134 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1135 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1134, i64 -1
  %1136 = bitcast %union.YYSTYPE* %1135 to i64*
  %1137 = load i64, i64* %1136, align 8
  %1138 = icmp slt i64 %1133, %1137
  br i1 %1138, label %1195, label %1207

1139:                                             ; preds = %1044
  %1140 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1140, i64 0
  %1142 = bitcast %union.YYSTYPE* %1141 to i64*
  %1143 = load i64, i64* %1142, align 8
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1145, label %1146

1145:                                             ; preds = %1139
  br i1 false, label %1195, label %1207

1146:                                             ; preds = %1139
  %1147 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1147, i64 -1
  %1149 = bitcast %union.YYSTYPE* %1148 to i64*
  %1150 = load i64, i64* %1149, align 8
  %1151 = icmp slt i64 %1150, 0
  br i1 %1151, label %1152, label %1184

1152:                                             ; preds = %1146
  %1153 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1154 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1153, i64 -1
  %1155 = bitcast %union.YYSTYPE* %1154 to i64*
  %1156 = load i64, i64* %1155, align 8
  %1157 = icmp eq i64 %1156, -1
  br i1 %1157, label %1158, label %1173

1158:                                             ; preds = %1152
  br i1 true, label %1159, label %1166

1159:                                             ; preds = %1158
  %1160 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1161 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1160, i64 0
  %1162 = bitcast %union.YYSTYPE* %1161 to i64*
  %1163 = load i64, i64* %1162, align 8
  %1164 = add nsw i64 %1163, -9223372036854775808
  %1165 = icmp slt i64 0, %1164
  br i1 %1165, label %1195, label %1207

1166:                                             ; preds = %1158
  %1167 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1167, i64 0
  %1169 = bitcast %union.YYSTYPE* %1168 to i64*
  %1170 = load i64, i64* %1169, align 8
  %1171 = sub nsw i64 %1170, 1
  %1172 = icmp slt i64 9223372036854775807, %1171
  br i1 %1172, label %1195, label %1207

1173:                                             ; preds = %1152
  %1174 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1174, i64 -1
  %1176 = bitcast %union.YYSTYPE* %1175 to i64*
  %1177 = load i64, i64* %1176, align 8
  %1178 = sdiv i64 -9223372036854775808, %1177
  %1179 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1180 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1179, i64 0
  %1181 = bitcast %union.YYSTYPE* %1180 to i64*
  %1182 = load i64, i64* %1181, align 8
  %1183 = icmp slt i64 %1178, %1182
  br i1 %1183, label %1195, label %1207

1184:                                             ; preds = %1146
  %1185 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1185, i64 0
  %1187 = bitcast %union.YYSTYPE* %1186 to i64*
  %1188 = load i64, i64* %1187, align 8
  %1189 = sdiv i64 9223372036854775807, %1188
  %1190 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1191 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1190, i64 -1
  %1192 = bitcast %union.YYSTYPE* %1191 to i64*
  %1193 = load i64, i64* %1192, align 8
  %1194 = icmp slt i64 %1189, %1193
  br i1 %1194, label %1195, label %1207

1195:                                             ; preds = %1184, %1173, %1166, %1159, %1145, %1128, %1121, %1108, %1093, %1061
  %1196 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1197 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1196, i64 -1
  %1198 = bitcast %union.YYSTYPE* %1197 to i64*
  %1199 = load i64, i64* %1198, align 8
  %1200 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1201 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1200, i64 0
  %1202 = bitcast %union.YYSTYPE* %1201 to i64*
  %1203 = load i64, i64* %1202, align 8
  %1204 = mul i64 %1199, %1203
  %1205 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1206 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1205, i32 0, i32 2
  store i64 %1204, i64* %1206, align 8
  br label %1219

1207:                                             ; preds = %1184, %1173, %1166, %1159, %1145, %1128, %1121, %1115, %1108, %1093, %1061
  %1208 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1209 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1208, i64 -1
  %1210 = bitcast %union.YYSTYPE* %1209 to i64*
  %1211 = load i64, i64* %1210, align 8
  %1212 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1213 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1212, i64 0
  %1214 = bitcast %union.YYSTYPE* %1213 to i64*
  %1215 = load i64, i64* %1214, align 8
  %1216 = mul i64 %1211, %1215
  %1217 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1218 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1217, i32 0, i32 2
  store i64 %1216, i64* %1218, align 8
  br label %1219

1219:                                             ; preds = %1207, %1195
  %1220 = phi i32 [ 1, %1195 ], [ 0, %1207 ]
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1222, label %1223

1222:                                             ; preds = %1219
  br label %2073

1223:                                             ; preds = %1219
  br label %1893

1224:                                             ; preds = %263
  %1225 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1226 = bitcast %struct.relative_time* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1226, i8 0, i64 56, i1 false)
  %1227 = bitcast %struct.relative_time* %1225 to i8*
  %1228 = bitcast %struct.relative_time* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1227, i8* align 8 %1228, i64 56, i1 false)
  %1229 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1230 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1229, i64 0
  %1231 = bitcast %union.YYSTYPE* %1230 to i64*
  %1232 = load i64, i64* %1231, align 8
  %1233 = icmp slt i64 %1232, 0
  br i1 %1233, label %1234, label %1326

1234:                                             ; preds = %1224
  %1235 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1236 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1235, i64 -1
  %1237 = bitcast %union.YYSTYPE* %1236 to %struct.textint*
  %1238 = getelementptr inbounds %struct.textint, %struct.textint* %1237, i32 0, i32 1
  %1239 = load i64, i64* %1238, align 8
  %1240 = icmp slt i64 %1239, 0
  br i1 %1240, label %1241, label %1284

1241:                                             ; preds = %1234
  br i1 true, label %1242, label %1254

1242:                                             ; preds = %1241
  %1243 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1244 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1243, i64 -1
  %1245 = bitcast %union.YYSTYPE* %1244 to %struct.textint*
  %1246 = getelementptr inbounds %struct.textint, %struct.textint* %1245, i32 0, i32 1
  %1247 = load i64, i64* %1246, align 8
  %1248 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1248, i64 0
  %1250 = bitcast %union.YYSTYPE* %1249 to i64*
  %1251 = load i64, i64* %1250, align 8
  %1252 = sdiv i64 9223372036854775807, %1251
  %1253 = icmp slt i64 %1247, %1252
  br i1 %1253, label %1386, label %1399

1254:                                             ; preds = %1241
  br i1 true, label %1255, label %1261

1255:                                             ; preds = %1254
  %1256 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1257 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1256, i64 0
  %1258 = bitcast %union.YYSTYPE* %1257 to i64*
  %1259 = load i64, i64* %1258, align 8
  %1260 = icmp slt i64 %1259, -9223372036854775807
  br i1 %1260, label %1267, label %1268

1261:                                             ; preds = %1254
  %1262 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1263 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1262, i64 0
  %1264 = bitcast %union.YYSTYPE* %1263 to i64*
  %1265 = load i64, i64* %1264, align 8
  %1266 = icmp slt i64 0, %1265
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1261, %1255
  br label %1275

1268:                                             ; preds = %1261, %1255
  %1269 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1270 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1269, i64 0
  %1271 = bitcast %union.YYSTYPE* %1270 to i64*
  %1272 = load i64, i64* %1271, align 8
  %1273 = sub nsw i64 0, %1272
  %1274 = sdiv i64 9223372036854775807, %1273
  br label %1275

1275:                                             ; preds = %1268, %1267
  %1276 = phi i64 [ 0, %1267 ], [ %1274, %1268 ]
  %1277 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1277, i64 -1
  %1279 = bitcast %union.YYSTYPE* %1278 to %struct.textint*
  %1280 = getelementptr inbounds %struct.textint, %struct.textint* %1279, i32 0, i32 1
  %1281 = load i64, i64* %1280, align 8
  %1282 = sub nsw i64 -1, %1281
  %1283 = icmp sle i64 %1276, %1282
  br i1 %1283, label %1386, label %1399

1284:                                             ; preds = %1234
  %1285 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1285, i64 0
  %1287 = bitcast %union.YYSTYPE* %1286 to i64*
  %1288 = load i64, i64* %1287, align 8
  %1289 = icmp eq i64 %1288, -1
  br i1 %1289, label %1290, label %1314

1290:                                             ; preds = %1284
  br i1 true, label %1291, label %1299

1291:                                             ; preds = %1290
  %1292 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1293 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1292, i64 -1
  %1294 = bitcast %union.YYSTYPE* %1293 to %struct.textint*
  %1295 = getelementptr inbounds %struct.textint, %struct.textint* %1294, i32 0, i32 1
  %1296 = load i64, i64* %1295, align 8
  %1297 = add nsw i64 %1296, -9223372036854775808
  %1298 = icmp slt i64 0, %1297
  br i1 %1298, label %1386, label %1399

1299:                                             ; preds = %1290
  %1300 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1301 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1300, i64 -1
  %1302 = bitcast %union.YYSTYPE* %1301 to %struct.textint*
  %1303 = getelementptr inbounds %struct.textint, %struct.textint* %1302, i32 0, i32 1
  %1304 = load i64, i64* %1303, align 8
  %1305 = icmp slt i64 0, %1304
  br i1 %1305, label %1306, label %1399

1306:                                             ; preds = %1299
  %1307 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1308 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1307, i64 -1
  %1309 = bitcast %union.YYSTYPE* %1308 to %struct.textint*
  %1310 = getelementptr inbounds %struct.textint, %struct.textint* %1309, i32 0, i32 1
  %1311 = load i64, i64* %1310, align 8
  %1312 = sub nsw i64 %1311, 1
  %1313 = icmp slt i64 9223372036854775807, %1312
  br i1 %1313, label %1386, label %1399

1314:                                             ; preds = %1284
  %1315 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1316 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1315, i64 0
  %1317 = bitcast %union.YYSTYPE* %1316 to i64*
  %1318 = load i64, i64* %1317, align 8
  %1319 = sdiv i64 -9223372036854775808, %1318
  %1320 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1321 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1320, i64 -1
  %1322 = bitcast %union.YYSTYPE* %1321 to %struct.textint*
  %1323 = getelementptr inbounds %struct.textint, %struct.textint* %1322, i32 0, i32 1
  %1324 = load i64, i64* %1323, align 8
  %1325 = icmp slt i64 %1319, %1324
  br i1 %1325, label %1386, label %1399

1326:                                             ; preds = %1224
  %1327 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1328 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1327, i64 0
  %1329 = bitcast %union.YYSTYPE* %1328 to i64*
  %1330 = load i64, i64* %1329, align 8
  %1331 = icmp eq i64 %1330, 0
  br i1 %1331, label %1332, label %1333

1332:                                             ; preds = %1326
  br i1 false, label %1386, label %1399

1333:                                             ; preds = %1326
  %1334 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1335 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1334, i64 -1
  %1336 = bitcast %union.YYSTYPE* %1335 to %struct.textint*
  %1337 = getelementptr inbounds %struct.textint, %struct.textint* %1336, i32 0, i32 1
  %1338 = load i64, i64* %1337, align 8
  %1339 = icmp slt i64 %1338, 0
  br i1 %1339, label %1340, label %1374

1340:                                             ; preds = %1333
  %1341 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1342 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1341, i64 -1
  %1343 = bitcast %union.YYSTYPE* %1342 to %struct.textint*
  %1344 = getelementptr inbounds %struct.textint, %struct.textint* %1343, i32 0, i32 1
  %1345 = load i64, i64* %1344, align 8
  %1346 = icmp eq i64 %1345, -1
  br i1 %1346, label %1347, label %1362

1347:                                             ; preds = %1340
  br i1 true, label %1348, label %1355

1348:                                             ; preds = %1347
  %1349 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1350 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1349, i64 0
  %1351 = bitcast %union.YYSTYPE* %1350 to i64*
  %1352 = load i64, i64* %1351, align 8
  %1353 = add nsw i64 %1352, -9223372036854775808
  %1354 = icmp slt i64 0, %1353
  br i1 %1354, label %1386, label %1399

1355:                                             ; preds = %1347
  %1356 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1357 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1356, i64 0
  %1358 = bitcast %union.YYSTYPE* %1357 to i64*
  %1359 = load i64, i64* %1358, align 8
  %1360 = sub nsw i64 %1359, 1
  %1361 = icmp slt i64 9223372036854775807, %1360
  br i1 %1361, label %1386, label %1399

1362:                                             ; preds = %1340
  %1363 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1364 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1363, i64 -1
  %1365 = bitcast %union.YYSTYPE* %1364 to %struct.textint*
  %1366 = getelementptr inbounds %struct.textint, %struct.textint* %1365, i32 0, i32 1
  %1367 = load i64, i64* %1366, align 8
  %1368 = sdiv i64 -9223372036854775808, %1367
  %1369 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1370 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1369, i64 0
  %1371 = bitcast %union.YYSTYPE* %1370 to i64*
  %1372 = load i64, i64* %1371, align 8
  %1373 = icmp slt i64 %1368, %1372
  br i1 %1373, label %1386, label %1399

1374:                                             ; preds = %1333
  %1375 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1376 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1375, i64 0
  %1377 = bitcast %union.YYSTYPE* %1376 to i64*
  %1378 = load i64, i64* %1377, align 8
  %1379 = sdiv i64 9223372036854775807, %1378
  %1380 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1381 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1380, i64 -1
  %1382 = bitcast %union.YYSTYPE* %1381 to %struct.textint*
  %1383 = getelementptr inbounds %struct.textint, %struct.textint* %1382, i32 0, i32 1
  %1384 = load i64, i64* %1383, align 8
  %1385 = icmp slt i64 %1379, %1384
  br i1 %1385, label %1386, label %1399

1386:                                             ; preds = %1374, %1362, %1355, %1348, %1332, %1314, %1306, %1291, %1275, %1242
  %1387 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1388 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1387, i64 -1
  %1389 = bitcast %union.YYSTYPE* %1388 to %struct.textint*
  %1390 = getelementptr inbounds %struct.textint, %struct.textint* %1389, i32 0, i32 1
  %1391 = load i64, i64* %1390, align 8
  %1392 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1393 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1392, i64 0
  %1394 = bitcast %union.YYSTYPE* %1393 to i64*
  %1395 = load i64, i64* %1394, align 8
  %1396 = mul i64 %1391, %1395
  %1397 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1398 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1397, i32 0, i32 2
  store i64 %1396, i64* %1398, align 8
  br label %1412

1399:                                             ; preds = %1374, %1362, %1355, %1348, %1332, %1314, %1306, %1299, %1291, %1275, %1242
  %1400 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1401 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1400, i64 -1
  %1402 = bitcast %union.YYSTYPE* %1401 to %struct.textint*
  %1403 = getelementptr inbounds %struct.textint, %struct.textint* %1402, i32 0, i32 1
  %1404 = load i64, i64* %1403, align 8
  %1405 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1406 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1405, i64 0
  %1407 = bitcast %union.YYSTYPE* %1406 to i64*
  %1408 = load i64, i64* %1407, align 8
  %1409 = mul i64 %1404, %1408
  %1410 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1411 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1410, i32 0, i32 2
  store i64 %1409, i64* %1411, align 8
  br label %1412

1412:                                             ; preds = %1399, %1386
  %1413 = phi i32 [ 1, %1386 ], [ 0, %1399 ]
  %1414 = icmp ne i32 %1413, 0
  br i1 %1414, label %1415, label %1416

1415:                                             ; preds = %1412
  br label %2073

1416:                                             ; preds = %1412
  br label %1893

1417:                                             ; preds = %263
  %1418 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1419 = bitcast %struct.relative_time* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1419, i8 0, i64 56, i1 false)
  %1420 = bitcast %struct.relative_time* %1418 to i8*
  %1421 = bitcast %struct.relative_time* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1420, i8* align 8 %1421, i64 56, i1 false)
  %1422 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1423 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1422, i64 0
  %1424 = bitcast %union.YYSTYPE* %1423 to i64*
  %1425 = load i64, i64* %1424, align 8
  %1426 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1427 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1426, i32 0, i32 2
  store i64 %1425, i64* %1427, align 8
  br label %1893

1428:                                             ; preds = %263
  %1429 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1430 = bitcast %struct.relative_time* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1430, i8 0, i64 56, i1 false)
  %1431 = bitcast %struct.relative_time* %1429 to i8*
  %1432 = bitcast %struct.relative_time* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1431, i8* align 8 %1432, i64 56, i1 false)
  %1433 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1434 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1433, i64 -1
  %1435 = bitcast %union.YYSTYPE* %1434 to i64*
  %1436 = load i64, i64* %1435, align 8
  %1437 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1438 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1437, i32 0, i32 3
  store i64 %1436, i64* %1438, align 8
  br label %1893

1439:                                             ; preds = %263
  %1440 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1441 = bitcast %struct.relative_time* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1441, i8 0, i64 56, i1 false)
  %1442 = bitcast %struct.relative_time* %1440 to i8*
  %1443 = bitcast %struct.relative_time* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1442, i8* align 8 %1443, i64 56, i1 false)
  %1444 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1445 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1444, i64 -1
  %1446 = bitcast %union.YYSTYPE* %1445 to %struct.textint*
  %1447 = getelementptr inbounds %struct.textint, %struct.textint* %1446, i32 0, i32 1
  %1448 = load i64, i64* %1447, align 8
  %1449 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1450 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1449, i32 0, i32 3
  store i64 %1448, i64* %1450, align 8
  br label %1893

1451:                                             ; preds = %263
  %1452 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1453 = bitcast %struct.relative_time* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1453, i8 0, i64 56, i1 false)
  %1454 = bitcast %struct.relative_time* %1452 to i8*
  %1455 = bitcast %struct.relative_time* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1454, i8* align 8 %1455, i64 56, i1 false)
  %1456 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1457 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1456, i32 0, i32 3
  store i64 1, i64* %1457, align 8
  br label %1893

1458:                                             ; preds = %263
  %1459 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1460 = bitcast %struct.relative_time* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1460, i8 0, i64 56, i1 false)
  %1461 = bitcast %struct.relative_time* %1459 to i8*
  %1462 = bitcast %struct.relative_time* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1461, i8* align 8 %1462, i64 56, i1 false)
  %1463 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1464 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1463, i64 -1
  %1465 = bitcast %union.YYSTYPE* %1464 to i64*
  %1466 = load i64, i64* %1465, align 8
  %1467 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1468 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1467, i32 0, i32 4
  store i64 %1466, i64* %1468, align 8
  br label %1893

1469:                                             ; preds = %263
  %1470 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1471 = bitcast %struct.relative_time* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1471, i8 0, i64 56, i1 false)
  %1472 = bitcast %struct.relative_time* %1470 to i8*
  %1473 = bitcast %struct.relative_time* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1472, i8* align 8 %1473, i64 56, i1 false)
  %1474 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1475 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1474, i64 -1
  %1476 = bitcast %union.YYSTYPE* %1475 to %struct.textint*
  %1477 = getelementptr inbounds %struct.textint, %struct.textint* %1476, i32 0, i32 1
  %1478 = load i64, i64* %1477, align 8
  %1479 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1480 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1479, i32 0, i32 4
  store i64 %1478, i64* %1480, align 8
  br label %1893

1481:                                             ; preds = %263
  %1482 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1483 = bitcast %struct.relative_time* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1483, i8 0, i64 56, i1 false)
  %1484 = bitcast %struct.relative_time* %1482 to i8*
  %1485 = bitcast %struct.relative_time* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1484, i8* align 8 %1485, i64 56, i1 false)
  %1486 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1487 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1486, i32 0, i32 4
  store i64 1, i64* %1487, align 8
  br label %1893

1488:                                             ; preds = %263
  %1489 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1490 = bitcast %struct.relative_time* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1490, i8 0, i64 56, i1 false)
  %1491 = bitcast %struct.relative_time* %1489 to i8*
  %1492 = bitcast %struct.relative_time* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1491, i8* align 8 %1492, i64 56, i1 false)
  %1493 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1494 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1493, i64 -1
  %1495 = bitcast %union.YYSTYPE* %1494 to i64*
  %1496 = load i64, i64* %1495, align 8
  %1497 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1498 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1497, i32 0, i32 5
  store i64 %1496, i64* %1498, align 8
  br label %1893

1499:                                             ; preds = %263
  %1500 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1501 = bitcast %struct.relative_time* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1501, i8 0, i64 56, i1 false)
  %1502 = bitcast %struct.relative_time* %1500 to i8*
  %1503 = bitcast %struct.relative_time* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1502, i8* align 8 %1503, i64 56, i1 false)
  %1504 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1505 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1504, i64 -1
  %1506 = bitcast %union.YYSTYPE* %1505 to %struct.textint*
  %1507 = getelementptr inbounds %struct.textint, %struct.textint* %1506, i32 0, i32 1
  %1508 = load i64, i64* %1507, align 8
  %1509 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1510 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1509, i32 0, i32 5
  store i64 %1508, i64* %1510, align 8
  br label %1893

1511:                                             ; preds = %263
  %1512 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1513 = bitcast %struct.relative_time* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1513, i8 0, i64 56, i1 false)
  %1514 = bitcast %struct.relative_time* %1512 to i8*
  %1515 = bitcast %struct.relative_time* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1514, i8* align 8 %1515, i64 56, i1 false)
  %1516 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1517 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1516, i64 -1
  %1518 = bitcast %union.YYSTYPE* %1517 to %struct.timespec*
  %1519 = getelementptr inbounds %struct.timespec, %struct.timespec* %1518, i32 0, i32 0
  %1520 = load i64, i64* %1519, align 8
  %1521 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1522 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1521, i32 0, i32 5
  store i64 %1520, i64* %1522, align 8
  %1523 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1524 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1523, i64 -1
  %1525 = bitcast %union.YYSTYPE* %1524 to %struct.timespec*
  %1526 = getelementptr inbounds %struct.timespec, %struct.timespec* %1525, i32 0, i32 1
  %1527 = load i64, i64* %1526, align 8
  %1528 = trunc i64 %1527 to i32
  %1529 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1530 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1529, i32 0, i32 6
  store i32 %1528, i32* %1530, align 8
  br label %1893

1531:                                             ; preds = %263
  %1532 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1533 = bitcast %struct.relative_time* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1533, i8 0, i64 56, i1 false)
  %1534 = bitcast %struct.relative_time* %1532 to i8*
  %1535 = bitcast %struct.relative_time* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1534, i8* align 8 %1535, i64 56, i1 false)
  %1536 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1537 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1536, i64 -1
  %1538 = bitcast %union.YYSTYPE* %1537 to %struct.timespec*
  %1539 = getelementptr inbounds %struct.timespec, %struct.timespec* %1538, i32 0, i32 0
  %1540 = load i64, i64* %1539, align 8
  %1541 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1542 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1541, i32 0, i32 5
  store i64 %1540, i64* %1542, align 8
  %1543 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1544 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1543, i64 -1
  %1545 = bitcast %union.YYSTYPE* %1544 to %struct.timespec*
  %1546 = getelementptr inbounds %struct.timespec, %struct.timespec* %1545, i32 0, i32 1
  %1547 = load i64, i64* %1546, align 8
  %1548 = trunc i64 %1547 to i32
  %1549 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1550 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1549, i32 0, i32 6
  store i32 %1548, i32* %1550, align 8
  br label %1893

1551:                                             ; preds = %263
  %1552 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1553 = bitcast %struct.relative_time* %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1553, i8 0, i64 56, i1 false)
  %1554 = bitcast %struct.relative_time* %1552 to i8*
  %1555 = bitcast %struct.relative_time* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1554, i8* align 8 %1555, i64 56, i1 false)
  %1556 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1557 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1556, i32 0, i32 5
  store i64 1, i64* %1557, align 8
  br label %1893

1558:                                             ; preds = %263
  %1559 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1560 = bitcast %struct.relative_time* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1560, i8 0, i64 56, i1 false)
  %1561 = bitcast %struct.relative_time* %1559 to i8*
  %1562 = bitcast %struct.relative_time* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1561, i8* align 8 %1562, i64 56, i1 false)
  %1563 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1564 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1563, i64 -1
  %1565 = bitcast %union.YYSTYPE* %1564 to %struct.textint*
  %1566 = getelementptr inbounds %struct.textint, %struct.textint* %1565, i32 0, i32 1
  %1567 = load i64, i64* %1566, align 8
  %1568 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1569 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1568, i32 0, i32 0
  store i64 %1567, i64* %1569, align 8
  br label %1893

1570:                                             ; preds = %263
  %1571 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1572 = bitcast %struct.relative_time* %54 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1572, i8 0, i64 56, i1 false)
  %1573 = bitcast %struct.relative_time* %1571 to i8*
  %1574 = bitcast %struct.relative_time* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1573, i8* align 8 %1574, i64 56, i1 false)
  %1575 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1576 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1575, i64 -1
  %1577 = bitcast %union.YYSTYPE* %1576 to %struct.textint*
  %1578 = getelementptr inbounds %struct.textint, %struct.textint* %1577, i32 0, i32 1
  %1579 = load i64, i64* %1578, align 8
  %1580 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1581 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1580, i32 0, i32 1
  store i64 %1579, i64* %1581, align 8
  br label %1893

1582:                                             ; preds = %263
  %1583 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1584 = bitcast %struct.relative_time* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1584, i8 0, i64 56, i1 false)
  %1585 = bitcast %struct.relative_time* %1583 to i8*
  %1586 = bitcast %struct.relative_time* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1585, i8* align 8 %1586, i64 56, i1 false)
  %1587 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1588 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1587, i64 0
  %1589 = bitcast %union.YYSTYPE* %1588 to i64*
  %1590 = load i64, i64* %1589, align 8
  %1591 = icmp slt i64 %1590, 0
  br i1 %1591, label %1592, label %1684

1592:                                             ; preds = %1582
  %1593 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1594 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1593, i64 -1
  %1595 = bitcast %union.YYSTYPE* %1594 to %struct.textint*
  %1596 = getelementptr inbounds %struct.textint, %struct.textint* %1595, i32 0, i32 1
  %1597 = load i64, i64* %1596, align 8
  %1598 = icmp slt i64 %1597, 0
  br i1 %1598, label %1599, label %1642

1599:                                             ; preds = %1592
  br i1 true, label %1600, label %1612

1600:                                             ; preds = %1599
  %1601 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1602 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1601, i64 -1
  %1603 = bitcast %union.YYSTYPE* %1602 to %struct.textint*
  %1604 = getelementptr inbounds %struct.textint, %struct.textint* %1603, i32 0, i32 1
  %1605 = load i64, i64* %1604, align 8
  %1606 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1607 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1606, i64 0
  %1608 = bitcast %union.YYSTYPE* %1607 to i64*
  %1609 = load i64, i64* %1608, align 8
  %1610 = sdiv i64 9223372036854775807, %1609
  %1611 = icmp slt i64 %1605, %1610
  br i1 %1611, label %1744, label %1757

1612:                                             ; preds = %1599
  br i1 true, label %1613, label %1619

1613:                                             ; preds = %1612
  %1614 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1615 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1614, i64 0
  %1616 = bitcast %union.YYSTYPE* %1615 to i64*
  %1617 = load i64, i64* %1616, align 8
  %1618 = icmp slt i64 %1617, -9223372036854775807
  br i1 %1618, label %1625, label %1626

1619:                                             ; preds = %1612
  %1620 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1621 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1620, i64 0
  %1622 = bitcast %union.YYSTYPE* %1621 to i64*
  %1623 = load i64, i64* %1622, align 8
  %1624 = icmp slt i64 0, %1623
  br i1 %1624, label %1625, label %1626

1625:                                             ; preds = %1619, %1613
  br label %1633

1626:                                             ; preds = %1619, %1613
  %1627 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1628 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1627, i64 0
  %1629 = bitcast %union.YYSTYPE* %1628 to i64*
  %1630 = load i64, i64* %1629, align 8
  %1631 = sub nsw i64 0, %1630
  %1632 = sdiv i64 9223372036854775807, %1631
  br label %1633

1633:                                             ; preds = %1626, %1625
  %1634 = phi i64 [ 0, %1625 ], [ %1632, %1626 ]
  %1635 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1636 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1635, i64 -1
  %1637 = bitcast %union.YYSTYPE* %1636 to %struct.textint*
  %1638 = getelementptr inbounds %struct.textint, %struct.textint* %1637, i32 0, i32 1
  %1639 = load i64, i64* %1638, align 8
  %1640 = sub nsw i64 -1, %1639
  %1641 = icmp sle i64 %1634, %1640
  br i1 %1641, label %1744, label %1757

1642:                                             ; preds = %1592
  %1643 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1644 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1643, i64 0
  %1645 = bitcast %union.YYSTYPE* %1644 to i64*
  %1646 = load i64, i64* %1645, align 8
  %1647 = icmp eq i64 %1646, -1
  br i1 %1647, label %1648, label %1672

1648:                                             ; preds = %1642
  br i1 true, label %1649, label %1657

1649:                                             ; preds = %1648
  %1650 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1651 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1650, i64 -1
  %1652 = bitcast %union.YYSTYPE* %1651 to %struct.textint*
  %1653 = getelementptr inbounds %struct.textint, %struct.textint* %1652, i32 0, i32 1
  %1654 = load i64, i64* %1653, align 8
  %1655 = add nsw i64 %1654, -9223372036854775808
  %1656 = icmp slt i64 0, %1655
  br i1 %1656, label %1744, label %1757

1657:                                             ; preds = %1648
  %1658 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1659 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1658, i64 -1
  %1660 = bitcast %union.YYSTYPE* %1659 to %struct.textint*
  %1661 = getelementptr inbounds %struct.textint, %struct.textint* %1660, i32 0, i32 1
  %1662 = load i64, i64* %1661, align 8
  %1663 = icmp slt i64 0, %1662
  br i1 %1663, label %1664, label %1757

1664:                                             ; preds = %1657
  %1665 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1666 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1665, i64 -1
  %1667 = bitcast %union.YYSTYPE* %1666 to %struct.textint*
  %1668 = getelementptr inbounds %struct.textint, %struct.textint* %1667, i32 0, i32 1
  %1669 = load i64, i64* %1668, align 8
  %1670 = sub nsw i64 %1669, 1
  %1671 = icmp slt i64 9223372036854775807, %1670
  br i1 %1671, label %1744, label %1757

1672:                                             ; preds = %1642
  %1673 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1674 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1673, i64 0
  %1675 = bitcast %union.YYSTYPE* %1674 to i64*
  %1676 = load i64, i64* %1675, align 8
  %1677 = sdiv i64 -9223372036854775808, %1676
  %1678 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1679 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1678, i64 -1
  %1680 = bitcast %union.YYSTYPE* %1679 to %struct.textint*
  %1681 = getelementptr inbounds %struct.textint, %struct.textint* %1680, i32 0, i32 1
  %1682 = load i64, i64* %1681, align 8
  %1683 = icmp slt i64 %1677, %1682
  br i1 %1683, label %1744, label %1757

1684:                                             ; preds = %1582
  %1685 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1686 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1685, i64 0
  %1687 = bitcast %union.YYSTYPE* %1686 to i64*
  %1688 = load i64, i64* %1687, align 8
  %1689 = icmp eq i64 %1688, 0
  br i1 %1689, label %1690, label %1691

1690:                                             ; preds = %1684
  br i1 false, label %1744, label %1757

1691:                                             ; preds = %1684
  %1692 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1693 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1692, i64 -1
  %1694 = bitcast %union.YYSTYPE* %1693 to %struct.textint*
  %1695 = getelementptr inbounds %struct.textint, %struct.textint* %1694, i32 0, i32 1
  %1696 = load i64, i64* %1695, align 8
  %1697 = icmp slt i64 %1696, 0
  br i1 %1697, label %1698, label %1732

1698:                                             ; preds = %1691
  %1699 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1700 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1699, i64 -1
  %1701 = bitcast %union.YYSTYPE* %1700 to %struct.textint*
  %1702 = getelementptr inbounds %struct.textint, %struct.textint* %1701, i32 0, i32 1
  %1703 = load i64, i64* %1702, align 8
  %1704 = icmp eq i64 %1703, -1
  br i1 %1704, label %1705, label %1720

1705:                                             ; preds = %1698
  br i1 true, label %1706, label %1713

1706:                                             ; preds = %1705
  %1707 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1708 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1707, i64 0
  %1709 = bitcast %union.YYSTYPE* %1708 to i64*
  %1710 = load i64, i64* %1709, align 8
  %1711 = add nsw i64 %1710, -9223372036854775808
  %1712 = icmp slt i64 0, %1711
  br i1 %1712, label %1744, label %1757

1713:                                             ; preds = %1705
  %1714 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1715 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1714, i64 0
  %1716 = bitcast %union.YYSTYPE* %1715 to i64*
  %1717 = load i64, i64* %1716, align 8
  %1718 = sub nsw i64 %1717, 1
  %1719 = icmp slt i64 9223372036854775807, %1718
  br i1 %1719, label %1744, label %1757

1720:                                             ; preds = %1698
  %1721 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1722 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1721, i64 -1
  %1723 = bitcast %union.YYSTYPE* %1722 to %struct.textint*
  %1724 = getelementptr inbounds %struct.textint, %struct.textint* %1723, i32 0, i32 1
  %1725 = load i64, i64* %1724, align 8
  %1726 = sdiv i64 -9223372036854775808, %1725
  %1727 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1728 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1727, i64 0
  %1729 = bitcast %union.YYSTYPE* %1728 to i64*
  %1730 = load i64, i64* %1729, align 8
  %1731 = icmp slt i64 %1726, %1730
  br i1 %1731, label %1744, label %1757

1732:                                             ; preds = %1691
  %1733 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1734 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1733, i64 0
  %1735 = bitcast %union.YYSTYPE* %1734 to i64*
  %1736 = load i64, i64* %1735, align 8
  %1737 = sdiv i64 9223372036854775807, %1736
  %1738 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1739 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1738, i64 -1
  %1740 = bitcast %union.YYSTYPE* %1739 to %struct.textint*
  %1741 = getelementptr inbounds %struct.textint, %struct.textint* %1740, i32 0, i32 1
  %1742 = load i64, i64* %1741, align 8
  %1743 = icmp slt i64 %1737, %1742
  br i1 %1743, label %1744, label %1757

1744:                                             ; preds = %1732, %1720, %1713, %1706, %1690, %1672, %1664, %1649, %1633, %1600
  %1745 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1746 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1745, i64 -1
  %1747 = bitcast %union.YYSTYPE* %1746 to %struct.textint*
  %1748 = getelementptr inbounds %struct.textint, %struct.textint* %1747, i32 0, i32 1
  %1749 = load i64, i64* %1748, align 8
  %1750 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1751 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1750, i64 0
  %1752 = bitcast %union.YYSTYPE* %1751 to i64*
  %1753 = load i64, i64* %1752, align 8
  %1754 = mul i64 %1749, %1753
  %1755 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1756 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1755, i32 0, i32 2
  store i64 %1754, i64* %1756, align 8
  br label %1770

1757:                                             ; preds = %1732, %1720, %1713, %1706, %1690, %1672, %1664, %1657, %1649, %1633, %1600
  %1758 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1759 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1758, i64 -1
  %1760 = bitcast %union.YYSTYPE* %1759 to %struct.textint*
  %1761 = getelementptr inbounds %struct.textint, %struct.textint* %1760, i32 0, i32 1
  %1762 = load i64, i64* %1761, align 8
  %1763 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1764 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1763, i64 0
  %1765 = bitcast %union.YYSTYPE* %1764 to i64*
  %1766 = load i64, i64* %1765, align 8
  %1767 = mul i64 %1762, %1766
  %1768 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1769 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1768, i32 0, i32 2
  store i64 %1767, i64* %1769, align 8
  br label %1770

1770:                                             ; preds = %1757, %1744
  %1771 = phi i32 [ 1, %1744 ], [ 0, %1757 ]
  %1772 = icmp ne i32 %1771, 0
  br i1 %1772, label %1773, label %1774

1773:                                             ; preds = %1770
  br label %2073

1774:                                             ; preds = %1770
  br label %1893

1775:                                             ; preds = %263
  %1776 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1777 = bitcast %struct.relative_time* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1777, i8 0, i64 56, i1 false)
  %1778 = bitcast %struct.relative_time* %1776 to i8*
  %1779 = bitcast %struct.relative_time* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1778, i8* align 8 %1779, i64 56, i1 false)
  %1780 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1781 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1780, i64 -1
  %1782 = bitcast %union.YYSTYPE* %1781 to %struct.textint*
  %1783 = getelementptr inbounds %struct.textint, %struct.textint* %1782, i32 0, i32 1
  %1784 = load i64, i64* %1783, align 8
  %1785 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1786 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1785, i32 0, i32 3
  store i64 %1784, i64* %1786, align 8
  br label %1893

1787:                                             ; preds = %263
  %1788 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1789 = bitcast %struct.relative_time* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1789, i8 0, i64 56, i1 false)
  %1790 = bitcast %struct.relative_time* %1788 to i8*
  %1791 = bitcast %struct.relative_time* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1790, i8* align 8 %1791, i64 56, i1 false)
  %1792 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1793 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1792, i64 -1
  %1794 = bitcast %union.YYSTYPE* %1793 to %struct.textint*
  %1795 = getelementptr inbounds %struct.textint, %struct.textint* %1794, i32 0, i32 1
  %1796 = load i64, i64* %1795, align 8
  %1797 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1798 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1797, i32 0, i32 4
  store i64 %1796, i64* %1798, align 8
  br label %1893

1799:                                             ; preds = %263
  %1800 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1801 = bitcast %struct.relative_time* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1801, i8 0, i64 56, i1 false)
  %1802 = bitcast %struct.relative_time* %1800 to i8*
  %1803 = bitcast %struct.relative_time* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1802, i8* align 8 %1803, i64 56, i1 false)
  %1804 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1805 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1804, i64 -1
  %1806 = bitcast %union.YYSTYPE* %1805 to %struct.textint*
  %1807 = getelementptr inbounds %struct.textint, %struct.textint* %1806, i32 0, i32 1
  %1808 = load i64, i64* %1807, align 8
  %1809 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1810 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1809, i32 0, i32 5
  store i64 %1808, i64* %1810, align 8
  br label %1893

1811:                                             ; preds = %263
  %1812 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1813 = bitcast %struct.relative_time* %59 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1813, i8 0, i64 56, i1 false)
  %1814 = bitcast %struct.relative_time* %1812 to i8*
  %1815 = bitcast %struct.relative_time* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1814, i8* align 8 %1815, i64 56, i1 false)
  %1816 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1817 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1816, i64 0
  %1818 = bitcast %union.YYSTYPE* %1817 to i64*
  %1819 = load i64, i64* %1818, align 8
  %1820 = bitcast %union.YYSTYPE* %18 to %struct.relative_time*
  %1821 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1820, i32 0, i32 2
  store i64 %1819, i64* %1821, align 8
  br label %1893

1822:                                             ; preds = %263
  %1823 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1824 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1823, i64 0
  %1825 = bitcast %union.YYSTYPE* %1824 to %struct.textint*
  %1826 = getelementptr inbounds %struct.textint, %struct.textint* %1825, i32 0, i32 1
  %1827 = load i64, i64* %1826, align 8
  %1828 = call i1 @time_overflow(i64 noundef %1827)
  br i1 %1828, label %1829, label %1830

1829:                                             ; preds = %1822
  br label %2073

1830:                                             ; preds = %1822
  %1831 = bitcast %union.YYSTYPE* %18 to %struct.timespec*
  %1832 = getelementptr inbounds %struct.timespec, %struct.timespec* %60, i32 0, i32 0
  %1833 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1834 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1833, i64 0
  %1835 = bitcast %union.YYSTYPE* %1834 to %struct.textint*
  %1836 = getelementptr inbounds %struct.textint, %struct.textint* %1835, i32 0, i32 1
  %1837 = load i64, i64* %1836, align 8
  store i64 %1837, i64* %1832, align 8
  %1838 = getelementptr inbounds %struct.timespec, %struct.timespec* %60, i32 0, i32 1
  store i64 0, i64* %1838, align 8
  %1839 = bitcast %struct.timespec* %1831 to i8*
  %1840 = bitcast %struct.timespec* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1839, i8* align 8 %1840, i64 16, i1 false)
  br label %1893

1841:                                             ; preds = %263
  %1842 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1843 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1842, i64 0
  %1844 = bitcast %union.YYSTYPE* %1843 to %struct.textint*
  %1845 = getelementptr inbounds %struct.textint, %struct.textint* %1844, i32 0, i32 1
  %1846 = load i64, i64* %1845, align 8
  %1847 = call i1 @time_overflow(i64 noundef %1846)
  br i1 %1847, label %1848, label %1849

1848:                                             ; preds = %1841
  br label %2073

1849:                                             ; preds = %1841
  %1850 = bitcast %union.YYSTYPE* %18 to %struct.timespec*
  %1851 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 0
  %1852 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1853 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1852, i64 0
  %1854 = bitcast %union.YYSTYPE* %1853 to %struct.textint*
  %1855 = getelementptr inbounds %struct.textint, %struct.textint* %1854, i32 0, i32 1
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %1851, align 8
  %1857 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i32 0, i32 1
  store i64 0, i64* %1857, align 8
  %1858 = bitcast %struct.timespec* %1850 to i8*
  %1859 = bitcast %struct.timespec* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1858, i8* align 8 %1859, i64 16, i1 false)
  br label %1893

1860:                                             ; preds = %263
  %1861 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %1862 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1863 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1862, i64 0
  %1864 = bitcast %union.YYSTYPE* %1863 to %struct.textint*
  %1865 = bitcast %struct.textint* %62 to i8*
  %1866 = bitcast %struct.textint* %1864 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1865, i8* align 8 %1866, i64 24, i1 false)
  call void @digits_to_date_time(%struct.parser_control* noundef %1861, %struct.textint* noundef %62)
  br label %1893

1867:                                             ; preds = %263
  %1868 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %1869 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1870 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1869, i64 -1
  %1871 = bitcast %union.YYSTYPE* %1870 to %struct.textint*
  %1872 = bitcast %struct.textint* %63 to i8*
  %1873 = bitcast %struct.textint* %1871 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1872, i8* align 8 %1873, i64 24, i1 false)
  call void @digits_to_date_time(%struct.parser_control* noundef %1868, %struct.textint* noundef %63)
  %1874 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %1875 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1876 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1875, i64 0
  %1877 = bitcast %union.YYSTYPE* %1876 to %struct.relative_time*
  %1878 = bitcast %struct.relative_time* %64 to i8*
  %1879 = bitcast %struct.relative_time* %1877 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1878, i8* align 8 %1879, i64 56, i1 false)
  %1880 = call i1 @apply_relative_time(%struct.parser_control* noundef %1874, %struct.relative_time* noundef %64, i32 noundef 1)
  br i1 %1880, label %1882, label %1881

1881:                                             ; preds = %1867
  br label %2073

1882:                                             ; preds = %1867
  br label %1893

1883:                                             ; preds = %263
  %1884 = bitcast %union.YYSTYPE* %18 to i64*
  store i64 -1, i64* %1884, align 8
  br label %1893

1885:                                             ; preds = %263
  %1886 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1887 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1886, i64 0
  %1888 = bitcast %union.YYSTYPE* %1887 to %struct.textint*
  %1889 = getelementptr inbounds %struct.textint, %struct.textint* %1888, i32 0, i32 1
  %1890 = load i64, i64* %1889, align 8
  %1891 = bitcast %union.YYSTYPE* %18 to i64*
  store i64 %1890, i64* %1891, align 8
  br label %1893

1892:                                             ; preds = %263
  br label %1893

1893:                                             ; preds = %1892, %1885, %1883, %1882, %1860, %1849, %1830, %1811, %1799, %1787, %1775, %1774, %1570, %1558, %1551, %1531, %1511, %1499, %1488, %1481, %1469, %1458, %1451, %1439, %1428, %1417, %1416, %1223, %1037, %1025, %1014, %1007, %995, %984, %983, %973, %963, %948, %896, %882, %861, %847, %838, %798, %750, %735, %734, %642, %625, %609, %599, %589, %580, %571, %570, %535, %521, %502, %494, %487, %479, %478, %436, %422, %413, %383, %364, %350, %347, %344, %341, %334, %327, %320, %314, %307, %300, %289, %277
  %1894 = load i32, i32* %19, align 4
  %1895 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1896 = sext i32 %1894 to i64
  %1897 = sub i64 0, %1896
  %1898 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1895, i64 %1897
  store %union.YYSTYPE* %1898, %union.YYSTYPE** %14, align 8
  %1899 = load i32, i32* %19, align 4
  %1900 = load i8*, i8** %11, align 8
  %1901 = sext i32 %1899 to i64
  %1902 = sub i64 0, %1901
  %1903 = getelementptr inbounds i8, i8* %1900, i64 %1902
  store i8* %1903, i8** %11, align 8
  store i32 0, i32* %19, align 4
  %1904 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %1905 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1904, i32 1
  store %union.YYSTYPE* %1905, %union.YYSTYPE** %14, align 8
  %1906 = bitcast %union.YYSTYPE* %1905 to i8*
  %1907 = bitcast %union.YYSTYPE* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1906, i8* align 8 %1907, i64 56, i1 false)
  %1908 = load i32, i32* %15, align 4
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds [95 x i8], [95 x i8]* @yyr1, i64 0, i64 %1909
  %1911 = load i8, i8* %1910, align 1
  %1912 = sext i8 %1911 to i32
  %1913 = sub nsw i32 %1912, 31
  store i32 %1913, i32* %65, align 4
  %1914 = load i32, i32* %65, align 4
  %1915 = sext i32 %1914 to i64
  %1916 = getelementptr inbounds [26 x i8], [26 x i8]* @yypgoto, i64 0, i64 %1915
  %1917 = load i8, i8* %1916, align 1
  %1918 = sext i8 %1917 to i32
  %1919 = load i8*, i8** %11, align 8
  %1920 = load i8, i8* %1919, align 1
  %1921 = sext i8 %1920 to i32
  %1922 = add nsw i32 %1918, %1921
  store i32 %1922, i32* %66, align 4
  %1923 = load i32, i32* %66, align 4
  %1924 = icmp sle i32 0, %1923
  br i1 %1924, label %1925, label %1944

1925:                                             ; preds = %1893
  %1926 = load i32, i32* %66, align 4
  %1927 = icmp sle i32 %1926, 120
  br i1 %1927, label %1928, label %1944

1928:                                             ; preds = %1925
  %1929 = load i32, i32* %66, align 4
  %1930 = sext i32 %1929 to i64
  %1931 = getelementptr inbounds [121 x i8], [121 x i8]* @yycheck, i64 0, i64 %1930
  %1932 = load i8, i8* %1931, align 1
  %1933 = sext i8 %1932 to i32
  %1934 = load i8*, i8** %11, align 8
  %1935 = load i8, i8* %1934, align 1
  %1936 = sext i8 %1935 to i32
  %1937 = icmp eq i32 %1933, %1936
  br i1 %1937, label %1938, label %1944

1938:                                             ; preds = %1928
  %1939 = load i32, i32* %66, align 4
  %1940 = sext i32 %1939 to i64
  %1941 = getelementptr inbounds [121 x i8], [121 x i8]* @yytable, i64 0, i64 %1940
  %1942 = load i8, i8* %1941, align 1
  %1943 = sext i8 %1942 to i32
  br label %1950

1944:                                             ; preds = %1928, %1925, %1893
  %1945 = load i32, i32* %65, align 4
  %1946 = sext i32 %1945 to i64
  %1947 = getelementptr inbounds [26 x i8], [26 x i8]* @yydefgoto, i64 0, i64 %1946
  %1948 = load i8, i8* %1947, align 1
  %1949 = sext i8 %1948 to i32
  br label %1950

1950:                                             ; preds = %1944, %1938
  %1951 = phi i32 [ %1943, %1938 ], [ %1949, %1944 ]
  store i32 %1951, i32* %6, align 4
  br label %72

1952:                                             ; preds = %261
  %1953 = load i32, i32* %3, align 4
  %1954 = icmp eq i32 %1953, -2
  br i1 %1954, label %1955, label %1956

1955:                                             ; preds = %1952
  br label %1971

1956:                                             ; preds = %1952
  %1957 = load i32, i32* %3, align 4
  %1958 = icmp sle i32 0, %1957
  br i1 %1958, label %1959, label %1968

1959:                                             ; preds = %1956
  %1960 = load i32, i32* %3, align 4
  %1961 = icmp sle i32 %1960, 278
  br i1 %1961, label %1962, label %1968

1962:                                             ; preds = %1959
  %1963 = load i32, i32* %3, align 4
  %1964 = sext i32 %1963 to i64
  %1965 = getelementptr inbounds [279 x i8], [279 x i8]* @yytranslate, i64 0, i64 %1964
  %1966 = load i8, i8* %1965, align 1
  %1967 = sext i8 %1966 to i32
  br label %1969

1968:                                             ; preds = %1959, %1956
  br label %1969

1969:                                             ; preds = %1968, %1962
  %1970 = phi i32 [ %1967, %1962 ], [ 2, %1968 ]
  br label %1971

1971:                                             ; preds = %1969, %1955
  %1972 = phi i32 [ -2, %1955 ], [ %1970, %1969 ]
  store i32 %1972, i32* %17, align 4
  %1973 = load i32, i32* %7, align 4
  %1974 = icmp ne i32 %1973, 0
  br i1 %1974, label %1979, label %1975

1975:                                             ; preds = %1971
  %1976 = load i32, i32* %5, align 4
  %1977 = add nsw i32 %1976, 1
  store i32 %1977, i32* %5, align 4
  %1978 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yyerror(%struct.parser_control* noundef %1978, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14.138, i64 0, i64 0))
  br label %1979

1979:                                             ; preds = %1975, %1971
  %1980 = load i32, i32* %7, align 4
  %1981 = icmp eq i32 %1980, 3
  br i1 %1981, label %1982, label %1994

1982:                                             ; preds = %1979
  %1983 = load i32, i32* %3, align 4
  %1984 = icmp sle i32 %1983, 0
  br i1 %1984, label %1985, label %1990

1985:                                             ; preds = %1982
  %1986 = load i32, i32* %3, align 4
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %1988, label %1989

1988:                                             ; preds = %1985
  br label %2073

1989:                                             ; preds = %1985
  br label %1993

1990:                                             ; preds = %1982
  %1991 = load i32, i32* %17, align 4
  %1992 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yydestruct(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15.139, i64 0, i64 0), i32 noundef %1991, %union.YYSTYPE* noundef %4, %struct.parser_control* noundef %1992)
  store i32 -2, i32* %3, align 4
  br label %1993

1993:                                             ; preds = %1990, %1989
  br label %1994

1994:                                             ; preds = %1993, %1979
  br label %2011

1995:                                             ; No predecessors!
  %1996 = load i32, i32* %5, align 4
  %1997 = add nsw i32 %1996, 1
  store i32 %1997, i32* %5, align 4
  %1998 = load i32, i32* %19, align 4
  %1999 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2000 = sext i32 %1998 to i64
  %2001 = sub i64 0, %2000
  %2002 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1999, i64 %2001
  store %union.YYSTYPE* %2002, %union.YYSTYPE** %14, align 8
  %2003 = load i32, i32* %19, align 4
  %2004 = load i8*, i8** %11, align 8
  %2005 = sext i32 %2003 to i64
  %2006 = sub i64 0, %2005
  %2007 = getelementptr inbounds i8, i8* %2004, i64 %2006
  store i8* %2007, i8** %11, align 8
  store i32 0, i32* %19, align 4
  %2008 = load i8*, i8** %11, align 8
  %2009 = load i8, i8* %2008, align 1
  %2010 = sext i8 %2009 to i32
  store i32 %2010, i32* %6, align 4
  br label %2011

2011:                                             ; preds = %1995, %1994, %195
  store i32 3, i32* %7, align 4
  br label %2012

2012:                                             ; preds = %2051, %2011
  %2013 = load i32, i32* %6, align 4
  %2014 = sext i32 %2013 to i64
  %2015 = getelementptr inbounds [121 x i8], [121 x i8]* @yypact, i64 0, i64 %2014
  %2016 = load i8, i8* %2015, align 1
  %2017 = sext i8 %2016 to i32
  store i32 %2017, i32* %15, align 4
  %2018 = load i32, i32* %15, align 4
  %2019 = icmp eq i32 %2018, -93
  br i1 %2019, label %2046, label %2020

2020:                                             ; preds = %2012
  %2021 = load i32, i32* %15, align 4
  %2022 = add nsw i32 %2021, 1
  store i32 %2022, i32* %15, align 4
  %2023 = load i32, i32* %15, align 4
  %2024 = icmp sle i32 0, %2023
  br i1 %2024, label %2025, label %2045

2025:                                             ; preds = %2020
  %2026 = load i32, i32* %15, align 4
  %2027 = icmp sle i32 %2026, 120
  br i1 %2027, label %2028, label %2045

2028:                                             ; preds = %2025
  %2029 = load i32, i32* %15, align 4
  %2030 = sext i32 %2029 to i64
  %2031 = getelementptr inbounds [121 x i8], [121 x i8]* @yycheck, i64 0, i64 %2030
  %2032 = load i8, i8* %2031, align 1
  %2033 = sext i8 %2032 to i32
  %2034 = icmp eq i32 %2033, 1
  br i1 %2034, label %2035, label %2045

2035:                                             ; preds = %2028
  %2036 = load i32, i32* %15, align 4
  %2037 = sext i32 %2036 to i64
  %2038 = getelementptr inbounds [121 x i8], [121 x i8]* @yytable, i64 0, i64 %2037
  %2039 = load i8, i8* %2038, align 1
  %2040 = sext i8 %2039 to i32
  store i32 %2040, i32* %15, align 4
  %2041 = load i32, i32* %15, align 4
  %2042 = icmp slt i32 0, %2041
  br i1 %2042, label %2043, label %2044

2043:                                             ; preds = %2035
  br label %2066

2044:                                             ; preds = %2035
  br label %2045

2045:                                             ; preds = %2044, %2028, %2025, %2020
  br label %2046

2046:                                             ; preds = %2045, %2012
  %2047 = load i8*, i8** %11, align 8
  %2048 = load i8*, i8** %10, align 8
  %2049 = icmp eq i8* %2047, %2048
  br i1 %2049, label %2050, label %2051

2050:                                             ; preds = %2046
  br label %2073

2051:                                             ; preds = %2046
  %2052 = load i32, i32* %6, align 4
  %2053 = sext i32 %2052 to i64
  %2054 = getelementptr inbounds [121 x i8], [121 x i8]* @yystos, i64 0, i64 %2053
  %2055 = load i8, i8* %2054, align 1
  %2056 = sext i8 %2055 to i32
  %2057 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2058 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yydestruct(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16.140, i64 0, i64 0), i32 noundef %2056, %union.YYSTYPE* noundef %2057, %struct.parser_control* noundef %2058)
  %2059 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2060 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2059, i64 -1
  store %union.YYSTYPE* %2060, %union.YYSTYPE** %14, align 8
  %2061 = load i8*, i8** %11, align 8
  %2062 = getelementptr inbounds i8, i8* %2061, i64 -1
  store i8* %2062, i8** %11, align 8
  %2063 = load i8*, i8** %11, align 8
  %2064 = load i8, i8* %2063, align 1
  %2065 = sext i8 %2064 to i32
  store i32 %2065, i32* %6, align 4
  br label %2012

2066:                                             ; preds = %2043
  %2067 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2068 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2067, i32 1
  store %union.YYSTYPE* %2068, %union.YYSTYPE** %14, align 8
  %2069 = bitcast %union.YYSTYPE* %2068 to i8*
  %2070 = bitcast %union.YYSTYPE* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2069, i8* align 8 %2070, i64 56, i1 false)
  %2071 = load i32, i32* %15, align 4
  store i32 %2071, i32* %6, align 4
  br label %72

2072:                                             ; preds = %171
  store i32 0, i32* %16, align 4
  br label %2076

2073:                                             ; preds = %2050, %1988, %1881, %1848, %1829, %1773, %1415, %1222, %982, %972, %962, %947, %935, %837, %824, %797, %569, %550, %534, %520, %477, %166
  store i32 1, i32* %16, align 4
  br label %2076

2074:                                             ; preds = %110, %94
  %2075 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yyerror(%struct.parser_control* noundef %2075, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17.141, i64 0, i64 0))
  store i32 2, i32* %16, align 4
  br label %2076

2076:                                             ; preds = %2074, %2073, %2072
  %2077 = load i32, i32* %3, align 4
  %2078 = icmp ne i32 %2077, -2
  br i1 %2078, label %2079, label %2096

2079:                                             ; preds = %2076
  %2080 = load i32, i32* %3, align 4
  %2081 = icmp sle i32 0, %2080
  br i1 %2081, label %2082, label %2091

2082:                                             ; preds = %2079
  %2083 = load i32, i32* %3, align 4
  %2084 = icmp sle i32 %2083, 278
  br i1 %2084, label %2085, label %2091

2085:                                             ; preds = %2082
  %2086 = load i32, i32* %3, align 4
  %2087 = sext i32 %2086 to i64
  %2088 = getelementptr inbounds [279 x i8], [279 x i8]* @yytranslate, i64 0, i64 %2087
  %2089 = load i8, i8* %2088, align 1
  %2090 = sext i8 %2089 to i32
  br label %2092

2091:                                             ; preds = %2082, %2079
  br label %2092

2092:                                             ; preds = %2091, %2085
  %2093 = phi i32 [ %2090, %2085 ], [ 2, %2091 ]
  store i32 %2093, i32* %17, align 4
  %2094 = load i32, i32* %17, align 4
  %2095 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yydestruct(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18.142, i64 0, i64 0), i32 noundef %2094, %union.YYSTYPE* noundef %4, %struct.parser_control* noundef %2095)
  br label %2096

2096:                                             ; preds = %2092, %2076
  %2097 = load i32, i32* %19, align 4
  %2098 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2099 = sext i32 %2097 to i64
  %2100 = sub i64 0, %2099
  %2101 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2098, i64 %2100
  store %union.YYSTYPE* %2101, %union.YYSTYPE** %14, align 8
  %2102 = load i32, i32* %19, align 4
  %2103 = load i8*, i8** %11, align 8
  %2104 = sext i32 %2102 to i64
  %2105 = sub i64 0, %2104
  %2106 = getelementptr inbounds i8, i8* %2103, i64 %2105
  store i8* %2106, i8** %11, align 8
  br label %2107

2107:                                             ; preds = %2111, %2096
  %2108 = load i8*, i8** %11, align 8
  %2109 = load i8*, i8** %10, align 8
  %2110 = icmp ne i8* %2108, %2109
  br i1 %2110, label %2111, label %2125

2111:                                             ; preds = %2107
  %2112 = load i8*, i8** %11, align 8
  %2113 = load i8, i8* %2112, align 1
  %2114 = sext i8 %2113 to i32
  %2115 = sext i32 %2114 to i64
  %2116 = getelementptr inbounds [121 x i8], [121 x i8]* @yystos, i64 0, i64 %2115
  %2117 = load i8, i8* %2116, align 1
  %2118 = sext i8 %2117 to i32
  %2119 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2120 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  call void @yydestruct(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19.143, i64 0, i64 0), i32 noundef %2118, %union.YYSTYPE* noundef %2119, %struct.parser_control* noundef %2120)
  %2121 = load %union.YYSTYPE*, %union.YYSTYPE** %14, align 8
  %2122 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2121, i64 -1
  store %union.YYSTYPE* %2122, %union.YYSTYPE** %14, align 8
  %2123 = load i8*, i8** %11, align 8
  %2124 = getelementptr inbounds i8, i8* %2123, i64 -1
  store i8* %2124, i8** %11, align 8
  br label %2107, !llvm.loop !22

2125:                                             ; preds = %2107
  %2126 = load i8*, i8** %10, align 8
  %2127 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %2128 = icmp ne i8* %2126, %2127
  br i1 %2128, label %2129, label %2131

2129:                                             ; preds = %2125
  %2130 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %2130) #18
  br label %2131

2131:                                             ; preds = %2129, %2125
  %2132 = load i32, i32* %16, align 4
  ret i32 %2132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yylex(%union.YYSTYPE* noundef %0, %struct.parser_control* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca %union.YYSTYPE*, align 8
  %5 = alloca %struct.parser_control*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec, align 8
  %15 = alloca [20 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca %struct.table*, align 8
  %18 = alloca i64, align 8
  store %union.YYSTYPE* %0, %union.YYSTYPE** %4, align 8
  store %struct.parser_control* %1, %struct.parser_control** %5, align 8
  br label %19

19:                                               ; preds = %443, %76, %2
  br label %20

20:                                               ; preds = %28, %19
  %21 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %22 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = call i1 @c_isspace(i32 noundef %26)
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %30 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  br label %20, !llvm.loop !23

33:                                               ; preds = %20
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = call i1 @c_isdigit(i32 noundef %35)
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %343

45:                                               ; preds = %41, %37, %33
  %46 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %47 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 45
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %56, label %78

56:                                               ; preds = %52, %45
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %71, %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  %65 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %66 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i8, i8* %64, align 1
  store i8 %67, i8* %6, align 1
  %68 = load i8, i8* %6, align 1
  %69 = zext i8 %68 to i32
  %70 = call i1 @c_isspace(i32 noundef %69)
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %62, !llvm.loop !24

72:                                               ; preds = %62
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = call i1 @c_isdigit(i32 noundef %74)
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %19

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %159, %79
  br i1 false, label %81, label %108

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  br i1 true, label %85, label %88

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = icmp slt i64 %86, 922337203685477580
  br i1 %87, label %126, label %129

88:                                               ; preds = %84
  %89 = load i64, i64* %9, align 8
  %90 = sub nsw i64 -1, %89
  %91 = icmp sle i64 -922337203685477580, %90
  br i1 %91, label %126, label %129

92:                                               ; preds = %81
  br i1 false, label %93, label %105

93:                                               ; preds = %92
  br i1 true, label %94, label %98

94:                                               ; preds = %93
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, -9223372036854775808
  %97 = icmp slt i64 0, %96
  br i1 %97, label %126, label %129

98:                                               ; preds = %93
  %99 = load i64, i64* %9, align 8
  %100 = icmp slt i64 0, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i64, i64* %9, align 8
  %103 = sub nsw i64 %102, 1
  %104 = icmp slt i64 9223372036854775807, %103
  br i1 %104, label %126, label %129

105:                                              ; preds = %92
  %106 = load i64, i64* %9, align 8
  %107 = icmp slt i64 -922337203685477580, %106
  br i1 %107, label %126, label %129

108:                                              ; preds = %80
  br i1 false, label %109, label %110

109:                                              ; preds = %108
  br i1 false, label %126, label %129

110:                                              ; preds = %108
  %111 = load i64, i64* %9, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %114, -1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  br i1 true, label %117, label %118

117:                                              ; preds = %116
  br i1 false, label %126, label %129

118:                                              ; preds = %116
  br i1 false, label %126, label %129

119:                                              ; preds = %113
  %120 = load i64, i64* %9, align 8
  %121 = sdiv i64 -9223372036854775808, %120
  %122 = icmp slt i64 %121, 10
  br i1 %122, label %126, label %129

123:                                              ; preds = %110
  %124 = load i64, i64* %9, align 8
  %125 = icmp slt i64 922337203685477580, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %123, %119, %118, %117, %109, %105, %101, %94, %88, %85
  %127 = load i64, i64* %9, align 8
  %128 = mul i64 %127, 10
  store i64 %128, i64* %9, align 8
  br label %132

129:                                              ; preds = %123, %119, %118, %117, %109, %105, %101, %98, %94, %88, %85
  %130 = load i64, i64* %9, align 8
  %131 = mul i64 %130, 10
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i32 [ 1, %126 ], [ 0, %129 ]
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 63, i32* %3, align 4
  br label %444

136:                                              ; preds = %132
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i8, i8* %6, align 1
  %142 = zext i8 %141 to i32
  %143 = sub nsw i32 48, %142
  br label %148

144:                                              ; preds = %136
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i32
  %147 = sub nsw i32 %146, 48
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i32 [ %143, %140 ], [ %147, %144 ]
  %150 = sext i32 %149 to i64
  %151 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %137, i64 %150)
  %152 = extractvalue { i64, i1 } %151, 1
  %153 = extractvalue { i64, i1 } %151, 0
  store i64 %153, i64* %9, align 8
  br i1 %152, label %154, label %155

154:                                              ; preds = %148
  store i32 63, i32* %3, align 4
  br label %444

155:                                              ; preds = %148
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %6, align 1
  br label %159

159:                                              ; preds = %155
  %160 = load i8, i8* %6, align 1
  %161 = zext i8 %160 to i32
  %162 = call i1 @c_isdigit(i32 noundef %161)
  br i1 %162, label %80, label %163, !llvm.loop !25

163:                                              ; preds = %159
  %164 = load i8, i8* %6, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 46
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i8, i8* %6, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 44
  br i1 %170, label %171, label %312

171:                                              ; preds = %167, %163
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = call i1 @c_isdigit(i32 noundef %175)
  br i1 %176, label %177, label %312

177:                                              ; preds = %171
  %178 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %179 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %178, i32 0, i32 23
  %180 = load i8, i8* %179, align 1
  %181 = trunc i8 %180 to i1
  br i1 %181, label %182, label %208

182:                                              ; preds = %177
  %183 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %184 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %183, i32 0, i32 23
  store i8 0, i8* %184, align 1
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  %187 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %188 = bitcast %union.YYSTYPE* %187 to %struct.textint*
  %189 = getelementptr inbounds %struct.textint, %struct.textint* %188, i32 0, i32 0
  %190 = zext i1 %186 to i8
  store i8 %190, i8* %189, align 8
  %191 = load i64, i64* %9, align 8
  %192 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %193 = bitcast %union.YYSTYPE* %192 to %struct.textint*
  %194 = getelementptr inbounds %struct.textint, %struct.textint* %193, i32 0, i32 1
  store i64 %191, i64* %194, align 8
  %195 = load i8*, i8** %7, align 8
  %196 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %197 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %195 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %203 = bitcast %union.YYSTYPE* %202 to %struct.textint*
  %204 = getelementptr inbounds %struct.textint, %struct.textint* %203, i32 0, i32 2
  store i64 %201, i64* %204, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %207 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  store i32 276, i32* %3, align 4
  br label %444

208:                                              ; preds = %177
  %209 = load i64, i64* %9, align 8
  store i64 %209, i64* %10, align 8
  %210 = load i8*, i8** %7, align 8
  store i8* %210, i8** %12, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %7, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %7, align 8
  %215 = load i8, i8* %213, align 1
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %216, 48
  store i32 %217, i32* %13, align 4
  store i32 2, i32* %11, align 4
  br label %218

218:                                              ; preds = %246, %208
  %219 = load i32, i32* %11, align 4
  %220 = icmp sle i32 %219, 9
  br i1 %220, label %221, label %249

221:                                              ; preds = %218
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %222, 10
  store i32 %223, i32* %13, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 46
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i8*, i8** %12, align 8
  store i8* %229, i8** %7, align 8
  %230 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %231 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %230, i32 0, i32 23
  store i8 1, i8* %231, align 1
  br label %315

232:                                              ; preds = %221
  %233 = load i8*, i8** %7, align 8
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = call i1 @c_isdigit(i32 noundef %235)
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %7, align 8
  %240 = load i8, i8* %238, align 1
  %241 = zext i8 %240 to i32
  %242 = sub nsw i32 %241, 48
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %237, %232
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %218, !llvm.loop !26

249:                                              ; preds = %218
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %267, %252
  %254 = load i8*, i8** %7, align 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = call i1 @c_isdigit(i32 noundef %256)
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = load i8*, i8** %7, align 8
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp ne i32 %261, 48
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %270

266:                                              ; preds = %258
  br label %267

267:                                              ; preds = %266
  %268 = load i8*, i8** %7, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %7, align 8
  br label %253, !llvm.loop !27

270:                                              ; preds = %263, %253
  br label %271

271:                                              ; preds = %270, %249
  br label %272

272:                                              ; preds = %277, %271
  %273 = load i8*, i8** %7, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = call i1 @c_isdigit(i32 noundef %275)
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %7, align 8
  br label %272, !llvm.loop !28

280:                                              ; preds = %272
  %281 = load i32, i32* %8, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %283
  %287 = load i64, i64* %10, align 8
  %288 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %287, i64 1)
  %289 = extractvalue { i64, i1 } %288, 1
  %290 = extractvalue { i64, i1 } %288, 0
  store i64 %290, i64* %10, align 8
  br i1 %289, label %291, label %292

291:                                              ; preds = %286
  store i32 63, i32* %3, align 4
  br label %444

292:                                              ; preds = %286
  %293 = load i32, i32* %13, align 4
  %294 = sub nsw i32 1000000000, %293
  store i32 %294, i32* %13, align 4
  br label %295

295:                                              ; preds = %292, %283, %280
  %296 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %297 = bitcast %union.YYSTYPE* %296 to %struct.timespec*
  %298 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %299 = load i64, i64* %10, align 8
  store i64 %299, i64* %298, align 8
  %300 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %300, align 8
  %303 = bitcast %struct.timespec* %297 to i8*
  %304 = bitcast %struct.timespec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 16, i1 false)
  %305 = load i8*, i8** %7, align 8
  %306 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %307 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %306, i32 0, i32 0
  store i8* %305, i8** %307, align 8
  %308 = load i32, i32* %8, align 4
  %309 = icmp ne i32 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 277, i32 278
  store i32 %311, i32* %3, align 4
  br label %444

312:                                              ; preds = %171, %167
  %313 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %314 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %313, i32 0, i32 23
  store i8 0, i8* %314, align 1
  br label %315

315:                                              ; preds = %312, %228
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  %318 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %319 = bitcast %union.YYSTYPE* %318 to %struct.textint*
  %320 = getelementptr inbounds %struct.textint, %struct.textint* %319, i32 0, i32 0
  %321 = zext i1 %317 to i8
  store i8 %321, i8* %320, align 8
  %322 = load i64, i64* %9, align 8
  %323 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %324 = bitcast %union.YYSTYPE* %323 to %struct.textint*
  %325 = getelementptr inbounds %struct.textint, %struct.textint* %324, i32 0, i32 1
  store i64 %322, i64* %325, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %328 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = ptrtoint i8* %326 to i64
  %331 = ptrtoint i8* %329 to i64
  %332 = sub i64 %330, %331
  %333 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %334 = bitcast %union.YYSTYPE* %333 to %struct.textint*
  %335 = getelementptr inbounds %struct.textint, %struct.textint* %334, i32 0, i32 2
  store i64 %332, i64* %335, align 8
  %336 = load i8*, i8** %7, align 8
  %337 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %338 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %337, i32 0, i32 0
  store i8* %336, i8** %338, align 8
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i32 274, i32 275
  store i32 %342, i32* %3, align 4
  br label %444

343:                                              ; preds = %41
  %344 = load i8, i8* %6, align 1
  %345 = zext i8 %344 to i32
  %346 = call i1 @c_isalpha(i32 noundef %345)
  br i1 %346, label %347, label %399

347:                                              ; preds = %343
  %348 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  store i8* %348, i8** %16, align 8
  br label %349

349:                                              ; preds = %373, %347
  %350 = load i8*, i8** %16, align 8
  %351 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %352 = getelementptr inbounds i8, i8* %351, i64 20
  %353 = getelementptr inbounds i8, i8* %352, i64 -1
  %354 = icmp ult i8* %350, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %349
  %356 = load i8, i8* %6, align 1
  %357 = load i8*, i8** %16, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %16, align 8
  store i8 %356, i8* %357, align 1
  br label %359

359:                                              ; preds = %355, %349
  %360 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %361 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %361, align 8
  %364 = load i8, i8* %363, align 1
  store i8 %364, i8* %6, align 1
  br label %365

365:                                              ; preds = %359
  %366 = load i8, i8* %6, align 1
  %367 = zext i8 %366 to i32
  %368 = call i1 @c_isalpha(i32 noundef %367)
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = load i8, i8* %6, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp eq i32 %371, 46
  br label %373

373:                                              ; preds = %369, %365
  %374 = phi i1 [ true, %365 ], [ %372, %369 ]
  br i1 %374, label %349, label %375, !llvm.loop !29

375:                                              ; preds = %373
  %376 = load i8*, i8** %16, align 8
  store i8 0, i8* %376, align 1
  %377 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %378 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %379 = call %struct.table* @lookup_word(%struct.parser_control* noundef %377, i8* noundef %378)
  store %struct.table* %379, %struct.table** %17, align 8
  %380 = load %struct.table*, %struct.table** %17, align 8
  %381 = icmp ne %struct.table* %380, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %375
  %383 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %384 = call i1 @debugging(%struct.parser_control* noundef %383)
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48.171, i64 0, i64 0)) #18
  %387 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  call void (i8*, ...) @dbg_printf(i8* noundef %386, i8* noundef %387)
  br label %388

388:                                              ; preds = %385, %382
  store i32 63, i32* %3, align 4
  br label %444

389:                                              ; preds = %375
  %390 = load %struct.table*, %struct.table** %17, align 8
  %391 = getelementptr inbounds %struct.table, %struct.table* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  %394 = load %union.YYSTYPE*, %union.YYSTYPE** %4, align 8
  %395 = bitcast %union.YYSTYPE* %394 to i64*
  store i64 %393, i64* %395, align 8
  %396 = load %struct.table*, %struct.table** %17, align 8
  %397 = getelementptr inbounds %struct.table, %struct.table* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  store i32 %398, i32* %3, align 4
  br label %444

399:                                              ; preds = %343
  %400 = load i8, i8* %6, align 1
  %401 = zext i8 %400 to i32
  %402 = icmp ne i32 %401, 40
  br i1 %402, label %403, label %411

403:                                              ; preds = %399
  %404 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %405 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %405, align 8
  %408 = load i8, i8* %406, align 1
  %409 = call i8 @to_uchar(i8 noundef %408)
  %410 = zext i8 %409 to i32
  store i32 %410, i32* %3, align 4
  br label %444

411:                                              ; preds = %399
  store i64 0, i64* %18, align 8
  br label %412

412:                                              ; preds = %440, %411
  %413 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %414 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %413, i32 0, i32 0
  %415 = load i8*, i8** %414, align 8
  %416 = getelementptr inbounds i8, i8* %415, i32 1
  store i8* %416, i8** %414, align 8
  %417 = load i8, i8* %415, align 1
  store i8 %417, i8* %6, align 1
  %418 = load i8, i8* %6, align 1
  %419 = zext i8 %418 to i32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %412
  %422 = load i8, i8* %6, align 1
  %423 = zext i8 %422 to i32
  store i32 %423, i32* %3, align 4
  br label %444

424:                                              ; preds = %412
  %425 = load i8, i8* %6, align 1
  %426 = zext i8 %425 to i32
  %427 = icmp eq i32 %426, 40
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = load i64, i64* %18, align 8
  %430 = add nsw i64 %429, 1
  store i64 %430, i64* %18, align 8
  br label %439

431:                                              ; preds = %424
  %432 = load i8, i8* %6, align 1
  %433 = zext i8 %432 to i32
  %434 = icmp eq i32 %433, 41
  br i1 %434, label %435, label %438

435:                                              ; preds = %431
  %436 = load i64, i64* %18, align 8
  %437 = add nsw i64 %436, -1
  store i64 %437, i64* %18, align 8
  br label %438

438:                                              ; preds = %435, %431
  br label %439

439:                                              ; preds = %438, %428
  br label %440

440:                                              ; preds = %439
  %441 = load i64, i64* %18, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %412, label %443, !llvm.loop !30

443:                                              ; preds = %440
  br label %19

444:                                              ; preds = %421, %403, %389, %388, %315, %295, %291, %182, %154, %135
  %445 = load i32, i32* %3, align 4
  ret i32 %445
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_current_time(i8* noundef %0, %struct.parser_control* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser_control*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 1
  %9 = alloca [27 x i8], align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.parser_control* %1, %struct.parser_control** %4, align 8
  store i8 0, i8* %5, align 1
  %11 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %12 = call i1 @debugging(%struct.parser_control* noundef %11)
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %239

14:                                               ; preds = %2
  %15 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21.146, i64 0, i64 0)) #18
  %16 = load i8*, i8** %3, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %15, i8* noundef %16)
  %17 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %18 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %17, i32 0, i32 15
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %23 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %22, i32 0, i32 25
  %24 = load i8, i8* %23, align 1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %29 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.textint, %struct.textint* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %33 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %36 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22.156, i64 0, i64 0), i64 noundef %31, i64 noundef %34, i64 noundef %37)
  %39 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %40 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %39, i32 0, i32 25
  store i8 1, i8* %40, align 1
  store i8 1, i8* %5, align 1
  br label %41

41:                                               ; preds = %26, %21, %14
  %42 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %43 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %42, i32 0, i32 22
  %44 = load i8, i8* %43, align 8
  %45 = trunc i8 %44 to i1
  %46 = zext i1 %45 to i32
  %47 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %48 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %47, i32 0, i32 30
  %49 = load i8, i8* %48, align 8
  %50 = trunc i8 %49 to i1
  %51 = zext i1 %50 to i32
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %41
  %54 = load i8, i8* %5, align 1
  %55 = trunc i8 %54 to i1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23.157, i64 0, i64 0)) #18
  %62 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %63 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.textint, %struct.textint* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef %61, i64 noundef %65)
  %67 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %68 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %67, i32 0, i32 22
  %69 = load i8, i8* %68, align 8
  %70 = trunc i8 %69 to i1
  %71 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %72 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %71, i32 0, i32 30
  %73 = zext i1 %70 to i8
  store i8 %73, i8* %72, align 8
  store i8 1, i8* %5, align 1
  br label %74

74:                                               ; preds = %59, %41
  %75 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %76 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %75, i32 0, i32 20
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %129

79:                                               ; preds = %74
  %80 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %81 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %80, i32 0, i32 28
  %82 = load i8, i8* %81, align 2
  %83 = trunc i8 %82 to i1
  br i1 %83, label %129, label %84

84:                                               ; preds = %79
  %85 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %86 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %6, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8, i8* %5, align 1
  %91 = trunc i8 %90 to i1
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.24.158, i64 0, i64 %94
  %96 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %97 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %100 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef %95, i64 noundef %98, i64 noundef %101, i64 noundef %102)
  %104 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %105 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %84
  %110 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %111 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %7, align 4
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25.159, i64 0, i64 0), i32 noundef %116)
  br label %118

118:                                              ; preds = %109, %84
  %119 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %120 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %125 = call i32 @fputs(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.160, i64 0, i64 0), %struct._IO_FILE* noundef %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %128 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %127, i32 0, i32 28
  store i8 1, i8* %128, align 2
  store i8 1, i8* %5, align 1
  br label %129

129:                                              ; preds = %126, %79, %74
  %130 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %131 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %130, i32 0, i32 16
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %129
  %135 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %136 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %135, i32 0, i32 26
  %137 = load i8, i8* %136, align 4
  %138 = trunc i8 %137 to i1
  br i1 %138, label %160, label %139

139:                                              ; preds = %134
  %140 = load i8, i8* %5, align 1
  %141 = trunc i8 %140 to i1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %144 = call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27.161, i64 0, i64 0)) #18
  %148 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %149 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %150 = call i8* @str_days(%struct.parser_control* noundef %148, i8* noundef %149, i32 noundef 100)
  %151 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %152 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %155 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %146, i8* noundef %147, i8* noundef %150, i64 noundef %153, i32 noundef %156)
  %158 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %159 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %158, i32 0, i32 26
  store i8 1, i8* %159, align 4
  store i8 1, i8* %5, align 1
  br label %160

160:                                              ; preds = %145, %134, %129
  %161 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %162 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %161, i32 0, i32 18
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %160
  %166 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %167 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %166, i32 0, i32 27
  %168 = load i8, i8* %167, align 1
  %169 = trunc i8 %168 to i1
  br i1 %169, label %190, label %170

170:                                              ; preds = %165
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load i8, i8* %5, align 1
  %173 = trunc i8 %172 to i1
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.28.162, i64 0, i64 %176
  %178 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %179 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %182 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %181, i32 0, i32 19
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29.163, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0)
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef %177, i32 noundef %180, i8* noundef %186)
  %188 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %189 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %188, i32 0, i32 27
  store i8 1, i8* %189, align 1
  store i8 1, i8* %5, align 1
  br label %190

190:                                              ; preds = %170, %165, %160
  %191 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %192 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %191, i32 0, i32 21
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %190
  %196 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %197 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %196, i32 0, i32 29
  %198 = load i8, i8* %197, align 1
  %199 = trunc i8 %198 to i1
  br i1 %199, label %216, label %200

200:                                              ; preds = %195
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %202 = load i8, i8* %5, align 1
  %203 = trunc i8 %202 to i1
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.31.165, i64 0, i64 %206
  %208 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %209 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 0
  %212 = call i8* @time_zone_str(i32 noundef %210, i8* noundef %211)
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %201, i8* noundef %207, i8* noundef %212)
  %214 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %215 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %214, i32 0, i32 29
  store i8 1, i8* %215, align 1
  store i8 1, i8* %5, align 1
  br label %216

216:                                              ; preds = %200, %195, %190
  %217 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %218 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %217, i32 0, i32 13
  %219 = load i8, i8* %218, align 8
  %220 = trunc i8 %219 to i1
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %223 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %222, i32 0, i32 11
  %224 = getelementptr inbounds %struct.timespec, %struct.timespec* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %10, align 8
  %226 = load i8, i8* %5, align 1
  %227 = trunc i8 %226 to i1
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %230 = call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %229)
  br label %231

231:                                              ; preds = %228, %221
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %233 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32.166, i64 0, i64 0)) #18
  %234 = load i64, i64* %10, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %232, i8* noundef %233, i64 noundef %234)
  br label %236

236:                                              ; preds = %231, %216
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %238 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %237)
  br label %239

239:                                              ; preds = %236, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_relative_time(i8* noundef %0, %struct.parser_control* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser_control*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.parser_control* %1, %struct.parser_control** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %7 = call i1 @debugging(%struct.parser_control* noundef %6)
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %116

9:                                                ; preds = %2
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21.146, i64 0, i64 0)) #18
  %11 = load i8*, i8** %3, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %10, i8* noundef %11)
  %12 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %13 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %9
  %18 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %25 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %31 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %37 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %43 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %49 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37.147, i64 0, i64 0)) #18
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 @fputs(i8* noundef %54, %struct._IO_FILE* noundef %55)
  br label %116

57:                                               ; preds = %47, %41, %35, %29, %23, %17, %9
  %58 = load i8, i8* %5, align 1
  %59 = trunc i8 %58 to i1
  %60 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %61 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %60, i32 0, i32 12
  %62 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i1 @print_rel_part(i1 noundef %59, i64 noundef %63, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38.148, i64 0, i64 0))
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %5, align 1
  %66 = load i8, i8* %5, align 1
  %67 = trunc i8 %66 to i1
  %68 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %69 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %68, i32 0, i32 12
  %70 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i1 @print_rel_part(i1 noundef %67, i64 noundef %71, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39.149, i64 0, i64 0))
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %5, align 1
  %74 = load i8, i8* %5, align 1
  %75 = trunc i8 %74 to i1
  %76 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %77 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %76, i32 0, i32 12
  %78 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i1 @print_rel_part(i1 noundef %75, i64 noundef %79, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40.150, i64 0, i64 0))
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %5, align 1
  %82 = load i8, i8* %5, align 1
  %83 = trunc i8 %82 to i1
  %84 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %85 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i1 @print_rel_part(i1 noundef %83, i64 noundef %87, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41.151, i64 0, i64 0))
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %5, align 1
  %90 = load i8, i8* %5, align 1
  %91 = trunc i8 %90 to i1
  %92 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %93 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %92, i32 0, i32 12
  %94 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i1 @print_rel_part(i1 noundef %91, i64 noundef %95, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42.152, i64 0, i64 0))
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %5, align 1
  %98 = load i8, i8* %5, align 1
  %99 = trunc i8 %98 to i1
  %100 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %101 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %100, i32 0, i32 12
  %102 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = call i1 @print_rel_part(i1 noundef %99, i64 noundef %103, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.153, i64 0, i64 0))
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %5, align 1
  %106 = load i8, i8* %5, align 1
  %107 = trunc i8 %106 to i1
  %108 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %109 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %108, i32 0, i32 12
  %110 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = call i1 @print_rel_part(i1 noundef %107, i64 noundef %112, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44.154, i64 0, i64 0))
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %114)
  br label %116

116:                                              ; preds = %57, %53, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hhmmss(%struct.parser_control* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #4 {
  %6 = alloca %struct.parser_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 8
  store %struct.parser_control* %0, %struct.parser_control** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %14 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %13, i32 0, i32 9
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %16, i32 0, i32 10
  store i64 %15, i64* %17, align 8
  %18 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = bitcast %struct.timespec* %19 to i8*
  %26 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @time_zone_hhmm(%struct.parser_control* noundef %0, %struct.textint* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.parser_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.parser_control* %0, %struct.parser_control** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %17, 100
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %15, %12, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sdiv i64 %24, 100
  %26 = mul nsw i64 %25, 60
  %27 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = srem i64 %28, 100
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %7, align 8
  br label %131

31:                                               ; preds = %19
  br i1 false, label %32, label %66

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  br i1 true, label %37, label %41

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 153722867280912930
  br i1 %40, label %88, label %92

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 -1, %43
  %45 = icmp sle i64 -153722867280912930, %44
  br i1 %45, label %88, label %92

46:                                               ; preds = %32
  br i1 false, label %47, label %62

47:                                               ; preds = %46
  br i1 true, label %48, label %53

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -9223372036854775808
  %52 = icmp slt i64 0, %51
  br i1 %52, label %88, label %92

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 0, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = icmp slt i64 9223372036854775807, %60
  br i1 %61, label %88, label %92

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 -153722867280912930, %64
  br i1 %65, label %88, label %92

66:                                               ; preds = %31
  br i1 false, label %67, label %68

67:                                               ; preds = %66
  br i1 false, label %88, label %92

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  br i1 true, label %77, label %78

77:                                               ; preds = %76
  br i1 false, label %88, label %92

78:                                               ; preds = %76
  br i1 false, label %88, label %92

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sdiv i64 -9223372036854775808, %81
  %83 = icmp slt i64 %82, 60
  br i1 %83, label %88, label %92

84:                                               ; preds = %68
  %85 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 153722867280912930, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %79, %78, %77, %67, %62, %57, %48, %41, %37
  %89 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = mul i64 %90, 60
  store i64 %91, i64* %7, align 8
  br label %96

92:                                               ; preds = %84, %79, %78, %77, %67, %62, %57, %53, %48, %41, %37
  %93 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %94, 60
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ 1, %88 ], [ 0, %92 ]
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load i8, i8* %8, align 1
  %101 = trunc i8 %100 to i1
  %102 = zext i1 %101 to i32
  %103 = or i32 %102, %99
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %8, align 1
  %106 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 0
  %107 = load i8, i8* %106, align 8
  %108 = trunc i8 %107 to i1
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %110, i64 %111)
  %113 = extractvalue { i64, i1 } %112, 1
  %114 = extractvalue { i64, i1 } %112, 0
  store i64 %114, i64* %7, align 8
  %115 = zext i1 %113 to i32
  br label %123

116:                                              ; preds = %96
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %117, i64 %118)
  %120 = extractvalue { i64, i1 } %119, 1
  %121 = extractvalue { i64, i1 } %119, 0
  store i64 %121, i64* %7, align 8
  %122 = zext i1 %120 to i32
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i32 [ %115, %109 ], [ %122, %116 ]
  %125 = load i8, i8* %8, align 1
  %126 = trunc i8 %125 to i1
  %127 = zext i1 %126 to i32
  %128 = or i32 %127, %124
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %8, align 1
  br label %131

131:                                              ; preds = %123, %22
  %132 = load i8, i8* %8, align 1
  %133 = trunc i8 %132 to i1
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = icmp sle i64 -1440, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i64, i64* %7, align 8
  %139 = icmp sle i64 %138, 1440
  br i1 %139, label %141, label %140

140:                                              ; preds = %137, %134, %131
  store i1 false, i1* %4, align 1
  br label %147

141:                                              ; preds = %137
  %142 = load i64, i64* %7, align 8
  %143 = mul nsw i64 %142, 60
  %144 = trunc i64 %143 to i32
  %145 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %146 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  store i1 true, i1* %4, align 1
  br label %147

147:                                              ; preds = %141, %140
  %148 = load i1, i1* %4, align 1
  ret i1 %148
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @apply_relative_time(%struct.parser_control* noundef %0, %struct.relative_time* noundef %1, i32 noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.parser_control*, align 8
  %6 = alloca i32, align 4
  store %struct.parser_control* %0, %struct.parser_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %108

9:                                                ; preds = %3
  %10 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %11 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %10, i32 0, i32 12
  %12 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %17, i32 0, i32 6
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %13, i32 %15)
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  store i32 %21, i32* %18, align 8
  %22 = zext i1 %20 to i32
  %23 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %24 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %23, i32 0, i32 12
  %25 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %30 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %30, i32 0, i32 5
  %32 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %26, i64 %28)
  %33 = extractvalue { i64, i1 } %32, 1
  %34 = extractvalue { i64, i1 } %32, 0
  store i64 %34, i64* %31, align 8
  %35 = zext i1 %33 to i32
  %36 = or i32 %22, %35
  %37 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %38 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %37, i32 0, i32 12
  %39 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %44 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %44, i32 0, i32 4
  %46 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %40, i64 %42)
  %47 = extractvalue { i64, i1 } %46, 1
  %48 = extractvalue { i64, i1 } %46, 0
  store i64 %48, i64* %45, align 8
  %49 = zext i1 %47 to i32
  %50 = or i32 %36, %49
  %51 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %52 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %51, i32 0, i32 12
  %53 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %58 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %58, i32 0, i32 3
  %60 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %56)
  %61 = extractvalue { i64, i1 } %60, 1
  %62 = extractvalue { i64, i1 } %60, 0
  store i64 %62, i64* %59, align 8
  %63 = zext i1 %61 to i32
  %64 = or i32 %50, %63
  %65 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %66 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %65, i32 0, i32 12
  %67 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %72 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %72, i32 0, i32 2
  %74 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %68, i64 %70)
  %75 = extractvalue { i64, i1 } %74, 1
  %76 = extractvalue { i64, i1 } %74, 0
  store i64 %76, i64* %73, align 8
  %77 = zext i1 %75 to i32
  %78 = or i32 %64, %77
  %79 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %80 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %79, i32 0, i32 12
  %81 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %86 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %86, i32 0, i32 1
  %88 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %82, i64 %84)
  %89 = extractvalue { i64, i1 } %88, 1
  %90 = extractvalue { i64, i1 } %88, 0
  store i64 %90, i64* %87, align 8
  %91 = zext i1 %89 to i32
  %92 = or i32 %78, %91
  %93 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %94 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %100 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %99, i32 0, i32 12
  %101 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %100, i32 0, i32 0
  %102 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %96, i64 %98)
  %103 = extractvalue { i64, i1 } %102, 1
  %104 = extractvalue { i64, i1 } %102, 0
  store i64 %104, i64* %101, align 8
  %105 = zext i1 %103 to i32
  %106 = or i32 %92, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %207, label %208

108:                                              ; preds = %3
  %109 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %110 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %116 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %115, i32 0, i32 12
  %117 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %116, i32 0, i32 6
  %118 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %112, i32 %114)
  %119 = extractvalue { i32, i1 } %118, 1
  %120 = extractvalue { i32, i1 } %118, 0
  store i32 %120, i32* %117, align 8
  %121 = zext i1 %119 to i32
  %122 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %123 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %129 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %128, i32 0, i32 12
  %130 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %129, i32 0, i32 5
  %131 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %125, i64 %127)
  %132 = extractvalue { i64, i1 } %131, 1
  %133 = extractvalue { i64, i1 } %131, 0
  store i64 %133, i64* %130, align 8
  %134 = zext i1 %132 to i32
  %135 = or i32 %121, %134
  %136 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %137 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %136, i32 0, i32 12
  %138 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %143 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %142, i32 0, i32 12
  %144 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %143, i32 0, i32 4
  %145 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %139, i64 %141)
  %146 = extractvalue { i64, i1 } %145, 1
  %147 = extractvalue { i64, i1 } %145, 0
  store i64 %147, i64* %144, align 8
  %148 = zext i1 %146 to i32
  %149 = or i32 %135, %148
  %150 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %151 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %150, i32 0, i32 12
  %152 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %157 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %156, i32 0, i32 12
  %158 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %157, i32 0, i32 3
  %159 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %153, i64 %155)
  %160 = extractvalue { i64, i1 } %159, 1
  %161 = extractvalue { i64, i1 } %159, 0
  store i64 %161, i64* %158, align 8
  %162 = zext i1 %160 to i32
  %163 = or i32 %149, %162
  %164 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %165 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %164, i32 0, i32 12
  %166 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %171 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %170, i32 0, i32 12
  %172 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %171, i32 0, i32 2
  %173 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %167, i64 %169)
  %174 = extractvalue { i64, i1 } %173, 1
  %175 = extractvalue { i64, i1 } %173, 0
  store i64 %175, i64* %172, align 8
  %176 = zext i1 %174 to i32
  %177 = or i32 %163, %176
  %178 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %179 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %178, i32 0, i32 12
  %180 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %185 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %184, i32 0, i32 12
  %186 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %185, i32 0, i32 1
  %187 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %181, i64 %183)
  %188 = extractvalue { i64, i1 } %187, 1
  %189 = extractvalue { i64, i1 } %187, 0
  store i64 %189, i64* %186, align 8
  %190 = zext i1 %188 to i32
  %191 = or i32 %177, %190
  %192 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %193 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %192, i32 0, i32 12
  %194 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %199 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %198, i32 0, i32 12
  %200 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %199, i32 0, i32 0
  %201 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %195, i64 %197)
  %202 = extractvalue { i64, i1 } %201, 1
  %203 = extractvalue { i64, i1 } %201, 0
  store i64 %203, i64* %200, align 8
  %204 = zext i1 %202 to i32
  %205 = or i32 %191, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %108, %9
  store i1 false, i1* %4, align 1
  br label %211

208:                                              ; preds = %108, %9
  %209 = load %struct.parser_control*, %struct.parser_control** %5, align 8
  %210 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %209, i32 0, i32 14
  store i8 1, i8* %210, align 1
  store i1 true, i1* %4, align 1
  br label %211

211:                                              ; preds = %208, %207
  %212 = load i1, i1* %4, align 1
  ret i1 %212
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @debugging(%struct.parser_control* noundef %0) #4 {
  %2 = alloca %struct.parser_control*, align 8
  store %struct.parser_control* %0, %struct.parser_control** %2, align 8
  %3 = load %struct.parser_control*, %struct.parser_control** %2, align 8
  %4 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %3, i32 0, i32 24
  %5 = load i8, i8* %4, align 2
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_printf(i8* noundef %0, ...) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = alloca %"struct.std::__va_list", align 8
  store i8* %0, i8** %2, align 8
  call void @dbg_herald()
  %5 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast %"struct.std::__va_list"* %4 to i8*
  %9 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = call i32 @vfprintf(%struct._IO_FILE* noundef %6, i8* noundef %7, %"struct.std::__va_list"* noundef %4)
  %11 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.va_end(i8* %11)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @time_overflow(i64 noundef %0) #4 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %4, i64 0)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  store i64 %7, i64* %3, align 8
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digits_to_date_time(%struct.parser_control* noundef %0, %struct.textint* noundef %1) #4 {
  %3 = alloca %struct.parser_control*, align 8
  %4 = alloca %struct.timespec, align 8
  store %struct.parser_control* %0, %struct.parser_control** %3, align 8
  %5 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %6 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %5, i32 0, i32 15
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %11 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.textint, %struct.textint* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %9
  %16 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %16, i32 0, i32 14
  %18 = load i8, i8* %17, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %22 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %21, i32 0, i32 20
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 2, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %20
  %30 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %31 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %30, i32 0, i32 22
  store i8 1, i8* %31, align 8
  %32 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %33 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %32, i32 0, i32 6
  %34 = bitcast %struct.textint* %33 to i8*
  %35 = bitcast %struct.textint* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  br label %104

36:                                               ; preds = %25, %15, %9, %2
  %37 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 4, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %42 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %41, i32 0, i32 15
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = srem i64 %46, 100
  %48 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %49 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %48, i32 0, i32 8
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sdiv i64 %51, 100
  %53 = srem i64 %52, 100
  %54 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %55 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sdiv i64 %57, 10000
  %59 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %60 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.textint, %struct.textint* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 4
  %65 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %66 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.textint, %struct.textint* %66, i32 0, i32 2
  store i64 %64, i64* %67, align 8
  br label %103

68:                                               ; preds = %36
  %69 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %70 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %69, i32 0, i32 20
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 2
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %80 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %79, i32 0, i32 9
  store i64 %78, i64* %80, align 8
  %81 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %82 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  br label %94

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sdiv i64 %85, 100
  %87 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %88 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %87, i32 0, i32 9
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds %struct.textint, %struct.textint* %1, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = srem i64 %90, 100
  %92 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %93 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %92, i32 0, i32 10
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %83, %76
  %95 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %96 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = bitcast %struct.timespec* %96 to i8*
  %100 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %102 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %101, i32 0, i32 5
  store i32 2, i32* %102, align 4
  br label %103

103:                                              ; preds = %94, %40
  br label %104

104:                                              ; preds = %103, %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yyerror(%struct.parser_control* noundef %0, i8* noundef %1) #4 {
  %3 = alloca %struct.parser_control*, align 8
  %4 = alloca i8*, align 8
  store %struct.parser_control* %0, %struct.parser_control** %3, align 8
  store i8* %1, i8** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yydestruct(i8* noundef %0, i32 noundef %1, %union.YYSTYPE* noundef %2, %struct.parser_control* noundef %3) #4 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.YYSTYPE*, align 8
  %8 = alloca %struct.parser_control*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.YYSTYPE* %2, %union.YYSTYPE** %7, align 8
  store %struct.parser_control* %3, %struct.parser_control** %8, align 8
  %9 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8
  %10 = load %struct.parser_control*, %struct.parser_control** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47.144, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_herald() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fputs(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.145, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  ret void
}

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @print_rel_part(i1 noundef %0, i64 noundef %1, i8* noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = zext i1 %0 to i8
  store i8 %8, i8* %5, align 1
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8, i8* %5, align 1
  %13 = trunc i8 %12 to i1
  store i1 %13, i1* %4, align 1
  br label %25

14:                                               ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8, i8* %5, align 1
  %17 = trunc i8 %16 to i1
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45.155, i64 0, i64 %20
  %22 = load i64, i64* %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef %21, i64 noundef %22, i8* noundef %23)
  store i1 true, i1* %4, align 1
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i1, i1* %4, align 1
  ret i1 %26
}

declare i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_days(%struct.parser_control* noundef %0, i8* noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.parser_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parser_control* %0, %struct.parser_control** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %9 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %8, i32 0, i32 31
  %10 = load i8, i8* %9, align 1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %12, label %43

12:                                               ; preds = %3
  %13 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %14 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 -1, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 12
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %27 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = getelementptr inbounds [14 x [11 x i8]], [14 x [11 x i8]]* @str_days.ordinal_values, i64 0, i64 %29
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %30, i64 0, i64 0
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %23, i64 noundef %25, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33.168, i64 0, i64 0), i8* noundef %31) #18
  br label %41

33:                                               ; preds = %17, %12
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %38 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34.169, i64 0, i64 0), i64 noundef %39) #18
  br label %41

41:                                               ; preds = %33, %22
  %42 = phi i32 [ %32, %22 ], [ %40, %33 ]
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %3
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %48 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 0, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %46
  %52 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %53 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 0, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.35.170, i64 0, i64 %75
  %77 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %78 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* @str_days.days_values, i64 0, i64 %80
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %81, i64 0, i64 0
  %83 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %67, i64 noundef %71, i8* noundef %76, i8* noundef %82) #18
  br label %85

84:                                               ; preds = %59, %56, %51, %46
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i8*, i8** %5, align 8
  ret i8* %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @time_zone_str(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 45, i32 43
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %6, align 1
  %17 = load i32, i32* %3, align 4
  %18 = sdiv i32 %17, 3600
  %19 = call i32 @abs(i32 noundef %18) #21
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.167, i64 0, i64 0), i32 noundef %22, i32 noundef %23) #18
  %25 = load i8*, i8** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = srem i32 %28, 3600
  %30 = call i32 @abs(i32 noundef %29) #21
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 60
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = srem i32 %36, 60
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 58, i8* %38, align 1
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 10
  %42 = add nsw i32 48, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %46, 10
  %48 = add nsw i32 48, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %33
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 58, i8* %55, align 1
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 10
  %59 = add nsw i32 48, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %10, align 4
  %64 = srem i32 %63, 10
  %65 = add nsw i32 48, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %54, %33
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %69, %2
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #8

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table* @lookup_word(%struct.parser_control* noundef %0, i8* noundef %1) #4 {
  %3 = alloca %struct.table*, align 8
  %4 = alloca %struct.parser_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.table*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.parser_control* %0, %struct.parser_control** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i8 @to_uchar(i8 noundef %19)
  %21 = zext i8 %20 to i32
  %22 = call i32 @c_toupper(i32 noundef %21)
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %6, align 8
  store i8 %23, i8* %24, align 1
  br label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %13, !llvm.loop !31

28:                                               ; preds = %13
  store %struct.table* getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load %struct.table*, %struct.table** %9, align 8
  %31 = getelementptr inbounds %struct.table, %struct.table* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.table*, %struct.table** %9, align 8
  %37 = getelementptr inbounds %struct.table, %struct.table* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i1 @streq(i8* noundef %35, i8* noundef %38)
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %41, %struct.table** %3, align 8
  br label %236

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.table*, %struct.table** %9, align 8
  %45 = getelementptr inbounds %struct.table, %struct.table* %44, i32 1
  store %struct.table* %45, %struct.table** %9, align 8
  br label %29, !llvm.loop !32

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strlen(i8* noundef %47) #20
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i1 [ false, %51 ], [ %59, %54 ]
  br label %62

62:                                               ; preds = %60, %46
  %63 = phi i1 [ true, %46 ], [ %61, %60 ]
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %11, align 1
  store %struct.table* getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %65

65:                                               ; preds = %91, %62
  %66 = load %struct.table*, %struct.table** %9, align 8
  %67 = getelementptr inbounds %struct.table, %struct.table* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load i8, i8* %11, align 1
  %72 = trunc i8 %71 to i1
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.table*, %struct.table** %9, align 8
  %76 = getelementptr inbounds %struct.table, %struct.table* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strncmp(i8* noundef %74, i8* noundef %77, i64 noundef 3) #20
  br label %85

79:                                               ; preds = %70
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.table*, %struct.table** %9, align 8
  %82 = getelementptr inbounds %struct.table, %struct.table* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* noundef %80, i8* noundef %83) #20
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i32 [ %78, %73 ], [ %84, %79 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %89, %struct.table** %3, align 8
  br label %236

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.table*, %struct.table** %9, align 8
  %93 = getelementptr inbounds %struct.table, %struct.table* %92, i32 1
  store %struct.table* %93, %struct.table** %9, align 8
  br label %65, !llvm.loop !33

94:                                               ; preds = %65
  %95 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call %struct.table* @lookup_zone(%struct.parser_control* noundef %95, i8* noundef %96) #20
  store %struct.table* %97, %struct.table** %9, align 8
  %98 = icmp ne %struct.table* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %100, %struct.table** %3, align 8
  br label %236

101:                                              ; preds = %94
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** getelementptr inbounds ([1 x %struct.table], [1 x %struct.table]* @dst_table, i64 0, i64 0, i32 0), align 8
  %104 = call i1 @streq(i8* noundef %102, i8* noundef %103)
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store %struct.table* getelementptr inbounds ([1 x %struct.table], [1 x %struct.table]* @dst_table, i64 0, i64 0), %struct.table** %3, align 8
  br label %236

106:                                              ; preds = %101
  store %struct.table* getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %107

107:                                              ; preds = %121, %106
  %108 = load %struct.table*, %struct.table** %9, align 8
  %109 = getelementptr inbounds %struct.table, %struct.table* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = load %struct.table*, %struct.table** %9, align 8
  %115 = getelementptr inbounds %struct.table, %struct.table* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i1 @streq(i8* noundef %113, i8* noundef %116)
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %119, %struct.table** %3, align 8
  br label %236

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.table*, %struct.table** %9, align 8
  %123 = getelementptr inbounds %struct.table, %struct.table* %122, i32 1
  store %struct.table* %123, %struct.table** %9, align 8
  br label %107, !llvm.loop !34

124:                                              ; preds = %107
  %125 = load i8*, i8** %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = sub nsw i64 %126, 1
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 83
  br i1 %131, label %132, label %159

132:                                              ; preds = %124
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub nsw i64 %134, 1
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  store %struct.table* getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %137

137:                                              ; preds = %151, %132
  %138 = load %struct.table*, %struct.table** %9, align 8
  %139 = getelementptr inbounds %struct.table, %struct.table* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load i8*, i8** %5, align 8
  %144 = load %struct.table*, %struct.table** %9, align 8
  %145 = getelementptr inbounds %struct.table, %struct.table* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i1 @streq(i8* noundef %143, i8* noundef %146)
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %149, %struct.table** %3, align 8
  br label %236

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.table*, %struct.table** %9, align 8
  %153 = getelementptr inbounds %struct.table, %struct.table* %152, i32 1
  store %struct.table* %153, %struct.table** %9, align 8
  br label %137, !llvm.loop !35

154:                                              ; preds = %137
  %155 = load i8*, i8** %5, align 8
  %156 = load i64, i64* %8, align 8
  %157 = sub nsw i64 %156, 1
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 83, i8* %158, align 1
  br label %159

159:                                              ; preds = %154, %124
  store %struct.table* getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %160

160:                                              ; preds = %174, %159
  %161 = load %struct.table*, %struct.table** %9, align 8
  %162 = getelementptr inbounds %struct.table, %struct.table* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %177

165:                                              ; preds = %160
  %166 = load i8*, i8** %5, align 8
  %167 = load %struct.table*, %struct.table** %9, align 8
  %168 = getelementptr inbounds %struct.table, %struct.table* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i1 @streq(i8* noundef %166, i8* noundef %169)
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %172, %struct.table** %3, align 8
  br label %236

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.table*, %struct.table** %9, align 8
  %176 = getelementptr inbounds %struct.table, %struct.table* %175, i32 1
  store %struct.table* %176, %struct.table** %9, align 8
  br label %160, !llvm.loop !36

177:                                              ; preds = %160
  %178 = load i64, i64* %8, align 8
  %179 = icmp eq i64 %178, 1
  br i1 %179, label %180, label %205

180:                                              ; preds = %177
  store %struct.table* getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 0), %struct.table** %9, align 8
  br label %181

181:                                              ; preds = %201, %180
  %182 = load %struct.table*, %struct.table** %9, align 8
  %183 = getelementptr inbounds %struct.table, %struct.table* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %204

186:                                              ; preds = %181
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load %struct.table*, %struct.table** %9, align 8
  %192 = getelementptr inbounds %struct.table, %struct.table* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %190, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %186
  %199 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %199, %struct.table** %3, align 8
  br label %236

200:                                              ; preds = %186
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.table*, %struct.table** %9, align 8
  %203 = getelementptr inbounds %struct.table, %struct.table* %202, i32 1
  store %struct.table* %203, %struct.table** %9, align 8
  br label %181, !llvm.loop !37

204:                                              ; preds = %181
  br label %205

205:                                              ; preds = %204, %177
  store i8 0, i8* %10, align 1
  %206 = load i8*, i8** %5, align 8
  store i8* %206, i8** %7, align 8
  store i8* %206, i8** %6, align 8
  br label %207

207:                                              ; preds = %222, %205
  %208 = load i8*, i8** %7, align 8
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %6, align 8
  store i8 %209, i8* %210, align 1
  %211 = icmp ne i8 %209, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %207
  %213 = load i8*, i8** %7, align 8
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %215, 46
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  store i8 1, i8* %10, align 1
  br label %221

218:                                              ; preds = %212
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %6, align 8
  br label %221

221:                                              ; preds = %218, %217
  br label %222

222:                                              ; preds = %221
  %223 = load i8*, i8** %7, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %7, align 8
  br label %207, !llvm.loop !38

225:                                              ; preds = %207
  %226 = load i8, i8* %10, align 1
  %227 = trunc i8 %226 to i1
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = call %struct.table* @lookup_zone(%struct.parser_control* noundef %229, i8* noundef %230) #20
  store %struct.table* %231, %struct.table** %9, align 8
  %232 = icmp ne %struct.table* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load %struct.table*, %struct.table** %9, align 8
  store %struct.table* %234, %struct.table** %3, align 8
  br label %236

235:                                              ; preds = %228, %225
  store %struct.table* null, %struct.table** %3, align 8
  br label %236

236:                                              ; preds = %235, %233, %198, %171, %148, %118, %105, %99, %88, %40
  %237 = load %struct.table*, %struct.table** %3, align 8
  ret %struct.table* %237
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8 @to_uchar(i8 noundef %0) #4 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal %struct.table* @lookup_zone(%struct.parser_control* noundef %0, i8* noundef %1) #9 {
  %3 = alloca %struct.table*, align 8
  %4 = alloca %struct.parser_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table*, align 8
  store %struct.parser_control* %0, %struct.parser_control** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.table* getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 0), %struct.table** %6, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.table*, %struct.table** %6, align 8
  %9 = getelementptr inbounds %struct.table, %struct.table* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.table*, %struct.table** %6, align 8
  %15 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i1 @streq(i8* noundef %13, i8* noundef %16)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.table*, %struct.table** %6, align 8
  store %struct.table* %19, %struct.table** %3, align 8
  br label %64

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.table*, %struct.table** %6, align 8
  %23 = getelementptr inbounds %struct.table, %struct.table* %22, i32 1
  store %struct.table* %23, %struct.table** %6, align 8
  br label %7, !llvm.loop !39

24:                                               ; preds = %7
  %25 = load %struct.parser_control*, %struct.parser_control** %4, align 8
  %26 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %25, i32 0, i32 32
  %27 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %26, i64 0, i64 0
  store %struct.table* %27, %struct.table** %6, align 8
  br label %28

28:                                               ; preds = %42, %24
  %29 = load %struct.table*, %struct.table** %6, align 8
  %30 = getelementptr inbounds %struct.table, %struct.table* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.table*, %struct.table** %6, align 8
  %36 = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i1 @streq(i8* noundef %34, i8* noundef %37)
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.table*, %struct.table** %6, align 8
  store %struct.table* %40, %struct.table** %3, align 8
  br label %64

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.table*, %struct.table** %6, align 8
  %44 = getelementptr inbounds %struct.table, %struct.table* %43, i32 1
  store %struct.table* %44, %struct.table** %6, align 8
  br label %28, !llvm.loop !40

45:                                               ; preds = %28
  store %struct.table* getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 0), %struct.table** %6, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load %struct.table*, %struct.table** %6, align 8
  %48 = getelementptr inbounds %struct.table, %struct.table* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.table*, %struct.table** %6, align 8
  %54 = getelementptr inbounds %struct.table, %struct.table* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i1 @streq(i8* noundef %52, i8* noundef %55)
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load %struct.table*, %struct.table** %6, align 8
  store %struct.table* %58, %struct.table** %3, align 8
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.table*, %struct.table** %6, align 8
  %62 = getelementptr inbounds %struct.table, %struct.table* %61, i32 1
  store %struct.table* %62, %struct.table** %6, align 8
  br label %46, !llvm.loop !41

63:                                               ; preds = %46
  store %struct.table* null, %struct.table** %3, align 8
  br label %64

64:                                               ; preds = %63, %57, %39, %18
  %65 = load %struct.table*, %struct.table** %3, align 8
  ret %struct.table* %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @parse_datetime2(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef %3, %struct.tm_zone* noundef %4, i8* noundef %5) #4 {
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm_zone*, align 8
  %12 = alloca i8*, align 8
  store %struct.timespec* %0, %struct.timespec** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.tm_zone* %4, %struct.tm_zone** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.timespec*, %struct.timespec** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.timespec*, %struct.timespec** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.tm_zone*, %struct.tm_zone** %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i1 @parse_datetime_body(%struct.timespec* noundef %13, i8* noundef %14, %struct.timespec* noundef %15, i32 noundef %16, %struct.tm_zone* noundef %17, i8* noundef %18)
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @parse_datetime_body(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef %3, %struct.tm_zone* noundef %4, i8* noundef %5) #4 {
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm_zone*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tm, align 8
  %14 = alloca %struct.tm, align 8
  %15 = alloca [27 x i8], align 1
  %16 = alloca [100 x i8], align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [100 x i8], align 1
  %21 = alloca %struct.timespec, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca %struct.tm_zone*, align 8
  %26 = alloca %struct.relative_time, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.tm_zone*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.tm, align 8
  %34 = alloca %struct.parser_control, align 8
  %35 = alloca %struct.timespec, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca %struct.tm, align 8
  %39 = alloca %struct.textint, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8, align 1
  %42 = alloca i8, align 1
  %43 = alloca [30 x i8], align 1
  %44 = alloca %struct.tm_zone*, align 8
  %45 = alloca [100 x i8], align 1
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca [13 x i8], align 1
  %52 = alloca i8, align 1
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca %struct.tm, align 8
  %69 = alloca i64, align 8
  %70 = alloca i32, align 4
  %71 = alloca %struct.tm, align 8
  %72 = alloca %struct.tm, align 8
  %73 = alloca i8, align 1
  %74 = alloca i8, align 1
  %75 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.tm_zone* %4, %struct.tm_zone** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8 0, i8* %17, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strlen(i8* noundef %77) #20
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %80 = load %struct.timespec*, %struct.timespec** %9, align 8
  %81 = icmp ne %struct.timespec* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %6
  call void @gettime(%struct.timespec* noundef %21)
  store %struct.timespec* %21, %struct.timespec** %9, align 8
  br label %83

83:                                               ; preds = %82, %6
  %84 = load %struct.timespec*, %struct.timespec** %9, align 8
  %85 = getelementptr inbounds %struct.timespec, %struct.timespec* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %22, align 8
  %87 = load %struct.timespec*, %struct.timespec** %9, align 8
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %97, %83
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %24, align 1
  %94 = load i8, i8* %24, align 1
  %95 = zext i8 %94 to i32
  %96 = call i1 @c_isspace(i32 noundef %95)
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  br label %91, !llvm.loop !42

100:                                              ; preds = %91
  %101 = load %struct.tm_zone*, %struct.tm_zone** %11, align 8
  store %struct.tm_zone* %101, %struct.tm_zone** %25, align 8
  %102 = bitcast %struct.relative_time* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %102, i8 0, i64 56, i1 false)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strncmp(i8* noundef %103, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.183, i64 0, i64 0), i64 noundef 4) #20
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %203

106:                                              ; preds = %100
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %27, align 8
  store i64 1, i64* %28, align 8
  %109 = load i8*, i8** %27, align 8
  store i8* %109, i8** %29, align 8
  br label %110

110:                                              ; preds = %197, %106
  %111 = load i8*, i8** %29, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %202

114:                                              ; preds = %110
  %115 = load i8*, i8** %29, align 8
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 92
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load i8*, i8** %29, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %29, align 8
  %122 = load i8*, i8** %29, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 92
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = load i8*, i8** %29, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 34
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %202

132:                                              ; preds = %126, %119
  br label %196

133:                                              ; preds = %114
  %134 = load i8*, i8** %29, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %138, label %195

138:                                              ; preds = %133
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  store i8* %139, i8** %31, align 8
  %140 = load i64, i64* %28, align 8
  %141 = icmp slt i64 100, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i64, i64* %28, align 8
  %144 = call noalias i8* @malloc(i64 noundef %143) #18
  store i8* %144, i8** %19, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  br label %1495

148:                                              ; preds = %142
  %149 = load i8*, i8** %19, align 8
  store i8* %149, i8** %31, align 8
  br label %150

150:                                              ; preds = %148, %138
  %151 = load i8*, i8** %31, align 8
  store i8* %151, i8** %32, align 8
  %152 = load i8*, i8** %27, align 8
  store i8* %152, i8** %29, align 8
  br label %153

153:                                              ; preds = %170, %150
  %154 = load i8*, i8** %29, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 34
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load i8*, i8** %29, align 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 92
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %29, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %29, align 8
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %32, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %32, align 8
  store i8 %167, i8* %168, align 1
  br label %170

170:                                              ; preds = %158
  %171 = load i8*, i8** %29, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %29, align 8
  br label %153, !llvm.loop !43

173:                                              ; preds = %153
  %174 = load i8*, i8** %32, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %31, align 8
  %176 = call %struct.tm_zone* @tzalloc(i8* noundef %175)
  store %struct.tm_zone* %176, %struct.tm_zone** %30, align 8
  %177 = load %struct.tm_zone*, %struct.tm_zone** %30, align 8
  %178 = icmp ne %struct.tm_zone* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %1495

180:                                              ; preds = %173
  %181 = load %struct.tm_zone*, %struct.tm_zone** %30, align 8
  store %struct.tm_zone* %181, %struct.tm_zone** %25, align 8
  %182 = load i8*, i8** %31, align 8
  store i8* %182, i8** %12, align 8
  %183 = load i8*, i8** %29, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  store i8* %184, i8** %8, align 8
  br label %185

185:                                              ; preds = %191, %180
  %186 = load i8*, i8** %8, align 8
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %24, align 1
  %188 = load i8, i8* %24, align 1
  %189 = zext i8 %188 to i32
  %190 = call i1 @c_isspace(i32 noundef %189)
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %8, align 8
  br label %185, !llvm.loop !44

194:                                              ; preds = %185
  br label %202

195:                                              ; preds = %133
  br label %196

196:                                              ; preds = %195, %132
  br label %197

197:                                              ; preds = %196
  %198 = load i8*, i8** %29, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %29, align 8
  %200 = load i64, i64* %28, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %28, align 8
  br label %110, !llvm.loop !45

202:                                              ; preds = %194, %131, %110
  br label %203

203:                                              ; preds = %202, %100
  %204 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %205 = load %struct.timespec*, %struct.timespec** %9, align 8
  %206 = getelementptr inbounds %struct.timespec, %struct.timespec* %205, i32 0, i32 0
  %207 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %204, i64* noundef %206, %struct.tm* noundef %33)
  %208 = icmp ne %struct.tm* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %1495

210:                                              ; preds = %203
  %211 = load i8*, i8** %8, align 8
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i64 0, i64 0), i8** %8, align 8
  br label %216

216:                                              ; preds = %215, %210
  %217 = load i8*, i8** %8, align 8
  %218 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 0
  store i8* %217, i8** %218, align 8
  %219 = load i32, i32* %10, align 4
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  %222 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 24
  %223 = zext i1 %221 to i8
  store i8 %223, i8* %222, align 2
  %224 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 6
  %227 = getelementptr inbounds %struct.textint, %struct.textint* %226, i32 0, i32 1
  %228 = sext i32 %225 to i64
  %229 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %228, i64 1900)
  %230 = extractvalue { i64, i1 } %229, 1
  %231 = extractvalue { i64, i1 } %229, 0
  store i64 %231, i64* %227, align 8
  br i1 %230, label %232, label %237

232:                                              ; preds = %216
  %233 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %233, label %234, label %236

234:                                              ; preds = %232
  %235 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.185, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %235)
  br label %236

236:                                              ; preds = %234, %232
  br label %1495

237:                                              ; preds = %216
  %238 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 6
  %239 = getelementptr inbounds %struct.textint, %struct.textint* %238, i32 0, i32 2
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 7
  store i64 %243, i64* %244, align 8
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 8
  store i64 %247, i64* %248, align 8
  %249 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 9
  store i64 %251, i64* %252, align 8
  %253 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 10
  store i64 %255, i64* %256, align 8
  %257 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 11
  %258 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  %259 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %258, align 8
  %262 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %263 = load i32, i32* %23, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %262, align 8
  %265 = bitcast %struct.timespec* %257 to i8*
  %266 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 16, i1 false)
  %267 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 8
  %268 = load i32, i32* %267, align 8
  %269 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 %268, i32* %269, align 8
  %270 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 5
  store i32 2, i32* %270, align 4
  %271 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %272 = bitcast %struct.relative_time* %271 to i8*
  %273 = bitcast %struct.relative_time* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 56, i1 false)
  %274 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 13
  store i8 0, i8* %274, align 8
  %275 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 14
  store i8 0, i8* %275, align 1
  %276 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  store i64 0, i64* %276, align 8
  %277 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  store i64 0, i64* %277, align 8
  %278 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  store i64 0, i64* %278, align 8
  %279 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 17
  store i64 0, i64* %279, align 8
  %280 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 18
  store i64 0, i64* %280, align 8
  %281 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 19
  store i64 0, i64* %281, align 8
  %282 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  store i64 0, i64* %282, align 8
  %283 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 22
  store i8 0, i8* %283, align 8
  %284 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 23
  store i8 0, i8* %284, align 1
  %285 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 25
  store i8 0, i8* %285, align 1
  %286 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 26
  store i8 0, i8* %286, align 4
  %287 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 28
  store i8 0, i8* %287, align 2
  %288 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 27
  store i8 0, i8* %288, align 1
  %289 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 29
  store i8 0, i8* %289, align 1
  %290 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 30
  store i8 0, i8* %290, align 8
  %291 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 31
  store i8 0, i8* %291, align 1
  %292 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %293 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %292, i64 0, i64 0
  %294 = getelementptr inbounds %struct.table, %struct.table* %293, i32 0, i32 0
  store i8* null, i8** %294, align 8
  call void @populate_local_time_zone_table(%struct.parser_control* noundef %34, %struct.tm* noundef %33)
  store i32 1, i32* %36, align 4
  br label %295

295:                                              ; preds = %351, %237
  %296 = load i32, i32* %36, align 4
  %297 = icmp sle i32 %296, 3
  br i1 %297, label %298, label %354

298:                                              ; preds = %295
  %299 = load i64, i64* %22, align 8
  %300 = load i32, i32* %36, align 4
  %301 = mul nsw i32 %300, 7776000
  %302 = sext i32 %301 to i64
  %303 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %299, i64 %302)
  %304 = extractvalue { i64, i1 } %303, 1
  %305 = extractvalue { i64, i1 } %303, 0
  store i64 %305, i64* %37, align 8
  br i1 %304, label %306, label %307

306:                                              ; preds = %298
  br label %354

307:                                              ; preds = %298
  %308 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %309 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %308, i64* noundef %37, %struct.tm* noundef %38)
  %310 = icmp ne %struct.tm* %309, null
  br i1 %310, label %311, label %350

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %313 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %312, i64 0, i64 0
  %314 = getelementptr inbounds %struct.table, %struct.table* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %325

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %321 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %320, i64 0, i64 0
  %322 = getelementptr inbounds %struct.table, %struct.table* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %319, %323
  br i1 %324, label %325, label %350

325:                                              ; preds = %317, %311
  call void @populate_local_time_zone_table(%struct.parser_control* noundef %34, %struct.tm* noundef %38)
  %326 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %327 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %326, i64 0, i64 1
  %328 = getelementptr inbounds %struct.table, %struct.table* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %349

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %333 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %332, i64 0, i64 0
  %334 = getelementptr inbounds %struct.table, %struct.table* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %337 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %336, i64 0, i64 1
  %338 = getelementptr inbounds %struct.table, %struct.table* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = call i1 @streq(i8* noundef %335, i8* noundef %339)
  br i1 %340, label %341, label %348

341:                                              ; preds = %331
  %342 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %343 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %342, i64 0, i64 0
  %344 = getelementptr inbounds %struct.table, %struct.table* %343, i32 0, i32 2
  store i32 -1, i32* %344, align 4
  %345 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 32
  %346 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %345, i64 0, i64 1
  %347 = getelementptr inbounds %struct.table, %struct.table* %346, i32 0, i32 0
  store i8* null, i8** %347, align 8
  br label %348

348:                                              ; preds = %341, %331
  br label %354

349:                                              ; preds = %325
  br label %350

350:                                              ; preds = %349, %317, %307
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %36, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %36, align 4
  br label %295, !llvm.loop !46

354:                                              ; preds = %348, %306, %295
  %355 = call i32 @yyparse(%struct.parser_control* noundef %34)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %373

357:                                              ; preds = %354
  %358 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %358, label %359, label %372

359:                                              ; preds = %357
  %360 = load i8*, i8** %18, align 8
  %361 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ule i8* %360, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.186, i64 0, i64 0)) #18
  br label %368

366:                                              ; preds = %359
  %367 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.187, i64 0, i64 0)) #18
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi i8* [ %365, %364 ], [ %367, %366 ]
  %370 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %369, i8* noundef %371)
  br label %372

372:                                              ; preds = %368, %357
  br label %1495

373:                                              ; preds = %354
  %374 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %374, label %375, label %453

375:                                              ; preds = %373
  %376 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %376)
  %377 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 13
  %378 = load i8, i8* %377, align 8
  %379 = trunc i8 %378 to i1
  br i1 %379, label %380, label %384

380:                                              ; preds = %375
  %381 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.189, i64 0, i64 0)) #18
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %383 = call i32 @fputs(i8* noundef %381, %struct._IO_FILE* noundef %382)
  br label %424

384:                                              ; preds = %375
  %385 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.190, i64 0, i64 0)) #18
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %391 = call i32 @fputs(i8* noundef %389, %struct._IO_FILE* noundef %390)
  br label %423

392:                                              ; preds = %384
  %393 = load i8*, i8** %12, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %418

395:                                              ; preds = %392
  %396 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %397 = load %struct.tm_zone*, %struct.tm_zone** %11, align 8
  %398 = icmp ne %struct.tm_zone* %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %395
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %401 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.191, i64 0, i64 0)) #18
  %402 = load i8*, i8** %12, align 8
  %403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %400, i8* noundef %401, i8* noundef %402)
  br label %417

404:                                              ; preds = %395
  %405 = load i8*, i8** %12, align 8
  %406 = call i1 @streq(i8* noundef %405, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0))
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  %408 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.193, i64 0, i64 0)) #18
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %410 = call i32 @fputs(i8* noundef %408, %struct._IO_FILE* noundef %409)
  br label %416

411:                                              ; preds = %404
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %413 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.194, i64 0, i64 0)) #18
  %414 = load i8*, i8** %12, align 8
  %415 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %412, i8* noundef %413, i8* noundef %414)
  br label %416

416:                                              ; preds = %411, %407
  br label %417

417:                                              ; preds = %416, %399
  br label %422

418:                                              ; preds = %392
  %419 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i64 0, i64 0)) #18
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %421 = call i32 @fputs(i8* noundef %419, %struct._IO_FILE* noundef %420)
  br label %422

422:                                              ; preds = %418, %417
  br label %423

423:                                              ; preds = %422, %388
  br label %424

424:                                              ; preds = %423, %380
  %425 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 18
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = icmp slt i32 0, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %438 = call i32 @fputs(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i64 0, i64 0), %struct._IO_FILE* noundef %437)
  br label %439

439:                                              ; preds = %436, %432, %428, %424
  %440 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %450

443:                                              ; preds = %439
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %445 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = getelementptr inbounds [27 x i8], [27 x i8]* %15, i64 0, i64 0
  %448 = call i8* @time_zone_str(i32 noundef %446, i8* noundef %447)
  %449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %444, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0), i8* noundef %448)
  br label %450

450:                                              ; preds = %443, %439
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %452 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %451)
  br label %453

453:                                              ; preds = %450, %373
  %454 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 13
  %455 = load i8, i8* %454, align 8
  %456 = trunc i8 %455 to i1
  br i1 %456, label %457, label %462

457:                                              ; preds = %453
  %458 = load %struct.timespec*, %struct.timespec** %7, align 8
  %459 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 11
  %460 = bitcast %struct.timespec* %458 to i8*
  %461 = bitcast %struct.timespec* %459 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %460, i8* align 8 %461, i64 16, i1 false)
  br label %1429

462:                                              ; preds = %453
  %463 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %466 = load i64, i64* %465, align 8
  %467 = or i64 %464, %466
  %468 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %469 = load i64, i64* %468, align 8
  %470 = or i64 %467, %469
  %471 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 19
  %472 = load i64, i64* %471, align 8
  %473 = or i64 %470, %472
  %474 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 17
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 18
  %477 = load i64, i64* %476, align 8
  %478 = add nsw i64 %475, %477
  %479 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %480 = load i64, i64* %479, align 8
  %481 = add nsw i64 %478, %480
  %482 = or i64 %473, %481
  %483 = icmp slt i64 1, %482
  br i1 %483, label %484, label %524

484:                                              ; preds = %462
  %485 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %485, label %486, label %523

486:                                              ; preds = %484
  %487 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  %488 = load i64, i64* %487, align 8
  %489 = icmp sgt i64 %488, 1
  br i1 %489, label %490, label %492

490:                                              ; preds = %486
  %491 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.198, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %491)
  br label %492

492:                                              ; preds = %490, %486
  %493 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %494 = load i64, i64* %493, align 8
  %495 = icmp sgt i64 %494, 1
  br i1 %495, label %496, label %498

496:                                              ; preds = %492
  %497 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.199, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %497)
  br label %498

498:                                              ; preds = %496, %492
  %499 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %500 = load i64, i64* %499, align 8
  %501 = icmp sgt i64 %500, 1
  br i1 %501, label %502, label %504

502:                                              ; preds = %498
  %503 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.200, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %503)
  br label %504

504:                                              ; preds = %502, %498
  %505 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 19
  %506 = load i64, i64* %505, align 8
  %507 = icmp sgt i64 %506, 1
  br i1 %507, label %508, label %510

508:                                              ; preds = %504
  %509 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.201, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %509)
  br label %510

510:                                              ; preds = %508, %504
  %511 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 17
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 18
  %514 = load i64, i64* %513, align 8
  %515 = add nsw i64 %512, %514
  %516 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %517 = load i64, i64* %516, align 8
  %518 = add nsw i64 %515, %517
  %519 = icmp sgt i64 %518, 1
  br i1 %519, label %520, label %522

520:                                              ; preds = %510
  %521 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.202, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %521)
  br label %522

522:                                              ; preds = %520, %510
  br label %523

523:                                              ; preds = %522, %484
  br label %1495

524:                                              ; preds = %462
  %525 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 6
  %526 = call i1 @debugging(%struct.parser_control* noundef %34)
  %527 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %528 = bitcast %struct.textint* %39 to i8*
  %529 = bitcast %struct.textint* %525 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %528, i8* align 8 %529, i64 24, i1 false)
  %530 = call i1 @to_tm_year(%struct.textint* noundef %39, i1 noundef %526, i32* noundef %527)
  br i1 %530, label %531, label %553

531:                                              ; preds = %524
  %532 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 7
  %533 = load i64, i64* %532, align 8
  %534 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %535 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %533, i64 -1)
  %536 = extractvalue { i64, i1 } %535, 1
  %537 = extractvalue { i64, i1 } %535, 0
  %538 = trunc i64 %537 to i32
  %539 = sext i32 %538 to i64
  %540 = icmp ne i64 %537, %539
  %541 = or i1 %536, %540
  store i32 %538, i32* %534, align 8
  br i1 %541, label %553, label %542

542:                                              ; preds = %531
  %543 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 8
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %546 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %544, i64 0)
  %547 = extractvalue { i64, i1 } %546, 1
  %548 = extractvalue { i64, i1 } %546, 0
  %549 = trunc i64 %548 to i32
  %550 = sext i32 %549 to i64
  %551 = icmp ne i64 %548, %550
  %552 = or i1 %547, %551
  store i32 %549, i32* %545, align 4
  br i1 %552, label %553, label %558

553:                                              ; preds = %542, %531, %524
  %554 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %554, label %555, label %557

555:                                              ; preds = %553
  %556 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.203, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %556)
  br label %557

557:                                              ; preds = %555, %553
  br label %1495

558:                                              ; preds = %542
  %559 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %574, label %562

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 14
  %564 = load i8, i8* %563, align 1
  %565 = trunc i8 %564 to i1
  br i1 %565, label %566, label %628

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %628, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %628, label %574

574:                                              ; preds = %570, %558
  %575 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 9
  %576 = load i64, i64* %575, align 8
  %577 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 5
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @to_hour(i64 noundef %576, i32 noundef %578)
  %580 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  store i32 %579, i32* %580, align 8
  %581 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %604

584:                                              ; preds = %574
  %585 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 5
  %586 = load i32, i32* %585, align 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %584
  br label %595

589:                                              ; preds = %584
  %590 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 5
  %591 = load i32, i32* %590, align 4
  %592 = icmp eq i32 %591, 1
  %593 = zext i1 %592 to i64
  %594 = select i1 %592, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.160, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0)
  br label %595

595:                                              ; preds = %589, %588
  %596 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i64 0, i64 0), %588 ], [ %594, %589 ]
  store i8* %596, i8** %40, align 8
  %597 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %597, label %598, label %603

598:                                              ; preds = %595
  %599 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.205, i64 0, i64 0)) #18
  %600 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 9
  %601 = load i64, i64* %600, align 8
  %602 = load i8*, i8** %40, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %599, i64 noundef %601, i8* noundef %602)
  br label %603

603:                                              ; preds = %598, %595
  br label %1495

604:                                              ; preds = %574
  %605 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 10
  %606 = load i64, i64* %605, align 8
  %607 = trunc i64 %606 to i32
  %608 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  store i32 %607, i32* %608, align 4
  %609 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 11
  %610 = getelementptr inbounds %struct.timespec, %struct.timespec* %609, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = trunc i64 %611 to i32
  %613 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 %612, i32* %613, align 8
  %614 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %614, label %615, label %627

615:                                              ; preds = %604
  %616 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  %617 = load i64, i64* %616, align 8
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %621

619:                                              ; preds = %615
  %620 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.206, i64 0, i64 0)) #18
  br label %623

621:                                              ; preds = %615
  %622 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.207, i64 0, i64 0)) #18
  br label %623

623:                                              ; preds = %621, %619
  %624 = phi i8* [ %620, %619 ], [ %622, %621 ]
  %625 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %626 = call i8* @debug_strftime(%struct.tm* noundef %13, i8* noundef %625, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %624, i8* noundef %626)
  br label %627

627:                                              ; preds = %623, %604
  br label %638

628:                                              ; preds = %570, %566, %562
  %629 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 0, i32* %629, align 8
  %630 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  store i32 0, i32* %630, align 4
  %631 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  store i32 0, i32* %631, align 8
  %632 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 11
  %633 = getelementptr inbounds %struct.timespec, %struct.timespec* %632, i32 0, i32 1
  store i64 0, i64* %633, align 8
  %634 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %634, label %635, label %637

635:                                              ; preds = %628
  %636 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.208, i64 0, i64 0)) #18
  call void (i8*, ...) @dbg_printf(i8* noundef %636, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i64 0, i64 0))
  br label %637

637:                                              ; preds = %635, %628
  br label %638

638:                                              ; preds = %637, %627
  %639 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %642 = load i64, i64* %641, align 8
  %643 = or i64 %640, %642
  %644 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 20
  %645 = load i64, i64* %644, align 8
  %646 = or i64 %643, %645
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %650

648:                                              ; preds = %638
  %649 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 -1, i32* %649, align 8
  br label %650

650:                                              ; preds = %648, %638
  %651 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 18
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %658

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 3
  %656 = load i32, i32* %655, align 4
  %657 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 %656, i32* %657, align 8
  br label %658

658:                                              ; preds = %654, %650
  %659 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  store i32 %660, i32* %661, align 8
  %662 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  store i32 %663, i32* %664, align 4
  %665 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %666 = load i32, i32* %665, align 8
  %667 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  store i32 %666, i32* %667, align 8
  %668 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %669 = load i32, i32* %668, align 4
  %670 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 3
  store i32 %669, i32* %670, align 4
  %671 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %672 = load i32, i32* %671, align 8
  %673 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 4
  store i32 %672, i32* %673, align 8
  %674 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %675 = load i32, i32* %674, align 4
  %676 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 5
  store i32 %675, i32* %676, align 4
  %677 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  %678 = load i32, i32* %677, align 8
  %679 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  store i32 %678, i32* %679, align 8
  %680 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  store i32 -1, i32* %680, align 8
  %681 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %682 = call i64 @mktime_z(%struct.tm_zone* noundef %681, %struct.tm* noundef %13)
  store i64 %682, i64* %22, align 8
  %683 = call i1 @mktime_ok(%struct.tm* noundef %14, %struct.tm* noundef %13)
  br i1 %683, label %744, label %684

684:                                              ; preds = %658
  store i8 0, i8* %41, align 1
  %685 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %686 = load i64, i64* %685, align 8
  %687 = icmp ne i64 %686, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %42, align 1
  %689 = load i8, i8* %42, align 1
  %690 = trunc i8 %689 to i1
  br i1 %690, label %691, label %737

691:                                              ; preds = %684
  %692 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 2
  store i8 88, i8* %692, align 1
  %693 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 1
  store i8 88, i8* %693, align 1
  %694 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 0
  store i8 88, i8* %694, align 1
  %695 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 4
  %696 = load i32, i32* %695, align 8
  %697 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 3
  %698 = call i8* @time_zone_str(i32 noundef %696, i8* noundef %697)
  %699 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 0
  %700 = call %struct.tm_zone* @tzalloc(i8* noundef %699)
  store %struct.tm_zone* %700, %struct.tm_zone** %44, align 8
  %701 = load %struct.tm_zone*, %struct.tm_zone** %44, align 8
  %702 = icmp ne %struct.tm_zone* %701, null
  br i1 %702, label %709, label %703

703:                                              ; preds = %691
  %704 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %704, label %705, label %708

705:                                              ; preds = %703
  %706 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.210, i64 0, i64 0)) #18
  %707 = getelementptr inbounds [30 x i8], [30 x i8]* %43, i64 0, i64 0
  call void (i8*, ...) @dbg_printf(i8* noundef %706, i8* noundef %707)
  br label %708

708:                                              ; preds = %705, %703
  br label %1495

709:                                              ; preds = %691
  %710 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 %711, i32* %712, align 8
  %713 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %714 = load i32, i32* %713, align 4
  %715 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  store i32 %714, i32* %715, align 4
  %716 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %717 = load i32, i32* %716, align 8
  %718 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  store i32 %717, i32* %718, align 8
  %719 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 3
  %720 = load i32, i32* %719, align 4
  %721 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  store i32 %720, i32* %721, align 4
  %722 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 4
  %723 = load i32, i32* %722, align 8
  %724 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  store i32 %723, i32* %724, align 8
  %725 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 5
  %726 = load i32, i32* %725, align 4
  %727 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  store i32 %726, i32* %727, align 4
  %728 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  %729 = load i32, i32* %728, align 8
  %730 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 %729, i32* %730, align 8
  %731 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  store i32 -1, i32* %731, align 8
  %732 = load %struct.tm_zone*, %struct.tm_zone** %44, align 8
  %733 = call i64 @mktime_z(%struct.tm_zone* noundef %732, %struct.tm* noundef %13)
  store i64 %733, i64* %22, align 8
  %734 = call i1 @mktime_ok(%struct.tm* noundef %14, %struct.tm* noundef %13)
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %41, align 1
  %736 = load %struct.tm_zone*, %struct.tm_zone** %44, align 8
  call void @tzfree(%struct.tm_zone* noundef %736)
  br label %737

737:                                              ; preds = %709, %684
  %738 = load i8, i8* %41, align 1
  %739 = trunc i8 %738 to i1
  br i1 %739, label %743, label %740

740:                                              ; preds = %737
  %741 = load i8, i8* %42, align 1
  %742 = trunc i8 %741 to i1
  call void @debug_mktime_not_ok(%struct.tm* noundef %14, %struct.tm* noundef %13, %struct.parser_control* noundef %34, i1 noundef %742)
  br label %1495

743:                                              ; preds = %737
  br label %744

744:                                              ; preds = %743, %658
  %745 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %746 = load i64, i64* %745, align 8
  %747 = icmp ne i64 %746, 0
  br i1 %747, label %748, label %880

748:                                              ; preds = %744
  %749 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %750 = load i64, i64* %749, align 8
  %751 = icmp ne i64 %750, 0
  br i1 %751, label %880, label %752

752:                                              ; preds = %748
  %753 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 7
  store i32 -1, i32* %753, align 4
  %754 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 1
  %755 = load i64, i64* %754, align 8
  %756 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 1
  %757 = load i64, i64* %756, align 8
  %758 = icmp slt i64 0, %757
  br i1 %758, label %759, label %765

759:                                              ; preds = %752
  %760 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  %761 = load i32, i32* %760, align 8
  %762 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 2
  %763 = load i32, i32* %762, align 8
  %764 = icmp ne i32 %761, %763
  br label %765

765:                                              ; preds = %759, %752
  %766 = phi i1 [ false, %752 ], [ %764, %759 ]
  %767 = zext i1 %766 to i32
  %768 = sext i32 %767 to i64
  %769 = sub nsw i64 %755, %768
  store i64 %769, i64* %47, align 8
  br i1 false, label %770, label %797

770:                                              ; preds = %765
  %771 = load i64, i64* %47, align 8
  %772 = icmp slt i64 %771, 0
  br i1 %772, label %773, label %781

773:                                              ; preds = %770
  br i1 true, label %774, label %777

774:                                              ; preds = %773
  %775 = load i64, i64* %47, align 8
  %776 = icmp slt i64 %775, 1317624576693539401
  br i1 %776, label %815, label %818

777:                                              ; preds = %773
  %778 = load i64, i64* %47, align 8
  %779 = sub nsw i64 -1, %778
  %780 = icmp sle i64 -1317624576693539401, %779
  br i1 %780, label %815, label %818

781:                                              ; preds = %770
  br i1 false, label %782, label %794

782:                                              ; preds = %781
  br i1 true, label %783, label %787

783:                                              ; preds = %782
  %784 = load i64, i64* %47, align 8
  %785 = add nsw i64 %784, -9223372036854775808
  %786 = icmp slt i64 0, %785
  br i1 %786, label %815, label %818

787:                                              ; preds = %782
  %788 = load i64, i64* %47, align 8
  %789 = icmp slt i64 0, %788
  br i1 %789, label %790, label %818

790:                                              ; preds = %787
  %791 = load i64, i64* %47, align 8
  %792 = sub nsw i64 %791, 1
  %793 = icmp slt i64 9223372036854775807, %792
  br i1 %793, label %815, label %818

794:                                              ; preds = %781
  %795 = load i64, i64* %47, align 8
  %796 = icmp slt i64 -1317624576693539401, %795
  br i1 %796, label %815, label %818

797:                                              ; preds = %765
  br i1 false, label %798, label %799

798:                                              ; preds = %797
  br i1 false, label %815, label %818

799:                                              ; preds = %797
  %800 = load i64, i64* %47, align 8
  %801 = icmp slt i64 %800, 0
  br i1 %801, label %802, label %812

802:                                              ; preds = %799
  %803 = load i64, i64* %47, align 8
  %804 = icmp eq i64 %803, -1
  br i1 %804, label %805, label %808

805:                                              ; preds = %802
  br i1 true, label %806, label %807

806:                                              ; preds = %805
  br i1 false, label %815, label %818

807:                                              ; preds = %805
  br i1 false, label %815, label %818

808:                                              ; preds = %802
  %809 = load i64, i64* %47, align 8
  %810 = sdiv i64 -9223372036854775808, %809
  %811 = icmp slt i64 %810, 7
  br i1 %811, label %815, label %818

812:                                              ; preds = %799
  %813 = load i64, i64* %47, align 8
  %814 = icmp slt i64 1317624576693539401, %813
  br i1 %814, label %815, label %818

815:                                              ; preds = %812, %808, %807, %806, %798, %794, %790, %783, %777, %774
  %816 = load i64, i64* %47, align 8
  %817 = mul i64 %816, 7
  store i64 %817, i64* %46, align 8
  br label %821

818:                                              ; preds = %812, %808, %807, %806, %798, %794, %790, %787, %783, %777, %774
  %819 = load i64, i64* %47, align 8
  %820 = mul i64 %819, 7
  store i64 %820, i64* %46, align 8
  br label %821

821:                                              ; preds = %818, %815
  %822 = phi i32 [ 1, %815 ], [ 0, %818 ]
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %854, label %824

824:                                              ; preds = %821
  %825 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 2
  %826 = load i32, i32* %825, align 8
  %827 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  %828 = load i32, i32* %827, align 8
  %829 = sub nsw i32 %826, %828
  %830 = add nsw i32 %829, 7
  %831 = srem i32 %830, 7
  %832 = load i64, i64* %46, align 8
  %833 = sext i32 %831 to i64
  %834 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %833, i64 %832)
  %835 = extractvalue { i64, i1 } %834, 1
  %836 = extractvalue { i64, i1 } %834, 0
  store i64 %836, i64* %46, align 8
  br i1 %835, label %854, label %837

837:                                              ; preds = %824
  %838 = load i64, i64* %46, align 8
  %839 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %840 = load i32, i32* %839, align 4
  %841 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %842 = sext i32 %840 to i64
  %843 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %838, i64 %842)
  %844 = extractvalue { i64, i1 } %843, 1
  %845 = extractvalue { i64, i1 } %843, 0
  %846 = trunc i64 %845 to i32
  %847 = sext i32 %846 to i64
  %848 = icmp ne i64 %845, %847
  %849 = or i1 %844, %848
  store i32 %846, i32* %841, align 4
  br i1 %849, label %854, label %850

850:                                              ; preds = %837
  %851 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 -1, i32* %851, align 8
  %852 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %853 = call i64 @mktime_z(%struct.tm_zone* noundef %852, %struct.tm* noundef %13)
  store i64 %853, i64* %22, align 8
  br label %854

854:                                              ; preds = %850, %837, %824, %821
  %855 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 7
  %856 = load i32, i32* %855, align 4
  %857 = icmp slt i32 %856, 0
  br i1 %857, label %858, label %871

858:                                              ; preds = %854
  %859 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %859, label %860, label %870

860:                                              ; preds = %858
  %861 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.211, i64 0, i64 0)) #18
  %862 = getelementptr inbounds [100 x i8], [100 x i8]* %45, i64 0, i64 0
  %863 = call i8* @str_days(%struct.parser_control* noundef %34, i8* noundef %862, i32 noundef 100)
  %864 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 1
  %865 = load i64, i64* %864, align 8
  %866 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 2
  %867 = load i32, i32* %866, align 8
  %868 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %869 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %868, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %861, i8* noundef %863, i64 noundef %865, i32 noundef %867, i8* noundef %869)
  br label %870

870:                                              ; preds = %860, %858
  br label %1495

871:                                              ; preds = %854
  %872 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %872, label %873, label %879

873:                                              ; preds = %871
  %874 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.212, i64 0, i64 0)) #18
  %875 = getelementptr inbounds [100 x i8], [100 x i8]* %45, i64 0, i64 0
  %876 = call i8* @str_days(%struct.parser_control* noundef %34, i8* noundef %875, i32 noundef 100)
  %877 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %878 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %877, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %874, i8* noundef %876, i8* noundef %878)
  br label %879

879:                                              ; preds = %873, %871
  br label %880

880:                                              ; preds = %879, %748, %744
  %881 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %881, label %882, label %910

882:                                              ; preds = %880
  %883 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %884 = load i64, i64* %883, align 8
  %885 = icmp ne i64 %884, 0
  br i1 %885, label %894, label %886

886:                                              ; preds = %882
  %887 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %888 = load i64, i64* %887, align 8
  %889 = icmp ne i64 %888, 0
  br i1 %889, label %894, label %890

890:                                              ; preds = %886
  %891 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.213, i64 0, i64 0)) #18
  %892 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %893 = call i8* @debug_strfdate(%struct.tm* noundef %13, i8* noundef %892, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %891, i8* noundef %893)
  br label %894

894:                                              ; preds = %890, %886, %882
  %895 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 16
  %896 = load i64, i64* %895, align 8
  %897 = icmp ne i64 %896, 0
  br i1 %897, label %898, label %906

898:                                              ; preds = %894
  %899 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 15
  %900 = load i64, i64* %899, align 8
  %901 = icmp ne i64 %900, 0
  br i1 %901, label %902, label %906

902:                                              ; preds = %898
  %903 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.214, i64 0, i64 0)) #18
  %904 = getelementptr inbounds [100 x i8], [100 x i8]* %45, i64 0, i64 0
  %905 = call i8* @str_days(%struct.parser_control* noundef %34, i8* noundef %904, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %903, i8* noundef %905)
  br label %906

906:                                              ; preds = %902, %898, %894
  %907 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.215, i64 0, i64 0)) #18
  %908 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %909 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %908, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %907, i8* noundef %909)
  br label %910

910:                                              ; preds = %906, %880
  %911 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %912 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %911, i32 0, i32 0
  %913 = load i64, i64* %912, align 8
  %914 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %915 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %914, i32 0, i32 1
  %916 = load i64, i64* %915, align 8
  %917 = or i64 %913, %916
  %918 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %919 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %918, i32 0, i32 2
  %920 = load i64, i64* %919, align 8
  %921 = or i64 %917, %920
  %922 = icmp ne i64 %921, 0
  br i1 %922, label %923, label %1100

923:                                              ; preds = %910
  %924 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %924, label %925, label %953

925:                                              ; preds = %923
  %926 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %927 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %926, i32 0, i32 0
  %928 = load i64, i64* %927, align 8
  %929 = icmp ne i64 %928, 0
  br i1 %929, label %935, label %930

930:                                              ; preds = %925
  %931 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %932 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %931, i32 0, i32 1
  %933 = load i64, i64* %932, align 8
  %934 = icmp ne i64 %933, 0
  br i1 %934, label %935, label %941

935:                                              ; preds = %930, %925
  %936 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %937 = load i32, i32* %936, align 4
  %938 = icmp ne i32 %937, 15
  br i1 %938, label %939, label %941

939:                                              ; preds = %935
  %940 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.216, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %940)
  br label %941

941:                                              ; preds = %939, %935, %930
  %942 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %943 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %942, i32 0, i32 2
  %944 = load i64, i64* %943, align 8
  %945 = icmp ne i64 %944, 0
  br i1 %945, label %946, label %952

946:                                              ; preds = %941
  %947 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %948 = load i32, i32* %947, align 8
  %949 = icmp ne i32 %948, 12
  br i1 %949, label %950, label %952

950:                                              ; preds = %946
  %951 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.217, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %951)
  br label %952

952:                                              ; preds = %950, %946, %941
  br label %953

953:                                              ; preds = %952, %923
  %954 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %955 = load i32, i32* %954, align 4
  %956 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %957 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %956, i32 0, i32 0
  %958 = load i64, i64* %957, align 8
  %959 = sext i32 %955 to i64
  %960 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %959, i64 %958)
  %961 = extractvalue { i64, i1 } %960, 1
  %962 = extractvalue { i64, i1 } %960, 0
  %963 = trunc i64 %962 to i32
  %964 = sext i32 %963 to i64
  %965 = icmp ne i64 %962, %964
  %966 = or i1 %961, %965
  store i32 %963, i32* %48, align 4
  br i1 %966, label %995, label %967

967:                                              ; preds = %953
  %968 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %969 = load i32, i32* %968, align 8
  %970 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %971 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %970, i32 0, i32 1
  %972 = load i64, i64* %971, align 8
  %973 = sext i32 %969 to i64
  %974 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %973, i64 %972)
  %975 = extractvalue { i64, i1 } %974, 1
  %976 = extractvalue { i64, i1 } %974, 0
  %977 = trunc i64 %976 to i32
  %978 = sext i32 %977 to i64
  %979 = icmp ne i64 %976, %978
  %980 = or i1 %975, %979
  store i32 %977, i32* %49, align 4
  br i1 %980, label %995, label %981

981:                                              ; preds = %967
  %982 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %983 = load i32, i32* %982, align 4
  %984 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %985 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %984, i32 0, i32 2
  %986 = load i64, i64* %985, align 8
  %987 = sext i32 %983 to i64
  %988 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %987, i64 %986)
  %989 = extractvalue { i64, i1 } %988, 1
  %990 = extractvalue { i64, i1 } %988, 0
  %991 = trunc i64 %990 to i32
  %992 = sext i32 %991 to i64
  %993 = icmp ne i64 %990, %992
  %994 = or i1 %989, %993
  store i32 %991, i32* %50, align 4
  br i1 %994, label %995, label %1000

995:                                              ; preds = %981, %967, %953
  %996 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %996, label %997, label %999

997:                                              ; preds = %995
  %998 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.218, i64 0, i64 0)) #18
  call void (i8*, ...) @dbg_printf(i8* noundef %998, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.219, i64 0, i64 0), i32 noundef 2179)
  br label %999

999:                                              ; preds = %997, %995
  br label %1495

1000:                                             ; preds = %981
  %1001 = load i32, i32* %48, align 4
  %1002 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  store i32 %1001, i32* %1002, align 4
  %1003 = load i32, i32* %49, align 4
  %1004 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  store i32 %1003, i32* %1004, align 8
  %1005 = load i32, i32* %50, align 4
  %1006 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  store i32 %1005, i32* %1006, align 4
  %1007 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %1008 = load i32, i32* %1007, align 8
  %1009 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  store i32 %1008, i32* %1009, align 8
  %1010 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %1011 = load i32, i32* %1010, align 4
  %1012 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  store i32 %1011, i32* %1012, align 4
  %1013 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %1014 = load i32, i32* %1013, align 8
  %1015 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  store i32 %1014, i32* %1015, align 8
  %1016 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  %1017 = load i32, i32* %1016, align 8
  %1018 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  store i32 %1017, i32* %1018, align 8
  %1019 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  store i32 -1, i32* %1019, align 8
  %1020 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %1021 = call i64 @mktime_z(%struct.tm_zone* noundef %1020, %struct.tm* noundef %13)
  store i64 %1021, i64* %22, align 8
  %1022 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 6
  %1023 = load i32, i32* %1022, align 8
  %1024 = icmp slt i32 %1023, 0
  br i1 %1024, label %1025, label %1032

1025:                                             ; preds = %1000
  %1026 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1025
  %1028 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.220, i64 0, i64 0)) #18
  %1029 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1030 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %1029, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %1028, i8* noundef %1030)
  br label %1031

1031:                                             ; preds = %1027, %1025
  br label %1495

1032:                                             ; preds = %1000
  %1033 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1033, label %1034, label %1099

1034:                                             ; preds = %1032
  %1035 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.221, i64 0, i64 0)) #18
  %1036 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1037 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1036, i32 0, i32 0
  %1038 = load i64, i64* %1037, align 8
  %1039 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1040 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1039, i32 0, i32 1
  %1041 = load i64, i64* %1040, align 8
  %1042 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1043 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1042, i32 0, i32 2
  %1044 = load i64, i64* %1043, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1035, i64 noundef %1038, i64 noundef %1041, i64 noundef %1044)
  %1045 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.222, i64 0, i64 0)) #18
  %1046 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1047 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %1046, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %1045, i8* noundef %1047)
  %1048 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  %1049 = load i32, i32* %1048, align 8
  %1050 = icmp ne i32 %1049, -1
  br i1 %1050, label %1051, label %1059

1051:                                             ; preds = %1034
  %1052 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  %1053 = load i32, i32* %1052, align 8
  %1054 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 8
  %1055 = load i32, i32* %1054, align 8
  %1056 = icmp ne i32 %1053, %1055
  br i1 %1056, label %1057, label %1059

1057:                                             ; preds = %1051
  %1058 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.223, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1058)
  br label %1059

1059:                                             ; preds = %1057, %1051, %1034
  %1060 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1061 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1060, i32 0, i32 2
  %1062 = load i64, i64* %1061, align 8
  %1063 = icmp eq i64 %1062, 0
  br i1 %1063, label %1064, label %1098

1064:                                             ; preds = %1059
  %1065 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %1066 = load i32, i32* %1065, align 4
  %1067 = load i32, i32* %50, align 4
  %1068 = icmp ne i32 %1066, %1067
  br i1 %1068, label %1079, label %1069

1069:                                             ; preds = %1064
  %1070 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1071 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1070, i32 0, i32 1
  %1072 = load i64, i64* %1071, align 8
  %1073 = icmp eq i64 %1072, 0
  br i1 %1073, label %1074, label %1098

1074:                                             ; preds = %1069
  %1075 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %1076 = load i32, i32* %1075, align 8
  %1077 = load i32, i32* %49, align 4
  %1078 = icmp ne i32 %1076, %1077
  br i1 %1078, label %1079, label %1098

1079:                                             ; preds = %1074, %1064
  %1080 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.224, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1080)
  %1081 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.225, i64 0, i64 0)) #18
  %1082 = load i32, i32* %48, align 4
  %1083 = getelementptr inbounds [13 x i8], [13 x i8]* %51, i64 0, i64 0
  %1084 = call i8* @tm_year_str(i32 noundef %1082, i8* noundef %1083)
  %1085 = load i32, i32* %49, align 4
  %1086 = add nsw i32 %1085, 1
  %1087 = load i32, i32* %50, align 4
  call void (i8*, ...) @dbg_printf(i8* noundef %1081, i8* noundef %1084, i32 noundef %1086, i32 noundef %1087)
  %1088 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.226, i64 0, i64 0)) #18
  %1089 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 5
  %1090 = load i32, i32* %1089, align 4
  %1091 = getelementptr inbounds [13 x i8], [13 x i8]* %51, i64 0, i64 0
  %1092 = call i8* @tm_year_str(i32 noundef %1090, i8* noundef %1091)
  %1093 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 4
  %1094 = load i32, i32* %1093, align 8
  %1095 = add nsw i32 %1094, 1
  %1096 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %1097 = load i32, i32* %1096, align 4
  call void (i8*, ...) @dbg_printf(i8* noundef %1088, i8* noundef %1092, i32 noundef %1095, i32 noundef %1097)
  br label %1098

1098:                                             ; preds = %1079, %1074, %1069, %1059
  br label %1099

1099:                                             ; preds = %1098, %1032
  br label %1100

1100:                                             ; preds = %1099, %910
  %1101 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 21
  %1102 = load i64, i64* %1101, align 8
  %1103 = icmp ne i64 %1102, 0
  br i1 %1103, label %1104, label %1144

1104:                                             ; preds = %1100
  store i8 0, i8* %52, align 1
  %1105 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 9
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %53, align 8
  %1107 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 4
  %1108 = load i32, i32* %1107, align 8
  %1109 = load i64, i64* %53, align 8
  %1110 = sext i32 %1108 to i64
  %1111 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1110, i64 %1109)
  %1112 = extractvalue { i64, i1 } %1111, 1
  %1113 = extractvalue { i64, i1 } %1111, 0
  store i64 %1113, i64* %54, align 8
  %1114 = zext i1 %1112 to i32
  %1115 = load i8, i8* %52, align 1
  %1116 = trunc i8 %1115 to i1
  %1117 = zext i1 %1116 to i32
  %1118 = or i32 %1117, %1114
  %1119 = icmp ne i32 %1118, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %52, align 1
  %1121 = load i64, i64* %22, align 8
  %1122 = load i64, i64* %54, align 8
  %1123 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1121, i64 %1122)
  %1124 = extractvalue { i64, i1 } %1123, 1
  %1125 = extractvalue { i64, i1 } %1123, 0
  store i64 %1125, i64* %55, align 8
  %1126 = zext i1 %1124 to i32
  %1127 = load i8, i8* %52, align 1
  %1128 = trunc i8 %1127 to i1
  %1129 = zext i1 %1128 to i32
  %1130 = or i32 %1129, %1126
  %1131 = icmp ne i32 %1130, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %52, align 1
  %1133 = load i8, i8* %52, align 1
  %1134 = trunc i8 %1133 to i1
  br i1 %1134, label %1135, label %1142

1135:                                             ; preds = %1104
  %1136 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1136, label %1137, label %1141

1137:                                             ; preds = %1135
  %1138 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.227, i64 0, i64 0)) #18
  %1139 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 4
  %1140 = load i32, i32* %1139, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1138, i32 noundef %1140)
  br label %1141

1141:                                             ; preds = %1137, %1135
  br label %1495

1142:                                             ; preds = %1104
  %1143 = load i64, i64* %55, align 8
  store i64 %1143, i64* %22, align 8
  br label %1144

1144:                                             ; preds = %1142, %1100
  %1145 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1145, label %1146, label %1152

1146:                                             ; preds = %1144
  %1147 = load i64, i64* %22, align 8
  store i64 %1147, i64* %56, align 8
  %1148 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i64 0, i64 0)) #18
  %1149 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1150 = call i8* @debug_strfdatetime(%struct.tm* noundef %13, %struct.parser_control* noundef %34, i8* noundef %1149, i32 noundef 100)
  %1151 = load i64, i64* %56, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1148, i8* noundef %1150, i64 noundef %1151)
  br label %1152

1152:                                             ; preds = %1146, %1144
  %1153 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 11
  %1154 = getelementptr inbounds %struct.timespec, %struct.timespec* %1153, i32 0, i32 1
  %1155 = load i64, i64* %1154, align 8
  store i64 %1155, i64* %57, align 8
  %1156 = load i64, i64* %57, align 8
  %1157 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1158 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1157, i32 0, i32 6
  %1159 = load i32, i32* %1158, align 8
  %1160 = sext i32 %1159 to i64
  %1161 = add nsw i64 %1156, %1160
  store i64 %1161, i64* %58, align 8
  %1162 = load i64, i64* %58, align 8
  %1163 = srem i64 %1162, 1000000000
  %1164 = add nsw i64 %1163, 1000000000
  %1165 = srem i64 %1164, 1000000000
  %1166 = trunc i64 %1165 to i32
  store i32 %1166, i32* %59, align 4
  %1167 = load i64, i64* %58, align 8
  %1168 = load i32, i32* %59, align 4
  %1169 = sext i32 %1168 to i64
  %1170 = sub nsw i64 %1167, %1169
  %1171 = sdiv i64 %1170, 1000000000
  %1172 = trunc i64 %1171 to i32
  store i32 %1172, i32* %60, align 4
  br i1 false, label %1173, label %1214

1173:                                             ; preds = %1152
  %1174 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1175 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1174, i32 0, i32 3
  %1176 = load i64, i64* %1175, align 8
  %1177 = icmp slt i64 %1176, 0
  br i1 %1177, label %1178, label %1190

1178:                                             ; preds = %1173
  br i1 true, label %1179, label %1184

1179:                                             ; preds = %1178
  %1180 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1181 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1180, i32 0, i32 3
  %1182 = load i64, i64* %1181, align 8
  %1183 = icmp slt i64 %1182, 2562047788015215
  br i1 %1183, label %1240, label %1245

1184:                                             ; preds = %1178
  %1185 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1186 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1185, i32 0, i32 3
  %1187 = load i64, i64* %1186, align 8
  %1188 = sub nsw i64 -1, %1187
  %1189 = icmp sle i64 -2562047788015215, %1188
  br i1 %1189, label %1240, label %1245

1190:                                             ; preds = %1173
  br i1 false, label %1191, label %1209

1191:                                             ; preds = %1190
  br i1 true, label %1192, label %1198

1192:                                             ; preds = %1191
  %1193 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1194 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1193, i32 0, i32 3
  %1195 = load i64, i64* %1194, align 8
  %1196 = add nsw i64 %1195, -9223372036854775808
  %1197 = icmp slt i64 0, %1196
  br i1 %1197, label %1240, label %1245

1198:                                             ; preds = %1191
  %1199 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1200 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1199, i32 0, i32 3
  %1201 = load i64, i64* %1200, align 8
  %1202 = icmp slt i64 0, %1201
  br i1 %1202, label %1203, label %1245

1203:                                             ; preds = %1198
  %1204 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1205 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1204, i32 0, i32 3
  %1206 = load i64, i64* %1205, align 8
  %1207 = sub nsw i64 %1206, 1
  %1208 = icmp slt i64 9223372036854775807, %1207
  br i1 %1208, label %1240, label %1245

1209:                                             ; preds = %1190
  %1210 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1211 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1210, i32 0, i32 3
  %1212 = load i64, i64* %1211, align 8
  %1213 = icmp slt i64 -2562047788015215, %1212
  br i1 %1213, label %1240, label %1245

1214:                                             ; preds = %1152
  br i1 false, label %1215, label %1216

1215:                                             ; preds = %1214
  br i1 false, label %1240, label %1245

1216:                                             ; preds = %1214
  %1217 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1218 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1217, i32 0, i32 3
  %1219 = load i64, i64* %1218, align 8
  %1220 = icmp slt i64 %1219, 0
  br i1 %1220, label %1221, label %1235

1221:                                             ; preds = %1216
  %1222 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1223 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1222, i32 0, i32 3
  %1224 = load i64, i64* %1223, align 8
  %1225 = icmp eq i64 %1224, -1
  br i1 %1225, label %1226, label %1229

1226:                                             ; preds = %1221
  br i1 true, label %1227, label %1228

1227:                                             ; preds = %1226
  br i1 false, label %1240, label %1245

1228:                                             ; preds = %1226
  br i1 false, label %1240, label %1245

1229:                                             ; preds = %1221
  %1230 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1231 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1230, i32 0, i32 3
  %1232 = load i64, i64* %1231, align 8
  %1233 = sdiv i64 -9223372036854775808, %1232
  %1234 = icmp slt i64 %1233, 3600
  br i1 %1234, label %1240, label %1245

1235:                                             ; preds = %1216
  %1236 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1237 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1236, i32 0, i32 3
  %1238 = load i64, i64* %1237, align 8
  %1239 = icmp slt i64 2562047788015215, %1238
  br i1 %1239, label %1240, label %1245

1240:                                             ; preds = %1235, %1229, %1228, %1227, %1215, %1209, %1203, %1192, %1184, %1179
  %1241 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1242 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1241, i32 0, i32 3
  %1243 = load i64, i64* %1242, align 8
  %1244 = mul i64 %1243, 3600
  store i64 %1244, i64* %61, align 8
  br label %1250

1245:                                             ; preds = %1235, %1229, %1228, %1227, %1215, %1209, %1203, %1198, %1192, %1184, %1179
  %1246 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1247 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1246, i32 0, i32 3
  %1248 = load i64, i64* %1247, align 8
  %1249 = mul i64 %1248, 3600
  store i64 %1249, i64* %61, align 8
  br label %1250

1250:                                             ; preds = %1245, %1240
  %1251 = phi i32 [ 1, %1240 ], [ 0, %1245 ]
  %1252 = icmp ne i32 %1251, 0
  br i1 %1252, label %1361, label %1253

1253:                                             ; preds = %1250
  %1254 = load i64, i64* %22, align 8
  %1255 = load i64, i64* %61, align 8
  %1256 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1254, i64 %1255)
  %1257 = extractvalue { i64, i1 } %1256, 1
  %1258 = extractvalue { i64, i1 } %1256, 0
  store i64 %1258, i64* %62, align 8
  br i1 %1257, label %1361, label %1259

1259:                                             ; preds = %1253
  br i1 false, label %1260, label %1301

1260:                                             ; preds = %1259
  %1261 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1262 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1261, i32 0, i32 4
  %1263 = load i64, i64* %1262, align 8
  %1264 = icmp slt i64 %1263, 0
  br i1 %1264, label %1265, label %1277

1265:                                             ; preds = %1260
  br i1 true, label %1266, label %1271

1266:                                             ; preds = %1265
  %1267 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1268 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1267, i32 0, i32 4
  %1269 = load i64, i64* %1268, align 8
  %1270 = icmp slt i64 %1269, 153722867280912930
  br i1 %1270, label %1327, label %1332

1271:                                             ; preds = %1265
  %1272 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1273 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1272, i32 0, i32 4
  %1274 = load i64, i64* %1273, align 8
  %1275 = sub nsw i64 -1, %1274
  %1276 = icmp sle i64 -153722867280912930, %1275
  br i1 %1276, label %1327, label %1332

1277:                                             ; preds = %1260
  br i1 false, label %1278, label %1296

1278:                                             ; preds = %1277
  br i1 true, label %1279, label %1285

1279:                                             ; preds = %1278
  %1280 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1281 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1280, i32 0, i32 4
  %1282 = load i64, i64* %1281, align 8
  %1283 = add nsw i64 %1282, -9223372036854775808
  %1284 = icmp slt i64 0, %1283
  br i1 %1284, label %1327, label %1332

1285:                                             ; preds = %1278
  %1286 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1287 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1286, i32 0, i32 4
  %1288 = load i64, i64* %1287, align 8
  %1289 = icmp slt i64 0, %1288
  br i1 %1289, label %1290, label %1332

1290:                                             ; preds = %1285
  %1291 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1292 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1291, i32 0, i32 4
  %1293 = load i64, i64* %1292, align 8
  %1294 = sub nsw i64 %1293, 1
  %1295 = icmp slt i64 9223372036854775807, %1294
  br i1 %1295, label %1327, label %1332

1296:                                             ; preds = %1277
  %1297 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1298 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1297, i32 0, i32 4
  %1299 = load i64, i64* %1298, align 8
  %1300 = icmp slt i64 -153722867280912930, %1299
  br i1 %1300, label %1327, label %1332

1301:                                             ; preds = %1259
  br i1 false, label %1302, label %1303

1302:                                             ; preds = %1301
  br i1 false, label %1327, label %1332

1303:                                             ; preds = %1301
  %1304 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1305 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1304, i32 0, i32 4
  %1306 = load i64, i64* %1305, align 8
  %1307 = icmp slt i64 %1306, 0
  br i1 %1307, label %1308, label %1322

1308:                                             ; preds = %1303
  %1309 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1310 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1309, i32 0, i32 4
  %1311 = load i64, i64* %1310, align 8
  %1312 = icmp eq i64 %1311, -1
  br i1 %1312, label %1313, label %1316

1313:                                             ; preds = %1308
  br i1 true, label %1314, label %1315

1314:                                             ; preds = %1313
  br i1 false, label %1327, label %1332

1315:                                             ; preds = %1313
  br i1 false, label %1327, label %1332

1316:                                             ; preds = %1308
  %1317 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1318 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1317, i32 0, i32 4
  %1319 = load i64, i64* %1318, align 8
  %1320 = sdiv i64 -9223372036854775808, %1319
  %1321 = icmp slt i64 %1320, 60
  br i1 %1321, label %1327, label %1332

1322:                                             ; preds = %1303
  %1323 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1324 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1323, i32 0, i32 4
  %1325 = load i64, i64* %1324, align 8
  %1326 = icmp slt i64 153722867280912930, %1325
  br i1 %1326, label %1327, label %1332

1327:                                             ; preds = %1322, %1316, %1315, %1314, %1302, %1296, %1290, %1279, %1271, %1266
  %1328 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1329 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1328, i32 0, i32 4
  %1330 = load i64, i64* %1329, align 8
  %1331 = mul i64 %1330, 60
  store i64 %1331, i64* %63, align 8
  br label %1337

1332:                                             ; preds = %1322, %1316, %1315, %1314, %1302, %1296, %1290, %1285, %1279, %1271, %1266
  %1333 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1334 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1333, i32 0, i32 4
  %1335 = load i64, i64* %1334, align 8
  %1336 = mul i64 %1335, 60
  store i64 %1336, i64* %63, align 8
  br label %1337

1337:                                             ; preds = %1332, %1327
  %1338 = phi i32 [ 1, %1327 ], [ 0, %1332 ]
  %1339 = icmp ne i32 %1338, 0
  br i1 %1339, label %1361, label %1340

1340:                                             ; preds = %1337
  %1341 = load i64, i64* %62, align 8
  %1342 = load i64, i64* %63, align 8
  %1343 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1341, i64 %1342)
  %1344 = extractvalue { i64, i1 } %1343, 1
  %1345 = extractvalue { i64, i1 } %1343, 0
  store i64 %1345, i64* %64, align 8
  br i1 %1344, label %1361, label %1346

1346:                                             ; preds = %1340
  %1347 = load i64, i64* %64, align 8
  %1348 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1349 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1348, i32 0, i32 5
  %1350 = load i64, i64* %1349, align 8
  %1351 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1347, i64 %1350)
  %1352 = extractvalue { i64, i1 } %1351, 1
  %1353 = extractvalue { i64, i1 } %1351, 0
  store i64 %1353, i64* %65, align 8
  br i1 %1352, label %1361, label %1354

1354:                                             ; preds = %1346
  %1355 = load i64, i64* %65, align 8
  %1356 = load i32, i32* %60, align 4
  %1357 = sext i32 %1356 to i64
  %1358 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1355, i64 %1357)
  %1359 = extractvalue { i64, i1 } %1358, 1
  %1360 = extractvalue { i64, i1 } %1358, 0
  store i64 %1360, i64* %66, align 8
  br i1 %1359, label %1361, label %1366

1361:                                             ; preds = %1354, %1346, %1340, %1337, %1253, %1250
  %1362 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1362, label %1363, label %1365

1363:                                             ; preds = %1361
  %1364 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.229, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1364)
  br label %1365

1365:                                             ; preds = %1363, %1361
  br label %1495

1366:                                             ; preds = %1354
  %1367 = load i64, i64* %66, align 8
  %1368 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1369 = getelementptr inbounds %struct.timespec, %struct.timespec* %1368, i32 0, i32 0
  store i64 %1367, i64* %1369, align 8
  %1370 = load i32, i32* %59, align 4
  %1371 = sext i32 %1370 to i64
  %1372 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1373 = getelementptr inbounds %struct.timespec, %struct.timespec* %1372, i32 0, i32 1
  store i64 %1371, i64* %1373, align 8
  %1374 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1374, label %1375, label %1428

1375:                                             ; preds = %1366
  %1376 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1377 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1376, i32 0, i32 3
  %1378 = load i64, i64* %1377, align 8
  %1379 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1380 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1379, i32 0, i32 4
  %1381 = load i64, i64* %1380, align 8
  %1382 = or i64 %1378, %1381
  %1383 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1384 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1383, i32 0, i32 5
  %1385 = load i64, i64* %1384, align 8
  %1386 = or i64 %1382, %1385
  %1387 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1388 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1387, i32 0, i32 6
  %1389 = load i32, i32* %1388, align 8
  %1390 = sext i32 %1389 to i64
  %1391 = or i64 %1386, %1390
  %1392 = icmp ne i64 %1391, 0
  br i1 %1392, label %1393, label %1428

1393:                                             ; preds = %1375
  %1394 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.230, i64 0, i64 0)) #18
  %1395 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1396 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1395, i32 0, i32 3
  %1397 = load i64, i64* %1396, align 8
  %1398 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1399 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1398, i32 0, i32 4
  %1400 = load i64, i64* %1399, align 8
  %1401 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1402 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1401, i32 0, i32 5
  %1403 = load i64, i64* %1402, align 8
  %1404 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %34, i32 0, i32 12
  %1405 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %1404, i32 0, i32 6
  %1406 = load i32, i32* %1405, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1394, i64 noundef %1397, i64 noundef %1400, i64 noundef %1403, i32 noundef %1406)
  %1407 = load i64, i64* %66, align 8
  store i64 %1407, i64* %67, align 8
  %1408 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.231, i64 0, i64 0)) #18
  %1409 = load i64, i64* %67, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1408, i64 noundef %1409)
  %1410 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  %1411 = load i32, i32* %1410, align 8
  %1412 = icmp ne i32 %1411, -1
  br i1 %1412, label %1413, label %1427

1413:                                             ; preds = %1393
  %1414 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %1415 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1416 = getelementptr inbounds %struct.timespec, %struct.timespec* %1415, i32 0, i32 0
  %1417 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %1414, i64* noundef %1416, %struct.tm* noundef %68)
  %1418 = icmp ne %struct.tm* %1417, null
  br i1 %1418, label %1419, label %1427

1419:                                             ; preds = %1413
  %1420 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 8
  %1421 = load i32, i32* %1420, align 8
  %1422 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 8
  %1423 = load i32, i32* %1422, align 8
  %1424 = icmp ne i32 %1421, %1423
  br i1 %1424, label %1425, label %1427

1425:                                             ; preds = %1419
  %1426 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.232, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1426)
  br label %1427

1427:                                             ; preds = %1425, %1419, %1413, %1393
  br label %1428

1428:                                             ; preds = %1427, %1375, %1366
  br label %1429

1429:                                             ; preds = %1428, %457
  %1430 = call i1 @debugging(%struct.parser_control* noundef %34)
  br i1 %1430, label %1431, label %1494

1431:                                             ; preds = %1429
  %1432 = load i8*, i8** %12, align 8
  %1433 = icmp ne i8* %1432, null
  br i1 %1433, label %1436, label %1434

1434:                                             ; preds = %1431
  %1435 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.233, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1435)
  br label %1445

1436:                                             ; preds = %1431
  %1437 = load i8*, i8** %12, align 8
  %1438 = call i1 @streq(i8* noundef %1437, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0))
  br i1 %1438, label %1439, label %1441

1439:                                             ; preds = %1436
  %1440 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %1440)
  br label %1444

1441:                                             ; preds = %1436
  %1442 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.235, i64 0, i64 0)) #18
  %1443 = load i8*, i8** %12, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %1442, i8* noundef %1443)
  br label %1444

1444:                                             ; preds = %1441, %1439
  br label %1445

1445:                                             ; preds = %1444, %1434
  %1446 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1447 = getelementptr inbounds %struct.timespec, %struct.timespec* %1446, i32 0, i32 0
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %69, align 8
  %1449 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1450 = getelementptr inbounds %struct.timespec, %struct.timespec* %1449, i32 0, i32 1
  %1451 = load i64, i64* %1450, align 8
  %1452 = trunc i64 %1451 to i32
  store i32 %1452, i32* %70, align 4
  %1453 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.236, i64 0, i64 0)) #18
  %1454 = load i64, i64* %69, align 8
  %1455 = load i32, i32* %70, align 4
  call void (i8*, ...) @dbg_printf(i8* noundef %1453, i64 noundef %1454, i32 noundef %1455)
  %1456 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1457 = getelementptr inbounds %struct.timespec, %struct.timespec* %1456, i32 0, i32 0
  %1458 = call %struct.tm* @gmtime_r(i64* noundef %1457, %struct.tm* noundef %71) #18
  %1459 = icmp ne %struct.tm* %1458, null
  %1460 = xor i1 %1459, true
  %1461 = xor i1 %1460, true
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %73, align 1
  %1463 = load i8, i8* %73, align 1
  %1464 = trunc i8 %1463 to i1
  br i1 %1464, label %1465, label %1469

1465:                                             ; preds = %1445
  %1466 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i64 0, i64 0)) #18
  %1467 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1468 = call i8* @debug_strfdatetime(%struct.tm* noundef %71, %struct.parser_control* noundef null, i8* noundef %1467, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %1466, i8* noundef %1468)
  br label %1469

1469:                                             ; preds = %1465, %1445
  %1470 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %1471 = load %struct.timespec*, %struct.timespec** %7, align 8
  %1472 = getelementptr inbounds %struct.timespec, %struct.timespec* %1471, i32 0, i32 0
  %1473 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %1470, i64* noundef %1472, %struct.tm* noundef %72)
  %1474 = icmp ne %struct.tm* %1473, null
  br i1 %1474, label %1475, label %1493

1475:                                             ; preds = %1469
  store i8 1, i8* %74, align 1
  %1476 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 9
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %75, align 8
  %1478 = load i8, i8* %74, align 1
  %1479 = trunc i8 %1478 to i1
  br i1 %1479, label %1480, label %1488

1480:                                             ; preds = %1475
  %1481 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i64 0, i64 0)) #18
  %1482 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1483 = call i8* @debug_strfdatetime(%struct.tm* noundef %72, %struct.parser_control* noundef null, i8* noundef %1482, i32 noundef 100)
  %1484 = load i64, i64* %75, align 8
  %1485 = trunc i64 %1484 to i32
  %1486 = getelementptr inbounds [27 x i8], [27 x i8]* %15, i64 0, i64 0
  %1487 = call i8* @time_zone_str(i32 noundef %1485, i8* noundef %1486)
  call void (i8*, ...) @dbg_printf(i8* noundef %1481, i8* noundef %1483, i8* noundef %1487)
  br label %1492

1488:                                             ; preds = %1475
  %1489 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.239, i64 0, i64 0)) #18
  %1490 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1491 = call i8* @debug_strfdatetime(%struct.tm* noundef %72, %struct.parser_control* noundef null, i8* noundef %1490, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %1489, i8* noundef %1491)
  br label %1492

1492:                                             ; preds = %1488, %1480
  br label %1493

1493:                                             ; preds = %1492, %1469
  br label %1494

1494:                                             ; preds = %1493, %1429
  store i8 1, i8* %17, align 1
  br label %1495

1495:                                             ; preds = %1494, %1365, %1141, %1031, %999, %870, %740, %708, %603, %557, %523, %372, %236, %209, %179, %147
  %1496 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  %1497 = load %struct.tm_zone*, %struct.tm_zone** %11, align 8
  %1498 = icmp ne %struct.tm_zone* %1496, %1497
  br i1 %1498, label %1499, label %1501

1499:                                             ; preds = %1495
  %1500 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8
  call void @tzfree(%struct.tm_zone* noundef %1500)
  br label %1501

1501:                                             ; preds = %1499, %1495
  %1502 = load i8*, i8** %19, align 8
  call void @free(i8* noundef %1502) #18
  %1503 = load i8, i8* %17, align 1
  %1504 = trunc i8 %1503 to i1
  ret i1 %1504
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_fputs(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @dbg_herald()
  %3 = load i8*, i8** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 @fputs(i8* noundef %3, %struct._IO_FILE* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_local_time_zone_table(%struct.parser_control* noundef %0, %struct.tm* noundef %1) #4 {
  %3 = alloca %struct.parser_control*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.table*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser_control* %0, %struct.parser_control** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %8 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %9 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %8, i32 0, i32 32
  %10 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load %struct.parser_control*, %struct.parser_control** %3, align 8
  %18 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %17, i32 0, i32 32
  %19 = load i8, i8* %5, align 1
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.table], [3 x %struct.table]* %18, i64 0, i64 %21
  store %struct.table* %22, %struct.table** %6, align 8
  %23 = load %struct.table*, %struct.table** %6, align 8
  %24 = getelementptr inbounds %struct.table, %struct.table* %23, i32 0, i32 1
  store i32 269, i32* %24, align 8
  %25 = load %struct.tm*, %struct.tm** %4, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.table*, %struct.table** %6, align 8
  %29 = getelementptr inbounds %struct.table, %struct.table* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  store i8* null, i8** %7, align 8
  %30 = load %struct.tm*, %struct.tm** %4, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 10
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.tm*, %struct.tm** %4, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 10
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.table*, %struct.table** %6, align 8
  %43 = getelementptr inbounds %struct.table, %struct.table* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.table*, %struct.table** %6, align 8
  %45 = getelementptr inbounds %struct.table, %struct.table* %44, i64 1
  %46 = getelementptr inbounds %struct.table, %struct.table* %45, i32 0, i32 0
  store i8* null, i8** %46, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @to_tm_year(%struct.textint* noundef %0, i1 noundef %1, i32* noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %5, align 1
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds %struct.textint, %struct.textint* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp sle i64 0, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.textint, %struct.textint* %0, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 2
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 69
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2000, i32 1900
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i8, i8* %5, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.240, i64 0, i64 0)) #18
  %29 = getelementptr inbounds %struct.textint, %struct.textint* %0, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %28, i64 noundef %30, i64 noundef %31)
  br label %32

32:                                               ; preds = %27, %17
  br label %33

33:                                               ; preds = %32, %13, %3
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 -1900, i64 %37)
  %40 = extractvalue { i64, i1 } %39, 1
  %41 = extractvalue { i64, i1 } %39, 0
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %41, %43
  %45 = or i1 %40, %44
  store i32 %42, i32* %38, align 4
  br i1 %45, label %56, label %63

46:                                               ; preds = %33
  %47 = load i64, i64* %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %47, i64 1900)
  %50 = extractvalue { i64, i1 } %49, 1
  %51 = extractvalue { i64, i1 } %49, 0
  %52 = trunc i64 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %51, %53
  %55 = or i1 %50, %54
  store i32 %52, i32* %48, align 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %46, %36
  %57 = load i8, i8* %5, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.241, i64 0, i64 0)) #18
  %61 = load i64, i64* %7, align 8
  call void (i8*, ...) @dbg_printf(i8* noundef %60, i64 noundef %61)
  br label %62

62:                                               ; preds = %59, %56
  store i1 false, i1* %4, align 1
  br label %64

63:                                               ; preds = %46, %36
  store i1 true, i1* %4, align 1
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i1, i1* %4, align 1
  ret i1 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_hour(i64 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 2, label %8
    i32 0, label %20
    i32 1, label %37
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 0, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %12, 24
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  br label %17

16:                                               ; preds = %11, %8
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i64 [ %15, %14 ], [ -1, %16 ]
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 0, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = icmp slt i64 %24, 12
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  br label %34

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 12
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 -1
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %26
  %35 = phi i64 [ %27, %26 ], [ %33, %28 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load i64, i64* %4, align 8
  %39 = icmp slt i64 0, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %41, 12
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 12
  br label %52

46:                                               ; preds = %40, %37
  %47 = load i64, i64* %4, align 8
  %48 = icmp eq i64 %47, 12
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 12, i32 -1
  %51 = sext i32 %50 to i64
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i64 [ %45, %43 ], [ %51, %46 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %34, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_strftime(%struct.tm* noundef %0, i8* noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.tm*, %struct.tm** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.tm*, %struct.tm** %4, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %7, i64 noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.242, i64 0, i64 0), i32 noundef %12, i32 noundef %15, i32 noundef %18) #18
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @mktime_ok(%struct.tm* noundef %0, %struct.tm* noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %6 = load %struct.tm*, %struct.tm** %5, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.tm*, %struct.tm** %4, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %14, %17
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tm*, %struct.tm** %5, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  %26 = or i32 %18, %25
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %29, %32
  %34 = or i32 %26, %33
  %35 = load %struct.tm*, %struct.tm** %4, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = or i32 %34, %41
  %43 = load %struct.tm*, %struct.tm** %4, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tm*, %struct.tm** %5, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %45, %48
  %50 = or i32 %42, %49
  %51 = load %struct.tm*, %struct.tm** %4, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tm*, %struct.tm** %5, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %53, %56
  %58 = or i32 %50, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  store i1 %60, i1* %3, align 1
  br label %61

61:                                               ; preds = %11, %10
  %62 = load i1, i1* %3, align 1
  ret i1 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_mktime_not_ok(%struct.tm* noundef %0, %struct.tm* noundef %1, %struct.parser_control* noundef %2, i1 noundef %3) #4 {
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.parser_control*, align 8
  %8 = alloca i8, align 1
  %9 = alloca [100 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store %struct.parser_control* %2, %struct.parser_control** %7, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  %13 = load %struct.parser_control*, %struct.parser_control** %7, align 8
  %14 = call i1 @debugging(%struct.parser_control* noundef %13)
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %130

16:                                               ; preds = %4
  %17 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %17)
  %18 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.244, i64 0, i64 0)) #18
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  %20 = load %struct.parser_control*, %struct.parser_control** %7, align 8
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %22 = call i8* @debug_strfdatetime(%struct.tm* noundef %19, %struct.parser_control* noundef %20, i8* noundef %21, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %18, i8* noundef %22)
  %23 = load %struct.tm*, %struct.tm** %6, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %10, align 1
  %28 = load i8, i8* %10, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.245, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %31)
  br label %113

32:                                               ; preds = %16
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.246, i64 0, i64 0)) #18
  %34 = load %struct.tm*, %struct.tm** %6, align 8
  %35 = load %struct.parser_control*, %struct.parser_control** %7, align 8
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %37 = call i8* @debug_strfdatetime(%struct.tm* noundef %34, %struct.parser_control* noundef %35, i8* noundef %36, i32 noundef 100)
  call void (i8*, ...) @dbg_printf(i8* noundef %33, i8* noundef %37)
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %39 = load %struct.tm*, %struct.tm** %5, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tm*, %struct.tm** %6, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i64 0, i64 0)
  %48 = load %struct.tm*, %struct.tm** %5, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %57 = load %struct.tm*, %struct.tm** %5, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tm*, %struct.tm** %6, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %66 = load %struct.tm*, %struct.tm** %5, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tm*, %struct.tm** %6, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %75 = load %struct.tm*, %struct.tm** %5, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tm*, %struct.tm** %6, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %84 = load %struct.tm*, %struct.tm** %5, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tm*, %struct.tm** %6, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.164, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %38, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.247, i64 0, i64 0), i8* noundef %47, i8* noundef %56, i8* noundef %65, i8* noundef %74, i8* noundef %83, i8* noundef %92) #18
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %107, %32
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 0, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 32
  br label %105

105:                                              ; preds = %97, %94
  %106 = phi i1 [ false, %94 ], [ %104, %97 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %11, align 4
  br label %94, !llvm.loop !47

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void (i8*, ...) @dbg_printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0), i32 noundef %111, i8* noundef %112)
  br label %113

113:                                              ; preds = %110, %30
  %114 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.251, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %114)
  %115 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.252, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %115)
  %116 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %116)
  %117 = load i8, i8* %10, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.254, i64 0, i64 0)) #18
  call void @dbg_fputs(i8* noundef %120)
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i8, i8* %8, align 1
  %123 = trunc i8 %122 to i1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.256, i64 0, i64 0)) #18
  br label %128

126:                                              ; preds = %121
  %127 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.257, i64 0, i64 0)) #18
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i8* [ %125, %124 ], [ %127, %126 ]
  call void (i8*, ...) @dbg_printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.255, i64 0, i64 0), i8* noundef %129)
  br label %130

130:                                              ; preds = %128, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_strfdatetime(%struct.tm* noundef %0, %struct.parser_control* noundef %1, i8* noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.parser_control*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [27 x i8], align 1
  store %struct.tm* %0, %struct.tm** %5, align 8
  store %struct.parser_control* %1, %struct.parser_control** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = call i64 @strftime(i8* noundef %12, i64 noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i64 0, i64 0), %struct.tm* noundef %15) #18
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %19 = icmp ne %struct.parser_control* %18, null
  br i1 %19, label %20, label %63

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %26 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %25, i32 0, i32 21
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %31 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %34 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %33, i32 0, i32 18
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %39 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %38, i32 0, i32 21
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.parser_control*, %struct.parser_control** %6, align 8
  %44 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 3600
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %42, %37, %29
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds [27 x i8], [27 x i8]* %11, i64 0, i64 0
  %61 = call i8* @time_zone_str(i32 noundef %59, i8* noundef %60)
  %62 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %54, i64 noundef %58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.259, i64 0, i64 0), i8* noundef %61) #18
  br label %63

63:                                               ; preds = %50, %24, %20, %4
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_strfdate(%struct.tm* noundef %0, i8* noundef %1, i32 noundef %2) #4 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [13 x i8], align 1
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.tm*, %struct.tm** %4, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %15 = call i8* @tm_year_str(i32 noundef %13, i8* noundef %14)
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.tm*, %struct.tm** %4, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %8, i64 noundef %10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.260, i64 0, i64 0), i8* noundef %15, i32 noundef %19, i32 noundef %22) #18
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tm_year_str(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 -1900, %6
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.261, i64 0, i64 %9
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 100
  %13 = add nsw i32 %12, 19
  %14 = call i32 @abs(i32 noundef %13) #21
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 100
  %17 = call i32 @abs(i32 noundef %16) #21
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %5, i8* noundef %10, i32 noundef %14, i32 noundef %17) #18
  %19 = load i8*, i8** %4, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64* noundef, %struct.tm* noundef) #2

; Function Attrs: nounwind
declare i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @parse_datetime(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tm_zone*, align 8
  %10 = alloca i8, align 1
  store %struct.timespec* %0, %struct.timespec** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %11 = call i8* @getenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.216, i64 0, i64 0)) #18
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call %struct.tm_zone* @tzalloc(i8* noundef %12)
  store %struct.tm_zone* %13, %struct.tm_zone** %9, align 8
  %14 = load %struct.tm_zone*, %struct.tm_zone** %9, align 8
  %15 = icmp ne %struct.tm_zone* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i1 false, i1* %4, align 1
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.timespec*, %struct.timespec** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.timespec*, %struct.timespec** %7, align 8
  %21 = load %struct.tm_zone*, %struct.tm_zone** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i1 @parse_datetime_body(%struct.timespec* noundef %18, i8* noundef %19, %struct.timespec* noundef %20, i32 noundef 0, %struct.tm_zone* noundef %21, i8* noundef %22)
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %10, align 1
  %25 = load %struct.tm_zone*, %struct.tm_zone** %9, align 8
  call void @tzfree(%struct.tm_zone* noundef %25)
  %26 = load i8, i8* %10, align 1
  %27 = trunc i8 %26 to i1
  store i1 %27, i1* %4, align 1
  br label %28

28:                                               ; preds = %17, %16
  %29 = load i1, i1* %4, align 1
  ret i1 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @posixtime(i64* noundef %0, i8* noundef %1, i32 noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.tm, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i1 @posix_time_parse(%struct.tm* noundef %8, i8* noundef %12, i32 noundef %13)
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i1 false, i1* %4, align 1
  br label %100

16:                                               ; preds = %3
  store i8 0, i8* %9, align 1
  br label %17

17:                                               ; preds = %16, %98
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 6
  store i32 -1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 8
  store i32 -1, i32* %37, align 8
  %38 = call i64 @mktime(%struct.tm* noundef %10) #18
  store i64 %38, i64* %11, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  store i1 false, i1* %4, align 1
  br label %100

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %45, %47
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = xor i32 %50, %52
  %54 = or i32 %48, %53
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %56, %58
  %60 = or i32 %54, %59
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = xor i32 %62, %64
  %66 = or i32 %60, %65
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %68, %70
  %72 = or i32 %66, %71
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %74, %76
  %78 = or i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %43
  %81 = load i64, i64* %11, align 8
  %82 = load i8, i8* %9, align 1
  %83 = trunc i8 %82 to i1
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %81, i64 %85)
  %87 = extractvalue { i64, i1 } %86, 1
  %88 = extractvalue { i64, i1 } %86, 0
  store i64 %88, i64* %11, align 8
  br i1 %87, label %89, label %90

89:                                               ; preds = %80
  store i1 false, i1* %4, align 1
  br label %100

90:                                               ; preds = %80
  %91 = load i64, i64* %11, align 8
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  store i1 true, i1* %4, align 1
  br label %100

93:                                               ; preds = %43
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 60
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i1 false, i1* %4, align 1
  br label %100

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 59, i32* %99, align 8
  store i8 1, i8* %9, align 1
  br label %17

100:                                              ; preds = %97, %90, %89, %42, %15
  %101 = load i1, i1* %4, align 1
  ret i1 %101
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @posix_time_parse(%struct.tm* noundef %0, i8* noundef %1, i32 noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [6 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* noundef %15) #20
  store i64 %16, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* noundef %22, i32 noundef 46) #20
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 %32, %33
  %35 = icmp ne i64 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i1 false, i1* %4, align 1
  br label %186

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i64, i64* %10, align 8
  %41 = icmp sle i64 8, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = icmp sle i64 %43, 12
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = srem i64 %46, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %42, %39
  store i1 false, i1* %4, align 1
  br label %186

50:                                               ; preds = %45
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i1 @c_isdigit(i32 noundef %60)
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i1 false, i1* %4, align 1
  br label %186

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %51, !llvm.loop !48

67:                                               ; preds = %51
  %68 = load i64, i64* %10, align 8
  %69 = sdiv i64 %68, 2
  store i64 %69, i64* %10, align 8
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %94, %67
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %13, align 8
  %77 = mul nsw i64 2, %76
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  %82 = mul nsw i32 10, %81
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %13, align 8
  %85 = mul nsw i64 2, %84
  %86 = add nsw i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %82, %89
  %91 = sub nsw i32 %90, 48
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %92
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %74
  %95 = load i64, i64* %13, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %13, align 8
  br label %70, !llvm.loop !49

97:                                               ; preds = %70
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32* %98, i32** %14, align 8
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = load %struct.tm*, %struct.tm** %5, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub nsw i64 %105, 4
  %107 = load i32, i32* %7, align 4
  %108 = call i1 @year(%struct.tm* noundef %103, i32* noundef %104, i64 noundef %106, i32 noundef %107)
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  store i1 false, i1* %4, align 1
  br label %186

110:                                              ; preds = %102
  %111 = load i64, i64* %10, align 8
  %112 = sub nsw i64 %111, 4
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %14, align 8
  store i64 4, i64* %10, align 8
  br label %115

115:                                              ; preds = %110, %97
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %14, align 8
  %118 = load i32, i32* %116, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.tm*, %struct.tm** %5, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %14, align 8
  %124 = load i32, i32* %122, align 4
  %125 = load %struct.tm*, %struct.tm** %5, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %14, align 8
  %129 = load i32, i32* %127, align 4
  %130 = load %struct.tm*, %struct.tm** %5, align 8
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %14, align 8
  %134 = load i32, i32* %132, align 4
  %135 = load %struct.tm*, %struct.tm** %5, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %10, align 8
  %138 = sub nsw i64 %137, 4
  store i64 %138, i64* %10, align 8
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, 1
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %115
  %143 = load %struct.tm*, %struct.tm** %5, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i1 @year(%struct.tm* noundef %143, i32* noundef %144, i64 noundef %145, i32 noundef %146)
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  store i1 false, i1* %4, align 1
  br label %186

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %115
  %151 = load i8*, i8** %9, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load %struct.tm*, %struct.tm** %5, align 8
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  br label %185

156:                                              ; preds = %150
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i1 @c_isdigit(i32 noundef %160)
  br i1 %161, label %162, label %183

162:                                              ; preds = %156
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = call i1 @c_isdigit(i32 noundef %166)
  br i1 %167, label %168, label %183

168:                                              ; preds = %162
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 48
  %174 = mul nsw i32 10, %173
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = add nsw i32 %174, %178
  %180 = sub nsw i32 %179, 48
  %181 = load %struct.tm*, %struct.tm** %5, align 8
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %184

183:                                              ; preds = %162, %156
  store i1 false, i1* %4, align 1
  br label %186

184:                                              ; preds = %168
  br label %185

185:                                              ; preds = %184, %153
  store i1 true, i1* %4, align 1
  br label %186

186:                                              ; preds = %185, %183, %148, %109, %62, %49, %36
  %187 = load i1, i1* %4, align 1
  ret i1 %187
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @year(%struct.tm* noundef %0, i32* noundef %1, i64 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  switch i64 %12, label %62 [
    i64 1, label %13
    i64 2, label %33
    i64 0, label %50
  ]

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tm*, %struct.tm** %6, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 68
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i1 false, i1* %5, align 1
  br label %64

27:                                               ; preds = %22
  %28 = load %struct.tm*, %struct.tm** %6, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 100
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %13
  br label %63

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i1 false, i1* %5, align 1
  br label %64

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 100
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sub nsw i32 %46, 1900
  %48 = load %struct.tm*, %struct.tm** %6, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %63

50:                                               ; preds = %4
  %51 = call i64 @rpl_time(i64* noundef null)
  store i64 %51, i64* %10, align 8
  %52 = call %struct.tm* @localtime(i64* noundef %10) #18
  store %struct.tm* %52, %struct.tm** %11, align 8
  %53 = load %struct.tm*, %struct.tm** %11, align 8
  %54 = icmp ne %struct.tm* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i1 false, i1* %5, align 1
  br label %64

56:                                               ; preds = %50
  %57 = load %struct.tm*, %struct.tm** %11, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tm*, %struct.tm** %6, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  br label %63

62:                                               ; preds = %4
  unreachable

63:                                               ; preds = %56, %38, %32
  store i1 true, i1* %5, align 1
  br label %64

64:                                               ; preds = %63, %55, %37, %26
  %65 = load i1, i1* %5, align 1
  ret i1 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix2_version() #4 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 200809, i64* %1, align 8
  %5 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.262, i64 0, i64 0)) #18
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strtol(i8* noundef %14, i8** noundef %3, i32 noundef 10) #18
  store i64 %15, i64* %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %13
  br label %22

22:                                               ; preds = %21, %8, %0
  %23 = load i64, i64* %1, align 8
  %24 = icmp slt i64 %23, -2147483648
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %1, align 8
  %28 = icmp slt i64 %27, 2147483647
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* %1, align 8
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 2147483647, %31 ]
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i64 [ -2147483648, %25 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

; Function Attrs: nounwind
declare i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #2

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
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i64 0, i64 0), i64 noundef 7)
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.268, i64 0, i64 0), i64 noundef 3) #20
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.281, i64 0, i64 0), i8** %23, align 8
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
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.282, i64 0, i64 0), i32 noundef %76)
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.283, i64 0, i64 0), i32 noundef %78)
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
  br label %85, !llvm.loop !50

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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.283, i64 0, i64 0), i8** %23, align 8
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
  br label %587, !llvm.loop !51

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
  br label %615, !llvm.loop !52

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
  br label %139, !llvm.loop !53

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
  br label %1045, !llvm.loop !54

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
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.284, i64 0, i64 0), i8* noundef %9) #18
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
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.281, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.283, i64 0, i64 0)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

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
  br label %4, !llvm.loop !55

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

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_atime_ns(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %3 = load %struct.stat*, %struct.stat** %2, align 8
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_ctime_ns(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %3 = load %struct.stat*, %struct.stat** %2, align 8
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 14
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_mtime_ns(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %3 = load %struct.stat*, %struct.stat** %2, align 8
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 13
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @get_stat_birthtime_ns(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_atime(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %4 = load %struct.stat*, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12
  %6 = bitcast %struct.timespec* %2 to i8*
  %7 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*
  %9 = load [2 x i64], [2 x i64]* %8, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_ctime(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %4 = load %struct.stat*, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 14
  %6 = bitcast %struct.timespec* %2 to i8*
  %7 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*
  %9 = load [2 x i64], [2 x i64]* %8, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_mtime(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %4 = load %struct.stat*, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 13
  %6 = bitcast %struct.timespec* %2 to i8*
  %7 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = bitcast %struct.timespec* %2 to [2 x i64]*
  %9 = load [2 x i64], [2 x i64]* %8, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local [2 x i64] @get_stat_birthtime(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.timespec, align 8
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.timespec, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 -1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 -1, i64* %6, align 8
  %7 = bitcast %struct.timespec* %2 to i8*
  %8 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = bitcast %struct.timespec* %2 to [2 x i64]*
  %10 = load [2 x i64], [2 x i64]* %9, align 8
  ret [2 x i64] %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stat_time_normalize(i32 noundef %0, %struct.stat* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load i32, i32* %3, align 4
  ret i32 %5
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
define dso_local i64 @rpl_time(i64* noundef %0) #4 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %5 = call i32 @gettimeofday(%struct.timespec* noundef %3, i8* noundef null) #18
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #19
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = load i64*, i64** %2, align 8
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i64, i64* %4, align 8
  ret i64 %17
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm_zone* @tzalloc(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm_zone*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* noundef %9) #20
  %11 = add i64 %10, 1
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i64 [ %11, %8 ], [ 0, %12 ]
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %15, 119
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i64 [ 119, %17 ], [ %20, %18 ]
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 16, %23
  %25 = and i64 %24, -8
  %26 = call noalias i8* @malloc(i64 noundef %25) #18
  %27 = bitcast i8* %26 to %struct.tm_zone*
  store %struct.tm_zone* %27, %struct.tm_zone** %5, align 8
  %28 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %29 = icmp ne %struct.tm_zone* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %32 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %31, i32 0, i32 0
  store %struct.tm_zone* null, %struct.tm_zone** %32, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  %39 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %40 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %39, i32 0, i32 1
  store i8 %38, i8* %40, align 8
  %41 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %42 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %41, i32 0, i32 2
  %43 = getelementptr inbounds [0 x i8], [0 x i8]* %42, i64 0, i64 0
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %2, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %48 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %47, i32 0, i32 2
  %49 = getelementptr inbounds [0 x i8], [0 x i8]* %48, i64 0, i64 0
  %50 = load i8*, i8** %2, align 8
  %51 = load i64, i64* %3, align 8
  call void @extend_abbrs(i8* noundef %49, i8* noundef %50, i64 noundef %51)
  br label %52

52:                                               ; preds = %46, %30
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  ret %struct.tm_zone* %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extend_abbrs(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false)
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 0, i8* %12, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tzfree(%struct.tm_zone* noundef %0) #4 {
  %2 = alloca %struct.tm_zone*, align 8
  %3 = alloca %struct.tm_zone*, align 8
  store %struct.tm_zone* %0, %struct.tm_zone** %2, align 8
  %4 = load %struct.tm_zone*, %struct.tm_zone** %2, align 8
  %5 = icmp ne %struct.tm_zone* %4, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %10, %6
  %8 = load %struct.tm_zone*, %struct.tm_zone** %2, align 8
  %9 = icmp ne %struct.tm_zone* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.tm_zone*, %struct.tm_zone** %2, align 8
  %12 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %11, i32 0, i32 0
  %13 = load %struct.tm_zone*, %struct.tm_zone** %12, align 8
  store %struct.tm_zone* %13, %struct.tm_zone** %3, align 8
  %14 = load %struct.tm_zone*, %struct.tm_zone** %2, align 8
  %15 = bitcast %struct.tm_zone* %14 to i8*
  call void @free(i8* noundef %15) #18
  %16 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  store %struct.tm_zone* %16, %struct.tm_zone** %2, align 8
  br label %7, !llvm.loop !56

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm_zone* @set_tz(%struct.tm_zone* noundef %0) #4 {
  %2 = alloca %struct.tm_zone*, align 8
  %3 = alloca %struct.tm_zone*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm_zone*, align 8
  store %struct.tm_zone* %0, %struct.tm_zone** %3, align 8
  %6 = call i8* @getenv_TZ()
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %11 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %16, i32 0, i32 2
  %18 = getelementptr inbounds [0 x i8], [0 x i8]* %17, i64 0, i64 0
  %19 = load i8*, i8** %4, align 8
  %20 = call i1 @streq(i8* noundef %18, i8* noundef %19)
  br i1 %20, label %26, label %27

21:                                               ; preds = %1
  %22 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %23 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15
  store %struct.tm_zone* inttoptr (i64 1 to %struct.tm_zone*), %struct.tm_zone** %2, align 8
  br label %41

27:                                               ; preds = %21, %15, %9
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.tm_zone* @tzalloc(i8* noundef %28)
  store %struct.tm_zone* %29, %struct.tm_zone** %5, align 8
  %30 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %31 = icmp ne %struct.tm_zone* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  store %struct.tm_zone* %33, %struct.tm_zone** %2, align 8
  br label %41

34:                                               ; preds = %27
  %35 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %36 = call i1 @change_env(%struct.tm_zone* noundef %35)
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  call void @tzfree(%struct.tm_zone* noundef %38)
  store %struct.tm_zone* null, %struct.tm_zone** %2, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  store %struct.tm_zone* %40, %struct.tm_zone** %2, align 8
  br label %41

41:                                               ; preds = %39, %37, %32, %26
  %42 = load %struct.tm_zone*, %struct.tm_zone** %2, align 8
  ret %struct.tm_zone* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getenv_TZ() #4 {
  %1 = call i8* @getenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.307, i64 0, i64 0)) #18
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @change_env(%struct.tm_zone* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.tm_zone*, align 8
  store %struct.tm_zone* %0, %struct.tm_zone** %3, align 8
  %4 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %5 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %11 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %10, i32 0, i32 2
  %12 = getelementptr inbounds [0 x i8], [0 x i8]* %11, i64 0, i64 0
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i8* [ %12, %9 ], [ null, %13 ]
  %16 = call i32 @setenv_TZ(i8* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i1 false, i1* %2, align 1
  br label %20

19:                                               ; preds = %14
  call void @tzset() #18
  store i1 true, i1* %2, align 1
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i1, i1* %2, align 1
  ret i1 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setenv_TZ(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @setenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.307, i64 0, i64 0), i8* noundef %6, i32 noundef 1) #18
  br label %10

8:                                                ; preds = %1
  %9 = call i32 @unsetenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.307, i64 0, i64 0)) #18
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind
declare void @tzset() #2

; Function Attrs: nounwind
declare i32 @setenv(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @revert_tz(%struct.tm_zone* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.tm_zone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.tm_zone* %0, %struct.tm_zone** %3, align 8
  %6 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %7 = icmp eq %struct.tm_zone* %6, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i1 true, i1* %2, align 1
  br label %26

9:                                                ; preds = %1
  %10 = call i32* @__errno_location() #21
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  %13 = call i1 @change_env(%struct.tm_zone* noundef %12)
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %5, align 1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = call i32* @__errno_location() #21
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = load %struct.tm_zone*, %struct.tm_zone** %3, align 8
  call void @tzfree(%struct.tm_zone* noundef %21)
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @__errno_location() #21
  store i32 %22, i32* %23, align 4
  %24 = load i8, i8* %5, align 1
  %25 = trunc i8 %24 to i1
  store i1 %25, i1* %2, align 1
  br label %26

26:                                               ; preds = %20, %8
  %27 = load i1, i1* %2, align 1
  ret i1 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @localtime_rz(%struct.tm_zone* noundef %0, i64* noundef nonnull %1, %struct.tm* noundef nonnull %2) #4 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm_zone*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca %struct.tm_zone*, align 8
  %9 = alloca i8, align 1
  store %struct.tm_zone* %0, %struct.tm_zone** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  %10 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %11 = icmp ne %struct.tm_zone* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = load %struct.tm*, %struct.tm** %7, align 8
  %15 = call %struct.tm* @gmtime_r(i64* noundef %13, %struct.tm* noundef %14) #18
  store %struct.tm* %15, %struct.tm** %4, align 8
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %18 = call %struct.tm_zone* @set_tz(%struct.tm_zone* noundef %17)
  store %struct.tm_zone* %18, %struct.tm_zone** %8, align 8
  %19 = load %struct.tm_zone*, %struct.tm_zone** %8, align 8
  %20 = icmp ne %struct.tm_zone* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i64*, i64** %6, align 8
  %23 = load %struct.tm*, %struct.tm** %7, align 8
  %24 = call %struct.tm* @localtime_r(i64* noundef %22, %struct.tm* noundef %23) #18
  %25 = icmp ne %struct.tm* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8
  %28 = load %struct.tm*, %struct.tm** %7, align 8
  %29 = call i1 @save_abbr(%struct.tm_zone* noundef %27, %struct.tm* noundef %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load %struct.tm_zone*, %struct.tm_zone** %8, align 8
  %34 = call i1 @revert_tz(%struct.tm_zone* noundef %33)
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8, i8* %9, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.tm*, %struct.tm** %7, align 8
  store %struct.tm* %39, %struct.tm** %4, align 8
  br label %42

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %16
  store %struct.tm* null, %struct.tm** %4, align 8
  br label %42

42:                                               ; preds = %41, %38, %12
  %43 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %43
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64* noundef, %struct.tm* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @save_abbr(%struct.tm_zone* noundef %0, %struct.tm* noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.tm_zone*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.tm_zone* %0, %struct.tm_zone** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 10
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.310, i64 0, i64 0), i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = bitcast %struct.tm* %15 to i8*
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ule i8* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i64 1
  %23 = bitcast %struct.tm* %22 to i8*
  %24 = icmp ult i8* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i1 true, i1* %3, align 1
  br label %114

26:                                               ; preds = %19, %14
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %110

30:                                               ; preds = %26
  %31 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %32 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %31, i32 0, i32 2
  %33 = getelementptr inbounds [0 x i8], [0 x i8]* %32, i64 0, i64 0
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %108, %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i1 @streq(i8* noundef %35, i8* noundef %36)
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %109

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %47 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %46, i32 0, i32 2
  %48 = getelementptr inbounds [0 x i8], [0 x i8]* %47, i64 0, i64 0
  %49 = icmp eq i8* %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %52 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %50, %44
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strlen(i8* noundef %57) #20
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %62 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %61, i32 0, i32 2
  %63 = getelementptr inbounds [0 x i8], [0 x i8]* %62, i64 0, i64 0
  %64 = getelementptr inbounds i8, i8* %63, i64 119
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = icmp slt i64 %60, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %8, align 8
  call void @extend_abbrs(i8* noundef %71, i8* noundef %72, i64 noundef %73)
  br label %88

74:                                               ; preds = %56
  %75 = load i8*, i8** %6, align 8
  %76 = call %struct.tm_zone* @tzalloc(i8* noundef %75)
  %77 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %78 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %77, i32 0, i32 0
  store %struct.tm_zone* %76, %struct.tm_zone** %78, align 8
  store %struct.tm_zone* %76, %struct.tm_zone** %4, align 8
  %79 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %80 = icmp ne %struct.tm_zone* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  store i1 false, i1* %3, align 1
  br label %114

82:                                               ; preds = %74
  %83 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %84 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %83, i32 0, i32 1
  store i8 0, i8* %84, align 8
  %85 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %86 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %85, i32 0, i32 2
  %87 = getelementptr inbounds [0 x i8], [0 x i8]* %86, i64 0, i64 0
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %82, %70
  br label %109

89:                                               ; preds = %50, %39
  %90 = load i8*, i8** %7, align 8
  %91 = call i8* @gl_strnul(i8* noundef %90) #20
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %89
  %97 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %98 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %97, i32 0, i32 0
  %99 = load %struct.tm_zone*, %struct.tm_zone** %98, align 8
  %100 = icmp ne %struct.tm_zone* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %103 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %102, i32 0, i32 0
  %104 = load %struct.tm_zone*, %struct.tm_zone** %103, align 8
  store %struct.tm_zone* %104, %struct.tm_zone** %4, align 8
  %105 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %106 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %105, i32 0, i32 2
  %107 = getelementptr inbounds [0 x i8], [0 x i8]* %106, i64 0, i64 0
  store i8* %107, i8** %7, align 8
  br label %108

108:                                              ; preds = %101, %96, %89
  br label %34, !llvm.loop !57

109:                                              ; preds = %88, %34
  br label %110

110:                                              ; preds = %109, %26
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.tm*, %struct.tm** %5, align 8
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %112, i32 0, i32 10
  store i8* %111, i8** %113, align 8
  store i1 true, i1* %3, align 1
  br label %114

114:                                              ; preds = %110, %81, %25
  %115 = load i1, i1* %3, align 1
  ret i1 %115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mktime_z(%struct.tm_zone* noundef %0, %struct.tm* noundef nonnull %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm_zone*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm_zone*, align 8
  %7 = alloca %struct.tm, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.tm_zone* %0, %struct.tm_zone** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %10 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %11 = icmp ne %struct.tm_zone* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = call i64 @timegm(%struct.tm* noundef %13) #18
  store i64 %14, i64* %3, align 8
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %17 = call %struct.tm_zone* @set_tz(%struct.tm_zone* noundef %16)
  store %struct.tm_zone* %17, %struct.tm_zone** %6, align 8
  %18 = load %struct.tm_zone*, %struct.tm_zone** %6, align 8
  %19 = icmp ne %struct.tm_zone* %18, null
  br i1 %19, label %20, label %74

20:                                               ; preds = %15
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.tm*, %struct.tm** %5, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.tm*, %struct.tm** %5, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.tm*, %struct.tm** %5, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.tm*, %struct.tm** %5, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load %struct.tm*, %struct.tm** %5, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 7
  store i32 -1, i32* %45, align 4
  %46 = load %struct.tm*, %struct.tm** %5, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 8
  store i32 %48, i32* %49, align 8
  %50 = call i64 @mktime(%struct.tm* noundef %7) #18
  store i64 %50, i64* %8, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 0, %52
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %9, align 1
  %55 = load i8, i8* %9, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %60

57:                                               ; preds = %20
  %58 = load %struct.tm_zone*, %struct.tm_zone** %4, align 8
  %59 = call i1 @save_abbr(%struct.tm_zone* noundef %58, %struct.tm* noundef %7)
  br label %60

60:                                               ; preds = %57, %20
  %61 = phi i1 [ false, %20 ], [ %59, %57 ]
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %9, align 1
  %63 = load %struct.tm_zone*, %struct.tm_zone** %6, align 8
  %64 = call i1 @revert_tz(%struct.tm_zone* noundef %63)
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i8, i8* %9, align 1
  %67 = trunc i8 %66 to i1
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.tm*, %struct.tm** %5, align 8
  %70 = bitcast %struct.tm* %69 to i8*
  %71 = bitcast %struct.tm* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 56, i1 false)
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %3, align 8
  br label %75

73:                                               ; preds = %65, %60
  br label %74

74:                                               ; preds = %73, %15
  store i64 -1, i64* %3, align 8
  br label %75

75:                                               ; preds = %74, %68, %12
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm* noundef) #2

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
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.313, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19)
  br label %26

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.314, i64 0, i64 0), i8* noundef %23, i8* noundef %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.316, i64 0, i64 0)) #18
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.317, i64 0, i64 0), %struct._IO_FILE* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.318, i64 0, i64 0)) #18
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.319, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.317, i64 0, i64 0), %struct._IO_FILE* noundef %35)
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
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.320, i64 0, i64 0)) #18
  %42 = load i8**, i8*** %11, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44)
  br label %241

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.321, i64 0, i64 0)) #18
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
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.322, i64 0, i64 0)) #18
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
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.323, i64 0, i64 0)) #18
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
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.324, i64 0, i64 0)) #18
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
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.325, i64 0, i64 0)) #18
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
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.326, i64 0, i64 0)) #18
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
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.327, i64 0, i64 0)) #18
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
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.328, i64 0, i64 0)) #18
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
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.329, i64 0, i64 0)) #18
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
  br label %12, !llvm.loop !58

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
  br label %12, !llvm.loop !59

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
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.317, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.334, i64 0, i64 0)) #18
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.335, i64 0, i64 0))
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.336, i64 0, i64 0)) #18
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.337, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.338, i64 0, i64 0))
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.315, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.339, i64 0, i64 0)) #18
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.340, i64 0, i64 0))
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
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.351, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.352, i64 0, i64 0)) #18
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.353, i64 0, i64 0), i8* noundef %4)
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
define dso_local i1 @c_isalnum(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isalpha(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isascii(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isblank(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 32
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 9
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_iscntrl(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isdigit(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isgraph(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_islower(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isprint(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_ispunct(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isspace(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isupper(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @c_isxdigit(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1
  br label %7

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 65
  %8 = add nsw i32 %7, 97
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
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
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 97
  %8 = add nsw i32 %7, 65
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
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
define dso_local i8* @_gl_alloc_nomem() #11 {
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.382, i64 0, i64 0), i8** %7, align 8
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

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @gl_strnul(i8* noundef nonnull %0) #9 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #20
  %6 = getelementptr inbounds i8, i8* %3, i64 %5
  ret i8* %6
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
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.393, i64 0, i64 0))
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.394, i64 0, i64 0))
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
