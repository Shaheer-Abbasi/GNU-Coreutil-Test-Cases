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
@change_times = internal unnamed_addr global i32 0, align 4
@no_create = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@no_dereference = internal unnamed_addr global i1 false, align 1
@use_ref = internal unnamed_addr global i1 false, align 1
@ref_file = internal unnamed_addr global i8* null, align 8
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
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"warning: 'touch %s' is obsolete; use 'touch -t %04ld%02d%02d%02d%02d.%02d'\00", align 1
@amtime_now = internal unnamed_addr global i1 false, align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@.str.38 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), align 8
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.41 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.42 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.44 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.45 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.46 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.87 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.88 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@.str.90 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.96 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.98 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.97 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.91 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.92 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.93 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@yyparse.yyval_default = internal unnamed_addr constant %union.YYSTYPE zeroinitializer, align 8
@yypact = internal unnamed_addr constant [121 x i8] c"\F2K\18\A3&\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\00\A3P\15F\03S\FCLM\A3Q\A3\A3\A3\A3\A3\A3\A3\A3\A3I\A3]\A3\A3\A3\A3\A3\A3RJ\A3\A3\A3\A3\A3\A3\A3\A3\1A\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A31\0BTU2\A3\A3\A3\A3\A3V\A3\A3WX\A3\A3\A3\A3\A3/YOZ\0A\A3\A3\A3\A3\\\13\A3\A3[\A3^_\FA\A3\A3(\A3\A3\13a", align 1
@yytranslate = internal unnamed_addr constant [279 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1C\02\1E\1D\02\02\02\02\02\02\02\02\02\02\1B\02\02\02\02\02\18\02\02\02\02\02\02\02\02\02\19\02\02\02\02\02\02\02\02\02\1A\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17", align 1
@yycheck = internal unnamed_addr constant [121 x i8] c"\1B\05\06\07\08\09\0A\04\0C\0F\18\0F\10\13j\13\05\06\07\08\09\0A\13\1B\00\1D\1Ew\1C\13\13\05\06\07\08\09\0A\1B\1B\14\13\14\17\05\06\07\08\09\0A\0B\0C\0D\0E\1B\10\11\12\13\14\13\16\17\0F\19\1Aq\13\1B\13\14\14\15xd\1B\05\06\07\08\09\0A\19\0C\1B\04\09\09\1F\05\06\07\08\09\0A\13\14\03\16\17\1A\13\13\1CV\14\14\14\14\14\1E\FF\14<\FF\14\14\13\FF\1D\1B\1E", align 1
@yytable = internal unnamed_addr constant [121 x i8] c"QDEFGHI;Ju\01KLiqM>?@ABC<N\0COPx0i^>?@ABCpZ\0623\08\0D\0E\0F\10\11\12\13\14\15\16Z\17\18\19\1A\1Bi\1C\1Dh\1E\1Fviw\\]bcvQj456789=:R1STU>?@ABC\05\06W\07\08V\1AXYe`adfgn\00r[\00sti\00mZo", align 1
@yydefact = internal unnamed_addr constant [121 x i8] c"\05\00\00\02\03XZWY\04UV\01;>DGLAT&$\1D\00\00\1F\00[\00\00\0A \06\07\11\08\16\09\0B\0D\0C4\0E7M8\0F\10'\1E\0009<BEH?(%]!NOQRSP:=CFI@)\132]\00\00\00\17\\JK\22\006/\00\00#.35\1C\1A*\00\00\00\121^\14]\00\18\1B\00,\00\00\1A+-\1A\15\19\00\1A", align 1
@yyr2 = internal unnamed_addr constant [95 x i8] c"\00\02\01\01\02\00\02\01\01\01\01\01\01\01\01\01\01\01\03\02\04\06\01\02\04\06\00\01\02\01\02\01\01\02\02\03\01\02\01\02\02\02\03\05\04\05\03\03\02\04\02\03\01\03\02\01\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\01\02\02\02\02\01\01\02\02\02\02\02\02\01\01\01\01\01\01\01\01\02\00\02", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.160 = private unnamed_addr constant [18 x i8] c"number of seconds\00", align 1
@.str.2.161 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.3.162 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.4.163 = private unnamed_addr constant [11 x i8] c"local_zone\00", align 1
@.str.5.164 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.6.165 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.7.166 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.8.167 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.9.168 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.10.169 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11.170 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.12.171 = private unnamed_addr constant [56 x i8] c"warning: value %ld has %ld digits. Assuming YYYY/MM/DD\0A\00", align 1
@.str.13.172 = private unnamed_addr constant [66 x i8] c"warning: value %ld has less than 4 digits. Assuming MM/DD/YY[YY]\0A\00", align 1
@yyr1 = internal unnamed_addr constant [95 x i8] c"\00\1F  !\22\22##########$%&&&&'''(()**+++++++,,,,-----------.///00000000000000000000011111123344556788", align 1
@yypgoto = internal unnamed_addr constant [26 x i8] c"\A3\A3\A3\A3\A3\A3\A3\A3\11\D0\E5\A3\A3\A3\A3\A3\A3\A38\A3\A3\A3\A4\A3\A34", align 1
@yydefgoto = internal unnamed_addr constant [26 x i8] c"\00\02\03\04 !\22#$kl%&'()*+,-\09\0A\0B./_", align 1
@.str.20.207 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.21.173 = private unnamed_addr constant [17 x i8] c"parsed %s part: \00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22.177 = private unnamed_addr constant [26 x i8] c"(Y-M-D) %04ld-%02ld-%02ld\00", align 1
@.str.23.178 = private unnamed_addr constant [12 x i8] c"year: %04ld\00", align 1
@.str.24.179 = private unnamed_addr constant [19 x i8] c" %02ld:%02ld:%02ld\00", align 1
@.str.25.180 = private unnamed_addr constant [6 x i8] c".%09d\00", align 1
@.str.26.181 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.27.182 = private unnamed_addr constant [31 x i8] c"%s (day ordinal=%ld number=%d)\00", align 1
@.str.28.183 = private unnamed_addr constant [12 x i8] c" isdst=%d%s\00", align 1
@.str.29.185 = private unnamed_addr constant [5 x i8] c" DST\00", align 1
@.str.30.184 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31.186 = private unnamed_addr constant [7 x i8] c" UTC%s\00", align 1
@.str.32.188 = private unnamed_addr constant [23 x i8] c"number of seconds: %ld\00", align 1
@str_days.ordinal_values = internal constant [14 x [11 x i8]] [[11 x i8] c"last\00\00\00\00\00\00\00", [11 x i8] c"this\00\00\00\00\00\00\00", [11 x i8] c"next/first\00", [11 x i8] c"(SECOND)\00\00\00", [11 x i8] c"third\00\00\00\00\00\00", [11 x i8] c"fourth\00\00\00\00\00", [11 x i8] c"fifth\00\00\00\00\00\00", [11 x i8] c"sixth\00\00\00\00\00\00", [11 x i8] c"seventh\00\00\00\00", [11 x i8] c"eight\00\00\00\00\00\00", [11 x i8] c"ninth\00\00\00\00\00\00", [11 x i8] c"tenth\00\00\00\00\00\00", [11 x i8] c"eleventh\00\00\00", [11 x i8] c"twelfth\00\00\00\00"], align 1
@str_days.days_values = internal constant [7 x [4 x i8]] [[4 x i8] c"Sun\00", [4 x i8] c"Mon\00", [4 x i8] c"Tue\00", [4 x i8] c"Wed\00", [4 x i8] c"Thu\00", [4 x i8] c"Fri\00", [4 x i8] c"Sat\00"], align 1
@.str.33.189 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34.190 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.35.191 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.36.187 = private unnamed_addr constant [7 x i8] c"%c%02d\00", align 1
@.str.37.174 = private unnamed_addr constant [16 x i8] c"today/this/now\0A\00", align 1
@.str.38.175 = private unnamed_addr constant [8 x i8] c"year(s)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"month(s)\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"day(s)\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"hour(s)\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.43.176 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"nanoseconds\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c" %+ld %s\00", align 1
@.str.46.192 = private unnamed_addr constant [7 x i8] c"date: \00", align 1
@.str.48.159 = private unnamed_addr constant [26 x i8] c"error: unknown word '%s'\0A\00", align 1
@meridian_table = internal unnamed_addr constant [5 x %struct.table] [%struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.109, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50.110, i32 0, i32 0), i32 270, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.111, i32 0, i32 0), i32 270, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52.112, i32 0, i32 0), i32 270, i32 1 }, %struct.table zeroinitializer], align 8
@month_and_day_table = internal unnamed_addr constant [25 x %struct.table] [%struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53.113, i32 0, i32 0), i32 271, i32 1 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.114, i32 0, i32 0), i32 271, i32 2 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55.115, i32 0, i32 0), i32 271, i32 3 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56.116, i32 0, i32 0), i32 271, i32 4 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57.117, i32 0, i32 0), i32 271, i32 5 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58.118, i32 0, i32 0), i32 271, i32 6 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59.119, i32 0, i32 0), i32 271, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60.120, i32 0, i32 0), i32 271, i32 8 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61.121, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62.122, i32 0, i32 0), i32 271, i32 9 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63.123, i32 0, i32 0), i32 271, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64.124, i32 0, i32 0), i32 271, i32 11 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65.125, i32 0, i32 0), i32 271, i32 12 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66.126, i32 0, i32 0), i32 267, i32 0 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67.127, i32 0, i32 0), i32 267, i32 1 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68.128, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69.129, i32 0, i32 0), i32 267, i32 2 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70.130, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71.131, i32 0, i32 0), i32 267, i32 3 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72.132, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73.133, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74.134, i32 0, i32 0), i32 267, i32 4 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75.135, i32 0, i32 0), i32 267, i32 5 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76.136, i32 0, i32 0), i32 267, i32 6 }, %struct.table zeroinitializer], align 8
@dst_table = internal unnamed_addr constant [1 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i32 259, i32 0 }], align 8
@time_units_table = internal unnamed_addr constant [11 x %struct.table] [%struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 260, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i32 261, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i32 0, i32 0), i32 265, i32 14 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 265, i32 7 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0), i32 265, i32 1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 262, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i32 263, i32 1 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i32 264, i32 1 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i32 264, i32 1 }, %struct.table zeroinitializer], align 8
@relative_time_table = internal unnamed_addr constant [21 x %struct.table] [%struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0), i32 266, i32 1 }, %struct.table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i32 266, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i32 266, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 272, i32 -1 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i32 272, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i32 0, i32 0), i32 272, i32 1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32 272, i32 3 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 272, i32 4 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i32 272, i32 5 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i32 272, i32 6 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0), i32 272, i32 7 }, %struct.table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0), i32 272, i32 8 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i32 272, i32 9 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i32 272, i32 10 }, %struct.table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 272, i32 11 }, %struct.table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 272, i32 12 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0), i32 258, i32 -1 }, %struct.table { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i32 258, i32 1 }, %struct.table zeroinitializer], align 8
@military_table = internal unnamed_addr constant [27 x %struct.table] [%struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158.193, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i32 273, i32 14400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0), i32 273, i32 18000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.163, i32 0, i32 0), i32 273, i32 21600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.164, i32 0, i32 0), i32 273, i32 25200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), i32 273, i32 28800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.164, i32 0, i32 0), i32 74, i32 0 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i32 0, i32 0), i32 273, i32 36000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0), i32 273, i32 39600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), i32 273, i32 43200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i32 0, i32 0), i32 273, i32 -3600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0), i32 273, i32 -7200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0), i32 273, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i32 273, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0), i32 84, i32 0 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0), i32 273, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0), i32 273, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.179, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0), i32 273, i32 -39600 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0), i32 273, i32 -43200 }, %struct.table { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 8
@.str.49.109 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.50.110 = private unnamed_addr constant [5 x i8] c"A.M.\00", align 1
@.str.51.111 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.52.112 = private unnamed_addr constant [5 x i8] c"P.M.\00", align 1
@.str.53.113 = private unnamed_addr constant [8 x i8] c"JANUARY\00", align 1
@.str.54.114 = private unnamed_addr constant [9 x i8] c"FEBRUARY\00", align 1
@.str.55.115 = private unnamed_addr constant [6 x i8] c"MARCH\00", align 1
@.str.56.116 = private unnamed_addr constant [6 x i8] c"APRIL\00", align 1
@.str.57.117 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@.str.58.118 = private unnamed_addr constant [5 x i8] c"JUNE\00", align 1
@.str.59.119 = private unnamed_addr constant [5 x i8] c"JULY\00", align 1
@.str.60.120 = private unnamed_addr constant [7 x i8] c"AUGUST\00", align 1
@.str.61.121 = private unnamed_addr constant [10 x i8] c"SEPTEMBER\00", align 1
@.str.62.122 = private unnamed_addr constant [5 x i8] c"SEPT\00", align 1
@.str.63.123 = private unnamed_addr constant [8 x i8] c"OCTOBER\00", align 1
@.str.64.124 = private unnamed_addr constant [9 x i8] c"NOVEMBER\00", align 1
@.str.65.125 = private unnamed_addr constant [9 x i8] c"DECEMBER\00", align 1
@.str.66.126 = private unnamed_addr constant [7 x i8] c"SUNDAY\00", align 1
@.str.67.127 = private unnamed_addr constant [7 x i8] c"MONDAY\00", align 1
@.str.68.128 = private unnamed_addr constant [8 x i8] c"TUESDAY\00", align 1
@.str.69.129 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1
@.str.70.130 = private unnamed_addr constant [10 x i8] c"WEDNESDAY\00", align 1
@.str.71.131 = private unnamed_addr constant [7 x i8] c"WEDNES\00", align 1
@.str.72.132 = private unnamed_addr constant [9 x i8] c"THURSDAY\00", align 1
@.str.73.133 = private unnamed_addr constant [5 x i8] c"THUR\00", align 1
@.str.74.134 = private unnamed_addr constant [6 x i8] c"THURS\00", align 1
@.str.75.135 = private unnamed_addr constant [7 x i8] c"FRIDAY\00", align 1
@.str.76.136 = private unnamed_addr constant [9 x i8] c"SATURDAY\00", align 1
@universal_time_zone_table = internal constant [4 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77.194, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78.195, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79.196, i32 0, i32 0), i32 273, i32 0 }, %struct.table zeroinitializer], align 8
@time_zone_table = internal constant [48 x %struct.table] [%struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80.197, i32 0, i32 0), i32 273, i32 0 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81.198, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82.199, i32 0, i32 0), i32 268, i32 0 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83.200, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84.201, i32 0, i32 0), i32 273, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85.202, i32 0, i32 0), i32 268, i32 -10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86.203, i32 0, i32 0), i32 273, i32 -12600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 268, i32 -12600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i32 268, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90.204, i32 0, i32 0), i32 273, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 268, i32 -14400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 273, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 268, i32 -18000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 273, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i32 268, i32 -21600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i32 273, i32 -25200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i32 268, i32 -25200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i32 273, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i32 268, i32 -28800 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i32 273, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 268, i32 -32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i32 273, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 268, i32 -36000 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 273, i32 -43200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i32 273, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i32 268, i32 3600 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i32 268, i32 7200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i32 273, i32 7200 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i32 273, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i32 268, i32 10800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i32 273, i32 19800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), i32 273, i32 28800 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i32 273, i32 32400 }, %struct.table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), i32 273, i32 36000 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i32 273, i32 43200 }, %struct.table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i32 268, i32 43200 }, %struct.table zeroinitializer], align 8
@.str.77.194 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.78.195 = private unnamed_addr constant [3 x i8] c"UT\00", align 1
@.str.79.196 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.80.197 = private unnamed_addr constant [4 x i8] c"WET\00", align 1
@.str.81.198 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.82.199 = private unnamed_addr constant [4 x i8] c"BST\00", align 1
@.str.83.200 = private unnamed_addr constant [4 x i8] c"ART\00", align 1
@.str.84.201 = private unnamed_addr constant [4 x i8] c"BRT\00", align 1
@.str.85.202 = private unnamed_addr constant [5 x i8] c"BRST\00", align 1
@.str.86.203 = private unnamed_addr constant [4 x i8] c"NST\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"NDT\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"AST\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ADT\00", align 1
@.str.90.204 = private unnamed_addr constant [4 x i8] c"CLT\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"CLST\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"EST\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"EDT\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"CST\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"CDT\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"MST\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"MDT\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"PDT\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"AKST\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"AKDT\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"HST\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"HAST\00", align 1
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
@.str.124 = private unnamed_addr constant [4 x i8] c"GST\00", align 1
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
@.str.158.193 = private unnamed_addr constant [2 x i8] c"A\00", align 1
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
@.str.239 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.262 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.263 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.267 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.268 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.269 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.270 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.271 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.272 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.273 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.274 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.275 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.267, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.268, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.269, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.270, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.271, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.272, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.273, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.274, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.275, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.278 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.276 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.279 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.277 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.299 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.302 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.303 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.304 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.305 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.306 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.307 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.308 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.309 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.310 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.311 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.312 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.313 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.314 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.315 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.316 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.317 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.318 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.323 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.324 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.325 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.326 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.327 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.328 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.329 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.342 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.340 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.341 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.353 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.358 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.359 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #38
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #38
  br label %64

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #38
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #38
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([292 x i8], [292 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #38
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #38
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #38
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %19)
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %20)
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %21)
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %22)
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([167 x i8], [167 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %23)
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %24)
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %25)
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %26)
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %27)
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %28)
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #38
  tail call fastcc void @oputs_(i8* noundef %29)
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %30, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #38
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %32

32:                                               ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  %35 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %33) #39
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0
  %40 = load i8*, i8** %39, align 8, !tbaa !16
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %32, !llvm.loop !18

42:                                               ; preds = %37, %32
  %43 = phi %struct.infomap* [ %34, %32 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1
  %45 = load i8*, i8** %44, align 8, !tbaa !20
  %46 = icmp eq i8* %45, null
  %47 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %45
  tail call void @emit_bug_reporting_address() #38
  %48 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #38
  %49 = icmp eq i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %42
  %51 = tail call i32 @strncmp(i8* noundef nonnull %48, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i64 noundef 3) #39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #38
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %56 = tail call i32 @fputs_unlocked(i8* noundef %54, %struct._IO_FILE* noundef %55) #38
  br label %57

57:                                               ; preds = %42, %50, %53
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #38
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #38
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #38
  %61 = icmp eq i8* %47, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %60, i8* noundef %47, i8* noundef %62) #38
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #38
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 noundef %0) #40
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
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #38
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #39
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
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #39
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39
  %26 = icmp eq i8* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8* %24, %25
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #41
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
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #39
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
  %69 = tail call i16** @__ctype_b_loc() #41
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
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i64 noundef 6) #39
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i64 noundef 9) #39
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #38
  br label %106

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #38
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %109)
  %111 = ptrtoint i8* %59 to i64
  %112 = sub i64 %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %117)
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
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.stat, align 8
  %13 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %13) #38
  %14 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #38
  %15 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #38
  %16 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #38
  %17 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #38
  br label %18

18:                                               ; preds = %22, %2
  %19 = phi i8* [ null, %2 ], [ %23, %22 ]
  %20 = phi i1 [ false, %2 ], [ %24, %22 ]
  %21 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #38
  switch i32 %21, label %62 [
    i32 -1, label %63
    i32 97, label %25
    i32 99, label %28
    i32 100, label %29
    i32 102, label %22
    i32 104, label %31
    i32 109, label %32
    i32 114, label %35
    i32 116, label %37
    i32 256, label %45
    i32 -2, label %53
    i32 -3, label %54
  ]

22:                                               ; preds = %18, %45, %44, %35, %32, %31, %29, %28, %25
  %23 = phi i8* [ %19, %45 ], [ %19, %44 ], [ %19, %35 ], [ %19, %32 ], [ %19, %31 ], [ %30, %29 ], [ %19, %28 ], [ %19, %25 ], [ %19, %18 ]
  %24 = phi i1 [ %20, %45 ], [ true, %44 ], [ %20, %35 ], [ %20, %32 ], [ %20, %31 ], [ %20, %29 ], [ %20, %28 ], [ %20, %25 ], [ %20, %18 ]
  br label %18, !llvm.loop !28

25:                                               ; preds = %18
  %26 = load i32, i32* @change_times, align 4, !tbaa !21
  %27 = or i32 %26, 1
  store i32 %27, i32* @change_times, align 4, !tbaa !21
  br label %22

28:                                               ; preds = %18
  store i1 true, i1* @no_create, align 1
  br label %22

29:                                               ; preds = %18
  %30 = load i8*, i8** @optarg, align 8, !tbaa !12
  br label %22

31:                                               ; preds = %18
  store i1 true, i1* @no_dereference, align 1
  br label %22

32:                                               ; preds = %18
  %33 = load i32, i32* @change_times, align 4, !tbaa !21
  %34 = or i32 %33, 2
  store i32 %34, i32* @change_times, align 4, !tbaa !21
  br label %22

35:                                               ; preds = %18
  store i1 true, i1* @use_ref, align 1
  %36 = load i8*, i8** @optarg, align 8, !tbaa !12
  store i8* %36, i8** @ref_file, align 8, !tbaa !12
  br label %22

37:                                               ; preds = %18
  %38 = load i8*, i8** @optarg, align 8, !tbaa !12
  %39 = tail call i1 @posixtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), i8* noundef %38, i32 noundef 6) #38
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #38
  %42 = load i8*, i8** @optarg, align 8, !tbaa !12
  %43 = tail call i8* @quote(i8* noundef %42) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %41, i8* noundef %43) #38
  unreachable

44:                                               ; preds = %37
  store i64 0, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8, !tbaa !29
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false), !tbaa.struct !32
  br label %22

45:                                               ; preds = %18
  %46 = load i8*, i8** @optarg, align 8, !tbaa !12
  %47 = load void ()*, void ()** @argmatch_die, align 8, !tbaa !12
  %48 = tail call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* noundef %46, i8** noundef getelementptr inbounds ([6 x i8*], [6 x i8*]* @time_args, i64 0, i64 0), i8* noundef bitcast ([5 x i32]* @time_masks to i8*), i64 noundef 4, void ()* noundef %47, i1 noundef true) #38
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* @time_masks, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !21
  %51 = load i32, i32* @change_times, align 4, !tbaa !21
  %52 = or i32 %51, %50
  store i32 %52, i32* @change_times, align 4, !tbaa !21
  br label %22

53:                                               ; preds = %18
  tail call void @usage(i32 noundef 0) #42
  unreachable

54:                                               ; preds = %18
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %56 = load i8*, i8** @Version, align 8, !tbaa !12
  %57 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #38
  %58 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #38
  %59 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #38
  %60 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0)) #38
  %61 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #38
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef %56, i8* noundef %57, i8* noundef %58, i8* noundef %59, i8* noundef %60, i8* noundef %61, i8* noundef null) #38
  tail call void @exit(i32 noundef 0) #40
  unreachable

62:                                               ; preds = %18
  tail call void @usage(i32 noundef 1) #42
  unreachable

63:                                               ; preds = %18
  %64 = load i32, i32* @change_times, align 4, !tbaa !21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 3, i32* @change_times, align 4, !tbaa !21
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i1, i1* @use_ref, align 1
  br i1 %20, label %69, label %74

69:                                               ; preds = %67
  %70 = icmp ne i8* %19, null
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %232

72:                                               ; preds = %69
  %73 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %73) #38
  tail call void @usage(i32 noundef 1) #42
  unreachable

74:                                               ; preds = %67
  br i1 %68, label %75, label %141

75:                                               ; preds = %74
  %76 = bitcast %struct.stat* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %76) #38
  %77 = load i1, i1* @no_dereference, align 1
  %78 = load i8*, i8** @ref_file, align 8, !tbaa !12
  br i1 %77, label %79, label %82

79:                                               ; preds = %75
  %80 = call i32 @lstat(i8* noundef %78, %struct.stat* noundef nonnull %12) #38
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %85

82:                                               ; preds = %75
  %83 = call i32 @stat(i8* noundef %78, %struct.stat* noundef nonnull %12) #38
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82, %79
  %86 = tail call i32* @__errno_location() #41
  %87 = load i32, i32* %86, align 4, !tbaa !21
  %88 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #38
  %89 = load i8*, i8** @ref_file, align 8, !tbaa !12
  %90 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %89) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %87, i8* noundef %88, i8* noundef %90) #38
  unreachable

91:                                               ; preds = %82, %79
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 12, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa.struct !32
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 12, i32 1
  store i64 %93, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), align 8, !tbaa.struct !32
  %95 = bitcast i64* %94 to <2 x i64>*
  %96 = load <2 x i64>, <2 x i64>* %95, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 13, i32 1
  %98 = load i64, i64* %97, align 8, !tbaa.struct !34
  store <2 x i64> %96, <2 x i64>* bitcast (i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1) to <2 x i64>*), align 8
  store i64 %98, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8, !tbaa.struct !34
  %99 = icmp eq i8* %19, null
  br i1 %99, label %140, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* @change_times, align 4, !tbaa !21
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105)
  %106 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %106)
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 0
  store i64 %93, i64* %107, align 8
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1
  %109 = extractelement <2 x i64> %96, i64 0
  store i64 %109, i64* %108, align 8
  %110 = call i1 @parse_datetime(%struct.timespec* noundef nonnull %10, i8* noundef nonnull %19, %struct.timespec* noundef nonnull %11) #38
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #38
  %113 = call i8* @quote(i8* noundef nonnull %19) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %112, i8* noundef %113) #38
  unreachable

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i64 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i64 0, i32 1
  %118 = load i64, i64* %117, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %106)
  store i64 %116, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), align 8, !tbaa.struct !32
  store i64 %118, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8, !tbaa.struct !34
  %119 = load i32, i32* @change_times, align 4, !tbaa !21
  br label %120

120:                                              ; preds = %114, %100
  %121 = phi i32 [ %119, %114 ], [ %101, %100 ]
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 0), align 8
  %126 = load i64, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8
  %127 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %127)
  %128 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %128)
  %129 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i64 0, i32 0
  store i64 %125, i64* %129, align 8
  %130 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i64 0, i32 1
  store i64 %126, i64* %130, align 8
  %131 = call i1 @parse_datetime(%struct.timespec* noundef nonnull %8, i8* noundef nonnull %19, %struct.timespec* noundef nonnull %9) #38
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #38
  %134 = call i8* @quote(i8* noundef nonnull %19) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %133, i8* noundef %134) #38
  unreachable

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 1
  %139 = load i64, i64* %138, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %127)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %128)
  store i64 %137, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 0), align 8, !tbaa.struct !32
  store i64 %139, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8, !tbaa.struct !34
  br label %140

140:                                              ; preds = %120, %135, %91
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %76) #38
  br label %232

141:                                              ; preds = %74
  %142 = icmp eq i8* %19, null
  br i1 %142, label %184, label %143

143:                                              ; preds = %141
  %144 = tail call [2 x i64] @current_timespec() #38
  %145 = extractvalue [2 x i64] %144, 0
  %146 = extractvalue [2 x i64] %144, 1
  %147 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %147)
  %148 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %148)
  %149 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 0
  store i64 %145, i64* %149, align 8
  %150 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1
  store i64 %146, i64* %150, align 8
  %151 = call i1 @parse_datetime(%struct.timespec* noundef nonnull %6, i8* noundef nonnull %19, %struct.timespec* noundef nonnull %7) #38
  br i1 %151, label %155, label %152

152:                                              ; preds = %143
  %153 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #38
  %154 = call i8* @quote(i8* noundef nonnull %19) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %153, i8* noundef %154) #38
  unreachable

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 1
  %159 = load i64, i64* %158, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %147)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %148)
  store i64 %157, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), align 8, !tbaa.struct !32
  store i64 %159, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8, !tbaa.struct !34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false), !tbaa.struct !32
  %160 = load i32, i32* @change_times, align 4, !tbaa !21
  %161 = icmp eq i32 %160, 3
  %162 = icmp eq i64 %157, %145
  %163 = select i1 %161, i1 %162, i1 false
  %164 = icmp eq i64 %159, %146
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %166, label %232

166:                                              ; preds = %155
  %167 = xor i64 %145, 1
  %168 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %168)
  %169 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %169)
  %170 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  store i64 %146, i64* %171, align 8
  %172 = call i1 @parse_datetime(%struct.timespec* noundef nonnull %4, i8* noundef nonnull %19, %struct.timespec* noundef nonnull %5) #38
  br i1 %172, label %176, label %173

173:                                              ; preds = %166
  %174 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #38
  %175 = call i8* @quote(i8* noundef nonnull %19) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %174, i8* noundef %175) #38
  unreachable

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0, i32 1
  %180 = load i64, i64* %179, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %168)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %169)
  %181 = icmp ne i64 %178, %167
  %182 = icmp ne i64 %180, %146
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %232, label %184

184:                                              ; preds = %141, %176
  %185 = load i32, i32* @optind, align 4, !tbaa !21
  %186 = sub nsw i32 %0, %185
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %227

188:                                              ; preds = %184
  %189 = call i32 @posix2_version() #38
  %190 = icmp slt i32 %189, 200112
  br i1 %190, label %191, label %227

191:                                              ; preds = %188
  %192 = load i32, i32* @optind, align 4, !tbaa !21
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %1, i64 %193
  %195 = load i8*, i8** %194, align 8, !tbaa !12
  %196 = call i1 @posixtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0), i8* noundef %195, i32 noundef 9) #38
  br i1 %196, label %197, label %227

197:                                              ; preds = %191
  store i64 0, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8, !tbaa !29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x %struct.timespec]* @newtime to i8*), i64 16, i1 false), !tbaa.struct !32
  %198 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #38
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %224

200:                                              ; preds = %197
  %201 = call %struct.tm* @localtime(i64* noundef getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 0)) #38
  %202 = icmp eq %struct.tm* %201, null
  br i1 %202, label %224, label %203

203:                                              ; preds = %200
  %204 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #38
  %205 = load i32, i32* @optind, align 4, !tbaa !21
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %1, i64 %206
  %208 = load i8*, i8** %207, align 8, !tbaa !12
  %209 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 5
  %210 = load i32, i32* %209, align 4, !tbaa !35
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, 1900
  %213 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 4
  %214 = load i32, i32* %213, align 8, !tbaa !37
  %215 = add nsw i32 %214, 1
  %216 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 3
  %217 = load i32, i32* %216, align 4, !tbaa !38
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 2
  %219 = load i32, i32* %218, align 8, !tbaa !39
  %220 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 1
  %221 = load i32, i32* %220, align 4, !tbaa !40
  %222 = getelementptr inbounds %struct.tm, %struct.tm* %201, i64 0, i32 0
  %223 = load i32, i32* %222, align 8, !tbaa !41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %204, i8* noundef %208, i64 noundef %212, i32 noundef %215, i32 noundef %217, i32 noundef %219, i32 noundef %221, i32 noundef %223) #38
  br label %224

224:                                              ; preds = %200, %203, %197
  %225 = load i32, i32* @optind, align 4, !tbaa !21
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* @optind, align 4, !tbaa !21
  br label %232

227:                                              ; preds = %184, %188, %191
  %228 = load i32, i32* @change_times, align 4, !tbaa !21
  %229 = icmp eq i32 %228, 3
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i1 true, i1* @amtime_now, align 1
  br label %232

231:                                              ; preds = %227
  store i64 1073741823, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), align 8, !tbaa !29
  store i64 1073741823, i64* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), align 8, !tbaa !29
  br label %232

232:                                              ; preds = %69, %140, %155, %176, %224, %230, %231
  %233 = load i32, i32* @optind, align 4, !tbaa !21
  %234 = icmp eq i32 %233, %0
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = icmp slt i32 %233, %0
  br i1 %236, label %237, label %326

237:                                              ; preds = %235
  %238 = bitcast %struct.stat* %3 to i8*
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 2
  br label %242

240:                                              ; preds = %232
  %241 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %241) #38
  call void @usage(i32 noundef 1) #42
  unreachable

242:                                              ; preds = %237, %317
  %243 = phi i32 [ %233, %237 ], [ %321, %317 ]
  %244 = phi i1 [ true, %237 ], [ %319, %317 ]
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8*, i8** %1, i64 %245
  %247 = load i8*, i8** %246, align 8, !tbaa !12
  %248 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %247, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0)) #39
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %242
  %251 = load i1, i1* @no_create, align 1
  br i1 %251, label %260, label %252

252:                                              ; preds = %250
  %253 = load i1, i1* @no_dereference, align 1
  br i1 %253, label %260, label %254

254:                                              ; preds = %252
  %255 = call i32 @fd_reopen(i32 noundef 0, i8* noundef %247, i32 noundef 2369, i32 noundef 438) #38
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = tail call i32* @__errno_location() #41
  %259 = load i32, i32* %258, align 4, !tbaa !21
  br label %260

260:                                              ; preds = %257, %254, %252, %250, %242
  %261 = phi i32 [ 0, %250 ], [ 0, %252 ], [ %259, %257 ], [ 0, %254 ], [ 0, %242 ]
  %262 = phi i32 [ -1, %250 ], [ -1, %252 ], [ %255, %257 ], [ %255, %254 ], [ 1, %242 ]
  %263 = load i32, i32* @change_times, align 4, !tbaa !21
  switch i32 %263, label %264 [
    i32 3, label %268
    i32 2, label %266
    i32 1, label %265
  ]

264:                                              ; preds = %260
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.touch, i64 0, i64 0)) #40
  unreachable

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %265, %260
  %267 = phi i64* [ getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 1, i32 1), %265 ], [ getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0, i32 1), %260 ]
  store i64 1073741822, i64* %267, align 8, !tbaa !29
  br label %268

268:                                              ; preds = %266, %260
  %269 = load i1, i1* @amtime_now, align 1
  %270 = select i1 %269, %struct.timespec* null, %struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @newtime, i64 0, i64 0)
  %271 = icmp eq i32 %262, 1
  %272 = select i1 %271, i8* null, i8* %247
  %273 = load i1, i1* @no_dereference, align 1
  %274 = select i1 %273, i32 256, i32 0
  %275 = call i32 @fdutimensat(i32 noundef %262, i32 noundef -100, i8* noundef %272, %struct.timespec* noundef %270, i32 noundef %274) #38
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %268
  %278 = tail call i32* @__errno_location() #41
  %279 = load i32, i32* %278, align 4, !tbaa !21
  br label %280

280:                                              ; preds = %277, %268
  %281 = phi i32 [ %279, %277 ], [ 0, %268 ]
  %282 = icmp eq i32 %262, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = call i32 @close(i32 noundef 0) #38
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %283
  %287 = tail call i32* @__errno_location() #41
  %288 = load i32, i32* %287, align 4, !tbaa !21
  %289 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i32 noundef 5) #38
  %290 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %247) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %288, i8* noundef %289, i8* noundef %290) #38
  br label %317

291:                                              ; preds = %280
  %292 = icmp eq i32 %281, 9
  %293 = select i1 %271, i1 %292, i1 false
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = load i1, i1* @no_create, align 1
  br i1 %295, label %317, label %298

296:                                              ; preds = %291, %283
  %297 = icmp eq i32 %281, 0
  br i1 %297, label %317, label %298

298:                                              ; preds = %296, %294
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %238) #38
  switch i32 %261, label %310 [
    i32 21, label %306
    i32 0, label %306
    i32 22, label %299
    i32 17, label %299
  ]

299:                                              ; preds = %298, %298
  %300 = call i32 @stat(i8* noundef %247, %struct.stat* noundef nonnull %3) #38
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = load i32, i32* %239, align 8, !tbaa !42
  %304 = and i32 %303, 61440
  %305 = icmp eq i32 %304, 16384
  br i1 %305, label %306, label %310

306:                                              ; preds = %302, %298, %298
  %307 = load i1, i1* @no_create, align 1
  %308 = icmp eq i32 %281, 2
  %309 = select i1 %307, i1 %308, i1 false
  br i1 %309, label %315, label %310

310:                                              ; preds = %306, %302, %299, %298
  %311 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i64 0, i64 0), %298 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i64 0, i64 0), %302 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i64 0, i64 0), %299 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0), %306 ]
  %312 = phi i32 [ %261, %298 ], [ %261, %302 ], [ %261, %299 ], [ %281, %306 ]
  %313 = call i8* @dcgettext(i8* noundef null, i8* noundef nonnull %311, i32 noundef 5) #38
  %314 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %247) #38
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %312, i8* noundef %313, i8* noundef %314) #38
  br label %315

315:                                              ; preds = %310, %306
  %316 = phi i1 [ true, %306 ], [ false, %310 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %238) #38
  br label %317

317:                                              ; preds = %286, %294, %296, %315
  %318 = phi i1 [ false, %286 ], [ %316, %315 ], [ true, %294 ], [ true, %296 ]
  %319 = and i1 %244, %318
  %320 = load i32, i32* @optind, align 4, !tbaa !21
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* @optind, align 4, !tbaa !21
  %322 = icmp slt i32 %321, %0
  br i1 %322, label %242, label %323, !llvm.loop !44

323:                                              ; preds = %317
  %324 = xor i1 %319, true
  %325 = zext i1 %324 to i32
  br label %326

326:                                              ; preds = %323, %235
  %327 = phi i32 [ 0, %235 ], [ %325, %323 ]
  ret i32 %327
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #12 {
  tail call void @usage(i32 noundef 1) #38
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #39
  %6 = load i8*, i8** %1, align 8, !tbaa !12
  %7 = icmp eq i8* %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %8, %25
  %11 = phi i8* [ %30, %25 ], [ %6, %8 ]
  %12 = phi i64 [ %28, %25 ], [ 0, %8 ]
  %13 = phi i1 [ %27, %25 ], [ false, %8 ]
  %14 = phi i64 [ %26, %25 ], [ -1, %8 ]
  %15 = tail call i32 @strncmp(i8* noundef nonnull %11, i8* noundef %0, i64 noundef %5) #39
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* noundef nonnull %11) #39
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1
  %22 = select i1 %21, i64 %12, i64 %14
  %23 = xor i1 %21, true
  %24 = select i1 %23, i1 true, i1 %13
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i64 [ %14, %10 ], [ %22, %20 ]
  %27 = phi i1 [ %13, %10 ], [ %24, %20 ]
  %28 = add i64 %12, 1
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28
  %30 = load i8*, i8** %29, align 8, !tbaa !12
  %31 = icmp eq i8* %30, null
  br i1 %31, label %59, label %10, !llvm.loop !45

32:                                               ; preds = %8, %52
  %33 = phi i8* [ %57, %52 ], [ %6, %8 ]
  %34 = phi i64 [ %55, %52 ], [ 0, %8 ]
  %35 = phi i1 [ %54, %52 ], [ false, %8 ]
  %36 = phi i64 [ %53, %52 ], [ -1, %8 ]
  %37 = tail call i32 @strncmp(i8* noundef nonnull %33, i8* noundef %0, i64 noundef %5) #39
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = tail call i64 @strlen(i8* noundef nonnull %33) #39
  %41 = icmp eq i64 %40, %5
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = icmp eq i64 %36, -1
  br i1 %43, label %52, label %44

44:                                               ; preds = %42
  %45 = mul i64 %36, %3
  %46 = getelementptr inbounds i8, i8* %2, i64 %45
  %47 = mul i64 %34, %3
  %48 = getelementptr inbounds i8, i8* %2, i64 %47
  %49 = tail call i32 @bcmp(i8* nonnull %46, i8* nonnull %48, i64 %3) #38
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %50, i1 true, i1 %35
  br label %52

52:                                               ; preds = %44, %42, %32
  %53 = phi i64 [ %36, %32 ], [ %34, %42 ], [ %36, %44 ]
  %54 = phi i1 [ %35, %32 ], [ %35, %42 ], [ %51, %44 ]
  %55 = add i64 %34, 1
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %32, !llvm.loop !45

59:                                               ; preds = %52, %25
  %60 = phi i64 [ %26, %25 ], [ %53, %52 ]
  %61 = phi i1 [ %27, %25 ], [ %54, %52 ]
  %62 = select i1 %61, i64 -2, i64 %60
  br label %63

63:                                               ; preds = %39, %17, %59, %4
  %64 = phi i64 [ -1, %4 ], [ %62, %59 ], [ %12, %17 ], [ %34, %39 ]
  ret i64 %64
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load i8*, i8** %1, align 8, !tbaa !12
  %4 = icmp eq i8* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %10
  %6 = phi i8* [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #39
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add i64 %7, 1
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %5, !llvm.loop !46

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.41, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.42, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef %5, i32 noundef 5) #38
  %7 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #38
  %8 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %6, i8* noundef %7, i8* noundef %8) #38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(i8** nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.44, i64 0, i64 0), i32 noundef 5) #38
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i32 @fputs_unlocked(i8* noundef %4, %struct._IO_FILE* noundef %5)
  %7 = load i8*, i8** %0, align 8, !tbaa !12
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %41, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 5
  %12 = load i8*, i8** %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 6
  %14 = load i8*, i8** %13, align 8, !tbaa !49
  %15 = icmp ult i8* %12, %14
  br i1 %15, label %18, label %16, !prof !50

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %10, i32 noundef 10) #38
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %19, i8** %11, align 8, !tbaa !47
  store i8 10, i8* %12, align 1, !tbaa !23
  br label %20

20:                                               ; preds = %16, %18
  ret void

21:                                               ; preds = %3, %41
  %22 = phi i8* [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi i8* [ %42, %41 ], [ null, %3 ]
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = mul i64 %23, %2
  %28 = getelementptr inbounds i8, i8* %1, i64 %27
  %29 = tail call i32 @bcmp(i8* %24, i8* %28, i64 %2) #38
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ]
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = tail call i8* @quote(i8* noundef nonnull %22) #38
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.45, i64 0, i64 0), i8* noundef %34) #38
  %36 = getelementptr inbounds i8, i8* %1, i64 %32
  br label %41

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %39 = tail call i8* @quote(i8* noundef nonnull %22) #38
  %40 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.46, i64 0, i64 0), i8* noundef %39) #38
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi i8* [ %36, %31 ], [ %24, %37 ]
  %43 = add i64 %23, 1
  %44 = getelementptr inbounds i8*, i8** %0, i64 %43
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = icmp eq i8* %45, null
  br i1 %46, label %9, label %21, !llvm.loop !51
}

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** nocapture noundef readonly %2, i8* noundef readonly %3, i64 noundef %4, void ()* nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #12 {
  br i1 %6, label %8, label %10

8:                                                ; preds = %7
  %9 = tail call i64 @argmatch(i8* noundef %1, i8** noundef %2, i8* noundef %3, i64 noundef %4) #39
  br label %23

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !tbaa !12
  %12 = icmp eq i8* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10, %18
  %14 = phi i8* [ %21, %18 ], [ %11, %10 ]
  %15 = phi i64 [ %19, %18 ], [ 0, %10 ]
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %1) #39
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = add i64 %15, 1
  %20 = getelementptr inbounds i8*, i8** %2, i64 %19
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %13, !llvm.loop !52

23:                                               ; preds = %13, %8
  %24 = phi i64 [ %9, %8 ], [ %15, %13 ]
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = icmp eq i64 %24, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %10, %26
  br label %29

29:                                               ; preds = %26, %28
  %30 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.41, i64 0, i64 0), %28 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.42, i64 0, i64 0), %26 ]
  %31 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef nonnull %30, i32 noundef 5) #38
  %32 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #38
  %33 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %31, i8* noundef %32, i8* noundef %33) #38
  tail call void @argmatch_valid(i8** noundef %2, i8* noundef %3, i64 noundef %4)
  tail call void %5() #38
  br label %34

34:                                               ; preds = %23, %29
  %35 = phi i64 [ -1, %29 ], [ %24, %23 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = load i8*, i8** %1, align 8, !tbaa !12
  %6 = icmp eq i8* %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3) #38
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15, !llvm.loop !53

15:                                               ; preds = %10
  %16 = mul i64 %11, %3
  %17 = getelementptr inbounds i8, i8* %2, i64 %16
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3) #38
  %19 = icmp eq i32 %18, 0
  %20 = add i64 %11, 1
  br i1 %19, label %21, label %10, !llvm.loop !53

21:                                               ; preds = %15, %10, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %13, %15 ]
  ret i8* %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !54, !range !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #41
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.87, i64 0, i64 0), i32 noundef 5) #38
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #41
  %16 = load i32, i32* %15, align 4, !tbaa !21
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.88, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #38
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.89, i64 0, i64 0), i8* noundef %12) #38
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %21) #40
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #38
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #40
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #38
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #39
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i8* noundef %11) #38
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #38
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !57
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #38
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #38, !noalias !58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #38
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #38, !noalias !58
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !21
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #38
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #38
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.92, i64 0, i64 0), i32 noundef 5) #38
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.93, i64 0, i64 0), i8* noundef %21) #38
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #38
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !49
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !50

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #38
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !47
  store i8 10, i8* %27, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #38
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #40
  unreachable

40:                                               ; preds = %35
  ret void
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #38
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !57
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #43
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #38
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #38
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 {
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
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #39
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
  tail call void %25() #38
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #39
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.96, i64 0, i64 0), i8* noundef %30) #38
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.98, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #38
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #38
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !57
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #38
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #38
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !57
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #43
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #38
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, i8* nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = tail call i32 (i8*, i32, ...) @open(i8* noundef nonnull %1, i32 noundef %2, i32 noundef %3) #38
  %6 = icmp eq i32 %5, %0
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #38
  %11 = tail call i32* @__errno_location() #41
  %12 = load i32, i32* %11, align 4, !tbaa !21
  %13 = tail call i32 @close(i32 noundef %5) #38
  store i32 %12, i32* %11, align 4, !tbaa !21
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15
}

; Function Attrs: nofree
declare noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdutimensat(i32 noundef %0, i32 noundef %1, i8* noundef %2, %struct.timespec* noundef %3, i32 noundef %4) local_unnamed_addr #12 {
  %6 = icmp sgt i32 %0, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @futimens(i32 noundef %0, %struct.timespec* noundef %3) #38
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ 1, %5 ]
  %11 = icmp eq i8* %2, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = icmp slt i32 %0, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %10, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = tail call i32* @__errno_location() #41
  %18 = load i32, i32* %17, align 4, !tbaa !21
  %19 = icmp eq i32 %18, 38
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %12
  %21 = tail call i32 @utimensat(i32 noundef %1, i8* noundef nonnull %2, %struct.timespec* noundef %3, i32 noundef %4) #38
  br label %22

22:                                               ; preds = %20, %14, %9
  %23 = phi i32 [ %21, %20 ], [ %10, %14 ], [ %10, %9 ]
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #41
  store i32 9, i32* %26, align 4, !tbaa !21
  br label %27

27:                                               ; preds = %16, %25, %22
  %28 = phi i32 [ -1, %25 ], [ %23, %22 ], [ -1, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, i8* noundef, %struct.timespec* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define dso_local void @gettime(%struct.timespec* noundef nonnull %0) local_unnamed_addr #12 {
  %2 = tail call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef nonnull %0) #38
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local [2 x i64] @current_timespec() local_unnamed_addr #12 {
  %1 = alloca %struct.timespec, align 8
  %2 = call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef nonnull %1) #38
  %3 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = insertvalue [2 x i64] poison, i64 %4, 0
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue [2 x i64] %5, i64 %7, 1
  ret [2 x i64] %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yyparse(%struct.parser_control* noundef %0) local_unnamed_addr #12 {
  %2 = alloca [20 x i8], align 4
  %3 = alloca [20 x i8], align 4
  %4 = alloca [20 x %union.YYSTYPE], align 8
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #38
  %6 = bitcast [20 x %union.YYSTYPE]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1120, i8* nonnull %6) #38
  %7 = getelementptr inbounds [20 x %union.YYSTYPE], [20 x %union.YYSTYPE]* %4, i64 0, i64 0
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 19
  store i8 0, i8* %5, align 4, !tbaa !23
  %9 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 0
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 19
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 3
  %13 = bitcast [20 x i8]* %2 to i32*
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 1
  %15 = getelementptr %struct.parser_control, %struct.parser_control* %0, i64 0, i32 24
  %16 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 23
  %17 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 2
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 14
  %20 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 20
  %21 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 22
  %22 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6
  %23 = bitcast %struct.textint* %22 to i64*
  %24 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 1
  %25 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 9
  %26 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 10
  %27 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 11, i32 0
  %28 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 5
  %29 = bitcast i64* %27 to i8*
  %30 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 8
  %31 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 6
  %33 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 5
  %34 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 4
  %35 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 3
  %36 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 2
  %37 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 1
  %38 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 12, i32 0
  %39 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 6, i32 0
  %40 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 2
  %42 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 31
  %43 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 4
  %44 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 3
  %45 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 19
  %46 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 21
  %47 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 11, i32 1
  %48 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 16
  %49 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 17
  %50 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 18
  %51 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 11
  %52 = bitcast %struct.timespec* %51 to i8*
  %53 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 13
  %54 = bitcast i64* %27 to i8*
  %55 = bitcast i64* %26 to i8*
  %56 = bitcast i64* %27 to i8*
  %57 = bitcast i64* %26 to i8*
  br label %71

58:                                               ; preds = %1826, %767
  %59 = phi i64 [ %788, %1826 ], [ %749, %767 ]
  %60 = phi i64 [ %789, %1826 ], [ %748, %767 ]
  %61 = phi i8 [ %790, %1826 ], [ %747, %767 ]
  %62 = phi i56 [ %791, %1826 ], [ %746, %767 ]
  %63 = phi %union.YYSTYPE* [ %1796, %1826 ], [ %75, %767 ]
  %64 = phi i8* [ %1797, %1826 ], [ %74, %767 ]
  %65 = phi i32 [ %1829, %1826 ], [ %763, %767 ]
  %66 = phi i32 [ %793, %1826 ], [ -2, %767 ]
  %67 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %63, i64 1
  %68 = getelementptr inbounds i8, i8* %64, i64 1
  %69 = trunc i32 %65 to i8
  store i8 %69, i8* %68, align 1, !tbaa !23
  %70 = icmp ugt i8* %8, %68
  br i1 %70, label %71, label %1830

71:                                               ; preds = %1, %58
  %72 = phi i32 [ -2, %1 ], [ %66, %58 ]
  %73 = phi i32 [ 0, %1 ], [ %65, %58 ]
  %74 = phi i8* [ %5, %1 ], [ %68, %58 ]
  %75 = phi %union.YYSTYPE* [ %7, %1 ], [ %67, %58 ]
  %76 = phi i56 [ 0, %1 ], [ %62, %58 ]
  %77 = phi i8 [ 0, %1 ], [ %61, %58 ]
  %78 = phi i64 [ 0, %1 ], [ %60, %58 ]
  %79 = phi i64 [ 0, %1 ], [ %59, %58 ]
  %80 = icmp eq i32 %73, 12
  br i1 %80, label %1830, label %81

81:                                               ; preds = %71
  %82 = sext i32 %73 to i64
  %83 = getelementptr inbounds [121 x i8], [121 x i8]* @yypact, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !23
  %85 = sext i8 %84 to i32
  %86 = icmp eq i8 %84, -93
  br i1 %86, label %777, label %87

87:                                               ; preds = %81
  %88 = icmp eq i32 %72, -2
  br i1 %88, label %89, label %726

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8, !tbaa !62
  br label %91

91:                                               ; preds = %96, %89
  %92 = phi i8* [ %90, %89 ], [ %97, %96 ]
  %93 = load i8, i8* %92, align 1, !tbaa !23
  switch i8 %93, label %98 [
    i8 32, label %94
    i8 9, label %94
    i8 10, label %94
    i8 11, label %94
    i8 12, label %94
    i8 13, label %94
  ]

94:                                               ; preds = %91, %91, %91, %91, %91, %91
  %95 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %95, i8** %9, align 8, !tbaa !62
  br label %96

96:                                               ; preds = %723, %94, %110
  %97 = phi i8* [ %95, %94 ], [ %107, %110 ], [ %717, %723 ]
  br label %91

98:                                               ; preds = %91
  %99 = zext i8 %93 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  switch i8 %93, label %710 [
    i8 45, label %104
    i8 43, label %104
    i8 97, label %311
    i8 98, label %311
    i8 99, label %311
    i8 100, label %311
    i8 101, label %311
    i8 102, label %311
    i8 103, label %311
    i8 104, label %311
    i8 105, label %311
    i8 106, label %311
    i8 107, label %311
    i8 108, label %311
    i8 109, label %311
    i8 110, label %311
    i8 111, label %311
    i8 112, label %311
    i8 113, label %311
    i8 114, label %311
    i8 115, label %311
    i8 116, label %311
    i8 117, label %311
    i8 118, label %311
    i8 119, label %311
    i8 120, label %311
    i8 121, label %311
    i8 122, label %311
    i8 65, label %311
    i8 66, label %311
    i8 67, label %311
    i8 68, label %311
    i8 69, label %311
    i8 70, label %311
    i8 71, label %311
    i8 72, label %311
    i8 73, label %311
    i8 74, label %311
    i8 75, label %311
    i8 76, label %311
    i8 77, label %311
    i8 78, label %311
    i8 79, label %311
    i8 80, label %311
    i8 81, label %311
    i8 82, label %311
    i8 83, label %311
    i8 84, label %311
    i8 85, label %311
    i8 86, label %311
    i8 87, label %311
    i8 88, label %311
    i8 89, label %311
    i8 90, label %311
    i8 40, label %714
  ]

103:                                              ; preds = %98
  switch i8 %93, label %117 [
    i8 45, label %104
    i8 43, label %104
  ]

104:                                              ; preds = %103, %103, %102, %102
  br label %105

105:                                              ; preds = %109, %104
  %106 = phi i8* [ %92, %104 ], [ %107, %109 ]
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %9, align 8, !tbaa !62
  %108 = load i8, i8* %107, align 1, !tbaa !23
  switch i8 %108, label %110 [
    i8 32, label %109
    i8 9, label %109
    i8 10, label %109
    i8 11, label %109
    i8 12, label %109
    i8 13, label %109
  ]

109:                                              ; preds = %105, %105, %105, %105, %105, %105
  br label %105, !llvm.loop !66

110:                                              ; preds = %105
  %111 = zext i8 %108 to i32
  %112 = add nsw i32 %111, -48
  %113 = icmp ult i32 %112, 10
  br i1 %113, label %114, label %96

114:                                              ; preds = %110
  %115 = icmp eq i8 %93, 45
  %116 = select i1 %115, i32 -1, i32 1
  br label %117

117:                                              ; preds = %103, %114
  %118 = phi i32 [ %116, %114 ], [ 0, %103 ]
  %119 = phi i8* [ %107, %114 ], [ %92, %103 ]
  %120 = phi i8 [ %108, %114 ], [ %93, %103 ]
  %121 = icmp slt i32 %118, 0
  br label %122

122:                                              ; preds = %141, %117
  %123 = phi i64 [ 0, %117 ], [ %142, %141 ]
  %124 = phi i8* [ %119, %117 ], [ %143, %141 ]
  %125 = phi i8 [ %120, %117 ], [ %144, %141 ]
  %126 = icmp slt i64 %123, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = add i64 %123, -1
  %129 = icmp ult i64 %128, -922337203685477581
  br i1 %129, label %735, label %132

130:                                              ; preds = %122
  %131 = icmp ugt i64 %123, 922337203685477580
  br i1 %131, label %735, label %132

132:                                              ; preds = %130, %127
  %133 = mul nsw i64 %123, 10
  %134 = zext i8 %125 to i32
  %135 = sub nsw i32 48, %134
  %136 = add nsw i32 %134, -48
  %137 = select i1 %121, i32 %135, i32 %136
  %138 = sext i32 %137 to i64
  %139 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %133, i64 %138) #38
  %140 = extractvalue { i64, i1 } %139, 1
  br i1 %140, label %735, label %141

141:                                              ; preds = %132
  %142 = extractvalue { i64, i1 } %139, 0
  %143 = getelementptr inbounds i8, i8* %124, i64 1
  %144 = load i8, i8* %143, align 1, !tbaa !23
  %145 = zext i8 %144 to i32
  %146 = add nsw i32 %145, -48
  %147 = icmp ult i32 %146, 10
  br i1 %147, label %122, label %148, !llvm.loop !67

148:                                              ; preds = %141
  %149 = extractvalue { i64, i1 } %139, 0
  %150 = and i8 %144, -3
  %151 = icmp eq i8 %150, 44
  br i1 %151, label %152, label %302

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, i8* %124, i64 2
  %154 = load i8, i8* %153, align 1, !tbaa !23
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %155, -48
  %157 = icmp ult i32 %156, 10
  br i1 %157, label %158, label %302

158:                                              ; preds = %152
  %159 = load i8, i8* %16, align 1, !tbaa !68, !range !56
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  store i8 0, i8* %16, align 1, !tbaa !68
  %162 = lshr i32 %118, 31
  %163 = trunc i32 %162 to i8
  %164 = ptrtoint i8* %143 to i64
  %165 = ptrtoint i8* %119 to i64
  %166 = sub i64 %164, %165
  store i8* %143, i8** %9, align 8, !tbaa !62
  br label %735

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, i8* %124, i64 3
  %169 = load i8, i8* %168, align 1, !tbaa !23
  %170 = icmp eq i8 %169, 46
  br i1 %170, label %302, label %171

171:                                              ; preds = %167
  %172 = zext i8 %169 to i32
  %173 = add nsw i32 %172, -48
  %174 = icmp ult i32 %173, 10
  %175 = zext i1 %174 to i64
  %176 = getelementptr i8, i8* %168, i64 %175
  %177 = load i8, i8* %176, align 1, !tbaa !23
  %178 = icmp eq i8 %177, 46
  br i1 %178, label %302, label %179

179:                                              ; preds = %171
  %180 = zext i8 %177 to i32
  %181 = add nsw i32 %180, -48
  %182 = icmp ult i32 %181, 10
  %183 = zext i1 %182 to i64
  %184 = getelementptr i8, i8* %176, i64 %183
  %185 = load i8, i8* %184, align 1, !tbaa !23
  %186 = icmp eq i8 %185, 46
  br i1 %186, label %302, label %187

187:                                              ; preds = %179
  %188 = zext i8 %185 to i32
  %189 = add nsw i32 %188, -48
  %190 = icmp ult i32 %189, 10
  %191 = zext i1 %190 to i64
  %192 = getelementptr i8, i8* %184, i64 %191
  %193 = load i8, i8* %192, align 1, !tbaa !23
  %194 = icmp eq i8 %193, 46
  br i1 %194, label %302, label %195

195:                                              ; preds = %187
  %196 = zext i8 %193 to i32
  %197 = add nsw i32 %196, -48
  %198 = icmp ult i32 %197, 10
  %199 = zext i1 %198 to i64
  %200 = getelementptr i8, i8* %192, i64 %199
  %201 = load i8, i8* %200, align 1, !tbaa !23
  %202 = icmp eq i8 %201, 46
  br i1 %202, label %302, label %203

203:                                              ; preds = %195
  %204 = zext i8 %201 to i32
  %205 = add nsw i32 %204, -48
  %206 = icmp ult i32 %205, 10
  %207 = zext i1 %206 to i64
  %208 = getelementptr i8, i8* %200, i64 %207
  %209 = load i8, i8* %208, align 1, !tbaa !23
  %210 = icmp eq i8 %209, 46
  br i1 %210, label %302, label %211

211:                                              ; preds = %203
  %212 = zext i8 %209 to i32
  %213 = add nsw i32 %212, -48
  %214 = icmp ult i32 %213, 10
  %215 = zext i1 %214 to i64
  %216 = getelementptr i8, i8* %208, i64 %215
  %217 = load i8, i8* %216, align 1, !tbaa !23
  %218 = icmp eq i8 %217, 46
  br i1 %218, label %302, label %219

219:                                              ; preds = %211
  %220 = zext i8 %217 to i32
  %221 = add nsw i32 %220, -48
  %222 = icmp ult i32 %221, 10
  %223 = zext i1 %222 to i64
  %224 = getelementptr i8, i8* %216, i64 %223
  %225 = load i8, i8* %224, align 1, !tbaa !23
  %226 = icmp eq i8 %225, 46
  br i1 %226, label %302, label %227

227:                                              ; preds = %219
  %228 = select i1 %222, i32 %221, i32 0
  %229 = select i1 %214, i32 %213, i32 0
  %230 = select i1 %206, i32 %205, i32 0
  %231 = select i1 %198, i32 %197, i32 0
  %232 = select i1 %190, i32 %189, i32 0
  %233 = select i1 %182, i32 %181, i32 0
  %234 = select i1 %174, i32 %173, i32 0
  %235 = mul nuw nsw i32 %156, 10
  %236 = add nuw nsw i32 %234, %235
  %237 = mul nuw nsw i32 %236, 10
  %238 = add nuw nsw i32 %233, %237
  %239 = mul nuw nsw i32 %238, 10
  %240 = add nuw nsw i32 %232, %239
  %241 = mul nuw nsw i32 %240, 10
  %242 = add nuw nsw i32 %231, %241
  %243 = mul nuw nsw i32 %242, 10
  %244 = add nuw nsw i32 %230, %243
  %245 = mul nuw nsw i32 %244, 10
  %246 = add nuw nsw i32 %229, %245
  %247 = mul nuw nsw i32 %246, 10
  %248 = add nuw nsw i32 %228, %247
  %249 = mul nuw nsw i32 %248, 10
  %250 = zext i8 %225 to i32
  %251 = add nsw i32 %250, -48
  %252 = icmp ult i32 %251, 10
  %253 = select i1 %252, i32 %251, i32 0
  %254 = add nuw nsw i32 %253, %249
  %255 = zext i1 %252 to i64
  %256 = getelementptr i8, i8* %224, i64 %255
  br i1 %121, label %257, label %274

257:                                              ; preds = %227
  %258 = load i8, i8* %256, align 1, !tbaa !23
  %259 = zext i8 %258 to i32
  %260 = add nsw i32 %259, -48
  %261 = icmp ult i32 %260, 10
  br i1 %261, label %262, label %274

262:                                              ; preds = %257, %268
  %263 = phi i8 [ %270, %268 ], [ %258, %257 ]
  %264 = phi i8* [ %269, %268 ], [ %256, %257 ]
  %265 = icmp eq i8 %263, 48
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = add nsw i32 %254, 1
  br label %274

268:                                              ; preds = %262
  %269 = getelementptr inbounds i8, i8* %264, i64 1
  %270 = load i8, i8* %269, align 1, !tbaa !23
  %271 = zext i8 %270 to i32
  %272 = add nsw i32 %271, -48
  %273 = icmp ult i32 %272, 10
  br i1 %273, label %262, label %274, !llvm.loop !69

274:                                              ; preds = %268, %266, %257, %227
  %275 = phi i32 [ %267, %266 ], [ %254, %227 ], [ %254, %257 ], [ %254, %268 ]
  %276 = phi i8* [ %264, %266 ], [ %256, %227 ], [ %256, %257 ], [ %269, %268 ]
  br label %277

277:                                              ; preds = %277, %274
  %278 = phi i8* [ %276, %274 ], [ %283, %277 ]
  %279 = load i8, i8* %278, align 1, !tbaa !23
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %280, -48
  %282 = icmp ult i32 %281, 10
  %283 = getelementptr inbounds i8, i8* %278, i64 1
  br i1 %282, label %277, label %284, !llvm.loop !70

284:                                              ; preds = %277
  %285 = icmp ne i32 %275, 0
  %286 = select i1 %121, i1 %285, i1 false
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %149, i64 -1) #38
  %289 = extractvalue { i64, i1 } %288, 1
  br i1 %289, label %735, label %290

290:                                              ; preds = %287
  %291 = extractvalue { i64, i1 } %288, 0
  %292 = sub nsw i32 1000000000, %275
  br label %293

293:                                              ; preds = %290, %284
  %294 = phi i64 [ %291, %290 ], [ %149, %284 ]
  %295 = phi i32 [ %292, %290 ], [ %275, %284 ]
  %296 = sext i32 %295 to i64
  %297 = trunc i64 %294 to i8
  %298 = lshr i64 %294, 8
  %299 = trunc i64 %298 to i56
  store i8* %278, i8** %9, align 8, !tbaa !62
  %300 = icmp eq i32 %118, 0
  %301 = select i1 %300, i32 278, i32 277
  br label %735

302:                                              ; preds = %148, %152, %167, %171, %179, %187, %195, %203, %211, %219
  %303 = phi i8 [ 1, %219 ], [ 1, %211 ], [ 1, %203 ], [ 1, %195 ], [ 1, %187 ], [ 1, %179 ], [ 1, %171 ], [ 1, %167 ], [ 0, %152 ], [ 0, %148 ]
  store i8 %303, i8* %16, align 1, !tbaa !68
  %304 = lshr i32 %118, 31
  %305 = trunc i32 %304 to i8
  %306 = ptrtoint i8* %143 to i64
  %307 = ptrtoint i8* %119 to i64
  %308 = sub i64 %306, %307
  store i8* %143, i8** %9, align 8, !tbaa !62
  %309 = icmp eq i32 %118, 0
  %310 = select i1 %309, i32 275, i32 274
  br label %735

311:                                              ; preds = %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102, %102
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #38
  br label %312

312:                                              ; preds = %320, %311
  %313 = phi i8* [ %92, %311 ], [ %323, %320 ]
  %314 = phi i8 [ %93, %311 ], [ %324, %320 ]
  %315 = phi i8* [ %10, %311 ], [ %322, %320 ]
  %316 = icmp ult i8* %315, %11
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = getelementptr inbounds i8, i8* %315, i64 1
  store i8 %314, i8* %315, align 1, !tbaa !23
  %319 = load i8*, i8** %9, align 8, !tbaa !62
  br label %320

320:                                              ; preds = %317, %312
  %321 = phi i8* [ %319, %317 ], [ %313, %312 ]
  %322 = phi i8* [ %318, %317 ], [ %315, %312 ]
  %323 = getelementptr inbounds i8, i8* %321, i64 1
  store i8* %323, i8** %9, align 8, !tbaa !62
  %324 = load i8, i8* %323, align 1, !tbaa !23
  %325 = add i8 %324, -65
  %326 = icmp ult i8 %325, 58
  %327 = zext i8 %325 to i58
  %328 = lshr i58 -4227858433, %327
  %329 = and i58 %328, 1
  %330 = icmp ne i58 %329, 0
  %331 = select i1 %326, i1 %330, i1 false
  %332 = icmp eq i8 %324, 46
  %333 = select i1 %331, i1 true, i1 %332
  br i1 %333, label %312, label %334, !llvm.loop !71

334:                                              ; preds = %320
  store i8 0, i8* %322, align 1, !tbaa !23
  %335 = load i8, i8* %10, align 4, !tbaa !23
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %340, %334
  %338 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49.109, i64 0, i64 0), i64 3) #38
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %697, label %351

340:                                              ; preds = %334, %340
  %341 = phi i8 [ %349, %340 ], [ %335, %334 ]
  %342 = phi i8* [ %348, %340 ], [ %10, %334 ]
  %343 = zext i8 %341 to i32
  %344 = add nsw i32 %343, -97
  %345 = icmp ult i32 %344, 26
  %346 = add i8 %341, -32
  %347 = select i1 %345, i8 %346, i8 %341
  store i8 %347, i8* %342, align 1, !tbaa !23
  %348 = getelementptr inbounds i8, i8* %342, i64 1
  %349 = load i8, i8* %348, align 1, !tbaa !23
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %337, label %340, !llvm.loop !72

351:                                              ; preds = %337
  %352 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50.110, i64 0, i64 0), i64 5) #38
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %697, label %354

354:                                              ; preds = %351
  %355 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51.111, i64 0, i64 0), i64 3) #38
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %697, label %357

357:                                              ; preds = %354
  %358 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52.112, i64 0, i64 0), i64 5) #38
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %697, label %360

360:                                              ; preds = %357
  %361 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #39
  switch i64 %361, label %437 [
    i64 3, label %365
    i64 4, label %362
  ]

362:                                              ; preds = %360
  %363 = load i8, i8* %12, align 1, !tbaa !23
  %364 = icmp eq i8 %363, 46
  br i1 %364, label %365, label %437

365:                                              ; preds = %362, %360
  %366 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53.113, i64 0, i64 0), i64 3) #38
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %697, label %368

368:                                              ; preds = %365
  %369 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.114, i64 0, i64 0), i64 3) #38
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %697, label %371

371:                                              ; preds = %368
  %372 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55.115, i64 0, i64 0), i64 3) #38
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %697, label %374

374:                                              ; preds = %371
  %375 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56.116, i64 0, i64 0), i64 3) #38
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %697, label %377

377:                                              ; preds = %374
  %378 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57.117, i64 0, i64 0), i64 3) #38
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %697, label %380

380:                                              ; preds = %377
  %381 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58.118, i64 0, i64 0), i64 3) #38
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %697, label %383

383:                                              ; preds = %380
  %384 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59.119, i64 0, i64 0), i64 3) #38
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %697, label %386

386:                                              ; preds = %383
  %387 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60.120, i64 0, i64 0), i64 3) #38
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %697, label %389

389:                                              ; preds = %386
  %390 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61.121, i64 0, i64 0), i64 3) #38
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %697, label %392

392:                                              ; preds = %389
  %393 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62.122, i64 0, i64 0), i64 3) #38
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %697, label %395

395:                                              ; preds = %392
  %396 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63.123, i64 0, i64 0), i64 3) #38
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %697, label %398

398:                                              ; preds = %395
  %399 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64.124, i64 0, i64 0), i64 3) #38
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %697, label %401

401:                                              ; preds = %398
  %402 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65.125, i64 0, i64 0), i64 3) #38
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %697, label %404

404:                                              ; preds = %401
  %405 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66.126, i64 0, i64 0), i64 3) #38
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %697, label %407

407:                                              ; preds = %404
  %408 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67.127, i64 0, i64 0), i64 3) #38
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %697, label %410

410:                                              ; preds = %407
  %411 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68.128, i64 0, i64 0), i64 3) #38
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %697, label %413

413:                                              ; preds = %410
  %414 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69.129, i64 0, i64 0), i64 3) #38
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %697, label %416

416:                                              ; preds = %413
  %417 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70.130, i64 0, i64 0), i64 3) #38
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %697, label %419

419:                                              ; preds = %416
  %420 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71.131, i64 0, i64 0), i64 3) #38
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %697, label %422

422:                                              ; preds = %419
  %423 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72.132, i64 0, i64 0), i64 3) #38
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %697, label %425

425:                                              ; preds = %422
  %426 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73.133, i64 0, i64 0), i64 3) #38
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %697, label %428

428:                                              ; preds = %425
  %429 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74.134, i64 0, i64 0), i64 3) #38
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %697, label %431

431:                                              ; preds = %428
  %432 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75.135, i64 0, i64 0), i64 3) #38
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %697, label %434

434:                                              ; preds = %431
  %435 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %10, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76.136, i64 0, i64 0), i64 3) #38
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %697, label %509

437:                                              ; preds = %362, %360
  %438 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %10, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53.113, i64 0, i64 0), i64 8) #38
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %697, label %440

440:                                              ; preds = %437
  %441 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.114, i64 0, i64 0), i64 9) #38
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %697, label %443

443:                                              ; preds = %440
  %444 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55.115, i64 0, i64 0), i64 6) #38
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %697, label %446

446:                                              ; preds = %443
  %447 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56.116, i64 0, i64 0), i64 6) #38
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %697, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* %13, align 4
  %451 = icmp eq i32 %450, 5849421
  br i1 %451, label %697, label %452

452:                                              ; preds = %449
  %453 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58.118, i64 0, i64 0), i64 5) #38
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %697, label %455

455:                                              ; preds = %452
  %456 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59.119, i64 0, i64 0), i64 5) #38
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %697, label %458

458:                                              ; preds = %455
  %459 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60.120, i64 0, i64 0), i64 7) #38
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %697, label %461

461:                                              ; preds = %458
  %462 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %10, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61.121, i64 0, i64 0), i64 10) #38
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %697, label %464

464:                                              ; preds = %461
  %465 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62.122, i64 0, i64 0), i64 5) #38
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %697, label %467

467:                                              ; preds = %464
  %468 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %10, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63.123, i64 0, i64 0), i64 8) #38
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %697, label %470

470:                                              ; preds = %467
  %471 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64.124, i64 0, i64 0), i64 9) #38
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %697, label %473

473:                                              ; preds = %470
  %474 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65.125, i64 0, i64 0), i64 9) #38
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %697, label %476

476:                                              ; preds = %473
  %477 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66.126, i64 0, i64 0), i64 7) #38
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %697, label %479

479:                                              ; preds = %476
  %480 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67.127, i64 0, i64 0), i64 7) #38
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %697, label %482

482:                                              ; preds = %479
  %483 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %10, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68.128, i64 0, i64 0), i64 8) #38
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %697, label %485

485:                                              ; preds = %482
  %486 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69.129, i64 0, i64 0), i64 5) #38
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %697, label %488

488:                                              ; preds = %485
  %489 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %10, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70.130, i64 0, i64 0), i64 10) #38
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %697, label %491

491:                                              ; preds = %488
  %492 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71.131, i64 0, i64 0), i64 7) #38
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %697, label %494

494:                                              ; preds = %491
  %495 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72.132, i64 0, i64 0), i64 9) #38
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %697, label %497

497:                                              ; preds = %494
  %498 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73.133, i64 0, i64 0), i64 5) #38
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %697, label %500

500:                                              ; preds = %497
  %501 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74.134, i64 0, i64 0), i64 6) #38
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %697, label %503

503:                                              ; preds = %500
  %504 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75.135, i64 0, i64 0), i64 7) #38
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %697, label %506

506:                                              ; preds = %503
  %507 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76.136, i64 0, i64 0), i64 9) #38
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %697, label %509

509:                                              ; preds = %506, %434
  %510 = call fastcc %struct.table* @lookup_zone(%struct.parser_control* noundef %0, i8* noundef nonnull %10) #39
  %511 = icmp eq %struct.table* %510, null
  br i1 %511, label %512, label %697

512:                                              ; preds = %509
  %513 = load i32, i32* %13, align 4
  %514 = icmp eq i32 %513, 5526340
  br i1 %514, label %697, label %515

515:                                              ; preds = %512
  %516 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #38
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %697, label %518

518:                                              ; preds = %515
  %519 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0), i64 6) #38
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %697, label %521

521:                                              ; preds = %518
  %522 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %10, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i64 0, i64 0), i64 10) #38
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %697, label %524

524:                                              ; preds = %521
  %525 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #38
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %697, label %527

527:                                              ; preds = %524
  %528 = icmp eq i32 %513, 5849412
  br i1 %528, label %697, label %529

529:                                              ; preds = %527
  %530 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #38
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %697, label %532

532:                                              ; preds = %529
  %533 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i64 7) #38
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %697, label %535

535:                                              ; preds = %532
  %536 = icmp eq i32 %513, 5130573
  br i1 %536, label %697, label %537

537:                                              ; preds = %535
  %538 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i64 0, i64 0), i64 7) #38
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %697, label %540

540:                                              ; preds = %537
  %541 = icmp eq i32 %513, 4408659
  br i1 %541, label %697, label %542

542:                                              ; preds = %540
  %543 = add nsw i64 %361, -1
  %544 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 %543
  %545 = load i8, i8* %544, align 1, !tbaa !23
  %546 = icmp eq i8 %545, 83
  br i1 %546, label %547, label %576

547:                                              ; preds = %542
  store i8 0, i8* %544, align 1, !tbaa !23
  %548 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #38
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %697, label %550

550:                                              ; preds = %547
  %551 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i64 0, i64 0), i64 6) #38
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %697, label %553

553:                                              ; preds = %550
  %554 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %10, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i64 0, i64 0), i64 10) #38
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %697, label %556

556:                                              ; preds = %553
  %557 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #38
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %697, label %559

559:                                              ; preds = %556
  %560 = load i32, i32* %13, align 4
  %561 = icmp eq i32 %560, 5849412
  br i1 %561, label %697, label %562

562:                                              ; preds = %559
  %563 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #38
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %697, label %565

565:                                              ; preds = %562
  %566 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i64 7) #38
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %697, label %568

568:                                              ; preds = %565
  %569 = icmp eq i32 %560, 5130573
  br i1 %569, label %697, label %570

570:                                              ; preds = %568
  %571 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i64 0, i64 0), i64 7) #38
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %697, label %573

573:                                              ; preds = %570
  %574 = icmp eq i32 %560, 4408659
  br i1 %574, label %697, label %575

575:                                              ; preds = %573
  store i8 83, i8* %544, align 1, !tbaa !23
  br label %576

576:                                              ; preds = %575, %542
  %577 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i64 0, i64 0), i64 9) #38
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %697, label %579

579:                                              ; preds = %576
  %580 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %10, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i64 0, i64 0), i64 10) #38
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %697, label %582

582:                                              ; preds = %579
  %583 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i64 6) #38
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %697, label %585

585:                                              ; preds = %582
  %586 = load i32, i32* %13, align 4
  %587 = icmp eq i32 %586, 5721934
  %588 = trunc i32 %586 to i8
  %589 = lshr i32 %586, 8
  %590 = trunc i32 %589 to i8
  br i1 %587, label %697, label %591

591:                                              ; preds = %585
  %592 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 5) #38
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %697, label %594

594:                                              ; preds = %591
  %595 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 5) #38
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %697, label %597

597:                                              ; preds = %594
  %598 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 5) #38
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %697, label %600

600:                                              ; preds = %597
  %601 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i64 0, i64 0), i64 6) #38
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %697, label %603

603:                                              ; preds = %600
  %604 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i64 0, i64 0), i64 6) #38
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %697, label %606

606:                                              ; preds = %603
  %607 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i64 0, i64 0), i64 7) #38
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %697, label %609

609:                                              ; preds = %606
  %610 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i64 0, i64 0), i64 6) #38
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %697, label %612

612:                                              ; preds = %609
  %613 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i64 0, i64 0), i64 6) #38
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %697, label %615

615:                                              ; preds = %612
  %616 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %10, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0), i64 8) #38
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %697, label %618

618:                                              ; preds = %615
  %619 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %10, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i64 0, i64 0), i64 7) #38
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %697, label %621

621:                                              ; preds = %618
  %622 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i64 0, i64 0), i64 6) #38
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %697, label %624

624:                                              ; preds = %621
  %625 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i64 0, i64 0), i64 6) #38
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %697, label %627

627:                                              ; preds = %624
  %628 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %10, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i64 0, i64 0), i64 9) #38
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %697, label %630

630:                                              ; preds = %627
  %631 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %10, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i64 0, i64 0), i64 8) #38
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %697, label %633

633:                                              ; preds = %630
  %634 = icmp eq i32 %586, 5195585
  br i1 %634, label %697, label %635

635:                                              ; preds = %633
  %636 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %10, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i64 0, i64 0), i64 6) #38
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %697, label %638

638:                                              ; preds = %635
  %639 = icmp eq i64 %361, 1
  br i1 %639, label %640, label %641

640:                                              ; preds = %638
  switch i8 %588, label %643 [
    i8 65, label %697
    i8 66, label %667
    i8 67, label %668
    i8 68, label %669
    i8 69, label %670
    i8 70, label %671
    i8 71, label %672
    i8 72, label %673
    i8 73, label %674
    i8 74, label %675
    i8 75, label %676
    i8 76, label %677
    i8 77, label %678
    i8 78, label %679
    i8 79, label %680
    i8 80, label %681
    i8 81, label %682
    i8 82, label %683
    i8 83, label %684
    i8 84, label %685
    i8 85, label %686
    i8 86, label %687
    i8 87, label %688
    i8 88, label %689
    i8 89, label %690
    i8 90, label %691
    i8 0, label %692
  ]

641:                                              ; preds = %638
  %642 = icmp eq i8 %588, 0
  br i1 %642, label %692, label %643

643:                                              ; preds = %641, %640
  %644 = icmp eq i8 %588, 46
  %645 = xor i1 %644, true
  %646 = zext i1 %645 to i64
  %647 = getelementptr [20 x i8], [20 x i8]* %2, i64 0, i64 %646
  store i8 %590, i8* %647, align 1, !tbaa !23
  %648 = icmp eq i8 %590, 0
  br i1 %648, label %662, label %649, !llvm.loop !73

649:                                              ; preds = %643, %649
  %650 = phi i8* [ %659, %649 ], [ %14, %643 ]
  %651 = phi i1 [ %658, %649 ], [ %644, %643 ]
  %652 = phi i8* [ %657, %649 ], [ %647, %643 ]
  %653 = load i8, i8* %650, align 1, !tbaa !23
  %654 = icmp eq i8 %653, 46
  %655 = xor i1 %654, true
  %656 = zext i1 %655 to i64
  %657 = getelementptr i8, i8* %652, i64 %656
  %658 = select i1 %654, i1 true, i1 %651
  %659 = getelementptr inbounds i8, i8* %650, i64 1
  %660 = load i8, i8* %659, align 1, !tbaa !23
  store i8 %660, i8* %657, align 1, !tbaa !23
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %649, !llvm.loop !74

662:                                              ; preds = %649, %643
  %663 = phi i1 [ %644, %643 ], [ %658, %649 ]
  br i1 %663, label %664, label %692

664:                                              ; preds = %662
  %665 = call fastcc %struct.table* @lookup_zone(%struct.parser_control* noundef %0, i8* noundef nonnull %10) #39
  %666 = icmp eq %struct.table* %665, null
  br i1 %666, label %692, label %697

667:                                              ; preds = %640
  br label %697

668:                                              ; preds = %640
  br label %697

669:                                              ; preds = %640
  br label %697

670:                                              ; preds = %640
  br label %697

671:                                              ; preds = %640
  br label %697

672:                                              ; preds = %640
  br label %697

673:                                              ; preds = %640
  br label %697

674:                                              ; preds = %640
  br label %697

675:                                              ; preds = %640
  br label %697

676:                                              ; preds = %640
  br label %697

677:                                              ; preds = %640
  br label %697

678:                                              ; preds = %640
  br label %697

679:                                              ; preds = %640
  br label %697

680:                                              ; preds = %640
  br label %697

681:                                              ; preds = %640
  br label %697

682:                                              ; preds = %640
  br label %697

683:                                              ; preds = %640
  br label %697

684:                                              ; preds = %640
  br label %697

685:                                              ; preds = %640
  br label %697

686:                                              ; preds = %640
  br label %697

687:                                              ; preds = %640
  br label %697

688:                                              ; preds = %640
  br label %697

689:                                              ; preds = %640
  br label %697

690:                                              ; preds = %640
  br label %697

691:                                              ; preds = %640
  br label %697

692:                                              ; preds = %664, %662, %641, %640
  %693 = load i8, i8* %15, align 2, !tbaa !75
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %706, label %695

695:                                              ; preds = %692
  %696 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48.159, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %696, i8* noundef nonnull %10) #38
  br label %706

697:                                              ; preds = %691, %690, %689, %688, %687, %686, %685, %684, %683, %682, %681, %680, %679, %678, %677, %676, %675, %674, %673, %672, %671, %670, %669, %668, %667, %664, %640, %635, %633, %630, %627, %624, %621, %618, %615, %612, %609, %606, %603, %600, %597, %594, %591, %585, %582, %579, %576, %573, %570, %568, %565, %562, %559, %556, %553, %550, %547, %540, %537, %535, %532, %529, %527, %524, %521, %518, %515, %512, %509, %506, %503, %500, %497, %494, %491, %488, %485, %482, %479, %476, %473, %470, %467, %464, %461, %458, %455, %452, %449, %446, %443, %440, %437, %434, %431, %428, %425, %422, %419, %416, %413, %410, %407, %404, %401, %398, %395, %392, %389, %386, %383, %380, %377, %374, %371, %368, %365, %357, %354, %351, %337
  %698 = phi %struct.table* [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 25), %691 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 24), %690 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 23), %689 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 22), %688 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 21), %687 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 20), %686 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 19), %685 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 18), %684 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 17), %683 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 16), %682 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 15), %681 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 14), %680 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 13), %679 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 12), %678 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 11), %677 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 10), %676 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 9), %675 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 8), %674 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 7), %673 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 6), %672 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 5), %671 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 4), %670 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 3), %669 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 2), %668 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 1), %667 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 3), %357 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 2), %354 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 1), %351 ], [ getelementptr inbounds ([5 x %struct.table], [5 x %struct.table]* @meridian_table, i64 0, i64 0), %337 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 23), %434 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 22), %431 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 21), %428 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 20), %425 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 19), %422 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 18), %419 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 17), %416 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 16), %413 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 15), %410 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 14), %407 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 13), %404 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 12), %401 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 11), %398 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 10), %395 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 9), %392 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 8), %389 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 7), %386 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 6), %383 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 5), %380 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 4), %377 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 3), %374 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 2), %371 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 1), %368 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 0), %365 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 23), %506 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 22), %503 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 21), %500 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 20), %497 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 19), %494 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 18), %491 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 17), %488 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 16), %485 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 15), %482 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 14), %479 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 13), %476 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 12), %473 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 11), %470 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 10), %467 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 9), %464 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 8), %461 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 7), %458 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 6), %455 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 5), %452 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 4), %449 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 3), %446 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 2), %443 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 1), %440 ], [ getelementptr inbounds ([25 x %struct.table], [25 x %struct.table]* @month_and_day_table, i64 0, i64 0), %437 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 9), %540 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 8), %537 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 7), %535 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 6), %532 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 5), %529 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 4), %527 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 3), %524 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 2), %521 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 1), %518 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %515 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 9), %573 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 8), %570 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 7), %568 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 6), %565 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 5), %562 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 4), %559 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 3), %556 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 2), %553 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 1), %550 ], [ getelementptr inbounds ([11 x %struct.table], [11 x %struct.table]* @time_units_table, i64 0, i64 0), %547 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 19), %635 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 18), %633 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 17), %630 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 16), %627 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 15), %624 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 14), %621 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 13), %618 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 12), %615 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 11), %612 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 10), %609 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 9), %606 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 8), %603 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 7), %600 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 6), %597 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 5), %594 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 4), %591 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 3), %585 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 2), %582 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 1), %579 ], [ getelementptr inbounds ([21 x %struct.table], [21 x %struct.table]* @relative_time_table, i64 0, i64 0), %576 ], [ getelementptr inbounds ([27 x %struct.table], [27 x %struct.table]* @military_table, i64 0, i64 0), %640 ], [ %665, %664 ], [ getelementptr inbounds ([1 x %struct.table], [1 x %struct.table]* @dst_table, i64 0, i64 0), %512 ], [ %510, %509 ]
  %699 = getelementptr inbounds %struct.table, %struct.table* %698, i64 0, i32 2
  %700 = load i32, i32* %699, align 4, !tbaa !76
  %701 = trunc i32 %700 to i8
  %702 = ashr i32 %700, 8
  %703 = sext i32 %702 to i56
  %704 = getelementptr inbounds %struct.table, %struct.table* %698, i64 0, i32 1
  %705 = load i32, i32* %704, align 8, !tbaa !78
  br label %706

706:                                              ; preds = %697, %695, %692
  %707 = phi i8 [ %701, %697 ], [ %77, %692 ], [ %77, %695 ]
  %708 = phi i56 [ %703, %697 ], [ %76, %692 ], [ %76, %695 ]
  %709 = phi i32 [ %705, %697 ], [ 63, %692 ], [ 63, %695 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #38
  br label %726

710:                                              ; preds = %102
  %711 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %711, i8** %9, align 8, !tbaa !62
  %712 = load i8, i8* %92, align 1, !tbaa !23
  %713 = zext i8 %712 to i32
  br label %726

714:                                              ; preds = %102, %723
  %715 = phi i8* [ %717, %723 ], [ %92, %102 ]
  %716 = phi i64 [ %724, %723 ], [ 0, %102 ]
  %717 = getelementptr inbounds i8, i8* %715, i64 1
  store i8* %717, i8** %9, align 8, !tbaa !62
  %718 = load i8, i8* %715, align 1, !tbaa !23
  switch i8 %718, label %723 [
    i8 0, label %745
    i8 40, label %719
    i8 41, label %721
  ]

719:                                              ; preds = %714
  %720 = add nsw i64 %716, 1
  br label %723

721:                                              ; preds = %714
  %722 = add nsw i64 %716, -1
  br label %723

723:                                              ; preds = %721, %719, %714
  %724 = phi i64 [ %720, %719 ], [ %722, %721 ], [ %716, %714 ]
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %96, label %714

726:                                              ; preds = %710, %706, %87
  %727 = phi i8 [ %77, %87 ], [ %77, %710 ], [ %707, %706 ]
  %728 = phi i56 [ %76, %87 ], [ %76, %710 ], [ %708, %706 ]
  %729 = phi i32 [ %72, %87 ], [ %713, %710 ], [ %709, %706 ]
  %730 = icmp slt i32 %729, 1
  br i1 %730, label %745, label %731

731:                                              ; preds = %726
  %732 = icmp eq i32 %729, 256
  br i1 %732, label %1830, label %733

733:                                              ; preds = %731
  %734 = icmp ult i32 %729, 279
  br i1 %734, label %735, label %745

735:                                              ; preds = %127, %132, %130, %293, %287, %161, %302, %733
  %736 = phi i32 [ %729, %733 ], [ %301, %293 ], [ 63, %287 ], [ 276, %161 ], [ %310, %302 ], [ 63, %130 ], [ 63, %132 ], [ 63, %127 ]
  %737 = phi i56 [ %728, %733 ], [ %299, %293 ], [ %76, %287 ], [ %76, %161 ], [ %76, %302 ], [ %76, %130 ], [ %76, %132 ], [ %76, %127 ]
  %738 = phi i8 [ %727, %733 ], [ %297, %293 ], [ %77, %287 ], [ %163, %161 ], [ %305, %302 ], [ %77, %130 ], [ %77, %132 ], [ %77, %127 ]
  %739 = phi i64 [ %78, %733 ], [ %78, %293 ], [ %78, %287 ], [ %166, %161 ], [ %308, %302 ], [ %78, %130 ], [ %78, %132 ], [ %78, %127 ]
  %740 = phi i64 [ %79, %733 ], [ %296, %293 ], [ %79, %287 ], [ %149, %161 ], [ %149, %302 ], [ %79, %130 ], [ %79, %132 ], [ %79, %127 ]
  %741 = zext i32 %736 to i64
  %742 = getelementptr inbounds [279 x i8], [279 x i8]* @yytranslate, i64 0, i64 %741
  %743 = load i8, i8* %742, align 1, !tbaa !23
  %744 = sext i8 %743 to i32
  br label %745

745:                                              ; preds = %714, %735, %733, %726
  %746 = phi i56 [ %728, %726 ], [ %737, %735 ], [ %728, %733 ], [ %76, %714 ]
  %747 = phi i8 [ %727, %726 ], [ %738, %735 ], [ %727, %733 ], [ %77, %714 ]
  %748 = phi i64 [ %78, %726 ], [ %739, %735 ], [ %78, %733 ], [ %78, %714 ]
  %749 = phi i64 [ %79, %726 ], [ %740, %735 ], [ %79, %733 ], [ %79, %714 ]
  %750 = phi i32 [ 0, %726 ], [ %744, %735 ], [ 2, %733 ], [ 0, %714 ]
  %751 = phi i32 [ 0, %726 ], [ %736, %735 ], [ %729, %733 ], [ 0, %714 ]
  %752 = add nsw i32 %750, %85
  %753 = icmp ugt i32 %752, 120
  br i1 %753, label %777, label %754

754:                                              ; preds = %745
  %755 = zext i32 %752 to i64
  %756 = getelementptr inbounds [121 x i8], [121 x i8]* @yycheck, i64 0, i64 %755
  %757 = load i8, i8* %756, align 1, !tbaa !23
  %758 = sext i8 %757 to i32
  %759 = icmp eq i32 %750, %758
  br i1 %759, label %760, label %777

760:                                              ; preds = %754
  %761 = getelementptr inbounds [121 x i8], [121 x i8]* @yytable, i64 0, i64 %755
  %762 = load i8, i8* %761, align 1, !tbaa !23
  %763 = sext i8 %762 to i32
  %764 = icmp slt i8 %762, 1
  br i1 %764, label %765, label %767

765:                                              ; preds = %760
  %766 = sub nsw i32 0, %763
  br label %787

767:                                              ; preds = %760
  %768 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 1, i32 0, i32 0
  %769 = zext i56 %746 to i64
  %770 = shl nuw i64 %769, 8
  %771 = zext i8 %747 to i64
  %772 = or i64 %770, %771
  store i64 %772, i64* %768, align 8, !tbaa.struct !79
  %773 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 1, i32 0, i32 1
  store i64 %749, i64* %773, align 8, !tbaa.struct !80
  %774 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 1, i32 0, i32 2
  store i64 %748, i64* %774, align 8, !tbaa.struct !81
  %775 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 1, i32 0, i32 3
  %776 = bitcast i64* %775 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %776, i8* noundef nonnull align 8 dereferenceable(32) bitcast (i64* getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyparse.yyval_default, i64 0, i32 0, i32 3) to i8*), i64 32, i1 false), !tbaa.struct !82
  br label %58

777:                                              ; preds = %745, %754, %81
  %778 = phi i64 [ %79, %81 ], [ %749, %745 ], [ %749, %754 ]
  %779 = phi i64 [ %78, %81 ], [ %748, %745 ], [ %748, %754 ]
  %780 = phi i8 [ %77, %81 ], [ %747, %745 ], [ %747, %754 ]
  %781 = phi i56 [ %76, %81 ], [ %746, %745 ], [ %746, %754 ]
  %782 = phi i32 [ %72, %81 ], [ %751, %745 ], [ %751, %754 ]
  %783 = getelementptr inbounds [121 x i8], [121 x i8]* @yydefact, i64 0, i64 %82
  %784 = load i8, i8* %783, align 1, !tbaa !23
  %785 = sext i8 %784 to i32
  %786 = icmp eq i8 %784, 0
  br i1 %786, label %1830, label %787

787:                                              ; preds = %777, %765
  %788 = phi i64 [ %778, %777 ], [ %749, %765 ]
  %789 = phi i64 [ %779, %777 ], [ %748, %765 ]
  %790 = phi i8 [ %780, %777 ], [ %747, %765 ]
  %791 = phi i56 [ %781, %777 ], [ %746, %765 ]
  %792 = phi i32 [ %785, %777 ], [ %766, %765 ]
  %793 = phi i32 [ %782, %777 ], [ %751, %765 ]
  %794 = sext i32 %792 to i64
  %795 = getelementptr inbounds [95 x i8], [95 x i8]* @yyr2, i64 0, i64 %794
  %796 = load i8, i8* %795, align 1, !tbaa !23
  %797 = sext i8 %796 to i64
  %798 = sub nsw i64 1, %797
  %799 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 0
  %800 = load i64, i64* %799, align 8, !tbaa.struct !79
  %801 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 1
  %802 = load i64, i64* %801, align 8, !tbaa.struct !80
  %803 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 2
  %804 = load i64, i64* %803, align 8, !tbaa.struct !81
  %805 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 3
  %806 = load i64, i64* %805, align 8, !tbaa.struct !82
  %807 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 4
  %808 = load i64, i64* %807, align 8, !tbaa.struct !83
  %809 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 5
  %810 = load i64, i64* %809, align 8, !tbaa.struct !84
  %811 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %798, i32 0, i32 6
  %812 = bitcast i32* %811 to <2 x i32>*
  %813 = load <2 x i32>, <2 x i32>* %812, align 8
  switch i32 %792, label %1787 [
    i32 4, label %814
    i32 7, label %817
    i32 8, label %823
    i32 9, label %827
    i32 10, label %831
    i32 11, label %834
    i32 12, label %838
    i32 13, label %842
    i32 14, label %846
    i32 15, label %848
    i32 16, label %850
    i32 19, label %852
    i32 20, label %858
    i32 21, label %866
    i32 23, label %880
    i32 24, label %883
    i32 25, label %888
    i32 28, label %899
    i32 29, label %952
    i32 30, label %956
    i32 31, label %959
    i32 32, label %963
    i32 33, label %964
    i32 34, label %1018
    i32 35, label %1069
    i32 36, label %1130
    i32 37, label %1135
    i32 38, label %1140
    i32 39, label %1144
    i32 40, label %1148
    i32 41, label %1154
    i32 42, label %1160
    i32 43, label %1165
    i32 44, label %1194
    i32 45, label %1199
    i32 46, label %1205
    i32 47, label %1218
    i32 48, label %1235
    i32 49, label %1240
    i32 50, label %1246
    i32 51, label %1251
    i32 53, label %1257
    i32 54, label %1271
    i32 55, label %1360
    i32 56, label %1410
    i32 57, label %1460
    i32 58, label %1463
    i32 59, label %1466
    i32 60, label %1467
    i32 61, label %1470
    i32 62, label %1473
    i32 63, label %1474
    i32 64, label %1511
    i32 65, label %1548
    i32 66, label %1551
    i32 67, label %1554
    i32 68, label %1557
    i32 69, label %1558
    i32 70, label %1561
    i32 71, label %1564
    i32 72, label %1565
    i32 73, label %1568
    i32 74, label %1571
    i32 75, label %1578
    i32 76, label %1585
    i32 78, label %1586
    i32 79, label %1589
    i32 80, label %1592
    i32 81, label %1629
    i32 82, label %1632
    i32 83, label %1635
    i32 84, label %1638
    i32 88, label %1641
    i32 90, label %1644
    i32 91, label %1647
    i32 92, label %1690
    i32 93, label %1783
    i32 94, label %1784
  ]

814:                                              ; preds = %787
  %815 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %52, i8* noundef nonnull align 8 dereferenceable(16) %815, i64 16, i1 false), !tbaa.struct !32
  store i8 1, i8* %53, align 8, !tbaa !85
  %816 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.160, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %816, %struct.parser_control* noundef %0)
  br label %1787

817:                                              ; preds = %787
  %818 = load i64, i64* %20, align 8, !tbaa !86
  %819 = add nsw i64 %818, 1
  store i64 %819, i64* %20, align 8, !tbaa !86
  %820 = load i64, i64* %17, align 8, !tbaa !87
  %821 = add nsw i64 %820, 1
  store i64 %821, i64* %17, align 8, !tbaa !87
  %822 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.161, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %822, %struct.parser_control* noundef %0)
  br label %1787

823:                                              ; preds = %787
  %824 = load i64, i64* %20, align 8, !tbaa !86
  %825 = add nsw i64 %824, 1
  store i64 %825, i64* %20, align 8, !tbaa !86
  %826 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.162, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %826, %struct.parser_control* noundef %0)
  br label %1787

827:                                              ; preds = %787
  %828 = load i64, i64* %50, align 8, !tbaa !88
  %829 = add nsw i64 %828, 1
  store i64 %829, i64* %50, align 8, !tbaa !88
  %830 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.163, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %830, %struct.parser_control* noundef %0)
  br label %1787

831:                                              ; preds = %787
  %832 = load i64, i64* %49, align 8, !tbaa !89
  %833 = add nsw i64 %832, 1
  store i64 %833, i64* %49, align 8, !tbaa !89
  call fastcc void @debug_print_current_time(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.164, i64 0, i64 0), %struct.parser_control* noundef %0)
  br label %1787

834:                                              ; preds = %787
  %835 = load i64, i64* %46, align 8, !tbaa !90
  %836 = add nsw i64 %835, 1
  store i64 %836, i64* %46, align 8, !tbaa !90
  %837 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.165, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %837, %struct.parser_control* noundef %0)
  br label %1787

838:                                              ; preds = %787
  %839 = load i64, i64* %17, align 8, !tbaa !87
  %840 = add nsw i64 %839, 1
  store i64 %840, i64* %17, align 8, !tbaa !87
  %841 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.166, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %841, %struct.parser_control* noundef %0)
  br label %1787

842:                                              ; preds = %787
  %843 = load i64, i64* %48, align 8, !tbaa !91
  %844 = add nsw i64 %843, 1
  store i64 %844, i64* %48, align 8, !tbaa !91
  %845 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.167, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %845, %struct.parser_control* noundef %0)
  br label %1787

846:                                              ; preds = %787
  %847 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.168, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_relative_time(i8* noundef %847, %struct.parser_control* noundef %0)
  br label %1787

848:                                              ; preds = %787
  %849 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.169, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_current_time(i8* noundef %849, %struct.parser_control* noundef %0)
  br label %1787

850:                                              ; preds = %787
  %851 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.170, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_relative_time(i8* noundef %851, %struct.parser_control* noundef %0)
  br label %1787

852:                                              ; preds = %787
  %853 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %854 = load i64, i64* %853, align 8, !tbaa !23
  store i64 %854, i64* %25, align 8, !tbaa !92
  %855 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %856 = load i64, i64* %855, align 8, !tbaa !23
  %857 = trunc i64 %856 to i32
  store i32 %857, i32* %28, align 4, !tbaa !93
  br label %1787

858:                                              ; preds = %787
  %859 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 1
  %860 = load i64, i64* %859, align 8, !tbaa !23
  %861 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %862 = load i64, i64* %861, align 8, !tbaa !23
  store i64 %860, i64* %25, align 8, !tbaa !92
  store i64 %862, i64* %26, align 8, !tbaa !94
  %863 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  %864 = load i64, i64* %863, align 8, !tbaa !23
  %865 = trunc i64 %864 to i32
  store i32 %865, i32* %28, align 4, !tbaa !93
  br label %1787

866:                                              ; preds = %787
  %867 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -5, i32 0, i32 1
  %868 = load i64, i64* %867, align 8, !tbaa !23
  %869 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 1
  %870 = load i64, i64* %869, align 8, !tbaa !23
  %871 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %872 = load i64, i64* %871, align 8, !tbaa !23
  %873 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %874 = load i64, i64* %873, align 8, !tbaa !23
  store i64 %868, i64* %25, align 8, !tbaa !92
  store i64 %870, i64* %26, align 8, !tbaa !94
  %875 = shl i64 %874, 32
  %876 = ashr exact i64 %875, 32
  store i64 %872, i64* %27, align 8, !tbaa.struct !32
  store i64 %876, i64* %47, align 8, !tbaa.struct !34
  %877 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %878 = load i64, i64* %877, align 8, !tbaa !23
  %879 = trunc i64 %878 to i32
  store i32 %879, i32* %28, align 4, !tbaa !93
  br label %1787

880:                                              ; preds = %787
  %881 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %882 = load i64, i64* %881, align 8, !tbaa !23
  store i64 %882, i64* %25, align 8, !tbaa !92
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  store i32 2, i32* %28, align 4, !tbaa !93
  br label %1787

883:                                              ; preds = %787
  %884 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 1
  %885 = load i64, i64* %884, align 8, !tbaa !23
  %886 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %887 = load i64, i64* %886, align 8, !tbaa !23
  store i64 %885, i64* %25, align 8, !tbaa !92
  store i64 %887, i64* %26, align 8, !tbaa !94
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  store i32 2, i32* %28, align 4, !tbaa !93
  br label %1787

888:                                              ; preds = %787
  %889 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -5, i32 0, i32 1
  %890 = load i64, i64* %889, align 8, !tbaa !23
  %891 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 1
  %892 = load i64, i64* %891, align 8, !tbaa !23
  %893 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %894 = load i64, i64* %893, align 8, !tbaa !23
  %895 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %896 = load i64, i64* %895, align 8, !tbaa !23
  store i64 %890, i64* %25, align 8, !tbaa !92
  store i64 %892, i64* %26, align 8, !tbaa !94
  %897 = shl i64 %896, 32
  %898 = ashr exact i64 %897, 32
  store i64 %894, i64* %27, align 8, !tbaa.struct !32
  store i64 %898, i64* %47, align 8, !tbaa.struct !34
  store i32 2, i32* %28, align 4, !tbaa !93
  br label %1787

899:                                              ; preds = %787
  %900 = load i64, i64* %46, align 8, !tbaa !90
  %901 = add nsw i64 %900, 1
  store i64 %901, i64* %46, align 8, !tbaa !90
  %902 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %903 = load i64, i64* %902, align 8, !tbaa !23
  %904 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1
  %905 = bitcast %union.YYSTYPE* %904 to i8*
  %906 = load i8, i8* %905, align 8, !tbaa.struct !95
  %907 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %908 = load i64, i64* %907, align 8, !tbaa.struct !32
  %909 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 2
  %910 = load i64, i64* %909, align 8, !tbaa.struct !34
  %911 = icmp slt i64 %910, 3
  %912 = icmp slt i64 %903, 0
  %913 = and i1 %912, %911
  %914 = mul nsw i64 %908, 100
  %915 = select i1 %913, i64 %914, i64 %908
  br i1 %912, label %916, label %923

916:                                              ; preds = %899
  %917 = freeze i64 %915
  %918 = sdiv i64 %917, 100
  %919 = mul nsw i64 %918, 60
  %920 = mul i64 %918, 100
  %921 = sub i64 %917, %920
  %922 = add nsw i64 %919, %921
  br label %942

923:                                              ; preds = %899
  %924 = icmp slt i64 %915, 0
  br i1 %924, label %925, label %928

925:                                              ; preds = %923
  %926 = add i64 %915, -1
  %927 = icmp ult i64 %926, -153722867280912931
  br i1 %927, label %931, label %930

928:                                              ; preds = %923
  %929 = icmp ugt i64 %915, 153722867280912930
  br i1 %929, label %931, label %930

930:                                              ; preds = %928, %925
  br label %931

931:                                              ; preds = %930, %928, %925
  %932 = phi i1 [ false, %930 ], [ true, %928 ], [ true, %925 ]
  %933 = mul i64 %915, 60
  %934 = icmp eq i8 %906, 0
  %935 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %933, i64 %903) #38
  %936 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %933, i64 %903) #38
  %937 = select i1 %934, { i64, i1 } %936, { i64, i1 } %935
  %938 = extractvalue { i64, i1 } %937, 1
  %939 = extractvalue { i64, i1 } %937, 0
  %940 = or i1 %938, %932
  %941 = xor i1 %940, true
  br label %942

942:                                              ; preds = %931, %916
  %943 = phi i64 [ %922, %916 ], [ %939, %931 ]
  %944 = phi i1 [ true, %916 ], [ %941, %931 ]
  %945 = icmp sgt i64 %943, -1441
  %946 = select i1 %944, i1 %945, i1 false
  %947 = icmp slt i64 %943, 1441
  %948 = select i1 %946, i1 %947, i1 false
  br i1 %948, label %949, label %1830

949:                                              ; preds = %942
  %950 = trunc i64 %943 to i32
  %951 = mul nsw i32 %950, 60
  store i32 %951, i32* %43, align 8, !tbaa !96
  br label %1787

952:                                              ; preds = %787
  %953 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %954 = load i64, i64* %953, align 8, !tbaa !23
  %955 = trunc i64 %954 to i32
  store i32 %955, i32* %44, align 4, !tbaa !97
  br label %1787

956:                                              ; preds = %787
  store i32 1, i32* %44, align 4, !tbaa !97
  %957 = load i64, i64* %45, align 8, !tbaa !98
  %958 = add nsw i64 %957, 1
  store i64 %958, i64* %45, align 8, !tbaa !98
  br label %1787

959:                                              ; preds = %787
  %960 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %961 = load i64, i64* %960, align 8, !tbaa !23
  %962 = trunc i64 %961 to i32
  store i32 %962, i32* %43, align 8, !tbaa !96
  br label %1787

963:                                              ; preds = %787
  store i32 -25200, i32* %43, align 8, !tbaa !96
  br label %1787

964:                                              ; preds = %787
  %965 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %966 = load i64, i64* %965, align 8, !tbaa !23
  %967 = trunc i64 %966 to i32
  store i32 %967, i32* %43, align 8, !tbaa !96
  %968 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %969 = load i64, i64* %968, align 8, !tbaa.struct !99
  %970 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %971 = load i64, i64* %970, align 8, !tbaa.struct !100
  %972 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %973 = load i64, i64* %972, align 8, !tbaa.struct !101
  %974 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 3
  %975 = load i64, i64* %974, align 8, !tbaa.struct !82
  %976 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 4
  %977 = load i64, i64* %976, align 8, !tbaa.struct !83
  %978 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 5
  %979 = load i64, i64* %978, align 8, !tbaa.struct !84
  %980 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 6
  %981 = load i32, i32* %980, align 8, !tbaa.struct !102
  %982 = load i32, i32* %32, align 8, !tbaa !103
  %983 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %982, i32 %981) #38
  %984 = extractvalue { i32, i1 } %983, 1
  %985 = extractvalue { i32, i1 } %983, 0
  store i32 %985, i32* %32, align 8
  %986 = load i64, i64* %33, align 8, !tbaa !104
  %987 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %986, i64 %979) #38
  %988 = extractvalue { i64, i1 } %987, 1
  %989 = extractvalue { i64, i1 } %987, 0
  store i64 %989, i64* %33, align 8
  %990 = or i1 %984, %988
  %991 = load i64, i64* %34, align 8, !tbaa !105
  %992 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %991, i64 %977) #38
  %993 = extractvalue { i64, i1 } %992, 1
  %994 = extractvalue { i64, i1 } %992, 0
  store i64 %994, i64* %34, align 8
  %995 = or i1 %990, %993
  %996 = load i64, i64* %35, align 8, !tbaa !106
  %997 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %996, i64 %975) #38
  %998 = extractvalue { i64, i1 } %997, 1
  %999 = extractvalue { i64, i1 } %997, 0
  store i64 %999, i64* %35, align 8
  %1000 = or i1 %995, %998
  %1001 = load i64, i64* %36, align 8, !tbaa !107
  %1002 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1001, i64 %973) #38
  %1003 = extractvalue { i64, i1 } %1002, 1
  %1004 = extractvalue { i64, i1 } %1002, 0
  store i64 %1004, i64* %36, align 8
  %1005 = or i1 %1000, %1003
  %1006 = load i64, i64* %37, align 8, !tbaa !108
  %1007 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1006, i64 %971) #38
  %1008 = extractvalue { i64, i1 } %1007, 1
  %1009 = extractvalue { i64, i1 } %1007, 0
  store i64 %1009, i64* %37, align 8
  %1010 = or i1 %1005, %1008
  %1011 = load i64, i64* %38, align 8, !tbaa !109
  %1012 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1011, i64 %969) #38
  %1013 = extractvalue { i64, i1 } %1012, 1
  %1014 = extractvalue { i64, i1 } %1012, 0
  store i64 %1014, i64* %38, align 8
  %1015 = or i1 %1010, %1013
  br i1 %1015, label %1830, label %1016

1016:                                             ; preds = %964
  store i8 1, i8* %19, align 1, !tbaa !110
  %1017 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.168, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_relative_time(i8* noundef %1017, %struct.parser_control* noundef nonnull %0)
  br label %1787

1018:                                             ; preds = %787
  store i32 -25200, i32* %43, align 8, !tbaa !96
  %1019 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1020 = load i64, i64* %1019, align 8, !tbaa.struct !99
  %1021 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1022 = load i64, i64* %1021, align 8, !tbaa.struct !100
  %1023 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1024 = load i64, i64* %1023, align 8, !tbaa.struct !101
  %1025 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 3
  %1026 = load i64, i64* %1025, align 8, !tbaa.struct !82
  %1027 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 4
  %1028 = load i64, i64* %1027, align 8, !tbaa.struct !83
  %1029 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 5
  %1030 = load i64, i64* %1029, align 8, !tbaa.struct !84
  %1031 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 6
  %1032 = load i32, i32* %1031, align 8, !tbaa.struct !102
  %1033 = load i32, i32* %32, align 8, !tbaa !103
  %1034 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1033, i32 %1032) #38
  %1035 = extractvalue { i32, i1 } %1034, 1
  %1036 = extractvalue { i32, i1 } %1034, 0
  store i32 %1036, i32* %32, align 8
  %1037 = load i64, i64* %33, align 8, !tbaa !104
  %1038 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1037, i64 %1030) #38
  %1039 = extractvalue { i64, i1 } %1038, 1
  %1040 = extractvalue { i64, i1 } %1038, 0
  store i64 %1040, i64* %33, align 8
  %1041 = or i1 %1035, %1039
  %1042 = load i64, i64* %34, align 8, !tbaa !105
  %1043 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1042, i64 %1028) #38
  %1044 = extractvalue { i64, i1 } %1043, 1
  %1045 = extractvalue { i64, i1 } %1043, 0
  store i64 %1045, i64* %34, align 8
  %1046 = or i1 %1041, %1044
  %1047 = load i64, i64* %35, align 8, !tbaa !106
  %1048 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1047, i64 %1026) #38
  %1049 = extractvalue { i64, i1 } %1048, 1
  %1050 = extractvalue { i64, i1 } %1048, 0
  store i64 %1050, i64* %35, align 8
  %1051 = or i1 %1046, %1049
  %1052 = load i64, i64* %36, align 8, !tbaa !107
  %1053 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1052, i64 %1024) #38
  %1054 = extractvalue { i64, i1 } %1053, 1
  %1055 = extractvalue { i64, i1 } %1053, 0
  store i64 %1055, i64* %36, align 8
  %1056 = or i1 %1051, %1054
  %1057 = load i64, i64* %37, align 8, !tbaa !108
  %1058 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1057, i64 %1022) #38
  %1059 = extractvalue { i64, i1 } %1058, 1
  %1060 = extractvalue { i64, i1 } %1058, 0
  store i64 %1060, i64* %37, align 8
  %1061 = or i1 %1056, %1059
  %1062 = load i64, i64* %38, align 8, !tbaa !109
  %1063 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1062, i64 %1020) #38
  %1064 = extractvalue { i64, i1 } %1063, 1
  %1065 = extractvalue { i64, i1 } %1063, 0
  store i64 %1065, i64* %38, align 8
  %1066 = or i1 %1061, %1064
  br i1 %1066, label %1830, label %1067

1067:                                             ; preds = %1018
  store i8 1, i8* %19, align 1, !tbaa !110
  %1068 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.168, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @debug_print_relative_time(i8* noundef %1068, %struct.parser_control* noundef nonnull %0)
  br label %1787

1069:                                             ; preds = %787
  %1070 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1071 = load i64, i64* %1070, align 8, !tbaa !23
  %1072 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1
  %1073 = bitcast %union.YYSTYPE* %1072 to i8*
  %1074 = load i8, i8* %1073, align 8, !tbaa.struct !95
  %1075 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1076 = load i64, i64* %1075, align 8, !tbaa.struct !32
  %1077 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 2
  %1078 = load i64, i64* %1077, align 8, !tbaa.struct !34
  %1079 = icmp slt i64 %1078, 3
  %1080 = icmp slt i64 %1071, 0
  %1081 = and i1 %1080, %1079
  %1082 = mul nsw i64 %1076, 100
  %1083 = select i1 %1081, i64 %1082, i64 %1076
  br i1 %1080, label %1084, label %1091

1084:                                             ; preds = %1069
  %1085 = freeze i64 %1083
  %1086 = sdiv i64 %1085, 100
  %1087 = mul nsw i64 %1086, 60
  %1088 = mul i64 %1086, 100
  %1089 = sub i64 %1085, %1088
  %1090 = add nsw i64 %1087, %1089
  br label %1110

1091:                                             ; preds = %1069
  %1092 = icmp slt i64 %1083, 0
  br i1 %1092, label %1093, label %1096

1093:                                             ; preds = %1091
  %1094 = add i64 %1083, -1
  %1095 = icmp ult i64 %1094, -153722867280912931
  br i1 %1095, label %1099, label %1098

1096:                                             ; preds = %1091
  %1097 = icmp ugt i64 %1083, 153722867280912930
  br i1 %1097, label %1099, label %1098

1098:                                             ; preds = %1096, %1093
  br label %1099

1099:                                             ; preds = %1098, %1096, %1093
  %1100 = phi i1 [ false, %1098 ], [ true, %1096 ], [ true, %1093 ]
  %1101 = mul i64 %1083, 60
  %1102 = icmp eq i8 %1074, 0
  %1103 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1101, i64 %1071) #38
  %1104 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1101, i64 %1071) #38
  %1105 = select i1 %1102, { i64, i1 } %1104, { i64, i1 } %1103
  %1106 = extractvalue { i64, i1 } %1105, 1
  %1107 = extractvalue { i64, i1 } %1105, 0
  %1108 = or i1 %1106, %1100
  %1109 = xor i1 %1108, true
  br label %1110

1110:                                             ; preds = %1099, %1084
  %1111 = phi i64 [ %1090, %1084 ], [ %1107, %1099 ]
  %1112 = phi i1 [ true, %1084 ], [ %1109, %1099 ]
  %1113 = icmp sgt i64 %1111, -1441
  %1114 = select i1 %1112, i1 %1113, i1 false
  %1115 = icmp slt i64 %1111, 1441
  %1116 = select i1 %1114, i1 %1115, i1 false
  br i1 %1116, label %1117, label %1830

1117:                                             ; preds = %1110
  %1118 = trunc i64 %1111 to i32
  %1119 = mul nsw i32 %1118, 60
  store i32 %1119, i32* %43, align 8, !tbaa !96
  %1120 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 0
  %1121 = load i64, i64* %1120, align 8, !tbaa !23
  %1122 = sext i32 %1119 to i64
  %1123 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1122, i64 %1121)
  %1124 = extractvalue { i64, i1 } %1123, 1
  %1125 = extractvalue { i64, i1 } %1123, 0
  %1126 = trunc i64 %1125 to i32
  %1127 = add i64 %1125, -2147483648
  %1128 = icmp ult i64 %1127, -4294967296
  %1129 = or i1 %1124, %1128
  store i32 %1126, i32* %43, align 8
  br i1 %1129, label %1830, label %1787

1130:                                             ; preds = %787
  %1131 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1132 = load i64, i64* %1131, align 8, !tbaa !23
  %1133 = trunc i64 %1132 to i32
  %1134 = add i32 %1133, 3600
  store i32 %1134, i32* %43, align 8, !tbaa !96
  br label %1787

1135:                                             ; preds = %787
  %1136 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1137 = load i64, i64* %1136, align 8, !tbaa !23
  %1138 = trunc i64 %1137 to i32
  %1139 = add i32 %1138, 3600
  store i32 %1139, i32* %43, align 8, !tbaa !96
  br label %1787

1140:                                             ; preds = %787
  store i64 0, i64* %40, align 8, !tbaa !111
  %1141 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1142 = load i64, i64* %1141, align 8, !tbaa !23
  %1143 = trunc i64 %1142 to i32
  store i32 %1143, i32* %41, align 8, !tbaa !112
  br label %1787

1144:                                             ; preds = %787
  store i64 0, i64* %40, align 8, !tbaa !111
  %1145 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1146 = load i64, i64* %1145, align 8, !tbaa !23
  %1147 = trunc i64 %1146 to i32
  store i32 %1147, i32* %41, align 8, !tbaa !112
  br label %1787

1148:                                             ; preds = %787
  %1149 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1150 = load i64, i64* %1149, align 8, !tbaa !23
  store i64 %1150, i64* %40, align 8, !tbaa !111
  %1151 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1152 = load i64, i64* %1151, align 8, !tbaa !23
  %1153 = trunc i64 %1152 to i32
  store i32 %1153, i32* %41, align 8, !tbaa !112
  store i8 1, i8* %42, align 1, !tbaa !113
  br label %1787

1154:                                             ; preds = %787
  %1155 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1156 = load i64, i64* %1155, align 8, !tbaa !23
  store i64 %1156, i64* %40, align 8, !tbaa !111
  %1157 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1158 = load i64, i64* %1157, align 8, !tbaa !23
  %1159 = trunc i64 %1158 to i32
  store i32 %1159, i32* %41, align 8, !tbaa !112
  store i8 1, i8* %42, align 1, !tbaa !113
  br label %1787

1160:                                             ; preds = %787
  %1161 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1162 = load i64, i64* %1161, align 8, !tbaa !23
  store i64 %1162, i64* %31, align 8, !tbaa !114
  %1163 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1164 = load i64, i64* %1163, align 8, !tbaa !23
  store i64 %1164, i64* %30, align 8, !tbaa !115
  br label %1787

1165:                                             ; preds = %787
  %1166 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4
  %1167 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4, i32 0, i32 2
  %1168 = load i64, i64* %1167, align 8, !tbaa !23
  %1169 = icmp sgt i64 %1168, 3
  %1170 = load i8, i8* %15, align 2, !tbaa !75
  %1171 = icmp eq i8 %1170, 0
  br i1 %1169, label %1172, label %1183

1172:                                             ; preds = %1165
  br i1 %1171, label %1177, label %1173

1173:                                             ; preds = %1172
  %1174 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12.171, i64 0, i64 0), i32 noundef 5) #38
  %1175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4, i32 0, i32 1
  %1176 = load i64, i64* %1175, align 8, !tbaa !23
  call void (i8*, ...) @dbg_printf(i8* noundef %1174, i64 noundef %1176, i64 noundef %1168)
  br label %1177

1177:                                             ; preds = %1173, %1172
  %1178 = bitcast %union.YYSTYPE* %1166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1178, i64 24, i1 false), !tbaa.struct !95
  %1179 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1180 = load i64, i64* %1179, align 8, !tbaa !23
  store i64 %1180, i64* %31, align 8, !tbaa !114
  %1181 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1182 = load i64, i64* %1181, align 8, !tbaa !23
  store i64 %1182, i64* %30, align 8, !tbaa !115
  br label %1787

1183:                                             ; preds = %1165
  br i1 %1171, label %1188, label %1184

1184:                                             ; preds = %1183
  %1185 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13.172, i64 0, i64 0), i32 noundef 5) #38
  %1186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4, i32 0, i32 1
  %1187 = load i64, i64* %1186, align 8, !tbaa !23
  call void (i8*, ...) @dbg_printf(i8* noundef %1185, i64 noundef %1187)
  br label %1188

1188:                                             ; preds = %1184, %1183
  %1189 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4, i32 0, i32 1
  %1190 = load i64, i64* %1189, align 8, !tbaa !23
  store i64 %1190, i64* %31, align 8, !tbaa !114
  %1191 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1192 = load i64, i64* %1191, align 8, !tbaa !23
  store i64 %1192, i64* %30, align 8, !tbaa !115
  %1193 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1193, i64 24, i1 false), !tbaa.struct !95
  br label %1787

1194:                                             ; preds = %787
  %1195 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 1
  %1196 = load i64, i64* %1195, align 8, !tbaa !23
  store i64 %1196, i64* %30, align 8, !tbaa !115
  %1197 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1198 = load i64, i64* %1197, align 8, !tbaa !23
  store i64 %1198, i64* %31, align 8, !tbaa !114
  br label %1787

1199:                                             ; preds = %787
  %1200 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -4, i32 0, i32 1
  %1201 = load i64, i64* %1200, align 8, !tbaa !23
  store i64 %1201, i64* %30, align 8, !tbaa !115
  %1202 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1203 = load i64, i64* %1202, align 8, !tbaa !23
  store i64 %1203, i64* %31, align 8, !tbaa !114
  %1204 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1204, i64 24, i1 false), !tbaa.struct !95
  br label %1787

1205:                                             ; preds = %787
  %1206 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1207 = load i64, i64* %1206, align 8, !tbaa !23
  store i64 %1207, i64* %30, align 8, !tbaa !115
  %1208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1209 = load i64, i64* %1208, align 8, !tbaa !23
  store i64 %1209, i64* %31, align 8, !tbaa !114
  %1210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1211 = load i64, i64* %1210, align 8, !tbaa !23
  %1212 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %1211)
  %1213 = extractvalue { i64, i1 } %1212, 1
  %1214 = extractvalue { i64, i1 } %1212, 0
  store i64 %1214, i64* %24, align 8
  br i1 %1213, label %1830, label %1215

1215:                                             ; preds = %1205
  %1216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1217 = load i64, i64* %1216, align 8, !tbaa !23
  store i64 %1217, i64* %18, align 8, !tbaa !116
  br label %1787

1218:                                             ; preds = %787
  %1219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 0
  %1220 = load i64, i64* %1219, align 8, !tbaa !23
  store i64 %1220, i64* %31, align 8, !tbaa !114
  %1221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1222 = load i64, i64* %1221, align 8, !tbaa !23
  %1223 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %1222)
  %1224 = extractvalue { i64, i1 } %1223, 1
  %1225 = extractvalue { i64, i1 } %1223, 0
  store i64 %1225, i64* %30, align 8
  br i1 %1224, label %1830, label %1226

1226:                                             ; preds = %1218
  %1227 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1228 = load i64, i64* %1227, align 8, !tbaa !23
  %1229 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %1228)
  %1230 = extractvalue { i64, i1 } %1229, 1
  %1231 = extractvalue { i64, i1 } %1229, 0
  store i64 %1231, i64* %24, align 8
  br i1 %1230, label %1830, label %1232

1232:                                             ; preds = %1226
  %1233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1234 = load i64, i64* %1233, align 8, !tbaa !23
  store i64 %1234, i64* %18, align 8, !tbaa !116
  br label %1787

1235:                                             ; preds = %787
  %1236 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1237 = load i64, i64* %1236, align 8, !tbaa !23
  store i64 %1237, i64* %31, align 8, !tbaa !114
  %1238 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1239 = load i64, i64* %1238, align 8, !tbaa !23
  store i64 %1239, i64* %30, align 8, !tbaa !115
  br label %1787

1240:                                             ; preds = %787
  %1241 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -3, i32 0, i32 0
  %1242 = load i64, i64* %1241, align 8, !tbaa !23
  store i64 %1242, i64* %31, align 8, !tbaa !114
  %1243 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1244 = load i64, i64* %1243, align 8, !tbaa !23
  store i64 %1244, i64* %30, align 8, !tbaa !115
  %1245 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1245, i64 24, i1 false), !tbaa.struct !95
  br label %1787

1246:                                             ; preds = %787
  %1247 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1248 = load i64, i64* %1247, align 8, !tbaa !23
  store i64 %1248, i64* %30, align 8, !tbaa !115
  %1249 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1250 = load i64, i64* %1249, align 8, !tbaa !23
  store i64 %1250, i64* %31, align 8, !tbaa !114
  br label %1787

1251:                                             ; preds = %787
  %1252 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2, i32 0, i32 1
  %1253 = load i64, i64* %1252, align 8, !tbaa !23
  store i64 %1253, i64* %30, align 8, !tbaa !115
  %1254 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1255 = load i64, i64* %1254, align 8, !tbaa !23
  store i64 %1255, i64* %31, align 8, !tbaa !114
  %1256 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1256, i64 24, i1 false), !tbaa.struct !95
  br label %1787

1257:                                             ; preds = %787
  %1258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -2
  %1259 = bitcast %union.YYSTYPE* %1258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %39, i8* noundef nonnull align 8 dereferenceable(24) %1259, i64 24, i1 false), !tbaa.struct !95
  %1260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1261 = load i64, i64* %1260, align 8, !tbaa !23
  %1262 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %1261)
  %1263 = extractvalue { i64, i1 } %1262, 1
  %1264 = extractvalue { i64, i1 } %1262, 0
  store i64 %1264, i64* %31, align 8
  br i1 %1263, label %1830, label %1265

1265:                                             ; preds = %1257
  %1266 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1267 = load i64, i64* %1266, align 8, !tbaa !23
  %1268 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %1267)
  %1269 = extractvalue { i64, i1 } %1268, 1
  %1270 = extractvalue { i64, i1 } %1268, 0
  store i64 %1270, i64* %30, align 8
  br i1 %1269, label %1830, label %1787

1271:                                             ; preds = %787
  %1272 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1273 = load i64, i64* %1272, align 8, !tbaa !23
  %1274 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1275 = load i64, i64* %1274, align 8, !tbaa.struct !99
  %1276 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1277 = load i64, i64* %1276, align 8, !tbaa.struct !100
  %1278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 2
  %1279 = load i64, i64* %1278, align 8, !tbaa.struct !101
  %1280 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 3
  %1281 = load i64, i64* %1280, align 8, !tbaa.struct !82
  %1282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 4
  %1283 = load i64, i64* %1282, align 8, !tbaa.struct !83
  %1284 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 5
  %1285 = load i64, i64* %1284, align 8, !tbaa.struct !84
  %1286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 6
  %1287 = load i32, i32* %1286, align 8, !tbaa.struct !102
  %1288 = and i64 %1273, 2147483648
  %1289 = icmp eq i64 %1288, 0
  %1290 = load i32, i32* %32, align 8, !tbaa !103
  br i1 %1289, label %1325, label %1291

1291:                                             ; preds = %1271
  %1292 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1290, i32 %1287) #38
  %1293 = extractvalue { i32, i1 } %1292, 1
  %1294 = extractvalue { i32, i1 } %1292, 0
  store i32 %1294, i32* %32, align 8
  %1295 = load i64, i64* %33, align 8, !tbaa !104
  %1296 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1295, i64 %1285) #38
  %1297 = extractvalue { i64, i1 } %1296, 1
  %1298 = extractvalue { i64, i1 } %1296, 0
  store i64 %1298, i64* %33, align 8
  %1299 = or i1 %1293, %1297
  %1300 = load i64, i64* %34, align 8, !tbaa !105
  %1301 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1300, i64 %1283) #38
  %1302 = extractvalue { i64, i1 } %1301, 1
  %1303 = extractvalue { i64, i1 } %1301, 0
  store i64 %1303, i64* %34, align 8
  %1304 = or i1 %1299, %1302
  %1305 = load i64, i64* %35, align 8, !tbaa !106
  %1306 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1305, i64 %1281) #38
  %1307 = extractvalue { i64, i1 } %1306, 1
  %1308 = extractvalue { i64, i1 } %1306, 0
  store i64 %1308, i64* %35, align 8
  %1309 = or i1 %1304, %1307
  %1310 = load i64, i64* %36, align 8, !tbaa !107
  %1311 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1310, i64 %1279) #38
  %1312 = extractvalue { i64, i1 } %1311, 1
  %1313 = extractvalue { i64, i1 } %1311, 0
  store i64 %1313, i64* %36, align 8
  %1314 = or i1 %1309, %1312
  %1315 = load i64, i64* %37, align 8, !tbaa !108
  %1316 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1315, i64 %1277) #38
  %1317 = extractvalue { i64, i1 } %1316, 1
  %1318 = extractvalue { i64, i1 } %1316, 0
  store i64 %1318, i64* %37, align 8
  %1319 = or i1 %1314, %1317
  %1320 = load i64, i64* %38, align 8, !tbaa !109
  %1321 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1320, i64 %1275) #38
  %1322 = extractvalue { i64, i1 } %1321, 1
  %1323 = extractvalue { i64, i1 } %1321, 0
  store i64 %1323, i64* %38, align 8
  %1324 = or i1 %1319, %1322
  br i1 %1324, label %1830, label %1359

1325:                                             ; preds = %1271
  %1326 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1290, i32 %1287) #38
  %1327 = extractvalue { i32, i1 } %1326, 1
  %1328 = extractvalue { i32, i1 } %1326, 0
  store i32 %1328, i32* %32, align 8
  %1329 = load i64, i64* %33, align 8, !tbaa !104
  %1330 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1329, i64 %1285) #38
  %1331 = extractvalue { i64, i1 } %1330, 1
  %1332 = extractvalue { i64, i1 } %1330, 0
  store i64 %1332, i64* %33, align 8
  %1333 = or i1 %1327, %1331
  %1334 = load i64, i64* %34, align 8, !tbaa !105
  %1335 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1334, i64 %1283) #38
  %1336 = extractvalue { i64, i1 } %1335, 1
  %1337 = extractvalue { i64, i1 } %1335, 0
  store i64 %1337, i64* %34, align 8
  %1338 = or i1 %1333, %1336
  %1339 = load i64, i64* %35, align 8, !tbaa !106
  %1340 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1339, i64 %1281) #38
  %1341 = extractvalue { i64, i1 } %1340, 1
  %1342 = extractvalue { i64, i1 } %1340, 0
  store i64 %1342, i64* %35, align 8
  %1343 = or i1 %1338, %1341
  %1344 = load i64, i64* %36, align 8, !tbaa !107
  %1345 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1344, i64 %1279) #38
  %1346 = extractvalue { i64, i1 } %1345, 1
  %1347 = extractvalue { i64, i1 } %1345, 0
  store i64 %1347, i64* %36, align 8
  %1348 = or i1 %1343, %1346
  %1349 = load i64, i64* %37, align 8, !tbaa !108
  %1350 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1349, i64 %1277) #38
  %1351 = extractvalue { i64, i1 } %1350, 1
  %1352 = extractvalue { i64, i1 } %1350, 0
  store i64 %1352, i64* %37, align 8
  %1353 = or i1 %1348, %1351
  %1354 = load i64, i64* %38, align 8, !tbaa !109
  %1355 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1354, i64 %1275) #38
  %1356 = extractvalue { i64, i1 } %1355, 1
  %1357 = extractvalue { i64, i1 } %1355, 0
  store i64 %1357, i64* %38, align 8
  %1358 = or i1 %1353, %1356
  br i1 %1358, label %1830, label %1359

1359:                                             ; preds = %1291, %1325
  store i8 1, i8* %19, align 1, !tbaa !110
  br label %1787

1360:                                             ; preds = %787
  %1361 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1362 = load i64, i64* %1361, align 8, !tbaa.struct !99
  %1363 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1364 = load i64, i64* %1363, align 8, !tbaa.struct !100
  %1365 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1366 = load i64, i64* %1365, align 8, !tbaa.struct !101
  %1367 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 3
  %1368 = load i64, i64* %1367, align 8, !tbaa.struct !82
  %1369 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 4
  %1370 = load i64, i64* %1369, align 8, !tbaa.struct !83
  %1371 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 5
  %1372 = load i64, i64* %1371, align 8, !tbaa.struct !84
  %1373 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 6
  %1374 = load i32, i32* %1373, align 8, !tbaa.struct !102
  %1375 = load i32, i32* %32, align 8, !tbaa !103
  %1376 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1375, i32 %1374) #38
  %1377 = extractvalue { i32, i1 } %1376, 1
  %1378 = extractvalue { i32, i1 } %1376, 0
  store i32 %1378, i32* %32, align 8
  %1379 = load i64, i64* %33, align 8, !tbaa !104
  %1380 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1379, i64 %1372) #38
  %1381 = extractvalue { i64, i1 } %1380, 1
  %1382 = extractvalue { i64, i1 } %1380, 0
  store i64 %1382, i64* %33, align 8
  %1383 = or i1 %1377, %1381
  %1384 = load i64, i64* %34, align 8, !tbaa !105
  %1385 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1384, i64 %1370) #38
  %1386 = extractvalue { i64, i1 } %1385, 1
  %1387 = extractvalue { i64, i1 } %1385, 0
  store i64 %1387, i64* %34, align 8
  %1388 = or i1 %1383, %1386
  %1389 = load i64, i64* %35, align 8, !tbaa !106
  %1390 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1389, i64 %1368) #38
  %1391 = extractvalue { i64, i1 } %1390, 1
  %1392 = extractvalue { i64, i1 } %1390, 0
  store i64 %1392, i64* %35, align 8
  %1393 = or i1 %1388, %1391
  %1394 = load i64, i64* %36, align 8, !tbaa !107
  %1395 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1394, i64 %1366) #38
  %1396 = extractvalue { i64, i1 } %1395, 1
  %1397 = extractvalue { i64, i1 } %1395, 0
  store i64 %1397, i64* %36, align 8
  %1398 = or i1 %1393, %1396
  %1399 = load i64, i64* %37, align 8, !tbaa !108
  %1400 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1399, i64 %1364) #38
  %1401 = extractvalue { i64, i1 } %1400, 1
  %1402 = extractvalue { i64, i1 } %1400, 0
  store i64 %1402, i64* %37, align 8
  %1403 = or i1 %1398, %1401
  %1404 = load i64, i64* %38, align 8, !tbaa !109
  %1405 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1404, i64 %1362) #38
  %1406 = extractvalue { i64, i1 } %1405, 1
  %1407 = extractvalue { i64, i1 } %1405, 0
  store i64 %1407, i64* %38, align 8
  %1408 = or i1 %1403, %1406
  br i1 %1408, label %1830, label %1409

1409:                                             ; preds = %1360
  store i8 1, i8* %19, align 1, !tbaa !110
  br label %1787

1410:                                             ; preds = %787
  %1411 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1412 = load i64, i64* %1411, align 8, !tbaa.struct !99
  %1413 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1414 = load i64, i64* %1413, align 8, !tbaa.struct !100
  %1415 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1416 = load i64, i64* %1415, align 8, !tbaa.struct !101
  %1417 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 3
  %1418 = load i64, i64* %1417, align 8, !tbaa.struct !82
  %1419 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 4
  %1420 = load i64, i64* %1419, align 8, !tbaa.struct !83
  %1421 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 5
  %1422 = load i64, i64* %1421, align 8, !tbaa.struct !84
  %1423 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 6
  %1424 = load i32, i32* %1423, align 8, !tbaa.struct !102
  %1425 = load i32, i32* %32, align 8, !tbaa !103
  %1426 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1425, i32 %1424) #38
  %1427 = extractvalue { i32, i1 } %1426, 1
  %1428 = extractvalue { i32, i1 } %1426, 0
  store i32 %1428, i32* %32, align 8
  %1429 = load i64, i64* %33, align 8, !tbaa !104
  %1430 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1429, i64 %1422) #38
  %1431 = extractvalue { i64, i1 } %1430, 1
  %1432 = extractvalue { i64, i1 } %1430, 0
  store i64 %1432, i64* %33, align 8
  %1433 = or i1 %1427, %1431
  %1434 = load i64, i64* %34, align 8, !tbaa !105
  %1435 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1434, i64 %1420) #38
  %1436 = extractvalue { i64, i1 } %1435, 1
  %1437 = extractvalue { i64, i1 } %1435, 0
  store i64 %1437, i64* %34, align 8
  %1438 = or i1 %1433, %1436
  %1439 = load i64, i64* %35, align 8, !tbaa !106
  %1440 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1439, i64 %1418) #38
  %1441 = extractvalue { i64, i1 } %1440, 1
  %1442 = extractvalue { i64, i1 } %1440, 0
  store i64 %1442, i64* %35, align 8
  %1443 = or i1 %1438, %1441
  %1444 = load i64, i64* %36, align 8, !tbaa !107
  %1445 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1444, i64 %1416) #38
  %1446 = extractvalue { i64, i1 } %1445, 1
  %1447 = extractvalue { i64, i1 } %1445, 0
  store i64 %1447, i64* %36, align 8
  %1448 = or i1 %1443, %1446
  %1449 = load i64, i64* %37, align 8, !tbaa !108
  %1450 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1449, i64 %1414) #38
  %1451 = extractvalue { i64, i1 } %1450, 1
  %1452 = extractvalue { i64, i1 } %1450, 0
  store i64 %1452, i64* %37, align 8
  %1453 = or i1 %1448, %1451
  %1454 = load i64, i64* %38, align 8, !tbaa !109
  %1455 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1454, i64 %1412) #38
  %1456 = extractvalue { i64, i1 } %1455, 1
  %1457 = extractvalue { i64, i1 } %1455, 0
  store i64 %1457, i64* %38, align 8
  %1458 = or i1 %1453, %1456
  br i1 %1458, label %1830, label %1459

1459:                                             ; preds = %1410
  store i8 1, i8* %19, align 1, !tbaa !110
  br label %1787

1460:                                             ; preds = %787
  %1461 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1462 = load i64, i64* %1461, align 8, !tbaa !23
  br label %1787

1463:                                             ; preds = %787
  %1464 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1465 = load i64, i64* %1464, align 8, !tbaa !23
  br label %1787

1466:                                             ; preds = %787
  br label %1787

1467:                                             ; preds = %787
  %1468 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1469 = load i64, i64* %1468, align 8, !tbaa !23
  br label %1787

1470:                                             ; preds = %787
  %1471 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1472 = load i64, i64* %1471, align 8, !tbaa !23
  br label %1787

1473:                                             ; preds = %787
  br label %1787

1474:                                             ; preds = %787
  %1475 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1476 = load i64, i64* %1475, align 8, !tbaa !23
  %1477 = icmp slt i64 %1476, 0
  br i1 %1477, label %1478, label %1493

1478:                                             ; preds = %1474
  %1479 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1480 = load i64, i64* %1479, align 8, !tbaa !23
  %1481 = icmp slt i64 %1480, 0
  br i1 %1481, label %1482, label %1487

1482:                                             ; preds = %1478
  %1483 = sub i64 0, %1476
  %1484 = udiv i64 9223372036854775807, %1483
  %1485 = sub nsw i64 0, %1484
  %1486 = icmp slt i64 %1480, %1485
  br i1 %1486, label %1830, label %1508

1487:                                             ; preds = %1478
  %1488 = icmp eq i64 %1476, -1
  br i1 %1488, label %1508, label %1489

1489:                                             ; preds = %1487
  %1490 = sub i64 0, %1476
  %1491 = udiv i64 -9223372036854775808, %1490
  %1492 = icmp ult i64 %1491, %1480
  br i1 %1492, label %1830, label %1508

1493:                                             ; preds = %1474
  %1494 = icmp eq i64 %1476, 0
  %1495 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1496 = load i64, i64* %1495, align 8, !tbaa !23
  br i1 %1494, label %1508, label %1497

1497:                                             ; preds = %1493
  %1498 = icmp slt i64 %1496, 0
  br i1 %1498, label %1499, label %1505

1499:                                             ; preds = %1497
  %1500 = icmp eq i64 %1496, -1
  br i1 %1500, label %1508, label %1501

1501:                                             ; preds = %1499
  %1502 = sub i64 0, %1496
  %1503 = udiv i64 -9223372036854775808, %1502
  %1504 = icmp ult i64 %1503, %1476
  br i1 %1504, label %1830, label %1508

1505:                                             ; preds = %1497
  %1506 = udiv i64 9223372036854775807, %1476
  %1507 = icmp ult i64 %1506, %1496
  br i1 %1507, label %1830, label %1508

1508:                                             ; preds = %1493, %1482, %1489, %1501, %1505, %1487, %1499
  %1509 = phi i64 [ %1480, %1482 ], [ %1480, %1489 ], [ %1496, %1501 ], [ %1496, %1505 ], [ %1480, %1487 ], [ -1, %1499 ], [ %1496, %1493 ]
  %1510 = mul i64 %1509, %1476
  br label %1787

1511:                                             ; preds = %787
  %1512 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1513 = load i64, i64* %1512, align 8, !tbaa !23
  %1514 = icmp slt i64 %1513, 0
  br i1 %1514, label %1515, label %1530

1515:                                             ; preds = %1511
  %1516 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1517 = load i64, i64* %1516, align 8, !tbaa !23
  %1518 = icmp slt i64 %1517, 0
  br i1 %1518, label %1519, label %1524

1519:                                             ; preds = %1515
  %1520 = sub i64 0, %1513
  %1521 = udiv i64 9223372036854775807, %1520
  %1522 = sub nsw i64 0, %1521
  %1523 = icmp slt i64 %1517, %1522
  br i1 %1523, label %1830, label %1545

1524:                                             ; preds = %1515
  %1525 = icmp eq i64 %1513, -1
  br i1 %1525, label %1545, label %1526

1526:                                             ; preds = %1524
  %1527 = sub i64 0, %1513
  %1528 = udiv i64 -9223372036854775808, %1527
  %1529 = icmp ult i64 %1528, %1517
  br i1 %1529, label %1830, label %1545

1530:                                             ; preds = %1511
  %1531 = icmp eq i64 %1513, 0
  %1532 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1533 = load i64, i64* %1532, align 8, !tbaa !23
  br i1 %1531, label %1545, label %1534

1534:                                             ; preds = %1530
  %1535 = icmp slt i64 %1533, 0
  br i1 %1535, label %1536, label %1542

1536:                                             ; preds = %1534
  %1537 = icmp eq i64 %1533, -1
  br i1 %1537, label %1545, label %1538

1538:                                             ; preds = %1536
  %1539 = sub i64 0, %1533
  %1540 = udiv i64 -9223372036854775808, %1539
  %1541 = icmp ult i64 %1540, %1513
  br i1 %1541, label %1830, label %1545

1542:                                             ; preds = %1534
  %1543 = udiv i64 9223372036854775807, %1513
  %1544 = icmp ult i64 %1543, %1533
  br i1 %1544, label %1830, label %1545

1545:                                             ; preds = %1530, %1519, %1526, %1538, %1542, %1524, %1536
  %1546 = phi i64 [ %1517, %1519 ], [ %1517, %1526 ], [ %1533, %1538 ], [ %1533, %1542 ], [ %1517, %1524 ], [ -1, %1536 ], [ %1533, %1530 ]
  %1547 = mul i64 %1546, %1513
  br label %1787

1548:                                             ; preds = %787
  %1549 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1550 = load i64, i64* %1549, align 8, !tbaa !23
  br label %1787

1551:                                             ; preds = %787
  %1552 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1553 = load i64, i64* %1552, align 8, !tbaa !23
  br label %1787

1554:                                             ; preds = %787
  %1555 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1556 = load i64, i64* %1555, align 8, !tbaa !23
  br label %1787

1557:                                             ; preds = %787
  br label %1787

1558:                                             ; preds = %787
  %1559 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1560 = load i64, i64* %1559, align 8, !tbaa !23
  br label %1787

1561:                                             ; preds = %787
  %1562 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1563 = load i64, i64* %1562, align 8, !tbaa !23
  br label %1787

1564:                                             ; preds = %787
  br label %1787

1565:                                             ; preds = %787
  %1566 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1567 = load i64, i64* %1566, align 8, !tbaa !23
  br label %1787

1568:                                             ; preds = %787
  %1569 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1570 = load i64, i64* %1569, align 8, !tbaa !23
  br label %1787

1571:                                             ; preds = %787
  %1572 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1573 = load i64, i64* %1572, align 8, !tbaa !23
  %1574 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1575 = load i64, i64* %1574, align 8, !tbaa !23
  %1576 = trunc i64 %1575 to i32
  %1577 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %1576, i64 0
  br label %1787

1578:                                             ; preds = %787
  %1579 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1580 = load i64, i64* %1579, align 8, !tbaa !23
  %1581 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1582 = load i64, i64* %1581, align 8, !tbaa !23
  %1583 = trunc i64 %1582 to i32
  %1584 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %1583, i64 0
  br label %1787

1585:                                             ; preds = %787
  br label %1787

1586:                                             ; preds = %787
  %1587 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1588 = load i64, i64* %1587, align 8, !tbaa !23
  br label %1787

1589:                                             ; preds = %787
  %1590 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1591 = load i64, i64* %1590, align 8, !tbaa !23
  br label %1787

1592:                                             ; preds = %787
  %1593 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1594 = load i64, i64* %1593, align 8, !tbaa !23
  %1595 = icmp slt i64 %1594, 0
  br i1 %1595, label %1596, label %1611

1596:                                             ; preds = %1592
  %1597 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1598 = load i64, i64* %1597, align 8, !tbaa !23
  %1599 = icmp slt i64 %1598, 0
  br i1 %1599, label %1600, label %1605

1600:                                             ; preds = %1596
  %1601 = sub i64 0, %1594
  %1602 = udiv i64 9223372036854775807, %1601
  %1603 = sub nsw i64 0, %1602
  %1604 = icmp slt i64 %1598, %1603
  br i1 %1604, label %1830, label %1626

1605:                                             ; preds = %1596
  %1606 = icmp eq i64 %1594, -1
  br i1 %1606, label %1626, label %1607

1607:                                             ; preds = %1605
  %1608 = sub i64 0, %1594
  %1609 = udiv i64 -9223372036854775808, %1608
  %1610 = icmp ult i64 %1609, %1598
  br i1 %1610, label %1830, label %1626

1611:                                             ; preds = %1592
  %1612 = icmp eq i64 %1594, 0
  %1613 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1614 = load i64, i64* %1613, align 8, !tbaa !23
  br i1 %1612, label %1626, label %1615

1615:                                             ; preds = %1611
  %1616 = icmp slt i64 %1614, 0
  br i1 %1616, label %1617, label %1623

1617:                                             ; preds = %1615
  %1618 = icmp eq i64 %1614, -1
  br i1 %1618, label %1626, label %1619

1619:                                             ; preds = %1617
  %1620 = sub i64 0, %1614
  %1621 = udiv i64 -9223372036854775808, %1620
  %1622 = icmp ult i64 %1621, %1594
  br i1 %1622, label %1830, label %1626

1623:                                             ; preds = %1615
  %1624 = udiv i64 9223372036854775807, %1594
  %1625 = icmp ult i64 %1624, %1614
  br i1 %1625, label %1830, label %1626

1626:                                             ; preds = %1611, %1600, %1607, %1619, %1623, %1605, %1617
  %1627 = phi i64 [ %1598, %1600 ], [ %1598, %1607 ], [ %1614, %1619 ], [ %1614, %1623 ], [ %1598, %1605 ], [ -1, %1617 ], [ %1614, %1611 ]
  %1628 = mul i64 %1627, %1594
  br label %1787

1629:                                             ; preds = %787
  %1630 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1631 = load i64, i64* %1630, align 8, !tbaa !23
  br label %1787

1632:                                             ; preds = %787
  %1633 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1634 = load i64, i64* %1633, align 8, !tbaa !23
  br label %1787

1635:                                             ; preds = %787
  %1636 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1637 = load i64, i64* %1636, align 8, !tbaa !23
  br label %1787

1638:                                             ; preds = %787
  %1639 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1640 = load i64, i64* %1639, align 8, !tbaa !23
  br label %1787

1641:                                             ; preds = %787
  %1642 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1643 = load i64, i64* %1642, align 8, !tbaa !23
  br label %1787

1644:                                             ; preds = %787
  %1645 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1646 = load i64, i64* %1645, align 8, !tbaa !23
  br label %1787

1647:                                             ; preds = %787
  %1648 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1649 = load i64, i64* %1648, align 8, !tbaa.struct !95
  %1650 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1651 = load i64, i64* %1650, align 8, !tbaa.struct !32
  %1652 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1653 = load i64, i64* %1652, align 8, !tbaa.struct !34
  %1654 = load i64, i64* %17, align 8, !tbaa !87
  %1655 = icmp eq i64 %1654, 0
  br i1 %1655, label %1669, label %1656

1656:                                             ; preds = %1647
  %1657 = load i64, i64* %18, align 8, !tbaa !116
  %1658 = icmp eq i64 %1657, 0
  br i1 %1658, label %1659, label %1669

1659:                                             ; preds = %1656
  %1660 = load i8, i8* %19, align 1, !tbaa !110, !range !56
  %1661 = icmp eq i8 %1660, 0
  br i1 %1661, label %1662, label %1669

1662:                                             ; preds = %1659
  %1663 = load i64, i64* %20, align 8, !tbaa !86
  %1664 = icmp ne i64 %1663, 0
  %1665 = icmp sgt i64 %1653, 2
  %1666 = select i1 %1664, i1 true, i1 %1665
  br i1 %1666, label %1668, label %1667

1667:                                             ; preds = %1662
  store i64 1, i64* %20, align 8, !tbaa !86
  br label %1687

1668:                                             ; preds = %1662
  store i8 1, i8* %21, align 8, !tbaa !117
  store i64 %1649, i64* %23, align 8, !tbaa.struct !95
  store i64 %1651, i64* %24, align 8, !tbaa.struct !32
  store i64 %1653, i64* %18, align 8, !tbaa.struct !34
  br label %1787

1669:                                             ; preds = %1659, %1656, %1647
  %1670 = icmp sgt i64 %1653, 4
  br i1 %1670, label %1671, label %1678

1671:                                             ; preds = %1669
  %1672 = add nsw i64 %1654, 1
  store i64 %1672, i64* %17, align 8, !tbaa !87
  %1673 = srem i64 %1651, 100
  store i64 %1673, i64* %30, align 8, !tbaa !115
  %1674 = sdiv i64 %1651, 100
  %1675 = srem i64 %1674, 100
  store i64 %1675, i64* %31, align 8, !tbaa !114
  %1676 = sdiv i64 %1651, 10000
  store i64 %1676, i64* %24, align 8, !tbaa !118
  %1677 = add nsw i64 %1653, -4
  store i64 %1677, i64* %18, align 8, !tbaa !116
  br label %1787

1678:                                             ; preds = %1669
  %1679 = load i64, i64* %20, align 8, !tbaa !86
  %1680 = add nsw i64 %1679, 1
  store i64 %1680, i64* %20, align 8, !tbaa !86
  %1681 = icmp slt i64 %1653, 3
  br i1 %1681, label %1687, label %1682

1682:                                             ; preds = %1678
  %1683 = freeze i64 %1651
  %1684 = sdiv i64 %1683, 100
  %1685 = mul i64 %1684, 100
  %1686 = sub i64 %1683, %1685
  br label %1687

1687:                                             ; preds = %1667, %1682, %1678
  %1688 = phi i64 [ %1684, %1682 ], [ %1651, %1678 ], [ %1651, %1667 ]
  %1689 = phi i64 [ %1686, %1682 ], [ 0, %1678 ], [ 0, %1667 ]
  store i64 %1688, i64* %25, align 8
  store i64 %1689, i64* %26, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false) #38
  store i32 2, i32* %28, align 4, !tbaa !93
  br label %1787

1690:                                             ; preds = %787
  %1691 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 0
  %1692 = load i64, i64* %1691, align 8, !tbaa.struct !95
  %1693 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 1
  %1694 = load i64, i64* %1693, align 8, !tbaa.struct !32
  %1695 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 -1, i32 0, i32 2
  %1696 = load i64, i64* %1695, align 8, !tbaa.struct !34
  %1697 = load i64, i64* %17, align 8, !tbaa !87
  %1698 = icmp eq i64 %1697, 0
  br i1 %1698, label %1712, label %1699

1699:                                             ; preds = %1690
  %1700 = load i64, i64* %18, align 8, !tbaa !116
  %1701 = icmp eq i64 %1700, 0
  br i1 %1701, label %1702, label %1712

1702:                                             ; preds = %1699
  %1703 = load i8, i8* %19, align 1, !tbaa !110, !range !56
  %1704 = icmp eq i8 %1703, 0
  br i1 %1704, label %1705, label %1712

1705:                                             ; preds = %1702
  %1706 = load i64, i64* %20, align 8, !tbaa !86
  %1707 = icmp ne i64 %1706, 0
  %1708 = icmp sgt i64 %1696, 2
  %1709 = select i1 %1707, i1 true, i1 %1708
  br i1 %1709, label %1711, label %1710

1710:                                             ; preds = %1705
  store i64 1, i64* %20, align 8, !tbaa !86
  br label %1730

1711:                                             ; preds = %1705
  store i8 1, i8* %21, align 8, !tbaa !117
  store i64 %1692, i64* %23, align 8, !tbaa.struct !95
  store i64 %1694, i64* %24, align 8, !tbaa.struct !32
  store i64 %1696, i64* %18, align 8, !tbaa.struct !34
  br label %1733

1712:                                             ; preds = %1702, %1699, %1690
  %1713 = icmp sgt i64 %1696, 4
  br i1 %1713, label %1714, label %1721

1714:                                             ; preds = %1712
  %1715 = add nsw i64 %1697, 1
  store i64 %1715, i64* %17, align 8, !tbaa !87
  %1716 = srem i64 %1694, 100
  store i64 %1716, i64* %30, align 8, !tbaa !115
  %1717 = sdiv i64 %1694, 100
  %1718 = srem i64 %1717, 100
  store i64 %1718, i64* %31, align 8, !tbaa !114
  %1719 = sdiv i64 %1694, 10000
  store i64 %1719, i64* %24, align 8, !tbaa !118
  %1720 = add nsw i64 %1696, -4
  store i64 %1720, i64* %18, align 8, !tbaa !116
  br label %1733

1721:                                             ; preds = %1712
  %1722 = load i64, i64* %20, align 8, !tbaa !86
  %1723 = add nsw i64 %1722, 1
  store i64 %1723, i64* %20, align 8, !tbaa !86
  %1724 = icmp slt i64 %1696, 3
  br i1 %1724, label %1730, label %1725

1725:                                             ; preds = %1721
  %1726 = freeze i64 %1694
  %1727 = sdiv i64 %1726, 100
  %1728 = mul i64 %1727, 100
  %1729 = sub i64 %1726, %1728
  br label %1730

1730:                                             ; preds = %1710, %1725, %1721
  %1731 = phi i64 [ %1727, %1725 ], [ %1694, %1721 ], [ %1694, %1710 ]
  %1732 = phi i64 [ %1729, %1725 ], [ 0, %1721 ], [ 0, %1710 ]
  store i64 %1731, i64* %25, align 8
  store i64 %1732, i64* %26, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false) #38
  store i32 2, i32* %28, align 4, !tbaa !93
  br label %1733

1733:                                             ; preds = %1711, %1714, %1730
  %1734 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 0
  %1735 = load i64, i64* %1734, align 8, !tbaa.struct !99
  %1736 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1737 = load i64, i64* %1736, align 8, !tbaa.struct !100
  %1738 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 2
  %1739 = load i64, i64* %1738, align 8, !tbaa.struct !101
  %1740 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 3
  %1741 = load i64, i64* %1740, align 8, !tbaa.struct !82
  %1742 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 4
  %1743 = load i64, i64* %1742, align 8, !tbaa.struct !83
  %1744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 5
  %1745 = load i64, i64* %1744, align 8, !tbaa.struct !84
  %1746 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 6
  %1747 = load i32, i32* %1746, align 8, !tbaa.struct !102
  %1748 = load i32, i32* %32, align 8, !tbaa !103
  %1749 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1748, i32 %1747) #38
  %1750 = extractvalue { i32, i1 } %1749, 1
  %1751 = extractvalue { i32, i1 } %1749, 0
  store i32 %1751, i32* %32, align 8
  %1752 = load i64, i64* %33, align 8, !tbaa !104
  %1753 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1752, i64 %1745) #38
  %1754 = extractvalue { i64, i1 } %1753, 1
  %1755 = extractvalue { i64, i1 } %1753, 0
  store i64 %1755, i64* %33, align 8
  %1756 = or i1 %1750, %1754
  %1757 = load i64, i64* %34, align 8, !tbaa !105
  %1758 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1757, i64 %1743) #38
  %1759 = extractvalue { i64, i1 } %1758, 1
  %1760 = extractvalue { i64, i1 } %1758, 0
  store i64 %1760, i64* %34, align 8
  %1761 = or i1 %1756, %1759
  %1762 = load i64, i64* %35, align 8, !tbaa !106
  %1763 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1762, i64 %1741) #38
  %1764 = extractvalue { i64, i1 } %1763, 1
  %1765 = extractvalue { i64, i1 } %1763, 0
  store i64 %1765, i64* %35, align 8
  %1766 = or i1 %1761, %1764
  %1767 = load i64, i64* %36, align 8, !tbaa !107
  %1768 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1767, i64 %1739) #38
  %1769 = extractvalue { i64, i1 } %1768, 1
  %1770 = extractvalue { i64, i1 } %1768, 0
  store i64 %1770, i64* %36, align 8
  %1771 = or i1 %1766, %1769
  %1772 = load i64, i64* %37, align 8, !tbaa !108
  %1773 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1772, i64 %1737) #38
  %1774 = extractvalue { i64, i1 } %1773, 1
  %1775 = extractvalue { i64, i1 } %1773, 0
  store i64 %1775, i64* %37, align 8
  %1776 = or i1 %1771, %1774
  %1777 = load i64, i64* %38, align 8, !tbaa !109
  %1778 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1777, i64 %1735) #38
  %1779 = extractvalue { i64, i1 } %1778, 1
  %1780 = extractvalue { i64, i1 } %1778, 0
  store i64 %1780, i64* %38, align 8
  %1781 = or i1 %1776, %1779
  br i1 %1781, label %1830, label %1782

1782:                                             ; preds = %1733
  store i8 1, i8* %19, align 1, !tbaa !110
  br label %1787

1783:                                             ; preds = %787
  br label %1787

1784:                                             ; preds = %787
  %1785 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 0, i32 0, i32 1
  %1786 = load i64, i64* %1785, align 8, !tbaa !23
  br label %1787

1787:                                             ; preds = %1782, %1687, %1671, %1668, %1626, %1545, %1508, %1459, %1409, %1359, %949, %787, %1265, %1177, %1188, %1117, %1784, %1783, %1644, %1641, %1638, %1635, %1632, %1629, %1589, %1586, %1585, %1578, %1571, %1568, %1565, %1564, %1561, %1558, %1557, %1554, %1551, %1548, %1473, %1470, %1467, %1466, %1463, %1460, %1251, %1246, %1240, %1235, %1232, %1215, %1199, %1194, %1160, %1154, %1148, %1144, %1140, %1135, %1130, %1067, %1016, %963, %959, %956, %952, %888, %883, %880, %866, %858, %852, %850, %848, %846, %842, %838, %834, %831, %827, %823, %817, %814
  %1788 = phi i64 [ %810, %787 ], [ %810, %1784 ], [ %810, %1783 ], [ %810, %1644 ], [ %810, %1641 ], [ 0, %1638 ], [ %1637, %1635 ], [ 0, %1632 ], [ 0, %1629 ], [ 0, %1589 ], [ 0, %1586 ], [ 1, %1585 ], [ %1580, %1578 ], [ %1573, %1571 ], [ %1570, %1568 ], [ %1567, %1565 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1558 ], [ 0, %1557 ], [ 0, %1554 ], [ 0, %1551 ], [ 0, %1548 ], [ 0, %1473 ], [ 0, %1470 ], [ 0, %1467 ], [ 0, %1466 ], [ 0, %1463 ], [ 0, %1460 ], [ %810, %1359 ], [ %810, %1265 ], [ %810, %1251 ], [ %810, %1246 ], [ %810, %1240 ], [ %810, %1235 ], [ %810, %1232 ], [ %810, %1215 ], [ %810, %1199 ], [ %810, %1194 ], [ %810, %1177 ], [ %810, %1188 ], [ %810, %1160 ], [ %810, %1154 ], [ %810, %1148 ], [ %810, %1144 ], [ %810, %1140 ], [ %810, %1135 ], [ %810, %1130 ], [ %810, %1117 ], [ %810, %1067 ], [ %810, %1016 ], [ %810, %963 ], [ %810, %959 ], [ %810, %956 ], [ %810, %952 ], [ %810, %888 ], [ %810, %883 ], [ %810, %880 ], [ %810, %866 ], [ %810, %858 ], [ %810, %852 ], [ %810, %850 ], [ %810, %848 ], [ %810, %846 ], [ %810, %842 ], [ %810, %838 ], [ %810, %834 ], [ %810, %831 ], [ %810, %827 ], [ %810, %823 ], [ %810, %817 ], [ %810, %814 ], [ %810, %949 ], [ %810, %1409 ], [ %810, %1459 ], [ 0, %1508 ], [ 0, %1545 ], [ 0, %1626 ], [ %810, %1668 ], [ %810, %1671 ], [ %810, %1687 ], [ %810, %1782 ]
  %1789 = phi i64 [ %808, %787 ], [ %808, %1784 ], [ %808, %1783 ], [ %808, %1644 ], [ %808, %1641 ], [ 0, %1638 ], [ 0, %1635 ], [ %1634, %1632 ], [ 0, %1629 ], [ 0, %1589 ], [ 0, %1586 ], [ 0, %1585 ], [ 0, %1578 ], [ 0, %1571 ], [ 0, %1568 ], [ 0, %1565 ], [ 1, %1564 ], [ %1563, %1561 ], [ %1560, %1558 ], [ 0, %1557 ], [ 0, %1554 ], [ 0, %1551 ], [ 0, %1548 ], [ 0, %1473 ], [ 0, %1470 ], [ 0, %1467 ], [ 0, %1466 ], [ 0, %1463 ], [ 0, %1460 ], [ %808, %1359 ], [ %808, %1265 ], [ %808, %1251 ], [ %808, %1246 ], [ %808, %1240 ], [ %808, %1235 ], [ %808, %1232 ], [ %808, %1215 ], [ %808, %1199 ], [ %808, %1194 ], [ %808, %1177 ], [ %808, %1188 ], [ %808, %1160 ], [ %808, %1154 ], [ %808, %1148 ], [ %808, %1144 ], [ %808, %1140 ], [ %808, %1135 ], [ %808, %1130 ], [ %808, %1117 ], [ %808, %1067 ], [ %808, %1016 ], [ %808, %963 ], [ %808, %959 ], [ %808, %956 ], [ %808, %952 ], [ %808, %888 ], [ %808, %883 ], [ %808, %880 ], [ %808, %866 ], [ %808, %858 ], [ %808, %852 ], [ %808, %850 ], [ %808, %848 ], [ %808, %846 ], [ %808, %842 ], [ %808, %838 ], [ %808, %834 ], [ %808, %831 ], [ %808, %827 ], [ %808, %823 ], [ %808, %817 ], [ %808, %814 ], [ %808, %949 ], [ %808, %1409 ], [ %808, %1459 ], [ 0, %1508 ], [ 0, %1545 ], [ 0, %1626 ], [ %808, %1668 ], [ %808, %1671 ], [ %808, %1687 ], [ %808, %1782 ]
  %1790 = phi i64 [ %806, %787 ], [ %806, %1784 ], [ %806, %1783 ], [ %806, %1644 ], [ %806, %1641 ], [ 0, %1638 ], [ 0, %1635 ], [ 0, %1632 ], [ %1631, %1629 ], [ 0, %1589 ], [ 0, %1586 ], [ 0, %1585 ], [ 0, %1578 ], [ 0, %1571 ], [ 0, %1568 ], [ 0, %1565 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1558 ], [ 1, %1557 ], [ %1556, %1554 ], [ %1553, %1551 ], [ 0, %1548 ], [ 0, %1473 ], [ 0, %1470 ], [ 0, %1467 ], [ 0, %1466 ], [ 0, %1463 ], [ 0, %1460 ], [ %806, %1359 ], [ %806, %1265 ], [ %806, %1251 ], [ %806, %1246 ], [ %806, %1240 ], [ %806, %1235 ], [ %806, %1232 ], [ %806, %1215 ], [ %806, %1199 ], [ %806, %1194 ], [ %806, %1177 ], [ %806, %1188 ], [ %806, %1160 ], [ %806, %1154 ], [ %806, %1148 ], [ %806, %1144 ], [ %806, %1140 ], [ %806, %1135 ], [ %806, %1130 ], [ %806, %1117 ], [ %806, %1067 ], [ %806, %1016 ], [ %806, %963 ], [ %806, %959 ], [ %806, %956 ], [ %806, %952 ], [ %806, %888 ], [ %806, %883 ], [ %806, %880 ], [ %806, %866 ], [ %806, %858 ], [ %806, %852 ], [ %806, %850 ], [ %806, %848 ], [ %806, %846 ], [ %806, %842 ], [ %806, %838 ], [ %806, %834 ], [ %806, %831 ], [ %806, %827 ], [ %806, %823 ], [ %806, %817 ], [ %806, %814 ], [ %806, %949 ], [ %806, %1409 ], [ %806, %1459 ], [ 0, %1508 ], [ 0, %1545 ], [ 0, %1626 ], [ %806, %1668 ], [ %806, %1671 ], [ %806, %1687 ], [ %806, %1782 ]
  %1791 = phi i64 [ %804, %787 ], [ %804, %1784 ], [ %804, %1783 ], [ %804, %1644 ], [ %804, %1641 ], [ %1640, %1638 ], [ 0, %1635 ], [ 0, %1632 ], [ 0, %1629 ], [ 0, %1589 ], [ 0, %1586 ], [ 0, %1585 ], [ 0, %1578 ], [ 0, %1571 ], [ 0, %1568 ], [ 0, %1565 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1558 ], [ 0, %1557 ], [ 0, %1554 ], [ 0, %1551 ], [ %1550, %1548 ], [ 0, %1473 ], [ 0, %1470 ], [ 0, %1467 ], [ 0, %1466 ], [ 0, %1463 ], [ 0, %1460 ], [ %804, %1359 ], [ %804, %1265 ], [ %804, %1251 ], [ %804, %1246 ], [ %804, %1240 ], [ %804, %1235 ], [ %804, %1232 ], [ %804, %1215 ], [ %804, %1199 ], [ %804, %1194 ], [ %804, %1177 ], [ %804, %1188 ], [ %804, %1160 ], [ %804, %1154 ], [ %804, %1148 ], [ %804, %1144 ], [ %804, %1140 ], [ %804, %1135 ], [ %804, %1130 ], [ %804, %1117 ], [ %804, %1067 ], [ %804, %1016 ], [ %804, %963 ], [ %804, %959 ], [ %804, %956 ], [ %804, %952 ], [ %804, %888 ], [ %804, %883 ], [ %804, %880 ], [ %804, %866 ], [ %804, %858 ], [ %804, %852 ], [ %804, %850 ], [ %804, %848 ], [ %804, %846 ], [ %804, %842 ], [ %804, %838 ], [ %804, %834 ], [ %804, %831 ], [ %804, %827 ], [ %804, %823 ], [ %804, %817 ], [ %804, %814 ], [ %804, %949 ], [ %804, %1409 ], [ %804, %1459 ], [ %1510, %1508 ], [ %1547, %1545 ], [ %1628, %1626 ], [ %804, %1668 ], [ %804, %1671 ], [ %804, %1687 ], [ %804, %1782 ]
  %1792 = phi i64 [ %802, %787 ], [ %802, %1784 ], [ %802, %1783 ], [ 0, %1644 ], [ 0, %1641 ], [ 0, %1638 ], [ 0, %1635 ], [ 0, %1632 ], [ 0, %1629 ], [ %1591, %1589 ], [ 0, %1586 ], [ 0, %1585 ], [ 0, %1578 ], [ 0, %1571 ], [ 0, %1568 ], [ 0, %1565 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1558 ], [ 0, %1557 ], [ 0, %1554 ], [ 0, %1551 ], [ 0, %1548 ], [ 1, %1473 ], [ %1472, %1470 ], [ %1469, %1467 ], [ 0, %1466 ], [ 0, %1463 ], [ 0, %1460 ], [ %802, %1359 ], [ %802, %1265 ], [ %802, %1251 ], [ %802, %1246 ], [ %802, %1240 ], [ %802, %1235 ], [ %802, %1232 ], [ %802, %1215 ], [ %802, %1199 ], [ %802, %1194 ], [ %802, %1177 ], [ %802, %1188 ], [ %802, %1160 ], [ %802, %1154 ], [ %802, %1148 ], [ %802, %1144 ], [ %802, %1140 ], [ %802, %1135 ], [ %802, %1130 ], [ %802, %1117 ], [ %802, %1067 ], [ %802, %1016 ], [ %802, %963 ], [ %802, %959 ], [ %802, %956 ], [ %802, %952 ], [ %802, %888 ], [ %802, %883 ], [ %802, %880 ], [ %802, %866 ], [ %802, %858 ], [ %802, %852 ], [ %802, %850 ], [ %802, %848 ], [ %802, %846 ], [ %802, %842 ], [ %802, %838 ], [ %802, %834 ], [ %802, %831 ], [ %802, %827 ], [ %802, %823 ], [ %802, %817 ], [ %802, %814 ], [ %802, %949 ], [ %802, %1409 ], [ %802, %1459 ], [ 0, %1508 ], [ 0, %1545 ], [ 0, %1626 ], [ %802, %1668 ], [ %802, %1671 ], [ %802, %1687 ], [ %802, %1782 ]
  %1793 = phi i64 [ %800, %787 ], [ %1786, %1784 ], [ -1, %1783 ], [ %1646, %1644 ], [ %1643, %1641 ], [ 0, %1638 ], [ 0, %1635 ], [ 0, %1632 ], [ 0, %1629 ], [ 0, %1589 ], [ %1588, %1586 ], [ 0, %1585 ], [ 0, %1578 ], [ 0, %1571 ], [ 0, %1568 ], [ 0, %1565 ], [ 0, %1564 ], [ 0, %1561 ], [ 0, %1558 ], [ 0, %1557 ], [ 0, %1554 ], [ 0, %1551 ], [ 0, %1548 ], [ 0, %1473 ], [ 0, %1470 ], [ 0, %1467 ], [ 1, %1466 ], [ %1465, %1463 ], [ %1462, %1460 ], [ %800, %1359 ], [ %800, %1265 ], [ %800, %1251 ], [ %800, %1246 ], [ %800, %1240 ], [ %800, %1235 ], [ %800, %1232 ], [ %800, %1215 ], [ %800, %1199 ], [ %800, %1194 ], [ %800, %1177 ], [ %800, %1188 ], [ %800, %1160 ], [ %800, %1154 ], [ %800, %1148 ], [ %800, %1144 ], [ %800, %1140 ], [ %800, %1135 ], [ %800, %1130 ], [ %800, %1117 ], [ %800, %1067 ], [ %800, %1016 ], [ %800, %963 ], [ %800, %959 ], [ %800, %956 ], [ %800, %952 ], [ %800, %888 ], [ %800, %883 ], [ %800, %880 ], [ %800, %866 ], [ %800, %858 ], [ %800, %852 ], [ %800, %850 ], [ %800, %848 ], [ %800, %846 ], [ %800, %842 ], [ %800, %838 ], [ %800, %834 ], [ %800, %831 ], [ %800, %827 ], [ %800, %823 ], [ %800, %817 ], [ %800, %814 ], [ %800, %949 ], [ %800, %1409 ], [ %800, %1459 ], [ 0, %1508 ], [ 0, %1545 ], [ 0, %1626 ], [ %800, %1668 ], [ %800, %1671 ], [ %800, %1687 ], [ %800, %1782 ]
  %1794 = phi <2 x i32> [ %813, %787 ], [ %813, %1784 ], [ %813, %1783 ], [ %813, %1644 ], [ %813, %1641 ], [ zeroinitializer, %1638 ], [ zeroinitializer, %1635 ], [ zeroinitializer, %1632 ], [ zeroinitializer, %1629 ], [ zeroinitializer, %1589 ], [ zeroinitializer, %1586 ], [ zeroinitializer, %1585 ], [ %1584, %1578 ], [ %1577, %1571 ], [ zeroinitializer, %1568 ], [ zeroinitializer, %1565 ], [ zeroinitializer, %1564 ], [ zeroinitializer, %1561 ], [ zeroinitializer, %1558 ], [ zeroinitializer, %1557 ], [ zeroinitializer, %1554 ], [ zeroinitializer, %1551 ], [ zeroinitializer, %1548 ], [ zeroinitializer, %1473 ], [ zeroinitializer, %1470 ], [ zeroinitializer, %1467 ], [ zeroinitializer, %1466 ], [ zeroinitializer, %1463 ], [ zeroinitializer, %1460 ], [ %813, %1359 ], [ %813, %1265 ], [ %813, %1251 ], [ %813, %1246 ], [ %813, %1240 ], [ %813, %1235 ], [ %813, %1232 ], [ %813, %1215 ], [ %813, %1199 ], [ %813, %1194 ], [ %813, %1177 ], [ %813, %1188 ], [ %813, %1160 ], [ %813, %1154 ], [ %813, %1148 ], [ %813, %1144 ], [ %813, %1140 ], [ %813, %1135 ], [ %813, %1130 ], [ %813, %1117 ], [ %813, %1067 ], [ %813, %1016 ], [ %813, %963 ], [ %813, %959 ], [ %813, %956 ], [ %813, %952 ], [ %813, %888 ], [ %813, %883 ], [ %813, %880 ], [ %813, %866 ], [ %813, %858 ], [ %813, %852 ], [ %813, %850 ], [ %813, %848 ], [ %813, %846 ], [ %813, %842 ], [ %813, %838 ], [ %813, %834 ], [ %813, %831 ], [ %813, %827 ], [ %813, %823 ], [ %813, %817 ], [ %813, %814 ], [ %813, %949 ], [ %813, %1409 ], [ %813, %1459 ], [ zeroinitializer, %1508 ], [ zeroinitializer, %1545 ], [ zeroinitializer, %1626 ], [ %813, %1668 ], [ %813, %1671 ], [ %813, %1687 ], [ %813, %1782 ]
  %1795 = sub nsw i64 0, %797
  %1796 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %75, i64 %1795
  %1797 = getelementptr inbounds i8, i8* %74, i64 %1795
  %1798 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 0
  store i64 %1793, i64* %1798, align 8, !tbaa.struct !79
  %1799 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 1
  store i64 %1792, i64* %1799, align 8, !tbaa.struct !80
  %1800 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 2
  store i64 %1791, i64* %1800, align 8, !tbaa.struct !81
  %1801 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 3
  store i64 %1790, i64* %1801, align 8, !tbaa.struct !82
  %1802 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 4
  store i64 %1789, i64* %1802, align 8, !tbaa.struct !83
  %1803 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 5
  store i64 %1788, i64* %1803, align 8, !tbaa.struct !84
  %1804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1796, i64 1, i32 0, i32 6
  %1805 = bitcast i32* %1804 to <2 x i32>*
  store <2 x i32> %1794, <2 x i32>* %1805, align 8
  %1806 = getelementptr inbounds [95 x i8], [95 x i8]* @yyr1, i64 0, i64 %794
  %1807 = load i8, i8* %1806, align 1, !tbaa !23
  %1808 = sext i8 %1807 to i64
  %1809 = add nsw i64 %1808, -31
  %1810 = getelementptr inbounds [26 x i8], [26 x i8]* @yypgoto, i64 0, i64 %1809
  %1811 = load i8, i8* %1810, align 1, !tbaa !23
  %1812 = sext i8 %1811 to i32
  %1813 = load i8, i8* %1797, align 1, !tbaa !23
  %1814 = sext i8 %1813 to i32
  %1815 = add nsw i32 %1814, %1812
  %1816 = icmp ult i32 %1815, 121
  br i1 %1816, label %1817, label %1824

1817:                                             ; preds = %1787
  %1818 = zext i32 %1815 to i64
  %1819 = getelementptr inbounds [121 x i8], [121 x i8]* @yycheck, i64 0, i64 %1818
  %1820 = load i8, i8* %1819, align 1, !tbaa !23
  %1821 = icmp eq i8 %1820, %1813
  br i1 %1821, label %1822, label %1824

1822:                                             ; preds = %1817
  %1823 = getelementptr inbounds [121 x i8], [121 x i8]* @yytable, i64 0, i64 %1818
  br label %1826

1824:                                             ; preds = %1817, %1787
  %1825 = getelementptr inbounds [26 x i8], [26 x i8]* @yydefgoto, i64 0, i64 %1809
  br label %1826

1826:                                             ; preds = %1824, %1822
  %1827 = phi i8* [ %1823, %1822 ], [ %1825, %1824 ]
  %1828 = load i8, i8* %1827, align 1, !tbaa !23
  %1829 = sext i8 %1828 to i32
  br label %58

1830:                                             ; preds = %58, %71, %1623, %1619, %1607, %1600, %1542, %1538, %1526, %1519, %1505, %1501, %1489, %1482, %1110, %942, %1265, %1257, %1226, %1218, %1205, %1117, %964, %1018, %1360, %1410, %1733, %1325, %1291, %777, %731
  %1831 = phi i32 [ 1, %731 ], [ 1, %777 ], [ 1, %1291 ], [ 1, %1325 ], [ 1, %1733 ], [ 1, %1410 ], [ 1, %1360 ], [ 1, %1018 ], [ 1, %964 ], [ 1, %1117 ], [ 1, %1205 ], [ 1, %1218 ], [ 1, %1226 ], [ 1, %1257 ], [ 1, %1265 ], [ 1, %942 ], [ 1, %1110 ], [ 1, %1482 ], [ 1, %1489 ], [ 1, %1501 ], [ 1, %1505 ], [ 1, %1519 ], [ 1, %1526 ], [ 1, %1538 ], [ 1, %1542 ], [ 1, %1600 ], [ 1, %1607 ], [ 1, %1619 ], [ 1, %1623 ], [ 0, %71 ], [ 2, %58 ]
  call void @llvm.lifetime.end.p0i8(i64 1120, i8* nonnull %6) #38
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #38
  ret i32 %1831
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define internal fastcc %struct.table* @lookup_zone(%struct.parser_control* noundef readonly %0, i8* nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77.194, i64 0, i64 0)) #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %168, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78.195, i64 0, i64 0)) #39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %168, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79.196, i64 0, i64 0)) #39
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %168, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 32, i64 0
  %13 = getelementptr inbounds %struct.table, %struct.table* %12, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !119
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %24, %11
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80.197, i64 0, i64 0)) #39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %168, label %29

19:                                               ; preds = %11, %24
  %20 = phi i8* [ %27, %24 ], [ %14, %11 ]
  %21 = phi %struct.table* [ %25, %24 ], [ %12, %11 ]
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %20) #39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %168, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.table, %struct.table* %21, i64 1
  %26 = getelementptr inbounds %struct.table, %struct.table* %25, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !119
  %28 = icmp eq i8* %27, null
  br i1 %28, label %16, label %19, !llvm.loop !120

29:                                               ; preds = %16
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81.198, i64 0, i64 0)) #39
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %168, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82.199, i64 0, i64 0)) #39
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %168, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83.200, i64 0, i64 0)) #39
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %168, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84.201, i64 0, i64 0)) #39
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %168, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85.202, i64 0, i64 0)) #39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %168, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86.203, i64 0, i64 0)) #39
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %168, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0)) #39
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %168, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %168, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #39
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %168, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90.204, i64 0, i64 0)) #39
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %168, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0)) #39
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %168, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #39
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %168, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #39
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %168, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #39
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %168, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #39
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %168, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #39
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %168, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #39
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %168, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #39
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %168, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #39
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %168, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0)) #39
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %168, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0)) #39
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %168, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #39
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %168, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i64 0, i64 0)) #39
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %168, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0)) #39
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %168, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #39
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %168, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #39
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %168, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #39
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %168, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i64 0, i64 0)) #39
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %168, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #39
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %168, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #39
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %168, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i64 0, i64 0)) #39
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %168, label %122

122:                                              ; preds = %119
  %123 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0)) #39
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %168, label %125

125:                                              ; preds = %122
  %126 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #39
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %168, label %128

128:                                              ; preds = %125
  %129 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0)) #39
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #39
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %168, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0)) #39
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %168, label %137

137:                                              ; preds = %134
  %138 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #39
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %168, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #39
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %140
  %144 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #39
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %168, label %146

146:                                              ; preds = %143
  %147 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #39
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %146
  %150 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i64 0, i64 0)) #39
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %149
  %153 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0)) #39
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %152
  %156 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0)) #39
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)) #39
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0)) #39
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i64 0, i64 0)) #39
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, %struct.table* getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 46), %struct.table* null
  br label %168

168:                                              ; preds = %19, %164, %2, %5, %8, %16, %29, %32, %35, %38, %41, %44, %47, %50, %53, %56, %59, %62, %65, %68, %71, %74, %77, %80, %83, %86, %89, %92, %95, %98, %101, %104, %107, %110, %113, %116, %119, %122, %125, %128, %131, %134, %137, %140, %143, %146, %149, %152, %155, %158, %161
  %169 = phi %struct.table* [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 0), %16 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 1), %29 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 2), %32 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 3), %35 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 4), %38 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 5), %41 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 6), %44 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 7), %47 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 8), %50 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 9), %53 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 10), %56 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 11), %59 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 12), %62 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 13), %65 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 14), %68 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 15), %71 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 16), %74 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 17), %77 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 18), %80 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 19), %83 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 20), %86 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 21), %89 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 22), %92 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 23), %95 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 24), %98 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 25), %101 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 26), %104 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 27), %107 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 28), %110 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 29), %113 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 30), %116 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 31), %119 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 32), %122 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 33), %125 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 34), %128 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 35), %131 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 36), %134 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 37), %137 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 38), %140 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 39), %143 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 40), %146 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 41), %149 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 42), %152 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 43), %155 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 44), %158 ], [ getelementptr inbounds ([48 x %struct.table], [48 x %struct.table]* @time_zone_table, i64 0, i64 45), %161 ], [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 0), %2 ], [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 1), %5 ], [ getelementptr inbounds ([4 x %struct.table], [4 x %struct.table]* @universal_time_zone_table, i64 0, i64 2), %8 ], [ %167, %164 ], [ %21, %19 ]
  ret %struct.table* %169
}

; Function Attrs: nounwind uwtable
define internal void @dbg_printf(i8* noundef %0, ...) unnamed_addr #12 {
  %2 = alloca %"struct.std::__va_list", align 8
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %4) #44
  %6 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #38
  call void @llvm.va_start(i8* nonnull %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %8 = bitcast %"struct.std::__va_list"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #38, !noalias !121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef %0, %"struct.std::__va_list"* noundef nonnull %2) #38
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #38, !noalias !121
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_print_current_time(i8* noundef %0, %struct.parser_control* noundef %1) unnamed_addr #12 {
  %3 = alloca [100 x i8], align 1
  %4 = alloca [27 x i8], align 1
  %5 = getelementptr %struct.parser_control, %struct.parser_control* %1, i64 0, i32 24
  %6 = load i8, i8* %5, align 2, !tbaa !75
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %213, label %8

8:                                                ; preds = %2
  %9 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21.173, i64 0, i64 0), i32 noundef 5) #38
  tail call void (i8*, ...) @dbg_printf(i8* noundef %9, i8* noundef %0)
  %10 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 15
  %11 = load i64, i64* %10, align 8, !tbaa !87
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 25
  %15 = load i8, i8* %14, align 1, !tbaa !125, !range !56
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %8
  %18 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 22
  %19 = load i8, i8* %18, align 8, !tbaa !117, !range !56
  %20 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 30
  %21 = load i8, i8* %20, align 8, !tbaa !126, !range !56
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %49, label %40

23:                                               ; preds = %13
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 6, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !118
  %27 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 7
  %28 = load i64, i64* %27, align 8, !tbaa !114
  %29 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 8
  %30 = load i64, i64* %29, align 8, !tbaa !115
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22.177, i64 0, i64 0), i64 noundef %26, i64 noundef %28, i64 noundef %30) #38
  store i8 1, i8* %14, align 1, !tbaa !125
  %32 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 22
  %33 = load i8, i8* %32, align 8, !tbaa !117, !range !56
  %34 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 30
  %35 = load i8, i8* %34, align 8, !tbaa !126, !range !56
  %36 = icmp eq i8 %33, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %23
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %39 = tail call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %38)
  br label %40

40:                                               ; preds = %17, %37
  %41 = phi i8* [ %32, %37 ], [ %18, %17 ]
  %42 = phi i8* [ %34, %37 ], [ %20, %17 ]
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %44 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23.178, i64 0, i64 0), i32 noundef 5) #38
  %45 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 6, i32 1
  %46 = load i64, i64* %45, align 8, !tbaa !118
  %47 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %43, i32 noundef 1, i8* noundef %44, i64 noundef %46) #38
  %48 = load i8, i8* %41, align 8, !tbaa !117, !range !56
  store i8 %48, i8* %42, align 8, !tbaa !126
  br label %49

49:                                               ; preds = %23, %40, %17
  %50 = phi i1 [ true, %40 ], [ false, %17 ], [ true, %23 ]
  %51 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 20
  %52 = load i64, i64* %51, align 8, !tbaa !86
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 28
  %56 = load i8, i8* %55, align 2, !tbaa !127, !range !56
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !128
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %62 = xor i1 %50, true
  %63 = zext i1 %62 to i64
  %64 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.24.179, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 9
  %66 = load i64, i64* %65, align 8, !tbaa !92
  %67 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 10
  %68 = load i64, i64* %67, align 8, !tbaa !94
  %69 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %61, i32 noundef 1, i8* noundef nonnull %64, i64 noundef %66, i64 noundef %68, i64 noundef %60) #38
  %70 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 1
  %71 = load i64, i64* %70, align 8, !tbaa !129
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = trunc i64 %71 to i32
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %76 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %75, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25.180, i64 0, i64 0), i32 noundef %74) #38
  br label %77

77:                                               ; preds = %73, %58
  %78 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 5
  %79 = load i32, i32* %78, align 4, !tbaa !93
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %83 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %82) #43
  br label %84

84:                                               ; preds = %81, %77
  store i8 1, i8* %55, align 2, !tbaa !127
  br label %85

85:                                               ; preds = %84, %54, %49
  %86 = phi i1 [ %50, %54 ], [ true, %84 ], [ %50, %49 ]
  %87 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 16
  %88 = load i64, i64* %87, align 8, !tbaa !91
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 26
  %92 = load i8, i8* %91, align 4, !tbaa !130, !range !56
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  br i1 %86, label %95, label %98

95:                                               ; preds = %94
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %97 = tail call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %96)
  br label %98

98:                                               ; preds = %95, %94
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %99) #38
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %101 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27.182, i64 0, i64 0), i32 noundef 5) #38
  %102 = call fastcc i8* @str_days(%struct.parser_control* noundef nonnull %1, i8* noundef nonnull %99)
  %103 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 1
  %104 = load i64, i64* %103, align 8, !tbaa !111
  %105 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 2
  %106 = load i32, i32* %105, align 8, !tbaa !112
  %107 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %100, i32 noundef 1, i8* noundef %101, i8* noundef nonnull %99, i64 noundef %104, i32 noundef %106) #38
  store i8 1, i8* %91, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %99) #38
  br label %108

108:                                              ; preds = %98, %90, %85
  %109 = phi i1 [ %86, %90 ], [ true, %98 ], [ %86, %85 ]
  %110 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 18
  %111 = load i64, i64* %110, align 8, !tbaa !88
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 27
  %115 = load i8, i8* %114, align 1, !tbaa !131, !range !56
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %119 = xor i1 %109, true
  %120 = zext i1 %119 to i64
  %121 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.28.183, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 3
  %123 = load i32, i32* %122, align 4, !tbaa !97
  %124 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 19
  %125 = load i64, i64* %124, align 8, !tbaa !98
  %126 = icmp eq i64 %125, 0
  %127 = select i1 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29.185, i64 0, i64 0)
  %128 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %118, i32 noundef 1, i8* noundef nonnull %121, i32 noundef %123, i8* noundef %127) #38
  store i8 1, i8* %114, align 1, !tbaa !131
  br label %129

129:                                              ; preds = %117, %113, %108
  %130 = phi i1 [ %109, %113 ], [ true, %117 ], [ %109, %108 ]
  %131 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 21
  %132 = load i64, i64* %131, align 8, !tbaa !90
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %186, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 29
  %136 = load i8, i8* %135, align 1, !tbaa !132, !range !56
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %186

138:                                              ; preds = %134
  %139 = getelementptr inbounds [27 x i8], [27 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %139) #38
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %141 = xor i1 %130, true
  %142 = zext i1 %141 to i64
  %143 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.31.186, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 4
  %145 = load i32, i32* %144, align 8, !tbaa !96
  %146 = icmp slt i32 %145, 0
  %147 = freeze i32 %145
  %148 = sdiv i32 %147, 3600
  %149 = call i32 @llvm.abs.i32(i32 %148, i1 true) #38
  %150 = select i1 %146, i32 45, i32 43
  %151 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %139, i32 noundef 1, i64 noundef 27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.187, i64 0, i64 0), i32 noundef %150, i32 noundef %149) #38
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [27 x i8], [27 x i8]* %4, i64 0, i64 %152
  %154 = mul i32 %148, 3600
  %155 = sub i32 %147, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %190, label %157

157:                                              ; preds = %138
  %158 = call i32 @llvm.abs.i32(i32 %155, i1 true) #38
  %159 = trunc i32 %158 to i16
  %160 = freeze i16 %159
  %161 = udiv i16 %160, 60
  %162 = mul i16 %161, 60
  %163 = sub i16 %160, %162
  %164 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 58, i8* %153, align 1, !tbaa !23
  %165 = udiv i16 %159, 600
  %166 = trunc i16 %165 to i8
  %167 = add nuw nsw i8 %166, 48
  %168 = getelementptr inbounds i8, i8* %153, i64 2
  store i8 %167, i8* %164, align 1, !tbaa !23
  %169 = trunc i16 %161 to i8
  %170 = urem i8 %169, 10
  %171 = or i8 %170, 48
  %172 = getelementptr inbounds i8, i8* %153, i64 3
  store i8 %171, i8* %168, align 1, !tbaa !23
  %173 = icmp eq i16 %163, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %157
  %175 = getelementptr inbounds i8, i8* %153, i64 4
  store i8 58, i8* %172, align 1, !tbaa !23
  %176 = trunc i16 %163 to i8
  %177 = udiv i8 %176, 10
  %178 = or i8 %177, 48
  %179 = getelementptr inbounds i8, i8* %153, i64 5
  store i8 %178, i8* %175, align 1, !tbaa !23
  %180 = mul i8 %177, 10
  %181 = sub i8 %176, %180
  %182 = or i8 %181, 48
  %183 = getelementptr inbounds i8, i8* %153, i64 6
  store i8 %182, i8* %179, align 1, !tbaa !23
  br label %184

184:                                              ; preds = %174, %157
  %185 = phi i8* [ %183, %174 ], [ %172, %157 ]
  store i8 0, i8* %185, align 1, !tbaa !23
  br label %190

186:                                              ; preds = %134, %129
  %187 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 13
  %188 = load i8, i8* %187, align 8, !tbaa !85, !range !56
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %210, label %198

190:                                              ; preds = %184, %138
  %191 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %140, i32 noundef 1, i8* noundef nonnull %143, i8* noundef nonnull %139) #38
  store i8 1, i8* %135, align 1, !tbaa !132
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %139) #38
  %192 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 13
  %193 = load i8, i8* %192, align 8, !tbaa !85, !range !56
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 0
  %197 = load i64, i64* %196, align 8, !tbaa !128
  br label %201

198:                                              ; preds = %186
  %199 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 11, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !128
  br i1 %130, label %201, label %205

201:                                              ; preds = %195, %198
  %202 = phi i64 [ %197, %195 ], [ %200, %198 ]
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %204 = call i32 @fputc(i32 noundef 32, %struct._IO_FILE* noundef %203)
  br label %205

205:                                              ; preds = %201, %198
  %206 = phi i64 [ %202, %201 ], [ %200, %198 ]
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %208 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32.188, i64 0, i64 0), i32 noundef 5) #38
  %209 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %207, i32 noundef 1, i8* noundef %208, i64 noundef %206) #38
  br label %210

210:                                              ; preds = %190, %205, %186
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %212 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %211)
  br label %213

213:                                              ; preds = %2, %210
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_print_relative_time(i8* noundef %0, %struct.parser_control* nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr %struct.parser_control, %struct.parser_control* %1, i64 0, i32 24
  %4 = load i8, i8* %3, align 2, !tbaa !75
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %110, label %6

6:                                                ; preds = %2
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21.173, i64 0, i64 0), i32 noundef 5) #38
  tail call void (i8*, ...) @dbg_printf(i8* noundef %7, i8* noundef %0)
  %8 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !109
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !108
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 2
  %17 = load i64, i64* %16, align 8, !tbaa !107
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 3
  %21 = load i64, i64* %20, align 8, !tbaa !106
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 4
  %25 = load i64, i64* %24, align 8, !tbaa !105
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 5
  %29 = load i64, i64* %28, align 8, !tbaa !104
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 6
  %33 = load i32, i32* %32, align 8, !tbaa !103
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37.174, i64 0, i64 0), i32 noundef 5) #38
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %38 = tail call i32 @fputs(i8* noundef %36, %struct._IO_FILE* noundef %37) #43
  br label %110

39:                                               ; preds = %6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %41 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %40, i32 noundef 1, i8* noundef nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 1), i64 noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38.175, i64 0, i64 0)) #38
  %42 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !108
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %11, %39
  %46 = phi i64 [ %43, %39 ], [ %13, %11 ]
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %48 = zext i1 %10 to i64
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %48
  %50 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %47, i32 noundef 1, i8* noundef nonnull %49, i64 noundef %46, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0)) #38
  br label %51

51:                                               ; preds = %15, %19, %23, %27, %31, %39, %45
  %52 = phi i1 [ true, %45 ], [ true, %39 ], [ false, %31 ], [ false, %27 ], [ false, %23 ], [ false, %19 ], [ false, %15 ]
  %53 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 2
  %54 = load i64, i64* %53, align 8, !tbaa !107
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %58 = xor i1 %52, true
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %59
  %61 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %57, i32 noundef 1, i8* noundef nonnull %60, i64 noundef %54, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #38
  br label %62

62:                                               ; preds = %51, %56
  %63 = phi i1 [ true, %56 ], [ %52, %51 ]
  %64 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 3
  %65 = load i64, i64* %64, align 8, !tbaa !106
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %69 = xor i1 %63, true
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %70
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %68, i32 noundef 1, i8* noundef nonnull %71, i64 noundef %65, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0)) #38
  br label %73

73:                                               ; preds = %62, %67
  %74 = phi i1 [ true, %67 ], [ %63, %62 ]
  %75 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 4
  %76 = load i64, i64* %75, align 8, !tbaa !105
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %80 = xor i1 %74, true
  %81 = zext i1 %80 to i64
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %81
  %83 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %79, i32 noundef 1, i8* noundef nonnull %82, i64 noundef %76, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)) #38
  br label %84

84:                                               ; preds = %73, %78
  %85 = phi i1 [ true, %78 ], [ %74, %73 ]
  %86 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 5
  %87 = load i64, i64* %86, align 8, !tbaa !104
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %91 = xor i1 %85, true
  %92 = zext i1 %91 to i64
  %93 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %92
  %94 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %90, i32 noundef 1, i8* noundef nonnull %93, i64 noundef %87, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.176, i64 0, i64 0)) #38
  br label %95

95:                                               ; preds = %84, %89
  %96 = phi i1 [ true, %89 ], [ %85, %84 ]
  %97 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 12, i32 6
  %98 = load i32, i32* %97, align 8, !tbaa !103
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = sext i32 %98 to i64
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %103 = xor i1 %96, true
  %104 = zext i1 %103 to i64
  %105 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.45, i64 0, i64 %104
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %102, i32 noundef 1, i8* noundef nonnull %105, i64 noundef %101, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #38
  br label %107

107:                                              ; preds = %95, %100
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %109 = tail call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %108)
  br label %110

110:                                              ; preds = %2, %107, %35
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind uwtable
define internal fastcc i8* @str_days(%struct.parser_control* nocapture noundef readonly %0, i8* noundef returned %1) unnamed_addr #23 {
  %3 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 31
  %4 = load i8, i8* %3, align 1, !tbaa !113, !range !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !111
  %9 = add i64 %8, 1
  %10 = icmp ult i64 %9, 14
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds [14 x [11 x i8]], [14 x [11 x i8]]* @str_days.ordinal_values, i64 0, i64 %9, i64 0
  %13 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %1, i64 noundef 100, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33.189, i64 0, i64 0), i8* noundef nonnull %12) #38
  br label %17

14:                                               ; preds = %6
  %15 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %1, i64 noundef 100, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34.190, i64 0, i64 0), i64 noundef %8) #38
  br label %17

16:                                               ; preds = %2
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %17

17:                                               ; preds = %11, %14, %16
  %18 = phi i32 [ 0, %16 ], [ %13, %11 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !112
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = icmp ult i32 %20, 7
  %24 = icmp sgt i32 %18, -1
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp slt i32 %18, 100
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = zext i32 %18 to i64
  %30 = getelementptr inbounds i8, i8* %1, i64 %29
  %31 = sub nuw nsw i32 100, %18
  %32 = zext i32 %31 to i64
  %33 = icmp eq i32 %18, 0
  %34 = zext i1 %33 to i64
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.35.191, i64 0, i64 %34
  %36 = zext i32 %20 to i64
  %37 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* @str_days.days_values, i64 0, i64 %36, i64 0
  %38 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %30, i64 noundef %32, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %35, i8* noundef nonnull %37) #38
  br label %39

39:                                               ; preds = %17, %22, %28
  ret i8* %1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8* noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i1 @parse_datetime2(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef %3, %struct.tm_zone* noundef %4, i8* noundef %5) local_unnamed_addr #12 {
  %7 = tail call fastcc i1 @parse_datetime_body(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef %3, %struct.tm_zone* noundef %4, i8* noundef %5)
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @parse_datetime_body(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef %3, %struct.tm_zone* noundef %4, i8* noundef %5) unnamed_addr #12 {
  %7 = alloca %struct.tm, align 8
  %8 = alloca %struct.tm, align 8
  %9 = alloca [27 x i8], align 1
  %10 = alloca [100 x i8], align 1
  %11 = alloca [100 x i8], align 1
  %12 = alloca %struct.timespec, align 8
  %13 = alloca %struct.relative_time, align 8
  %14 = alloca %struct.tm, align 8
  %15 = alloca %struct.parser_control, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.tm, align 8
  %18 = alloca [30 x i8], align 4
  %19 = alloca [100 x i8], align 1
  %20 = alloca [13 x i8], align 1
  %21 = alloca %struct.tm, align 8
  %22 = alloca %struct.tm, align 8
  %23 = alloca %struct.tm, align 8
  %24 = bitcast %struct.tm* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %24) #38
  %25 = bitcast %struct.tm* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %25) #38
  %26 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %26) #38
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %27) #38
  %28 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #39
  %29 = getelementptr inbounds i8, i8* %1, i64 %28
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %30) #38
  %31 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #38
  %32 = icmp eq %struct.timespec* %2, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  call void @gettime(%struct.timespec* noundef nonnull %12) #38
  br label %34

34:                                               ; preds = %33, %6
  %35 = phi %struct.timespec* [ %2, %6 ], [ %12, %33 ]
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i64 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !133
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i64 0, i32 1
  %39 = load i64, i64* %38, align 8, !tbaa !29
  br label %40

40:                                               ; preds = %43, %34
  %41 = phi i8* [ %1, %34 ], [ %44, %43 ]
  %42 = load i8, i8* %41, align 1, !tbaa !23
  switch i8 %42, label %45 [
    i8 32, label %43
    i8 9, label %43
    i8 10, label %43
    i8 11, label %43
    i8 12, label %43
    i8 13, label %43
  ]

43:                                               ; preds = %40, %40, %40, %40, %40, %40
  %44 = getelementptr inbounds i8, i8* %41, i64 1
  br label %40, !llvm.loop !134

45:                                               ; preds = %40
  %46 = bitcast %struct.relative_time* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %46)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %46, i8 0, i64 56, i1 false)
  %47 = call i32 @strncmp(i8* noundef nonnull %41, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.183, i64 0, i64 0), i64 noundef 4) #39
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, i8* %41, i64 4
  br label %51

51:                                               ; preds = %90, %49
  %52 = phi i8* [ %50, %49 ], [ %92, %90 ]
  %53 = phi i64 [ 1, %49 ], [ %93, %90 ]
  %54 = load i8, i8* %52, align 1, !tbaa !23
  switch i8 %54, label %90 [
    i8 0, label %94
    i8 92, label %55
    i8 34, label %58
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, i8* %52, i64 1
  %57 = load i8, i8* %56, align 1, !tbaa !23
  switch i8 %57, label %94 [
    i8 92, label %90
    i8 34, label %90
  ]

58:                                               ; preds = %51
  %59 = icmp ugt i64 %53, 100
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = call noalias i8* @malloc(i64 noundef %53) #38
  %62 = icmp eq i8* %61, null
  br i1 %62, label %1062, label %63

63:                                               ; preds = %60, %58
  %64 = phi i8* [ %30, %58 ], [ %61, %60 ]
  %65 = phi i8* [ null, %58 ], [ %61, %60 ]
  %66 = load i8, i8* %50, align 1, !tbaa !23
  %67 = icmp eq i8 %66, 34
  br i1 %67, label %80, label %68

68:                                               ; preds = %63, %68
  %69 = phi i8 [ %78, %68 ], [ %66, %63 ]
  %70 = phi i8* [ %77, %68 ], [ %50, %63 ]
  %71 = phi i8* [ %76, %68 ], [ %64, %63 ]
  %72 = icmp eq i8 %69, 92
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1, !tbaa !23
  %76 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %75, i8* %71, align 1, !tbaa !23
  %77 = getelementptr inbounds i8, i8* %74, i64 1
  %78 = load i8, i8* %77, align 1, !tbaa !23
  %79 = icmp eq i8 %78, 34
  br i1 %79, label %80, label %68, !llvm.loop !135

80:                                               ; preds = %68, %63
  %81 = phi i8* [ %64, %63 ], [ %76, %68 ]
  %82 = phi i8* [ %50, %63 ], [ %77, %68 ]
  store i8 0, i8* %81, align 1, !tbaa !23
  %83 = call %struct.tm_zone* @tzalloc(i8* noundef %64) #38
  %84 = icmp eq %struct.tm_zone* %83, null
  br i1 %84, label %1062, label %85

85:                                               ; preds = %80, %89
  %86 = phi i8* [ %87, %89 ], [ %82, %80 ]
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1, !tbaa !23
  switch i8 %88, label %94 [
    i8 32, label %89
    i8 9, label %89
    i8 10, label %89
    i8 11, label %89
    i8 12, label %89
    i8 13, label %89
  ]

89:                                               ; preds = %85, %85, %85, %85, %85, %85
  br label %85, !llvm.loop !136

90:                                               ; preds = %51, %55, %55
  %91 = phi i8* [ %56, %55 ], [ %56, %55 ], [ %52, %51 ]
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = add nuw nsw i64 %53, 1
  br label %51, !llvm.loop !137

94:                                               ; preds = %55, %51, %85, %45
  %95 = phi %struct.tm_zone* [ %4, %45 ], [ %83, %85 ], [ %4, %51 ], [ %4, %55 ]
  %96 = phi i8* [ null, %45 ], [ %65, %85 ], [ null, %51 ], [ null, %55 ]
  %97 = phi i8* [ %5, %45 ], [ %64, %85 ], [ %5, %51 ], [ %5, %55 ]
  %98 = phi i8* [ %41, %45 ], [ %87, %85 ], [ %41, %51 ], [ %41, %55 ]
  %99 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %36, %struct.tm* noundef nonnull %14) #38
  %100 = icmp eq %struct.tm* %99, null
  br i1 %100, label %1058, label %101

101:                                              ; preds = %94
  %102 = load i8, i8* %98, align 1, !tbaa !23
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i64 0, i64 0), i8* %98
  %105 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 0
  store i8* %104, i8** %105, align 8, !tbaa !62
  %106 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 24
  %107 = trunc i32 %3 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %106, align 2, !tbaa !75
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 5
  %110 = load i32, i32* %109, align 4, !tbaa !35
  %111 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 6, i32 1
  %112 = sext i32 %110 to i64
  %113 = add nsw i64 %112, 1900
  store i64 %113, i64* %111, align 8
  %114 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 6, i32 2
  store i64 0, i64* %114, align 8, !tbaa !116
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 4
  %116 = load i32, i32* %115, align 8, !tbaa !37
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 7
  store i64 %118, i64* %119, align 8, !tbaa !114
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 3
  %121 = load i32, i32* %120, align 4, !tbaa !38
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 8
  store i64 %122, i64* %123, align 8, !tbaa !115
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 2
  %125 = load i32, i32* %124, align 8, !tbaa !39
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 9
  store i64 %126, i64* %127, align 8, !tbaa !92
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 1
  %129 = load i32, i32* %128, align 4, !tbaa !40
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 10
  store i64 %130, i64* %131, align 8, !tbaa !94
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 0
  %133 = load i32, i32* %132, align 8, !tbaa !41
  %134 = sext i32 %133 to i64
  %135 = shl i64 %39, 32
  %136 = ashr exact i64 %135, 32
  %137 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 11, i32 0
  store i64 %134, i64* %137, align 8, !tbaa.struct !32
  %138 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 11, i32 1
  store i64 %136, i64* %138, align 8, !tbaa.struct !34
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 8
  %140 = load i32, i32* %139, align 8, !tbaa !138
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 8
  store i32 %140, i32* %141, align 8, !tbaa !138
  %142 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 5
  store i32 2, i32* %142, align 4, !tbaa !93
  %143 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12
  %144 = bitcast %struct.relative_time* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %144, i8* noundef nonnull align 8 dereferenceable(56) %46, i64 56, i1 false), !tbaa.struct !99
  %145 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 13
  store i8 0, i8* %145, align 8, !tbaa !85
  %146 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 14
  store i8 0, i8* %146, align 1, !tbaa !110
  %147 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 15
  %148 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 16
  %149 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 20
  %150 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 17
  %151 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 18
  %152 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 19
  %153 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 21
  %154 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 25
  %155 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 0, i32 0
  store i8* null, i8** %155, align 8, !tbaa !119
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 10
  %157 = bitcast i64* %147 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(58) %157, i8 0, i64 58, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %154, i8 0, i64 7, i1 false)
  %158 = load i8*, i8** %156, align 8, !tbaa !139
  %159 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 0, i32 1
  store i32 269, i32* %159, align 8, !tbaa !78
  %160 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 0, i32 2
  store i32 %140, i32* %160, align 4, !tbaa !76
  %161 = load i8, i8* %158, align 1, !tbaa !23
  %162 = icmp eq i8 %161, 0
  %163 = select i1 %162, i8* null, i8* %158
  store i8* %163, i8** %155, align 8, !tbaa !119
  %164 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 1, i32 0
  store i8* null, i8** %164, align 8, !tbaa !119
  %165 = bitcast i64* %16 to i8*
  %166 = bitcast %struct.tm* %17 to i8*
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 8
  %168 = getelementptr inbounds %struct.tm, %struct.tm* %17, i64 0, i32 10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #38
  %169 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 7776000)
  %170 = extractvalue { i64, i1 } %169, 1
  %171 = extractvalue { i64, i1 } %169, 0
  store i64 %171, i64* %16, align 8
  br i1 %170, label %172, label %173

172:                                              ; preds = %232, %204, %101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #38
  br label %261

173:                                              ; preds = %101
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %166) #38
  %174 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %16, %struct.tm* noundef nonnull %17) #38
  %175 = icmp eq %struct.tm* %174, null
  br i1 %175, label %204, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** %155, align 8, !tbaa !119
  %178 = icmp ne i8* %177, null
  %179 = load i32, i32* %167, align 8, !tbaa !138
  %180 = load i32, i32* %160, align 4
  %181 = icmp eq i32 %179, %180
  %182 = select i1 %178, i1 %181, i1 false
  br i1 %182, label %204, label %183

183:                                              ; preds = %176
  %184 = load i8*, i8** %168, align 8, !tbaa !139
  %185 = icmp ne i8* %177, null
  %186 = zext i1 %185 to i64
  %187 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %186
  %188 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %186, i32 1
  store i32 269, i32* %188, align 8, !tbaa !78
  %189 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %186, i32 2
  store i32 %179, i32* %189, align 4, !tbaa !76
  %190 = load i8, i8* %184, align 1, !tbaa !23
  %191 = icmp eq i8 %190, 0
  %192 = select i1 %191, i8* null, i8* %184
  %193 = getelementptr inbounds %struct.table, %struct.table* %187, i64 0, i32 0
  store i8* %192, i8** %193, align 8, !tbaa !119
  %194 = getelementptr inbounds %struct.table, %struct.table* %187, i64 1, i32 0
  store i8* null, i8** %194, align 8, !tbaa !119
  %195 = load i8*, i8** %164, align 8, !tbaa !119
  %196 = icmp eq i8* %195, null
  br i1 %196, label %204, label %197

197:                                              ; preds = %246, %218, %183
  %198 = phi i8* [ %195, %183 ], [ %230, %218 ], [ %258, %246 ]
  %199 = load i8*, i8** %155, align 8, !tbaa !119
  %200 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %199, i8* noundef nonnull dereferenceable(1) %198) #39
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 -1, i32* %160, align 4, !tbaa !76
  store i8* null, i8** %164, align 8, !tbaa !119
  br label %203

203:                                              ; preds = %202, %197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %166) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #38
  br label %261

204:                                              ; preds = %176, %183, %173
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %166) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #38
  %205 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 15552000)
  %206 = extractvalue { i64, i1 } %205, 1
  %207 = extractvalue { i64, i1 } %205, 0
  store i64 %207, i64* %16, align 8
  br i1 %206, label %172, label %208

208:                                              ; preds = %204
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %166) #38
  %209 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %16, %struct.tm* noundef nonnull %17) #38
  %210 = icmp eq %struct.tm* %209, null
  br i1 %210, label %232, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %155, align 8, !tbaa !119
  %213 = icmp ne i8* %212, null
  %214 = load i32, i32* %167, align 8, !tbaa !138
  %215 = load i32, i32* %160, align 4
  %216 = icmp eq i32 %214, %215
  %217 = select i1 %213, i1 %216, i1 false
  br i1 %217, label %232, label %218

218:                                              ; preds = %211
  %219 = load i8*, i8** %168, align 8, !tbaa !139
  %220 = icmp ne i8* %212, null
  %221 = zext i1 %220 to i64
  %222 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %221
  %223 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %221, i32 1
  store i32 269, i32* %223, align 8, !tbaa !78
  %224 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %221, i32 2
  store i32 %214, i32* %224, align 4, !tbaa !76
  %225 = load i8, i8* %219, align 1, !tbaa !23
  %226 = icmp eq i8 %225, 0
  %227 = select i1 %226, i8* null, i8* %219
  %228 = getelementptr inbounds %struct.table, %struct.table* %222, i64 0, i32 0
  store i8* %227, i8** %228, align 8, !tbaa !119
  %229 = getelementptr inbounds %struct.table, %struct.table* %222, i64 1, i32 0
  store i8* null, i8** %229, align 8, !tbaa !119
  %230 = load i8*, i8** %164, align 8, !tbaa !119
  %231 = icmp eq i8* %230, null
  br i1 %231, label %232, label %197

232:                                              ; preds = %211, %218, %208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %166) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #38
  %233 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 23328000)
  %234 = extractvalue { i64, i1 } %233, 1
  %235 = extractvalue { i64, i1 } %233, 0
  store i64 %235, i64* %16, align 8
  br i1 %234, label %172, label %236

236:                                              ; preds = %232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %166) #38
  %237 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %16, %struct.tm* noundef nonnull %17) #38
  %238 = icmp eq %struct.tm* %237, null
  br i1 %238, label %260, label %239

239:                                              ; preds = %236
  %240 = load i8*, i8** %155, align 8, !tbaa !119
  %241 = icmp ne i8* %240, null
  %242 = load i32, i32* %167, align 8, !tbaa !138
  %243 = load i32, i32* %160, align 4
  %244 = icmp eq i32 %242, %243
  %245 = select i1 %241, i1 %244, i1 false
  br i1 %245, label %260, label %246

246:                                              ; preds = %239
  %247 = load i8*, i8** %168, align 8, !tbaa !139
  %248 = icmp ne i8* %240, null
  %249 = zext i1 %248 to i64
  %250 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %249
  %251 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %249, i32 1
  store i32 269, i32* %251, align 8, !tbaa !78
  %252 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 32, i64 %249, i32 2
  store i32 %242, i32* %252, align 4, !tbaa !76
  %253 = load i8, i8* %247, align 1, !tbaa !23
  %254 = icmp eq i8 %253, 0
  %255 = select i1 %254, i8* null, i8* %247
  %256 = getelementptr inbounds %struct.table, %struct.table* %250, i64 0, i32 0
  store i8* %255, i8** %256, align 8, !tbaa !119
  %257 = getelementptr inbounds %struct.table, %struct.table* %250, i64 1, i32 0
  store i8* null, i8** %257, align 8, !tbaa !119
  %258 = load i8*, i8** %164, align 8, !tbaa !119
  %259 = icmp eq i8* %258, null
  br i1 %259, label %260, label %197

260:                                              ; preds = %239, %246, %236
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %166) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #38
  br label %261

261:                                              ; preds = %260, %203, %172
  %262 = call i32 @yyparse(%struct.parser_control* noundef nonnull %15)
  %263 = icmp eq i32 %262, 0
  %264 = load i8, i8* %106, align 2, !tbaa !75
  %265 = icmp eq i8 %264, 0
  br i1 %263, label %273, label %266

266:                                              ; preds = %261
  br i1 %265, label %1058, label %267

267:                                              ; preds = %266
  %268 = load i8*, i8** %105, align 8, !tbaa !62
  %269 = icmp ugt i8* %29, %268
  %270 = select i1 %269, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.186, i64 0, i64 0)
  %271 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef %270, i32 noundef 5) #38
  %272 = load i8*, i8** %105, align 8, !tbaa !62
  call void (i8*, ...) @dbg_printf(i8* noundef %271, i8* noundef %272)
  br label %1058

273:                                              ; preds = %261
  br i1 %265, label %382, label %274

274:                                              ; preds = %273
  %275 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i64 0, i64 0), i32 noundef 5) #38
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %277 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %276) #44
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %279 = call i32 @fputs(i8* noundef %275, %struct._IO_FILE* noundef %278) #44
  %280 = load i8, i8* %145, align 8, !tbaa !85, !range !56
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %274
  %283 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.189, i64 0, i64 0), i32 noundef 5) #38
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %285 = call i32 @fputs(i8* noundef %283, %struct._IO_FILE* noundef %284) #43
  br label %316

286:                                              ; preds = %274
  %287 = load i64, i64* %153, align 8, !tbaa !90
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %286
  %290 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.190, i64 0, i64 0), i32 noundef 5) #38
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %292 = call i32 @fputs(i8* noundef %290, %struct._IO_FILE* noundef %291) #43
  br label %316

293:                                              ; preds = %286
  %294 = icmp eq i8* %97, null
  br i1 %294, label %312, label %295

295:                                              ; preds = %293
  %296 = icmp eq %struct.tm_zone* %95, %4
  br i1 %296, label %301, label %297

297:                                              ; preds = %295
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %299 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.191, i64 0, i64 0), i32 noundef 5) #38
  %300 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %298, i32 noundef 1, i8* noundef %299, i8* noundef nonnull %97) #38
  br label %316

301:                                              ; preds = %295
  %302 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %97, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0)) #39
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.193, i64 0, i64 0), i32 noundef 5) #38
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %307 = call i32 @fputs(i8* noundef %305, %struct._IO_FILE* noundef %306) #43
  br label %316

308:                                              ; preds = %301
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %310 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.194, i64 0, i64 0), i32 noundef 5) #38
  %311 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %309, i32 noundef 1, i8* noundef %310, i8* noundef nonnull %97) #38
  br label %316

312:                                              ; preds = %293
  %313 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.195, i64 0, i64 0), i32 noundef 5) #38
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %315 = call i32 @fputs(i8* noundef %313, %struct._IO_FILE* noundef %314) #43
  br label %316

316:                                              ; preds = %289, %297, %308, %304, %312, %282
  %317 = load i64, i64* %151, align 8, !tbaa !88
  %318 = icmp ne i64 %317, 0
  %319 = load i64, i64* %153, align 8
  %320 = icmp eq i64 %319, 0
  %321 = select i1 %318, i1 %320, i1 false
  %322 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = icmp sgt i32 %323, 0
  %325 = select i1 %321, i1 %324, i1 false
  br i1 %325, label %326, label %330

326:                                              ; preds = %316
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %328 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.196, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %327) #43
  %329 = load i64, i64* %153, align 8, !tbaa !90
  br label %330

330:                                              ; preds = %326, %316
  %331 = phi i64 [ %329, %326 ], [ %319, %316 ]
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %379, label %333

333:                                              ; preds = %330
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %335 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 4
  %336 = load i32, i32* %335, align 8, !tbaa !96
  %337 = icmp slt i32 %336, 0
  %338 = freeze i32 %336
  %339 = sdiv i32 %338, 3600
  %340 = call i32 @llvm.abs.i32(i32 %339, i1 true) #38
  %341 = select i1 %337, i32 45, i32 43
  %342 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %26, i32 noundef 1, i64 noundef 27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.187, i64 0, i64 0), i32 noundef %341, i32 noundef %340) #38
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 %343
  %345 = mul i32 %339, 3600
  %346 = sub i32 %338, %345
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %377, label %348

348:                                              ; preds = %333
  %349 = call i32 @llvm.abs.i32(i32 %346, i1 true) #38
  %350 = trunc i32 %349 to i16
  %351 = freeze i16 %350
  %352 = udiv i16 %351, 60
  %353 = mul i16 %352, 60
  %354 = sub i16 %351, %353
  %355 = getelementptr inbounds i8, i8* %344, i64 1
  store i8 58, i8* %344, align 1, !tbaa !23
  %356 = udiv i16 %350, 600
  %357 = trunc i16 %356 to i8
  %358 = add nuw nsw i8 %357, 48
  %359 = getelementptr inbounds i8, i8* %344, i64 2
  store i8 %358, i8* %355, align 1, !tbaa !23
  %360 = trunc i16 %352 to i8
  %361 = urem i8 %360, 10
  %362 = or i8 %361, 48
  %363 = getelementptr inbounds i8, i8* %344, i64 3
  store i8 %362, i8* %359, align 1, !tbaa !23
  %364 = icmp eq i16 %354, 0
  br i1 %364, label %375, label %365

365:                                              ; preds = %348
  %366 = getelementptr inbounds i8, i8* %344, i64 4
  store i8 58, i8* %363, align 1, !tbaa !23
  %367 = trunc i16 %354 to i8
  %368 = udiv i8 %367, 10
  %369 = or i8 %368, 48
  %370 = getelementptr inbounds i8, i8* %344, i64 5
  store i8 %369, i8* %366, align 1, !tbaa !23
  %371 = mul i8 %368, 10
  %372 = sub i8 %367, %371
  %373 = or i8 %372, 48
  %374 = getelementptr inbounds i8, i8* %344, i64 6
  store i8 %373, i8* %370, align 1, !tbaa !23
  br label %375

375:                                              ; preds = %365, %348
  %376 = phi i8* [ %374, %365 ], [ %363, %348 ]
  store i8 0, i8* %376, align 1, !tbaa !23
  br label %377

377:                                              ; preds = %333, %375
  %378 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %334, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0), i8* noundef nonnull %26) #38
  br label %379

379:                                              ; preds = %377, %330
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %381 = call i32 @fputc(i32 noundef 10, %struct._IO_FILE* noundef %380)
  br label %382

382:                                              ; preds = %379, %273
  %383 = load i8, i8* %145, align 8, !tbaa !85, !range !56
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %389, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 11
  %387 = bitcast %struct.timespec* %0 to i8*
  %388 = bitcast %struct.timespec* %386 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %387, i8* noundef nonnull align 8 dereferenceable(16) %388, i64 16, i1 false), !tbaa.struct !32
  br label %975

389:                                              ; preds = %382
  %390 = load i64, i64* %149, align 8, !tbaa !86
  %391 = load i64, i64* %147, align 8, !tbaa !87
  %392 = or i64 %391, %390
  %393 = load i64, i64* %148, align 8, !tbaa !91
  %394 = or i64 %392, %393
  %395 = load i64, i64* %152, align 8, !tbaa !98
  %396 = or i64 %394, %395
  %397 = load i64, i64* %150, align 8, !tbaa !89
  %398 = load i64, i64* %151, align 8, !tbaa !88
  %399 = add nsw i64 %398, %397
  %400 = load i64, i64* %153, align 8, !tbaa !90
  %401 = add nsw i64 %399, %400
  %402 = or i64 %396, %401
  %403 = icmp sgt i64 %402, 1
  %404 = load i8, i8* %106, align 2, !tbaa !75
  %405 = icmp eq i8 %404, 0
  br i1 %403, label %406, label %436

406:                                              ; preds = %389
  br i1 %405, label %1058, label %407

407:                                              ; preds = %406
  %408 = icmp sgt i64 %390, 1
  br i1 %408, label %409, label %412

409:                                              ; preds = %407
  %410 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.198, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %410)
  %411 = load i64, i64* %147, align 8, !tbaa !87
  br label %412

412:                                              ; preds = %409, %407
  %413 = phi i64 [ %411, %409 ], [ %391, %407 ]
  %414 = icmp sgt i64 %413, 1
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.199, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %416)
  br label %417

417:                                              ; preds = %415, %412
  %418 = load i64, i64* %148, align 8, !tbaa !91
  %419 = icmp sgt i64 %418, 1
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  %421 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.200, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %421)
  br label %422

422:                                              ; preds = %420, %417
  %423 = load i64, i64* %152, align 8, !tbaa !98
  %424 = icmp sgt i64 %423, 1
  br i1 %424, label %425, label %427

425:                                              ; preds = %422
  %426 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.201, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %426)
  br label %427

427:                                              ; preds = %425, %422
  %428 = load i64, i64* %150, align 8, !tbaa !89
  %429 = load i64, i64* %151, align 8, !tbaa !88
  %430 = add nsw i64 %429, %428
  %431 = load i64, i64* %153, align 8, !tbaa !90
  %432 = add nsw i64 %430, %431
  %433 = icmp sgt i64 %432, 1
  br i1 %433, label %434, label %1058

434:                                              ; preds = %427
  %435 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.202, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %435)
  br label %1058

436:                                              ; preds = %389
  %437 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 5
  %438 = load i64, i64* %111, align 8, !tbaa.struct !32
  %439 = icmp sgt i64 %438, -1
  br i1 %439, label %440, label %453

440:                                              ; preds = %436
  %441 = load i64, i64* %114, align 8, !tbaa.struct !34
  %442 = icmp eq i64 %441, 2
  br i1 %442, label %443, label %459

443:                                              ; preds = %440
  %444 = icmp ult i64 %438, 69
  %445 = select i1 %444, i64 2000, i64 1900
  %446 = add nuw nsw i64 %445, %438
  br i1 %405, label %447, label %451

447:                                              ; preds = %443
  %448 = trunc i64 %446 to i32
  %449 = add i32 %448, -1900
  %450 = icmp ult i64 %446, 2147485548
  store i32 %449, i32* %437, align 4
  br i1 %450, label %470, label %486

451:                                              ; preds = %443
  %452 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.240, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %452, i64 noundef %438, i64 noundef %446) #38
  br label %459

453:                                              ; preds = %436
  %454 = trunc i64 %438 to i32
  %455 = sub i32 -1900, %454
  %456 = add nsw i64 %438, 2147485547
  %457 = icmp ult i64 %456, 4294967296
  store i32 %455, i32* %437, align 4
  %458 = or i1 %405, %457
  br i1 %458, label %468, label %465

459:                                              ; preds = %451, %440
  %460 = phi i64 [ %438, %440 ], [ %446, %451 ]
  %461 = trunc i64 %460 to i32
  %462 = add i32 %461, -1900
  %463 = icmp ult i64 %460, 2147485548
  store i32 %462, i32* %437, align 4
  %464 = or i1 %405, %463
  br i1 %464, label %468, label %465

465:                                              ; preds = %453, %459
  %466 = phi i64 [ %438, %453 ], [ %460, %459 ]
  %467 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.241, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %467, i64 noundef %466) #38
  br label %486

468:                                              ; preds = %453, %459
  %469 = phi i1 [ %463, %459 ], [ %457, %453 ]
  br i1 %469, label %470, label %486

470:                                              ; preds = %447, %468
  %471 = load i64, i64* %119, align 8, !tbaa !114
  %472 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 4
  %473 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %471, i64 -1)
  %474 = extractvalue { i64, i1 } %473, 1
  %475 = extractvalue { i64, i1 } %473, 0
  %476 = trunc i64 %475 to i32
  %477 = add i64 %475, -2147483648
  %478 = icmp ult i64 %477, -4294967296
  %479 = or i1 %474, %478
  store i32 %476, i32* %472, align 8
  br i1 %479, label %486, label %480

480:                                              ; preds = %470
  %481 = load i64, i64* %123, align 8, !tbaa !115
  %482 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 3
  %483 = trunc i64 %481 to i32
  %484 = add i64 %481, -2147483648
  %485 = icmp ult i64 %484, -4294967296
  store i32 %483, i32* %482, align 4
  br i1 %485, label %486, label %491

486:                                              ; preds = %447, %465, %480, %470, %468
  %487 = load i8, i8* %106, align 2, !tbaa !75
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %1058, label %489

489:                                              ; preds = %486
  %490 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.203, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %490)
  br label %1058

491:                                              ; preds = %480
  %492 = load i64, i64* %149, align 8, !tbaa !86
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %491
  %495 = load i8, i8* %146, align 1, !tbaa !110, !range !56
  %496 = icmp eq i8 %495, 0
  %497 = load i64, i64* %147, align 8
  %498 = icmp ne i64 %497, 0
  %499 = select i1 %496, i1 true, i1 %498
  %500 = load i64, i64* %148, align 8
  %501 = icmp ne i64 %500, 0
  %502 = select i1 %499, i1 true, i1 %501
  br i1 %502, label %536, label %503

503:                                              ; preds = %494, %491
  %504 = load i64, i64* %127, align 8, !tbaa !92
  %505 = load i32, i32* %142, align 4, !tbaa !93
  %506 = call fastcc i32 @to_hour(i64 noundef %504, i32 noundef %505)
  %507 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 2
  store i32 %506, i32* %507, align 8, !tbaa !39
  %508 = icmp slt i32 %506, 0
  br i1 %508, label %509, label %519

509:                                              ; preds = %503
  %510 = load i8, i8* %106, align 2, !tbaa !75
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %1058, label %512

512:                                              ; preds = %509
  %513 = icmp eq i32 %505, 0
  %514 = icmp eq i32 %505, 1
  %515 = select i1 %514, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.181, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0)
  %516 = select i1 %513, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i64 0, i64 0), i8* %515
  %517 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.205, i64 0, i64 0), i32 noundef 5) #38
  %518 = load i64, i64* %127, align 8, !tbaa !92
  call void (i8*, ...) @dbg_printf(i8* noundef %517, i64 noundef %518, i8* noundef %516)
  br label %1058

519:                                              ; preds = %503
  %520 = bitcast i64* %131 to <2 x i64>*
  %521 = load <2 x i64>, <2 x i64>* %520, align 8, !tbaa !33
  %522 = trunc <2 x i64> %521 to <2 x i32>
  %523 = shufflevector <2 x i32> %522, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %524 = bitcast %struct.tm* %7 to <2 x i32>*
  store <2 x i32> %523, <2 x i32>* %524, align 8, !tbaa !21
  %525 = load i8, i8* %106, align 2, !tbaa !75
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %543, label %527

527:                                              ; preds = %519
  %528 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 0
  %529 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 1
  %530 = select i1 %493, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.207, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.206, i64 0, i64 0)
  %531 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef %530, i32 noundef 5) #38
  %532 = load i32, i32* %528, align 8, !tbaa !41
  %533 = load i32, i32* %529, align 4, !tbaa !40
  %534 = load i32, i32* %507, align 8, !tbaa !39
  %535 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %27, i64 noundef 100, i32 noundef 1, i64 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.242, i64 0, i64 0), i32 noundef %534, i32 noundef %533, i32 noundef %532) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %531, i8* noundef nonnull %27)
  br label %543

536:                                              ; preds = %494
  %537 = bitcast %struct.tm* %7 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %537, align 8, !tbaa !21
  %538 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 2
  store i32 0, i32* %538, align 8, !tbaa !39
  store i64 0, i64* %138, align 8, !tbaa !129
  %539 = load i8, i8* %106, align 2, !tbaa !75
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %543, label %541

541:                                              ; preds = %536
  %542 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.208, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %542, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i64 0, i64 0))
  br label %543

543:                                              ; preds = %536, %541, %519, %527
  %544 = load i64, i64* %147, align 8, !tbaa !87
  %545 = load i64, i64* %148, align 8, !tbaa !91
  %546 = or i64 %545, %544
  %547 = load i64, i64* %149, align 8, !tbaa !86
  %548 = or i64 %546, %547
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %551, label %550

550:                                              ; preds = %543
  store i32 -1, i32* %141, align 8, !tbaa !138
  br label %551

551:                                              ; preds = %550, %543
  %552 = load i64, i64* %151, align 8, !tbaa !88
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  %555 = load i32, i32* %141, align 8, !tbaa !138
  br label %559

556:                                              ; preds = %551
  %557 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 3
  %558 = load i32, i32* %557, align 4, !tbaa !97
  store i32 %558, i32* %141, align 8, !tbaa !138
  br label %559

559:                                              ; preds = %554, %556
  %560 = phi i32 [ %555, %554 ], [ %558, %556 ]
  %561 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 0
  %562 = load i32, i32* %561, align 8, !tbaa !41
  %563 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 0
  store i32 %562, i32* %563, align 8, !tbaa !41
  %564 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 1
  %565 = load i32, i32* %564, align 4, !tbaa !40
  %566 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 1
  store i32 %565, i32* %566, align 4, !tbaa !40
  %567 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 2
  %568 = load i32, i32* %567, align 8, !tbaa !39
  %569 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 2
  store i32 %568, i32* %569, align 8, !tbaa !39
  %570 = load i32, i32* %482, align 4, !tbaa !38
  %571 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 3
  store i32 %570, i32* %571, align 4, !tbaa !38
  %572 = load i32, i32* %472, align 8, !tbaa !37
  %573 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 4
  store i32 %572, i32* %573, align 8, !tbaa !37
  %574 = load i32, i32* %437, align 4, !tbaa !35
  %575 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 5
  store i32 %574, i32* %575, align 4, !tbaa !35
  %576 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 8
  store i32 %560, i32* %576, align 8, !tbaa !138
  %577 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 6
  store i32 -1, i32* %577, align 8, !tbaa !140
  %578 = call i64 @mktime_z(%struct.tm_zone* noundef %95, %struct.tm* noundef nonnull %7) #38
  %579 = load i32, i32* %577, align 8, !tbaa !140
  %580 = icmp slt i32 %579, 0
  br i1 %580, label %600, label %581

581:                                              ; preds = %559
  %582 = load i32, i32* %561, align 8, !tbaa !41
  %583 = xor i32 %582, %562
  %584 = load i32, i32* %564, align 4, !tbaa !40
  %585 = xor i32 %584, %565
  %586 = or i32 %585, %583
  %587 = load i32, i32* %567, align 8, !tbaa !39
  %588 = xor i32 %587, %568
  %589 = or i32 %586, %588
  %590 = load i32, i32* %482, align 4, !tbaa !38
  %591 = xor i32 %590, %570
  %592 = or i32 %589, %591
  %593 = load i32, i32* %472, align 8, !tbaa !37
  %594 = xor i32 %593, %572
  %595 = or i32 %592, %594
  %596 = load i32, i32* %437, align 4, !tbaa !35
  %597 = xor i32 %596, %574
  %598 = or i32 %595, %597
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %644, label %600

600:                                              ; preds = %559, %581
  %601 = load i64, i64* %153, align 8, !tbaa !90
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %643

603:                                              ; preds = %600
  %604 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %604) #38
  %605 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 2
  store i8 88, i8* %605, align 2, !tbaa !23
  %606 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 1
  store i8 88, i8* %606, align 1, !tbaa !23
  store i8 88, i8* %604, align 4, !tbaa !23
  %607 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 4
  %608 = load i32, i32* %607, align 8, !tbaa !96
  %609 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 3
  %610 = call fastcc i8* @time_zone_str(i32 noundef %608, i8* noundef nonnull %609)
  %611 = call %struct.tm_zone* @tzalloc(i8* noundef nonnull %604) #38
  %612 = icmp eq %struct.tm_zone* %611, null
  br i1 %612, label %613, label %618

613:                                              ; preds = %603
  %614 = load i8, i8* %106, align 2, !tbaa !75
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %623, label %616

616:                                              ; preds = %613
  %617 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.210, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %617, i8* noundef nonnull %604)
  br label %623

618:                                              ; preds = %603
  store i32 %562, i32* %561, align 8, !tbaa !41
  store i32 %565, i32* %564, align 4, !tbaa !40
  store i32 %568, i32* %567, align 8, !tbaa !39
  store i32 %570, i32* %482, align 4, !tbaa !38
  store i32 %572, i32* %472, align 8, !tbaa !37
  store i32 %574, i32* %437, align 4, !tbaa !35
  store i32 %560, i32* %141, align 8, !tbaa !138
  store i32 -1, i32* %577, align 8, !tbaa !140
  %619 = call i64 @mktime_z(%struct.tm_zone* noundef nonnull %611, %struct.tm* noundef nonnull %7) #38
  %620 = load i32, i32* %577, align 8, !tbaa !140
  %621 = icmp slt i32 %620, 0
  br i1 %621, label %622, label %624

622:                                              ; preds = %618
  call void @tzfree(%struct.tm_zone* noundef nonnull %611) #38
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %604) #38
  br label %643

623:                                              ; preds = %613, %616
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %604) #38
  br label %1058

624:                                              ; preds = %618
  %625 = load i32, i32* %561, align 8, !tbaa !41
  %626 = xor i32 %625, %562
  %627 = load i32, i32* %564, align 4, !tbaa !40
  %628 = xor i32 %627, %565
  %629 = or i32 %628, %626
  %630 = load i32, i32* %567, align 8, !tbaa !39
  %631 = xor i32 %630, %568
  %632 = or i32 %629, %631
  %633 = load i32, i32* %482, align 4, !tbaa !38
  %634 = xor i32 %633, %570
  %635 = or i32 %632, %634
  %636 = load i32, i32* %472, align 8, !tbaa !37
  %637 = xor i32 %636, %572
  %638 = or i32 %635, %637
  %639 = load i32, i32* %437, align 4, !tbaa !35
  %640 = xor i32 %639, %574
  %641 = or i32 %638, %640
  %642 = icmp eq i32 %641, 0
  call void @tzfree(%struct.tm_zone* noundef nonnull %611) #38
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %604) #38
  br i1 %642, label %644, label %643

643:                                              ; preds = %600, %622, %624
  call fastcc void @debug_mktime_not_ok(%struct.tm* noundef nonnull %8, %struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i1 noundef %602)
  br label %1058

644:                                              ; preds = %624, %581
  %645 = phi i64 [ %578, %581 ], [ %619, %624 ]
  %646 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %646) #38
  %647 = load i64, i64* %148, align 8, !tbaa !91
  %648 = icmp eq i64 %647, 0
  %649 = load i64, i64* %147, align 8
  %650 = icmp ne i64 %649, 0
  %651 = select i1 %648, i1 true, i1 %650
  br i1 %651, label %709, label %652

652:                                              ; preds = %644
  %653 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 7
  store i32 -1, i32* %653, align 4, !tbaa !141
  %654 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 1
  %655 = load i64, i64* %654, align 8, !tbaa !111
  %656 = icmp sgt i64 %655, 0
  %657 = load i32, i32* %577, align 8
  %658 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = icmp ne i32 %659, %657
  %661 = select i1 %656, i1 %660, i1 false
  %662 = sext i1 %661 to i64
  %663 = add i64 %655, %662
  %664 = icmp slt i64 %663, 0
  br i1 %664, label %665, label %668

665:                                              ; preds = %652
  %666 = add i64 %663, -1
  %667 = icmp ult i64 %666, -1317624576693539402
  br i1 %667, label %693, label %670

668:                                              ; preds = %652
  %669 = icmp ugt i64 %663, 1317624576693539401
  br i1 %669, label %693, label %670

670:                                              ; preds = %668, %665
  %671 = mul nsw i64 %663, 7
  %672 = sub i32 7, %657
  %673 = add i32 %672, %659
  %674 = srem i32 %673, 7
  %675 = sext i32 %674 to i64
  %676 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %675, i64 %671)
  %677 = extractvalue { i64, i1 } %676, 1
  br i1 %677, label %693, label %678

678:                                              ; preds = %670
  %679 = extractvalue { i64, i1 } %676, 0
  %680 = load i32, i32* %482, align 4, !tbaa !38
  %681 = sext i32 %680 to i64
  %682 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %679, i64 %681)
  %683 = extractvalue { i64, i1 } %682, 1
  %684 = extractvalue { i64, i1 } %682, 0
  %685 = trunc i64 %684 to i32
  %686 = add i64 %684, -2147483648
  %687 = icmp ult i64 %686, -4294967296
  %688 = or i1 %683, %687
  store i32 %685, i32* %482, align 4
  br i1 %688, label %693, label %689

689:                                              ; preds = %678
  store i32 -1, i32* %141, align 8, !tbaa !138
  %690 = call i64 @mktime_z(%struct.tm_zone* noundef %95, %struct.tm* noundef nonnull %7) #38
  %691 = load i32, i32* %653, align 4, !tbaa !141
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %693, label %702

693:                                              ; preds = %665, %668, %678, %670, %689
  %694 = load i8, i8* %106, align 2, !tbaa !75
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %973, label %696

696:                                              ; preds = %693
  %697 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.211, i64 0, i64 0), i32 noundef 5) #38
  %698 = call fastcc i8* @str_days(%struct.parser_control* noundef nonnull %15, i8* noundef nonnull %646)
  %699 = load i64, i64* %654, align 8, !tbaa !111
  %700 = load i32, i32* %658, align 8, !tbaa !112
  %701 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %697, i8* noundef nonnull %646, i64 noundef %699, i32 noundef %700, i8* noundef nonnull %27)
  br label %973

702:                                              ; preds = %689
  %703 = load i8, i8* %106, align 2, !tbaa !75
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %736, label %705

705:                                              ; preds = %702
  %706 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.212, i64 0, i64 0), i32 noundef 5) #38
  %707 = call fastcc i8* @str_days(%struct.parser_control* noundef nonnull %15, i8* noundef nonnull %646)
  %708 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %706, i8* noundef nonnull %646, i8* noundef nonnull %27)
  br label %709

709:                                              ; preds = %705, %644
  %710 = phi i64 [ %690, %705 ], [ %645, %644 ]
  %711 = load i8, i8* %106, align 2, !tbaa !75
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %736, label %713

713:                                              ; preds = %709
  %714 = load i64, i64* %147, align 8, !tbaa !87
  %715 = icmp ne i64 %714, 0
  %716 = load i64, i64* %148, align 8
  %717 = icmp ne i64 %716, 0
  %718 = select i1 %715, i1 true, i1 %717
  br i1 %718, label %724, label %719

719:                                              ; preds = %713
  %720 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.213, i64 0, i64 0), i32 noundef 5) #38
  %721 = call fastcc i8* @debug_strfdate(%struct.tm* noundef nonnull %7, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %720, i8* noundef nonnull %27)
  %722 = load i64, i64* %148, align 8, !tbaa !91
  %723 = load i64, i64* %147, align 8
  br label %724

724:                                              ; preds = %719, %713
  %725 = phi i64 [ %723, %719 ], [ %714, %713 ]
  %726 = phi i64 [ %722, %719 ], [ %716, %713 ]
  %727 = icmp ne i64 %726, 0
  %728 = icmp ne i64 %725, 0
  %729 = select i1 %727, i1 %728, i1 false
  br i1 %729, label %730, label %733

730:                                              ; preds = %724
  %731 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.214, i64 0, i64 0), i32 noundef 5) #38
  %732 = call fastcc i8* @str_days(%struct.parser_control* noundef nonnull %15, i8* noundef nonnull %646)
  call void (i8*, ...) @dbg_printf(i8* noundef %731, i8* noundef nonnull %646)
  br label %733

733:                                              ; preds = %730, %724
  %734 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.215, i64 0, i64 0), i32 noundef 5) #38
  %735 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %734, i8* noundef nonnull %27)
  br label %736

736:                                              ; preds = %702, %733, %709
  %737 = phi i64 [ %710, %733 ], [ %710, %709 ], [ %690, %702 ]
  %738 = getelementptr inbounds %struct.relative_time, %struct.relative_time* %143, i64 0, i32 0
  %739 = load i64, i64* %738, align 8, !tbaa !109
  %740 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 1
  %741 = load i64, i64* %740, align 8, !tbaa !108
  %742 = or i64 %741, %739
  %743 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 2
  %744 = load i64, i64* %743, align 8, !tbaa !107
  %745 = or i64 %742, %744
  %746 = icmp eq i64 %745, 0
  br i1 %746, label %854, label %747

747:                                              ; preds = %736
  %748 = load i8, i8* %106, align 2, !tbaa !75
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %768, label %750

750:                                              ; preds = %747
  %751 = icmp ne i64 %739, 0
  %752 = icmp ne i64 %741, 0
  %753 = select i1 %751, i1 true, i1 %752
  %754 = load i32, i32* %482, align 4
  %755 = icmp ne i32 %754, 15
  %756 = select i1 %753, i1 %755, i1 false
  br i1 %756, label %757, label %760

757:                                              ; preds = %750
  %758 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.216, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %758)
  %759 = load i64, i64* %743, align 8, !tbaa !107
  br label %760

760:                                              ; preds = %750, %757
  %761 = phi i64 [ %744, %750 ], [ %759, %757 ]
  %762 = icmp ne i64 %761, 0
  %763 = load i32, i32* %567, align 8
  %764 = icmp ne i32 %763, 12
  %765 = select i1 %762, i1 %764, i1 false
  br i1 %765, label %766, label %768

766:                                              ; preds = %760
  %767 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.217, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %767)
  br label %768

768:                                              ; preds = %760, %766, %747
  %769 = load i32, i32* %437, align 4, !tbaa !35
  %770 = load i64, i64* %738, align 8, !tbaa !109
  %771 = sext i32 %769 to i64
  %772 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %771, i64 %770)
  %773 = extractvalue { i64, i1 } %772, 1
  %774 = extractvalue { i64, i1 } %772, 0
  %775 = trunc i64 %774 to i32
  %776 = add i64 %774, -2147483648
  %777 = icmp ult i64 %776, -4294967296
  %778 = or i1 %773, %777
  br i1 %778, label %801, label %779

779:                                              ; preds = %768
  %780 = load i32, i32* %472, align 8, !tbaa !37
  %781 = load i64, i64* %740, align 8, !tbaa !108
  %782 = sext i32 %780 to i64
  %783 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %782, i64 %781)
  %784 = extractvalue { i64, i1 } %783, 1
  %785 = extractvalue { i64, i1 } %783, 0
  %786 = trunc i64 %785 to i32
  %787 = add i64 %785, -2147483648
  %788 = icmp ult i64 %787, -4294967296
  %789 = or i1 %784, %788
  br i1 %789, label %801, label %790

790:                                              ; preds = %779
  %791 = load i32, i32* %482, align 4, !tbaa !38
  %792 = load i64, i64* %743, align 8, !tbaa !107
  %793 = sext i32 %791 to i64
  %794 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %793, i64 %792)
  %795 = extractvalue { i64, i1 } %794, 1
  %796 = extractvalue { i64, i1 } %794, 0
  %797 = trunc i64 %796 to i32
  %798 = add i64 %796, -2147483648
  %799 = icmp ult i64 %798, -4294967296
  %800 = or i1 %795, %799
  br i1 %800, label %801, label %806

801:                                              ; preds = %790, %779, %768
  %802 = load i8, i8* %106, align 2, !tbaa !75
  %803 = icmp eq i8 %802, 0
  br i1 %803, label %973, label %804

804:                                              ; preds = %801
  %805 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.218, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %805, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.219, i64 0, i64 0), i32 noundef 2179)
  br label %973

806:                                              ; preds = %790
  store i32 %775, i32* %437, align 4, !tbaa !35
  store i32 %786, i32* %472, align 8, !tbaa !37
  store i32 %797, i32* %482, align 4, !tbaa !38
  store i32 %568, i32* %567, align 8, !tbaa !39
  store i32 %565, i32* %564, align 4, !tbaa !40
  store i32 %562, i32* %561, align 8, !tbaa !41
  store i32 %560, i32* %141, align 8, !tbaa !138
  store i32 -1, i32* %577, align 8, !tbaa !140
  %807 = call i64 @mktime_z(%struct.tm_zone* noundef %95, %struct.tm* noundef nonnull %7) #38
  %808 = load i32, i32* %577, align 8, !tbaa !140
  %809 = icmp slt i32 %808, 0
  %810 = load i8, i8* %106, align 2, !tbaa !75
  %811 = icmp eq i8 %810, 0
  br i1 %809, label %812, label %816

812:                                              ; preds = %806
  br i1 %811, label %973, label %813

813:                                              ; preds = %812
  %814 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.220, i64 0, i64 0), i32 noundef 5) #38
  %815 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %814, i8* noundef nonnull %27)
  br label %973

816:                                              ; preds = %806
  br i1 %811, label %854, label %817

817:                                              ; preds = %816
  %818 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.221, i64 0, i64 0), i32 noundef 5) #38
  %819 = load i64, i64* %738, align 8, !tbaa !109
  %820 = load i64, i64* %740, align 8, !tbaa !108
  %821 = load i64, i64* %743, align 8, !tbaa !107
  call void (i8*, ...) @dbg_printf(i8* noundef %818, i64 noundef %819, i64 noundef %820, i64 noundef %821)
  %822 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.222, i64 0, i64 0), i32 noundef 5) #38
  %823 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %822, i8* noundef nonnull %27)
  %824 = icmp eq i32 %560, -1
  %825 = load i32, i32* %141, align 8
  %826 = icmp eq i32 %825, %560
  %827 = select i1 %824, i1 true, i1 %826
  br i1 %827, label %830, label %828

828:                                              ; preds = %817
  %829 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.223, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %829)
  br label %830

830:                                              ; preds = %828, %817
  %831 = load i64, i64* %743, align 8, !tbaa !107
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %833, label %854

833:                                              ; preds = %830
  %834 = load i32, i32* %482, align 4, !tbaa !38
  %835 = icmp eq i32 %834, %797
  br i1 %835, label %836, label %842

836:                                              ; preds = %833
  %837 = load i64, i64* %740, align 8, !tbaa !108
  %838 = icmp ne i64 %837, 0
  %839 = load i32, i32* %472, align 8
  %840 = icmp eq i32 %839, %786
  %841 = select i1 %838, i1 true, i1 %840
  br i1 %841, label %854, label %842

842:                                              ; preds = %836, %833
  %843 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.224, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %843)
  %844 = getelementptr inbounds [13 x i8], [13 x i8]* %20, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %844) #38
  %845 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.225, i64 0, i64 0), i32 noundef 5) #38
  %846 = call fastcc i8* @tm_year_str(i32 noundef %775, i8* noundef nonnull %844)
  %847 = add nsw i32 %786, 1
  call void (i8*, ...) @dbg_printf(i8* noundef %845, i8* noundef nonnull %844, i32 noundef %847, i32 noundef %797)
  %848 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.226, i64 0, i64 0), i32 noundef 5) #38
  %849 = load i32, i32* %437, align 4, !tbaa !35
  %850 = call fastcc i8* @tm_year_str(i32 noundef %849, i8* noundef nonnull %844)
  %851 = load i32, i32* %472, align 8, !tbaa !37
  %852 = add nsw i32 %851, 1
  %853 = load i32, i32* %482, align 4, !tbaa !38
  call void (i8*, ...) @dbg_printf(i8* noundef %848, i8* noundef nonnull %844, i32 noundef %852, i32 noundef %853)
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %844) #38
  br label %854

854:                                              ; preds = %816, %842, %836, %830, %736
  %855 = phi i64 [ %737, %736 ], [ %807, %830 ], [ %807, %836 ], [ %807, %842 ], [ %807, %816 ]
  %856 = load i64, i64* %153, align 8, !tbaa !90
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %878, label %858

858:                                              ; preds = %854
  %859 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 9
  %860 = load i64, i64* %859, align 8, !tbaa !142
  %861 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 4
  %862 = load i32, i32* %861, align 8, !tbaa !96
  %863 = sext i32 %862 to i64
  %864 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %863, i64 %860)
  %865 = extractvalue { i64, i1 } %864, 1
  %866 = extractvalue { i64, i1 } %864, 0
  %867 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %855, i64 %866)
  %868 = extractvalue { i64, i1 } %867, 1
  %869 = or i1 %865, %868
  br i1 %869, label %870, label %876

870:                                              ; preds = %858
  %871 = load i8, i8* %106, align 2, !tbaa !75
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %973, label %873

873:                                              ; preds = %870
  %874 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.227, i64 0, i64 0), i32 noundef 5) #38
  %875 = load i32, i32* %861, align 8, !tbaa !96
  call void (i8*, ...) @dbg_printf(i8* noundef %874, i32 noundef %875)
  br label %973

876:                                              ; preds = %858
  %877 = extractvalue { i64, i1 } %867, 0
  br label %878

878:                                              ; preds = %876, %854
  %879 = phi i64 [ %877, %876 ], [ %855, %854 ]
  %880 = load i8, i8* %106, align 2, !tbaa !75
  %881 = icmp eq i8 %880, 0
  br i1 %881, label %885, label %882

882:                                              ; preds = %878
  %883 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i64 0, i64 0), i32 noundef 5) #38
  %884 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %7, %struct.parser_control* noundef nonnull %15, i8* noundef nonnull %27)
  call void (i8*, ...) @dbg_printf(i8* noundef %883, i8* noundef nonnull %27, i64 noundef %879)
  br label %885

885:                                              ; preds = %882, %878
  %886 = load i64, i64* %138, align 8, !tbaa !129
  %887 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 6
  %888 = load i32, i32* %887, align 8, !tbaa !103
  %889 = sext i32 %888 to i64
  %890 = add nsw i64 %886, %889
  %891 = srem i64 %890, 1000000000
  %892 = trunc i64 %891 to i32
  %893 = add nsw i32 %892, 1000000000
  %894 = urem i32 %893, 1000000000
  %895 = zext i32 %894 to i64
  %896 = sub nsw i64 %890, %895
  %897 = sdiv i64 %896, 1000000000
  %898 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 3
  %899 = load i64, i64* %898, align 8, !tbaa !106
  %900 = icmp slt i64 %899, 0
  br i1 %900, label %901, label %904

901:                                              ; preds = %885
  %902 = add i64 %899, -1
  %903 = icmp ult i64 %902, -2562047788015216
  br i1 %903, label %937, label %906

904:                                              ; preds = %885
  %905 = icmp ugt i64 %899, 2562047788015215
  br i1 %905, label %937, label %906

906:                                              ; preds = %901, %904
  %907 = mul nsw i64 %899, 3600
  %908 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %879, i64 %907)
  %909 = extractvalue { i64, i1 } %908, 1
  %910 = extractvalue { i64, i1 } %908, 0
  br i1 %909, label %937, label %911

911:                                              ; preds = %906
  %912 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 4
  %913 = load i64, i64* %912, align 8, !tbaa !105
  %914 = icmp slt i64 %913, 0
  br i1 %914, label %915, label %918

915:                                              ; preds = %911
  %916 = add i64 %913, -1
  %917 = icmp ult i64 %916, -153722867280912931
  br i1 %917, label %937, label %920

918:                                              ; preds = %911
  %919 = icmp ugt i64 %913, 153722867280912930
  br i1 %919, label %937, label %920

920:                                              ; preds = %915, %918
  %921 = mul nsw i64 %913, 60
  %922 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %910, i64 %921)
  %923 = extractvalue { i64, i1 } %922, 1
  br i1 %923, label %937, label %924

924:                                              ; preds = %920
  %925 = extractvalue { i64, i1 } %922, 0
  %926 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %15, i64 0, i32 12, i32 5
  %927 = load i64, i64* %926, align 8, !tbaa !104
  %928 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %925, i64 %927)
  %929 = extractvalue { i64, i1 } %928, 1
  br i1 %929, label %937, label %930

930:                                              ; preds = %924
  %931 = extractvalue { i64, i1 } %928, 0
  %932 = shl i64 %897, 32
  %933 = ashr exact i64 %932, 32
  %934 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %931, i64 %933)
  %935 = extractvalue { i64, i1 } %934, 1
  %936 = extractvalue { i64, i1 } %934, 0
  br i1 %935, label %937, label %942

937:                                              ; preds = %915, %901, %918, %904, %930, %924, %920, %906
  %938 = load i8, i8* %106, align 2, !tbaa !75
  %939 = icmp eq i8 %938, 0
  br i1 %939, label %973, label %940

940:                                              ; preds = %937
  %941 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.229, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %941)
  br label %973

942:                                              ; preds = %930
  %943 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %936, i64* %943, align 8, !tbaa !133
  %944 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %895, i64* %944, align 8, !tbaa !29
  %945 = load i8, i8* %106, align 2, !tbaa !75
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %974, label %947

947:                                              ; preds = %942
  %948 = or i64 %899, %889
  %949 = or i64 %948, %913
  %950 = or i64 %949, %927
  %951 = icmp eq i64 %950, 0
  br i1 %951, label %974, label %952

952:                                              ; preds = %947
  %953 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.230, i64 0, i64 0), i32 noundef 5) #38
  %954 = load i64, i64* %898, align 8, !tbaa !106
  %955 = load i64, i64* %912, align 8, !tbaa !105
  %956 = load i64, i64* %926, align 8, !tbaa !104
  %957 = load i32, i32* %887, align 8, !tbaa !103
  call void (i8*, ...) @dbg_printf(i8* noundef %953, i64 noundef %954, i64 noundef %955, i64 noundef %956, i32 noundef %957)
  %958 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.231, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %958, i64 noundef %936)
  %959 = bitcast %struct.tm* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %959) #38
  %960 = load i32, i32* %141, align 8, !tbaa !138
  %961 = icmp eq i32 %960, -1
  br i1 %961, label %972, label %962

962:                                              ; preds = %952
  %963 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %943, %struct.tm* noundef nonnull %21) #38
  %964 = icmp eq %struct.tm* %963, null
  br i1 %964, label %972, label %965

965:                                              ; preds = %962
  %966 = load i32, i32* %141, align 8, !tbaa !138
  %967 = getelementptr inbounds %struct.tm, %struct.tm* %21, i64 0, i32 8
  %968 = load i32, i32* %967, align 8, !tbaa !138
  %969 = icmp eq i32 %966, %968
  br i1 %969, label %972, label %970

970:                                              ; preds = %965
  %971 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.232, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %971)
  br label %972

972:                                              ; preds = %970, %965, %962, %952
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %959) #38
  br label %974

973:                                              ; preds = %804, %801, %813, %812, %940, %937, %693, %696, %870, %873
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %646) #38
  br label %1058

974:                                              ; preds = %972, %947, %942
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %646) #38
  br label %975

975:                                              ; preds = %974, %385
  %976 = load i8, i8* %106, align 2, !tbaa !75
  %977 = icmp eq i8 %976, 0
  br i1 %977, label %1058, label %978

978:                                              ; preds = %975
  %979 = icmp eq i8* %97, null
  br i1 %979, label %980, label %986

980:                                              ; preds = %978
  %981 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.233, i64 0, i64 0), i32 noundef 5) #38
  %982 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %983 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %982) #44
  %984 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %985 = call i32 @fputs(i8* noundef %981, %struct._IO_FILE* noundef %984) #44
  br label %993

986:                                              ; preds = %978
  %987 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %97, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0)) #39
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %986
  %990 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i64 0, i64 0), i32 noundef 5) #38
  call fastcc void @dbg_fputs(i8* noundef %990)
  br label %993

991:                                              ; preds = %986
  %992 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.235, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %992, i8* noundef nonnull %97)
  br label %993

993:                                              ; preds = %989, %991, %980
  %994 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  %995 = load i64, i64* %994, align 8, !tbaa !133
  %996 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  %997 = load i64, i64* %996, align 8, !tbaa !29
  %998 = trunc i64 %997 to i32
  %999 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.236, i64 0, i64 0), i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %999, i64 noundef %995, i32 noundef %998)
  %1000 = bitcast %struct.tm* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1000) #38
  %1001 = bitcast %struct.tm* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1001) #38
  %1002 = call %struct.tm* @gmtime_r(i64* noundef nonnull %994, %struct.tm* noundef nonnull %22) #38
  %1003 = icmp eq %struct.tm* %1002, null
  br i1 %1003, label %1007, label %1004

1004:                                             ; preds = %993
  %1005 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.237, i64 0, i64 0), i32 noundef 5) #38
  %1006 = call i64 @strftime(i8* noundef nonnull %27, i64 noundef 100, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i64 0, i64 0), %struct.tm* noundef nonnull %22) #38
  call void (i8*, ...) @dbg_printf(i8* noundef %1005, i8* noundef nonnull %27)
  br label %1007

1007:                                             ; preds = %1004, %993
  %1008 = call %struct.tm* @localtime_rz(%struct.tm_zone* noundef %95, i64* noundef nonnull %994, %struct.tm* noundef nonnull %23) #38
  %1009 = icmp eq %struct.tm* %1008, null
  br i1 %1009, label %1057, label %1010

1010:                                             ; preds = %1007
  %1011 = getelementptr inbounds %struct.tm, %struct.tm* %23, i64 0, i32 9
  %1012 = load i64, i64* %1011, align 8, !tbaa !142
  %1013 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i64 0, i64 0), i32 noundef 5) #38
  %1014 = call i64 @strftime(i8* noundef nonnull %27, i64 noundef 100, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i64 0, i64 0), %struct.tm* noundef nonnull %23) #38
  %1015 = trunc i64 %1012 to i32
  %1016 = icmp slt i32 %1015, 0
  %1017 = freeze i32 %1015
  %1018 = sdiv i32 %1017, 3600
  %1019 = call i32 @llvm.abs.i32(i32 %1018, i1 true) #38
  %1020 = select i1 %1016, i32 45, i32 43
  %1021 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %26, i32 noundef 1, i64 noundef 27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.187, i64 0, i64 0), i32 noundef %1020, i32 noundef %1019) #38
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [27 x i8], [27 x i8]* %9, i64 0, i64 %1022
  %1024 = mul i32 %1018, 3600
  %1025 = sub i32 %1017, %1024
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1056, label %1027

1027:                                             ; preds = %1010
  %1028 = call i32 @llvm.abs.i32(i32 %1025, i1 true) #38
  %1029 = trunc i32 %1028 to i16
  %1030 = freeze i16 %1029
  %1031 = udiv i16 %1030, 60
  %1032 = mul i16 %1031, 60
  %1033 = sub i16 %1030, %1032
  %1034 = getelementptr inbounds i8, i8* %1023, i64 1
  store i8 58, i8* %1023, align 1, !tbaa !23
  %1035 = udiv i16 %1029, 600
  %1036 = trunc i16 %1035 to i8
  %1037 = add nuw nsw i8 %1036, 48
  %1038 = getelementptr inbounds i8, i8* %1023, i64 2
  store i8 %1037, i8* %1034, align 1, !tbaa !23
  %1039 = trunc i16 %1031 to i8
  %1040 = urem i8 %1039, 10
  %1041 = or i8 %1040, 48
  %1042 = getelementptr inbounds i8, i8* %1023, i64 3
  store i8 %1041, i8* %1038, align 1, !tbaa !23
  %1043 = icmp eq i16 %1033, 0
  br i1 %1043, label %1054, label %1044

1044:                                             ; preds = %1027
  %1045 = getelementptr inbounds i8, i8* %1023, i64 4
  store i8 58, i8* %1042, align 1, !tbaa !23
  %1046 = trunc i16 %1033 to i8
  %1047 = udiv i8 %1046, 10
  %1048 = or i8 %1047, 48
  %1049 = getelementptr inbounds i8, i8* %1023, i64 5
  store i8 %1048, i8* %1045, align 1, !tbaa !23
  %1050 = mul i8 %1047, 10
  %1051 = sub i8 %1046, %1050
  %1052 = or i8 %1051, 48
  %1053 = getelementptr inbounds i8, i8* %1023, i64 6
  store i8 %1052, i8* %1049, align 1, !tbaa !23
  br label %1054

1054:                                             ; preds = %1044, %1027
  %1055 = phi i8* [ %1053, %1044 ], [ %1042, %1027 ]
  store i8 0, i8* %1055, align 1, !tbaa !23
  br label %1056

1056:                                             ; preds = %1010, %1054
  call void (i8*, ...) @dbg_printf(i8* noundef %1013, i8* noundef nonnull %27, i8* noundef nonnull %26)
  br label %1057

1057:                                             ; preds = %1056, %1007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1001) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1000) #38
  br label %1058

1058:                                             ; preds = %623, %643, %973, %975, %1057, %509, %512, %486, %489, %406, %434, %427, %266, %267, %94
  %1059 = phi i1 [ false, %267 ], [ false, %266 ], [ false, %434 ], [ false, %427 ], [ false, %406 ], [ false, %489 ], [ false, %486 ], [ false, %94 ], [ false, %512 ], [ false, %509 ], [ true, %1057 ], [ true, %975 ], [ false, %973 ], [ false, %643 ], [ false, %623 ]
  %1060 = icmp eq %struct.tm_zone* %95, %4
  br i1 %1060, label %1062, label %1061

1061:                                             ; preds = %1058
  call void @tzfree(%struct.tm_zone* noundef %95) #38
  br label %1062

1062:                                             ; preds = %80, %60, %1058, %1061
  %1063 = phi i1 [ %1059, %1061 ], [ %1059, %1058 ], [ false, %60 ], [ false, %80 ]
  %1064 = phi i8* [ %96, %1061 ], [ %96, %1058 ], [ null, %60 ], [ %65, %80 ]
  call void @free(i8* noundef %1064) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #38
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %30) #38
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %27) #38
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %26) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %25) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %24) #38
  ret i1 %1063
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @dbg_fputs(i8* nocapture noundef readonly %0) unnamed_addr #23 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %2) #44
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %5 = tail call i32 @fputs(i8* noundef %0, %struct._IO_FILE* noundef %4) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @to_hour(i64 noundef %0, i32 noundef %1) unnamed_addr #25 {
  switch i32 %1, label %3 [
    i32 1, label %12
    i32 0, label %6
  ]

3:                                                ; preds = %2
  %4 = icmp ult i64 %0, 24
  %5 = select i1 %4, i64 %0, i64 -1
  br label %19

6:                                                ; preds = %2
  %7 = add i64 %0, -1
  %8 = icmp ult i64 %7, 11
  %9 = icmp ne i64 %0, 12
  %10 = sext i1 %9 to i64
  %11 = select i1 %8, i64 %0, i64 %10
  br label %19

12:                                               ; preds = %2
  %13 = add i64 %0, -1
  %14 = icmp ult i64 %13, 11
  %15 = add nsw i64 %0, 12
  %16 = icmp eq i64 %0, 12
  %17 = select i1 %16, i64 12, i64 -1
  %18 = select i1 %14, i64 %15, i64 %17
  br label %19

19:                                               ; preds = %12, %6, %3
  %20 = phi i64 [ %5, %3 ], [ %11, %6 ], [ %18, %12 ]
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i8* @time_zone_str(i32 noundef %0, i8* noundef returned %1) unnamed_addr #23 {
  %3 = icmp slt i32 %0, 0
  %4 = sdiv i32 %0, 3600
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = select i1 %3, i32 45, i32 43
  %7 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.187, i64 0, i64 0), i32 noundef %6, i32 noundef %5) #38
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  %10 = mul i32 %4, 3600
  %11 = sub i32 %0, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %15 = trunc i32 %14 to i16
  %16 = freeze i16 %15
  %17 = udiv i16 %16, 60
  %18 = mul i16 %17, 60
  %19 = sub i16 %16, %18
  %20 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 58, i8* %9, align 1, !tbaa !23
  %21 = udiv i16 %15, 600
  %22 = trunc i16 %21 to i8
  %23 = add nuw nsw i8 %22, 48
  %24 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %23, i8* %20, align 1, !tbaa !23
  %25 = trunc i16 %17 to i8
  %26 = urem i8 %25, 10
  %27 = or i8 %26, 48
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %27, i8* %24, align 1, !tbaa !23
  %29 = icmp eq i16 %19, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 58, i8* %28, align 1, !tbaa !23
  %32 = trunc i16 %19 to i8
  %33 = udiv i8 %32, 10
  %34 = or i8 %33, 48
  %35 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %34, i8* %31, align 1, !tbaa !23
  %36 = mul i8 %33, 10
  %37 = sub i8 %32, %36
  %38 = or i8 %37, 48
  %39 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %38, i8* %35, align 1, !tbaa !23
  br label %40

40:                                               ; preds = %30, %13
  %41 = phi i8* [ %39, %30 ], [ %28, %13 ]
  store i8 0, i8* %41, align 1, !tbaa !23
  br label %42

42:                                               ; preds = %40, %2
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_mktime_not_ok(%struct.tm* noundef %0, %struct.tm* noundef %1, %struct.parser_control* noundef %2, i1 noundef %3) unnamed_addr #12 {
  %5 = alloca [100 x i8], align 1
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %6) #38
  %7 = getelementptr %struct.parser_control, %struct.parser_control* %2, i64 0, i32 24
  %8 = load i8, i8* %7, align 2, !tbaa !75
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %107, label %10

10:                                               ; preds = %4
  %11 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i64 0, i64 0), i32 noundef 5) #38
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %12) #44
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %15 = tail call i32 @fputs(i8* noundef %11, %struct._IO_FILE* noundef %14) #44
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.244, i64 0, i64 0), i32 noundef 5) #38
  %17 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef %0, %struct.parser_control* noundef nonnull %2, i8* noundef nonnull %6)
  call void (i8*, ...) @dbg_printf(i8* noundef %16, i8* noundef nonnull %6)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 6
  %19 = load i32, i32* %18, align 8, !tbaa !140
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.245, i64 0, i64 0), i32 noundef 5) #38
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %23) #44
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = call i32 @fputs(i8* noundef %22, %struct._IO_FILE* noundef %25) #44
  br label %82

27:                                               ; preds = %10
  %28 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.246, i64 0, i64 0), i32 noundef 5) #38
  %29 = call fastcc i8* @debug_strfdatetime(%struct.tm* noundef nonnull %1, %struct.parser_control* noundef nonnull %2, i8* noundef nonnull %6)
  call void (i8*, ...) @dbg_printf(i8* noundef %28, i8* noundef nonnull %6)
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %31 = load i32, i32* %30, align 4, !tbaa !35
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %33 = load i32, i32* %32, align 4, !tbaa !35
  %34 = icmp eq i32 %31, %33
  %35 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i64 0, i64 0)
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %37 = load i32, i32* %36, align 8, !tbaa !37
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %39 = load i32, i32* %38, align 8, !tbaa !37
  %40 = icmp eq i32 %37, %39
  %41 = select i1 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %43 = load i32, i32* %42, align 4, !tbaa !38
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %45 = load i32, i32* %44, align 4, !tbaa !38
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %49 = load i32, i32* %48, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %51 = load i32, i32* %50, align 8, !tbaa !39
  %52 = icmp eq i32 %49, %51
  %53 = select i1 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %55 = load i32, i32* %54, align 4, !tbaa !40
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %57 = load i32, i32* %56, align 4, !tbaa !40
  %58 = icmp eq i32 %55, %57
  %59 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %61 = load i32, i32* %60, align 8, !tbaa !41
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %63 = load i32, i32* %62, align 8, !tbaa !41
  %64 = icmp eq i32 %61, %63
  %65 = select i1 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30.184, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.249, i64 0, i64 0)
  %66 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %6, i32 noundef 1, i64 noundef 100, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.247, i64 0, i64 0), i8* noundef %35, i8* noundef %41, i8* noundef %47, i8* noundef %53, i8* noundef %59, i8* noundef %65) #38
  %67 = zext i32 %66 to i64
  %68 = call i32 @llvm.smin.i32(i32 %66, i32 0)
  br label %69

69:                                               ; preds = %73, %27
  %70 = phi i64 [ %74, %73 ], [ %67, %27 ]
  %71 = trunc i64 %70 to i32
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = add nsw i64 %70, -1
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1, !tbaa !23
  %77 = icmp eq i8 %76, 32
  br i1 %77, label %69, label %78, !llvm.loop !143

78:                                               ; preds = %73
  %79 = trunc i64 %70 to i32
  br label %80

80:                                               ; preds = %69, %78
  %81 = phi i32 [ %79, %78 ], [ %68, %69 ]
  call void (i8*, ...) @dbg_printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0), i32 noundef %81, i8* noundef nonnull %6)
  br label %82

82:                                               ; preds = %80, %21
  %83 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.251, i64 0, i64 0), i32 noundef 5) #38
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %84) #44
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %87 = call i32 @fputs(i8* noundef %83, %struct._IO_FILE* noundef %86) #44
  %88 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.252, i64 0, i64 0), i32 noundef 5) #38
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %90 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %89) #44
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %92 = call i32 @fputs(i8* noundef %88, %struct._IO_FILE* noundef %91) #44
  %93 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i64 0, i64 0), i32 noundef 5) #38
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %95 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %94) #44
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %97 = call i32 @fputs(i8* noundef %93, %struct._IO_FILE* noundef %96) #44
  br i1 %20, label %98, label %104

98:                                               ; preds = %82
  %99 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.254, i64 0, i64 0), i32 noundef 5) #38
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %101 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46.192, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %100) #44
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %103 = call i32 @fputs(i8* noundef %99, %struct._IO_FILE* noundef %102) #44
  br label %104

104:                                              ; preds = %98, %82
  %105 = select i1 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.256, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.257, i64 0, i64 0)
  %106 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i64 0, i64 0), i8* noundef %105, i32 noundef 5) #38
  call void (i8*, ...) @dbg_printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.255, i64 0, i64 0), i8* noundef %106)
  br label %107

107:                                              ; preds = %4, %104
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %6) #38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @debug_strfdatetime(%struct.tm* noundef %0, %struct.parser_control* noundef readonly %1, i8* noundef returned %2) unnamed_addr #12 {
  %4 = alloca [27 x i8], align 1
  %5 = tail call i64 @strftime(i8* noundef %2, i64 noundef 100, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.258, i64 0, i64 0), %struct.tm* noundef %0) #38
  %6 = icmp ne %struct.parser_control* %1, null
  %7 = trunc i64 %5 to i32
  %8 = icmp slt i32 %7, 100
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %66

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 21
  %12 = load i64, i64* %11, align 8, !tbaa !90
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.parser_control, %struct.parser_control* %1, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !96
  %17 = getelementptr inbounds [27 x i8], [27 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 27, i8* nonnull %17) #38
  %18 = shl i64 %5, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds i8, i8* %2, i64 %19
  %21 = mul i64 %5, -4294967296
  %22 = add i64 %21, 429496729600
  %23 = ashr exact i64 %22, 32
  %24 = icmp slt i32 %16, 0
  %25 = freeze i32 %16
  %26 = sdiv i32 %25, 3600
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true) #38
  %28 = select i1 %24, i32 45, i32 43
  %29 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %17, i32 noundef 1, i64 noundef 27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36.187, i64 0, i64 0), i32 noundef %28, i32 noundef %27) #38
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [27 x i8], [27 x i8]* %4, i64 0, i64 %30
  %32 = mul i32 %26, 3600
  %33 = sub i32 %25, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %14
  %36 = call i32 @llvm.abs.i32(i32 %33, i1 true) #38
  %37 = trunc i32 %36 to i16
  %38 = freeze i16 %37
  %39 = udiv i16 %38, 60
  %40 = mul i16 %39, 60
  %41 = sub i16 %38, %40
  %42 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 58, i8* %31, align 1, !tbaa !23
  %43 = udiv i16 %37, 600
  %44 = trunc i16 %43 to i8
  %45 = add nuw nsw i8 %44, 48
  %46 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %45, i8* %42, align 1, !tbaa !23
  %47 = trunc i16 %39 to i8
  %48 = urem i8 %47, 10
  %49 = or i8 %48, 48
  %50 = getelementptr inbounds i8, i8* %31, i64 3
  store i8 %49, i8* %46, align 1, !tbaa !23
  %51 = icmp eq i16 %41, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %35
  %53 = getelementptr inbounds i8, i8* %31, i64 4
  store i8 58, i8* %50, align 1, !tbaa !23
  %54 = trunc i16 %41 to i8
  %55 = udiv i8 %54, 10
  %56 = or i8 %55, 48
  %57 = getelementptr inbounds i8, i8* %31, i64 5
  store i8 %56, i8* %53, align 1, !tbaa !23
  %58 = mul i8 %55, 10
  %59 = sub i8 %54, %58
  %60 = or i8 %59, 48
  %61 = getelementptr inbounds i8, i8* %31, i64 6
  store i8 %60, i8* %57, align 1, !tbaa !23
  br label %62

62:                                               ; preds = %52, %35
  %63 = phi i8* [ %61, %52 ], [ %50, %35 ]
  store i8 0, i8* %63, align 1, !tbaa !23
  br label %64

64:                                               ; preds = %14, %62
  %65 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %20, i64 noundef %23, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.259, i64 0, i64 0), i8* noundef nonnull %17) #38
  call void @llvm.lifetime.end.p0i8(i64 27, i8* nonnull %17) #38
  br label %66

66:                                               ; preds = %64, %10, %3
  ret i8* %2
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i8* @debug_strfdate(%struct.tm* nocapture noundef readonly %0, i8* noundef returned %1) unnamed_addr #23 {
  %3 = alloca [13 x i8], align 1
  %4 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %4) #38
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %6 = load i32, i32* %5, align 4, !tbaa !35
  %7 = icmp sgt i32 %6, -1901
  %8 = zext i1 %7 to i64
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.261, i64 0, i64 %8
  %10 = freeze i32 %6
  %11 = sdiv i32 %10, 100
  %12 = add nsw i32 %11, 19
  %13 = icmp slt i32 %6, -1999
  %14 = sub nsw i32 -19, %11
  %15 = select i1 %13, i32 %14, i32 %12
  %16 = mul i32 %11, 100
  %17 = sub i32 %10, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true) #38
  %19 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef nonnull %4, i32 noundef 1, i64 noundef 13, i8* noundef nonnull %9, i32 noundef %15, i32 noundef %18) #38
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %21 = load i32, i32* %20, align 8, !tbaa !37
  %22 = add nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %24 = load i32, i32* %23, align 4, !tbaa !38
  %25 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef %1, i64 noundef 100, i32 noundef 1, i64 noundef -1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.260, i64 0, i64 0), i8* noundef nonnull %4, i32 noundef %22, i32 noundef %24) #38
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %4) #38
  ret i8* %1
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i8* @tm_year_str(i32 noundef %0, i8* noundef returned %1) unnamed_addr #23 {
  %3 = icmp sgt i32 %0, -1901
  %4 = zext i1 %3 to i64
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.261, i64 0, i64 %4
  %6 = sdiv i32 %0, 100
  %7 = add nsw i32 %6, 19
  %8 = icmp slt i32 %0, -1999
  %9 = sub nsw i32 -19, %6
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = mul i32 %6, 100
  %12 = sub i32 %0, %11
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %14 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* noundef %1, i32 noundef 1, i64 noundef -1, i8* noundef nonnull %5, i32 noundef %10, i32 noundef %13) #38
  ret i8* %1
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64* noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #26

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @parse_datetime(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20.207, i64 0, i64 0)) #38
  %5 = tail call %struct.tm_zone* @tzalloc(i8* noundef %4) #38
  %6 = icmp eq %struct.tm_zone* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i1 @parse_datetime_body(%struct.timespec* noundef %0, i8* noundef %1, %struct.timespec* noundef %2, i32 noundef 0, %struct.tm_zone* noundef nonnull %5, i8* noundef %4)
  tail call void @tzfree(%struct.tm_zone* noundef nonnull %5) #38
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i1 [ %8, %7 ], [ false, %3 ]
  ret i1 %10
}

; Function Attrs: nounwind uwtable
define dso_local i1 @posixtime(i64* nocapture noundef writeonly %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [6 x i32], align 4
  %7 = alloca %struct.tm, align 8
  %8 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #39
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 46) #39
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = ptrtoint i8* %12 to i64
  %16 = ptrtoint i8* %1 to i64
  %17 = sub i64 %15, %16
  %18 = sub nsw i64 %8, %17
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %238

20:                                               ; preds = %14, %11, %3
  %21 = phi i8* [ %12, %14 ], [ null, %11 ], [ null, %3 ]
  %22 = phi i64 [ %17, %14 ], [ %8, %11 ], [ %8, %3 ]
  %23 = add i64 %22, -8
  %24 = icmp ult i64 %23, 5
  %25 = and i64 %22, 1
  %26 = icmp eq i64 %25, 0
  %27 = and i1 %24, %26
  br i1 %27, label %30, label %238

28:                                               ; preds = %30
  %29 = icmp eq i64 %37, %22
  br i1 %29, label %38, label %30, !llvm.loop !144

30:                                               ; preds = %20, %28
  %31 = phi i64 [ %37, %28 ], [ 0, %20 ]
  %32 = getelementptr inbounds i8, i8* %1, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !23
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, -48
  %36 = icmp ult i32 %35, 10
  %37 = add nuw nsw i64 %31, 1
  br i1 %36, label %28, label %238

38:                                               ; preds = %28
  %39 = sdiv i64 %22, 2
  %40 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #38
  %41 = icmp sgt i64 %22, 1
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = icmp ult i64 %39, 4
  br i1 %43, label %65, label %44

44:                                               ; preds = %42
  %45 = and i64 %39, -4
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %61, %46 ]
  %48 = shl nuw nsw i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %1, i64 %48
  %50 = bitcast i8* %49 to <8 x i8>*
  %51 = load <8 x i8>, <8 x i8>* %50, align 1, !tbaa !23
  %52 = shufflevector <8 x i8> %51, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %53 = shufflevector <8 x i8> %51, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %54 = zext <4 x i8> %52 to <4 x i32>
  %55 = mul nuw nsw <4 x i32> %54, <i32 10, i32 10, i32 10, i32 10>
  %56 = zext <4 x i8> %53 to <4 x i32>
  %57 = add nsw <4 x i32> %55, <i32 -528, i32 -528, i32 -528, i32 -528>
  %58 = add nsw <4 x i32> %57, %56
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %47
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %60, align 4, !tbaa !21
  %61 = add nuw i64 %47, 4
  %62 = icmp eq i64 %61, %45
  br i1 %62, label %63, label %46, !llvm.loop !145

63:                                               ; preds = %46
  %64 = icmp eq i64 %39, %45
  br i1 %64, label %67, label %65

65:                                               ; preds = %42, %63
  %66 = phi i64 [ 0, %42 ], [ %45, %63 ]
  br label %71

67:                                               ; preds = %71, %63, %38
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %69 = and i32 %2, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %127

71:                                               ; preds = %65, %71
  %72 = phi i64 [ %85, %71 ], [ %66, %65 ]
  %73 = shl nuw nsw i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %1, i64 %73
  %75 = load i8, i8* %74, align 1, !tbaa !23
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, 10
  %78 = or i64 %73, 1
  %79 = getelementptr inbounds i8, i8* %1, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !23
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 %77, -528
  %83 = add nsw i32 %82, %81
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %72
  store i32 %83, i32* %84, align 4, !tbaa !21
  %85 = add nuw nsw i64 %72, 1
  %86 = icmp eq i64 %85, %39
  br i1 %86, label %67, label %71, !llvm.loop !147

87:                                               ; preds = %67
  %88 = add nsw i64 %39, -4
  switch i64 %39, label %116 [
    i64 5, label %89
    i64 6, label %97
    i64 4, label %107
  ]

89:                                               ; preds = %87
  %90 = load i32, i32* %68, align 4, !tbaa !21
  %91 = icmp slt i32 %90, 69
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = and i32 %2, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %188

95:                                               ; preds = %92
  %96 = add nsw i32 %90, 100
  br label %117

97:                                               ; preds = %87
  %98 = and i32 %2, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %188, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %68, align 4, !tbaa !21
  %102 = mul nsw i32 %101, 100
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %104 = load i32, i32* %103, align 4, !tbaa !21
  %105 = add i32 %104, -1900
  %106 = add i32 %105, %102
  br label %117

107:                                              ; preds = %87
  %108 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #38
  %109 = tail call i64 @rpl_time(i64* noundef null) #38
  store i64 %109, i64* %5, align 8, !tbaa !33
  %110 = call %struct.tm* @localtime(i64* noundef nonnull %5) #38
  %111 = icmp eq %struct.tm* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %110, i64 0, i32 5
  %114 = load i32, i32* %113, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #38
  br label %117

115:                                              ; preds = %107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #38
  br label %188

116:                                              ; preds = %87
  unreachable

117:                                              ; preds = %89, %95, %100, %112
  %118 = phi i32 [ %114, %112 ], [ %106, %100 ], [ %96, %95 ], [ %90, %89 ]
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %88
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %119, align 4, !tbaa !21
  %122 = getelementptr inbounds i32, i32* %119, i64 2
  %123 = load i32, i32* %120, align 4, !tbaa !21
  %124 = getelementptr inbounds i32, i32* %119, i64 3
  %125 = load i32, i32* %122, align 4, !tbaa !21
  %126 = load i32, i32* %124, align 4, !tbaa !21
  br label %164

127:                                              ; preds = %67
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %129 = load i32, i32* %68, align 4, !tbaa !21
  %130 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %131 = load i32, i32* %128, align 4, !tbaa !21
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  %133 = load i32, i32* %130, align 4, !tbaa !21
  %134 = load i32, i32* %132, align 4, !tbaa !21
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  switch i64 %39, label %163 [
    i64 5, label %136
    i64 6, label %144
    i64 4, label %154
  ]

136:                                              ; preds = %127
  %137 = load i32, i32* %135, align 4, !tbaa !21
  %138 = icmp slt i32 %137, 69
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = and i32 %2, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %188

142:                                              ; preds = %139
  %143 = add nsw i32 %137, 100
  br label %164

144:                                              ; preds = %127
  %145 = and i32 %2, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %188, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %135, align 4, !tbaa !21
  %149 = mul nsw i32 %148, 100
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  %151 = load i32, i32* %150, align 4, !tbaa !21
  %152 = add i32 %151, -1900
  %153 = add i32 %152, %149
  br label %164

154:                                              ; preds = %127
  %155 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %155) #38
  %156 = tail call i64 @rpl_time(i64* noundef null) #38
  store i64 %156, i64* %4, align 8, !tbaa !33
  %157 = call %struct.tm* @localtime(i64* noundef nonnull %4) #38
  %158 = icmp eq %struct.tm* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %157, i64 0, i32 5
  %161 = load i32, i32* %160, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %155) #38
  br label %164

162:                                              ; preds = %154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %155) #38
  br label %188

163:                                              ; preds = %127
  unreachable

164:                                              ; preds = %117, %159, %147, %142, %136
  %165 = phi i32 [ %134, %159 ], [ %134, %147 ], [ %134, %142 ], [ %134, %136 ], [ %126, %117 ]
  %166 = phi i32 [ %133, %159 ], [ %133, %147 ], [ %133, %142 ], [ %133, %136 ], [ %125, %117 ]
  %167 = phi i32 [ %131, %159 ], [ %131, %147 ], [ %131, %142 ], [ %131, %136 ], [ %123, %117 ]
  %168 = phi i32 [ %129, %159 ], [ %129, %147 ], [ %129, %142 ], [ %129, %136 ], [ %121, %117 ]
  %169 = phi i32 [ %161, %159 ], [ %153, %147 ], [ %143, %142 ], [ %137, %136 ], [ %118, %117 ]
  %170 = add nsw i32 %168, -1
  %171 = icmp eq i8* %21, null
  br i1 %171, label %189, label %172

172:                                              ; preds = %164
  %173 = getelementptr inbounds i8, i8* %21, i64 1
  %174 = load i8, i8* %173, align 1, !tbaa !23
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %175, -48
  %177 = icmp ult i32 %176, 10
  br i1 %177, label %178, label %188

178:                                              ; preds = %172
  %179 = getelementptr inbounds i8, i8* %21, i64 2
  %180 = load i8, i8* %179, align 1, !tbaa !23
  %181 = zext i8 %180 to i32
  %182 = add nsw i32 %181, -48
  %183 = icmp ult i32 %182, 10
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = mul nuw nsw i32 %175, 10
  %186 = add nsw i32 %185, -528
  %187 = add nsw i32 %186, %181
  br label %189

188:                                              ; preds = %178, %172, %92, %97, %115, %139, %144, %162
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #38
  br label %238

189:                                              ; preds = %184, %164
  %190 = phi i32 [ %187, %184 ], [ 0, %164 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #38
  %191 = bitcast %struct.tm* %7 to i8*
  %192 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 0
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 1
  %194 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 2
  %195 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 3
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 4
  %197 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 5
  %198 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 6
  %199 = getelementptr inbounds %struct.tm, %struct.tm* %7, i64 0, i32 8
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %191) #38
  store i32 %190, i32* %192, align 8, !tbaa !41
  store i32 %165, i32* %193, align 4, !tbaa !40
  store i32 %166, i32* %194, align 8, !tbaa !39
  store i32 %167, i32* %195, align 4, !tbaa !38
  store i32 %170, i32* %196, align 8, !tbaa !37
  store i32 %169, i32* %197, align 4, !tbaa !35
  store i32 -1, i32* %198, align 8, !tbaa !140
  store i32 -1, i32* %199, align 8, !tbaa !138
  %200 = call i64 @mktime(%struct.tm* noundef nonnull %7) #38
  %201 = load i32, i32* %198, align 8, !tbaa !140
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %232, label %203

203:                                              ; preds = %189, %234
  %204 = phi i64 [ %235, %234 ], [ %200, %189 ]
  %205 = phi i64 [ 1, %234 ], [ 0, %189 ]
  %206 = phi i32 [ 59, %234 ], [ %190, %189 ]
  %207 = load i32, i32* %197, align 4, !tbaa !35
  %208 = xor i32 %207, %169
  %209 = load i32, i32* %196, align 8, !tbaa !37
  %210 = xor i32 %209, %170
  %211 = or i32 %210, %208
  %212 = load i32, i32* %195, align 4, !tbaa !38
  %213 = xor i32 %212, %167
  %214 = or i32 %211, %213
  %215 = load i32, i32* %194, align 8, !tbaa !39
  %216 = xor i32 %215, %166
  %217 = or i32 %214, %216
  %218 = load i32, i32* %193, align 4, !tbaa !40
  %219 = xor i32 %218, %165
  %220 = or i32 %217, %219
  %221 = load i32, i32* %192, align 8, !tbaa !41
  %222 = xor i32 %221, %206
  %223 = or i32 %220, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %203
  %226 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %204, i64 %205)
  %227 = extractvalue { i64, i1 } %226, 1
  br i1 %227, label %232, label %228

228:                                              ; preds = %225
  %229 = extractvalue { i64, i1 } %226, 0
  store i64 %229, i64* %0, align 8, !tbaa !33
  br label %232

230:                                              ; preds = %203
  %231 = icmp eq i32 %206, 60
  br i1 %231, label %234, label %232

232:                                              ; preds = %230, %234, %189, %228, %225
  %233 = phi i1 [ false, %225 ], [ true, %228 ], [ false, %189 ], [ false, %234 ], [ false, %230 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %191) #38
  br label %238

234:                                              ; preds = %230
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %191) #38
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %191) #38
  store i32 59, i32* %192, align 8, !tbaa !41
  store i32 %165, i32* %193, align 4, !tbaa !40
  store i32 %166, i32* %194, align 8, !tbaa !39
  store i32 %167, i32* %195, align 4, !tbaa !38
  store i32 %170, i32* %196, align 8, !tbaa !37
  store i32 %169, i32* %197, align 4, !tbaa !35
  store i32 -1, i32* %198, align 8, !tbaa !140
  store i32 -1, i32* %199, align 8, !tbaa !138
  %235 = call i64 @mktime(%struct.tm* noundef nonnull %7) #38
  %236 = load i32, i32* %198, align 8, !tbaa !140
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %232, label %203

238:                                              ; preds = %30, %20, %14, %232, %188
  %239 = phi i1 [ false, %188 ], [ %233, %232 ], [ false, %14 ], [ false, %20 ], [ false, %30 ]
  ret i1 %239
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(%struct.tm* nocapture noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @posix2_version() local_unnamed_addr #23 {
  %1 = alloca i8*, align 8
  %2 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.239, i64 0, i64 0)) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* %2, align 1, !tbaa !23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #38
  %9 = call i64 @strtol(i8* noundef nonnull %2, i8** noundef nonnull %1, i32 noundef 10) #38
  %10 = load i8*, i8** %1, align 8, !tbaa !12
  %11 = load i8, i8* %10, align 1, !tbaa !23
  %12 = icmp eq i8 %11, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #38
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = icmp slt i64 %9, 2147483647
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = icmp sgt i64 %9, -2147483648
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %7, %4, %0, %15
  %18 = phi i64 [ %9, %15 ], [ 200809, %0 ], [ 200809, %4 ], [ 200809, %7 ], [ 2147483647, %13 ]
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi i64 [ %18, %17 ], [ -2147483648, %15 ]
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #28 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #39
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
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.262, i64 0, i64 0), i64 7) #38
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.263, i64 0, i64 0), i64 noundef 3) #39
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

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #38
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #38
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #38
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #38
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #38
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #41
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #45
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !149
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #29 {
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
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #29 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !151
  store i32 %1, i32* %5, align 4, !tbaa !151
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !149
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #40
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !152
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !153
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #41
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !149
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !153
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
  %17 = tail call i64 @__ctype_get_mb_cur_max() #38
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
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.277, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.276, i64 0, i64 0), i32 noundef 5) #38
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.276, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #38
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #38
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #38
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.277, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0), i32 noundef 5) #38
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #38
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #38
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #38
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
  br i1 %96, label %97, label %85, !llvm.loop !154

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #39
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
  call void @abort() #40
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.278, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.279, i64 0, i64 0), %102 ]
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
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #39
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #38
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
  %300 = tail call i16** @__ctype_b_loc() #41
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #38
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #39
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #38
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #38
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #38
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
  br i1 %328, label %348, label %319, !llvm.loop !155

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
  br i1 %339, label %340, label %332, !llvm.loop !156

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !21
  %342 = call i32 @iswprint(i32 noundef %341) #38
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #38
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #38
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #38
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
  br label %132, !llvm.loop !157

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
  br i1 %630, label %631, label %619, !llvm.loop !158

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
  %6 = tail call i32* @__errno_location() #41
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !151
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !152
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !153
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #38
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #46
  %21 = load i32, i32* %11, align 8, !tbaa !149
  %22 = load i8*, i8** %14, align 8, !tbaa !152
  %23 = load i8*, i8** %16, align 8, !tbaa !153
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #38
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #41
  %8 = load i32, i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !151
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !149
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !152
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !153
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #46
  %24 = load i32, i32* %14, align 8, !tbaa !149
  %25 = load i8*, i8** %17, align 8, !tbaa !152
  %26 = load i8*, i8** %19, align 8, !tbaa !153
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !21
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !33
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
  %8 = load i8*, i8** %7, align 8, !tbaa !159
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !159
  tail call void @free(i8* noundef %13) #38
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !161

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #38
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !162
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !159
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #38
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
  %6 = tail call i32* @__errno_location() #41
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #40
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #38
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !33
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #38
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !163
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !33
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #38
  %34 = load i64, i64* %5, align 8, !tbaa !33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #38
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !162
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !159
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !151
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !149
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !152
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !153
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !162
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #38
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #46
  store i8* %60, i8** %41, align 8, !tbaa !159
  %61 = load i32, i32* %46, align 8, !tbaa !149
  %62 = load i8*, i8** %49, align 8, !tbaa !152
  %63 = load i8*, i8** %51, align 8, !tbaa !153
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
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #38
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #38
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #38, !alias.scope !164
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #40, !noalias !164
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !149, !alias.scope !164
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #38
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #38, !alias.scope !167
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #40, !noalias !167
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !149, !alias.scope !167
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #38
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170) #38
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #38, !alias.scope !170
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #40, !noalias !170
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !149, !alias.scope !170
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #38
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173) #38
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #38, !alias.scope !173
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #40, !noalias !173
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !149, !alias.scope !173
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #38
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !176
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
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #38
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #38, !tbaa.struct !176
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
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #38
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #38, !tbaa.struct !176
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !21
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #38
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #38, !tbaa.struct !176
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !21
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #38
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #38
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #40, !noalias !177
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !176
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !21
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !21
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #38
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #38, !tbaa.struct !176
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !149
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #40
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !153
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #38
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !176
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !149
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #40
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !153
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #38
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #38, !tbaa.struct !176
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !149
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #40
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !152
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !153
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #38
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #38, !tbaa.struct !176
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !149
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #40
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !153
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #38
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #38
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #38
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #38
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #38
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_time(i64* noundef writeonly %0) local_unnamed_addr #12 {
  %2 = alloca %struct.timespec, align 8
  %3 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #38
  %4 = call i32 @gettimeofday(%struct.timespec* noundef nonnull %2, i8* noundef null) #38
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @abort() #40
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !180
  %10 = icmp eq i64* %0, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i64 %9, i64* %0, align 8, !tbaa !33
  br label %12

12:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #38
  ret i64 %9
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(%struct.timespec* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.tm_zone* @tzalloc(i8* noundef readonly %0) local_unnamed_addr #23 {
  %2 = icmp ne i8* %0, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(i8* noundef nonnull %0) #39
  %5 = add i64 %4, 1
  %6 = icmp ult i64 %5, 119
  %7 = add i64 %4, 18
  %8 = and i64 %7, -8
  br i1 %6, label %9, label %11

9:                                                ; preds = %1, %3
  %10 = phi i64 [ %5, %3 ], [ 0, %1 ]
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %13 = phi i64 [ 128, %9 ], [ %8, %3 ]
  %14 = tail call noalias i8* @malloc(i64 noundef %13) #38
  %15 = bitcast i8* %14 to %struct.tm_zone*
  %16 = icmp eq i8* %14, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %15, i64 0, i32 0
  store %struct.tm_zone* null, %struct.tm_zone** %18, align 8, !tbaa !12
  %19 = zext i1 %2 to i8
  %20 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %15, i64 0, i32 1
  store i8 %19, i8* %20, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %15, i64 0, i32 2, i64 0
  store i8 0, i8* %21, align 1, !tbaa !23
  br i1 %2, label %22, label %24

22:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %21, i8* noundef nonnull align 1 %0, i64 noundef %12, i1 noundef false) #38
  %23 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %15, i64 0, i32 2, i64 %12
  store i8 0, i8* %23, align 1, !tbaa !23
  br label %24

24:                                               ; preds = %17, %22, %11
  ret %struct.tm_zone* %15
}

; Function Attrs: nounwind uwtable
define dso_local void @tzfree(%struct.tm_zone* noundef %0) local_unnamed_addr #12 {
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi %struct.tm_zone* [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %4, i64 0, i32 0
  %6 = load %struct.tm_zone*, %struct.tm_zone** %5, align 8, !tbaa !12
  %7 = bitcast %struct.tm_zone* %4 to i8*
  tail call void @free(i8* noundef %7) #38
  %8 = icmp eq %struct.tm_zone* %6, null
  br i1 %8, label %9, label %3

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local %struct.tm_zone* @set_tz(%struct.tm_zone* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #38
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !23
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

7:                                                ; preds = %1
  br i1 %6, label %13, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(1) %2) #39
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %55, label %13

12:                                               ; preds = %1
  br i1 %6, label %55, label %19

13:                                               ; preds = %8, %7
  %14 = tail call i64 @strlen(i8* noundef nonnull %2) #39
  %15 = add i64 %14, 1
  %16 = icmp ult i64 %15, 119
  %17 = add i64 %14, 18
  %18 = and i64 %17, -8
  br i1 %16, label %19, label %22

19:                                               ; preds = %12, %13
  %20 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %21 = xor i1 %3, true
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ %21, %19 ], [ true, %13 ]
  %24 = phi i64 [ %20, %19 ], [ %15, %13 ]
  %25 = phi i64 [ 128, %19 ], [ %18, %13 ]
  %26 = tail call noalias i8* @malloc(i64 noundef %25) #38
  %27 = bitcast i8* %26 to %struct.tm_zone*
  %28 = icmp eq i8* %26, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %27, i64 0, i32 0
  store %struct.tm_zone* null, %struct.tm_zone** %30, align 8, !tbaa !12
  %31 = zext i1 %23 to i8
  %32 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %27, i64 0, i32 1
  store i8 %31, i8* %32, align 8, !tbaa !23
  %33 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %27, i64 0, i32 2, i64 0
  store i8 0, i8* %33, align 1, !tbaa !23
  br i1 %23, label %34, label %36

34:                                               ; preds = %29
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %33, i8* noundef nonnull align 1 %2, i64 noundef %24, i1 noundef false) #38
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %27, i64 0, i32 2, i64 %24
  store i8 0, i8* %35, align 1, !tbaa !23
  br label %36

36:                                               ; preds = %34, %29
  %37 = icmp eq i8 %5, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %40 = tail call i32 @setenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0), i8* noundef nonnull %39, i32 noundef 1) #38
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 @unsetenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #38
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ %42, %41 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @tzset() #38
  br label %55

47:                                               ; preds = %43
  %48 = icmp ult i8* %26, inttoptr (i64 2 to i8*)
  br i1 %48, label %55, label %49

49:                                               ; preds = %47, %49
  %50 = phi %struct.tm_zone* [ %52, %49 ], [ %27, %47 ]
  %51 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %50, i64 0, i32 0
  %52 = load %struct.tm_zone*, %struct.tm_zone** %51, align 8, !tbaa !12
  %53 = bitcast %struct.tm_zone* %50 to i8*
  tail call void @free(i8* noundef %53) #38
  %54 = icmp eq %struct.tm_zone* %52, null
  br i1 %54, label %55, label %49

55:                                               ; preds = %49, %22, %47, %46, %8, %12
  %56 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ %27, %46 ], [ null, %47 ], [ null, %22 ], [ null, %49 ]
  ret %struct.tm_zone* %56
}

; Function Attrs: nounwind
declare i32 @setenv(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unsetenv(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @revert_tz(%struct.tm_zone* noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct.tm_zone* %0, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32* @__errno_location() #41
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %11 = tail call i32 @setenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0), i8* noundef nonnull %10, i32 noundef 1) #38
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @unsetenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #38
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @tzset() #38
  br label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4, !tbaa !21
  br label %20

20:                                               ; preds = %17, %18
  %21 = phi i32 [ %19, %18 ], [ %5, %17 ]
  %22 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %23
  %24 = phi %struct.tm_zone* [ %26, %23 ], [ %0, %20 ]
  %25 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %24, i64 0, i32 0
  %26 = load %struct.tm_zone*, %struct.tm_zone** %25, align 8, !tbaa !12
  %27 = bitcast %struct.tm_zone* %24 to i8*
  tail call void @free(i8* noundef %27) #38
  %28 = icmp eq %struct.tm_zone* %26, null
  br i1 %28, label %29, label %23

29:                                               ; preds = %23, %20
  store i32 %21, i32* %4, align 4, !tbaa !21
  br label %30

30:                                               ; preds = %1, %29
  %31 = phi i1 [ %16, %29 ], [ true, %1 ]
  ret i1 %31
}

; Function Attrs: nounwind uwtable
define dso_local %struct.tm* @localtime_rz(%struct.tm_zone* noundef %0, i64* noundef nonnull %1, %struct.tm* noundef nonnull %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.tm_zone* %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* noundef nonnull %1, %struct.tm* noundef nonnull %2) #38
  br label %51

7:                                                ; preds = %3
  %8 = tail call %struct.tm_zone* @set_tz(%struct.tm_zone* noundef nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* noundef nonnull %1, %struct.tm* noundef nonnull %2) #38
  %12 = icmp eq %struct.tm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i1 @save_abbr(%struct.tm_zone* noundef nonnull %0, %struct.tm* noundef nonnull %2)
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %18, label %48, label %19

19:                                               ; preds = %16
  %20 = tail call i32* @__errno_location() #41
  %21 = load i32, i32* %20, align 4, !tbaa !21
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0
  %27 = tail call i32 @setenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0), i8* noundef nonnull %26, i32 noundef 1) #38
  br label %30

28:                                               ; preds = %19
  %29 = tail call i32 @unsetenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #38
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @tzset() #38
  br label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %20, align 4, !tbaa !21
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ %35, %34 ], [ %21, %33 ]
  %38 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %39
  %40 = phi %struct.tm_zone* [ %42, %39 ], [ %8, %36 ]
  %41 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %40, i64 0, i32 0
  %42 = load %struct.tm_zone*, %struct.tm_zone** %41, align 8, !tbaa !12
  %43 = bitcast %struct.tm_zone* %40 to i8*
  tail call void @free(i8* noundef %43) #38
  %44 = icmp eq %struct.tm_zone* %42, null
  br i1 %44, label %45, label %39

45:                                               ; preds = %39, %36
  store i32 %37, i32* %20, align 4, !tbaa !21
  %46 = xor i1 %32, true
  %47 = select i1 %46, i1 true, i1 %17
  br label %48

48:                                               ; preds = %16, %45
  %49 = phi i1 [ %47, %45 ], [ %17, %16 ]
  %50 = select i1 %49, %struct.tm* null, %struct.tm* %2
  br label %51

51:                                               ; preds = %48, %7, %5
  %52 = phi %struct.tm* [ %6, %5 ], [ null, %7 ], [ %50, %48 ]
  ret %struct.tm* %52
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64* noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc i1 @save_abbr(%struct.tm_zone* noundef %0, %struct.tm* noundef %1) unnamed_addr #23 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10
  %4 = load i8*, i8** %3, align 8, !tbaa !139
  %5 = icmp eq i8* %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*
  %8 = icmp uge i8* %4, %7
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1
  %10 = bitcast %struct.tm* %9 to i8*
  %11 = icmp ult i8* %4, %10
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %78, label %13

13:                                               ; preds = %6
  %14 = load i8, i8* %4, align 1, !tbaa !23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %18 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(1) %4) #39
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %76, label %20

20:                                               ; preds = %16, %71
  %21 = phi i8* [ %73, %71 ], [ %17, %16 ]
  %22 = phi %struct.tm_zone* [ %72, %71 ], [ %0, %16 ]
  %23 = load i8, i8* %21, align 1, !tbaa !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i64 0, i32 2, i64 0
  %27 = icmp eq i8* %21, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i64 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28, %25
  %33 = tail call i64 @strlen(i8* noundef nonnull %4) #39
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i64 0, i32 2, i64 119
  %36 = ptrtoint i8* %35 to i64
  %37 = ptrtoint i8* %21 to i64
  %38 = sub i64 %36, %37
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %21, i8* noundef nonnull align 1 %4, i64 noundef %34, i1 noundef false) #38
  %41 = getelementptr inbounds i8, i8* %21, i64 %34
  store i8 0, i8* %41, align 1, !tbaa !23
  br label %76

42:                                               ; preds = %32
  %43 = icmp ult i64 %34, 119
  %44 = add i64 %33, 18
  %45 = and i64 %44, -8
  %46 = select i1 %43, i64 128, i64 %45
  %47 = tail call noalias i8* @malloc(i64 noundef %46) #38
  %48 = bitcast i8* %47 to %struct.tm_zone*
  %49 = icmp eq i8* %47, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %48, i64 0, i32 0
  store %struct.tm_zone* null, %struct.tm_zone** %51, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %48, i64 0, i32 1
  %53 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %48, i64 0, i32 2, i64 0
  store i8 0, i8* %53, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %53, i8* noundef nonnull align 1 %4, i64 noundef %34, i1 noundef false) #38
  %54 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %48, i64 0, i32 2, i64 %34
  store i8 0, i8* %54, align 1, !tbaa !23
  %55 = bitcast %struct.tm_zone* %22 to i8**
  store i8* %47, i8** %55, align 8, !tbaa !12
  store i8 0, i8* %52, align 8, !tbaa !23
  br label %76

56:                                               ; preds = %42
  %57 = bitcast %struct.tm_zone* %22 to i8**
  store i8* null, i8** %57, align 8, !tbaa !12
  br label %78

58:                                               ; preds = %28, %20
  %59 = tail call i64 @strlen(i8* noundef nonnull %21) #39
  %60 = getelementptr inbounds i8, i8* %21, i64 1
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = load i8, i8* %61, align 1, !tbaa !23
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %22, i64 0, i32 0
  %66 = load %struct.tm_zone*, %struct.tm_zone** %65, align 8, !tbaa !12
  %67 = icmp eq %struct.tm_zone* %66, null
  %68 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %66, i64 0, i32 2, i64 0
  %69 = select i1 %67, %struct.tm_zone* %22, %struct.tm_zone* %66
  %70 = select i1 %67, i8* %61, i8* %68
  br label %71

71:                                               ; preds = %64, %58
  %72 = phi %struct.tm_zone* [ %22, %58 ], [ %69, %64 ]
  %73 = phi i8* [ %61, %58 ], [ %70, %64 ]
  %74 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %73, i8* noundef nonnull dereferenceable(1) %4) #39
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %20, !llvm.loop !182

76:                                               ; preds = %71, %16, %40, %50, %13
  %77 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.299, i64 0, i64 0), %13 ], [ %53, %50 ], [ %21, %40 ], [ %17, %16 ], [ %73, %71 ]
  store i8* %77, i8** %3, align 8, !tbaa !139
  br label %78

78:                                               ; preds = %56, %2, %6, %76
  %79 = phi i1 [ true, %76 ], [ true, %6 ], [ true, %2 ], [ false, %56 ]
  ret i1 %79
}

; Function Attrs: nounwind uwtable
define dso_local i64 @mktime_z(%struct.tm_zone* noundef %0, %struct.tm* noundef nonnull %1) local_unnamed_addr #12 {
  %3 = alloca %struct.tm, align 16
  %4 = icmp eq %struct.tm_zone* %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i64 @timegm(%struct.tm* noundef nonnull %1) #38
  br label %66

7:                                                ; preds = %2
  %8 = tail call %struct.tm_zone* @set_tz(%struct.tm_zone* noundef nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %7
  %11 = bitcast %struct.tm* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %11) #38
  %12 = bitcast %struct.tm* %1 to <4 x i32>*
  %13 = load <4 x i32>, <4 x i32>* %12, align 8, !tbaa !21
  %14 = bitcast %struct.tm* %3 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %14, align 16, !tbaa !21
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 4
  %17 = bitcast i32* %15 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 8, !tbaa !21
  %19 = bitcast i32* %16 to <2 x i32>*
  store <2 x i32> %18, <2 x i32>* %19, align 16, !tbaa !21
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 7
  store i32 -1, i32* %20, align 4, !tbaa !141
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8
  %22 = load i32, i32* %21, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 8
  store i32 %22, i32* %23, align 16, !tbaa !138
  %24 = call i64 @mktime(%struct.tm* noundef nonnull %3) #38
  %25 = load i32, i32* %20, align 4, !tbaa !141
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %10
  %28 = call fastcc i1 @save_abbr(%struct.tm_zone* noundef nonnull %0, %struct.tm* noundef nonnull %3)
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %27, %10
  %31 = phi i1 [ true, %10 ], [ %29, %27 ]
  %32 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %32, label %62, label %33

33:                                               ; preds = %30
  %34 = tail call i32* @__errno_location() #41
  %35 = load i32, i32* %34, align 4, !tbaa !21
  %36 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1
  %37 = load i8, i8* %36, align 8, !tbaa !23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0
  %41 = call i32 @setenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0), i8* noundef nonnull %40, i32 noundef 1) #38
  br label %44

42:                                               ; preds = %33
  %43 = call i32 @unsetenv(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.296, i64 0, i64 0)) #38
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @tzset() #38
  br label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %34, align 4, !tbaa !21
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ %49, %48 ], [ %35, %47 ]
  %52 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %52, label %59, label %53

53:                                               ; preds = %50, %53
  %54 = phi %struct.tm_zone* [ %56, %53 ], [ %8, %50 ]
  %55 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %54, i64 0, i32 0
  %56 = load %struct.tm_zone*, %struct.tm_zone** %55, align 8, !tbaa !12
  %57 = bitcast %struct.tm_zone* %54 to i8*
  call void @free(i8* noundef %57) #38
  %58 = icmp eq %struct.tm_zone* %56, null
  br i1 %58, label %59, label %53

59:                                               ; preds = %53, %50
  store i32 %51, i32* %34, align 4, !tbaa !21
  %60 = xor i1 %46, true
  %61 = select i1 %60, i1 true, i1 %31
  br i1 %61, label %65, label %63

62:                                               ; preds = %30
  br i1 %31, label %65, label %63

63:                                               ; preds = %59, %62
  %64 = bitcast %struct.tm* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %64, i8* noundef nonnull align 16 dereferenceable(56) %11, i64 56, i1 false), !tbaa.struct !183
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %11) #38
  br label %66

65:                                               ; preds = %59, %62
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %11) #38
  br label %66

66:                                               ; preds = %63, %65, %7, %5
  %67 = phi i64 [ %6, %5 ], [ %24, %63 ], [ -1, %65 ], [ -1, %7 ]
  ret i64 %67
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.302, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #38
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.303, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #38
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.305, i64 0, i64 0), i32 noundef 5) #38
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #38
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.306, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.307, i64 0, i64 0), i32 noundef 5) #38
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.308, i64 0, i64 0)) #38
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.306, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.309, i64 0, i64 0), i32 noundef 5) #38
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #38
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.310, i64 0, i64 0), i32 noundef 5) #38
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #38
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.311, i64 0, i64 0), i32 noundef 5) #38
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #38
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.312, i64 0, i64 0), i32 noundef 5) #38
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #38
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.313, i64 0, i64 0), i32 noundef 5) #38
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #38
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.314, i64 0, i64 0), i32 noundef 5) #38
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
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #38
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.315, i64 0, i64 0), i32 noundef 5) #38
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
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #38
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.316, i64 0, i64 0), i32 noundef 5) #38
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
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #38
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.317, i64 0, i64 0), i32 noundef 5) #38
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
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #38
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.318, i64 0, i64 0), i32 noundef 5) #38
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
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #38
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
  br i1 %10, label %12, label %6, !llvm.loop !184

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #38
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
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #38
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !57
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #38
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.306, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.323, i64 0, i64 0), i32 noundef 5) #38
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.324, i64 0, i64 0)) #38
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.325, i64 0, i64 0), i32 noundef 5) #38
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.326, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.327, i64 0, i64 0)) #38
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.328, i64 0, i64 0), i32 noundef 5) #38
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.329, i64 0, i64 0)) #38
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #40
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #40
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #33 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #33 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #33 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #38
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #38
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #40
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 {
  %3 = load i64, i64* %1, align 8, !tbaa !33
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #38
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #40
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #38
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #40
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !33
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8, !tbaa !33
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
  tail call void @xalloc_die() #40
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #38
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #40
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !33
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = load i64, i64* %1, align 8, !tbaa !33
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
  store i64 0, i64* %1, align 8, !tbaa !33
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
  tail call void @xalloc_die() #40
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #38
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #40
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !33
  ret i8* %102
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #33 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #33 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #38
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #38
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #40
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #39
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #40
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.340, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.341, i64 0, i64 0), i32 noundef 5) #38
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.342, i64 0, i64 0), i8* noundef %2) #38
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #40
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #38
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !185
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #38
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #41
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #41
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
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #38
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #38
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #38
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #41
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
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !185
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38
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
  %5 = load i8*, i8** %4, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !187
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !188
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !189
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #38
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !185
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !185
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !190
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
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.353, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #38
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #39
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
  tail call void @abort() #40
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #38
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
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 {
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
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #38
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #41
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
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #38
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.359, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #38
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #38
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #38
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #38
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #38
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #39
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38
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
attributes #13 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind willreturn writeonly }
attributes #22 = { nofree nounwind }
attributes #23 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #31 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #36 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #37 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #38 = { nounwind }
attributes #39 = { nounwind readonly willreturn }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind readnone willreturn }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { cold nounwind }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!29 = !{!30, !31, i64 8}
!30 = !{!"timespec", !31, i64 0, !31, i64 8}
!31 = !{!"long", !14, i64 0}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33}
!33 = !{!31, !31, i64 0}
!34 = !{i64 0, i64 8, !33}
!35 = !{!36, !22, i64 20}
!36 = !{!"tm", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !31, i64 40, !13, i64 48}
!37 = !{!36, !22, i64 16}
!38 = !{!36, !22, i64 12}
!39 = !{!36, !22, i64 8}
!40 = !{!36, !22, i64 4}
!41 = !{!36, !22, i64 0}
!42 = !{!43, !22, i64 16}
!43 = !{!"stat", !31, i64 0, !31, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !31, i64 32, !31, i64 40, !31, i64 48, !22, i64 56, !22, i64 60, !31, i64 64, !30, i64 72, !30, i64 88, !30, i64 104, !14, i64 120}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!48, !13, i64 40}
!48 = !{!"_IO_FILE", !22, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 116, !31, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !31, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !31, i64 184, !22, i64 192, !14, i64 196}
!49 = !{!48, !13, i64 48}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = !{!55, !55, i64 0}
!55 = !{!"_Bool", !14, i64 0}
!56 = !{i8 0, i8 2}
!57 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !21, i64 28, i64 4, !21}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"vfprintf.inline: argument 0"}
!60 = distinct !{!60, !"vfprintf.inline"}
!61 = distinct !{!61, !60, !"vfprintf.inline: argument 1"}
!62 = !{!63, !13, i64 0}
!63 = !{!"", !13, i64 0, !31, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !64, i64 32, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !30, i64 88, !65, i64 104, !55, i64 160, !55, i64 161, !31, i64 168, !31, i64 176, !31, i64 184, !31, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !55, i64 224, !55, i64 225, !55, i64 226, !55, i64 227, !55, i64 228, !55, i64 229, !55, i64 230, !55, i64 231, !55, i64 232, !55, i64 233, !14, i64 240}
!64 = !{!"", !55, i64 0, !31, i64 8, !31, i64 16}
!65 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !22, i64 48}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = !{!63, !55, i64 225}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = !{!63, !55, i64 226}
!76 = !{!77, !22, i64 12}
!77 = !{!"", !13, i64 0, !22, i64 8, !22, i64 12}
!78 = !{!77, !22, i64 8}
!79 = !{i64 0, i64 8, !33, i64 0, i64 1, !54, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 0, i64 8, !33, i64 8, i64 8, !33, i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 4, !21}
!80 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 0, i64 8, !33, i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 4, !21}
!81 = !{i64 0, i64 8, !33, i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 4, !21}
!82 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 4, !21}
!83 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 4, !21}
!84 = !{i64 0, i64 8, !33, i64 8, i64 4, !21}
!85 = !{!63, !55, i64 160}
!86 = !{!63, !31, i64 208}
!87 = !{!63, !31, i64 168}
!88 = !{!63, !31, i64 192}
!89 = !{!63, !31, i64 184}
!90 = !{!63, !31, i64 216}
!91 = !{!63, !31, i64 176}
!92 = !{!63, !31, i64 72}
!93 = !{!63, !22, i64 28}
!94 = !{!63, !31, i64 80}
!95 = !{i64 0, i64 1, !54, i64 8, i64 8, !33, i64 16, i64 8, !33}
!96 = !{!63, !22, i64 24}
!97 = !{!63, !22, i64 20}
!98 = !{!63, !31, i64 200}
!99 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 4, !21}
!100 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 4, !21}
!101 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 4, !21}
!102 = !{i64 0, i64 4, !21}
!103 = !{!63, !22, i64 152}
!104 = !{!63, !31, i64 144}
!105 = !{!63, !31, i64 136}
!106 = !{!63, !31, i64 128}
!107 = !{!63, !31, i64 120}
!108 = !{!63, !31, i64 112}
!109 = !{!63, !31, i64 104}
!110 = !{!63, !55, i64 161}
!111 = !{!63, !31, i64 8}
!112 = !{!63, !22, i64 16}
!113 = !{!63, !55, i64 233}
!114 = !{!63, !31, i64 56}
!115 = !{!63, !31, i64 64}
!116 = !{!63, !31, i64 48}
!117 = !{!63, !55, i64 224}
!118 = !{!63, !31, i64 40}
!119 = !{!77, !13, i64 0}
!120 = distinct !{!120, !19}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"vfprintf.inline: argument 0"}
!123 = distinct !{!123, !"vfprintf.inline"}
!124 = distinct !{!124, !123, !"vfprintf.inline: argument 1"}
!125 = !{!63, !55, i64 227}
!126 = !{!63, !55, i64 232}
!127 = !{!63, !55, i64 230}
!128 = !{!63, !31, i64 88}
!129 = !{!63, !31, i64 96}
!130 = !{!63, !55, i64 228}
!131 = !{!63, !55, i64 229}
!132 = !{!63, !55, i64 231}
!133 = !{!30, !31, i64 0}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !19}
!138 = !{!36, !22, i64 32}
!139 = !{!36, !13, i64 48}
!140 = !{!36, !22, i64 24}
!141 = !{!36, !22, i64 28}
!142 = !{!36, !31, i64 40}
!143 = distinct !{!143, !19}
!144 = distinct !{!144, !19}
!145 = distinct !{!145, !19, !146}
!146 = !{!"llvm.loop.isvectorized", i32 1}
!147 = distinct !{!147, !19, !148, !146}
!148 = !{!"llvm.loop.unroll.runtime.disable"}
!149 = !{!150, !14, i64 0}
!150 = !{!"quoting_options", !14, i64 0, !22, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!151 = !{!150, !22, i64 4}
!152 = !{!150, !13, i64 40}
!153 = !{!150, !13, i64 48}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !19}
!158 = distinct !{!158, !19}
!159 = !{!160, !13, i64 8}
!160 = !{!"slotvec", !31, i64 0, !13, i64 8}
!161 = distinct !{!161, !19}
!162 = !{!160, !31, i64 0}
!163 = !{i64 0, i64 8, !33, i64 8, i64 8, !12}
!164 = !{!165}
!165 = distinct !{!165, !166, !"quoting_options_from_style: argument 0"}
!166 = distinct !{!166, !"quoting_options_from_style"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"quoting_options_from_style: argument 0"}
!169 = distinct !{!169, !"quoting_options_from_style"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"quoting_options_from_style: argument 0"}
!172 = distinct !{!172, !"quoting_options_from_style"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"quoting_options_from_style: argument 0"}
!175 = distinct !{!175, !"quoting_options_from_style"}
!176 = !{i64 0, i64 4, !23, i64 4, i64 4, !21, i64 8, i64 32, !23, i64 40, i64 8, !12, i64 48, i64 8, !12}
!177 = !{!178}
!178 = distinct !{!178, !179, !"quoting_options_from_style: argument 0"}
!179 = distinct !{!179, !"quoting_options_from_style"}
!180 = !{!181, !31, i64 0}
!181 = !{!"timeval", !31, i64 0, !31, i64 8}
!182 = distinct !{!182, !19}
!183 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 4, !21, i64 28, i64 4, !21, i64 32, i64 4, !21, i64 40, i64 8, !33, i64 48, i64 8, !12}
!184 = distinct !{!184, !19}
!185 = !{!48, !22, i64 0}
!186 = !{!48, !13, i64 16}
!187 = !{!48, !13, i64 8}
!188 = !{!48, !13, i64 32}
!189 = !{!48, !13, i64 72}
!190 = !{!48, !31, i64 144}
