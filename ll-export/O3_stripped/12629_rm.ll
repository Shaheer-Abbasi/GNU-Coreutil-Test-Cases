; ModuleID = 'src/rm.stripped.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.dev_ino = type { i64, i64 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.54 }
%union.anon.54 = type { i32 }
%struct.rm_options = type { i8, i32, i8, i8, i8, %struct.dev_ino*, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.dev_ino, %struct.dev_ino, %struct.dev_ino, [2 x i32] }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i64, i64, i32 (%struct._ftsent**, %struct._ftsent**)*, i32, %struct.hash_table*, %union.anon, %struct.I_ring }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, %struct.__dirstream*, i64, i8*, i8*, i8*, i32, i32, i64, %struct.FTS*, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.__dirstream = type opaque
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%union.anon = type { %struct.hash_table* }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.cycle_check_state = type { %struct.dev_ino, i64, i32 }
%struct.Active_dir = type { i64, i64, %struct._ftsent* }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Remove (unlink) the FILE(s).\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -f, --force\0A         ignore nonexistent files and arguments, never prompt\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"  -i\0A         prompt before every removal\0A\00", align 1
@.str.6 = private unnamed_addr constant [190 x i8] c"  -I\0A         prompt once before removing more than three files,\0A         or when removing recursively; less intrusive than -i,\0A         while still giving protection against most mistakes\0A\00", align 1
@.str.7 = private unnamed_addr constant [134 x i8] c"      --interactive[=WHEN]\0A         prompt according to WHEN: never, once (-I), or always (-i);\0A         without WHEN, prompt always\0A\00", align 1
@.str.8 = private unnamed_addr constant [198 x i8] c"      --one-file-system\0A         when removing a hierarchy recursively,\0A         skip any directory that is on a file system different\0A         from that of the corresponding command line argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --no-preserve-root\0A         do not treat '/' specially\0A\00", align 1
@.str.10 = private unnamed_addr constant [167 x i8] c"      --preserve-root[=all]\0A         do not remove '/' (default);\0A         with 'all', reject any command line argument\0A         on a separate device from its parent\0A\00", align 1
@.str.11 = private unnamed_addr constant [82 x i8] c"  -r, -R, --recursive\0A         remove directories and their contents recursively\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"  -d, --dir\0A         remove empty directories\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"  -v, --verbose\0A         explain what is being done\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [155 x i8] c"\0ABy default, rm does not remove directories.  Use the --recursive (-r or -R)\0Aoption to remove each listed directory, too, along with all of its contents.\0A\00", align 1
@.str.17 = private unnamed_addr constant [108 x i8] c"\0AAny attempt to remove a file whose last file name component is '.' or '..'\0Ais rejected with a diagnostic.\0A\00", align 1
@.str.18 = private unnamed_addr constant [122 x i8] c"\0ATo remove a file whose name starts with a '-', for example '-foo',\0Ause one of these commands:\0A  %s -- -foo\0A\0A  %s ./-foo\0A\00", align 1
@.str.19 = private unnamed_addr constant [213 x i8] c"\0AIf you use rm to remove a file, it might be possible to recover\0Asome of its contents, given sufficient expertise and/or time.  For greater\0Aassurance that the contents are unrecoverable, consider using shred(1).\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"dfirvIR\00", align 1
@long_opts = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i32 2, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i32 0, i32 0), i32 0, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i32 0, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i32 2, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0), i32 0, i32* null, i32 260 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@optarg = external local_unnamed_addr global i8*, align 8
@interactive_types = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 2], align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"--interactive\00", align 1
@interactive_args = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* null], align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"--no-preserve-root\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"you may not abbreviate the --no-preserve-root option\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"unrecognized --preserve-root argument: %s\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dev_ino_buf = internal global %struct.dev_ino zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"%s: remove %ju argument recursively? \00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"%s: remove %ju arguments recursively? \00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"%s: remove %ju argument? \00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: remove %ju arguments? \00", align 1
@.str.41 = private unnamed_addr constant [108 x i8] c"((status) == RM_OK || (status) == RM_USER_ACCEPTED || (status) == RM_USER_DECLINED || (status) == RM_ERROR)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"src/rm.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.73 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.74 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"one-file-system\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"-presume-input-tty\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"Try '%s ./%s' to remove the file %s.\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.1.64 = private unnamed_addr constant [88 x i8] c"((s) == RM_OK || (s) == RM_USER_ACCEPTED || (s) == RM_USER_DECLINED || (s) == RM_ERROR)\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"src/remove.c\00", align 1
@__PRETTY_FUNCTION__.rm = private unnamed_addr constant [60 x i8] c"enum RM_status rm(char *const *, const struct rm_options *)\00", align 1
@.str.3.66 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.4.49 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.5.50 = private unnamed_addr constant [51 x i8] c"refusing to remove %s or %s directory: skipping %s\00", align 1
@.str.6.51 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7.52 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8.53 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9.54 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.10.55 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.11.56 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.12.57 = private unnamed_addr constant [31 x i8] c"failed to stat %s: skipping %s\00", align 1
@.str.13.58 = private unnamed_addr constant [46 x i8] c"skipping %s, since it's on a different device\00", align 1
@.str.14.59 = private unnamed_addr constant [37 x i8] c"and --preserve-root=all is in effect\00", align 1
@.str.15.60 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.16.61 = private unnamed_addr constant [21 x i8] c"traversal failed: %s\00", align 1
@.str.17.62 = private unnamed_addr constant [56 x i8] c"unexpected failure: fts_info=%d: %s\0Aplease report to %s\00", align 1
@.str.18.63 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.70 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@.str.20.69 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@.str.21.71 = private unnamed_addr constant [51 x i8] c"%s: attempt removal of inaccessible directory %s? \00", align 1
@.str.22.73 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@.str.23.72 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@.str.24.67 = private unnamed_addr constant [22 x i8] c"removed directory %s\0A\00", align 1
@.str.25.68 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i64 0, i64 0), align 8
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.98 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.99 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.101 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.102 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.103 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@.str.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.111 = private unnamed_addr constant [19 x i8] c"error closing file\00", align 1
@.str.2.112 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@file_name.114 = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.118 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.119 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.121 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.127 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.129 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.128 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.123 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.124 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.151 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.157 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.158 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.159 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.188 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.189 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.193 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.194 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.195 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.196 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.197 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.198 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.199 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.200 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.201 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.193, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.195, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.196, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.197, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.198, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.199, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.200, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.201, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.204 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.202 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.205 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.203 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.226 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.227 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.228 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.229 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.230 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.231 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.232 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.233 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.234 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.235 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.236 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.237 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.238 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.239 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.240 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.241 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.246 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.247 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.248 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.249 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.250 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.251 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.252 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@can_write_any_file.initialized = internal unnamed_addr global i1 false, align 1
@can_write_any_file.can_write = internal unnamed_addr global i8 0, align 4
@exit_failure = dso_local global i32 1, align 4
@.str.267 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.265 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.266 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.270 = private unnamed_addr constant [29 x i8] c"(*__errno_location ()) != 22\00", align 1
@.str.1.271 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.276 = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@.str.1.277 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@.str.2.284 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.3.278 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@.str.7.279 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@.str.8.280 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@.str.9.281 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.10.282 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.11.283 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1
@.str.291 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.292 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.301 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.306 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.307 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #40
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #40
  br label %74

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #40
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #40
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #40
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14)
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %16)
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %17)
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([190 x i8], [190 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %18)
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([134 x i8], [134 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %19)
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([198 x i8], [198 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %20)
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %21)
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([167 x i8], [167 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %22)
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %23)
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %24)
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %25)
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %26)
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #40
  tail call fastcc void @oputs_(i8* noundef %27)
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #40
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %30 = tail call i32 @fputs_unlocked(i8* noundef %28, %struct._IO_FILE* noundef %29)
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #40
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %33 = tail call i32 @fputs_unlocked(i8* noundef %31, %struct._IO_FILE* noundef %32)
  %34 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([122 x i8], [122 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #40
  %35 = load i8*, i8** @program_name, align 8, !tbaa !12
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %34, i8* noundef %35, i8* noundef %35) #40
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([213 x i8], [213 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #40
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %39 = tail call i32 @fputs_unlocked(i8* noundef %37, %struct._IO_FILE* noundef %38)
  %40 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %40) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %40, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #40
  %41 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %42

42:                                               ; preds = %47, %9
  %43 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %9 ]
  %44 = phi %struct.infomap* [ %48, %47 ], [ %41, %9 ]
  %45 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %43) #41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 1
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %48, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8, !tbaa !16
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %42, !llvm.loop !18

52:                                               ; preds = %47, %42
  %53 = phi %struct.infomap* [ %44, %42 ], [ %48, %47 ]
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 0, i32 1
  %55 = load i8*, i8** %54, align 8, !tbaa !20
  %56 = icmp eq i8* %55, null
  %57 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %55
  tail call void @emit_bug_reporting_address() #40
  %58 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #40
  %59 = icmp eq i8* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = tail call i32 @strncmp(i8* noundef nonnull %58, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 noundef 3) #41
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #40
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %66 = tail call i32 @fputs_unlocked(i8* noundef %64, %struct._IO_FILE* noundef %65) #40
  br label %67

67:                                               ; preds = %52, %60, %63
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #40
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %68, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #40
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.76, i64 0, i64 0), i32 noundef 5) #40
  %71 = icmp eq i8* %57, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %72 = select i1 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %70, i8* noundef %57, i8* noundef %72) #40
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %40) #40
  br label %74

74:                                               ; preds = %67, %4
  tail call void @exit(i32 noundef %0) #42
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
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #40
  %6 = icmp eq i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #41
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
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #41
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41
  %26 = icmp eq i8* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24
  br i1 %28, label %53, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8* %24, %25
  br i1 %30, label %31, label %53

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #43
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
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)) #41
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
  %69 = tail call i16** @__ctype_b_loc() #43
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
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i64 noundef 6) #41
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i64 noundef 9) #41
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #40
  br label %106

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #40
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* noundef %109)
  %111 = ptrtoint i8* %59 to i64
  %112 = sub i64 %111, %92
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* noundef %117)
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
  %3 = alloca %struct.rm_options, align 8
  %4 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #40
  %5 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %5) #40
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #40
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #40
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #40
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdin) #40
  %10 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 2
  %12 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 4
  %13 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 5
  store %struct.dev_ino* null, %struct.dev_ino** %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 6
  %16 = tail call i32 @isatty(i32 noundef 0) #40
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 7
  %19 = zext i1 %17 to i8
  %20 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 8
  %21 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 9
  store i8 0, i8* %21, align 1, !tbaa !31
  br label %22

22:                                               ; preds = %66, %2
  %23 = phi i8 [ 0, %2 ], [ %67, %66 ]
  %24 = phi i8 [ 0, %2 ], [ %68, %66 ]
  %25 = phi i8 [ 0, %2 ], [ %69, %66 ]
  %26 = phi i32 [ 4, %2 ], [ %70, %66 ]
  %27 = phi i8 [ 0, %2 ], [ %71, %66 ]
  %28 = phi i8 [ 0, %2 ], [ %72, %66 ]
  %29 = phi i8 [ %19, %2 ], [ %73, %66 ]
  %30 = phi i8 [ 0, %2 ], [ %74, %66 ]
  %31 = phi i1 [ false, %2 ], [ %75, %66 ]
  %32 = phi i1 [ true, %2 ], [ %76, %66 ]
  %33 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_opts, i64 0, i64 0), i32* noundef null) #40
  switch i32 %33, label %91 [
    i32 -1, label %92
    i32 100, label %66
    i32 102, label %34
    i32 105, label %35
    i32 73, label %36
    i32 114, label %37
    i32 82, label %37
    i32 256, label %38
    i32 257, label %49
    i32 258, label %50
    i32 259, label %60
    i32 260, label %81
    i32 118, label %82
    i32 -2, label %83
    i32 -3, label %84
  ]

34:                                               ; preds = %22
  br label %66

35:                                               ; preds = %22
  br label %66

36:                                               ; preds = %22
  br label %66

37:                                               ; preds = %22, %22
  br label %66

38:                                               ; preds = %22
  %39 = load i8*, i8** @optarg, align 8, !tbaa !12
  %40 = icmp eq i8* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @argmatch_die, align 8, !tbaa !12
  %43 = tail call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %39, i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @interactive_args, i64 0, i64 0), i8* noundef bitcast ([6 x i32]* @interactive_types to i8*), i64 noundef 4, void ()* noundef %42, i1 noundef true) #40
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* @interactive_types, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !23
  switch i32 %45, label %66 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
  ]

46:                                               ; preds = %41
  br label %66

47:                                               ; preds = %41
  br label %66

48:                                               ; preds = %38, %41
  br label %66

49:                                               ; preds = %22
  br label %66

50:                                               ; preds = %22
  %51 = load i32, i32* @optind, align 4, !tbaa !21
  %52 = add nsw i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %55, i8* noundef nonnull dereferenceable(19) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #41
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %59) #40
  unreachable

60:                                               ; preds = %22
  %61 = load i8*, i8** @optarg, align 8, !tbaa !12
  %62 = icmp eq i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %61, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #41
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63, %22, %60, %50, %46, %47, %48, %41, %82, %81, %49, %37, %36, %35, %34
  %67 = phi i8 [ %23, %82 ], [ %23, %81 ], [ %23, %49 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ %23, %41 ], [ %23, %48 ], [ %23, %47 ], [ %23, %46 ], [ %23, %50 ], [ %23, %60 ], [ 1, %22 ], [ %23, %63 ]
  %68 = phi i8 [ %24, %82 ], [ %24, %81 ], [ %24, %49 ], [ 1, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %41 ], [ %24, %48 ], [ %24, %47 ], [ %24, %46 ], [ %24, %50 ], [ %24, %60 ], [ %24, %22 ], [ %24, %63 ]
  %69 = phi i8 [ %25, %82 ], [ %25, %81 ], [ %25, %49 ], [ %25, %37 ], [ 0, %36 ], [ 0, %35 ], [ 1, %34 ], [ %25, %41 ], [ 0, %48 ], [ 0, %47 ], [ %25, %46 ], [ %25, %50 ], [ %25, %60 ], [ %25, %22 ], [ %25, %63 ]
  %70 = phi i32 [ %26, %82 ], [ %26, %81 ], [ %26, %49 ], [ %26, %37 ], [ 4, %36 ], [ 3, %35 ], [ 5, %34 ], [ %26, %41 ], [ 3, %48 ], [ 4, %47 ], [ 5, %46 ], [ %26, %50 ], [ %26, %60 ], [ %26, %22 ], [ %26, %63 ]
  %71 = phi i8 [ %27, %82 ], [ %27, %81 ], [ 1, %49 ], [ %27, %37 ], [ %27, %36 ], [ %27, %35 ], [ %27, %34 ], [ %27, %41 ], [ %27, %48 ], [ %27, %47 ], [ %27, %46 ], [ %27, %50 ], [ %27, %60 ], [ %27, %22 ], [ %27, %63 ]
  %72 = phi i8 [ %28, %82 ], [ %28, %81 ], [ %28, %49 ], [ %28, %37 ], [ %28, %36 ], [ %28, %35 ], [ %28, %34 ], [ %28, %41 ], [ %28, %48 ], [ %28, %47 ], [ %28, %46 ], [ %28, %50 ], [ %28, %60 ], [ %28, %22 ], [ 1, %63 ]
  %73 = phi i8 [ %29, %82 ], [ 1, %81 ], [ %29, %49 ], [ %29, %37 ], [ %29, %36 ], [ %29, %35 ], [ %29, %34 ], [ %29, %41 ], [ %29, %48 ], [ %29, %47 ], [ %29, %46 ], [ %29, %50 ], [ %29, %60 ], [ %29, %22 ], [ %29, %63 ]
  %74 = phi i8 [ 1, %82 ], [ %30, %81 ], [ %30, %49 ], [ %30, %37 ], [ %30, %36 ], [ %30, %35 ], [ %30, %34 ], [ %30, %41 ], [ %30, %48 ], [ %30, %47 ], [ %30, %46 ], [ %30, %50 ], [ %30, %60 ], [ %30, %22 ], [ %30, %63 ]
  %75 = phi i1 [ %31, %82 ], [ %31, %81 ], [ %31, %49 ], [ %31, %37 ], [ true, %36 ], [ false, %35 ], [ false, %34 ], [ %31, %41 ], [ false, %48 ], [ true, %47 ], [ false, %46 ], [ %31, %50 ], [ %31, %60 ], [ %31, %22 ], [ %31, %63 ]
  %76 = phi i1 [ %32, %82 ], [ %32, %81 ], [ %32, %49 ], [ %32, %37 ], [ %32, %36 ], [ %32, %35 ], [ %32, %34 ], [ %32, %41 ], [ %32, %48 ], [ %32, %47 ], [ %32, %46 ], [ false, %50 ], [ true, %60 ], [ %32, %22 ], [ true, %63 ]
  br label %22, !llvm.loop !32

77:                                               ; preds = %63
  %78 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #40
  %79 = load i8*, i8** @optarg, align 8, !tbaa !12
  %80 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %79) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %78, i8* noundef %80) #40
  unreachable

81:                                               ; preds = %22
  br label %66

82:                                               ; preds = %22
  br label %66

83:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #44
  unreachable

84:                                               ; preds = %22
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %86 = load i8*, i8** @Version, align 8, !tbaa !12
  %87 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #40
  %88 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #40
  %89 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)) #40
  %90 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0)) #40
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef %86, i8* noundef %87, i8* noundef %88, i8* noundef %89, i8* noundef %90, i8* noundef null) #40
  tail call void @exit(i32 noundef 0) #42
  unreachable

91:                                               ; preds = %22
  tail call fastcc void @diagnose_leading_hyphen(i32 noundef %0, i8** noundef nonnull %1)
  tail call void @usage(i32 noundef 1) #44
  unreachable

92:                                               ; preds = %22
  store i8 %30, i8* %20, align 2, !tbaa !33
  store i8 %29, i8* %18, align 1, !tbaa !34
  store i8 %28, i8* %15, align 8, !tbaa !35
  store i8 %27, i8* %11, align 8, !tbaa !36
  store i32 %26, i32* %10, align 4, !tbaa !37
  store i8 %25, i8* %4, align 8, !tbaa !38
  store i8 %24, i8* %13, align 1, !tbaa !39
  store i8 %23, i8* %12, align 2, !tbaa !40
  %93 = load i32, i32* @optind, align 4, !tbaa !21
  %94 = icmp slt i32 %93, %0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = icmp eq i8 %25, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %95
  %98 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %98) #40
  tail call void @usage(i32 noundef 1) #44
  unreachable

99:                                               ; preds = %92
  %100 = icmp eq i8 %24, 0
  %101 = xor i1 %32, true
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = tail call %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull @main.dev_ino_buf) #40
  store %struct.dev_ino* %104, %struct.dev_ino** %14, align 8, !tbaa !28
  %105 = icmp eq %struct.dev_ino* %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @optind, align 4, !tbaa !21
  br label %113

108:                                              ; preds = %103
  %109 = tail call i32* @__errno_location() #43
  %110 = load i32, i32* %109, align 4, !tbaa !21
  %111 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef 5) #40
  %112 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %110, i8* noundef %111, i8* noundef %112) #40
  unreachable

113:                                              ; preds = %106, %99
  %114 = phi i32 [ %107, %106 ], [ %93, %99 ]
  %115 = sub nsw i32 %0, %114
  %116 = sext i32 %115 to i64
  %117 = sext i32 %114 to i64
  %118 = getelementptr inbounds i8*, i8** %1, i64 %117
  br i1 %31, label %119, label %134

119:                                              ; preds = %113
  %120 = icmp ne i8 %24, 0
  %121 = icmp ugt i32 %115, 3
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  br i1 %120, label %125, label %127

125:                                              ; preds = %123
  %126 = tail call i8* @dcngettext(i8* noundef null, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i64 noundef %116, i32 noundef 5) #40
  br label %129

127:                                              ; preds = %123
  %128 = tail call i8* @dcngettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i64 noundef %116, i32 noundef 5) #40
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i8* [ %126, %125 ], [ %128, %127 ]
  %131 = load i8*, i8** @program_name, align 8, !tbaa !12
  %132 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %124, i32 noundef 1, i8* noundef %130, i8* noundef %131, i64 noundef %116) #40
  %133 = tail call i1 @yesno() #40
  br i1 %133, label %134, label %142

134:                                              ; preds = %129, %119, %113
  %135 = call i32 @rm(i8** noundef nonnull %118, %struct.rm_options* noundef nonnull %3) #40
  %136 = add i32 %135, -2
  %137 = icmp ult i32 %136, 4
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @__assert_fail(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #42
  unreachable

139:                                              ; preds = %134
  %140 = icmp eq i32 %135, 5
  %141 = zext i1 %140 to i32
  br label %142

142:                                              ; preds = %139, %129, %95
  %143 = phi i32 [ 0, %95 ], [ %141, %139 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #40
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @diagnose_leading_hyphen(i32 noundef %0, i8** nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = alloca %struct.stat, align 8
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = bitcast %struct.stat* %3 to i8*
  %7 = zext i32 %0 to i64
  br label %8

8:                                                ; preds = %5, %28
  %9 = phi i64 [ 1, %5 ], [ %29, %28 ]
  %10 = getelementptr inbounds i8*, i8** %1, i64 %9
  %11 = load i8*, i8** %10, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #40
  %12 = load i8, i8* %11, align 1, !tbaa !23
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, i8* %11, i64 1
  %16 = load i8, i8* %15, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = call i32 @lstat(i8* noundef nonnull %11, %struct.stat* noundef nonnull %3) #40
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i64 0, i64 0), i32 noundef 5) #40
  %24 = load i8*, i8** %1, align 8, !tbaa !12
  %25 = tail call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 3, i8* noundef nonnull %11) #40
  %26 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %11) #40
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26) #40
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #40
  br label %31

28:                                               ; preds = %8, %14, %18
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #40
  %29 = add nuw nsw i64 %9, 1
  %30 = icmp eq i64 %29, %7
  br i1 %30, label %31, label %8, !llvm.loop !41

31:                                               ; preds = %28, %2, %21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i8* @dcngettext(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rm(i8** noundef %0, %struct.rm_options* nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = load i8*, i8** %0, align 8, !tbaa !12
  %6 = icmp eq i8* %5, null
  br i1 %6, label %258, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 2
  %9 = load i8, i8* %8, align 8, !tbaa !36, !range !42
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 536, i32 600
  %12 = tail call noalias nonnull %struct.FTS* @xfts_open(i8** noundef nonnull %0, i32 noundef %11, i32 (%struct._ftsent**, %struct._ftsent**)* noundef null) #40
  %13 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  %14 = icmp eq %struct._ftsent* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7
  %16 = bitcast i32* %3 to i8*
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %12, i64 0, i32 3
  %18 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 3
  %19 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 5
  %20 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 6
  %21 = bitcast %struct.stat* %4 to i8*
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %23 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 4
  br label %31

24:                                               ; preds = %247, %7
  %25 = phi i32 [ 2, %7 ], [ %248, %247 ]
  %26 = tail call i32* @__errno_location() #43
  %27 = load i32, i32* %26, align 4, !tbaa !21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %251, label %29

29:                                               ; preds = %24
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %27, i8* noundef %30) #40
  br label %251

31:                                               ; preds = %15, %247
  %32 = phi %struct._ftsent* [ %13, %15 ], [ %249, %247 ]
  %33 = phi i32 [ 2, %15 ], [ %248, %247 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #40
  store i32 -2, i32* %3, align 4, !tbaa !21
  %34 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 14
  %35 = load i16, i16* %34, align 8, !tbaa !24
  switch i16 %35, label %228 [
    i16 1, label %36
    i16 7, label %219
    i16 2, label %212
    i16 6, label %170
    i16 3, label %204
    i16 4, label %204
    i16 8, label %204
    i16 10, label %204
    i16 11, label %204
    i16 12, label %204
    i16 13, label %204
  ]

36:                                               ; preds = %31
  %37 = load i8, i8* %18, align 1, !tbaa !39, !range !42
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %41 = load i8, i8* %23, align 2, !tbaa !40, !range !42
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %237

43:                                               ; preds = %39
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0), i32 noundef 5) #40
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %46 = load i8*, i8** %45, align 8, !tbaa !12
  %47 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %46) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 21, i8* noundef %44, i8* noundef %47) #40
  %48 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %236

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 12
  %51 = load i64, i64* %50, align 8, !tbaa !43
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 6
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = tail call i8* @last_component(i8* noundef %55) #41
  %57 = load i8, i8* %56, align 1, !tbaa !23
  %58 = icmp eq i8 %57, 46
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, i8* %56, i64 1
  %61 = load i8, i8* %60, align 1, !tbaa !23
  %62 = icmp eq i8 %61, 46
  %63 = select i1 %62, i64 2, i64 1
  %64 = getelementptr inbounds i8, i8* %56, i64 %63
  %65 = load i8, i8* %64, align 1, !tbaa !23
  switch i8 %65, label %75 [
    i8 47, label %66
    i8 0, label %66
  ]

66:                                               ; preds = %59, %59
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5.50, i64 0, i64 0), i32 noundef 5) #40
  %68 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.51, i64 0, i64 0)) #40
  %69 = tail call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.52, i64 0, i64 0)) #40
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %71 = load i8*, i8** %70, align 8, !tbaa !12
  %72 = tail call i8* @quotearg_n_style(i32 noundef 2, i32 noundef 4, i8* noundef %71) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %67, i8* noundef %68, i8* noundef %69, i8* noundef %72) #40
  %73 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %74 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %236

75:                                               ; preds = %59, %53
  %76 = load %struct.dev_ino*, %struct.dev_ino** %19, align 8, !tbaa !28
  %77 = icmp eq %struct.dev_ino* %76, null
  br i1 %77, label %108, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 17, i64 0, i32 0
  %80 = load i64, i64* %79, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %76, i64 0, i32 1
  %82 = load i64, i64* %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 17, i64 0, i32 1
  %84 = load i64, i64* %83, align 8, !tbaa !50
  %85 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %76, i64 0, i32 0
  %86 = load i64, i64* %85, align 8, !tbaa !51
  %87 = icmp eq i64 %80, %82
  %88 = icmp eq i64 %84, %86
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %92 = load i8*, i8** %91, align 8, !tbaa !12
  %93 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %92, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.53, i64 0, i64 0)) #41
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9.54, i64 0, i64 0), i32 noundef 5) #40
  %97 = load i8*, i8** %91, align 8, !tbaa !12
  %98 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %97) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %96, i8* noundef %98) #40
  br label %104

99:                                               ; preds = %90
  %100 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10.55, i64 0, i64 0), i32 noundef 5) #40
  %101 = load i8*, i8** %91, align 8, !tbaa !12
  %102 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %101) #40
  %103 = tail call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.53, i64 0, i64 0)) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %100, i8* noundef %102, i8* noundef %103) #40
  br label %104

104:                                              ; preds = %99, %95
  %105 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11.56, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %105) #40
  %106 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %107 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %236

108:                                              ; preds = %78, %75
  %109 = load i8, i8* %20, align 8, !tbaa !35, !range !42
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %108
  %112 = tail call noalias nonnull i8* @file_name_concat(i8* noundef %55, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.52, i64 0, i64 0), i8** noundef null) #40
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %21) #40
  %113 = call i32 @lstat(i8* noundef nonnull %112, %struct.stat* noundef nonnull %4) #40
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12.57, i64 0, i64 0), i32 noundef 5) #40
  %117 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef nonnull %112) #40
  %118 = load i8*, i8** %54, align 8, !tbaa !12
  %119 = tail call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef %118) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %116, i8* noundef %117, i8* noundef %119) #40
  tail call void @free(i8* noundef nonnull %112) #40
  br label %130

120:                                              ; preds = %111
  tail call void @free(i8* noundef nonnull %112) #40
  %121 = load i64, i64* %17, align 8, !tbaa !52
  %122 = load i64, i64* %22, align 8, !tbaa !45
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %133, label %124

124:                                              ; preds = %120
  %125 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13.58, i64 0, i64 0), i32 noundef 5) #40
  %126 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %127 = load i8*, i8** %126, align 8, !tbaa !12
  %128 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %127) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %125, i8* noundef %128) #40
  %129 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14.59, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %129) #40
  br label %130

130:                                              ; preds = %124, %115
  %131 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %132 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #40
  br label %236

133:                                              ; preds = %120
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %21) #40
  br label %134

134:                                              ; preds = %133, %108, %49
  %135 = call fastcc i32 @prompt(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i1 noundef true, %struct.rm_options* noundef nonnull %1, i32 noundef 2, i32* noundef nonnull %3) #40
  %136 = icmp eq i32 %135, 3
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, -1
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = tail call fastcc i32 @excise(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, %struct.rm_options* noundef nonnull %1, i1 noundef true) #40
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %145 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %237

146:                                              ; preds = %140, %134
  %147 = phi i32 [ %141, %140 ], [ %135, %134 ]
  %148 = and i32 %147, -2
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %238, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 1
  %152 = load %struct._ftsent*, %struct._ftsent** %151, align 8, !tbaa !12
  %153 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %152, i64 0, i32 12
  %154 = load i64, i64* %153, align 8, !tbaa !43
  %155 = icmp sgt i64 %154, -1
  br i1 %155, label %156, label %167

156:                                              ; preds = %150, %161
  %157 = phi %struct._ftsent* [ %163, %161 ], [ %152, %150 ]
  %158 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %157, i64 0, i32 4
  %159 = load i64, i64* %158, align 8, !tbaa !43
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  store i64 1, i64* %158, align 8, !tbaa !43
  %162 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %157, i64 0, i32 1
  %163 = load %struct._ftsent*, %struct._ftsent** %162, align 8, !tbaa !12
  %164 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %163, i64 0, i32 12
  %165 = load i64, i64* %164, align 8, !tbaa !43
  %166 = icmp sgt i64 %165, -1
  br i1 %166, label %156, label %167, !llvm.loop !55

167:                                              ; preds = %161, %156, %150
  %168 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef %32, i32 noundef 4) #40
  %169 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %238

170:                                              ; preds = %31
  %171 = load i8, i8* %8, align 8, !tbaa !36, !range !42
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %204, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 12
  %175 = load i64, i64* %174, align 8, !tbaa !43
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 17, i64 0, i32 0
  %179 = load i64, i64* %178, align 8, !tbaa !45
  %180 = load i64, i64* %17, align 8, !tbaa !52
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %204, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 1
  %184 = load %struct._ftsent*, %struct._ftsent** %183, align 8, !tbaa !12
  %185 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %184, i64 0, i32 12
  %186 = load i64, i64* %185, align 8, !tbaa !43
  %187 = icmp sgt i64 %186, -1
  br i1 %187, label %188, label %199

188:                                              ; preds = %182, %193
  %189 = phi %struct._ftsent* [ %195, %193 ], [ %184, %182 ]
  %190 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %189, i64 0, i32 4
  %191 = load i64, i64* %190, align 8, !tbaa !43
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  store i64 1, i64* %190, align 8, !tbaa !43
  %194 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %189, i64 0, i32 1
  %195 = load %struct._ftsent*, %struct._ftsent** %194, align 8, !tbaa !12
  %196 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %195, i64 0, i32 12
  %197 = load i64, i64* %196, align 8, !tbaa !43
  %198 = icmp sgt i64 %197, -1
  br i1 %198, label %188, label %199, !llvm.loop !56

199:                                              ; preds = %193, %188, %182
  %200 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13.58, i64 0, i64 0), i32 noundef 5) #40
  %201 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %202 = load i8*, i8** %201, align 8, !tbaa !12
  %203 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %202) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %200, i8* noundef %203) #40
  br label %236

204:                                              ; preds = %177, %173, %170, %31, %31, %31, %31, %31, %31, %31
  %205 = and i16 %35, -3
  %206 = icmp eq i16 %205, 4
  %207 = call fastcc i32 @prompt(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i1 noundef %206, %struct.rm_options* noundef %1, i32 noundef 3, i32* noundef nonnull %3) #40
  %208 = and i32 %207, -2
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %238

210:                                              ; preds = %204
  %211 = tail call fastcc i32 @excise(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, %struct.rm_options* noundef %1, i1 noundef %206) #40
  br label %238

212:                                              ; preds = %31
  %213 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([186 x i8], [186 x i8]* @.str.15.60, i64 0, i64 0), i32 noundef 5) #40
  %214 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %215 = load i8*, i8** %214, align 8, !tbaa !12
  %216 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %215) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %213, i8* noundef %216) #40
  %217 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %218 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %236

219:                                              ; preds = %31
  %220 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 8
  %221 = load i32, i32* %220, align 8, !tbaa !21
  %222 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16.61, i64 0, i64 0), i32 noundef 5) #40
  %223 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %224 = load i8*, i8** %223, align 8, !tbaa !12
  %225 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %224) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %221, i8* noundef %222, i8* noundef %225) #40
  %226 = tail call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %12, %struct._ftsent* noundef nonnull %32, i32 noundef 4) #40
  %227 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  br label %236

228:                                              ; preds = %31
  %229 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 14
  %230 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17.62, i64 0, i64 0), i32 noundef 5) #40
  %231 = load i16, i16* %229, align 8, !tbaa !24
  %232 = zext i16 %231 to i32
  %233 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 7
  %234 = load i8*, i8** %233, align 8, !tbaa !12
  %235 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %234) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %230, i32 noundef %232, i8* noundef %235, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.63, i64 0, i64 0)) #40
  tail call void @abort() #42
  unreachable

236:                                              ; preds = %219, %212, %199, %66, %104, %43, %130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #40
  br label %245

237:                                              ; preds = %143, %39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #40
  br label %247

238:                                              ; preds = %146, %167, %204, %210
  %239 = phi i32 [ %147, %167 ], [ %147, %146 ], [ %211, %210 ], [ %207, %204 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #40
  switch i32 %239, label %240 [
    i32 5, label %245
    i32 2, label %241
    i32 3, label %241
    i32 4, label %241
  ]

240:                                              ; preds = %238
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.rm, i64 0, i64 0)) #42
  unreachable

241:                                              ; preds = %238, %238, %238
  %242 = icmp eq i32 %239, 4
  %243 = icmp eq i32 %33, 2
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %247

245:                                              ; preds = %236, %238, %241
  %246 = phi i32 [ 5, %236 ], [ %239, %238 ], [ 4, %241 ]
  br label %247

247:                                              ; preds = %237, %241, %245
  %248 = phi i32 [ %246, %245 ], [ %33, %241 ], [ %33, %237 ]
  %249 = tail call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %12) #40
  %250 = icmp eq %struct._ftsent* %249, null
  br i1 %250, label %24, label %31

251:                                              ; preds = %29, %24
  %252 = phi i32 [ %25, %24 ], [ 5, %29 ]
  %253 = tail call i32 @rpl_fts_close(%struct.FTS* noundef nonnull %12) #40
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %26, align 4, !tbaa !21
  %257 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.66, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %256, i8* noundef %257) #40
  br label %258

258:                                              ; preds = %251, %255, %2
  %259 = phi i32 [ 2, %2 ], [ 5, %255 ], [ %252, %251 ]
  ret i32 %259
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) #13

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prompt(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* nocapture noundef readonly %1, i1 noundef %2, %struct.rm_options* nocapture noundef readonly %3, i32 noundef %4, i32* nocapture noundef %5) unnamed_addr #12 {
  %7 = alloca %struct.stat, align 8
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 4, !tbaa !57
  %10 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %11 = load i8*, i8** %10, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = bitcast %struct.stat* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %14) #40
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 12, i32 1
  store i64 -1, i64* %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 4
  %17 = load i64, i64* %16, align 8, !tbaa !43
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %182

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 1
  %21 = load i32, i32* %20, align 4, !tbaa !37
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %182, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 0
  %25 = load i8, i8* %24, align 8, !tbaa !38, !range !42
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = icmp eq i32 %21, 3
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 7
  %31 = load i8, i8* %30, align 1, !tbaa !34, !range !42
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %27, %29
  %34 = tail call i1 @can_write_any_file() #40
  br i1 %34, label %51, label %35

35:                                               ; preds = %33
  %36 = call i32 @fstatat(i32 noundef %9, i8* noundef %13, %struct.stat* noundef nonnull %7, i32 noundef 256) #40
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  store i64 -2, i64* %15, align 8, !tbaa !58
  %39 = tail call i32* @__errno_location() #43
  %40 = load i32, i32* %39, align 4, !tbaa !21
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %41, i64* %42, align 8, !tbaa !50
  br label %112

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 2
  %45 = load i32, i32* %44, align 8, !tbaa !59
  %46 = and i32 %45, 61440
  %47 = icmp eq i32 %46, 40960
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = call i32 @faccessat(i32 noundef %9, i8* noundef %13, i32 noundef 2, i32 noundef 512) #40
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %33, %43, %48
  %52 = load i32, i32* %20, align 4, !tbaa !37
  br label %53

53:                                               ; preds = %29, %23, %51
  %54 = phi i32 [ %52, %51 ], [ %21, %23 ], [ %21, %29 ]
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %62, label %182

56:                                               ; preds = %48
  %57 = tail call i32* @__errno_location() #43
  %58 = load i32, i32* %57, align 4, !tbaa !21
  %59 = icmp eq i32 %58, 13
  %60 = xor i1 %59, true
  %61 = or i1 %60, %2
  br i1 %61, label %90, label %63

62:                                               ; preds = %53
  br i1 %2, label %96, label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ 0, %62 ], [ 1, %56 ]
  %65 = load i64, i64* %15, align 8, !tbaa !58
  %66 = icmp sgt i64 %65, -1
  br i1 %66, label %81, label %67

67:                                               ; preds = %63
  %68 = icmp eq i64 %65, -1
  br i1 %68, label %73, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %71 = load i64, i64* %70, align 8, !tbaa !50
  %72 = tail call i32* @__errno_location() #43
  br label %86

73:                                               ; preds = %67
  %74 = call i32 @fstatat(i32 noundef %9, i8* noundef %13, %struct.stat* noundef nonnull %7, i32 noundef 256) #40
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  store i64 -2, i64* %15, align 8, !tbaa !58
  %77 = tail call i32* @__errno_location() #43
  %78 = load i32, i32* %77, align 4, !tbaa !21
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %79, i64* %80, align 8, !tbaa !50
  br label %86

81:                                               ; preds = %63, %73
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 2
  %83 = load i32, i32* %82, align 8, !tbaa !59
  %84 = trunc i32 %83 to i16
  %85 = and i16 %84, -4096
  switch i16 %85, label %116 [
    i16 -24576, label %93
    i16 16384, label %96
  ]

86:                                               ; preds = %69, %76
  %87 = phi i32* [ %72, %69 ], [ %77, %76 ]
  %88 = phi i64 [ %71, %69 ], [ %79, %76 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %87, align 4, !tbaa !21
  br label %112

90:                                               ; preds = %56
  %91 = load i32, i32* %57, align 4, !tbaa !21
  br i1 %59, label %92, label %112

92:                                               ; preds = %90
  br i1 %2, label %96, label %116

93:                                               ; preds = %81
  %94 = load i32, i32* %20, align 4, !tbaa !37
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %116, label %182

96:                                               ; preds = %62, %92, %81
  %97 = phi i32 [ 1, %92 ], [ %64, %81 ], [ 0, %62 ]
  %98 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 3
  %99 = load i8, i8* %98, align 1, !tbaa !39, !range !42
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 4
  %103 = load i8, i8* %102, align 2, !tbaa !40, !range !42
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = call fastcc i32 @get_dir_status(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %1, i32* noundef %5)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %5, align 4, !tbaa !21
  %110 = icmp slt i32 %109, 1
  %111 = select i1 %110, i32 21, i32 %109
  br label %112

112:                                              ; preds = %38, %90, %108, %86
  %113 = phi i32 [ %111, %108 ], [ %91, %90 ], [ %89, %86 ], [ %40, %38 ]
  %114 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %11) #40
  %115 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0), i32 noundef 5) #40
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %113, i8* noundef %115, i8* noundef %114) #40
  br label %182

116:                                              ; preds = %92, %81, %96, %105, %93
  %117 = phi i32 [ 1, %92 ], [ %97, %96 ], [ %97, %105 ], [ %64, %93 ], [ %64, %81 ]
  %118 = phi i1 [ false, %92 ], [ true, %96 ], [ true, %105 ], [ false, %93 ], [ false, %81 ]
  %119 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %11) #40
  %120 = icmp eq i32 %4, 2
  %121 = and i1 %120, %118
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = call fastcc i32 @get_dir_status(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %1, i32* noundef %5)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %127 = icmp eq i32 %117, 0
  %128 = select i1 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20.69, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19.70, i64 0, i64 0)
  %129 = call i8* @dcgettext(i8* noundef null, i8* noundef %128, i32 noundef 5) #40
  %130 = load i8*, i8** @program_name, align 8, !tbaa !12
  %131 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %126, i32 noundef 1, i8* noundef %129, i8* noundef %130, i8* noundef %119) #40
  br label %179

132:                                              ; preds = %122, %116
  %133 = load i32, i32* %5, align 4, !tbaa !21
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 4
  %137 = load i8, i8* %136, align 2, !tbaa !40, !range !42
  %138 = icmp ne i8 %137, 0
  %139 = icmp eq i32 %133, 13
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0), i32 noundef 5) #40
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %133, i8* noundef %142, i8* noundef %119) #40
  br label %182

143:                                              ; preds = %135
  br i1 %120, label %182, label %144

144:                                              ; preds = %143
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %146 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21.71, i64 0, i64 0), i32 noundef 5) #40
  %147 = load i8*, i8** @program_name, align 8, !tbaa !12
  %148 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %145, i32 noundef 1, i8* noundef %146, i8* noundef %147, i8* noundef %119) #40
  br label %179

149:                                              ; preds = %132
  %150 = load i64, i64* %15, align 8, !tbaa !58
  %151 = icmp sgt i64 %150, -1
  br i1 %151, label %171, label %152

152:                                              ; preds = %149
  %153 = icmp eq i64 %150, -1
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %156 = load i64, i64* %155, align 8, !tbaa !50
  %157 = tail call i32* @__errno_location() #43
  br label %166

158:                                              ; preds = %152
  %159 = call i32 @fstatat(i32 noundef %9, i8* noundef %13, %struct.stat* noundef nonnull %7, i32 noundef 256) #40
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %158
  store i64 -2, i64* %15, align 8, !tbaa !58
  %162 = tail call i32* @__errno_location() #43
  %163 = load i32, i32* %162, align 4, !tbaa !21
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %164, i64* %165, align 8, !tbaa !50
  br label %166

166:                                              ; preds = %161, %154
  %167 = phi i32* [ %162, %161 ], [ %157, %154 ]
  %168 = phi i64 [ %164, %161 ], [ %156, %154 ]
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %167, align 4, !tbaa !21
  %170 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0), i32 noundef 5) #40
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %169, i8* noundef %170, i8* noundef %119) #40
  br label %182

171:                                              ; preds = %149, %158
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %173 = icmp eq i32 %117, 0
  %174 = select i1 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23.72, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22.73, i64 0, i64 0)
  %175 = call i8* @dcgettext(i8* noundef null, i8* noundef %174, i32 noundef 5) #40
  %176 = load i8*, i8** @program_name, align 8, !tbaa !12
  %177 = call i8* @file_type(%struct.stat* noundef nonnull %7) #41
  %178 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %172, i32 noundef 1, i8* noundef %175, i8* noundef %176, i8* noundef %177, i8* noundef %119) #40
  br label %179

179:                                              ; preds = %144, %171, %125
  %180 = call i1 @yesno() #40
  %181 = select i1 %180, i32 3, i32 4
  br label %182

182:                                              ; preds = %93, %143, %179, %166, %141, %112, %53, %19, %6
  %183 = phi i32 [ 4, %6 ], [ 2, %19 ], [ 2, %93 ], [ 5, %112 ], [ %181, %179 ], [ 5, %141 ], [ 5, %166 ], [ 2, %143 ], [ 2, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %14) #40
  ret i32 %183
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @excise(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* nocapture noundef readonly %1, %struct.rm_options* nocapture noundef readonly %2, i1 noundef %3) unnamed_addr #12 {
  %5 = alloca %struct.stat, align 8
  %6 = select i1 %3, i32 512, i32 0
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  %11 = tail call i32 @unlinkat(i32 noundef %8, i8* noundef %10, i32 noundef %6) #40
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %2, i64 0, i32 8
  %15 = load i8, i8* %14, align 2, !tbaa !33, !range !42
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %13
  %18 = select i1 %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24.67, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25.68, i64 0, i64 0)
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %18, i32 noundef 5) #40
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %21) #40
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %19, i8* noundef %22) #40
  br label %78

24:                                               ; preds = %4
  %25 = tail call i32* @__errno_location() #43
  %26 = load i32, i32* %25, align 4, !tbaa !21
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %29) #40
  %30 = load i32, i32* %7, align 4, !tbaa !57
  %31 = load i8*, i8** %9, align 8, !tbaa !12
  %32 = call i32 @fstatat(i32 noundef %30, i8* noundef %31, %struct.stat* noundef nonnull %5, i32 noundef 256) #40
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %25, align 4, !tbaa !21
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %28
  store i32 30, i32* %25, align 4, !tbaa !21
  br label %38

38:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %29) #40
  %39 = load i32, i32* %25, align 4, !tbaa !21
  br label %40

40:                                               ; preds = %38, %24
  %41 = phi i32 [ %39, %38 ], [ %26, %24 ]
  %42 = getelementptr %struct.rm_options, %struct.rm_options* %2, i64 0, i32 0
  %43 = load i8, i8* %42, align 8, !tbaa !38
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  switch i32 %41, label %46 [
    i32 84, label %78
    i32 22, label %78
    i32 2, label %78
    i32 20, label %78
  ]

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 14
  %48 = load i16, i16* %47, align 8, !tbaa !24
  %49 = icmp eq i16 %48, 4
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  switch i32 %41, label %56 [
    i32 39, label %51
    i32 21, label %51
    i32 20, label %51
    i32 17, label %51
  ]

51:                                               ; preds = %50, %50, %50, %50
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  %53 = load i32, i32* %52, align 8, !tbaa !21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 %53, i32* %25, align 4, !tbaa !21
  br label %56

56:                                               ; preds = %50, %55, %51, %46
  %57 = phi i32 [ %41, %50 ], [ %53, %55 ], [ %41, %51 ], [ %41, %46 ]
  %58 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0), i32 noundef 5) #40
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %60 = load i8*, i8** %59, align 8, !tbaa !12
  %61 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %60) #40
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %57, i8* noundef %58, i8* noundef %61) #40
  %62 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %63 = load %struct._ftsent*, %struct._ftsent** %62, align 8, !tbaa !12
  %64 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %63, i64 0, i32 12
  %65 = load i64, i64* %64, align 8, !tbaa !43
  %66 = icmp sgt i64 %65, -1
  br i1 %66, label %67, label %78

67:                                               ; preds = %56, %72
  %68 = phi %struct._ftsent* [ %74, %72 ], [ %63, %56 ]
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i64 0, i32 4
  %70 = load i64, i64* %69, align 8, !tbaa !43
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  store i64 1, i64* %69, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i64 0, i32 1
  %74 = load %struct._ftsent*, %struct._ftsent** %73, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %74, i64 0, i32 12
  %76 = load i64, i64* %75, align 8, !tbaa !43
  %77 = icmp sgt i64 %76, -1
  br i1 %77, label %67, label %78, !llvm.loop !60

78:                                               ; preds = %72, %67, %56, %45, %45, %45, %45, %13, %17
  %79 = phi i32 [ 2, %17 ], [ 2, %13 ], [ 2, %45 ], [ 2, %45 ], [ 2, %45 ], [ 2, %45 ], [ 5, %56 ], [ 5, %67 ], [ 5, %72 ]
  ret i32 %79
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, i8* noundef, %struct.stat* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_dir_status(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* nocapture noundef readonly %1, i32* nocapture noundef %2) unnamed_addr #12 {
  %4 = load i32, i32* %2, align 4, !tbaa !21
  %5 = icmp eq i32 %4, -2
  br i1 %5, label %6, label %51

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 4, !tbaa !57
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  %11 = tail call i32 (i32, i8*, i32, ...) @openat(i32 noundef %8, i8* noundef %10, i32 noundef 51456) #40
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = tail call i32* @__errno_location() #43
  %15 = load i32, i32* %14, align 4, !tbaa !21
  br label %49

16:                                               ; preds = %6
  %17 = tail call %struct.__dirstream* @fdopendir(i32 noundef %11) #40
  %18 = icmp eq %struct.__dirstream* %17, null
  %19 = tail call i32* @__errno_location() #43
  br i1 %18, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %19, align 4, !tbaa !21
  %22 = tail call i32 @close(i32 noundef %11) #40
  br label %49

23:                                               ; preds = %16
  store i32 0, i32* %19, align 4, !tbaa !21
  %24 = tail call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %17) #40
  %25 = icmp eq %struct.dirent* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23, %38
  %27 = phi %struct.dirent* [ %39, %38 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i64 0, i32 4, i64 0
  %29 = load i8, i8* %28, align 1, !tbaa !23
  %30 = icmp eq i8 %29, 46
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i64 0, i32 4, i64 1
  %33 = load i8, i8* %32, align 1, !tbaa !23
  %34 = icmp eq i8 %33, 46
  %35 = select i1 %34, i64 2, i64 1
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i64 0, i32 4, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !23
  switch i8 %37, label %41 [
    i8 47, label %38
    i8 0, label %38
  ]

38:                                               ; preds = %31, %31
  %39 = tail call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %17) #40
  %40 = icmp eq %struct.dirent* %39, null
  br i1 %40, label %41, label %26

41:                                               ; preds = %38, %31, %26, %23
  %42 = phi %struct.dirent* [ null, %23 ], [ %27, %31 ], [ %27, %26 ], [ null, %38 ]
  %43 = icmp eq %struct.dirent* %42, null
  %44 = load i32, i32* %19, align 4, !tbaa !21
  %45 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %17) #40
  %46 = icmp eq i32 %44, 0
  %47 = select i1 %43, i1 %46, i1 false
  %48 = select i1 %47, i32 -1, i32 %44
  br label %49

49:                                               ; preds = %13, %20, %41
  %50 = phi i32 [ %15, %13 ], [ %21, %20 ], [ %48, %41 ]
  store i32 %50, i32* %2, align 4, !tbaa !21
  br label %51

51:                                               ; preds = %49, %3
  %52 = phi i32 [ %50, %49 ], [ %4, %3 ]
  ret i32 %52
}

declare i32 @openat(i32 noundef, i8* noundef, i32 noundef, ...) local_unnamed_addr #3

declare %struct.__dirstream* @fdopendir(i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #12 {
  tail call void @usage(i32 noundef 1) #40
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #41
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
  %15 = tail call i32 @strncmp(i8* noundef nonnull %11, i8* noundef %0, i64 noundef %5) #41
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* noundef nonnull %11) #41
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
  br i1 %31, label %59, label %10, !llvm.loop !61

32:                                               ; preds = %8, %52
  %33 = phi i8* [ %57, %52 ], [ %6, %8 ]
  %34 = phi i64 [ %55, %52 ], [ 0, %8 ]
  %35 = phi i1 [ %54, %52 ], [ false, %8 ]
  %36 = phi i64 [ %53, %52 ], [ -1, %8 ]
  %37 = tail call i32 @strncmp(i8* noundef nonnull %33, i8* noundef %0, i64 noundef %5) #41
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = tail call i64 @strlen(i8* noundef nonnull %33) #41
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
  %49 = tail call i32 @bcmp(i8* nonnull %46, i8* nonnull %48, i64 %3) #40
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
  br i1 %58, label %59, label %32, !llvm.loop !61

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
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1) local_unnamed_addr #14 {
  %3 = load i8*, i8** %1, align 8, !tbaa !12
  %4 = icmp eq i8* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %10
  %6 = phi i8* [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #41
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add i64 %7, 1
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %5, !llvm.loop !62

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.98, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.99, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8* noundef %5, i32 noundef 5) #40
  %7 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #40
  %8 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %6, i8* noundef %7, i8* noundef %8) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(i8** nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.101, i64 0, i64 0), i32 noundef 5) #40
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i32 @fputs_unlocked(i8* noundef %4, %struct._IO_FILE* noundef %5)
  %7 = load i8*, i8** %0, align 8, !tbaa !12
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %41, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 5
  %12 = load i8*, i8** %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 6
  %14 = load i8*, i8** %13, align 8, !tbaa !65
  %15 = icmp ult i8* %12, %14
  br i1 %15, label %18, label %16, !prof !66

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %10, i32 noundef 10) #40
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %19, i8** %11, align 8, !tbaa !63
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
  %29 = tail call i32 @bcmp(i8* %24, i8* %28, i64 %2) #40
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ]
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = tail call i8* @quote(i8* noundef nonnull %22) #40
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.102, i64 0, i64 0), i8* noundef %34) #40
  %36 = getelementptr inbounds i8, i8* %1, i64 %32
  br label %41

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %39 = tail call i8* @quote(i8* noundef nonnull %22) #40
  %40 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.103, i64 0, i64 0), i8* noundef %39) #40
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi i8* [ %36, %31 ], [ %24, %37 ]
  %43 = add i64 %23, 1
  %44 = getelementptr inbounds i8*, i8** %0, i64 %43
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = icmp eq i8* %45, null
  br i1 %46, label %9, label %21, !llvm.loop !67
}

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** nocapture noundef readonly %2, i8* noundef readonly %3, i64 noundef %4, void ()* nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #12 {
  br i1 %6, label %8, label %10

8:                                                ; preds = %7
  %9 = tail call i64 @argmatch(i8* noundef %1, i8** noundef %2, i8* noundef %3, i64 noundef %4) #41
  br label %23

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !tbaa !12
  %12 = icmp eq i8* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10, %18
  %14 = phi i8* [ %21, %18 ], [ %11, %10 ]
  %15 = phi i64 [ %19, %18 ], [ 0, %10 ]
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %1) #41
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = add i64 %15, 1
  %20 = getelementptr inbounds i8*, i8** %2, i64 %19
  %21 = load i8*, i8** %20, align 8, !tbaa !12
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %13, !llvm.loop !68

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
  %30 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.98, i64 0, i64 0), %28 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.99, i64 0, i64 0), %26 ]
  %31 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i8* noundef nonnull %30, i32 noundef 5) #40
  %32 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #40
  %33 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %31, i8* noundef %32, i8* noundef %33) #40
  tail call void @argmatch_valid(i8** noundef %2, i8* noundef %3, i64 noundef %4)
  tail call void %5() #40
  br label %34

34:                                               ; preds = %23, %29
  %35 = phi i64 [ -1, %29 ], [ %24, %23 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = load i8*, i8** %1, align 8, !tbaa !12
  %6 = icmp eq i8* %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3) #40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15, !llvm.loop !69

15:                                               ; preds = %10
  %16 = mul i64 %11, %3
  %17 = getelementptr inbounds i8, i8* %2, i64 %16
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3) #40
  %19 = icmp eq i32 %18, 0
  %20 = add i64 %11, 1
  br i1 %19, label %21, label %10, !llvm.loop !69

21:                                               ; preds = %15, %10, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %13, %15 ]
  ret i8* %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #16 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, i8* %3, align 1, !tbaa !23
  %5 = icmp eq i8 %4, 47
  %6 = getelementptr inbounds i8, i8* %3, i64 1
  br i1 %5, label %2, label %7, !llvm.loop !70

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ]
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ]
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ]
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ]

12:                                               ; preds = %7
  ret i8* %9

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ]
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  %18 = getelementptr inbounds i8, i8* %11, i64 1
  %19 = load i8, i8* %18, align 1, !tbaa !23
  br label %7, !llvm.loop !71
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #41
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ]
  %7 = icmp ugt i64 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = add i64 %6, -1
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !23
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %5, label %13, !llvm.loop !72

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdin_set_file_name(i8* noundef %0) local_unnamed_addr #17 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdin() #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %2 = tail call i64 @freadahead(%struct._IO_FILE* noundef %1) #41
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 1) #40
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %9 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef %8) #40
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %7, %4, %0
  %12 = phi i1 [ false, %4 ], [ false, %0 ], [ %10, %7 ]
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %14 = tail call i32 @close_stream(%struct._IO_FILE* noundef %13) #40
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %15, i1 true, i1 %12
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.111, i64 0, i64 0), i32 noundef 5) #40
  %19 = load i8*, i8** @file_name, align 8, !tbaa !12
  %20 = icmp eq i8* %19, null
  %21 = tail call i32* @__errno_location() #43
  %22 = load i32, i32* %21, align 4, !tbaa !21
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i8* @quotearg_colon(i8* noundef nonnull %19) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.112, i64 0, i64 0), i8* noundef %24, i8* noundef %18) #40
  br label %26

25:                                               ; preds = %17
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %22, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.113, i64 0, i64 0), i8* noundef %18) #40
  br label %26

26:                                               ; preds = %25, %23
  tail call void @close_stdout() #40
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #42
  unreachable

28:                                               ; preds = %11
  tail call void @close_stdout() #40
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 {
  store i8* %0, i8** @file_name.114, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #40
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !73, !range !42
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #43
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.118, i64 0, i64 0), i32 noundef 5) #40
  %13 = load i8*, i8** @file_name.114, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #43
  %16 = load i32, i32* %15, align 4, !tbaa !21
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.119, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #40
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.120, i64 0, i64 0), i8* noundef %12) #40
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %21) #42
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  tail call void @_exit(i32 noundef %27) #42
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #19 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #40
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #41
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i64 0, i64 0), i8* noundef %11) #40
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #40
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !74
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #40
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #40
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #40, !noalias !75
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #40
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #40, !noalias !75
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !21
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !21
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #40
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #40
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.123, i64 0, i64 0), i32 noundef 5) #40
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.124, i64 0, i64 0), i8* noundef %21) #40
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #40
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !65
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !66

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #40
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !63
  store i8 10, i8* %27, align 1, !tbaa !23
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #40
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #42
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #40
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #45
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #40
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #40
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #19 {
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
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #41
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
  tail call void %25() #40
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #41
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.127, i64 0, i64 0), i8* noundef %30) #40
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.128, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.129, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #40
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #40
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !74
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #40
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #40
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !74
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #45
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #40
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !79
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40
  br label %15

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @file_type(%struct.stat* noundef %0) local_unnamed_addr #14 {
  %2 = tail call i8* @c_file_type(%struct.stat* noundef %0) #41
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i64 0, i64 0), i8* noundef %2, i32 noundef 5) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) local_unnamed_addr #12 {
  %4 = tail call noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #21 {
  %4 = tail call i8* @last_component(i8* noundef %0) #41
  %5 = tail call i64 @base_len(i8* noundef %4) #41
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = add i64 %8, %5
  %10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #41
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = add i64 %9, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !23
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 47
  %20 = xor i1 %19, true
  %21 = select i1 %19, i8 0, i8 47
  br label %26

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !tbaa !23
  %24 = icmp eq i8 %23, 47
  %25 = select i1 %24, i8 46, i8 0
  br label %26

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ]
  %29 = zext i1 %27 to i64
  %30 = add i64 %10, 1
  %31 = add i64 %30, %9
  %32 = add i64 %31, %29
  %33 = tail call noalias i8* @malloc(i64 noundef %32) #40
  %34 = icmp eq i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %33, i8* noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #40
  %36 = getelementptr inbounds i8, i8* %33, i64 %9
  store i8 %28, i8* %36, align 1, !tbaa !23
  %37 = getelementptr inbounds i8, i8* %36, i64 %29
  %38 = icmp eq i8** %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !tbaa !12
  br label %40

40:                                               ; preds = %39, %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %37, i8* noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #40
  %41 = getelementptr inbounds i8, i8* %37, i64 %10
  store i8 0, i8* %41, align 1, !tbaa !23
  br label %42

42:                                               ; preds = %26, %40
  ret i8* %33
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @freadahead(%struct._IO_FILE* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %3 = load i8*, i8** %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %5 = load i8*, i8** %4, align 8, !tbaa !80
  %6 = icmp ugt i8* %3, %5
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8, !tbaa !82
  %12 = ptrtoint i8* %9 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8, !tbaa !79
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11
  %21 = load i8*, i8** %20, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %23 = load i8*, i8** %22, align 8, !tbaa !84
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  br label %27

27:                                               ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ]
  %29 = add nsw i64 %14, %28
  br label %30

30:                                               ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !82
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !80
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !84
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #40
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !79
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !85
  br label %30

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2)
  br label %30

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %struct.FTS* @rpl_fts_open(i8** nocapture noundef readonly %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) local_unnamed_addr #12 {
  %4 = icmp ult i32 %1, 8192
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32* @__errno_location() #43
  store i32 22, i32* %6, align 4, !tbaa !21
  br label %212

7:                                                ; preds = %3
  %8 = and i32 %1, 516
  %9 = icmp eq i32 %8, 516
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32* @__errno_location() #43
  store i32 22, i32* %11, align 4, !tbaa !21
  br label %212

12:                                               ; preds = %7
  %13 = and i32 %1, 18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32* @__errno_location() #43
  store i32 22, i32* %16, align 4, !tbaa !21
  br label %212

17:                                               ; preds = %12
  %18 = tail call noalias dereferenceable_or_null(128) i8* @calloc(i64 noundef 1, i64 noundef 128) #40
  %19 = bitcast i8* %18 to %struct.FTS*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %212, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 9
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %22, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 10
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, -517
  %27 = or i32 %26, 4
  %28 = select i1 %25, i32 %1, i32 %27
  store i32 %28, i32* %23, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 6
  store i32 -100, i32* %29, align 4, !tbaa !57
  %30 = load i8*, i8** %0, align 8, !tbaa !12
  %31 = icmp eq i8* %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %21, %32
  %33 = phi i8* [ %40, %32 ], [ %30, %21 ]
  %34 = phi i8** [ %39, %32 ], [ %0, %21 ]
  %35 = phi i64 [ %38, %32 ], [ 0, %21 ]
  %36 = tail call i64 @strlen(i8* noundef nonnull %33) #41
  %37 = icmp ugt i64 %36, %35
  %38 = select i1 %37, i64 %36, i64 %35
  %39 = getelementptr inbounds i8*, i8** %34, i64 1
  %40 = load i8*, i8** %39, align 8, !tbaa !12
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %32, !llvm.loop !88

42:                                               ; preds = %32
  %43 = add i64 %38, 1
  %44 = icmp ugt i64 %43, 4096
  %45 = select i1 %44, i64 %43, i64 4096
  %46 = add i64 %45, 256
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 7
  store i64 %46, i64* %47, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 4
  %49 = icmp eq i64 %46, 0
  %50 = select i1 %49, i64 1, i64 %46
  %51 = tail call i8* @malloc(i64 %50)
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %61

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 7
  store i64 4352, i64* %54, align 8, !tbaa !89
  %55 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 4
  %56 = tail call dereferenceable_or_null(4352) i8* @malloc(i64 4352)
  %57 = icmp eq i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i8* %56, i8** %55, align 8, !tbaa !90
  br label %79

59:                                               ; preds = %53, %42
  %60 = phi i8** [ %55, %53 ], [ %48, %42 ]
  store i8* null, i8** %60, align 8, !tbaa !90
  br label %211

61:                                               ; preds = %42
  store i8* %51, i8** %48, align 8, !tbaa !90
  br i1 %31, label %79, label %62

62:                                               ; preds = %61
  %63 = tail call noalias dereferenceable_or_null(248) i8* @malloc(i64 noundef 248) #40
  %64 = bitcast i8* %63 to %struct._ftsent*
  %65 = icmp eq i8* %63, null
  br i1 %65, label %209, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 18, i64 0
  store i8 0, i8* %67, align 1, !tbaa !23
  %68 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 11
  %69 = bitcast %struct.FTS** %68 to i8**
  store i8* %18, i8** %69, align 8, !tbaa !12
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 7
  store i8* %51, i8** %70, align 8, !tbaa !12
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 8
  store i32 0, i32* %71, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %72, align 8, !tbaa !12
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 15
  store i16 0, i16* %73, align 2, !tbaa !24
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 16
  store i16 3, i16* %74, align 4, !tbaa !24
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 4
  %76 = bitcast i64* %75 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false) #40
  %77 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 12
  %78 = bitcast i64* %77 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %78, align 8, !tbaa !43
  br label %79

79:                                               ; preds = %58, %66, %61
  %80 = phi i8** [ %48, %66 ], [ %48, %61 ], [ %55, %58 ]
  %81 = phi i8* [ %63, %66 ], [ null, %61 ], [ null, %58 ]
  %82 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  %83 = and i32 %28, 1024
  %84 = icmp ne i32 %83, 0
  %85 = or i1 %82, %84
  br i1 %31, label %166, label %86

86:                                               ; preds = %79
  %87 = and i32 %1, 2048
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %86, %153
  %90 = phi i8* [ %30, %86 ], [ %158, %153 ]
  %91 = phi i8** [ %0, %86 ], [ %156, %153 ]
  %92 = phi %struct._ftsent* [ null, %86 ], [ %155, %153 ]
  %93 = phi i64 [ 0, %86 ], [ %157, %153 ]
  %94 = phi %struct._ftsent* [ null, %86 ], [ %154, %153 ]
  %95 = tail call i64 @strlen(i8* noundef nonnull %90) #41
  %96 = icmp ugt i64 %95, 2
  %97 = select i1 %88, i1 %96, i1 false
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = add i64 %95, -1
  %100 = getelementptr inbounds i8, i8* %90, i64 %99
  %101 = load i8, i8* %100, align 1, !tbaa !23
  %102 = icmp eq i8 %101, 47
  br i1 %102, label %103, label %112

103:                                              ; preds = %98, %109
  %104 = phi i64 [ %110, %109 ], [ %95, %98 ]
  %105 = add i64 %104, -2
  %106 = getelementptr inbounds i8, i8* %90, i64 %105
  %107 = load i8, i8* %106, align 1, !tbaa !23
  %108 = icmp eq i8 %107, 47
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = add i64 %104, -1
  %111 = icmp ugt i64 %110, 1
  br i1 %111, label %103, label %112

112:                                              ; preds = %109, %103, %98, %89
  %113 = phi i64 [ %95, %89 ], [ %95, %98 ], [ %104, %103 ], [ 1, %109 ]
  %114 = add i64 %113, 248
  %115 = and i64 %114, -8
  %116 = tail call noalias i8* @malloc(i64 noundef %115) #40
  %117 = bitcast i8* %116 to %struct._ftsent*
  %118 = icmp eq i8* %116, null
  br i1 %118, label %190, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 18, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %120, i8* noundef nonnull align 1 %90, i64 noundef %113, i1 noundef false) #40
  %121 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 18, i64 %113
  store i8 0, i8* %121, align 1, !tbaa !23
  %122 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 13
  store i64 %113, i64* %122, align 8, !tbaa !43
  %123 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 11
  %124 = bitcast %struct.FTS** %123 to i8**
  store i8* %18, i8** %124, align 8, !tbaa !12
  %125 = load i8*, i8** %80, align 8, !tbaa !90
  %126 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 7
  store i8* %125, i8** %126, align 8, !tbaa !12
  %127 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 8
  store i32 0, i32* %127, align 8, !tbaa !21
  %128 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %128, align 8, !tbaa !12
  %129 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 15
  store i16 0, i16* %129, align 2, !tbaa !24
  %130 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 16
  store i16 3, i16* %130, align 4, !tbaa !24
  %131 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 4
  %132 = bitcast i64* %131 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %132, i8 0, i64 16, i1 false) #40
  %133 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 12
  store i64 0, i64* %133, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 1
  %135 = bitcast %struct._ftsent** %134 to i8**
  store i8* %81, i8** %135, align 8, !tbaa !12
  %136 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 6
  store i8* %120, i8** %136, align 8, !tbaa !12
  %137 = icmp ne %struct._ftsent* %94, null
  %138 = select i1 %85, i1 %137, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 17, i64 0, i32 8
  store i64 2, i64* %140, align 8, !tbaa !91
  br label %143

141:                                              ; preds = %119
  %142 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %19, %struct._ftsent* noundef nonnull %117, i1 noundef false)
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i16 [ 11, %139 ], [ %142, %141 ]
  %145 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 14
  store i16 %144, i16* %145, align 8
  %146 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 2
  br i1 %82, label %148, label %147

147:                                              ; preds = %143
  store %struct._ftsent* %94, %struct._ftsent** %146, align 8, !tbaa !12
  br label %153

148:                                              ; preds = %143
  store %struct._ftsent* null, %struct._ftsent** %146, align 8, !tbaa !12
  %149 = icmp eq %struct._ftsent* %94, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %92, i64 0, i32 2
  %152 = bitcast %struct._ftsent** %151 to i8**
  store i8* %116, i8** %152, align 8, !tbaa !12
  br label %153

153:                                              ; preds = %148, %150, %147
  %154 = phi %struct._ftsent* [ %117, %148 ], [ %94, %150 ], [ %117, %147 ]
  %155 = phi %struct._ftsent* [ %117, %148 ], [ %117, %150 ], [ %92, %147 ]
  %156 = getelementptr inbounds i8*, i8** %91, i64 1
  %157 = add i64 %93, 1
  %158 = load i8*, i8** %156, align 8, !tbaa !12
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %89, !llvm.loop !92

160:                                              ; preds = %153
  %161 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  %162 = icmp ugt i64 %157, 1
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = tail call fastcc %struct._ftsent* @fts_sort(%struct.FTS* noundef nonnull %19, %struct._ftsent* noundef nonnull %154, i64 noundef %157)
  br label %166

166:                                              ; preds = %79, %164, %160
  %167 = phi %struct._ftsent* [ %165, %164 ], [ %154, %160 ], [ null, %79 ]
  %168 = tail call fastcc %struct._ftsent* @fts_alloc(%struct.FTS* noundef nonnull %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.145, i64 0, i64 0), i64 noundef 0)
  %169 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 0
  store %struct._ftsent* %168, %struct._ftsent** %169, align 8, !tbaa !93
  %170 = icmp eq %struct._ftsent* %168, null
  br i1 %170, label %190, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %168, i64 0, i32 2
  store %struct._ftsent* %167, %struct._ftsent** %172, align 8, !tbaa !12
  %173 = load %struct._ftsent*, %struct._ftsent** %169, align 8, !tbaa !93
  %174 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %173, i64 0, i32 14
  store i16 9, i16* %174, align 8, !tbaa !24
  %175 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %173, i64 0, i32 12
  store i64 1, i64* %175, align 8, !tbaa !43
  %176 = tail call fastcc i1 @setup_dir(%struct.FTS* noundef nonnull %19)
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load i32, i32* %23, align 8, !tbaa !87
  %179 = and i32 %178, 516
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0))
  %183 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 5
  store i32 %182, i32* %183, align 8, !tbaa !94
  %184 = icmp slt i32 %182, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %23, align 8, !tbaa !87
  %187 = or i32 %186, 4
  store i32 %187, i32* %23, align 8, !tbaa !87
  br label %188

188:                                              ; preds = %185, %181, %177
  %189 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 13
  tail call void @i_ring_init(%struct.I_ring* noundef nonnull %189, i32 noundef -1) #40
  br label %212

190:                                              ; preds = %112, %171, %166
  %191 = phi %struct._ftsent* [ %167, %166 ], [ %167, %171 ], [ %94, %112 ]
  %192 = tail call i32* @__errno_location() #43
  %193 = load i32, i32* %192, align 4, !tbaa !21
  %194 = icmp eq %struct._ftsent* %191, null
  br i1 %194, label %207, label %195

195:                                              ; preds = %190, %204
  %196 = phi %struct._ftsent* [ %198, %204 ], [ %191, %190 ]
  %197 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %196, i64 0, i32 2
  %198 = load %struct._ftsent*, %struct._ftsent** %197, align 8, !tbaa !12
  %199 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %196, i64 0, i32 3
  %200 = load %struct.__dirstream*, %struct.__dirstream** %199, align 8, !tbaa !12
  %201 = icmp eq %struct.__dirstream* %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %195
  %203 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %200) #40
  br label %204

204:                                              ; preds = %202, %195
  %205 = bitcast %struct._ftsent* %196 to i8*
  tail call void @free(i8* noundef %205) #40
  %206 = icmp eq %struct._ftsent* %198, null
  br i1 %206, label %207, label %195, !llvm.loop !95

207:                                              ; preds = %204, %190
  store i32 %193, i32* %192, align 4, !tbaa !21
  tail call void @free(i8* noundef %81) #40
  %208 = load i8*, i8** %80, align 8, !tbaa !90
  br label %209

209:                                              ; preds = %62, %207
  %210 = phi i8* [ %51, %62 ], [ %208, %207 ]
  tail call void @free(i8* noundef %210) #40
  br label %211

211:                                              ; preds = %59, %209
  tail call void @free(i8* noundef nonnull %18) #40
  br label %212

212:                                              ; preds = %188, %211, %17, %15, %10, %5
  %213 = phi %struct.FTS* [ null, %5 ], [ null, %10 ], [ null, %15 ], [ null, %211 ], [ %19, %188 ], [ null, %17 ]
  ret %struct.FTS* %213
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define internal fastcc i16 @fts_stat(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* noundef %1, i1 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %5 = load i32, i32* %4, align 8, !tbaa !87
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %13 = load i64, i64* %12, align 8, !tbaa !43
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3, %11
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0
  br label %19

17:                                               ; preds = %11, %8
  %18 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0
  br i1 %2, label %19, label %21

19:                                               ; preds = %15, %17
  %20 = phi %struct.stat* [ %16, %15 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi %struct.stat* [ %20, %19 ], [ %18, %17 ]
  %23 = phi i1 [ true, %19 ], [ false, %17 ]
  %24 = phi i32 [ 0, %19 ], [ 256, %17 ]
  %25 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %26 = load i32, i32* %25, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %28 = load i8*, i8** %27, align 8, !tbaa !12
  %29 = tail call i32 @fstatat(i32 noundef %26, i8* noundef %28, %struct.stat* noundef nonnull %22, i32 noundef %24) #40
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = tail call i32* @__errno_location() #43
  br i1 %23, label %33, label %42

33:                                               ; preds = %31
  %34 = load i32, i32* %32, align 4, !tbaa !21
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %25, align 4, !tbaa !57
  %38 = load i8*, i8** %27, align 8, !tbaa !12
  %39 = tail call i32 @fstatat(i32 noundef %37, i8* noundef %38, %struct.stat* noundef nonnull %22, i32 noundef 256) #40
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %32, align 4, !tbaa !21
  br label %69

42:                                               ; preds = %31, %36, %33
  %43 = load i32, i32* %32, align 4, !tbaa !21
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  store i32 %43, i32* %44, align 8, !tbaa !21
  %45 = bitcast %struct.stat* %22 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %45, i8 noundef 0, i64 noundef 128, i1 noundef false) #40
  br label %69

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 2
  %48 = load i32, i32* %47, align 8, !tbaa !59
  %49 = trunc i32 %48 to i16
  %50 = and i16 %49, -4096
  switch i16 %50, label %68 [
    i16 16384, label %51
    i16 -24576, label %69
    i16 -32768, label %67
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %53 = load i8, i8* %52, align 8, !tbaa !23
  %54 = icmp eq i8 %53, 46
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 1
  %57 = load i8, i8* %56, align 1, !tbaa !23
  switch i8 %57, label %69 [
    i8 0, label %62
    i8 46, label %58
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 2
  %60 = load i8, i8* %59, align 2, !tbaa !23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55, %58
  %63 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %64 = load i64, i64* %63, align 8, !tbaa !43
  %65 = icmp eq i64 %64, 0
  %66 = select i1 %65, i16 1, i16 5
  br label %69

67:                                               ; preds = %46
  br label %69

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %46, %51, %58, %55, %68, %67, %62, %42, %41
  %70 = phi i16 [ 13, %41 ], [ 10, %42 ], [ %66, %62 ], [ 8, %67 ], [ 3, %68 ], [ 1, %55 ], [ 1, %58 ], [ 1, %51 ], [ 12, %46 ]
  ret i16 %70
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._ftsent* @fts_sort(%struct.FTS* nocapture noundef %0, %struct._ftsent* noundef %1, i64 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %5 = bitcast i32 (%struct._ftsent**, %struct._ftsent**)** %4 to i32 (i8*, i8*)**
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 8
  %8 = load i64, i64* %7, align 8, !tbaa !96
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %12 = load %struct._ftsent**, %struct._ftsent*** %11, align 8, !tbaa !97
  %13 = bitcast %struct._ftsent** %12 to i8*
  br label %25

14:                                               ; preds = %3
  %15 = add i64 %2, 40
  store i64 %15, i64* %7, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %17 = bitcast %struct._ftsent*** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !97
  %19 = tail call i8* @rpl_reallocarray(i8* noundef %18, i64 noundef %15, i64 noundef 8) #40
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** %17, align 8, !tbaa !97
  tail call void @free(i8* noundef %22) #40
  store %struct._ftsent** null, %struct._ftsent*** %16, align 8, !tbaa !97
  store i64 0, i64* %7, align 8, !tbaa !96
  br label %66

23:                                               ; preds = %14
  store i8* %19, i8** %17, align 8, !tbaa !97
  %24 = bitcast i8* %19 to %struct._ftsent**
  br label %25

25:                                               ; preds = %10, %23
  %26 = phi i8* [ %13, %10 ], [ %19, %23 ]
  %27 = phi %struct._ftsent** [ %12, %10 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %29 = icmp eq %struct._ftsent* %1, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25, %30
  %31 = phi %struct._ftsent* [ %35, %30 ], [ %1, %25 ]
  %32 = phi %struct._ftsent** [ %33, %30 ], [ %27, %25 ]
  %33 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %32, i64 1
  store %struct._ftsent* %31, %struct._ftsent** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %31, i64 0, i32 2
  %35 = load %struct._ftsent*, %struct._ftsent** %34, align 8, !tbaa !12
  %36 = icmp eq %struct._ftsent* %35, null
  br i1 %36, label %37, label %30, !llvm.loop !98

37:                                               ; preds = %30
  %38 = bitcast %struct._ftsent*** %28 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !97
  br label %40

40:                                               ; preds = %25, %37
  %41 = phi i8* [ %39, %37 ], [ %26, %25 ]
  tail call void @qsort(i8* noundef %41, i64 noundef %2, i64 noundef 8, i32 (i8*, i8*)* noundef %6) #40
  %42 = load %struct._ftsent**, %struct._ftsent*** %28, align 8, !tbaa !97
  %43 = load %struct._ftsent*, %struct._ftsent** %42, align 8, !tbaa !12
  %44 = icmp eq i64 %2, 1
  br i1 %44, label %63, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %42, i64 1
  %47 = load %struct._ftsent*, %struct._ftsent** %46, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %43, i64 0, i32 2
  store %struct._ftsent* %47, %struct._ftsent** %48, align 8, !tbaa !12
  %49 = add i64 %2, -2
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %60, label %51, !llvm.loop !99

51:                                               ; preds = %45, %51
  %52 = phi i64 [ %58, %51 ], [ %49, %45 ]
  %53 = phi %struct._ftsent** [ %55, %51 ], [ %46, %45 ]
  %54 = load %struct._ftsent*, %struct._ftsent** %53, align 8, !tbaa !12
  %55 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %53, i64 1
  %56 = load %struct._ftsent*, %struct._ftsent** %55, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %54, i64 0, i32 2
  store %struct._ftsent* %56, %struct._ftsent** %57, align 8, !tbaa !12
  %58 = add i64 %52, -1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %51, !llvm.loop !99

60:                                               ; preds = %51, %45
  %61 = phi %struct._ftsent** [ %46, %45 ], [ %55, %51 ]
  %62 = load %struct._ftsent*, %struct._ftsent** %61, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %60, %40
  %64 = phi %struct._ftsent* [ %43, %40 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %65, align 8, !tbaa !12
  br label %66

66:                                               ; preds = %21, %63
  %67 = phi %struct._ftsent* [ %43, %63 ], [ %1, %21 ]
  ret %struct._ftsent* %67
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc %struct._ftsent* @fts_alloc(%struct.FTS* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #21 {
  %4 = add i64 %2, 248
  %5 = and i64 %4, -8
  %6 = tail call noalias i8* @malloc(i64 noundef %5) #40
  %7 = bitcast i8* %6 to %struct._ftsent*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 18, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %10, i8* noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #40
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 18, i64 %2
  store i8 0, i8* %11, align 1, !tbaa !23
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 13
  store i64 %2, i64* %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 11
  store %struct.FTS* %0, %struct.FTS** %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %15 = load i8*, i8** %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 7
  store i8* %15, i8** %16, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 8
  store i32 0, i32* %17, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 15
  store i16 0, i16* %19, align 2, !tbaa !24
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 16
  store i16 3, i16* %20, align 4, !tbaa !24
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 4
  %22 = bitcast i64* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %3, %9
  %24 = phi %struct._ftsent* [ %7, %9 ], [ null, %3 ]
  ret %struct._ftsent* %24
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @setup_dir(%struct.FTS* nocapture noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !87
  %4 = and i32 %3, 258
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 31, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @AD_hash, i1 (i8*, i8*)* noundef nonnull @AD_compare, void (i8*)* noundef nonnull @free) #40
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %7, %struct.hash_table** %8, align 8, !tbaa !23
  %9 = icmp eq %struct.hash_table* %7, null
  br i1 %9, label %18, label %17

10:                                               ; preds = %1
  %11 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #40
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %13 = bitcast %union.anon* %12 to i8**
  store i8* %11, i8** %13, align 8, !tbaa !23
  %14 = icmp eq i8* %11, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = bitcast i8* %11 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* noundef nonnull %16) #40
  br label %17

17:                                               ; preds = %6, %15
  br label %18

18:                                               ; preds = %10, %6, %17
  %19 = phi i1 [ true, %17 ], [ false, %6 ], [ false, %10 ]
  ret i1 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @diropen(%struct.FTS* nocapture noundef readonly %0, i8* noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8, !tbaa !87
  %5 = shl i32 %4, 11
  %6 = and i32 %5, 32768
  %7 = or i32 %6, 542976
  %8 = and i32 %4, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 4, !tbaa !57
  %13 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %12, i8* noundef %1, i32 noundef %7) #40
  br label %16

14:                                               ; preds = %2
  %15 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %1, i32 noundef %7) #40
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @AD_hash(i8* nocapture noundef readonly %0, i64 noundef %1) #16 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !100
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i1 @AD_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #16 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !100
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !100
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = bitcast i8* %0 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !102
  %13 = bitcast i8* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !102
  %15 = icmp eq i64 %12, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: nofree
declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fts_close(%struct.FTS* noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8, !tbaa !93
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 12
  %7 = load i64, i64* %6, align 8, !tbaa !43
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %17
  %10 = phi %struct._ftsent* [ %18, %17 ], [ %3, %5 ]
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %10, i64 0, i32 2
  %12 = load %struct._ftsent*, %struct._ftsent** %11, align 8, !tbaa !12
  %13 = icmp eq %struct._ftsent* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %10, i64 0, i32 1
  %16 = load %struct._ftsent*, %struct._ftsent** %15, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %9, %14
  %18 = phi %struct._ftsent* [ %16, %14 ], [ %12, %9 ]
  %19 = bitcast %struct._ftsent* %10 to i8*
  tail call void @free(i8* noundef %19) #40
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %18, i64 0, i32 12
  %21 = load i64, i64* %20, align 8, !tbaa !43
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %9, label %23, !llvm.loop !103

23:                                               ; preds = %17, %5
  %24 = phi %struct._ftsent* [ %3, %5 ], [ %18, %17 ]
  %25 = bitcast %struct._ftsent* %24 to i8*
  tail call void @free(i8* noundef %25) #40
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %28 = load %struct._ftsent*, %struct._ftsent** %27, align 8, !tbaa !104
  %29 = icmp eq %struct._ftsent* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = tail call i32* @__errno_location() #43
  %32 = load i32, i32* %31, align 4, !tbaa !21
  br label %33

33:                                               ; preds = %30, %42
  %34 = phi %struct._ftsent* [ %36, %42 ], [ %28, %30 ]
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %34, i64 0, i32 2
  %36 = load %struct._ftsent*, %struct._ftsent** %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %34, i64 0, i32 3
  %38 = load %struct.__dirstream*, %struct.__dirstream** %37, align 8, !tbaa !12
  %39 = icmp eq %struct.__dirstream* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %38) #40
  br label %42

42:                                               ; preds = %40, %33
  %43 = bitcast %struct._ftsent* %34 to i8*
  tail call void @free(i8* noundef %43) #40
  %44 = icmp eq %struct._ftsent* %36, null
  br i1 %44, label %45, label %33, !llvm.loop !105

45:                                               ; preds = %42
  store i32 %32, i32* %31, align 4, !tbaa !21
  br label %46

46:                                               ; preds = %45, %26
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %48 = bitcast %struct._ftsent*** %47 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !97
  tail call void @free(i8* noundef %49) #40
  %50 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %51 = load i8*, i8** %50, align 8, !tbaa !90
  tail call void @free(i8* noundef %51) #40
  %52 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %53 = load i32, i32* %52, align 8, !tbaa !87
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %58 = load i32, i32* %57, align 4, !tbaa !57
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = tail call i32 @close(i32 noundef %58) #40
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %81

63:                                               ; preds = %46
  %64 = and i32 %53, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %68 = load i32, i32* %67, align 8, !tbaa !94
  %69 = tail call i32 @fchdir(i32 noundef %68) #40
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = tail call i32* @__errno_location() #43
  %73 = load i32, i32* %72, align 4, !tbaa !21
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi i32 [ %73, %71 ], [ 0, %66 ]
  %76 = load i32, i32* %67, align 8, !tbaa !94
  %77 = tail call i32 @close(i32 noundef %76) #40
  %78 = icmp ne i32 %77, 0
  %79 = icmp eq i32 %75, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %84

81:                                               ; preds = %74, %60
  %82 = tail call i32* @__errno_location() #43
  %83 = load i32, i32* %82, align 4, !tbaa !21
  br label %84

84:                                               ; preds = %81, %63, %74, %56, %60
  %85 = phi i32 [ 0, %60 ], [ 0, %56 ], [ 0, %63 ], [ %75, %74 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %87 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %86) #41
  br i1 %87, label %95, label %88

88:                                               ; preds = %84, %93
  %89 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %86) #40
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call i32 @close(i32 noundef %89) #40
  br label %93

93:                                               ; preds = %91, %88
  %94 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %86) #41
  br i1 %94, label %95, label %88, !llvm.loop !106

95:                                               ; preds = %93, %84
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 11
  %97 = load %struct.hash_table*, %struct.hash_table** %96, align 8, !tbaa !107
  %98 = icmp eq %struct.hash_table* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @hash_free(%struct.hash_table* noundef nonnull %97) #40
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %52, align 8, !tbaa !87
  %102 = and i32 %101, 258
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %106 = load %struct.hash_table*, %struct.hash_table** %105, align 8, !tbaa !23
  %107 = icmp eq %struct.hash_table* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  tail call void @hash_free(%struct.hash_table* noundef nonnull %106) #40
  br label %113

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %111 = bitcast %union.anon* %110 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !23
  tail call void @free(i8* noundef %112) #40
  br label %113

113:                                              ; preds = %104, %108, %109
  %114 = bitcast %struct.FTS* %0 to i8*
  tail call void @free(i8* noundef %114) #40
  %115 = icmp eq i32 %85, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = tail call i32* @__errno_location() #43
  store i32 %85, i32* %117, align 4, !tbaa !21
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i32 [ -1, %116 ], [ 0, %113 ]
  ret i32 %119
}

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8, !tbaa !93
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %443, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %7 = load i32, i32* %6, align 8, !tbaa !87
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %443

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 16
  %12 = load i16, i16* %11, align 4, !tbaa !24
  store i16 3, i16* %11, align 4, !tbaa !24
  switch i16 %12, label %40 [
    i16 1, label %13
    i16 2, label %16
  ]

13:                                               ; preds = %10
  %14 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %3, i1 noundef false)
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 14
  store i16 %14, i16* %15, align 8, !tbaa !24
  br label %443

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 14
  %18 = load i16, i16* %17, align 8, !tbaa !24
  %19 = and i16 %18, -2
  %20 = icmp eq i16 %19, 12
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %3, i1 noundef true)
  store i16 %22, i16* %17, align 8, !tbaa !24
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %277

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 8, !tbaa !87
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %277

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0))
  %30 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 9
  store i32 %29, i32* %30, align 4, !tbaa !21
  %31 = icmp slt i32 %29, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = tail call i32* @__errno_location() #43
  %34 = load i32, i32* %33, align 4, !tbaa !21
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  store i32 %34, i32* %35, align 8, !tbaa !21
  store i16 7, i16* %17, align 8, !tbaa !24
  br label %277

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 15
  %38 = load i16, i16* %37, align 2, !tbaa !24
  %39 = or i16 %38, 2
  store i16 %39, i16* %37, align 2, !tbaa !24
  br label %277

40:                                               ; preds = %10
  %41 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 14
  %42 = load i16, i16* %41, align 8, !tbaa !24
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %48, label %46

44:                                               ; preds = %16
  %45 = icmp eq i16 %18, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %40, %305, %44
  %47 = phi %struct._ftsent* [ %278, %305 ], [ %3, %40 ], [ %3, %44 ]
  br label %142

48:                                               ; preds = %40
  %49 = icmp eq i16 %12, 4
  br i1 %49, label %60, label %50

50:                                               ; preds = %44, %48
  %51 = phi i16* [ %41, %48 ], [ %17, %44 ]
  %52 = and i32 %7, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 17, i64 0, i32 0
  %56 = load i64, i64* %55, align 8, !tbaa !45
  %57 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %58 = load i64, i64* %57, align 8, !tbaa !52
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %91, label %60

60:                                               ; preds = %54, %48
  %61 = phi i16* [ %51, %54 ], [ %41, %48 ]
  %62 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 15
  %63 = load i16, i16* %62, align 2, !tbaa !24
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 9
  %68 = load i32, i32* %67, align 4, !tbaa !21
  %69 = tail call i32 @close(i32 noundef %68) #40
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %72 = load %struct._ftsent*, %struct._ftsent** %71, align 8, !tbaa !104
  %73 = icmp eq %struct._ftsent* %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = tail call i32* @__errno_location() #43
  %76 = load i32, i32* %75, align 4, !tbaa !21
  br label %77

77:                                               ; preds = %74, %86
  %78 = phi %struct._ftsent* [ %80, %86 ], [ %72, %74 ]
  %79 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %78, i64 0, i32 2
  %80 = load %struct._ftsent*, %struct._ftsent** %79, align 8, !tbaa !12
  %81 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %78, i64 0, i32 3
  %82 = load %struct.__dirstream*, %struct.__dirstream** %81, align 8, !tbaa !12
  %83 = icmp eq %struct.__dirstream* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %82) #40
  br label %86

86:                                               ; preds = %84, %77
  %87 = bitcast %struct._ftsent* %78 to i8*
  tail call void @free(i8* noundef %87) #40
  %88 = icmp eq %struct._ftsent* %80, null
  br i1 %88, label %89, label %77, !llvm.loop !108

89:                                               ; preds = %86
  store i32 %76, i32* %75, align 4, !tbaa !21
  store %struct._ftsent* null, %struct._ftsent** %71, align 8, !tbaa !104
  br label %90

90:                                               ; preds = %89, %70
  store i16 6, i16* %61, align 8, !tbaa !24
  tail call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %3)
  br label %443

91:                                               ; preds = %54, %50
  %92 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %93 = load %struct._ftsent*, %struct._ftsent** %92, align 8, !tbaa !104
  %94 = icmp eq %struct._ftsent* %93, null
  br i1 %94, label %124, label %95

95:                                               ; preds = %91
  %96 = and i32 %7, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = and i32 %7, -8193
  store i32 %99, i32* %6, align 8, !tbaa !87
  tail call fastcc void @fts_lfree(%struct._ftsent* noundef nonnull %93)
  store %struct._ftsent* null, %struct._ftsent** %92, align 8, !tbaa !104
  br label %124

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 6
  %102 = load i8*, i8** %101, align 8, !tbaa !12
  %103 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %3, i32 noundef -1, i8* noundef %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %100
  %106 = tail call i32* @__errno_location() #43
  %107 = load i32, i32* %106, align 4, !tbaa !21
  %108 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  store i32 %107, i32* %108, align 8, !tbaa !21
  %109 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 15
  %110 = load i16, i16* %109, align 2, !tbaa !24
  %111 = or i16 %110, 1
  store i16 %111, i16* %109, align 2, !tbaa !24
  %112 = load %struct._ftsent*, %struct._ftsent** %92, align 8, !tbaa !12
  %113 = icmp eq %struct._ftsent* %112, null
  br i1 %113, label %140, label %114

114:                                              ; preds = %105, %114
  %115 = phi %struct._ftsent* [ %122, %114 ], [ %112, %105 ]
  %116 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %115, i64 0, i32 1
  %117 = load %struct._ftsent*, %struct._ftsent** %116, align 8, !tbaa !12
  %118 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 6
  %119 = load i8*, i8** %118, align 8, !tbaa !12
  %120 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %115, i64 0, i32 6
  store i8* %119, i8** %120, align 8, !tbaa !12
  %121 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %115, i64 0, i32 2
  %122 = load %struct._ftsent*, %struct._ftsent** %121, align 8, !tbaa !12
  %123 = icmp eq %struct._ftsent* %122, null
  br i1 %123, label %140, label %114, !llvm.loop !109

124:                                              ; preds = %98, %91
  %125 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef 3)
  store %struct._ftsent* %125, %struct._ftsent** %92, align 8, !tbaa !104
  %126 = icmp eq %struct._ftsent* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 8, !tbaa !87
  %129 = and i32 %128, 16384
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %443

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  %133 = load i32, i32* %132, align 8, !tbaa !21
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i16, i16* %51, align 8, !tbaa !24
  %137 = icmp eq i16 %136, 4
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i16 7, i16* %51, align 8, !tbaa !24
  br label %139

139:                                              ; preds = %131, %135, %138
  tail call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %3)
  br label %443

140:                                              ; preds = %114, %105, %124, %100
  %141 = load %struct._ftsent*, %struct._ftsent** %92, align 8, !tbaa !104
  store %struct._ftsent* null, %struct._ftsent** %92, align 8, !tbaa !104
  br label %256

142:                                              ; preds = %46, %231
  %143 = phi %struct._ftsent* [ %145, %231 ], [ %47, %46 ]
  %144 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %143, i64 0, i32 2
  %145 = load %struct._ftsent*, %struct._ftsent** %144, align 8, !tbaa !12
  %146 = icmp eq %struct._ftsent* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %143, i64 0, i32 1
  %149 = load %struct._ftsent*, %struct._ftsent** %148, align 8, !tbaa !12
  %150 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %149, i64 0, i32 3
  %151 = load %struct.__dirstream*, %struct.__dirstream** %150, align 8, !tbaa !12
  %152 = icmp eq %struct.__dirstream* %151, null
  br i1 %152, label %355, label %153

153:                                              ; preds = %147
  store %struct._ftsent* %149, %struct._ftsent** %2, align 8, !tbaa !93
  %154 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %155 = load i8*, i8** %154, align 8, !tbaa !90
  %156 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %149, i64 0, i32 10
  %157 = load i64, i64* %156, align 8, !tbaa !43
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 0, i8* %158, align 1, !tbaa !23
  %159 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef 3)
  %160 = icmp eq %struct._ftsent* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 8, !tbaa !87
  %163 = and i32 %162, 16384
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %443

165:                                              ; preds = %161
  %166 = load %struct._ftsent*, %struct._ftsent** %148, align 8, !tbaa !12
  br label %355

167:                                              ; preds = %153
  %168 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %168) #40
  br label %256

169:                                              ; preds = %142
  store %struct._ftsent* %145, %struct._ftsent** %2, align 8, !tbaa !93
  %170 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %170) #40
  %171 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 12
  %172 = load i64, i64* %171, align 8, !tbaa !43
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %231

174:                                              ; preds = %169
  %175 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %176 = icmp eq i32 %175, 0
  %177 = load i32, i32* %6, align 8, !tbaa !87
  br i1 %176, label %180, label %178

178:                                              ; preds = %174
  %179 = or i32 %177, 16384
  store i32 %179, i32* %6, align 8, !tbaa !87
  br label %443

180:                                              ; preds = %174
  %181 = and i32 %177, 258
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %185 = load %struct.hash_table*, %struct.hash_table** %184, align 8, !tbaa !23
  %186 = icmp eq %struct.hash_table* %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  tail call void @hash_free(%struct.hash_table* noundef nonnull %185) #40
  br label %192

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %190 = bitcast %union.anon* %189 to i8**
  %191 = load i8*, i8** %190, align 8, !tbaa !23
  tail call void @free(i8* noundef %191) #40
  br label %192

192:                                              ; preds = %183, %187, %188
  %193 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 13
  %194 = load i64, i64* %193, align 8, !tbaa !43
  %195 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 10
  store i64 %194, i64* %195, align 8, !tbaa !43
  %196 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %197 = load i8*, i8** %196, align 8, !tbaa !90
  %198 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 18, i64 0
  %199 = add i64 %194, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %197, i8* noundef nonnull align 1 %198, i64 noundef %199, i1 noundef false) #40
  %200 = tail call i8* @strrchr(i8* noundef nonnull %198, i32 noundef 47) #41
  %201 = icmp eq i8* %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %192
  %203 = icmp eq i8* %200, %198
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 18, i64 1
  %206 = load i8, i8* %205, align 1, !tbaa !23
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204, %202
  %209 = getelementptr inbounds i8, i8* %200, i64 1
  %210 = tail call i64 @strlen(i8* noundef nonnull %209) #41
  %211 = add i64 %210, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %198, i8* noundef nonnull align 1 %209, i64 noundef %211, i1 noundef false) #40
  store i64 %210, i64* %193, align 8, !tbaa !43
  br label %212

212:                                              ; preds = %192, %204, %208
  %213 = load i8*, i8** %196, align 8, !tbaa !90
  %214 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 7
  store i8* %213, i8** %214, align 8, !tbaa !12
  %215 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 6
  store i8* %213, i8** %215, align 8, !tbaa !12
  %216 = load i32, i32* %6, align 8, !tbaa !87
  %217 = and i32 %216, 258
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %212
  %220 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 31, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @AD_hash, i1 (i8*, i8*)* noundef nonnull @AD_compare, void (i8*)* noundef nonnull @free) #40
  %221 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %220, %struct.hash_table** %221, align 8, !tbaa !23
  %222 = icmp eq %struct.hash_table* %220, null
  br i1 %222, label %230, label %277

223:                                              ; preds = %212
  %224 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #40
  %225 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %226 = bitcast %union.anon* %225 to i8**
  store i8* %224, i8** %226, align 8, !tbaa !23
  %227 = icmp eq i8* %224, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = bitcast i8* %224 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* noundef nonnull %229) #40
  br label %277

230:                                              ; preds = %219, %223
  tail call fastcc void @free_dir(%struct.FTS* noundef nonnull %0)
  br label %443

231:                                              ; preds = %169
  %232 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 16
  %233 = load i16, i16* %232, align 4, !tbaa !24
  switch i16 %233, label %256 [
    i16 4, label %142
    i16 2, label %234
  ]

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 16
  %236 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %145, i1 noundef true)
  %237 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 14
  store i16 %236, i16* %237, align 8, !tbaa !24
  %238 = icmp eq i16 %236, 1
  br i1 %238, label %239, label %255

239:                                              ; preds = %234
  %240 = load i32, i32* %6, align 8, !tbaa !87
  %241 = and i32 %240, 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  %244 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0))
  %245 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 9
  store i32 %244, i32* %245, align 4, !tbaa !21
  %246 = icmp slt i32 %244, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = tail call i32* @__errno_location() #43
  %249 = load i32, i32* %248, align 4, !tbaa !21
  %250 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 8
  store i32 %249, i32* %250, align 8, !tbaa !21
  store i16 7, i16* %237, align 8, !tbaa !24
  br label %255

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 15
  %253 = load i16, i16* %252, align 2, !tbaa !24
  %254 = or i16 %253, 2
  store i16 %254, i16* %252, align 2, !tbaa !24
  br label %255

255:                                              ; preds = %247, %251, %239, %234
  store i16 3, i16* %235, align 4, !tbaa !24
  br label %256

256:                                              ; preds = %231, %255, %167, %140
  %257 = phi %struct._ftsent* [ %159, %167 ], [ %145, %255 ], [ %141, %140 ], [ %145, %231 ]
  %258 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %259 = load i8*, i8** %258, align 8, !tbaa !90
  %260 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 1
  %261 = load %struct._ftsent*, %struct._ftsent** %260, align 8, !tbaa !12
  %262 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %261, i64 0, i32 7
  %263 = load i8*, i8** %262, align 8, !tbaa !12
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %261, i64 0, i32 10
  %265 = load i64, i64* %264, align 8, !tbaa !43
  %266 = add i64 %265, -1
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1, !tbaa !23
  %269 = icmp eq i8 %268, 47
  %270 = select i1 %269, i64 %266, i64 %265
  %271 = getelementptr inbounds i8, i8* %259, i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  store i8 47, i8* %271, align 1, !tbaa !23
  %273 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 18, i64 0
  %274 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 13
  %275 = load i64, i64* %274, align 8, !tbaa !43
  %276 = add i64 %275, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %272, i8* noundef nonnull align 1 %273, i64 noundef %276, i1 noundef false) #40
  br label %277

277:                                              ; preds = %228, %219, %21, %24, %36, %32, %256
  %278 = phi %struct._ftsent* [ %257, %256 ], [ %3, %32 ], [ %3, %36 ], [ %3, %24 ], [ %3, %21 ], [ %145, %219 ], [ %145, %228 ]
  store %struct._ftsent* %278, %struct._ftsent** %2, align 8, !tbaa !93
  %279 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 14
  %280 = load i16, i16* %279, align 8, !tbaa !24
  %281 = icmp eq i16 %280, 11
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 8
  %284 = load i64, i64* %283, align 8, !tbaa !91
  switch i64 %284, label %287 [
    i64 2, label %285
    i64 1, label %293
  ]

285:                                              ; preds = %282
  %286 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %278, i1 noundef false)
  store i16 %286, i16* %279, align 8, !tbaa !24
  br label %288

287:                                              ; preds = %282
  tail call void @abort() #42
  unreachable

288:                                              ; preds = %285, %277
  %289 = phi i16 [ %286, %285 ], [ %280, %277 ]
  %290 = load i32, i32* %6, align 8, !tbaa !87
  %291 = and i32 %290, 4096
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %311, label %297

293:                                              ; preds = %282
  %294 = load i32, i32* %6, align 8, !tbaa !87
  %295 = and i32 %294, 4096
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %443, label %299

297:                                              ; preds = %288
  %298 = icmp eq i16 %289, 10
  br i1 %298, label %443, label %299

299:                                              ; preds = %293, %297
  %300 = phi i16 [ %289, %297 ], [ 11, %293 ]
  %301 = phi i32 [ %290, %297 ], [ %294, %293 ]
  %302 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 12
  %303 = load i64, i64* %302, align 8, !tbaa !43
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %307 = load i64, i64* %306, align 8, !tbaa !45
  %308 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %309 = load i64, i64* %308, align 8, !tbaa !52
  %310 = icmp eq i64 %307, %309
  br i1 %310, label %311, label %46

311:                                              ; preds = %305, %299, %288
  %312 = phi i32 [ %301, %305 ], [ %301, %299 ], [ %290, %288 ]
  %313 = phi i16 [ %300, %305 ], [ %300, %299 ], [ %289, %288 ]
  %314 = icmp eq i16 %313, 1
  br i1 %314, label %315, label %443

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 12
  %317 = load i64, i64* %316, align 8, !tbaa !43
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %321 = load i64, i64* %320, align 8, !tbaa !45
  %322 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  store i64 %321, i64* %322, align 8, !tbaa !52
  br label %323

323:                                              ; preds = %319, %315
  %324 = and i32 %312, 258
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %346, label %326

326:                                              ; preds = %323
  %327 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #40
  %328 = icmp eq i8* %327, null
  br i1 %328, label %443, label %329

329:                                              ; preds = %326
  %330 = bitcast i8* %327 to %struct.Active_dir*
  %331 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %332 = bitcast i64* %331 to <2 x i64>*
  %333 = load <2 x i64>, <2 x i64>* %332, align 8, !tbaa !43
  %334 = bitcast i8* %327 to <2 x i64>*
  store <2 x i64> %333, <2 x i64>* %334, align 8, !tbaa !43
  %335 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %330, i64 0, i32 2
  store %struct._ftsent* %278, %struct._ftsent** %335, align 8, !tbaa !110
  %336 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %337 = load %struct.hash_table*, %struct.hash_table** %336, align 8, !tbaa !23
  %338 = tail call i8* @hash_insert(%struct.hash_table* noundef %337, i8* noundef nonnull %327) #40
  %339 = icmp eq i8* %338, %327
  br i1 %339, label %443, label %340

340:                                              ; preds = %329
  tail call void @free(i8* noundef nonnull %327) #40
  %341 = icmp eq i8* %338, null
  br i1 %341, label %443, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds i8, i8* %338, i64 16
  %344 = bitcast i8* %343 to %struct._ftsent**
  %345 = load %struct._ftsent*, %struct._ftsent** %344, align 8, !tbaa !110
  br label %352

346:                                              ; preds = %323
  %347 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %348 = bitcast %union.anon* %347 to %struct.cycle_check_state**
  %349 = load %struct.cycle_check_state*, %struct.cycle_check_state** %348, align 8, !tbaa !23
  %350 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0
  %351 = tail call i1 @cycle_check(%struct.cycle_check_state* noundef %349, %struct.stat* noundef nonnull %350) #40
  br i1 %351, label %352, label %443

352:                                              ; preds = %346, %342
  %353 = phi %struct._ftsent* [ %345, %342 ], [ %278, %346 ]
  %354 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 0
  store %struct._ftsent* %353, %struct._ftsent** %354, align 8, !tbaa !12
  store i16 2, i16* %279, align 8, !tbaa !24
  br label %443

355:                                              ; preds = %165, %147
  %356 = phi %struct._ftsent* [ %166, %165 ], [ %149, %147 ]
  store %struct._ftsent* %356, %struct._ftsent** %2, align 8, !tbaa !93
  %357 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %357) #40
  %358 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 12
  %359 = load i64, i64* %358, align 8, !tbaa !43
  %360 = icmp eq i64 %359, -1
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = bitcast %struct._ftsent* %356 to i8*
  tail call void @free(i8* noundef %362) #40
  %363 = tail call i32* @__errno_location() #43
  store i32 0, i32* %363, align 4, !tbaa !21
  store %struct._ftsent* null, %struct._ftsent** %2, align 8, !tbaa !93
  br label %443

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 14
  %366 = load i16, i16* %365, align 8, !tbaa !24
  %367 = icmp eq i16 %366, 11
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  tail call void @abort() #42
  unreachable

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %371 = load i8*, i8** %370, align 8, !tbaa !90
  %372 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 10
  %373 = load i64, i64* %372, align 8, !tbaa !43
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 0, i8* %374, align 1, !tbaa !23
  %375 = load i64, i64* %358, align 8, !tbaa !43
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %369
  %378 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %429, label %380

380:                                              ; preds = %377
  %381 = tail call i32* @__errno_location() #43
  %382 = load i32, i32* %381, align 4, !tbaa !21
  %383 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %382, i32* %383, align 8, !tbaa !21
  %384 = load i32, i32* %6, align 8, !tbaa !87
  %385 = or i32 %384, 16384
  store i32 %385, i32* %6, align 8, !tbaa !87
  br label %429

386:                                              ; preds = %369
  %387 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 15
  %388 = load i16, i16* %387, align 2, !tbaa !24
  %389 = zext i16 %388 to i32
  %390 = and i32 %389, 2
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %415, label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %6, align 8, !tbaa !87
  %394 = and i32 %393, 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %392
  %397 = and i32 %393, 512
  %398 = icmp eq i32 %397, 0
  %399 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 9
  %400 = load i32, i32* %399, align 4, !tbaa !21
  br i1 %398, label %402, label %401

401:                                              ; preds = %396
  tail call fastcc void @cwd_advance_fd(%struct.FTS* noundef nonnull %0, i32 noundef %400, i1 noundef true)
  br label %411

402:                                              ; preds = %396
  %403 = tail call i32 @fchdir(i32 noundef %400) #40
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %402
  %406 = tail call i32* @__errno_location() #43
  %407 = load i32, i32* %406, align 4, !tbaa !21
  %408 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %407, i32* %408, align 8, !tbaa !21
  %409 = load i32, i32* %6, align 8, !tbaa !87
  %410 = or i32 %409, 16384
  store i32 %410, i32* %6, align 8, !tbaa !87
  br label %411

411:                                              ; preds = %401, %405, %402, %392
  %412 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 9
  %413 = load i32, i32* %412, align 4, !tbaa !21
  %414 = tail call i32 @close(i32 noundef %413) #40
  br label %429

415:                                              ; preds = %386
  %416 = and i32 %389, 1
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %429

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 1
  %420 = load %struct._ftsent*, %struct._ftsent** %419, align 8, !tbaa !12
  %421 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %420, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.151, i64 0, i64 0))
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %429, label %423

423:                                              ; preds = %418
  %424 = tail call i32* @__errno_location() #43
  %425 = load i32, i32* %424, align 4, !tbaa !21
  %426 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %425, i32* %426, align 8, !tbaa !21
  %427 = load i32, i32* %6, align 8, !tbaa !87
  %428 = or i32 %427, 16384
  store i32 %428, i32* %6, align 8, !tbaa !87
  br label %429

429:                                              ; preds = %411, %423, %418, %415, %377, %380
  %430 = load i16, i16* %365, align 8, !tbaa !24
  %431 = icmp eq i16 %430, 2
  br i1 %431, label %438, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  %434 = load i32, i32* %433, align 8, !tbaa !21
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %435, i16 6, i16 7
  store i16 %436, i16* %365, align 8, !tbaa !24
  br i1 %435, label %437, label %438

437:                                              ; preds = %432
  tail call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %356)
  br label %438

438:                                              ; preds = %432, %437, %429
  %439 = load i32, i32* %6, align 8, !tbaa !87
  %440 = and i32 %439, 16384
  %441 = icmp eq i32 %440, 0
  %442 = select i1 %441, %struct._ftsent* %356, %struct._ftsent* null
  br label %443

443:                                              ; preds = %293, %352, %329, %346, %297, %311, %340, %326, %13, %90, %139, %178, %230, %361, %438, %127, %161, %1, %5
  %444 = phi %struct._ftsent* [ null, %5 ], [ null, %1 ], [ %3, %13 ], [ null, %361 ], [ %442, %438 ], [ null, %178 ], [ null, %230 ], [ %3, %90 ], [ %3, %139 ], [ null, %127 ], [ null, %161 ], [ null, %326 ], [ null, %340 ], [ %278, %311 ], [ %278, %297 ], [ %278, %346 ], [ %278, %329 ], [ %278, %352 ], [ %278, %293 ]
  ret %struct._ftsent* %444
}

; Function Attrs: nounwind uwtable
define internal fastcc void @leave_dir(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = alloca %struct.Active_dir, align 16
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8, !tbaa !87
  %7 = and i32 %6, 258
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = bitcast %struct.Active_dir* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #40
  %11 = bitcast %struct.stat* %4 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !43
  %13 = bitcast %struct.Active_dir* %3 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16, !tbaa !43
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %15 = load %struct.hash_table*, %struct.hash_table** %14, align 8, !tbaa !23
  %16 = call i8* @hash_remove(%struct.hash_table* noundef %15, i8* noundef nonnull %10) #40
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  call void @abort() #42
  unreachable

19:                                               ; preds = %9
  call void @free(i8* noundef nonnull %16) #40
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #40
  br label %55

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %22 = load %struct._ftsent*, %struct._ftsent** %21, align 8, !tbaa !12
  %23 = icmp eq %struct._ftsent* %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 12
  %26 = load i64, i64* %25, align 8, !tbaa !43
  %27 = icmp sgt i64 %26, -1
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %30 = bitcast %union.anon* %29 to %struct.cycle_check_state**
  %31 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !111
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @abort() #42
  unreachable

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 1
  %38 = load i64, i64* %37, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !114
  %43 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 1
  %44 = load i64, i64* %43, align 8, !tbaa !50
  %45 = icmp eq i64 %38, %40
  %46 = icmp eq i64 %42, %44
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 17, i64 0, i32 0
  %50 = load i64, i64* %49, align 8, !tbaa !45
  store i64 %50, i64* %37, align 8, !tbaa !113
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 17, i64 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !50
  %53 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8, !tbaa !23
  %54 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %53, i64 0, i32 0, i32 0
  store i64 %52, i64* %54, align 8, !tbaa !114
  br label %55

55:                                               ; preds = %20, %24, %48, %36, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts_lfree(%struct._ftsent* noundef %0) unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #43
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct._ftsent* %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %14
  %6 = phi %struct._ftsent* [ %8, %14 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 2
  %8 = load %struct._ftsent*, %struct._ftsent** %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 3
  %10 = load %struct.__dirstream*, %struct.__dirstream** %9, align 8, !tbaa !12
  %11 = icmp eq %struct.__dirstream* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %10)
  br label %14

14:                                               ; preds = %12, %5
  %15 = bitcast %struct._ftsent* %6 to i8*
  tail call void @free(i8* noundef %15) #40
  %16 = icmp eq %struct._ftsent* %8, null
  br i1 %16, label %17, label %5, !llvm.loop !115

17:                                               ; preds = %14, %1
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts_safe_changedir(%struct.FTS* noundef %0, %struct._ftsent* nocapture noundef readonly %1, i32 noundef %2, i8* noundef %3) unnamed_addr #12 {
  %5 = alloca %struct.stat, align 8
  %6 = icmp sgt i32 %2, -1
  %7 = icmp ne i8* %3, null
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @abort() #42
  unreachable

10:                                               ; preds = %4
  br i1 %7, label %11, label %14

11:                                               ; preds = %10
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.151, i64 0, i64 0)) #41
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i1 [ true, %10 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %17 = load i32, i32* %16, align 8, !tbaa !87
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = and i32 %17, 512
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %6, %22
  br i1 %23, label %24, label %134

24:                                               ; preds = %20
  %25 = tail call i32 @close(i32 noundef %2) #40
  br label %134

26:                                               ; preds = %14
  %27 = select i1 %6, i1 true, i1 %15
  br i1 %27, label %38, label %28

28:                                               ; preds = %26
  %29 = and i32 %17, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %33 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %32) #41
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %32) #40
  %36 = icmp sgt i32 %35, -1
  %37 = load i32, i32* %16, align 8, !tbaa !87
  br i1 %36, label %61, label %39

38:                                               ; preds = %26
  br i1 %6, label %55, label %39

39:                                               ; preds = %34, %28, %31, %38
  %40 = phi i32 [ %17, %28 ], [ %17, %31 ], [ %17, %38 ], [ %37, %34 ]
  %41 = shl i32 %40, 11
  %42 = and i32 %41, 32768
  %43 = or i32 %42, 542976
  %44 = and i32 %40, 512
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %48 = load i32, i32* %47, align 4, !tbaa !57
  %49 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %48, i8* noundef %3, i32 noundef %43) #40
  br label %52

50:                                               ; preds = %39
  %51 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %3, i32 noundef %43) #40
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %134, label %55

55:                                               ; preds = %52, %38
  %56 = phi i1 [ true, %52 ], [ false, %38 ]
  %57 = phi i32 [ %53, %52 ], [ %2, %38 ]
  %58 = load i32, i32* %16, align 8, !tbaa !87
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %69

61:                                               ; preds = %34
  %62 = and i32 %37, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %69

64:                                               ; preds = %55
  %65 = icmp eq i8* %3, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %64
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.151, i64 0, i64 0)) #41
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %61, %66, %55
  %70 = phi i32 [ %35, %61 ], [ %57, %66 ], [ %57, %55 ]
  %71 = phi i1 [ false, %61 ], [ %56, %66 ], [ %56, %55 ]
  %72 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %72) #40
  %73 = call i32 @fstat(i32 noundef %70, %struct.stat* noundef nonnull %5) #40
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !45
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !45
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 1
  %83 = load i64, i64* %82, align 8, !tbaa !50
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %85 = load i64, i64* %84, align 8, !tbaa !50
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %81, %75
  %88 = tail call i32* @__errno_location() #43
  store i32 2, i32* %88, align 4, !tbaa !21
  br label %127

89:                                               ; preds = %81
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %72) #40
  %90 = load i32, i32* %16, align 8, !tbaa !87
  br label %91

91:                                               ; preds = %89, %66, %64
  %92 = phi i32 [ %70, %89 ], [ %57, %66 ], [ %57, %64 ]
  %93 = phi i1 [ %71, %89 ], [ %56, %66 ], [ %56, %64 ]
  %94 = phi i32 [ %90, %89 ], [ %58, %66 ], [ %58, %64 ]
  %95 = and i32 %94, 512
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %125, label %102

97:                                               ; preds = %61
  %98 = and i32 %37, 512
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = tail call i32 @fchdir(i32 noundef %35) #40
  br label %134

102:                                              ; preds = %97, %91
  %103 = phi i32 [ %37, %97 ], [ %94, %91 ]
  %104 = phi i32 [ %35, %97 ], [ %92, %91 ]
  %105 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %106 = load i32, i32* %105, align 4, !tbaa !57
  %107 = icmp ne i32 %106, %104
  %108 = icmp eq i32 %106, -100
  %109 = or i1 %107, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  tail call void @abort() #42
  unreachable

111:                                              ; preds = %102
  br i1 %15, label %112, label %116

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %114 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %113, i32 noundef %106) #40
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %121, label %124

116:                                              ; preds = %111
  %117 = and i32 %103, 4
  %118 = icmp eq i32 %117, 0
  %119 = icmp sgt i32 %106, -1
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %124

121:                                              ; preds = %116, %112
  %122 = phi i32 [ %114, %112 ], [ %106, %116 ]
  %123 = tail call i32 @close(i32 noundef %122) #40
  br label %124

124:                                              ; preds = %112, %116, %121
  store i32 %104, i32* %105, align 4, !tbaa !57
  br label %134

125:                                              ; preds = %91
  %126 = tail call i32 @fchdir(i32 noundef %92) #40
  br i1 %93, label %128, label %134

127:                                              ; preds = %69, %87
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %72) #40
  br i1 %71, label %128, label %134

128:                                              ; preds = %125, %127
  %129 = phi i32 [ %126, %125 ], [ -1, %127 ]
  %130 = phi i32 [ %92, %125 ], [ %70, %127 ]
  %131 = tail call i32* @__errno_location() #43
  %132 = load i32, i32* %131, align 4, !tbaa !21
  %133 = tail call i32 @close(i32 noundef %130) #40
  store i32 %132, i32* %131, align 4, !tbaa !21
  br label %134

134:                                              ; preds = %100, %125, %52, %127, %128, %124, %20, %24
  %135 = phi i32 [ 0, %24 ], [ 0, %20 ], [ -1, %52 ], [ 0, %124 ], [ %129, %128 ], [ -1, %127 ], [ %126, %125 ], [ %101, %100 ]
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 3
  %7 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %8 = icmp ne %struct.__dirstream* %7, null
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #40
  br i1 %8, label %10, label %22

10:                                               ; preds = %2
  %11 = tail call i32 @dirfd(%struct.__dirstream* noundef nonnull %7) #40
  store i32 %11, i32* %3, align 4, !tbaa !21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #43
  %15 = load i32, i32* %14, align 4, !tbaa !21
  %16 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %17 = tail call i32 @closedir(%struct.__dirstream* noundef %16)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %18 = icmp eq i32 %1, 3
  br i1 %18, label %19, label %592

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 4, i16* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %15, i32* %21, align 8, !tbaa !21
  br label %592

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %24 = load i32, i32* %23, align 8, !tbaa !87
  %25 = and i32 %24, 516
  %26 = icmp eq i32 %25, 512
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %29 = load i32, i32* %28, align 4, !tbaa !57
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ %29, %27 ], [ -100, %22 ]
  %32 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 6
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = and i32 %24, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = and i32 %24, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %41 = load i64, i64* %40, align 8, !tbaa !43
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %39
  br label %44

44:                                               ; preds = %30, %39, %43
  %45 = phi i32 [ 32768, %43 ], [ 0, %39 ], [ 0, %30 ]
  %46 = call noalias %struct.__dirstream* @opendirat(i32 noundef %31, i8* noundef %33, i32 noundef %45, i32* noundef nonnull %3) #40
  store %struct.__dirstream* %46, %struct.__dirstream** %6, align 8, !tbaa !12
  %47 = icmp eq %struct.__dirstream* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = icmp eq i32 %1, 3
  br i1 %49, label %50, label %592

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 4, i16* %51, align 8, !tbaa !24
  %52 = tail call i32* @__errno_location() #43
  %53 = load i32, i32* %52, align 4, !tbaa !21
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %53, i32* %54, align 8, !tbaa !21
  br label %592

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  %57 = load i16, i16* %56, align 8, !tbaa !24
  %58 = icmp eq i16 %57, 11
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %23, align 8, !tbaa !87
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %126, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4, !tbaa !21
  %65 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0
  %66 = call i32 @fstat(i32 noundef %64, %struct.stat* noundef nonnull %65) #40
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %73

68:                                               ; preds = %59
  call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %5)
  %69 = load i32, i32* %3, align 4, !tbaa !21
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0
  %71 = call i32 @fstat(i32 noundef %69, %struct.stat* noundef nonnull %70) #40
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68, %63
  %74 = tail call i32* @__errno_location() #43
  %75 = load i32, i32* %74, align 4, !tbaa !21
  %76 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %77 = call i32 @closedir(%struct.__dirstream* noundef %76)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %78 = icmp eq i32 %1, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %75, i32* %80, align 8, !tbaa !21
  store i16 10, i16* %56, align 8, !tbaa !24
  br label %81

81:                                               ; preds = %79, %73
  store i32 %75, i32* %74, align 4, !tbaa !21
  br label %592

82:                                               ; preds = %68
  %83 = load i32, i32* %23, align 8, !tbaa !87
  %84 = and i32 %83, 258
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #40
  %88 = icmp eq i8* %87, null
  br i1 %88, label %114, label %89

89:                                               ; preds = %86
  %90 = bitcast i8* %87 to %struct.Active_dir*
  %91 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0, i32 0
  %92 = bitcast i64* %91 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !43
  %94 = bitcast i8* %87 to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %94, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %90, i64 0, i32 2
  store %struct._ftsent* %5, %struct._ftsent** %95, align 8, !tbaa !110
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %97 = load %struct.hash_table*, %struct.hash_table** %96, align 8, !tbaa !23
  %98 = call i8* @hash_insert(%struct.hash_table* noundef %97, i8* noundef nonnull %87) #40
  %99 = icmp eq i8* %98, %87
  br i1 %99, label %126, label %100

100:                                              ; preds = %89
  call void @free(i8* noundef nonnull %87) #40
  %101 = icmp eq i8* %98, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds i8, i8* %98, i64 16
  %104 = bitcast i8* %103 to %struct._ftsent**
  %105 = load %struct._ftsent*, %struct._ftsent** %104, align 8, !tbaa !110
  br label %111

106:                                              ; preds = %82
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %108 = bitcast %union.anon* %107 to %struct.cycle_check_state**
  %109 = load %struct.cycle_check_state*, %struct.cycle_check_state** %108, align 8, !tbaa !23
  %110 = call i1 @cycle_check(%struct.cycle_check_state* noundef %109, %struct.stat* noundef nonnull %70) #40
  br i1 %110, label %111, label %126

111:                                              ; preds = %106, %102
  %112 = phi %struct._ftsent* [ %105, %102 ], [ %5, %106 ]
  %113 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 0
  store %struct._ftsent* %112, %struct._ftsent** %113, align 8, !tbaa !12
  br label %124

114:                                              ; preds = %100, %86
  %115 = tail call i32* @__errno_location() #43
  %116 = load i32, i32* %115, align 4, !tbaa !21
  %117 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %118 = call i32 @closedir(%struct.__dirstream* noundef %117)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  store i32 %116, i32* %115, align 4, !tbaa !21
  br label %592

119:                                              ; preds = %10
  %120 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %121 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %120, align 8, !tbaa !86
  %122 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %121, null
  %123 = select i1 %122, i64 100000, i64 -1
  br label %183

124:                                              ; preds = %63, %111
  %125 = phi i16 [ 2, %111 ], [ 1, %63 ]
  store i16 %125, i16* %56, align 8, !tbaa !24
  br label %126

126:                                              ; preds = %124, %89, %106, %59
  %127 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %128 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %127, align 8, !tbaa !86
  %129 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %128, null
  %130 = select i1 %129, i64 100000, i64 -1
  %131 = icmp eq i32 %1, 2
  br i1 %131, label %145, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %23, align 8, !tbaa !87
  %134 = and i32 %133, 56
  %135 = icmp eq i32 %134, 24
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0, i32 3
  %138 = load i32, i32* %137, align 4, !tbaa !116
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4, !tbaa !21
  %142 = call fastcc i64 @filesystem_type(%struct._ftsent* noundef nonnull %5, i32 noundef %141) #40
  switch i64 %142, label %145 [
    i64 0, label %143
    i64 1397113167, label %143
    i64 4283649346, label %143
    i64 26985, label %143
    i64 40864, label %143
  ]

143:                                              ; preds = %136, %132, %140, %140, %140, %140, %140
  %144 = icmp eq i32 %1, 3
  br label %147

145:                                              ; preds = %140, %126
  %146 = icmp eq i32 %1, 3
  br i1 %146, label %147, label %183

147:                                              ; preds = %143, %145
  %148 = phi i1 [ %144, %143 ], [ %146, %145 ]
  %149 = phi i1 [ true, %143 ], [ false, %145 ]
  %150 = load i32, i32* %23, align 8, !tbaa !87
  %151 = and i32 %150, 512
  %152 = icmp eq i32 %151, 0
  %153 = load i32, i32* %3, align 4, !tbaa !21
  br i1 %152, label %156, label %154

154:                                              ; preds = %147
  %155 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %153, i32 noundef 1030, i32 noundef 3) #40
  store i32 %155, i32* %3, align 4, !tbaa !21
  br label %156

156:                                              ; preds = %147, %154
  %157 = phi i32 [ %155, %154 ], [ %153, %147 ]
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %5, i32 noundef %157, i8* noundef null)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %183, label %162

162:                                              ; preds = %159, %156
  %163 = and i1 %148, %149
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  %165 = tail call i32* @__errno_location() #43
  %166 = load i32, i32* %165, align 4, !tbaa !21
  %167 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %166, i32* %167, align 8, !tbaa !21
  br label %168

168:                                              ; preds = %164, %162
  %169 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %170 = load i16, i16* %169, align 2, !tbaa !24
  %171 = or i16 %170, 1
  store i16 %171, i16* %169, align 2, !tbaa !24
  %172 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %173 = call i32 @closedir(%struct.__dirstream* noundef %172)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %174 = load i32, i32* %23, align 8, !tbaa !87
  %175 = and i32 %174, 512
  %176 = icmp ne i32 %175, 0
  %177 = load i32, i32* %3, align 4
  %178 = icmp sgt i32 %177, -1
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = call i32 @close(i32 noundef %177) #40
  br label %182

182:                                              ; preds = %180, %168
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  br label %183

183:                                              ; preds = %119, %159, %145, %182
  %184 = phi i64 [ %130, %182 ], [ %130, %145 ], [ %123, %119 ], [ %130, %159 ]
  %185 = phi i32 (%struct._ftsent**, %struct._ftsent**)** [ %127, %182 ], [ %127, %145 ], [ %120, %119 ], [ %127, %159 ]
  %186 = phi i1 [ true, %182 ], [ true, %145 ], [ false, %119 ], [ false, %159 ]
  %187 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 7
  %188 = load i8*, i8** %187, align 8, !tbaa !12
  %189 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 10
  %190 = load i64, i64* %189, align 8, !tbaa !43
  %191 = add i64 %190, -1
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1, !tbaa !23
  %194 = icmp eq i8 %193, 47
  %195 = select i1 %194, i64 %191, i64 %190
  %196 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %197 = load i32, i32* %196, align 8, !tbaa !87
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %183
  %201 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %202 = load i8*, i8** %201, align 8, !tbaa !90
  %203 = getelementptr inbounds i8, i8* %202, i64 %195
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 47, i8* %203, align 1, !tbaa !23
  br label %205

205:                                              ; preds = %183, %200
  %206 = phi i8* [ %204, %200 ], [ null, %183 ]
  %207 = add i64 %195, 1
  %208 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 7
  %209 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %210 = load i64, i64* %209, align 8, !tbaa !43
  %211 = add nsw i64 %210, 1
  %212 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %213 = icmp eq %struct.__dirstream* %212, null
  br i1 %213, label %505, label %214

214:                                              ; preds = %205
  %215 = load i64, i64* %208, align 8, !tbaa !89
  %216 = sub i64 %215, %207
  %217 = tail call i32* @__errno_location() #43
  %218 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  br label %219

219:                                              ; preds = %214, %436
  %220 = phi %struct.__dirstream* [ %212, %214 ], [ %444, %436 ]
  %221 = phi i8* [ %206, %214 ], [ %443, %436 ]
  %222 = phi i64 [ %216, %214 ], [ %442, %436 ]
  %223 = phi i1 [ false, %214 ], [ %441, %436 ]
  %224 = phi i1 [ false, %214 ], [ %440, %436 ]
  %225 = phi i64 [ 0, %214 ], [ %439, %436 ]
  %226 = phi %struct._ftsent* [ null, %214 ], [ %438, %436 ]
  %227 = phi %struct._ftsent* [ null, %214 ], [ %437, %436 ]
  store i32 0, i32* %217, align 4, !tbaa !21
  %228 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %220) #40
  %229 = icmp eq %struct.dirent* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %219
  %231 = load i32, i32* %217, align 4, !tbaa !21
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %231, i32* %234, align 8, !tbaa !21
  %235 = icmp ne i64 %225, 0
  %236 = select i1 %8, i1 true, i1 %235
  %237 = select i1 %236, i16 7, i16 4
  %238 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 %237, i16* %238, align 8, !tbaa !24
  br label %239

239:                                              ; preds = %230, %233
  %240 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %241 = call i32 @closedir(%struct.__dirstream* noundef %240)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  br i1 %223, label %447, label %505

242:                                              ; preds = %219
  %243 = load i32, i32* %196, align 8, !tbaa !87
  %244 = and i32 %243, 32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 0
  %248 = load i8, i8* %247, align 1, !tbaa !23
  %249 = icmp eq i8 %248, 46
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 1
  %252 = load i8, i8* %251, align 1, !tbaa !23
  switch i8 %252, label %257 [
    i8 0, label %436
    i8 46, label %253
  ], !llvm.loop !117

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 2
  %255 = load i8, i8* %254, align 1, !tbaa !23
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %436, label %257, !llvm.loop !117

257:                                              ; preds = %250, %253, %246, %242
  %258 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 0
  %259 = call i64 @strlen(i8* noundef nonnull %258) #41
  %260 = add i64 %259, 248
  %261 = and i64 %260, -8
  %262 = call noalias i8* @malloc(i64 noundef %261) #40
  %263 = bitcast i8* %262 to %struct._ftsent*
  %264 = icmp eq i8* %262, null
  br i1 %264, label %293, label %265

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 18, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %266, i8* noundef nonnull align 1 %258, i64 noundef %259, i1 noundef false) #40
  %267 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 18, i64 %259
  store i8 0, i8* %267, align 1, !tbaa !23
  %268 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 13
  store i64 %259, i64* %268, align 8, !tbaa !43
  %269 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 11
  store %struct.FTS* %0, %struct.FTS** %269, align 8, !tbaa !12
  %270 = load i8*, i8** %218, align 8, !tbaa !90
  %271 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 7
  store i8* %270, i8** %271, align 8, !tbaa !12
  %272 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 8
  store i32 0, i32* %272, align 8, !tbaa !21
  %273 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %273, align 8, !tbaa !12
  %274 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 15
  store i16 0, i16* %274, align 2, !tbaa !24
  %275 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 16
  store i16 3, i16* %275, align 4, !tbaa !24
  %276 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 4
  %277 = bitcast i64* %276 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %277, i8 0, i64 16, i1 false) #40
  %278 = icmp ult i64 %259, %222
  %279 = add i64 %259, %207
  br i1 %278, label %328, label %280

280:                                              ; preds = %265
  %281 = load i64, i64* %208, align 8, !tbaa !89
  %282 = add i64 %279, 257
  %283 = add i64 %282, %281
  %284 = icmp ult i64 %283, %281
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  call void @free(i8* noundef %270) #40
  store i8* null, i8** %218, align 8, !tbaa !90
  store i32 36, i32* %217, align 4, !tbaa !21
  br label %293

286:                                              ; preds = %280
  store i64 %283, i64* %208, align 8, !tbaa !89
  %287 = icmp eq i64 %283, 0
  %288 = select i1 %287, i64 1, i64 %283
  %289 = call i8* @realloc(i8* noundef %270, i64 noundef %288) #40
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %315

291:                                              ; preds = %286
  %292 = load i8*, i8** %218, align 8, !tbaa !90
  call void @free(i8* noundef %292) #40
  store i8* null, i8** %218, align 8, !tbaa !90
  br label %293

293:                                              ; preds = %257, %291, %285
  %294 = load i32, i32* %217, align 4, !tbaa !21
  call void @free(i8* noundef %262) #40
  %295 = load i32, i32* %217, align 4, !tbaa !21
  %296 = icmp eq %struct._ftsent* %227, null
  br i1 %296, label %309, label %297

297:                                              ; preds = %293, %306
  %298 = phi %struct._ftsent* [ %300, %306 ], [ %227, %293 ]
  %299 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %298, i64 0, i32 2
  %300 = load %struct._ftsent*, %struct._ftsent** %299, align 8, !tbaa !12
  %301 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %298, i64 0, i32 3
  %302 = load %struct.__dirstream*, %struct.__dirstream** %301, align 8, !tbaa !12
  %303 = icmp eq %struct.__dirstream* %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %297
  %305 = call i32 @closedir(%struct.__dirstream* noundef nonnull %302) #40
  br label %306

306:                                              ; preds = %304, %297
  %307 = bitcast %struct._ftsent* %298 to i8*
  call void @free(i8* noundef %307) #40
  %308 = icmp eq %struct._ftsent* %300, null
  br i1 %308, label %309, label %297, !llvm.loop !118

309:                                              ; preds = %306, %293
  store i32 %295, i32* %217, align 4, !tbaa !21
  %310 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %311 = call i32 @closedir(%struct.__dirstream* noundef %310)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %312 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %312, align 8, !tbaa !24
  %313 = load i32, i32* %196, align 8, !tbaa !87
  %314 = or i32 %313, 16384
  store i32 %314, i32* %196, align 8, !tbaa !87
  store i32 %294, i32* %217, align 4, !tbaa !21
  br label %592

315:                                              ; preds = %286
  store i8* %289, i8** %218, align 8, !tbaa !90
  %316 = icmp eq i8* %270, %289
  br i1 %316, label %323, label %317

317:                                              ; preds = %315
  %318 = load i32, i32* %196, align 8, !tbaa !87
  %319 = and i32 %318, 4
  %320 = icmp eq i32 %319, 0
  %321 = getelementptr inbounds i8, i8* %289, i64 %207
  %322 = select i1 %320, i8* %221, i8* %321
  br label %323

323:                                              ; preds = %317, %315
  %324 = phi i1 [ %223, %315 ], [ true, %317 ]
  %325 = phi i8* [ %221, %315 ], [ %322, %317 ]
  %326 = load i64, i64* %208, align 8, !tbaa !89
  %327 = sub i64 %326, %207
  br label %328

328:                                              ; preds = %265, %323
  %329 = phi i1 [ %324, %323 ], [ %223, %265 ]
  %330 = phi i64 [ %327, %323 ], [ %222, %265 ]
  %331 = phi i8* [ %325, %323 ], [ %221, %265 ]
  %332 = icmp ult i64 %279, %207
  br i1 %332, label %333, label %354

333:                                              ; preds = %328
  call void @free(i8* noundef nonnull %262) #40
  %334 = load i32, i32* %217, align 4, !tbaa !21
  %335 = icmp eq %struct._ftsent* %227, null
  br i1 %335, label %348, label %336

336:                                              ; preds = %333, %345
  %337 = phi %struct._ftsent* [ %339, %345 ], [ %227, %333 ]
  %338 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %337, i64 0, i32 2
  %339 = load %struct._ftsent*, %struct._ftsent** %338, align 8, !tbaa !12
  %340 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %337, i64 0, i32 3
  %341 = load %struct.__dirstream*, %struct.__dirstream** %340, align 8, !tbaa !12
  %342 = icmp eq %struct.__dirstream* %341, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %336
  %344 = call i32 @closedir(%struct.__dirstream* noundef nonnull %341) #40
  br label %345

345:                                              ; preds = %343, %336
  %346 = bitcast %struct._ftsent* %337 to i8*
  call void @free(i8* noundef %346) #40
  %347 = icmp eq %struct._ftsent* %339, null
  br i1 %347, label %348, label %336, !llvm.loop !119

348:                                              ; preds = %345, %333
  store i32 %334, i32* %217, align 4, !tbaa !21
  %349 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %350 = call i32 @closedir(%struct.__dirstream* noundef %349)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %351 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %351, align 8, !tbaa !24
  %352 = load i32, i32* %196, align 8, !tbaa !87
  %353 = or i32 %352, 16384
  store i32 %353, i32* %196, align 8, !tbaa !87
  store i32 36, i32* %217, align 4, !tbaa !21
  br label %592

354:                                              ; preds = %328
  %355 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 12
  store i64 %211, i64* %355, align 8, !tbaa !43
  %356 = load %struct._ftsent*, %struct._ftsent** %4, align 8, !tbaa !93
  %357 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 1
  store %struct._ftsent* %356, %struct._ftsent** %357, align 8, !tbaa !12
  %358 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 10
  store i64 %279, i64* %358, align 8, !tbaa !43
  %359 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 0
  %360 = load i64, i64* %359, align 8, !tbaa !120
  %361 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 17, i64 0, i32 1
  store i64 %360, i64* %361, align 8, !tbaa !50
  %362 = load i32, i32* %196, align 8, !tbaa !87
  %363 = and i32 %362, 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %354
  %366 = load i8*, i8** %271, align 8, !tbaa !12
  %367 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 6
  store i8* %366, i8** %367, align 8, !tbaa !12
  %368 = load i64, i64* %268, align 8, !tbaa !43
  %369 = add i64 %368, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %331, i8* noundef nonnull align 1 %266, i64 noundef %369, i1 noundef false) #40
  br label %372

370:                                              ; preds = %354
  %371 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 6
  store i8* %266, i8** %371, align 8, !tbaa !12
  br label %372

372:                                              ; preds = %370, %365
  %373 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !86
  %374 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %373, null
  %375 = load i32, i32* %196, align 8, !tbaa !87
  %376 = and i32 %375, 1024
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %374, i1 %377, i1 false
  br i1 %378, label %412, label %379

379:                                              ; preds = %372
  %380 = and i32 %375, 8
  %381 = icmp eq i32 %380, 0
  %382 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 3
  %383 = load i8, i8* %382, align 2, !tbaa !122
  br i1 %381, label %395, label %384

384:                                              ; preds = %379
  switch i8 %383, label %385 [
    i8 0, label %395
    i8 4, label %395
  ]

385:                                              ; preds = %384
  %386 = and i32 %375, 16
  %387 = icmp eq i32 %386, 0
  %388 = icmp eq i8 %383, 10
  %389 = select i1 %387, i1 %388, i1 false
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 14
  store i16 11, i16* %391, align 8, !tbaa !24
  br label %401

392:                                              ; preds = %385
  %393 = and i32 %375, 4096
  %394 = icmp eq i32 %393, 0
  br label %395

395:                                              ; preds = %379, %384, %384, %392
  %396 = phi i1 [ false, %384 ], [ %394, %392 ], [ false, %384 ], [ false, %379 ]
  %397 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 14
  store i16 11, i16* %397, align 8, !tbaa !24
  switch i8 %383, label %405 [
    i8 6, label %406
    i8 2, label %398
    i8 4, label %399
    i8 1, label %400
    i8 10, label %401
    i8 8, label %403
    i8 12, label %404
  ]

398:                                              ; preds = %395
  br label %406

399:                                              ; preds = %395
  br label %406

400:                                              ; preds = %395
  br label %406

401:                                              ; preds = %390, %395
  %402 = phi i1 [ false, %390 ], [ %396, %395 ]
  br label %406

403:                                              ; preds = %395
  br label %406

404:                                              ; preds = %395
  br label %406

405:                                              ; preds = %395
  br label %406

406:                                              ; preds = %405, %404, %403, %401, %400, %399, %398, %395
  %407 = phi i1 [ %396, %405 ], [ %396, %404 ], [ %396, %403 ], [ %402, %401 ], [ %396, %400 ], [ %396, %399 ], [ %396, %398 ], [ %396, %395 ]
  %408 = phi i32 [ 0, %405 ], [ 49152, %404 ], [ 32768, %403 ], [ 40960, %401 ], [ 4096, %400 ], [ 16384, %399 ], [ 8192, %398 ], [ 24576, %395 ]
  %409 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 17, i64 0, i32 2
  store i32 %408, i32* %409, align 8, !tbaa !59
  %410 = select i1 %407, i64 1, i64 2
  %411 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 17, i64 0, i32 8
  store i64 %410, i64* %411, align 8, !tbaa !91
  br label %415

412:                                              ; preds = %372
  %413 = call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %263, i1 noundef false)
  %414 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 14
  store i16 %413, i16* %414, align 8, !tbaa !24
  br label %415

415:                                              ; preds = %412, %406
  %416 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %416, align 8, !tbaa !12
  %417 = icmp eq %struct._ftsent* %227, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %226, i64 0, i32 2
  %420 = bitcast %struct._ftsent** %419 to i8**
  store i8* %262, i8** %420, align 8, !tbaa !12
  br label %421

421:                                              ; preds = %415, %418
  %422 = phi %struct._ftsent* [ %227, %418 ], [ %263, %415 ]
  %423 = icmp eq i64 %225, 10000
  br i1 %423, label %424, label %431

424:                                              ; preds = %421
  %425 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !86
  %426 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i32, i32* %3, align 4, !tbaa !21
  %429 = call fastcc i64 @filesystem_type(%struct._ftsent* noundef nonnull %5, i32 noundef %428) #40
  switch i64 %429, label %430 [
    i64 198183888, label %431
    i64 4283649346, label %431
    i64 26985, label %431
    i64 16914836, label %431
  ]

430:                                              ; preds = %427
  br label %431

431:                                              ; preds = %430, %427, %427, %427, %427, %424, %421
  %432 = phi i1 [ %224, %424 ], [ %224, %421 ], [ true, %430 ], [ false, %427 ], [ false, %427 ], [ false, %427 ], [ false, %427 ]
  %433 = add i64 %225, 1
  %434 = icmp ugt i64 %184, %433
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  br i1 %329, label %447, label %505

436:                                              ; preds = %431, %253, %250
  %437 = phi %struct._ftsent* [ %227, %250 ], [ %227, %253 ], [ %422, %431 ]
  %438 = phi %struct._ftsent* [ %226, %250 ], [ %226, %253 ], [ %263, %431 ]
  %439 = phi i64 [ %225, %250 ], [ %225, %253 ], [ %433, %431 ]
  %440 = phi i1 [ %224, %250 ], [ %224, %253 ], [ %432, %431 ]
  %441 = phi i1 [ %223, %250 ], [ %223, %253 ], [ %329, %431 ]
  %442 = phi i64 [ %222, %250 ], [ %222, %253 ], [ %330, %431 ]
  %443 = phi i8* [ %221, %250 ], [ %221, %253 ], [ %331, %431 ]
  %444 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %445 = icmp eq %struct.__dirstream* %444, null
  br i1 %445, label %446, label %219

446:                                              ; preds = %436
  br i1 %441, label %447, label %505

447:                                              ; preds = %239, %435, %446
  %448 = phi i8* [ %331, %435 ], [ %443, %446 ], [ %221, %239 ]
  %449 = phi i1 [ %432, %435 ], [ %440, %446 ], [ %224, %239 ]
  %450 = phi i64 [ %433, %435 ], [ %439, %446 ], [ %225, %239 ]
  %451 = phi %struct._ftsent* [ %422, %435 ], [ %437, %446 ], [ %227, %239 ]
  %452 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %453 = load i8*, i8** %452, align 8, !tbaa !90
  %454 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %455 = load %struct._ftsent*, %struct._ftsent** %454, align 8, !tbaa !12
  %456 = icmp eq %struct._ftsent* %455, null
  br i1 %456, label %457, label %461

457:                                              ; preds = %474, %447
  %458 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %451, i64 0, i32 12
  %459 = load i64, i64* %458, align 8, !tbaa !43
  %460 = icmp sgt i64 %459, -1
  br i1 %460, label %479, label %505

461:                                              ; preds = %447, %474
  %462 = phi %struct._ftsent* [ %477, %474 ], [ %455, %447 ]
  %463 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %462, i64 0, i32 6
  %464 = load i8*, i8** %463, align 8, !tbaa !12
  %465 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %462, i64 0, i32 18, i64 0
  %466 = icmp eq i8* %464, %465
  br i1 %466, label %474, label %467

467:                                              ; preds = %461
  %468 = ptrtoint i8* %464 to i64
  %469 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %462, i64 0, i32 7
  %470 = load i8*, i8** %469, align 8, !tbaa !12
  %471 = ptrtoint i8* %470 to i64
  %472 = sub i64 %468, %471
  %473 = getelementptr inbounds i8, i8* %453, i64 %472
  store i8* %473, i8** %463, align 8, !tbaa !12
  br label %474

474:                                              ; preds = %467, %461
  %475 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %462, i64 0, i32 7
  store i8* %453, i8** %475, align 8, !tbaa !12
  %476 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %462, i64 0, i32 2
  %477 = load %struct._ftsent*, %struct._ftsent** %476, align 8, !tbaa !12
  %478 = icmp eq %struct._ftsent* %477, null
  br i1 %478, label %457, label %461, !llvm.loop !123

479:                                              ; preds = %457, %500
  %480 = phi %struct._ftsent* [ %501, %500 ], [ %451, %457 ]
  %481 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 6
  %482 = load i8*, i8** %481, align 8, !tbaa !12
  %483 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 18, i64 0
  %484 = icmp eq i8* %482, %483
  br i1 %484, label %492, label %485

485:                                              ; preds = %479
  %486 = ptrtoint i8* %482 to i64
  %487 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 7
  %488 = load i8*, i8** %487, align 8, !tbaa !12
  %489 = ptrtoint i8* %488 to i64
  %490 = sub i64 %486, %489
  %491 = getelementptr inbounds i8, i8* %453, i64 %490
  store i8* %491, i8** %481, align 8, !tbaa !12
  br label %492

492:                                              ; preds = %485, %479
  %493 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 7
  store i8* %453, i8** %493, align 8, !tbaa !12
  %494 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 2
  %495 = load %struct._ftsent*, %struct._ftsent** %494, align 8, !tbaa !12
  %496 = icmp eq %struct._ftsent* %495, null
  br i1 %496, label %497, label %500

497:                                              ; preds = %492
  %498 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %480, i64 0, i32 1
  %499 = load %struct._ftsent*, %struct._ftsent** %498, align 8, !tbaa !12
  br label %500

500:                                              ; preds = %497, %492
  %501 = phi %struct._ftsent* [ %499, %497 ], [ %495, %492 ]
  %502 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %501, i64 0, i32 12
  %503 = load i64, i64* %502, align 8, !tbaa !43
  %504 = icmp sgt i64 %503, -1
  br i1 %504, label %479, label %505, !llvm.loop !124

505:                                              ; preds = %500, %205, %239, %457, %435, %446
  %506 = phi i8* [ %331, %435 ], [ %443, %446 ], [ %448, %457 ], [ %221, %239 ], [ %206, %205 ], [ %448, %500 ]
  %507 = phi i1 [ %432, %435 ], [ %440, %446 ], [ %449, %457 ], [ %224, %239 ], [ false, %205 ], [ %449, %500 ]
  %508 = phi i64 [ %433, %435 ], [ %439, %446 ], [ %450, %457 ], [ %225, %239 ], [ 0, %205 ], [ %450, %500 ]
  %509 = phi %struct._ftsent* [ %422, %435 ], [ %437, %446 ], [ %451, %457 ], [ %227, %239 ], [ null, %205 ], [ %451, %500 ]
  %510 = load i32, i32* %196, align 8, !tbaa !87
  %511 = and i32 %510, 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %520, label %513

513:                                              ; preds = %505
  %514 = load i64, i64* %208, align 8, !tbaa !89
  %515 = icmp eq i64 %207, %514
  %516 = icmp eq i64 %508, 0
  %517 = select i1 %515, i1 true, i1 %516
  %518 = sext i1 %517 to i64
  %519 = getelementptr i8, i8* %506, i64 %518
  store i8 0, i8* %519, align 1, !tbaa !23
  br label %520

520:                                              ; preds = %513, %505
  %521 = or i1 %8, %186
  br i1 %521, label %557, label %522

522:                                              ; preds = %520
  %523 = icmp ne i32 %1, 1
  %524 = icmp ne i64 %508, 0
  %525 = select i1 %523, i1 %524, i1 false
  br i1 %525, label %582, label %526

526:                                              ; preds = %522
  %527 = load i64, i64* %209, align 8, !tbaa !43
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %557, label %537

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 1
  %534 = load %struct._ftsent*, %struct._ftsent** %533, align 8, !tbaa !12
  %535 = call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %534, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.151, i64 0, i64 0))
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %557, label %537

537:                                              ; preds = %532, %529
  %538 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %538, align 8, !tbaa !24
  %539 = load i32, i32* %196, align 8, !tbaa !87
  %540 = or i32 %539, 16384
  store i32 %540, i32* %196, align 8, !tbaa !87
  %541 = tail call i32* @__errno_location() #43
  %542 = load i32, i32* %541, align 4, !tbaa !21
  %543 = icmp eq %struct._ftsent* %509, null
  br i1 %543, label %556, label %544

544:                                              ; preds = %537, %553
  %545 = phi %struct._ftsent* [ %547, %553 ], [ %509, %537 ]
  %546 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %545, i64 0, i32 2
  %547 = load %struct._ftsent*, %struct._ftsent** %546, align 8, !tbaa !12
  %548 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %545, i64 0, i32 3
  %549 = load %struct.__dirstream*, %struct.__dirstream** %548, align 8, !tbaa !12
  %550 = icmp eq %struct.__dirstream* %549, null
  br i1 %550, label %553, label %551

551:                                              ; preds = %544
  %552 = call i32 @closedir(%struct.__dirstream* noundef nonnull %549) #40
  br label %553

553:                                              ; preds = %551, %544
  %554 = bitcast %struct._ftsent* %545 to i8*
  call void @free(i8* noundef %554) #40
  %555 = icmp eq %struct._ftsent* %547, null
  br i1 %555, label %556, label %544, !llvm.loop !125

556:                                              ; preds = %553, %537
  store i32 %542, i32* %541, align 4, !tbaa !21
  br label %592

557:                                              ; preds = %520, %532, %529
  %558 = icmp eq i64 %508, 0
  br i1 %558, label %559, label %582

559:                                              ; preds = %557
  %560 = icmp eq i32 %1, 3
  br i1 %560, label %561, label %565

561:                                              ; preds = %559
  %562 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  %563 = load i16, i16* %562, align 8, !tbaa !24
  switch i16 %563, label %564 [
    i16 4, label %565
    i16 7, label %565
  ]

564:                                              ; preds = %561
  store i16 6, i16* %562, align 8, !tbaa !24
  br label %565

565:                                              ; preds = %561, %561, %564, %559
  %566 = tail call i32* @__errno_location() #43
  %567 = load i32, i32* %566, align 4, !tbaa !21
  %568 = icmp eq %struct._ftsent* %509, null
  br i1 %568, label %581, label %569

569:                                              ; preds = %565, %578
  %570 = phi %struct._ftsent* [ %572, %578 ], [ %509, %565 ]
  %571 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %570, i64 0, i32 2
  %572 = load %struct._ftsent*, %struct._ftsent** %571, align 8, !tbaa !12
  %573 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %570, i64 0, i32 3
  %574 = load %struct.__dirstream*, %struct.__dirstream** %573, align 8, !tbaa !12
  %575 = icmp eq %struct.__dirstream* %574, null
  br i1 %575, label %578, label %576

576:                                              ; preds = %569
  %577 = call i32 @closedir(%struct.__dirstream* noundef nonnull %574) #40
  br label %578

578:                                              ; preds = %576, %569
  %579 = bitcast %struct._ftsent* %570 to i8*
  call void @free(i8* noundef %579) #40
  %580 = icmp eq %struct._ftsent* %572, null
  br i1 %580, label %581, label %569, !llvm.loop !126

581:                                              ; preds = %578, %565
  store i32 %567, i32* %566, align 4, !tbaa !21
  br label %592

582:                                              ; preds = %522, %557
  br i1 %507, label %583, label %585

583:                                              ; preds = %582
  store i32 (%struct._ftsent**, %struct._ftsent**)* @fts_compare_ino, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !86
  %584 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %509, i64 noundef %508)
  store i32 (%struct._ftsent**, %struct._ftsent**)* null, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !86
  br label %592

585:                                              ; preds = %582
  %586 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !86
  %587 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %586, null
  %588 = icmp ugt i64 %508, 1
  %589 = select i1 %587, i1 %588, i1 false
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  %591 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %509, i64 noundef %508)
  br label %592

592:                                              ; preds = %583, %309, %348, %19, %13, %556, %581, %590, %585, %81, %114, %48, %50
  %593 = phi %struct._ftsent* [ null, %50 ], [ null, %48 ], [ null, %114 ], [ null, %81 ], [ null, %581 ], [ null, %556 ], [ %591, %590 ], [ %509, %585 ], [ null, %13 ], [ null, %19 ], [ null, %348 ], [ null, %309 ], [ %584, %583 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #40
  ret %struct._ftsent* %593
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @restore_initial_cwd(%struct.FTS* noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !87
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = and i32 %3, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %12, i32 noundef %11) #40
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @close(i32 noundef %13) #40
  br label %17

17:                                               ; preds = %9, %15
  store i32 -100, i32* %10, align 4, !tbaa !57
  br label %24

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8, !tbaa !94
  %21 = tail call i32 @fchdir(i32 noundef %20) #40
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %18, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %17 ], [ %23, %18 ]
  %26 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %27 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %26) #41
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %33
  %29 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %26) #40
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @close(i32 noundef %29) #40
  br label %33

33:                                               ; preds = %31, %28
  %34 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %26) #41
  br i1 %34, label %35, label %28, !llvm.loop !127

35:                                               ; preds = %33, %24
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @free_dir(%struct.FTS* nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !87
  %4 = and i32 %3, 258
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %8 = load %struct.hash_table*, %struct.hash_table** %7, align 8, !tbaa !23
  %9 = icmp eq %struct.hash_table* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  tail call void @hash_free(%struct.hash_table* noundef nonnull %8) #40
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %13 = bitcast %union.anon* %12 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !23
  tail call void @free(i8* noundef %14) #40
  br label %15

15:                                               ; preds = %6, %10, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cwd_advance_fd(%struct.FTS* noundef %0, i32 noundef %1, i1 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !57
  %6 = icmp ne i32 %5, %1
  %7 = icmp eq i32 %5, -100
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @abort() #42
  unreachable

10:                                               ; preds = %3
  br i1 %2, label %11, label %15

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %12, i32 noundef %5) #40
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %22, label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %17 = load i32, i32* %16, align 8, !tbaa !87
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp sgt i32 %5, -1
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %13, %11 ], [ %5, %15 ]
  %24 = tail call i32 @close(i32 noundef %23) #40
  br label %25

25:                                               ; preds = %22, %11, %15
  store i32 %1, i32* %4, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @filesystem_type(%struct._ftsent* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = alloca %struct.dev_ino, align 8
  %4 = alloca %struct.statfs, align 8
  %5 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 11
  %6 = load %struct.FTS*, %struct.FTS** %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %6, i64 0, i32 10
  %8 = load i32, i32* %7, align 8, !tbaa !87
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %6, i64 0, i32 11
  %13 = load %struct.hash_table*, %struct.hash_table** %12, align 8, !tbaa !107
  %14 = icmp eq %struct.hash_table* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 13, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @dev_type_hash, i1 (i8*, i8*)* noundef nonnull @dev_type_compare, void (i8*)* noundef nonnull @free) #40
  store %struct.hash_table* %16, %struct.hash_table** %12, align 8, !tbaa !107
  %17 = icmp eq %struct.hash_table* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %11, %15
  %19 = phi %struct.hash_table* [ %16, %15 ], [ %13, %11 ]
  %20 = bitcast %struct.dev_ino* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #40
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 17, i64 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %3, i64 0, i32 0
  store i64 %22, i64* %23, align 8, !tbaa !128
  %24 = call i8* @hash_lookup(%struct.hash_table* noundef nonnull %19, i8* noundef nonnull %20) #40
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #40
  br label %31

27:                                               ; preds = %18
  %28 = getelementptr inbounds i8, i8* %24, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #40
  br label %62

31:                                               ; preds = %26, %15
  %32 = phi i1 [ true, %15 ], [ false, %26 ]
  %33 = phi %struct.hash_table* [ null, %15 ], [ %19, %26 ]
  %34 = bitcast %struct.statfs* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %34) #40
  %35 = icmp slt i32 %1, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = call i32 @fstatfs(i32 noundef %1, %struct.statfs* noundef nonnull %4) #40
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  br i1 %32, label %57, label %40

40:                                               ; preds = %39
  %41 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #40
  %42 = bitcast i8* %41 to %struct.dev_ino*
  %43 = icmp eq i8* %41, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 17, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %42, i64 0, i32 0
  store i64 %46, i64* %47, align 8, !tbaa !128
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i64 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !131
  %50 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %42, i64 0, i32 1
  store i64 %49, i64* %50, align 8, !tbaa !130
  %51 = call i8* @hash_insert(%struct.hash_table* noundef nonnull %33, i8* noundef nonnull %41) #40
  %52 = icmp eq i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = icmp eq i8* %51, %41
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  call void @abort() #42
  unreachable

56:                                               ; preds = %44
  call void @free(i8* noundef nonnull %41) #40
  br label %57

57:                                               ; preds = %40, %53, %56, %39
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i64 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !131
  br label %60

60:                                               ; preds = %31, %36, %57
  %61 = phi i64 [ %59, %57 ], [ 0, %36 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %34) #40
  br label %62

62:                                               ; preds = %27, %60, %2
  %63 = phi i64 [ 0, %2 ], [ %61, %60 ], [ %30, %27 ]
  ret i64 %63
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @fts_compare_ino(%struct._ftsent** nocapture noundef readonly %0, %struct._ftsent** nocapture noundef readonly %1) #16 {
  %3 = load %struct._ftsent*, %struct._ftsent** %0, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 17, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !50
  %6 = load %struct._ftsent*, %struct._ftsent** %1, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 17, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !50
  %9 = icmp ugt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ult i64 %5, %8
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @dev_type_hash(i8* nocapture noundef readonly %0, i64 noundef %1) #16 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !128
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i1 @dev_type_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #16 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !128
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !128
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32 noundef, %struct.statfs* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define dso_local i32 @rpl_fts_set(%struct.FTS* nocapture noundef readnone %0, %struct._ftsent* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #25 {
  %4 = icmp ugt i32 %2, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32* @__errno_location() #43
  store i32 22, i32* %6, align 4, !tbaa !21
  br label %10

7:                                                ; preds = %3
  %8 = trunc i32 %2 to i16
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 16
  store i16 %8, i16* %9, align 4, !tbaa !24
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 1, %5 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local %struct._ftsent* @rpl_fts_children(%struct.FTS* noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = and i32 %1, -8193
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32* @__errno_location() #43
  store i32 22, i32* %6, align 4, !tbaa !21
  br label %79

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %9 = load %struct._ftsent*, %struct._ftsent** %8, align 8, !tbaa !93
  %10 = tail call i32* @__errno_location() #43
  store i32 0, i32* %10, align 4, !tbaa !21
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %12 = load i32, i32* %11, align 8, !tbaa !87
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 14
  %17 = load i16, i16* %16, align 8, !tbaa !24
  switch i16 %17, label %79 [
    i16 9, label %18
    i16 1, label %21
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 2
  %20 = load %struct._ftsent*, %struct._ftsent** %19, align 8, !tbaa !12
  br label %79

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %23 = load %struct._ftsent*, %struct._ftsent** %22, align 8, !tbaa !104
  %24 = icmp eq %struct._ftsent* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %21, %34
  %26 = phi %struct._ftsent* [ %28, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %26, i64 0, i32 2
  %28 = load %struct._ftsent*, %struct._ftsent** %27, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %26, i64 0, i32 3
  %30 = load %struct.__dirstream*, %struct.__dirstream** %29, align 8, !tbaa !12
  %31 = icmp eq %struct.__dirstream* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %30) #40
  br label %34

34:                                               ; preds = %32, %25
  %35 = bitcast %struct._ftsent* %26 to i8*
  tail call void @free(i8* noundef %35) #40
  %36 = icmp eq %struct._ftsent* %28, null
  br i1 %36, label %37, label %25, !llvm.loop !134

37:                                               ; preds = %34
  store i32 0, i32* %10, align 4, !tbaa !21
  br label %38

38:                                               ; preds = %37, %21
  %39 = icmp eq i32 %1, 8192
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %11, align 8, !tbaa !87
  %42 = or i32 %41, 8192
  store i32 %42, i32* %11, align 8, !tbaa !87
  br label %43

43:                                               ; preds = %38, %40
  %44 = phi i32 [ 2, %40 ], [ 1, %38 ]
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 12
  %46 = load i64, i64* %45, align 8, !tbaa !43
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 6
  %50 = load i8*, i8** %49, align 8, !tbaa !12
  %51 = load i8, i8* %50, align 1, !tbaa !23
  %52 = icmp eq i8 %51, 47
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 8, !tbaa !87
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53, %48, %43
  %58 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef %0, i32 noundef %44)
  store %struct._ftsent* %58, %struct._ftsent** %22, align 8, !tbaa !104
  br label %79

59:                                               ; preds = %53
  %60 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0))
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store %struct._ftsent* null, %struct._ftsent** %22, align 8, !tbaa !104
  br label %79

63:                                               ; preds = %59
  %64 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef %44)
  store %struct._ftsent* %64, %struct._ftsent** %22, align 8, !tbaa !104
  %65 = load i32, i32* %11, align 8, !tbaa !87
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @cwd_advance_fd(%struct.FTS* noundef nonnull %0, i32 noundef %60, i1 noundef true)
  br label %77

69:                                               ; preds = %63
  %70 = tail call i32 @fchdir(i32 noundef %60) #40
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4, !tbaa !21
  %74 = tail call i32 @close(i32 noundef %60) #40
  store i32 %73, i32* %10, align 4, !tbaa !21
  br label %79

75:                                               ; preds = %69
  %76 = tail call i32 @close(i32 noundef %60) #40
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct._ftsent*, %struct._ftsent** %22, align 8, !tbaa !104
  br label %79

79:                                               ; preds = %18, %57, %7, %15, %77, %72, %62, %5
  %80 = phi %struct._ftsent* [ null, %5 ], [ %20, %18 ], [ %58, %57 ], [ null, %7 ], [ null, %15 ], [ null, %62 ], [ %78, %77 ], [ null, %72 ]
  ret %struct._ftsent* %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #16 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !135
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8, !tbaa !137
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_entries(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !138
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !140
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %25, %1
  %8 = phi i64 [ 0, %1 ], [ %26, %25 ]
  ret i64 %8

9:                                                ; preds = %1, %25
  %10 = phi %struct.hash_entry* [ %27, %25 ], [ %3, %1 ]
  %11 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !141
  %14 = icmp eq i8* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9, %15
  %16 = phi %struct.hash_entry* [ %19, %15 ], [ %10, %9 ]
  %17 = phi i64 [ %21, %15 ], [ 1, %9 ]
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !tbaa !143
  %20 = icmp eq %struct.hash_entry* %19, null
  %21 = add i64 %17, 1
  br i1 %20, label %22, label %15, !llvm.loop !144

22:                                               ; preds = %15
  %23 = icmp ugt i64 %17, %11
  %24 = select i1 %23, i64 %17, i64 %11
  br label %25

25:                                               ; preds = %9, %22
  %26 = phi i64 [ %24, %22 ], [ %11, %9 ]
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1
  %28 = icmp ult %struct.hash_entry* %27, %5
  br i1 %28, label %9, label %7, !llvm.loop !145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @hash_table_ok(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !140
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %29, %1
  %8 = phi i64 [ 0, %1 ], [ %30, %29 ]
  %9 = phi i64 [ 0, %1 ], [ %31, %29 ]
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !137
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %34, label %38

13:                                               ; preds = %1, %29
  %14 = phi %struct.hash_entry* [ %32, %29 ], [ %3, %1 ]
  %15 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %16 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !141
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ %23, %20 ], [ %15, %13 ]
  %22 = phi %struct.hash_entry* [ %25, %20 ], [ %14, %13 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !143
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %27, label %20, !llvm.loop !146

27:                                               ; preds = %20
  %28 = add i64 %16, 1
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %16, %13 ], [ %28, %27 ]
  %31 = phi i64 [ %15, %13 ], [ %23, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %5
  br i1 %33, label %13, label %7, !llvm.loop !147

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %36 = load i64, i64* %35, align 8, !tbaa !138
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
  %4 = load i64, i64* %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !tbaa !140
  %13 = icmp ult %struct.hash_entry* %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2, %30
  %15 = phi %struct.hash_entry* [ %32, %30 ], [ %10, %2 ]
  %16 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !141
  %19 = icmp eq i8* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = phi %struct.hash_entry* [ %24, %20 ], [ %15, %14 ]
  %22 = phi i64 [ %26, %20 ], [ 1, %14 ]
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !tbaa !143
  %25 = icmp eq %struct.hash_entry* %24, null
  %26 = add i64 %22, 1
  br i1 %25, label %27, label %20, !llvm.loop !148

27:                                               ; preds = %20
  %28 = icmp ugt i64 %22, %16
  %29 = select i1 %28, i64 %22, i64 %16
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %29, %27 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %12
  br i1 %33, label %14, label %34, !llvm.loop !149

34:                                               ; preds = %30, %2
  %35 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.156, i64 0, i64 0), i64 noundef %4) #40
  %37 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.157, i64 0, i64 0), i64 noundef %6) #40
  %38 = uitofp i64 %8 to double
  %39 = fmul double %38, 1.000000e+02
  %40 = uitofp i64 %6 to double
  %41 = fdiv double %39, %40
  %42 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.158, i64 0, i64 0), i64 noundef %8, double noundef %41) #40
  %43 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.159, i64 0, i64 0), i64 noundef %35) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !135
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #40
  %8 = load i64, i64* %5, align 8, !tbaa !135
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !141
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
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !151
  %27 = tail call i1 %26(i8* noundef %1, i8* noundef %25) #40
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !141
  br label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !143
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %39, label %35, !llvm.loop !152

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !141
  %38 = icmp eq i8* %37, %1
  br i1 %38, label %39, label %23

39:                                               ; preds = %35, %31, %20, %28, %11
  %40 = phi i8* [ null, %11 ], [ %30, %28 ], [ %1, %20 ], [ null, %31 ], [ %1, %35 ]
  ret i8* %40
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @hash_get_first(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !138
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !tbaa !140
  %10 = icmp ult %struct.hash_entry* %7, %9
  br i1 %10, label %14, label %13

11:                                               ; preds = %14
  %12 = icmp ult %struct.hash_entry* %19, %9
  br i1 %12, label %14, label %13

13:                                               ; preds = %11, %5
  tail call void @abort() #42
  unreachable

14:                                               ; preds = %5, %11
  %15 = phi %struct.hash_entry* [ %19, %11 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !141
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
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !135
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #40
  %8 = load i64, i64* %5, align 8, !tbaa !135
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  br label %15

15:                                               ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !141
  %19 = icmp eq i8* %18, %1
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !143
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27

23:                                               ; preds = %15
  br i1 %22, label %28, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !141
  br label %39

27:                                               ; preds = %15
  br i1 %22, label %28, label %15, !llvm.loop !153

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !140
  br label %31

31:                                               ; preds = %28, %35
  %32 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %28 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i64 1
  %34 = icmp ult %struct.hash_entry* %33, %30
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !141
  %38 = icmp eq i8* %37, null
  br i1 %38, label %31, label %39, !llvm.loop !154

39:                                               ; preds = %31, %35, %24
  %40 = phi i8* [ %26, %24 ], [ null, %31 ], [ %37, %35 ]
  ret i8* %40
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* nocapture noundef readonly %0, i8** nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #26 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %3, %34
  %10 = phi %struct.hash_entry* [ %35, %34 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %37, %34 ], [ %5, %3 ]
  %12 = phi i64 [ %36, %34 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !141
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
  %26 = load i8*, i8** %25, align 8, !tbaa !141
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22
  store i8* %26, i8** %28, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !143
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %32, label %20, !llvm.loop !155

32:                                               ; preds = %24
  %33 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  br label %34

34:                                               ; preds = %32, %9
  %35 = phi %struct.hash_entry* [ %10, %9 ], [ %33, %32 ]
  %36 = phi i64 [ %12, %9 ], [ %27, %32 ]
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %38 = icmp ult %struct.hash_entry* %37, %35
  br i1 %38, label %9, label %39, !llvm.loop !156

39:                                               ; preds = %34, %20, %3
  %40 = phi i64 [ 0, %3 ], [ %19, %20 ], [ %36, %34 ]
  ret i64 %40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* nocapture noundef readonly %0, i1 (i8*, i8*)* nocapture noundef readonly %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3, %33
  %10 = phi %struct.hash_entry* [ %34, %33 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %36, %33 ], [ %5, %3 ]
  %12 = phi i64 [ %35, %33 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !141
  %15 = icmp eq i8* %14, null
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %9
  %19 = tail call i1 %1(i8* noundef %14, i8* noundef %2) #40
  br i1 %19, label %20, label %38

20:                                               ; preds = %18, %27
  %21 = phi i64 [ %23, %27 ], [ %12, %18 ]
  %22 = phi %struct.hash_entry* [ %25, %27 ], [ %11, %18 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !143
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %31, label %27, !llvm.loop !157

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !141
  %30 = tail call i1 %1(i8* noundef %29, i8* noundef %2) #40
  br i1 %30, label %20, label %38

31:                                               ; preds = %20
  %32 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi %struct.hash_entry* [ %10, %9 ], [ %32, %31 ]
  %35 = phi i64 [ %12, %9 ], [ %23, %31 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %37 = icmp ult %struct.hash_entry* %36, %34
  br i1 %37, label %9, label %38, !llvm.loop !158

38:                                               ; preds = %33, %18, %27, %3
  %39 = phi i64 [ 0, %3 ], [ %23, %27 ], [ %35, %33 ], [ %12, %18 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @hash_reset_tuning(%struct.hash_tuning* nocapture noundef writeonly %0) local_unnamed_addr #27 {
  %2 = bitcast %struct.hash_tuning* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %2, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false), !tbaa.struct !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.hash_table* @hash_initialize(i64 noundef %0, %struct.hash_tuning* noundef %1, i64 (i8*, i64)* noundef %2, i1 (i8*, i8*)* noundef %3, void (i8*)* noundef %4) local_unnamed_addr #28 {
  %6 = icmp eq i64 (i8*, i64)* %2, null
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2
  %8 = icmp eq i1 (i8*, i8*)* %3, null
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3
  %10 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #40
  %11 = bitcast i8* %10 to %struct.hash_table*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 5
  store %struct.hash_tuning* %15, %struct.hash_tuning** %16, align 8, !tbaa !162
  %17 = icmp eq %struct.hash_tuning* %15, @default_tuning
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %20 = load float, float* %19, align 4, !tbaa !163
  %21 = fcmp ogt float %20, 0x3FB99999A0000000
  %22 = fcmp olt float %20, 0x3FECCCCCC0000000
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3
  %26 = load float, float* %25, align 4, !tbaa !165
  %27 = fcmp ogt float %26, 0x3FF19999A0000000
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0
  %30 = load float, float* %29, align 4, !tbaa !166
  %31 = fcmp ult float %30, 0.000000e+00
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = fadd float %30, 0x3FB99999A0000000
  %34 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1
  %35 = load float, float* %34, align 4, !tbaa !167
  %36 = fcmp olt float %33, %35
  %37 = fcmp ole float %35, 1.000000e+00
  %38 = and i1 %36, %37
  %39 = fcmp olt float %33, %20
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %73

41:                                               ; preds = %13, %32
  %42 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4
  %43 = load i8, i8* %42, align 4, !tbaa !168, !range !42
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = uitofp i64 %0 to float
  %47 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %48 = load float, float* %47, align 4, !tbaa !163
  %49 = fdiv float %46, %48
  %50 = fcmp ult float %49, 0x43F0000000000000
  %51 = fptoui float %49 to i64
  br i1 %50, label %52, label %73

52:                                               ; preds = %45, %41
  %53 = phi i64 [ %0, %41 ], [ %51, %45 ]
  %54 = tail call i64 @next_prime(i64 noundef %53) #43
  %55 = icmp ugt i64 %54, 1152921504606846975
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 2
  store i64 %54, i64* %57, align 8, !tbaa !135
  %58 = icmp eq i64 %54, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = tail call noalias i8* @calloc(i64 noundef %54, i64 noundef 16) #40
  %61 = bitcast i8* %10 to i8**
  store i8* %60, i8** %61, align 8, !tbaa !139
  %62 = icmp eq i8* %60, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = bitcast i8* %60 to %struct.hash_entry*
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %64, i64 %54
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 1
  store %struct.hash_entry* %65, %struct.hash_entry** %66, align 8, !tbaa !140
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 3
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 6
  %69 = bitcast i64* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %68, align 8, !tbaa !150
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 7
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %70, align 8, !tbaa !151
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 8
  store void (i8*)* %4, void (i8*)** %71, align 8, !tbaa !169
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %72, align 8, !tbaa !170
  br label %77

73:                                               ; preds = %52, %45, %18, %24, %28, %32
  %74 = phi i32 [ 22, %32 ], [ 22, %28 ], [ 22, %24 ], [ 22, %18 ], [ 12, %45 ], [ 12, %52 ]
  %75 = tail call i32* @__errno_location() #43
  store i32 %74, i32* %75, align 4, !tbaa !21
  br label %76

76:                                               ; preds = %73, %59, %56
  tail call void @free(i8* noundef nonnull %10) #40
  br label %77

77:                                               ; preds = %5, %76, %63
  %78 = phi %struct.hash_table* [ null, %76 ], [ %11, %63 ], [ null, %5 ]
  ret %struct.hash_table* %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @raw_hasher(i8* noundef %0, i64 noundef %1) #29 {
  %3 = ptrtoint i8* %0 to i64
  %4 = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 61)
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i1 @raw_comparator(i8* noundef readnone %0, i8* noundef readnone %1) #29 {
  %3 = icmp eq i8* %0, %1
  ret i1 %3
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @hash_clear(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !140
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
  %17 = load i8*, i8** %16, align 8, !tbaa !141
  %18 = icmp eq i8* %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !143
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !169
  %25 = icmp eq void (i8*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !170
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi %struct.hash_entry* [ %27, %26 ], [ %30, %28 ]
  %30 = phi %struct.hash_entry* [ %21, %26 ], [ %33, %28 ]
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0
  store i8* null, i8** %31, align 8, !tbaa !141
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !143
  store %struct.hash_entry* %29, %struct.hash_entry** %32, align 8, !tbaa !143
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %35, label %28, !llvm.loop !171

35:                                               ; preds = %28
  store %struct.hash_entry* %30, %struct.hash_entry** %9, align 8, !tbaa !170
  br label %36

36:                                               ; preds = %46, %35, %19
  %37 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !169
  %38 = icmp eq void (i8*)* %37, null
  br i1 %38, label %56, label %54

39:                                               ; preds = %23, %52
  %40 = phi void (i8*)* [ %53, %52 ], [ %24, %23 ]
  %41 = phi %struct.hash_entry* [ %49, %52 ], [ %21, %23 ]
  %42 = icmp eq void (i8*)* %40, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !141
  tail call void %40(i8* noundef %45) #40
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  store i8* null, i8** %47, align 8, !tbaa !141
  %48 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %49 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8, !tbaa !143
  %50 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !170
  store %struct.hash_entry* %50, %struct.hash_entry** %48, align 8, !tbaa !143
  store %struct.hash_entry* %41, %struct.hash_entry** %9, align 8, !tbaa !170
  %51 = icmp eq %struct.hash_entry* %49, null
  br i1 %51, label %36, label %52, !llvm.loop !172

52:                                               ; preds = %46
  %53 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !169
  br label %39

54:                                               ; preds = %36
  %55 = load i8*, i8** %16, align 8, !tbaa !141
  tail call void %37(i8* noundef %55) #40
  br label %56

56:                                               ; preds = %54, %36
  %57 = bitcast %struct.hash_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %58 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !140
  br label %59

59:                                               ; preds = %13, %56
  %60 = phi %struct.hash_entry* [ %14, %13 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %13, label %10, !llvm.loop !174
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_free(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #43
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !169
  %6 = icmp eq void (i8*)* %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %9 = load i64, i64* %8, align 8, !tbaa !138
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !140
  %16 = icmp ult %struct.hash_entry* %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11, %40
  %18 = phi %struct.hash_entry* [ %41, %40 ], [ %15, %11 ]
  %19 = phi %struct.hash_entry* [ %42, %40 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !141
  %22 = icmp eq i8* %21, null
  %23 = icmp eq %struct.hash_entry* %19, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %17
  %26 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !169
  tail call void %26(i8* noundef %21) #40
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !143
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %38, label %30, !llvm.loop !175

30:                                               ; preds = %25, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !141
  %34 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !169
  tail call void %34(i8* noundef %33) #40
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !tbaa !143
  %37 = icmp eq %struct.hash_entry* %36, null
  br i1 %37, label %38, label %30, !llvm.loop !175

38:                                               ; preds = %30, %25
  %39 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !140
  br label %40

40:                                               ; preds = %38, %17
  %41 = phi %struct.hash_entry* [ %39, %38 ], [ %18, %17 ]
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %43 = icmp ult %struct.hash_entry* %42, %41
  br i1 %43, label %17, label %44, !llvm.loop !176

44:                                               ; preds = %40, %11, %7, %1
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !139
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !140
  %49 = icmp ult %struct.hash_entry* %46, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %62, %44
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !170
  %53 = icmp eq %struct.hash_entry* %52, null
  br i1 %53, label %72, label %76

54:                                               ; preds = %44, %62
  %55 = phi %struct.hash_entry* [ %63, %62 ], [ %48, %44 ]
  %56 = phi %struct.hash_entry* [ %64, %62 ], [ %46, %44 ]
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 0, i32 1
  %58 = load %struct.hash_entry*, %struct.hash_entry** %57, align 8, !tbaa !143
  %59 = icmp eq %struct.hash_entry* %58, null
  br i1 %59, label %62, label %66

60:                                               ; preds = %66
  %61 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !140
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi %struct.hash_entry* [ %61, %60 ], [ %55, %54 ]
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 1
  %65 = icmp ult %struct.hash_entry* %64, %63
  br i1 %65, label %54, label %50, !llvm.loop !177

66:                                               ; preds = %54, %66
  %67 = phi %struct.hash_entry* [ %69, %66 ], [ %58, %54 ]
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i64 0, i32 1
  %69 = load %struct.hash_entry*, %struct.hash_entry** %68, align 8, !tbaa !143
  %70 = bitcast %struct.hash_entry* %67 to i8*
  tail call void @free(i8* noundef %70) #40
  %71 = icmp eq %struct.hash_entry* %69, null
  br i1 %71, label %60, label %66, !llvm.loop !178

72:                                               ; preds = %76, %50
  %73 = bitcast %struct.hash_table* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !139
  tail call void @free(i8* noundef %74) #40
  %75 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* noundef %75) #40
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret void

76:                                               ; preds = %50, %76
  %77 = phi %struct.hash_entry* [ %79, %76 ], [ %52, %50 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8, !tbaa !143
  %80 = bitcast %struct.hash_entry* %77 to i8*
  tail call void @free(i8* noundef %80) #40
  %81 = icmp eq %struct.hash_entry* %79, null
  br i1 %81, label %72, label %76, !llvm.loop !179
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hash_rehash(%struct.hash_table* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.hash_table, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %5 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8, !tbaa !162
  %6 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 4
  %7 = load i8, i8* %6, align 4, !tbaa !168, !range !42
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = uitofp i64 %1 to float
  %11 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 2
  %12 = load float, float* %11, align 4, !tbaa !163
  %13 = fdiv float %10, %12
  %14 = fcmp ult float %13, 0x43F0000000000000
  %15 = fptoui float %13 to i64
  br i1 %14, label %16, label %20

16:                                               ; preds = %9, %2
  %17 = phi i64 [ %1, %2 ], [ %15, %9 ]
  %18 = tail call i64 @next_prime(i64 noundef %17) #43
  %19 = icmp ugt i64 %18, 1152921504606846975
  br i1 %19, label %20, label %22

20:                                               ; preds = %9, %16
  %21 = tail call i32* @__errno_location() #43
  store i32 12, i32* %21, align 4, !tbaa !21
  br label %124

22:                                               ; preds = %16
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %26 = load i64, i64* %25, align 8, !tbaa !135
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %29) #40
  %30 = tail call noalias i8* @calloc(i64 noundef %18, i64 noundef 16) #40
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0
  %32 = bitcast %struct.hash_table* %3 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !139
  %33 = icmp eq i8* %30, null
  br i1 %33, label %122, label %34

34:                                               ; preds = %28
  %35 = bitcast i8* %30 to %struct.hash_entry*
  %36 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2
  store i64 %18, i64* %36, align 8, !tbaa !135
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i64 %18
  %38 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1
  store %struct.hash_entry* %37, %struct.hash_entry** %38, align 8, !tbaa !140
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5
  %41 = bitcast i64* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store %struct.hash_tuning* %5, %struct.hash_tuning** %40, align 8, !tbaa !162
  %42 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %43 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !150
  %44 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 6
  store i64 (i8*, i64)* %43, i64 (i8*, i64)** %44, align 8, !tbaa !150
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %46 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %45, align 8, !tbaa !151
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7
  store i1 (i8*, i8*)* %46, i1 (i8*, i8*)** %47, align 8, !tbaa !151
  %48 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %49 = load void (i8*)*, void (i8*)** %48, align 8, !tbaa !169
  %50 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 8
  store void (i8*)* %49, void (i8*)** %50, align 8, !tbaa !169
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !170
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9
  store %struct.hash_entry* %52, %struct.hash_entry** %53, align 8, !tbaa !170
  %54 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef nonnull %3, %struct.hash_table* noundef nonnull %0, i1 noundef false)
  br i1 %54, label %55, label %66

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %57 = bitcast %struct.hash_table* %0 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !139
  tail call void @free(i8* noundef %58) #40
  %59 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !139
  store %struct.hash_entry* %59, %struct.hash_entry** %56, align 8, !tbaa !139
  %60 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !140
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  store %struct.hash_entry* %60, %struct.hash_entry** %61, align 8, !tbaa !140
  %62 = bitcast i64* %36 to <2 x i64>*
  %63 = load <2 x i64>, <2 x i64>* %62, align 8, !tbaa !43
  %64 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> %63, <2 x i64>* %64, align 8, !tbaa !43
  %65 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !170
  store %struct.hash_entry* %65, %struct.hash_entry** %51, align 8, !tbaa !170
  br label %122

66:                                               ; preds = %34
  %67 = tail call i32* @__errno_location() #43
  %68 = load i32, i32* %67, align 4, !tbaa !21
  %69 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !170
  store %struct.hash_entry* %69, %struct.hash_entry** %51, align 8, !tbaa !170
  %70 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !139
  %71 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !140
  %72 = icmp ult %struct.hash_entry* %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %76

76:                                               ; preds = %113, %73
  %77 = phi %struct.hash_entry* [ %114, %113 ], [ %70, %73 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !141
  %80 = icmp eq i8* %79, null
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %83 = load %struct.hash_entry*, %struct.hash_entry** %82, align 8, !tbaa !143
  %84 = icmp eq %struct.hash_entry* %83, null
  br i1 %84, label %112, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %25, align 8, !tbaa !135
  br label %87

87:                                               ; preds = %108, %85
  %88 = phi i64 [ %94, %108 ], [ %86, %85 ]
  %89 = phi %struct.hash_entry* [ %99, %108 ], [ %83, %85 ]
  %90 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !141
  %92 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !150
  %93 = tail call i64 %92(i8* noundef %91, i64 noundef %88) #40
  %94 = load i64, i64* %25, align 8, !tbaa !135
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8, !tbaa !139
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %98, align 8, !tbaa !143
  %100 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !141
  %102 = icmp eq i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 1
  br label %108

105:                                              ; preds = %96
  store i8* %91, i8** %100, align 8, !tbaa !141
  %106 = load i64, i64* %75, align 8, !tbaa !137
  %107 = add i64 %106, 1
  store i64 %107, i64* %75, align 8, !tbaa !137
  store i8* null, i8** %90, align 8, !tbaa !141
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi %struct.hash_entry** [ %51, %105 ], [ %104, %103 ]
  %110 = load %struct.hash_entry*, %struct.hash_entry** %109, align 8, !tbaa !12
  store %struct.hash_entry* %110, %struct.hash_entry** %98, align 8, !tbaa !143
  store %struct.hash_entry* %89, %struct.hash_entry** %109, align 8, !tbaa !12
  %111 = icmp eq %struct.hash_entry* %99, null
  br i1 %111, label %112, label %87, !llvm.loop !180

112:                                              ; preds = %108, %81
  store %struct.hash_entry* null, %struct.hash_entry** %82, align 8, !tbaa !143
  br label %113

113:                                              ; preds = %112, %76
  %114 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 1
  %115 = icmp ult %struct.hash_entry* %114, %71
  br i1 %115, label %76, label %117, !llvm.loop !181

116:                                              ; preds = %87
  tail call void @abort() #42
  unreachable

117:                                              ; preds = %113, %66
  %118 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef %0, %struct.hash_table* noundef nonnull %3, i1 noundef false)
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void @abort() #42
  unreachable

120:                                              ; preds = %117
  %121 = load i8*, i8** %32, align 8, !tbaa !139
  tail call void @free(i8* noundef %121) #40
  store i32 %68, i32* %67, align 4, !tbaa !21
  br label %122

122:                                              ; preds = %28, %120, %55
  %123 = phi i1 [ true, %55 ], [ false, %120 ], [ false, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %29) #40
  br label %124

124:                                              ; preds = %20, %24, %22, %122
  %125 = phi i1 [ %123, %122 ], [ false, %22 ], [ true, %24 ], [ false, %20 ]
  ret i1 %125
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @transfer_entries(%struct.hash_table* nocapture noundef %0, %struct.hash_table* nocapture noundef %1, i1 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
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
  %21 = load i8*, i8** %20, align 8, !tbaa !141
  %22 = icmp eq i8* %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !143
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8, !tbaa !135
  br label %29

29:                                               ; preds = %27, %50
  %30 = phi i64 [ %36, %50 ], [ %28, %27 ]
  %31 = phi %struct.hash_entry* [ %41, %50 ], [ %25, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !141
  %34 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !150
  %35 = tail call i64 %34(i8* noundef %33, i64 noundef %30) #40
  %36 = load i64, i64* %11, align 8, !tbaa !135
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %29
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8, !tbaa !143
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !141
  %44 = icmp eq i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 1
  br label %50

47:                                               ; preds = %38
  store i8* %33, i8** %42, align 8, !tbaa !141
  %48 = load i64, i64* %13, align 8, !tbaa !137
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8, !tbaa !137
  store i8* null, i8** %32, align 8, !tbaa !141
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi %struct.hash_entry** [ %14, %47 ], [ %46, %45 ]
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !12
  store %struct.hash_entry* %52, %struct.hash_entry** %40, align 8, !tbaa !143
  store %struct.hash_entry* %31, %struct.hash_entry** %51, align 8, !tbaa !12
  %53 = icmp eq %struct.hash_entry* %41, null
  br i1 %53, label %54, label %29, !llvm.loop !182

54:                                               ; preds = %50
  %55 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  br label %56

56:                                               ; preds = %54, %23
  %57 = phi %struct.hash_entry* [ %55, %54 ], [ %17, %23 ]
  store %struct.hash_entry* null, %struct.hash_entry** %24, align 8, !tbaa !143
  br label %58

58:                                               ; preds = %56, %16
  %59 = phi %struct.hash_entry* [ %57, %56 ], [ %17, %16 ]
  %60 = phi %struct.hash_entry* [ %57, %56 ], [ %18, %16 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %16, label %142, !llvm.loop !183

63:                                               ; preds = %9, %138
  %64 = phi %struct.hash_entry* [ %139, %138 ], [ %7, %9 ]
  %65 = phi %struct.hash_entry* [ %140, %138 ], [ %5, %9 ]
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !141
  %68 = icmp eq i8* %67, null
  br i1 %68, label %138, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 1
  %71 = load %struct.hash_entry*, %struct.hash_entry** %70, align 8, !tbaa !143
  %72 = icmp eq %struct.hash_entry* %71, null
  %73 = load i64, i64* %11, align 8, !tbaa !135
  br i1 %72, label %76, label %83

74:                                               ; preds = %105
  %75 = load i8*, i8** %66, align 8, !tbaa !141
  br label %76

76:                                               ; preds = %69, %74
  %77 = phi i64 [ %90, %74 ], [ %73, %69 ]
  %78 = phi i8* [ %75, %74 ], [ %67, %69 ]
  store %struct.hash_entry* null, %struct.hash_entry** %70, align 8, !tbaa !143
  %79 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !150
  %80 = tail call i64 %79(i8* noundef %78, i64 noundef %77) #40
  %81 = load i64, i64* %11, align 8, !tbaa !135
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %110, label %109

83:                                               ; preds = %69, %105
  %84 = phi i64 [ %90, %105 ], [ %73, %69 ]
  %85 = phi %struct.hash_entry* [ %96, %105 ], [ %71, %69 ]
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 0
  %87 = load i8*, i8** %86, align 8, !tbaa !141
  %88 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !150
  %89 = tail call i64 %88(i8* noundef %87, i64 noundef %84) #40
  %90 = load i64, i64* %11, align 8, !tbaa !135
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %83, %29
  tail call void @abort() #42
  unreachable

93:                                               ; preds = %83
  %94 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 1
  %96 = load %struct.hash_entry*, %struct.hash_entry** %95, align 8, !tbaa !143
  %97 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !141
  %99 = icmp eq i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 1
  br label %105

102:                                              ; preds = %93
  store i8* %87, i8** %97, align 8, !tbaa !141
  %103 = load i64, i64* %13, align 8, !tbaa !137
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8, !tbaa !137
  store i8* null, i8** %86, align 8, !tbaa !141
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi %struct.hash_entry** [ %14, %102 ], [ %101, %100 ]
  %107 = load %struct.hash_entry*, %struct.hash_entry** %106, align 8, !tbaa !12
  store %struct.hash_entry* %107, %struct.hash_entry** %95, align 8, !tbaa !143
  store %struct.hash_entry* %85, %struct.hash_entry** %106, align 8, !tbaa !12
  %108 = icmp eq %struct.hash_entry* %96, null
  br i1 %108, label %74, label %83, !llvm.loop !182

109:                                              ; preds = %76
  tail call void @abort() #42
  unreachable

110:                                              ; preds = %76
  %111 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %112 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !141
  %114 = icmp eq i8* %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %110
  %116 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !170
  %117 = icmp eq %struct.hash_entry* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %116, i64 0, i32 1
  %120 = load %struct.hash_entry*, %struct.hash_entry** %119, align 8, !tbaa !143
  store %struct.hash_entry* %120, %struct.hash_entry** %14, align 8, !tbaa !170
  br label %125

121:                                              ; preds = %115
  %122 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #40
  %123 = bitcast i8* %122 to %struct.hash_entry*
  %124 = icmp eq i8* %122, null
  br i1 %124, label %142, label %125

125:                                              ; preds = %118, %121
  %126 = phi %struct.hash_entry* [ %116, %118 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 0
  store i8* %78, i8** %127, align 8, !tbaa !141
  %128 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 1
  %129 = load %struct.hash_entry*, %struct.hash_entry** %128, align 8, !tbaa !143
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 1
  store %struct.hash_entry* %129, %struct.hash_entry** %130, align 8, !tbaa !143
  store %struct.hash_entry* %126, %struct.hash_entry** %128, align 8, !tbaa !143
  br label %134

131:                                              ; preds = %110
  store i8* %78, i8** %112, align 8, !tbaa !141
  %132 = load i64, i64* %13, align 8, !tbaa !137
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8, !tbaa !137
  br label %134

134:                                              ; preds = %125, %131
  store i8* null, i8** %66, align 8, !tbaa !141
  %135 = load i64, i64* %15, align 8, !tbaa !137
  %136 = add i64 %135, -1
  store i64 %136, i64* %15, align 8, !tbaa !137
  %137 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !140
  br label %138

138:                                              ; preds = %134, %63
  %139 = phi %struct.hash_entry* [ %137, %134 ], [ %64, %63 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 1
  %141 = icmp ult %struct.hash_entry* %140, %139
  br i1 %141, label %63, label %142, !llvm.loop !183

142:                                              ; preds = %138, %121, %58, %3
  %143 = phi i1 [ true, %3 ], [ true, %58 ], [ false, %121 ], [ true, %138 ]
  ret i1 %143
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* nocapture noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #12 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #42
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !135
  %11 = tail call i64 %8(i8* noundef nonnull %1, i64 noundef %10) #40
  %12 = load i64, i64* %9, align 8, !tbaa !135
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @abort() #42
  unreachable

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !141
  %21 = icmp eq i8* %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %15
  %23 = icmp eq i8* %20, %1
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !151
  %27 = tail call i1 %26(i8* noundef nonnull %1, i8* noundef nonnull %20) #40
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !143
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %28, %44
  %33 = phi %struct.hash_entry* [ %46, %44 ], [ %30, %28 ]
  %34 = phi %struct.hash_entry** [ %45, %44 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !141
  %37 = icmp eq i8* %36, %1
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !151
  %40 = tail call i1 %39(i8* noundef nonnull %1, i8* noundef %36) #40
  %41 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !tbaa !143
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  br label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !143
  %47 = icmp eq %struct.hash_entry* %46, null
  br i1 %47, label %58, label %32, !llvm.loop !184

48:                                               ; preds = %24, %42
  %49 = phi i8** [ %43, %42 ], [ %19, %24 ]
  %50 = load i8*, i8** %49, align 8, !tbaa !141
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
  %60 = load i64, i64* %59, align 8, !tbaa !137
  %61 = uitofp i64 %60 to float
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %63 = load %struct.hash_tuning*, %struct.hash_tuning** %62, align 8, !tbaa !162
  %64 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 2
  %65 = load float, float* %64, align 4, !tbaa !163
  %66 = load i64, i64* %9, align 8, !tbaa !135
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
  %78 = load float, float* %77, align 4, !tbaa !165
  %79 = fcmp ogt float %78, 0x3FF19999A0000000
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 0
  %82 = load float, float* %81, align 4, !tbaa !166
  %83 = fcmp ult float %82, 0.000000e+00
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = fadd float %82, 0x3FB99999A0000000
  %86 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 1
  %87 = load float, float* %86, align 4, !tbaa !167
  %88 = fcmp olt float %85, %87
  %89 = fcmp ole float %87, 1.000000e+00
  %90 = and i1 %88, %89
  %91 = fcmp olt float %85, %65
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %94, label %93

93:                                               ; preds = %84, %80, %76, %72
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %62, align 8, !tbaa !162
  br label %94

94:                                               ; preds = %70, %84, %93
  %95 = phi float [ %65, %70 ], [ %65, %84 ], [ 0x3FE99999A0000000, %93 ]
  %96 = phi %struct.hash_tuning* [ @default_tuning, %70 ], [ %63, %84 ], [ @default_tuning, %93 ]
  %97 = fmul float %95, %67
  %98 = fcmp olt float %97, %61
  br i1 %98, label %99, label %160

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 4
  %101 = load i8, i8* %100, align 4, !tbaa !168, !range !42
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 3
  %104 = load float, float* %103, align 4, !tbaa !165
  %105 = fmul float %104, %67
  %106 = select i1 %102, float %95, float 1.000000e+00
  %107 = fmul float %105, %106
  %108 = fcmp ult float %107, 0x43F0000000000000
  br i1 %108, label %111, label %109

109:                                              ; preds = %99
  %110 = tail call i32* @__errno_location() #43
  store i32 12, i32* %110, align 4, !tbaa !21
  br label %190

111:                                              ; preds = %99
  %112 = fptoui float %107 to i64
  %113 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %112)
  br i1 %113, label %114, label %190

114:                                              ; preds = %111
  %115 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !150
  %116 = load i64, i64* %9, align 8, !tbaa !135
  %117 = tail call i64 %115(i8* noundef nonnull %1, i64 noundef %116) #40
  %118 = load i64, i64* %9, align 8, !tbaa !135
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call void @abort() #42
  unreachable

121:                                              ; preds = %114
  %122 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !139
  %123 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 0, i32 0
  %125 = load i8*, i8** %124, align 8, !tbaa !141
  %126 = icmp eq i8* %125, null
  br i1 %126, label %160, label %127

127:                                              ; preds = %121
  %128 = icmp eq i8* %125, %1
  br i1 %128, label %156, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %131 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !151
  %132 = tail call i1 %131(i8* noundef nonnull %1, i8* noundef nonnull %125) #40
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117, i32 1
  %135 = load %struct.hash_entry*, %struct.hash_entry** %134, align 8, !tbaa !143
  %136 = icmp eq %struct.hash_entry* %135, null
  br i1 %136, label %160, label %137

137:                                              ; preds = %133, %149
  %138 = phi %struct.hash_entry* [ %151, %149 ], [ %135, %133 ]
  %139 = phi %struct.hash_entry** [ %150, %149 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i64 0, i32 0
  %141 = load i8*, i8** %140, align 8, !tbaa !141
  %142 = icmp eq i8* %141, %1
  br i1 %142, label %156, label %143

143:                                              ; preds = %137
  %144 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !151
  %145 = tail call i1 %144(i8* noundef nonnull %1, i8* noundef %141) #40
  %146 = load %struct.hash_entry*, %struct.hash_entry** %139, align 8, !tbaa !143
  br i1 %145, label %147, label %149

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 0
  br label %153

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 1
  %151 = load %struct.hash_entry*, %struct.hash_entry** %150, align 8, !tbaa !143
  %152 = icmp eq %struct.hash_entry* %151, null
  br i1 %152, label %160, label %137, !llvm.loop !185

153:                                              ; preds = %129, %147
  %154 = phi i8** [ %148, %147 ], [ %124, %129 ]
  %155 = load i8*, i8** %154, align 8, !tbaa !141
  br label %156

156:                                              ; preds = %137, %153, %127
  %157 = phi i8* [ %1, %127 ], [ %155, %153 ], [ %1, %137 ]
  %158 = icmp eq i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call void @abort() #42
  unreachable

160:                                              ; preds = %149, %133, %121, %156, %94, %58
  %161 = phi %struct.hash_entry* [ %123, %156 ], [ %18, %94 ], [ %18, %58 ], [ %123, %121 ], [ %123, %133 ], [ %123, %149 ]
  %162 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 0
  %163 = load i8*, i8** %162, align 8, !tbaa !141
  %164 = icmp eq i8* %163, null
  br i1 %164, label %185, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %167 = load %struct.hash_entry*, %struct.hash_entry** %166, align 8, !tbaa !170
  %168 = icmp eq %struct.hash_entry* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %167, i64 0, i32 1
  %171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8, !tbaa !143
  store %struct.hash_entry* %171, %struct.hash_entry** %166, align 8, !tbaa !170
  br label %176

172:                                              ; preds = %165
  %173 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #40
  %174 = bitcast i8* %173 to %struct.hash_entry*
  %175 = icmp eq i8* %173, null
  br i1 %175, label %190, label %176

176:                                              ; preds = %169, %172
  %177 = phi %struct.hash_entry* [ %167, %169 ], [ %174, %172 ]
  %178 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 0
  store i8* %1, i8** %178, align 8, !tbaa !141
  %179 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 1
  %180 = load %struct.hash_entry*, %struct.hash_entry** %179, align 8, !tbaa !143
  %181 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 1
  store %struct.hash_entry* %180, %struct.hash_entry** %181, align 8, !tbaa !143
  store %struct.hash_entry* %177, %struct.hash_entry** %179, align 8, !tbaa !143
  %182 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %183 = load i64, i64* %182, align 8, !tbaa !138
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8, !tbaa !138
  br label %190

185:                                              ; preds = %160
  store i8* %1, i8** %162, align 8, !tbaa !141
  %186 = bitcast i64* %59 to <2 x i64>*
  %187 = load <2 x i64>, <2 x i64>* %186, align 8, !tbaa !43
  %188 = add <2 x i64> %187, <i64 1, i64 1>
  %189 = bitcast i64* %59 to <2 x i64>*
  store <2 x i64> %188, <2 x i64>* %189, align 8, !tbaa !43
  br label %190

190:                                              ; preds = %111, %176, %172, %109, %54, %57, %185
  %191 = phi i32 [ 1, %185 ], [ 0, %57 ], [ 0, %54 ], [ -1, %109 ], [ 1, %176 ], [ -1, %172 ], [ -1, %111 ]
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_insert(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #40
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* noundef %0, i8* noundef %1, i8** noundef nonnull %3)
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = load i8*, i8** %3, align 8
  %9 = select i1 %7, i8* %8, i8* %1
  %10 = select i1 %6, i8* null, i8* %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #40
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_remove(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !135
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #40
  %8 = load i64, i64* %5, align 8, !tbaa !135
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !139
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !141
  %17 = icmp eq i8* %16, null
  br i1 %17, label %145, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8* %16, %1
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !151
  %23 = tail call i1 %22(i8* noundef %1, i8* noundef nonnull %16) #40
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %15, align 8, !tbaa !141
  br label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !143
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %145, label %43

30:                                               ; preds = %24, %18
  %31 = phi i8* [ %25, %24 ], [ %1, %18 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !143
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = bitcast %struct.hash_entry* %14 to i8*
  %37 = bitcast %struct.hash_entry* %33 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #40, !tbaa.struct !186
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  store i8* null, i8** %38, align 8, !tbaa !141
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %40 = load %struct.hash_entry*, %struct.hash_entry** %39, align 8, !tbaa !170
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 1
  store %struct.hash_entry* %40, %struct.hash_entry** %41, align 8, !tbaa !143
  store %struct.hash_entry* %33, %struct.hash_entry** %39, align 8, !tbaa !170
  br label %68

42:                                               ; preds = %30
  store i8* null, i8** %15, align 8, !tbaa !141
  br label %68

43:                                               ; preds = %26, %64
  %44 = phi %struct.hash_entry* [ %66, %64 ], [ %28, %26 ]
  %45 = phi %struct.hash_entry** [ %65, %64 ], [ %27, %26 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %44, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !141
  %48 = icmp eq i8* %47, %1
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !151
  %51 = tail call i1 %50(i8* noundef %1, i8* noundef %47) #40
  %52 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !143
  br i1 %51, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !141
  br label %56

56:                                               ; preds = %43, %53
  %57 = phi i8* [ %55, %53 ], [ %1, %43 ]
  %58 = phi %struct.hash_entry* [ %52, %53 ], [ %44, %43 ]
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 1
  %61 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !tbaa !143
  store %struct.hash_entry* %61, %struct.hash_entry** %45, align 8, !tbaa !143
  store i8* null, i8** %59, align 8, !tbaa !141
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %63 = load %struct.hash_entry*, %struct.hash_entry** %62, align 8, !tbaa !170
  store %struct.hash_entry* %63, %struct.hash_entry** %60, align 8, !tbaa !143
  store %struct.hash_entry* %58, %struct.hash_entry** %62, align 8, !tbaa !170
  br label %68

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1
  %66 = load %struct.hash_entry*, %struct.hash_entry** %65, align 8, !tbaa !143
  %67 = icmp eq %struct.hash_entry* %66, null
  br i1 %67, label %145, label %43, !llvm.loop !187

68:                                               ; preds = %35, %42, %56
  %69 = phi i8* [ %31, %35 ], [ %31, %42 ], [ %57, %56 ]
  %70 = icmp eq i8* %69, null
  br i1 %70, label %145, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %73 = load i64, i64* %72, align 8, !tbaa !138
  %74 = add i64 %73, -1
  store i64 %74, i64* %72, align 8, !tbaa !138
  %75 = load i8*, i8** %15, align 8, !tbaa !141
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %145

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %79 = load i64, i64* %78, align 8, !tbaa !137
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8, !tbaa !137
  %81 = uitofp i64 %80 to float
  %82 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %83 = load %struct.hash_tuning*, %struct.hash_tuning** %82, align 8, !tbaa !162
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 0
  %85 = load float, float* %84, align 4, !tbaa !166
  %86 = load i64, i64* %5, align 8, !tbaa !135
  %87 = uitofp i64 %86 to float
  %88 = fmul float %85, %87
  %89 = fcmp ogt float %88, %81
  br i1 %89, label %90, label %145

90:                                               ; preds = %77
  %91 = icmp eq %struct.hash_tuning* %83, @default_tuning
  br i1 %91, label %114, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 2
  %94 = load float, float* %93, align 4, !tbaa !163
  %95 = fcmp ogt float %94, 0x3FB99999A0000000
  %96 = fcmp olt float %94, 0x3FECCCCCC0000000
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 3
  %100 = load float, float* %99, align 4, !tbaa !165
  %101 = fcmp ule float %100, 0x3FF19999A0000000
  %102 = fcmp ult float %85, 0.000000e+00
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = fadd float %85, 0x3FB99999A0000000
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 1
  %107 = load float, float* %106, align 4, !tbaa !167
  %108 = fcmp olt float %105, %107
  %109 = fcmp ole float %107, 1.000000e+00
  %110 = and i1 %108, %109
  %111 = fcmp olt float %105, %94
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %114, label %113

113:                                              ; preds = %104, %98, %92
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %82, align 8, !tbaa !162
  br label %114

114:                                              ; preds = %90, %104, %113
  %115 = phi float [ %85, %90 ], [ %85, %104 ], [ 0.000000e+00, %113 ]
  %116 = phi %struct.hash_tuning* [ @default_tuning, %90 ], [ %83, %104 ], [ @default_tuning, %113 ]
  %117 = fmul float %115, %87
  %118 = fcmp ogt float %117, %81
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 4
  %121 = load i8, i8* %120, align 4, !tbaa !168, !range !42
  %122 = icmp eq i8 %121, 0
  %123 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 1
  %124 = load float, float* %123, align 4, !tbaa !167
  %125 = fmul float %124, %87
  br i1 %122, label %126, label %130

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 2
  %128 = load float, float* %127, align 4, !tbaa !163
  %129 = fmul float %125, %128
  br label %130

130:                                              ; preds = %119, %126
  %131 = phi float [ %129, %126 ], [ %125, %119 ]
  %132 = fptoui float %131 to i64
  %133 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %132)
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %136 = load %struct.hash_entry*, %struct.hash_entry** %135, align 8, !tbaa !170
  %137 = icmp eq %struct.hash_entry* %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134, %138
  %139 = phi %struct.hash_entry* [ %141, %138 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %139, i64 0, i32 1
  %141 = load %struct.hash_entry*, %struct.hash_entry** %140, align 8, !tbaa !143
  %142 = bitcast %struct.hash_entry* %139 to i8*
  tail call void @free(i8* noundef %142) #40
  %143 = icmp eq %struct.hash_entry* %141, null
  br i1 %143, label %144, label %138, !llvm.loop !188

144:                                              ; preds = %138, %134
  store %struct.hash_entry* null, %struct.hash_entry** %135, align 8, !tbaa !170
  br label %145

145:                                              ; preds = %64, %26, %11, %71, %114, %77, %144, %130, %68
  %146 = phi i8* [ null, %68 ], [ %69, %130 ], [ %69, %144 ], [ %69, %77 ], [ %69, %114 ], [ %69, %71 ], [ null, %11 ], [ null, %26 ], [ null, %64 ]
  ret i8* %146
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @i_ring_init(%struct.I_ring* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #30 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  store i8 1, i8* %3, align 4, !tbaa !189
  %4 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %5 = bitcast i32* %4 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %5, align 4, !tbaa !21
  %6 = insertelement <4 x i32> poison, i32 %1, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = bitcast %struct.I_ring* %0 to <4 x i32>*
  store <4 x i32> %7, <4 x i32>* %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  store i32 %1, i32* %9, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @i_ring_empty(%struct.I_ring* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4, !tbaa !189, !range !42
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @i_ring_push(%struct.I_ring* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #31 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !191
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 4, !tbaa !189, !range !42
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = add i32 %4, %8
  %10 = and i32 %9, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !21
  store i32 %1, i32* %12, align 4, !tbaa !21
  store i32 %10, i32* %3, align 4, !tbaa !191
  %14 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !192
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = add i32 %9, %8
  %19 = and i32 %18, 3
  store i32 %19, i32* %14, align 4, !tbaa !192
  br label %20

20:                                               ; preds = %17, %2
  store i8 0, i8* %5, align 4, !tbaa !189
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @i_ring_pop(%struct.I_ring* nocapture noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4, !tbaa !189, !range !42
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @abort() #42
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !191
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !21
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !190
  store i32 %13, i32* %10, align 4, !tbaa !21
  %14 = load i32, i32* %7, align 4, !tbaa !191
  %15 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !192
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i8 1, i8* %2, align 4, !tbaa !189
  br label %22

19:                                               ; preds = %6
  %20 = add i32 %14, 3
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4, !tbaa !191
  br label %22

22:                                               ; preds = %19, %18
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @next_prime(i64 noundef %0) local_unnamed_addr #29 {
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
  br i1 %23, label %24, label %7, !llvm.loop !193

24:                                               ; preds = %20, %14, %1
  %25 = phi i64 [ -1, %1 ], [ %8, %14 ], [ %21, %20 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @openat_safer(i32 noundef %0, i8* noundef %1, i32 noundef %2, ...) local_unnamed_addr #12 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = and i32 %2, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #40
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %10, 8
  store i32 %13, i32* %9, align 8
  %14 = icmp ult i32 %10, -7
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  br label %24

20:                                               ; preds = %12, %7
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i8* [ %19, %15 ], [ %22, %20 ]
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 8
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #40
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i32 [ %27, %24 ], [ 0, %3 ]
  %30 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %29) #40
  %31 = call i32 @fd_safer(i32 noundef %30) #40
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.__dirstream* @opendirat(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #12 {
  %5 = or i32 %2, 542976
  %6 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %0, i8* noundef %1, i32 noundef %5) #40
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = tail call %struct.__dirstream* @fdopendir(i32 noundef %6) #40
  %10 = icmp eq %struct.__dirstream* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 %6, i32* %3, align 4, !tbaa !21
  br label %16

12:                                               ; preds = %8
  %13 = tail call i32* @__errno_location() #43
  %14 = load i32, i32* %13, align 4, !tbaa !21
  %15 = tail call i32 @close(i32 noundef %6) #40
  store i32 %14, i32* %13, align 4, !tbaa !21
  br label %16

16:                                               ; preds = %11, %12, %4
  %17 = phi %struct.__dirstream* [ null, %4 ], [ null, %12 ], [ %9, %11 ]
  ret %struct.__dirstream* %17
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #32 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #41
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
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i64 0, i64 0), i64 7) #40
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.189, i64 0, i64 0), i64 noundef 3) #41
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

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #40
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #40
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #40
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #40
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #40
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #43
  %3 = load i32, i32* %2, align 4, !tbaa !21
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #46
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !21
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #16 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !194
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #31 {
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
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #31 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !196
  store i32 %1, i32* %5, align 4, !tbaa !196
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !194
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !197
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !198
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #43
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !196
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !197
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !198
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
  %17 = tail call i64 @__ctype_get_mb_cur_max() #40
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
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.203, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.202, i64 0, i64 0), i32 noundef 5) #40
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.202, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #40
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #40
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #40
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.203, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0), i32 noundef 5) #40
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #40
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #40
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #40
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
  br i1 %96, label %97, label %85, !llvm.loop !199

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #41
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
  call void @abort() #42
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.204, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.205, i64 0, i64 0), %102 ]
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
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #41
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #40
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
  %300 = tail call i16** @__ctype_b_loc() #43
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #40
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #41
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #40
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #40
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #40
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
  br i1 %328, label %348, label %319, !llvm.loop !200

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
  br i1 %339, label %340, label %332, !llvm.loop !201

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !21
  %342 = call i32 @iswprint(i32 noundef %341) #40
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #40
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #40
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #40
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
  br label %132, !llvm.loop !202

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
  br i1 %630, label %631, label %619, !llvm.loop !203

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
  %6 = tail call i32* @__errno_location() #43
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !196
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !194
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !197
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !198
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #40
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #47
  %21 = load i32, i32* %11, align 8, !tbaa !194
  %22 = load i8*, i8** %14, align 8, !tbaa !197
  %23 = load i8*, i8** %16, align 8, !tbaa !198
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #40
  store i32 %7, i32* %6, align 4, !tbaa !21
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #43
  %8 = load i32, i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !196
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !194
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !197
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !198
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #47
  %24 = load i32, i32* %14, align 8, !tbaa !194
  %25 = load i8*, i8** %17, align 8, !tbaa !197
  %26 = load i8*, i8** %19, align 8, !tbaa !198
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !21
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !43
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
  %8 = load i8*, i8** %7, align 8, !tbaa !204
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !204
  tail call void @free(i8* noundef %13) #40
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !206

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #40
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !207
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !204
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #40
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
  %6 = tail call i32* @__errno_location() #43
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #40
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !43
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #40
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !208
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !43
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #40
  %34 = load i64, i64* %5, align 8, !tbaa !43
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #40
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !207
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !204
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !196
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !194
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !197
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !198
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !207
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #40
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #47
  store i8* %60, i8** %41, align 8, !tbaa !204
  %61 = load i32, i32* %46, align 8, !tbaa !194
  %62 = load i8*, i8** %49, align 8, !tbaa !197
  %63 = load i8*, i8** %51, align 8, !tbaa !198
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
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #40
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #40, !alias.scope !209
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #42, !noalias !209
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !194, !alias.scope !209
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #40
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #40, !alias.scope !212
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #42, !noalias !212
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !194, !alias.scope !212
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #40
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215) #40
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #40, !alias.scope !215
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #42, !noalias !215
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !194, !alias.scope !215
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #40
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218) #40
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #40, !alias.scope !218
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #42, !noalias !218
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !194, !alias.scope !218
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #40
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !221
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
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #40
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #40, !tbaa.struct !221
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
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #40
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #40, !tbaa.struct !221
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !21
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !21
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #40
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #40, !tbaa.struct !221
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !21
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #40
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #40
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #42, !noalias !222
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !221
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !21
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !21
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #40
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #40, !tbaa.struct !221
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !194
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #42
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !197
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !198
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #40
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !221
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !194
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #42
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !197
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !198
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #40
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #40, !tbaa.struct !221
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !194
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #42
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !197
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !198
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #40
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #40, !tbaa.struct !221
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !194
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #42
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !197
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !198
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #40
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #40
  ret i8* %2
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 {
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
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #40
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #43
  store i32 12, i32* %14, align 4, !tbaa !21
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull writeonly %0) local_unnamed_addr #21 {
  %2 = alloca %struct.stat, align 16
  %3 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #40
  %4 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i64 0, i64 0), %struct.stat* noundef nonnull %2) #40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !tbaa !43
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %10 = bitcast %struct.dev_ino* %0 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %10, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi %struct.dev_ino* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #40
  ret %struct.dev_ino* %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #12 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #40
  %5 = tail call i32* @__errno_location() #43
  %6 = load i32, i32* %5, align 4, !tbaa !21
  %7 = tail call i32 @close(i32 noundef %0) #40
  store i32 %6, i32* %5, align 4, !tbaa !21
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.225, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #40
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.226, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #40
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.228, i64 0, i64 0), i32 noundef 5) #40
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #40
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.229, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.230, i64 0, i64 0), i32 noundef 5) #40
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.231, i64 0, i64 0)) #40
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.229, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.232, i64 0, i64 0), i32 noundef 5) #40
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #40
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.233, i64 0, i64 0), i32 noundef 5) #40
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #40
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.234, i64 0, i64 0), i32 noundef 5) #40
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #40
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.235, i64 0, i64 0), i32 noundef 5) #40
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #40
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.236, i64 0, i64 0), i32 noundef 5) #40
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #40
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.237, i64 0, i64 0), i32 noundef 5) #40
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
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #40
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.238, i64 0, i64 0), i32 noundef 5) #40
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
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #40
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.239, i64 0, i64 0), i32 noundef 5) #40
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
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #40
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.240, i64 0, i64 0), i32 noundef 5) #40
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
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #40
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.241, i64 0, i64 0), i32 noundef 5) #40
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
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #40
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
  br i1 %10, label %12, label %6, !llvm.loop !225

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #40
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
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #40
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #40
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.229, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.246, i64 0, i64 0), i32 noundef 5) #40
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.247, i64 0, i64 0)) #40
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.248, i64 0, i64 0), i32 noundef 5) #40
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.250, i64 0, i64 0)) #40
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.251, i64 0, i64 0), i32 noundef 5) #40
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.252, i64 0, i64 0)) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i1 @can_write_any_file() local_unnamed_addr #12 {
  %1 = load i1, i1* @can_write_any_file.initialized, align 1
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = load i8, i8* @can_write_any_file.can_write, align 4, !tbaa !73, !range !42
  br label %8

4:                                                ; preds = %0
  %5 = tail call i32 @geteuid() #40
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* @can_write_any_file.can_write, align 4, !tbaa !73
  store i1 true, i1* @can_write_any_file.initialized, align 1
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i8 [ %3, %2 ], [ %7, %4 ]
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #40
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #40
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #40
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #40
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #40
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 {
  %3 = load i64, i64* %1, align 8, !tbaa !43
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #40
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #42
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #40
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #42
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !43
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8, !tbaa !43
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
  tail call void @xalloc_die() #42
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #40
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #42
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !43
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 {
  %6 = load i64, i64* %1, align 8, !tbaa !43
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
  store i64 0, i64* %1, align 8, !tbaa !43
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
  tail call void @xalloc_die() #42
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #40
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #42
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !43
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #40
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #40
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #40
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !23
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #41
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #42
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !21
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.265, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.266, i64 0, i64 0), i32 noundef 5) #40
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.267, i64 0, i64 0), i8* noundef %2) #40
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #42
  unreachable
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.FTS* @xfts_open(i8** noundef nonnull %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) local_unnamed_addr #12 {
  %4 = or i32 %1, 512
  %5 = tail call %struct.FTS* @rpl_fts_open(i8** noundef nonnull %0, i32 noundef %4, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) #40
  %6 = icmp eq %struct.FTS* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call i32* @__errno_location() #43
  %9 = load i32, i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.270, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.271, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #42
  unreachable

12:                                               ; preds = %7
  tail call void @xalloc_die() #42
  unreachable

13:                                               ; preds = %3
  ret %struct.FTS* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @cycle_warning_required(%struct.FTS* nocapture noundef nonnull readonly %0, %struct._ftsent* nocapture noundef nonnull readonly %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8, !tbaa !87
  %5 = and i32 %4, 17
  switch i32 %5, label %10 [
    i32 16, label %11
    i32 17, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %8 = load i64, i64* %7, align 8, !tbaa !43
  %9 = icmp ne i64 %8, 0
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10, %6
  %12 = phi i1 [ %9, %6 ], [ true, %2 ], [ false, %10 ]
  ret i1 %12
}

; Function Attrs: nounwind uwtable
define dso_local i1 @yesno() local_unnamed_addr #12 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #40
  store i8* null, i8** %1, align 8, !tbaa !12
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #40
  store i64 0, i64* %2, align 8, !tbaa !43
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %6 = call i64 @__getdelim(i8** noundef nonnull %1, i64* noundef nonnull %2, i32 noundef 10, %struct._IO_FILE* noundef %5) #40
  %7 = icmp slt i64 %6, 1
  br i1 %7, label %20, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** %1, align 8, !tbaa !12
  %10 = add nsw i64 %6, -1
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !23
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  store i8 0, i8* %11, align 1, !tbaa !23
  %15 = load i8*, i8** %1, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i8* [ %15, %14 ], [ %9, %8 ]
  %18 = call i32 @rpmatch(i8* noundef %17) #40
  %19 = icmp sgt i32 %18, 0
  br label %20

20:                                               ; preds = %0, %16
  %21 = phi i1 [ %19, %16 ], [ false, %0 ]
  %22 = load i8*, i8** %1, align 8, !tbaa !12
  call void @free(i8* noundef %22) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #40
  ret i1 %21
}

declare i64 @__getdelim(i8** noundef, i64* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rpmatch(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @c_file_type(%struct.stat* nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8, !tbaa !59
  %4 = and i32 %3, 61440
  %5 = add nsw i32 %4, -4096
  %6 = lshr exact i32 %5, 12
  switch i32 %6, label %17 [
    i32 7, label %7
    i32 3, label %18
    i32 9, label %12
    i32 5, label %13
    i32 1, label %14
    i32 0, label %15
    i32 11, label %16
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 8
  %9 = load i64, i64* %8, align 8, !tbaa !91
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.276, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.277, i64 0, i64 0)
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17, %16, %15, %14, %13, %12, %7
  %19 = phi i8* [ %11, %7 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.278, i64 0, i64 0), %12 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7.279, i64 0, i64 0), %13 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.280, i64 0, i64 0), %14 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.281, i64 0, i64 0), %15 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.282, i64 0, i64 0), %16 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11.283, i64 0, i64 0), %17 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.284, i64 0, i64 0), %1 ]
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #40
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !79
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #40
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #43
  %16 = load i32, i32* %15, align 4, !tbaa !21
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #43
  store i32 0, i32* %21, align 4, !tbaa !21
  br label %22

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cycle_check_init(%struct.cycle_check_state* nocapture noundef writeonly %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  store i64 0, i64* %2, align 8, !tbaa !111
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  store i32 9827862, i32* %3, align 8, !tbaa !226
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i1 @cycle_check(%struct.cycle_check_state* nocapture noundef %0, %struct.stat* nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !226
  %5 = icmp eq i32 %4, 9827862
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.292, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #42
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !111
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %17 = load i64, i64* %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !114
  %20 = icmp eq i64 %13, %15
  %21 = icmp eq i64 %17, %19
  %22 = and i1 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %11, %7
  %24 = add i64 %9, 1
  store i64 %24, i64* %8, align 8, !tbaa !111
  %25 = tail call i64 @llvm.ctpop.i64(i64 %24) #40, !range !227
  %26 = icmp ult i64 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = bitcast %struct.stat* %1 to <2 x i64>*
  %31 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !43
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %33 = bitcast %struct.cycle_check_state* %0 to <2 x i64>*
  store <2 x i64> %32, <2 x i64>* %33, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %23, %29, %27, %11
  %35 = phi i1 [ true, %11 ], [ true, %27 ], [ false, %29 ], [ false, %23 ]
  ret i1 %35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #40
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #40
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #40
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #40
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #43
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
declare noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #40
  call void @llvm.va_start(i8* nonnull %4)
  switch i32 %1, label %103 [
    i32 0, label %5
    i32 1030, label %26
    i32 1, label %80
    i32 3, label %80
    i32 1025, label %80
    i32 9, label %80
    i32 1032, label %80
    i32 1034, label %80
    i32 11, label %80
    i32 1033, label %82
    i32 1031, label %82
    i32 10, label %82
    i32 1026, label %82
    i32 2, label %82
    i32 4, label %82
    i32 1024, label %82
    i32 8, label %82
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8
  store i32 %10, i32* %6, align 8
  %11 = icmp ult i32 %7, -7
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  br label %21

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #40
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8
  store i32 %31, i32* %27, align 8
  %32 = icmp ult i32 %28, -7
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = sext i32 %28 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  br label %42

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  store i8* %41, i8** %39, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !21
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #40
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #43
  %53 = load i32, i32* %52, align 4, !tbaa !21
  %54 = icmp eq i32 %53, 22
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !21
  br label %124

56:                                               ; preds = %51
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #40
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %124

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !21
  br label %64

60:                                               ; preds = %42
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #40
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ]
  %67 = icmp sgt i32 %66, -1
  %68 = select i1 %67, i1 %65, i1 false
  br i1 %68, label %69, label %124

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #40
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = or i32 %70, 1
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #40
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %124

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #43
  %78 = load i32, i32* %77, align 4, !tbaa !21
  %79 = call i32 @close(i32 noundef %66) #40
  store i32 %78, i32* %77, align 4, !tbaa !21
  br label %124

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40
  br label %124

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8
  store i32 %87, i32* %83, align 8
  %88 = icmp ult i32 %84, -7
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = sext i32 %84 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  br label %98

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 8
  store i8* %97, i8** %95, align 8
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #40
  br label %124

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8
  store i32 %108, i32* %104, align 8
  %109 = icmp ult i32 %105, -7
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = sext i32 %105 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  br label %119

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 8
  store i8* %118, i8** %116, align 8
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #40
  br label %124

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #40
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(i8* nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #12 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #40
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 8
  store i32 %12, i32* %8, align 8
  %13 = icmp ult i32 %9, -7
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  br label %23

19:                                               ; preds = %11, %6
  %20 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %22, i8** %20, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i8* [ %18, %14 ], [ %21, %19 ]
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 8
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #40
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %2 ]
  %29 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %1, i32 noundef %28) #40
  %30 = call i32 @fd_safer(i32 noundef %29) #40
  ret i32 %30
}

; Function Attrs: nofree
declare noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.301, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #40
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #41
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
  tail call void @abort() #42
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #40
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
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #39

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #40
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #40
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.306, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.307, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #40
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #40
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #40
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #40
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #40
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !23
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #41
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40
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
attributes #14 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #34 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #36 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #37 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #38 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #39 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #40 = { nounwind }
attributes #41 = { nounwind readonly willreturn }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind readnone willreturn }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!28 = !{!29, !13, i64 16}
!29 = !{!"rm_options", !30, i64 0, !14, i64 4, !30, i64 8, !30, i64 9, !30, i64 10, !13, i64 16, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27}
!30 = !{!"_Bool", !14, i64 0}
!31 = !{!29, !30, i64 27}
!32 = distinct !{!32, !19}
!33 = !{!29, !30, i64 26}
!34 = !{!29, !30, i64 25}
!35 = !{!29, !30, i64 24}
!36 = !{!29, !30, i64 8}
!37 = !{!29, !14, i64 4}
!38 = !{!29, !30, i64 0}
!39 = !{!29, !30, i64 9}
!40 = !{!29, !30, i64 10}
!41 = distinct !{!41, !19}
!42 = !{i8 0, i8 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !14, i64 0}
!45 = !{!46, !44, i64 0}
!46 = !{!"stat", !44, i64 0, !44, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !44, i64 32, !44, i64 40, !44, i64 48, !22, i64 56, !22, i64 60, !44, i64 64, !47, i64 72, !47, i64 88, !47, i64 104, !14, i64 120}
!47 = !{!"timespec", !44, i64 0, !44, i64 8}
!48 = !{!49, !44, i64 8}
!49 = !{!"dev_ino", !44, i64 0, !44, i64 8}
!50 = !{!46, !44, i64 8}
!51 = !{!49, !44, i64 0}
!52 = !{!53, !44, i64 24}
!53 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !44, i64 24, !13, i64 32, !22, i64 40, !22, i64 44, !44, i64 48, !44, i64 56, !13, i64 64, !22, i64 72, !13, i64 80, !14, i64 88, !54, i64 96}
!54 = !{!"I_ring", !14, i64 0, !22, i64 16, !22, i64 20, !22, i64 24, !30, i64 28}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = !{!53, !22, i64 44}
!58 = !{!46, !44, i64 80}
!59 = !{!46, !22, i64 16}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = !{!64, !13, i64 40}
!64 = !{!"_IO_FILE", !22, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 116, !44, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !44, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !44, i64 184, !22, i64 192, !14, i64 196}
!65 = !{!64, !13, i64 48}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = !{!30, !30, i64 0}
!74 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !21, i64 28, i64 4, !21}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"vfprintf.inline: argument 0"}
!77 = distinct !{!77, !"vfprintf.inline"}
!78 = distinct !{!78, !77, !"vfprintf.inline: argument 1"}
!79 = !{!64, !22, i64 0}
!80 = !{!64, !13, i64 32}
!81 = !{!64, !13, i64 16}
!82 = !{!64, !13, i64 8}
!83 = !{!64, !13, i64 88}
!84 = !{!64, !13, i64 72}
!85 = !{!64, !44, i64 144}
!86 = !{!53, !13, i64 64}
!87 = !{!53, !22, i64 72}
!88 = distinct !{!88, !19}
!89 = !{!53, !44, i64 48}
!90 = !{!53, !13, i64 32}
!91 = !{!46, !44, i64 48}
!92 = distinct !{!92, !19}
!93 = !{!53, !13, i64 0}
!94 = !{!53, !22, i64 40}
!95 = distinct !{!95, !19}
!96 = !{!53, !44, i64 56}
!97 = !{!53, !13, i64 16}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = !{!101, !44, i64 8}
!101 = !{!"Active_dir", !44, i64 0, !44, i64 8, !13, i64 16}
!102 = !{!101, !44, i64 0}
!103 = distinct !{!103, !19}
!104 = !{!53, !13, i64 8}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = !{!53, !13, i64 80}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = !{!101, !13, i64 16}
!111 = !{!112, !44, i64 16}
!112 = !{!"cycle_check_state", !49, i64 0, !44, i64 16, !22, i64 24}
!113 = !{!112, !44, i64 8}
!114 = !{!112, !44, i64 0}
!115 = distinct !{!115, !19}
!116 = !{!46, !22, i64 20}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = !{!121, !44, i64 0}
!121 = !{!"dirent", !44, i64 0, !44, i64 8, !25, i64 16, !14, i64 18, !14, i64 19}
!122 = !{!121, !14, i64 18}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = !{!129, !44, i64 0}
!129 = !{!"dev_type", !44, i64 0, !44, i64 8}
!130 = !{!129, !44, i64 8}
!131 = !{!132, !44, i64 0}
!132 = !{!"statfs", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !133, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !14, i64 88}
!133 = !{!"", !14, i64 0}
!134 = distinct !{!134, !19}
!135 = !{!136, !44, i64 16}
!136 = !{!"hash_table", !13, i64 0, !13, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!137 = !{!136, !44, i64 24}
!138 = !{!136, !44, i64 32}
!139 = !{!136, !13, i64 0}
!140 = !{!136, !13, i64 8}
!141 = !{!142, !13, i64 0}
!142 = !{!"hash_entry", !13, i64 0, !13, i64 8}
!143 = !{!142, !13, i64 8}
!144 = distinct !{!144, !19}
!145 = distinct !{!145, !19}
!146 = distinct !{!146, !19}
!147 = distinct !{!147, !19}
!148 = distinct !{!148, !19}
!149 = distinct !{!149, !19}
!150 = !{!136, !13, i64 48}
!151 = !{!136, !13, i64 56}
!152 = distinct !{!152, !19}
!153 = distinct !{!153, !19}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !19}
!158 = distinct !{!158, !19}
!159 = !{i64 0, i64 4, !160, i64 4, i64 4, !160, i64 8, i64 4, !160, i64 12, i64 4, !160, i64 16, i64 1, !73}
!160 = !{!161, !161, i64 0}
!161 = !{!"float", !14, i64 0}
!162 = !{!136, !13, i64 40}
!163 = !{!164, !161, i64 8}
!164 = !{!"hash_tuning", !161, i64 0, !161, i64 4, !161, i64 8, !161, i64 12, !30, i64 16}
!165 = !{!164, !161, i64 12}
!166 = !{!164, !161, i64 0}
!167 = !{!164, !161, i64 4}
!168 = !{!164, !30, i64 16}
!169 = !{!136, !13, i64 64}
!170 = !{!136, !13, i64 72}
!171 = distinct !{!171, !19}
!172 = distinct !{!172, !19, !173}
!173 = !{!"llvm.loop.unswitch.partial.disable"}
!174 = distinct !{!174, !19}
!175 = distinct !{!175, !19}
!176 = distinct !{!176, !19}
!177 = distinct !{!177, !19}
!178 = distinct !{!178, !19}
!179 = distinct !{!179, !19}
!180 = distinct !{!180, !19}
!181 = distinct !{!181, !19}
!182 = distinct !{!182, !19}
!183 = distinct !{!183, !19}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = !{!54, !30, i64 28}
!190 = !{!54, !22, i64 16}
!191 = !{!54, !22, i64 20}
!192 = !{!54, !22, i64 24}
!193 = distinct !{!193, !19}
!194 = !{!195, !14, i64 0}
!195 = !{!"quoting_options", !14, i64 0, !22, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!196 = !{!195, !22, i64 4}
!197 = !{!195, !13, i64 40}
!198 = !{!195, !13, i64 48}
!199 = distinct !{!199, !19}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !19}
!202 = distinct !{!202, !19}
!203 = distinct !{!203, !19}
!204 = !{!205, !13, i64 8}
!205 = !{!"slotvec", !44, i64 0, !13, i64 8}
!206 = distinct !{!206, !19}
!207 = !{!205, !44, i64 0}
!208 = !{i64 0, i64 8, !43, i64 8, i64 8, !12}
!209 = !{!210}
!210 = distinct !{!210, !211, !"quoting_options_from_style: argument 0"}
!211 = distinct !{!211, !"quoting_options_from_style"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"quoting_options_from_style: argument 0"}
!214 = distinct !{!214, !"quoting_options_from_style"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"quoting_options_from_style: argument 0"}
!217 = distinct !{!217, !"quoting_options_from_style"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"quoting_options_from_style: argument 0"}
!220 = distinct !{!220, !"quoting_options_from_style"}
!221 = !{i64 0, i64 4, !23, i64 4, i64 4, !21, i64 8, i64 32, !23, i64 40, i64 8, !12, i64 48, i64 8, !12}
!222 = !{!223}
!223 = distinct !{!223, !224, !"quoting_options_from_style: argument 0"}
!224 = distinct !{!224, !"quoting_options_from_style"}
!225 = distinct !{!225, !19}
!226 = !{!112, !22, i64 24}
!227 = !{i64 0, i64 65}
