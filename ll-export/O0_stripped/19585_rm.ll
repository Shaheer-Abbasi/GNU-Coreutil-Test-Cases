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
@optarg = external global i8*, align 8
@interactive_types = internal constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 2], align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"--interactive\00", align 1
@interactive_args = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* null], align 8
@optind = external global i32, align 4
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
@oputs_.help_no_sgr = internal global i32 -1, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
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
@.str.95 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.1.96 = private unnamed_addr constant [88 x i8] c"((s) == RM_OK || (s) == RM_USER_ACCEPTED || (s) == RM_USER_DECLINED || (s) == RM_ERROR)\00", align 1
@.str.2.97 = private unnamed_addr constant [13 x i8] c"src/remove.c\00", align 1
@__PRETTY_FUNCTION__.rm = private unnamed_addr constant [60 x i8] c"enum RM_status rm(char *const *, const struct rm_options *)\00", align 1
@.str.3.98 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.4.99 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.5.100 = private unnamed_addr constant [51 x i8] c"refusing to remove %s or %s directory: skipping %s\00", align 1
@.str.6.101 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7.102 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8.103 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9.104 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.10.105 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.11.106 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.12.107 = private unnamed_addr constant [31 x i8] c"failed to stat %s: skipping %s\00", align 1
@.str.13.108 = private unnamed_addr constant [46 x i8] c"skipping %s, since it's on a different device\00", align 1
@.str.14.109 = private unnamed_addr constant [37 x i8] c"and --preserve-root=all is in effect\00", align 1
@.str.15.110 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.16.111 = private unnamed_addr constant [21 x i8] c"traversal failed: %s\00", align 1
@.str.17.112 = private unnamed_addr constant [56 x i8] c"unexpected failure: fts_info=%d: %s\0Aplease report to %s\00", align 1
@.str.18.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.116 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@.str.20.117 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@.str.21.118 = private unnamed_addr constant [51 x i8] c"%s: attempt removal of inaccessible directory %s? \00", align 1
@.str.22.119 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@.str.23.120 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@.str.24.114 = private unnamed_addr constant [22 x i8] c"removed directory %s\0A\00", align 1
@.str.25.115 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0), align 8
@argmatch_die = dso_local global void ()* @__argmatch_die, align 8
@.str.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.127 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.128 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.129 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.130 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.131 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal global i8* null, align 8
@.str.138 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.139 = private unnamed_addr constant [19 x i8] c"error closing file\00", align 1
@.str.2.140 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@file_name.142 = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.146 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.147 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.148 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.149 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4
@verror_at_line.old_file_name = internal global i8* null, align 8
@verror_at_line.old_line_number = internal global i32 0, align 4
@.str.1.155 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.156 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.157 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4
@.str.4.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.151 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.152 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.174 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.179 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.185 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.186 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.187 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@program_name = dso_local global i8* null, align 8
@.str.220 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.221 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.225 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.226 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.227 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.228 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.229 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.230 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.231 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.232 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.233 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.225, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.226, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.227, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.229, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.230, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.231, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.232, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.233, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.234 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.235 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.236 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.237 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.256 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.262 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.263 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.264 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.265 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.266 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.267 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.268 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.269 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.270 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.271 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.272 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.273 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.274 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.275 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.276 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.277 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.282 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.283 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.284 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.285 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.286 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.287 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.288 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@can_write_any_file.initialized = internal global i8 0, align 1
@can_write_any_file.can_write = internal global i8 0, align 1
@exit_failure = dso_local global i32 1, align 4
@.str.303 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.301 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.302 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.306 = private unnamed_addr constant [29 x i8] c"(*__errno_location ()) != 22\00", align 1
@.str.1.307 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.314 = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@.str.1.315 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@.str.2.316 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.3.317 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@.str.4.318 = private unnamed_addr constant [14 x i8] c"message queue\00", align 1
@.str.5.319 = private unnamed_addr constant [10 x i8] c"semaphore\00", align 1
@.str.6.320 = private unnamed_addr constant [21 x i8] c"shared memory object\00", align 1
@.str.7.321 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@.str.8.322 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@.str.9.323 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.10.324 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.11.325 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.335 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4
@.str.352 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.359 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.360 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19
  %9 = load i8*, i8** @program_name, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9)
  br label %11

11:                                               ; preds = %6
  br label %44

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #19
  %14 = load i8*, i8** @program_name, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14)
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17)
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19)
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20)
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([190 x i8], [190 x i8]* @.str.6, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21)
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([134 x i8], [134 x i8]* @.str.7, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22)
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([198 x i8], [198 x i8]* @.str.8, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23)
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24)
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([167 x i8], [167 x i8]* @.str.10, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %25)
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %26)
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %27)
  %28 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %28)
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29)
  %30 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0)) #19
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %30)
  %31 = call i8* @gettext(i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.16, i64 0, i64 0)) #19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 @fputs_unlocked(i8* noundef %31, %struct._IO_FILE* noundef %32)
  %34 = call i8* @gettext(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.17, i64 0, i64 0)) #19
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35)
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([122 x i8], [122 x i8]* @.str.18, i64 0, i64 0)) #19
  %38 = load i8*, i8** @program_name, align 8
  %39 = load i8*, i8** @program_name, align 8
  %40 = call i32 (i8*, ...) @printf(i8* noundef %37, i8* noundef %38, i8* noundef %39)
  %41 = call i8* @gettext(i8* noundef getelementptr inbounds ([213 x i8], [213 x i8]* @.str.19, i64 0, i64 0)) #19
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @fputs_unlocked(i8* noundef %41, %struct._IO_FILE* noundef %42)
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %12, %11
  %45 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %45) #20
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
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #19
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
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
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
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0)) #21
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21
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
  %64 = call i16** @__ctype_b_loc() #22
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
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)) #21
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
  %120 = call i16** @__ctype_b_loc() #22
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
  %137 = call i16** @__ctype_b_loc() #22
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
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %232

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0))
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %230

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %228

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %226

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %224

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0))
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %222

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0))
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %220

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0))
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %218

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0))
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %216

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0))
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %214

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %211 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %207 ], [ %215, %214 ]
  br label %218

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %203 ], [ %217, %216 ]
  br label %220

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %199 ], [ %219, %218 ]
  br label %222

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %195 ], [ %221, %220 ]
  br label %224

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %191 ], [ %223, %222 ]
  br label %226

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), %187 ], [ %225, %224 ]
  br label %228

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %183 ], [ %227, %226 ]
  br label %230

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %179 ], [ %229, %228 ]
  br label %232

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %175 ], [ %231, %230 ]
  store i8* %233, i8** %13, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i64 noundef 6) #21
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i64 noundef 9) #21
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = load i64, i64* %11, align 8
  %245 = trunc i64 %244 to i32
  %246 = load i8*, i8** %8, align 8
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246)
  br label %254

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8
  %250 = load i64, i64* %11, align 8
  %251 = trunc i64 %250 to i32
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252)
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* noundef %255)
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* noundef %257)
  %259 = load i8*, i8** %7, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265)
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* noundef %267)
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* noundef %269)
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
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 noundef 3) #21
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.74, i64 0, i64 0)) #19
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i8*, i8** %2, align 8
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %52 ], [ %54, %53 ]
  store i8* %56, i8** %7, align 8
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0)) #19
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i64 0, i64 0), i8* noundef %58)
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.76, i64 0, i64 0)) #19
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = icmp eq i8* %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
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
  %7 = alloca %struct.rm_options, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 1, i8* %6, align 1
  store i8 0, i8* %8, align 1
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  call void @set_program_name(i8* noundef %16)
  %17 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #19
  %18 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #19
  %19 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #19
  %20 = call i32 @atexit(void ()* noundef @close_stdin) #19
  call void @rm_option_init(%struct.rm_options* noundef %7)
  %21 = call i32 @priv_set_remove_linkdir()
  br label %22

22:                                               ; preds = %105, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt_long(i32 noundef %23, i8** noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_opts, i64 0, i64 0), i32* noundef null) #19
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %106

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %102 [
    i32 100, label %29
    i32 102, label %31
    i32 105, label %34
    i32 73, label %37
    i32 114, label %40
    i32 82, label %40
    i32 256, label %42
    i32 257, label %63
    i32 258, label %65
    i32 259, label %76
    i32 260, label %90
    i32 118, label %92
    i32 -2, label %94
    i32 -3, label %95
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 4
  store i8 1, i8* %30, align 2
  br label %105

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 5, i32* %32, align 4
  %33 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  store i8 1, i8* %33, align 8
  store i8 0, i8* %8, align 1
  br label %105

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 3, i32* %35, align 4
  %36 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  store i8 0, i8* %36, align 8
  store i8 0, i8* %8, align 1
  br label %105

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  store i8 0, i8* %39, align 8
  store i8 1, i8* %8, align 1
  br label %105

40:                                               ; preds = %27, %27
  %41 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 3
  store i8 1, i8* %41, align 1
  br label %105

42:                                               ; preds = %27
  %43 = load i8*, i8** @optarg, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8*, i8** @optarg, align 8
  %47 = load void ()*, void ()** @argmatch_die, align 8
  %48 = call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* noundef %46, i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @interactive_args, i64 0, i64 0), i8* noundef bitcast ([6 x i32]* @interactive_types to i8*), i64 noundef 4, void ()* noundef %47, i1 noundef true)
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* @interactive_types, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %52

51:                                               ; preds = %42
  store i32 2, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %62 [
    i32 0, label %54
    i32 1, label %56
    i32 2, label %59
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 5, i32* %55, align 4
  store i8 0, i8* %8, align 1
  br label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 4, i32* %57, align 4
  %58 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  store i8 0, i8* %58, align 8
  store i8 1, i8* %8, align 1
  br label %62

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 1
  store i32 3, i32* %60, align 4
  %61 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  store i8 0, i8* %61, align 8
  store i8 0, i8* %8, align 1
  br label %62

62:                                               ; preds = %52, %59, %56, %54
  br label %105

63:                                               ; preds = %27
  %64 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 2
  store i8 1, i8* %64, align 8
  br label %105

65:                                               ; preds = %27
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* @optind, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i1 @streq(i8* noundef %71, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %74)
  unreachable

75:                                               ; preds = %65
  store i8 0, i8* %6, align 1
  br label %105

76:                                               ; preds = %27
  %77 = load i8*, i8** @optarg, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i1 @streq(i8* noundef %80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 6
  store i8 1, i8* %83, align 8
  br label %88

84:                                               ; preds = %79
  %85 = call i8* @gettext(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0)) #19
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %86)
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %85, i8* noundef %87)
  unreachable

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %76
  store i8 1, i8* %6, align 1
  br label %105

90:                                               ; preds = %27
  %91 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 7
  store i8 1, i8* %91, align 1
  br label %105

92:                                               ; preds = %27
  %93 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 8
  store i8 1, i8* %93, align 2
  br label %105

94:                                               ; preds = %27
  call void @usage(i32 noundef 0) #23
  unreachable

95:                                               ; preds = %27
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = load i8*, i8** @Version, align 8
  %98 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %99 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %100 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %101 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef %97, i8* noundef %98, i8* noundef %99, i8* noundef %100, i8* noundef %101, i8* noundef null)
  call void @exit(i32 noundef 0) #20
  unreachable

102:                                              ; preds = %27
  %103 = load i32, i32* %4, align 4
  %104 = load i8**, i8*** %5, align 8
  call void @diagnose_leading_hyphen(i32 noundef %103, i8** noundef %104)
  call void @usage(i32 noundef 1) #23
  unreachable

105:                                              ; preds = %92, %90, %89, %75, %63, %62, %40, %37, %34, %31, %29
  br label %22, !llvm.loop !16

106:                                              ; preds = %22
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @optind, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 0
  %112 = load i8, i8* %111, align 8
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %196

115:                                              ; preds = %110
  %116 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %116)
  call void @usage(i32 noundef 1) #23
  unreachable

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 3
  %119 = load i8, i8* %118, align 1
  %120 = trunc i8 %119 to i1
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i8, i8* %6, align 1
  %123 = trunc i8 %122 to i1
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = call %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef @main.dev_ino_buf)
  %126 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 5
  store %struct.dev_ino* %125, %struct.dev_ino** %126, align 8
  %127 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 5
  %128 = load %struct.dev_ino*, %struct.dev_ino** %127, align 8
  %129 = icmp eq %struct.dev_ino* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = call i32* @__errno_location() #22
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0)) #19
  %134 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %132, i8* noundef %133, i8* noundef %134)
  unreachable

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %121, %117
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @optind, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %11, align 8
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* @optind, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8** %144, i8*** %12, align 8
  %145 = load i8, i8* %8, align 1
  %146 = trunc i8 %145 to i1
  br i1 %146, label %147, label %175

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 3
  %149 = load i8, i8* %148, align 1
  %150 = trunc i8 %149 to i1
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %11, align 8
  %153 = icmp ult i64 3, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %151, %147
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %156 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 3
  %157 = load i8, i8* %156, align 1
  %158 = trunc i8 %157 to i1
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i64, i64* %11, align 8
  %161 = call i64 @select_plural(i64 noundef %160)
  %162 = call i8* @ngettext(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i64 noundef %161) #19
  br label %167

163:                                              ; preds = %154
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @select_plural(i64 noundef %164)
  %166 = call i8* @ngettext(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i64 noundef %165) #19
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i8* [ %162, %159 ], [ %166, %163 ]
  %169 = load i8*, i8** @program_name, align 8
  %170 = load i64, i64* %11, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef %168, i8* noundef %169, i64 noundef %170)
  %172 = call i1 @yesno()
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %196

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %151, %136
  %176 = load i8**, i8*** %12, align 8
  %177 = call i32 @rm(i8** noundef %176, %struct.rm_options* noundef %7)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %189, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %13, align 4
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %184, 4
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %13, align 4
  %188 = icmp eq i32 %187, 5
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %183, %180, %175
  br label %191

190:                                              ; preds = %186
  call void @__assert_fail(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #20
  unreachable

191:                                              ; preds = %189
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, 5
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 0
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %191, %173, %114
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_option_init(%struct.rm_options* noundef %0) #4 {
  %2 = alloca %struct.rm_options*, align 8
  store %struct.rm_options* %0, %struct.rm_options** %2, align 8
  %3 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %4 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i32 0, i32 0
  store i8 0, i8* %4, align 8
  %5 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %6 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %5, i32 0, i32 1
  store i32 4, i32* %6, align 4
  %7 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %8 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %7, i32 0, i32 2
  store i8 0, i8* %8, align 8
  %9 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %10 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %9, i32 0, i32 4
  store i8 0, i8* %10, align 2
  %11 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %12 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %11, i32 0, i32 3
  store i8 0, i8* %12, align 1
  %13 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %14 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %13, i32 0, i32 5
  store %struct.dev_ino* null, %struct.dev_ino** %14, align 8
  %15 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %16 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %15, i32 0, i32 6
  store i8 0, i8* %16, align 8
  %17 = call i32 @isatty(i32 noundef 0) #19
  %18 = icmp ne i32 %17, 0
  %19 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %20 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %19, i32 0, i32 7
  %21 = zext i1 %18 to i8
  store i8 %21, i8* %20, align 1
  %22 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %23 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %22, i32 0, i32 8
  store i8 0, i8* %23, align 2
  %24 = load %struct.rm_options*, %struct.rm_options** %2, align 8
  %25 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %24, i32 0, i32 9
  store i8 0, i8* %25, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diagnose_leading_hyphen(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %44

23:                                               ; preds = %12
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @lstat(i8* noundef %30, %struct.stat* noundef %7) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i8* @gettext(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i64 0, i64 0)) #19
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 3, i8* noundef %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %41)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef %35, i8* noundef %38, i8* noundef %40, i8* noundef %42)
  br label %48

44:                                               ; preds = %29, %23, %12
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %8, !llvm.loop !17

48:                                               ; preds = %33, %8
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @select_plural(i64 noundef %0) #4 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ule i64 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = urem i64 %8, 1000000
  %10 = add i64 %9, 1000000
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind
declare i8* @ngettext(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare i32 @lstat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rm(i8** noundef %0, %struct.rm_options* noundef %1) #4 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.rm_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.FTS*, align 8
  %8 = alloca %struct._ftsent*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.rm_options* %1, %struct.rm_options** %4, align 8
  store i32 2, i32* %5, align 4
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %80

13:                                               ; preds = %2
  store i32 536, i32* %6, align 4
  %14 = load %struct.rm_options*, %struct.rm_options** %4, align 8
  %15 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 8
  %17 = trunc i8 %16 to i1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 64
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i8**, i8*** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call noalias nonnull %struct.FTS* @xfts_open(i8** noundef %22, i32 noundef %23, i32 (%struct._ftsent**, %struct._ftsent**)* noundef null)
  store %struct.FTS* %24, %struct.FTS** %7, align 8
  br label %25

25:                                               ; preds = %21, %70
  %26 = load %struct.FTS*, %struct.FTS** %7, align 8
  %27 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %26) #19
  store %struct._ftsent* %27, %struct._ftsent** %8, align 8
  %28 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %29 = icmp eq %struct._ftsent* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = call i32* @__errno_location() #22
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32* @__errno_location() #22
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %36, i8* noundef %37)
  store i32 5, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %71

39:                                               ; preds = %25
  %40 = load %struct.FTS*, %struct.FTS** %7, align 8
  %41 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %42 = load %struct.rm_options*, %struct.rm_options** %4, align 8
  %43 = call i32 @rm_fts(%struct.FTS* noundef %40, %struct._ftsent* noundef %41, %struct.rm_options* noundef %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49, %46, %39
  br label %57

56:                                               ; preds = %52
  call void @__assert_fail(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.rm, i64 0, i64 0)) #20
  unreachable

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %58
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %64, %61
  br label %70

70:                                               ; preds = %69
  br label %25

71:                                               ; preds = %38
  %72 = load %struct.FTS*, %struct.FTS** %7, align 8
  %73 = call i32 @rpl_fts_close(%struct.FTS* noundef %72) #19
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32* @__errno_location() #22
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.98, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %77, i8* noundef %78)
  store i32 5, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_fts(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, %struct.rm_options* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FTS*, align 8
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca %struct.rm_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %5, align 8
  store %struct._ftsent* %1, %struct._ftsent** %6, align 8
  store %struct.rm_options* %2, %struct.rm_options** %7, align 8
  store i32 -2, i32* %8, align 4
  %15 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %15, i32 0, i32 14
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  switch i32 %18, label %288 [
    i32 1, label %19
    i32 8, label %199
    i32 10, label %199
    i32 12, label %199
    i32 13, label %199
    i32 6, label %199
    i32 4, label %199
    i32 11, label %199
    i32 3, label %199
    i32 2, label %267
    i32 7, label %277
  ]

19:                                               ; preds = %3
  %20 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %21 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %20, i32 0, i32 3
  %22 = load i8, i8* %21, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  %25 = load %struct.FTS*, %struct.FTS** %5, align 8
  %26 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %27 = call i32 @rpl_fts_set(%struct.FTS* noundef %25, %struct._ftsent* noundef %26, i32 noundef 4) #19
  %28 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %29 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %28, i32 0, i32 4
  %30 = load i8, i8* %29, align 2
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 2, i32* %4, align 4
  br label %298

33:                                               ; preds = %24
  %34 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.99, i64 0, i64 0)) #19
  %35 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %36 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %35, i32 0, i32 7
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %37)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 21, i8* noundef %34, i8* noundef %38)
  %39 = load %struct.FTS*, %struct.FTS** %5, align 8
  %40 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %39) #19
  store i32 5, i32* %4, align 4
  br label %298

41:                                               ; preds = %19
  %42 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %43 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %42, i32 0, i32 12
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %166

46:                                               ; preds = %41
  %47 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %48 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @last_component(i8* noundef %49) #21
  %51 = call i1 @dot_or_dotdot(i8* noundef %50)
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5.100, i64 0, i64 0)) #19
  %54 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.101, i64 0, i64 0))
  %55 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.102, i64 0, i64 0))
  %56 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %57 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @quotearg_n_style(i32 noundef 2, i32 noundef 4, i8* noundef %58)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %53, i8* noundef %54, i8* noundef %55, i8* noundef %59)
  %60 = load %struct.FTS*, %struct.FTS** %5, align 8
  %61 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %60, %struct._ftsent* noundef %61)
  store i32 5, i32* %4, align 4
  br label %298

62:                                               ; preds = %46
  %63 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %64 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %63, i32 0, i32 5
  %65 = load %struct.dev_ino*, %struct.dev_ino** %64, align 8
  %66 = icmp ne %struct.dev_ino* %65, null
  br i1 %66, label %67, label %116

67:                                               ; preds = %62
  %68 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i32 0, i32 17
  %70 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %69, i64 0, i64 0
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %74 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %73, i32 0, i32 5
  %75 = load %struct.dev_ino*, %struct.dev_ino** %74, align 8
  %76 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %72, %77
  %79 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %80 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %79, i32 0, i32 17
  %81 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %80, i64 0, i64 0
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %85 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %84, i32 0, i32 5
  %86 = load %struct.dev_ino*, %struct.dev_ino** %85, align 8
  %87 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = xor i64 %83, %88
  %90 = or i64 %78, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %95 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %94, i32 0, i32 7
  %96 = load i8*, i8** %95, align 8
  %97 = call i1 @streq(i8* noundef %96, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.103, i64 0, i64 0))
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9.104, i64 0, i64 0)) #19
  %100 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %100, i32 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %102)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %99, i8* noundef %103)
  br label %111

104:                                              ; preds = %93
  %105 = call i8* @gettext(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10.105, i64 0, i64 0)) #19
  %106 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %107 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %106, i32 0, i32 7
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %108)
  %110 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.103, i64 0, i64 0))
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %105, i8* noundef %109, i8* noundef %110)
  br label %111

111:                                              ; preds = %104, %98
  %112 = call i8* @gettext(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11.106, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %112)
  br label %113

113:                                              ; preds = %111
  %114 = load %struct.FTS*, %struct.FTS** %5, align 8
  %115 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %114, %struct._ftsent* noundef %115)
  store i32 5, i32* %4, align 4
  br label %298

116:                                              ; preds = %67, %62
  %117 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %118 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %117, i32 0, i32 6
  %119 = load i8, i8* %118, align 8
  %120 = trunc i8 %119 to i1
  br i1 %120, label %121, label %165

121:                                              ; preds = %116
  store i8 0, i8* %9, align 1
  %122 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %123 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = call noalias nonnull i8* @file_name_concat(i8* noundef %124, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.102, i64 0, i64 0), i8** noundef null)
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @lstat(i8* noundef %129, %struct.stat* noundef %11) #19
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128, %121
  %133 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12.107, i64 0, i64 0)) #19
  %134 = load i8*, i8** %10, align 8
  %135 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %134)
  %136 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %137 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef %138)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %133, i8* noundef %135, i8* noundef %139)
  store i8 1, i8* %9, align 1
  br label %140

140:                                              ; preds = %132, %128
  %141 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %141) #19
  %142 = load i8, i8* %9, align 1
  %143 = trunc i8 %142 to i1
  br i1 %143, label %151, label %144

144:                                              ; preds = %140
  %145 = load %struct.FTS*, %struct.FTS** %5, align 8
  %146 = getelementptr inbounds %struct.FTS, %struct.FTS* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %147, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %144, %140
  %152 = load i8, i8* %9, align 1
  %153 = trunc i8 %152 to i1
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = call i8* @gettext(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13.108, i64 0, i64 0)) #19
  %156 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %157 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %158)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %155, i8* noundef %159)
  %160 = call i8* @gettext(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14.109, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %160)
  br label %161

161:                                              ; preds = %154, %151
  %162 = load %struct.FTS*, %struct.FTS** %5, align 8
  %163 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %162, %struct._ftsent* noundef %163)
  store i32 5, i32* %4, align 4
  br label %298

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164, %116
  br label %166

166:                                              ; preds = %165, %41
  %167 = load %struct.FTS*, %struct.FTS** %5, align 8
  %168 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %169 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %170 = call i32 @prompt(%struct.FTS* noundef %167, %struct._ftsent* noundef %168, i1 noundef true, %struct.rm_options* noundef %169, i32 noundef 2, i32* noundef %8)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, 3
  br i1 %172, label %173, label %187

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load %struct.FTS*, %struct.FTS** %5, align 8
  %178 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %179 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %180 = call i32 @excise(%struct.FTS* noundef %177, %struct._ftsent* noundef %178, %struct.rm_options* noundef %179, i1 noundef true)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load %struct.FTS*, %struct.FTS** %5, align 8
  %185 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %184, %struct._ftsent* noundef %185)
  br label %186

186:                                              ; preds = %183, %176
  br label %187

187:                                              ; preds = %186, %173, %166
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %197, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @mark_ancestor_dirs(%struct._ftsent* noundef %194)
  %195 = load %struct.FTS*, %struct.FTS** %5, align 8
  %196 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %195, %struct._ftsent* noundef %196)
  br label %197

197:                                              ; preds = %193, %190, %187
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %4, align 4
  br label %298

199:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %200 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %201 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %200, i32 0, i32 14
  %202 = load i16, i16* %201, align 8
  %203 = zext i16 %202 to i32
  %204 = icmp eq i32 %203, 6
  br i1 %204, label %205, label %232

205:                                              ; preds = %199
  %206 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %207 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %206, i32 0, i32 2
  %208 = load i8, i8* %207, align 8
  %209 = trunc i8 %208 to i1
  br i1 %209, label %210, label %232

210:                                              ; preds = %205
  %211 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %212 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %211, i32 0, i32 12
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 0, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %217 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %216, i32 0, i32 17
  %218 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %217, i64 0, i64 0
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.FTS*, %struct.FTS** %5, align 8
  %222 = getelementptr inbounds %struct.FTS, %struct.FTS* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %220, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %215
  %226 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @mark_ancestor_dirs(%struct._ftsent* noundef %226)
  %227 = call i8* @gettext(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13.108, i64 0, i64 0)) #19
  %228 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %229 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %228, i32 0, i32 7
  %230 = load i8*, i8** %229, align 8
  %231 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %230)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %227, i8* noundef %231)
  store i32 5, i32* %4, align 4
  br label %298

232:                                              ; preds = %215, %210, %205, %199
  %233 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %234 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %233, i32 0, i32 14
  %235 = load i16, i16* %234, align 8
  %236 = zext i16 %235 to i32
  %237 = icmp eq i32 %236, 6
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %240 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %239, i32 0, i32 14
  %241 = load i16, i16* %240, align 8
  %242 = zext i16 %241 to i32
  %243 = icmp eq i32 %242, 4
  br label %244

244:                                              ; preds = %238, %232
  %245 = phi i1 [ true, %232 ], [ %243, %238 ]
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %13, align 1
  %247 = load %struct.FTS*, %struct.FTS** %5, align 8
  %248 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %249 = load i8, i8* %13, align 1
  %250 = trunc i8 %249 to i1
  %251 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %252 = call i32 @prompt(%struct.FTS* noundef %247, %struct._ftsent* noundef %248, i1 noundef %250, %struct.rm_options* noundef %251, i32 noundef 3, i32* noundef %8)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %260, label %255

255:                                              ; preds = %244
  %256 = load i32, i32* %14, align 4
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %14, align 4
  store i32 %259, i32* %4, align 4
  br label %298

260:                                              ; preds = %255, %244
  %261 = load %struct.FTS*, %struct.FTS** %5, align 8
  %262 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %263 = load %struct.rm_options*, %struct.rm_options** %7, align 8
  %264 = load i8, i8* %13, align 1
  %265 = trunc i8 %264 to i1
  %266 = call i32 @excise(%struct.FTS* noundef %261, %struct._ftsent* noundef %262, %struct.rm_options* noundef %263, i1 noundef %265)
  store i32 %266, i32* %4, align 4
  br label %298

267:                                              ; preds = %3
  br label %268

268:                                              ; preds = %267
  %269 = call i8* @gettext(i8* noundef getelementptr inbounds ([186 x i8], [186 x i8]* @.str.15.110, i64 0, i64 0)) #19
  %270 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %271 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %270, i32 0, i32 7
  %272 = load i8*, i8** %271, align 8
  %273 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %272)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %269, i8* noundef %273)
  br label %274

274:                                              ; preds = %268
  %275 = load %struct.FTS*, %struct.FTS** %5, align 8
  %276 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %275, %struct._ftsent* noundef %276)
  store i32 5, i32* %4, align 4
  br label %298

277:                                              ; preds = %3
  %278 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %279 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16.111, i64 0, i64 0)) #19
  %282 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %283 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %282, i32 0, i32 7
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %284)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %280, i8* noundef %281, i8* noundef %285)
  %286 = load %struct.FTS*, %struct.FTS** %5, align 8
  %287 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @fts_skip_tree(%struct.FTS* noundef %286, %struct._ftsent* noundef %287)
  store i32 5, i32* %4, align 4
  br label %298

288:                                              ; preds = %3
  %289 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17.112, i64 0, i64 0)) #19
  %290 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %291 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %290, i32 0, i32 14
  %292 = load i16, i16* %291, align 8
  %293 = zext i16 %292 to i32
  %294 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %295 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %294, i32 0, i32 7
  %296 = load i8*, i8** %295, align 8
  %297 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %296)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %289, i32 noundef %293, i8* noundef %297, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.113, i64 0, i64 0))
  call void @abort() #20
  unreachable

298:                                              ; preds = %277, %274, %260, %258, %225, %197, %161, %113, %52, %33, %32
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @dot_or_dotdot(i8* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 46
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  %17 = zext i1 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %11, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %4, align 1
  %22 = load i8, i8* %4, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i1 [ true, %10 ], [ %27, %24 ]
  store i1 %29, i1* %2, align 1
  br label %31

30:                                               ; preds = %1
  store i1 false, i1* %2, align 1
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i1, i1* %2, align 1
  ret i1 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_skip_tree(%struct.FTS* noundef %0, %struct._ftsent* noundef %1) #4 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store %struct._ftsent* %1, %struct._ftsent** %4, align 8
  %5 = load %struct.FTS*, %struct.FTS** %3, align 8
  %6 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %7 = call i32 @rpl_fts_set(%struct.FTS* noundef %5, %struct._ftsent* noundef %6, i32 noundef 4) #19
  %8 = load %struct.FTS*, %struct.FTS** %3, align 8
  %9 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %8) #19
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompt(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i1 noundef %2, %struct.rm_options* noundef %3, i32 noundef %4, i32* noundef %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.FTS*, align 8
  %9 = alloca %struct._ftsent*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.rm_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.stat*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.FTS* %0, %struct.FTS** %8, align 8
  store %struct._ftsent* %1, %struct._ftsent** %9, align 8
  %23 = zext i1 %2 to i8
  store i8 %23, i8* %10, align 1
  store %struct.rm_options* %3, %struct.rm_options** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load %struct.FTS*, %struct.FTS** %8, align 8
  %25 = getelementptr inbounds %struct.FTS, %struct.FTS* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %27, i32 0, i32 7
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %15, align 8
  %30 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %31 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  store %struct.stat* %17, %struct.stat** %18, align 8
  %33 = load %struct.stat*, %struct.stat** %18, align 8
  %34 = call %struct.stat* @cache_stat_init(%struct.stat* noundef %33)
  %35 = load i8, i8* %10, align 1
  %36 = trunc i8 %35 to i1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 4, i32 0
  store i32 %38, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %39 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %40 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %6
  store i32 4, i32* %7, align 4
  br label %249

44:                                               ; preds = %6
  %45 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %46 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 2, i32* %7, align 4
  br label %249

50:                                               ; preds = %44
  store i32 0, i32* %21, align 4
  %51 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %52 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 8
  %54 = trunc i8 %53 to i1
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %57 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %62 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %61, i32 0, i32 7
  %63 = load i8, i8* %62, align 1
  %64 = trunc i8 %63 to i1
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 10
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %16, align 8
  %71 = load %struct.stat*, %struct.stat** %18, align 8
  %72 = call i32 @write_protected_non_symlink(i32 noundef %69, i8* noundef %70, %struct.stat* noundef %71)
  store i32 %72, i32* %20, align 4
  %73 = call i32* @__errno_location() #22
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %21, align 4
  br label %75

75:                                               ; preds = %68, %65, %60, %50
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %80 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %248

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %20, align 4
  %85 = icmp sle i32 0, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load i32, i32* %19, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.stat*, %struct.stat** %18, align 8
  %93 = call i32 @cache_fstatat(i32 noundef %90, i8* noundef %91, %struct.stat* noundef %92, i32 noundef 256)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.stat*, %struct.stat** %18, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 61440
  %100 = icmp eq i32 %99, 40960
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 10, i32* %19, align 4
  br label %110

102:                                              ; preds = %95
  %103 = load %struct.stat*, %struct.stat** %18, align 8
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 61440
  %107 = icmp eq i32 %106, 16384
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 4, i32* %19, align 4
  br label %109

109:                                              ; preds = %108, %102
  br label %110

110:                                              ; preds = %109, %101
  br label %114

111:                                              ; preds = %89
  store i32 -1, i32* %20, align 4
  %112 = call i32* @__errno_location() #22
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %86, %83
  %116 = load i32, i32* %20, align 4
  %117 = icmp sle i32 0, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %115
  %119 = load i32, i32* %19, align 4
  switch i32 %119, label %154 [
    i32 10, label %120
    i32 4, label %127
  ]

120:                                              ; preds = %118
  %121 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %122 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 3
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 2, i32* %7, align 4
  br label %249

126:                                              ; preds = %120
  br label %154

127:                                              ; preds = %118
  %128 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %129 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %128, i32 0, i32 3
  %130 = load i8, i8* %129, align 1
  %131 = trunc i8 %130 to i1
  br i1 %131, label %153, label %132

132:                                              ; preds = %127
  %133 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %134 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %133, i32 0, i32 4
  %135 = load i8, i8* %134, align 2
  %136 = trunc i8 %135 to i1
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.FTS*, %struct.FTS** %8, align 8
  %139 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @get_dir_status(%struct.FTS* noundef %138, %struct._ftsent* noundef %139, i32* noundef %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %137, %132
  store i32 -1, i32* %20, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %151

148:                                              ; preds = %143
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  br label %151

151:                                              ; preds = %148, %147
  %152 = phi i32 [ 21, %147 ], [ %150, %148 ]
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %151, %137, %127
  br label %154

154:                                              ; preds = %118, %153, %126
  br label %155

155:                                              ; preds = %154, %115
  %156 = load i8*, i8** %15, align 8
  %157 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %156)
  store i8* %157, i8** %22, align 8
  %158 = load i32, i32* %20, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* %21, align 4
  %162 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.99, i64 0, i64 0)) #19
  %163 = load i8*, i8** %22, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %161, i8* noundef %162, i8* noundef %163)
  store i32 5, i32* %7, align 4
  br label %249

164:                                              ; preds = %155
  %165 = load i32, i32* %19, align 4
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %189

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.FTS*, %struct.FTS** %8, align 8
  %172 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @get_dir_status(%struct.FTS* noundef %171, %struct._ftsent* noundef %172, i32* noundef %173)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %170
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19.116, i64 0, i64 0)) #19
  br label %184

182:                                              ; preds = %176
  %183 = call i8* @gettext(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20.117, i64 0, i64 0)) #19
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i8* [ %181, %180 ], [ %183, %182 ]
  %186 = load i8*, i8** @program_name, align 8
  %187 = load i8*, i8** %22, align 8
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %177, i8* noundef %185, i8* noundef %186, i8* noundef %187)
  br label %244

189:                                              ; preds = %170, %167, %164
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 0, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = load %struct.rm_options*, %struct.rm_options** %11, align 8
  %195 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %194, i32 0, i32 4
  %196 = load i8, i8* %195, align 2
  %197 = trunc i8 %196 to i1
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 13
  br i1 %201, label %207, label %202

202:                                              ; preds = %198, %193
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.99, i64 0, i64 0)) #19
  %206 = load i8*, i8** %22, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %204, i8* noundef %205, i8* noundef %206)
  store i32 5, i32* %7, align 4
  br label %249

207:                                              ; preds = %198
  %208 = load i32, i32* %12, align 4
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 2, i32* %7, align 4
  br label %249

211:                                              ; preds = %207
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %213 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21.118, i64 0, i64 0)) #19
  %214 = load i8*, i8** @program_name, align 8
  %215 = load i8*, i8** %22, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %212, i8* noundef %213, i8* noundef %214, i8* noundef %215)
  br label %243

217:                                              ; preds = %189
  %218 = load i32, i32* %14, align 4
  %219 = load i8*, i8** %16, align 8
  %220 = load %struct.stat*, %struct.stat** %18, align 8
  %221 = call i32 @cache_fstatat(i32 noundef %218, i8* noundef %219, %struct.stat* noundef %220, i32 noundef 256)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = call i32* @__errno_location() #22
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.99, i64 0, i64 0)) #19
  %227 = load i8*, i8** %22, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %225, i8* noundef %226, i8* noundef %227)
  store i32 5, i32* %7, align 4
  br label %249

228:                                              ; preds = %217
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %230 = load i32, i32* %20, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = call i8* @gettext(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22.119, i64 0, i64 0)) #19
  br label %236

234:                                              ; preds = %228
  %235 = call i8* @gettext(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23.120, i64 0, i64 0)) #19
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i8* [ %233, %232 ], [ %235, %234 ]
  %238 = load i8*, i8** @program_name, align 8
  %239 = load %struct.stat*, %struct.stat** %18, align 8
  %240 = call i8* @file_type(%struct.stat* noundef %239) #21
  %241 = load i8*, i8** %22, align 8
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %229, i8* noundef %237, i8* noundef %238, i8* noundef %240, i8* noundef %241)
  br label %243

243:                                              ; preds = %236, %211
  br label %244

244:                                              ; preds = %243, %184
  %245 = call i1 @yesno()
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 3, i32 4
  store i32 %247, i32* %7, align 4
  br label %249

248:                                              ; preds = %78
  store i32 2, i32* %7, align 4
  br label %249

249:                                              ; preds = %248, %244, %223, %210, %202, %160, %125, %49, %43
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @excise(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, %struct.rm_options* noundef %2, i1 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FTS*, align 8
  %7 = alloca %struct._ftsent*, align 8
  %8 = alloca %struct.rm_options*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  store %struct.FTS* %0, %struct.FTS** %6, align 8
  store %struct._ftsent* %1, %struct._ftsent** %7, align 8
  store %struct.rm_options* %2, %struct.rm_options** %8, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %9, align 1
  %13 = load i8, i8* %9, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 512, i32 0
  store i32 %16, i32* %10, align 4
  %17 = load %struct.FTS*, %struct.FTS** %6, align 8
  %18 = getelementptr inbounds %struct.FTS, %struct.FTS* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %20, i32 0, i32 6
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @unlinkat(i32 noundef %19, i8* noundef %22, i32 noundef %23) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %4
  %27 = load %struct.rm_options*, %struct.rm_options** %8, align 8
  %28 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %27, i32 0, i32 8
  %29 = load i8, i8* %28, align 2
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i8, i8* %9, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* @gettext(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24.114, i64 0, i64 0)) #19
  br label %38

36:                                               ; preds = %31
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25.115, i64 0, i64 0)) #19
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i8* [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %41 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %40, i32 0, i32 7
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %42)
  %44 = call i32 (i8*, ...) @printf(i8* noundef %39, i8* noundef %43)
  br label %45

45:                                               ; preds = %38, %26
  store i32 2, i32* %5, align 4
  br label %113

46:                                               ; preds = %4
  %47 = call i32* @__errno_location() #22
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 30
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.FTS*, %struct.FTS** %6, align 8
  %52 = getelementptr inbounds %struct.FTS, %struct.FTS* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @fstatat(i32 noundef %53, i8* noundef %56, %struct.stat* noundef %11, i32 noundef 256) #19
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = call i32* @__errno_location() #22
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %50
  %64 = call i32* @__errno_location() #22
  store i32 30, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.rm_options*, %struct.rm_options** %8, align 8
  %68 = call i32* @__errno_location() #22
  %69 = load i32, i32* %68, align 4
  %70 = call i1 @ignorable_missing(%struct.rm_options* noundef %67, i32 noundef %69)
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 2, i32* %5, align 4
  br label %113

72:                                               ; preds = %66
  %73 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %73, i32 0, i32 14
  %75 = load i16, i16* %74, align 8
  %76 = zext i16 %75 to i32
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = call i32* @__errno_location() #22
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 39
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = call i32* @__errno_location() #22
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 21
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = call i32* @__errno_location() #22
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 20
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = call i32* @__errno_location() #22
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 17
  br i1 %93, label %94, label %104

94:                                               ; preds = %90, %86, %82, %78
  %95 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %96 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i32* @__errno_location() #22
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %94, %90, %72
  %105 = call i32* @__errno_location() #22
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.99, i64 0, i64 0)) #19
  %108 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %109 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %108, i32 0, i32 7
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %110)
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %106, i8* noundef %107, i8* noundef %111)
  %112 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  call void @mark_ancestor_dirs(%struct._ftsent* noundef %112)
  store i32 5, i32* %5, align 4
  br label %113

113:                                              ; preds = %104, %71, %45
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ancestor_dirs(%struct._ftsent* noundef %0) #4 {
  %2 = alloca %struct._ftsent*, align 8
  %3 = alloca %struct._ftsent*, align 8
  store %struct._ftsent* %0, %struct._ftsent** %2, align 8
  %4 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  %5 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %4, i32 0, i32 1
  %6 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  store %struct._ftsent* %6, %struct._ftsent** %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %8, i32 0, i32 12
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %14 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %25

18:                                               ; preds = %12
  %19 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %19, i32 0, i32 4
  store i64 1, i64* %20, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %23 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i32 0, i32 1
  %24 = load %struct._ftsent*, %struct._ftsent** %23, align 8
  store %struct._ftsent* %24, %struct._ftsent** %3, align 8
  br label %7, !llvm.loop !18

25:                                               ; preds = %17, %7
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, i8* noundef, %struct.stat* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @ignorable_missing(%struct.rm_options* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.rm_options*, align 8
  %4 = alloca i32, align 4
  store %struct.rm_options* %0, %struct.rm_options** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rm_options*, %struct.rm_options** %3, align 8
  %6 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i1 @nonexistent_file_errno(i32 noundef %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @nonexistent_file_errno(i32 noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 84, label %5
    i32 22, label %5
    i32 2, label %5
    i32 20, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1
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
define internal %struct.stat* @cache_stat_init(%struct.stat* noundef %0) #4 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %3 = load %struct.stat*, %struct.stat** %2, align 8
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %4, i32 0, i32 1
  store i64 -1, i64* %5, align 8
  %6 = load %struct.stat*, %struct.stat** %2, align 8
  ret %struct.stat* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_protected_non_symlink(i32 noundef %0, i8* noundef %1, %struct.stat* noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %8 = call i1 @can_write_any_file()
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.stat*, %struct.stat** %7, align 8
  %14 = call i32 @cache_fstatat(i32 noundef %11, i8* noundef %12, %struct.stat* noundef %13, i32 noundef 256)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %36

17:                                               ; preds = %10
  %18 = load %struct.stat*, %struct.stat** %7, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 61440
  %22 = icmp eq i32 %21, 40960
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @faccessat(i32 noundef %25, i8* noundef %26, i32 noundef 2, i32 noundef 512) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %36

30:                                               ; preds = %24
  %31 = call i32* @__errno_location() #22
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 13
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 -1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %29, %23, %16, %9
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_fstatat(i32 noundef %0, i8* noundef %1, %struct.stat* noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.stat*, %struct.stat** %8, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 12
  %12 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

16:                                               ; preds = %4
  %17 = load %struct.stat*, %struct.stat** %8, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.stat*, %struct.stat** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @fstatat(i32 noundef %23, i8* noundef %24, %struct.stat* noundef %25, i32 noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.stat*, %struct.stat** %8, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 12
  %33 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %32, i32 0, i32 1
  store i64 -2, i64* %33, align 8
  %34 = call i32* @__errno_location() #22
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.stat*, %struct.stat** %8, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %16
  %40 = load %struct.stat*, %struct.stat** %8, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32* @__errno_location() #22
  store i32 %43, i32* %44, align 4
  store i32 -1, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %29, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dir_status(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i32* noundef %2) #4 {
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca %struct._ftsent*, align 8
  %6 = alloca i32*, align 8
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store %struct._ftsent* %1, %struct._ftsent** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.FTS*, %struct.FTS** %4, align 8
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %14, i32 0, i32 6
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @directory_status(i32 noundef %13, i8* noundef %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_status(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__dirstream*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %10, i8* noundef %11, i32 noundef 51456)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32* @__errno_location() #22
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.__dirstream* @fdopendir(i32 noundef %19)
  store %struct.__dirstream* %20, %struct.__dirstream** %6, align 8
  %21 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %22 = icmp eq %struct.__dirstream* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = call i32* @__errno_location() #22
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @close(i32 noundef %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %18
  %30 = call i32* @__errno_location() #22
  store i32 0, i32* %30, align 4
  %31 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %32 = call %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %31)
  %33 = icmp ne %struct.dirent* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %7, align 1
  %36 = call i32* @__errno_location() #22
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %39 = call i32 @closedir(%struct.__dirstream* noundef %38)
  %40 = load i8, i8* %7, align 1
  %41 = trunc i8 %40 to i1
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %48

46:                                               ; preds = %42, %29
  %47 = load i32, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ -1, %45 ], [ %47, %46 ]
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %23, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare i32 @openat(i32 noundef, i8* noundef, i32 noundef, ...) #3

declare %struct.__dirstream* @fdopendir(i32 noundef) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %0) #4 {
  %2 = alloca %struct.__dirstream*, align 8
  %3 = alloca %struct.dirent*, align 8
  store %struct.__dirstream* %0, %struct.__dirstream** %2, align 8
  br label %4

4:                                                ; preds = %1, %16
  %5 = load %struct.__dirstream*, %struct.__dirstream** %2, align 8
  %6 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %5)
  store %struct.dirent* %6, %struct.dirent** %3, align 8
  %7 = load %struct.dirent*, %struct.dirent** %3, align 8
  %8 = icmp eq %struct.dirent* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load %struct.dirent*, %struct.dirent** %3, align 8
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %13 = call i1 @dot_or_dotdot(i8* noundef %12)
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %4
  %15 = load %struct.dirent*, %struct.dirent** %3, align 8
  ret %struct.dirent* %15

16:                                               ; preds = %9
  br label %4
}

declare i32 @closedir(%struct.__dirstream* noundef) #3

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) #3

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, i8* noundef, i32 noundef, i32 noundef) #2

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
  %15 = call i64 @strlen(i8* noundef %14) #21
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
  %29 = call i32 @strncmp(i8* noundef %26, i8* noundef %27, i64 noundef %28) #21
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %22
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strlen(i8* noundef %35) #21
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
  br label %16, !llvm.loop !19

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
  br label %7, !llvm.loop !20

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
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.127, i64 0, i64 0)) #19
  br label %14

12:                                               ; preds = %3
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.128, i64 0, i64 0)) #19
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
  %9 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.129, i64 0, i64 0)) #19
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
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.130, i64 0, i64 0), i8* noundef %36)
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
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.131, i64 0, i64 0), i8* noundef %49)
  br label %51

51:                                               ; preds = %43, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %12, !llvm.loop !21

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
  %25 = call i64 @argmatch(i8* noundef %21, i8** noundef %22, i8* noundef %23, i64 noundef %24) #21
  store i64 %25, i64* %16, align 8
  br label %30

26:                                               ; preds = %7
  %27 = load i8*, i8** %10, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = call i64 @argmatch_exact(i8* noundef %27, i8** noundef %28) #21
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
  br label %11, !llvm.loop !22

35:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #9 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 0
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  br label %9, !llvm.loop !23

17:                                               ; preds = %9
  store i8 0, i8* %4, align 1
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1
  br label %35

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %3, align 8
  store i8 0, i8* %4, align 1
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %19, !llvm.loop !24

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #9 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* noundef %5) #21
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 1, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %3, align 8
  br label %7, !llvm.loop !25

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdin_set_file_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @file_name, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdin() #4 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  store i8 0, i8* %1, align 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %4 = call i64 @freadahead(%struct._IO_FILE* noundef %3) #21
  %5 = icmp ugt i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %8 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %7, i64 noundef 0, i32 noundef 1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %12 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8 1, i8* %1, align 1
  br label %15

15:                                               ; preds = %14, %10, %6
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %18 = call i32 @close_stream(%struct._IO_FILE* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8 1, i8* %1, align 1
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i8, i8* %1, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.139, i64 0, i64 0)) #19
  store i8* %25, i8** %2, align 8
  %26 = load i8*, i8** @file_name, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call i32* @__errno_location() #22
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** @file_name, align 8
  %32 = call i8* @quotearg_colon(i8* noundef %31)
  %33 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %30, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.140, i64 0, i64 0), i8* noundef %32, i8* noundef %33)
  br label %38

34:                                               ; preds = %24
  %35 = call i32* @__errno_location() #22
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %2, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.141, i64 0, i64 0), i8* noundef %37)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %21
  call void @close_stdout()
  %40 = load i8, i8* %1, align 1
  %41 = trunc i8 %40 to i1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %43) #23
  unreachable

44:                                               ; preds = %39
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @file_name.142, align 8
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
  %9 = call i32* @__errno_location() #22
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %5
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.146, i64 0, i64 0)) #19
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** @file_name.142, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** @file_name.142, align 8
  %20 = call i8* @quotearg_colon(i8* noundef %19)
  %21 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.147, i64 0, i64 0), i8* noundef %20, i8* noundef %21)
  br label %26

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %1, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.148, i64 0, i64 0), i8* noundef %25)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %27) #23
  unreachable

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 noundef %33) #23
  unreachable

34:                                               ; preds = %28
  ret void
}

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
  %15 = call i8* @getprogname() #21
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i8* noundef %15)
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
  call void @exit(i32 noundef %28) #20
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
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.151, i64 0, i64 0)) #19
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.152, i64 0, i64 0), i8* noundef %14)
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
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24
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
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21
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
  %45 = call i8* @getprogname() #21
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.155, i64 0, i64 0), i8* noundef %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.156, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.157, i64 0, i64 0)
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
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*
  call void @llvm.va_end(i8* %21)
  ret void
}

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
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19
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

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

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

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @file_type(%struct.stat* noundef %0) #9 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  %3 = load %struct.stat*, %struct.stat** %2, align 8
  %4 = call i8* @c_file_type(%struct.stat* noundef %3) #21
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0), i8* noundef %4) #19
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = call noalias i8* @mfile_name_concat(i8* noundef %8, i8* noundef %9, i8** noundef %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @xalloc_die() #23
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @last_component(i8* noundef %15) #21
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @base_len(i8* noundef %17) #21
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* noundef %26) #21
  store i64 %27, i64* %11, align 8
  store i8 0, i8* %12, align 1
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i8 47, i8* %12, align 1
  br label %44

44:                                               ; preds = %43, %38, %30
  br label %52

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8 46, i8* %12, align 1
  br label %51

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i64, i64* %10, align 8
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = add i64 %53, %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %59, %60
  %62 = add i64 %61, 1
  %63 = call noalias i8* @malloc(i64 noundef %62) #19
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  br label %93

67:                                               ; preds = %52
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 %69, i64 %70, i1 false)
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %14, align 8
  %72 = load i8, i8* %12, align 1
  %73 = load i8*, i8** %14, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %14, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %14, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load i8*, i8** %14, align 8
  %85 = load i8**, i8*** %7, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %67
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 %89, i1 false)
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %13, align 8
  store i8* %92, i8** %4, align 8
  br label %93

93:                                               ; preds = %86, %66
  %94 = load i8*, i8** %4, align 8
  ret i8* %94
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @freadahead(%struct._IO_FILE* noundef %0) #9 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 5
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ugt i8* %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %41

12:                                               ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %15 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %29 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %28, i32 0, i32 11
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %31, i32 0, i32 9
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  br label %38

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi i64 [ %36, %27 ], [ 0, %37 ]
  %40 = add nsw i64 %21, %39
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %38, %11
  %42 = load i64, i64* %2, align 8
  ret i64 %42
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
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19
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

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.FTS* @rpl_fts_open(i8** noundef %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) #4 {
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct._ftsent**, %struct._ftsent**)*, align 8
  %8 = alloca %struct.FTS*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._ftsent*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct._ftsent*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._ftsent*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct._ftsent*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -8192
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32* @__errno_location() #22
  store i32 22, i32* %23, align 4
  store %struct.FTS* null, %struct.FTS** %4, align 8
  br label %300

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 512
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32* @__errno_location() #22
  store i32 22, i32* %33, align 4
  store %struct.FTS* null, %struct.FTS** %4, align 8
  br label %300

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 18
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32* @__errno_location() #22
  store i32 22, i32* %39, align 4
  store %struct.FTS* null, %struct.FTS** %4, align 8
  br label %300

40:                                               ; preds = %34
  %41 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 128) #19
  %42 = bitcast i8* %41 to %struct.FTS*
  store %struct.FTS* %42, %struct.FTS** %8, align 8
  %43 = load %struct.FTS*, %struct.FTS** %8, align 8
  %44 = icmp eq %struct.FTS* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store %struct.FTS* null, %struct.FTS** %4, align 8
  br label %300

46:                                               ; preds = %40
  %47 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %7, align 8
  %48 = load %struct.FTS*, %struct.FTS** %8, align 8
  %49 = getelementptr inbounds %struct.FTS, %struct.FTS* %48, i32 0, i32 9
  store i32 (%struct._ftsent**, %struct._ftsent**)* %47, i32 (%struct._ftsent**, %struct._ftsent**)** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.FTS*, %struct.FTS** %8, align 8
  %52 = getelementptr inbounds %struct.FTS, %struct.FTS* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.FTS*, %struct.FTS** %8, align 8
  %54 = getelementptr inbounds %struct.FTS, %struct.FTS* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.FTS*, %struct.FTS** %8, align 8
  %60 = getelementptr inbounds %struct.FTS, %struct.FTS* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 4
  store i32 %62, i32* %60, align 8
  %63 = load %struct.FTS*, %struct.FTS** %8, align 8
  %64 = getelementptr inbounds %struct.FTS, %struct.FTS* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -513
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %58, %46
  %68 = load %struct.FTS*, %struct.FTS** %8, align 8
  %69 = getelementptr inbounds %struct.FTS, %struct.FTS* %68, i32 0, i32 6
  store i32 -100, i32* %69, align 4
  %70 = load %struct.FTS*, %struct.FTS** %8, align 8
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 512
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  br i1 true, label %85, label %76

76:                                               ; preds = %75
  %77 = call i32 (i8*, i32, ...) @open_safer(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0), i32 noundef 524288)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @close(i32 noundef %82)
  br label %84

84:                                               ; preds = %81, %80
  br label %85

85:                                               ; preds = %84, %75, %67
  %86 = load i8**, i8*** %5, align 8
  %87 = call i64 @fts_maxarglen(i8** noundef %86)
  store i64 %87, i64* %10, align 8
  %88 = load %struct.FTS*, %struct.FTS** %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ugt i64 %89, 4096
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i64, i64* %10, align 8
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i64 [ %92, %91 ], [ 4096, %93 ]
  %96 = call i1 @fts_palloc(%struct.FTS* noundef %88, i64 noundef %95)
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %297

98:                                               ; preds = %94
  store %struct._ftsent* null, %struct._ftsent** %11, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load %struct.FTS*, %struct.FTS** %8, align 8
  %104 = call %struct._ftsent* @fts_alloc(%struct.FTS* noundef %103, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.174, i64 0, i64 0), i64 noundef 0)
  store %struct._ftsent* %104, %struct._ftsent** %11, align 8
  %105 = icmp eq %struct._ftsent* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %293

107:                                              ; preds = %102
  %108 = load %struct._ftsent*, %struct._ftsent** %11, align 8
  %109 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %108, i32 0, i32 12
  store i64 -1, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %98
  %111 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %7, align 8
  %112 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load %struct.FTS*, %struct.FTS** %8, align 8
  %115 = getelementptr inbounds %struct.FTS, %struct.FTS* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 1024
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %113, %110
  %120 = phi i1 [ true, %110 ], [ %118, %113 ]
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %12, align 1
  store %struct._ftsent* null, %struct._ftsent** %15, align 8
  store %struct._ftsent* null, %struct._ftsent** %13, align 8
  store i64 0, i64* %14, align 8
  br label %122

122:                                              ; preds = %222, %119
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %227

126:                                              ; preds = %122
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @strlen(i8* noundef %128) #21
  store i64 %129, i64* %16, align 8
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, 2048
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %126
  %134 = load i8**, i8*** %5, align 8
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %17, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp ult i64 2, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %133
  %139 = load i8*, i8** %17, align 8
  %140 = load i64, i64* %16, align 8
  %141 = sub i64 %140, 1
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 47
  br i1 %145, label %146, label %164

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %160, %146
  %148 = load i64, i64* %16, align 8
  %149 = icmp ult i64 1, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i8*, i8** %17, align 8
  %152 = load i64, i64* %16, align 8
  %153 = sub i64 %152, 2
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 47
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i1 [ false, %147 ], [ %157, %150 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i64, i64* %16, align 8
  %162 = add i64 %161, -1
  store i64 %162, i64* %16, align 8
  br label %147, !llvm.loop !26

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %138, %133
  br label %165

165:                                              ; preds = %164, %126
  %166 = load %struct.FTS*, %struct.FTS** %8, align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = load i64, i64* %16, align 8
  %170 = call %struct._ftsent* @fts_alloc(%struct.FTS* noundef %166, i8* noundef %168, i64 noundef %169)
  store %struct._ftsent* %170, %struct._ftsent** %18, align 8
  %171 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %172 = icmp eq %struct._ftsent* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %289

174:                                              ; preds = %165
  %175 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %176 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %175, i32 0, i32 12
  store i64 0, i64* %176, align 8
  %177 = load %struct._ftsent*, %struct._ftsent** %11, align 8
  %178 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %179 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %178, i32 0, i32 1
  store %struct._ftsent* %177, %struct._ftsent** %179, align 8
  %180 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %181 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %180, i32 0, i32 18
  %182 = getelementptr inbounds [0 x i8], [0 x i8]* %181, i64 0, i64 0
  %183 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %184 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load i8, i8* %12, align 1
  %186 = trunc i8 %185 to i1
  br i1 %186, label %187, label %194

187:                                              ; preds = %174
  %188 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %189 = icmp ne %struct._ftsent* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %192 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %191, i32 0, i32 14
  store i16 11, i16* %192, align 8
  %193 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  call void @fts_set_stat_required(%struct._ftsent* noundef %193, i1 noundef true)
  br label %200

194:                                              ; preds = %187, %174
  %195 = load %struct.FTS*, %struct.FTS** %8, align 8
  %196 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %197 = call i16 @fts_stat(%struct.FTS* noundef %195, %struct._ftsent* noundef %196, i1 noundef false)
  %198 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %199 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %198, i32 0, i32 14
  store i16 %197, i16* %199, align 8
  br label %200

200:                                              ; preds = %194, %190
  %201 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %7, align 8
  %202 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %205 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %206 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %205, i32 0, i32 2
  store %struct._ftsent* %204, %struct._ftsent** %206, align 8
  %207 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  store %struct._ftsent* %207, %struct._ftsent** %13, align 8
  br label %221

208:                                              ; preds = %200
  %209 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %210 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %209, i32 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %210, align 8
  %211 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %212 = icmp eq %struct._ftsent* %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  store %struct._ftsent* %214, %struct._ftsent** %13, align 8
  store %struct._ftsent* %214, %struct._ftsent** %15, align 8
  br label %220

215:                                              ; preds = %208
  %216 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  %217 = load %struct._ftsent*, %struct._ftsent** %15, align 8
  %218 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %217, i32 0, i32 2
  store %struct._ftsent* %216, %struct._ftsent** %218, align 8
  %219 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  store %struct._ftsent* %219, %struct._ftsent** %15, align 8
  br label %220

220:                                              ; preds = %215, %213
  br label %221

221:                                              ; preds = %220, %203
  br label %222

222:                                              ; preds = %221
  %223 = load i8**, i8*** %5, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i32 1
  store i8** %224, i8*** %5, align 8
  %225 = load i64, i64* %14, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %14, align 8
  br label %122, !llvm.loop !27

227:                                              ; preds = %122
  %228 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %7, align 8
  %229 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load i64, i64* %14, align 8
  %232 = icmp ugt i64 %231, 1
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.FTS*, %struct.FTS** %8, align 8
  %235 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %236 = load i64, i64* %14, align 8
  %237 = call %struct._ftsent* @fts_sort(%struct.FTS* noundef %234, %struct._ftsent* noundef %235, i64 noundef %236)
  store %struct._ftsent* %237, %struct._ftsent** %13, align 8
  br label %238

238:                                              ; preds = %233, %230, %227
  %239 = load %struct.FTS*, %struct.FTS** %8, align 8
  %240 = call %struct._ftsent* @fts_alloc(%struct.FTS* noundef %239, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.174, i64 0, i64 0), i64 noundef 0)
  %241 = load %struct.FTS*, %struct.FTS** %8, align 8
  %242 = getelementptr inbounds %struct.FTS, %struct.FTS* %241, i32 0, i32 0
  store %struct._ftsent* %240, %struct._ftsent** %242, align 8
  %243 = icmp eq %struct._ftsent* %240, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %289

245:                                              ; preds = %238
  %246 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %247 = load %struct.FTS*, %struct.FTS** %8, align 8
  %248 = getelementptr inbounds %struct.FTS, %struct.FTS* %247, i32 0, i32 0
  %249 = load %struct._ftsent*, %struct._ftsent** %248, align 8
  %250 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %249, i32 0, i32 2
  store %struct._ftsent* %246, %struct._ftsent** %250, align 8
  %251 = load %struct.FTS*, %struct.FTS** %8, align 8
  %252 = getelementptr inbounds %struct.FTS, %struct.FTS* %251, i32 0, i32 0
  %253 = load %struct._ftsent*, %struct._ftsent** %252, align 8
  %254 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %253, i32 0, i32 14
  store i16 9, i16* %254, align 8
  %255 = load %struct.FTS*, %struct.FTS** %8, align 8
  %256 = getelementptr inbounds %struct.FTS, %struct.FTS* %255, i32 0, i32 0
  %257 = load %struct._ftsent*, %struct._ftsent** %256, align 8
  %258 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i32 0, i32 12
  store i64 1, i64* %258, align 8
  %259 = load %struct.FTS*, %struct.FTS** %8, align 8
  %260 = call i1 @setup_dir(%struct.FTS* noundef %259)
  br i1 %260, label %262, label %261

261:                                              ; preds = %245
  br label %289

262:                                              ; preds = %245
  %263 = load %struct.FTS*, %struct.FTS** %8, align 8
  %264 = getelementptr inbounds %struct.FTS, %struct.FTS* %263, i32 0, i32 10
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %285, label %268

268:                                              ; preds = %262
  %269 = load %struct.FTS*, %struct.FTS** %8, align 8
  %270 = getelementptr inbounds %struct.FTS, %struct.FTS* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, 512
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %268
  %275 = load %struct.FTS*, %struct.FTS** %8, align 8
  %276 = call i32 @diropen(%struct.FTS* noundef %275, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0))
  %277 = load %struct.FTS*, %struct.FTS** %8, align 8
  %278 = getelementptr inbounds %struct.FTS, %struct.FTS* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 8
  %279 = icmp slt i32 %276, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load %struct.FTS*, %struct.FTS** %8, align 8
  %282 = getelementptr inbounds %struct.FTS, %struct.FTS* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, 4
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %280, %274, %268, %262
  %286 = load %struct.FTS*, %struct.FTS** %8, align 8
  %287 = getelementptr inbounds %struct.FTS, %struct.FTS* %286, i32 0, i32 13
  call void @i_ring_init(%struct.I_ring* noundef %287, i32 noundef -1)
  %288 = load %struct.FTS*, %struct.FTS** %8, align 8
  store %struct.FTS* %288, %struct.FTS** %4, align 8
  br label %300

289:                                              ; preds = %261, %244, %173
  %290 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  call void @fts_lfree(%struct._ftsent* noundef %290)
  %291 = load %struct._ftsent*, %struct._ftsent** %11, align 8
  %292 = bitcast %struct._ftsent* %291 to i8*
  call void @free(i8* noundef %292) #19
  br label %293

293:                                              ; preds = %289, %106
  %294 = load %struct.FTS*, %struct.FTS** %8, align 8
  %295 = getelementptr inbounds %struct.FTS, %struct.FTS* %294, i32 0, i32 4
  %296 = load i8*, i8** %295, align 8
  call void @free(i8* noundef %296) #19
  br label %297

297:                                              ; preds = %293, %97
  %298 = load %struct.FTS*, %struct.FTS** %8, align 8
  %299 = bitcast %struct.FTS* %298 to i8*
  call void @free(i8* noundef %299) #19
  store %struct.FTS* null, %struct.FTS** %4, align 8
  br label %300

300:                                              ; preds = %297, %285, %45, %38, %32, %22
  %301 = load %struct.FTS*, %struct.FTS** %4, align 8
  ret %struct.FTS* %301
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fts_maxarglen(i8** noundef %0) #4 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i8**, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strlen(i8* noundef %11) #21
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i8**, i8*** %2, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %2, align 8
  br label %5, !llvm.loop !28

22:                                               ; preds = %5
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @fts_palloc(%struct.FTS* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.FTS*, %struct.FTS** %4, align 8
  %9 = getelementptr inbounds %struct.FTS, %struct.FTS* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = add i64 %12, 256
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.FTS*, %struct.FTS** %4, align 8
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.FTS*, %struct.FTS** %4, align 8
  %21 = getelementptr inbounds %struct.FTS, %struct.FTS* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %22) #19
  %23 = load %struct.FTS*, %struct.FTS** %4, align 8
  %24 = getelementptr inbounds %struct.FTS, %struct.FTS* %23, i32 0, i32 4
  store i8* null, i8** %24, align 8
  %25 = call i32* @__errno_location() #22
  store i32 36, i32* %25, align 4
  store i1 false, i1* %3, align 1
  br label %49

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.FTS*, %struct.FTS** %4, align 8
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %28, i32 0, i32 7
  store i64 %27, i64* %29, align 8
  %30 = load %struct.FTS*, %struct.FTS** %4, align 8
  %31 = getelementptr inbounds %struct.FTS, %struct.FTS* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.FTS*, %struct.FTS** %4, align 8
  %34 = getelementptr inbounds %struct.FTS, %struct.FTS* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @rpl_realloc(i8* noundef %32, i64 noundef %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.FTS*, %struct.FTS** %4, align 8
  %41 = getelementptr inbounds %struct.FTS, %struct.FTS* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  call void @free(i8* noundef %42) #19
  %43 = load %struct.FTS*, %struct.FTS** %4, align 8
  %44 = getelementptr inbounds %struct.FTS, %struct.FTS* %43, i32 0, i32 4
  store i8* null, i8** %44, align 8
  store i1 false, i1* %3, align 1
  br label %49

45:                                               ; preds = %26
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.FTS*, %struct.FTS** %4, align 8
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  store i1 true, i1* %3, align 1
  br label %49

49:                                               ; preds = %45, %39, %19
  %50 = load i1, i1* %3, align 1
  ret i1 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._ftsent* @fts_alloc(%struct.FTS* noundef %0, i8* noundef %1, i64 noundef %2) #4 {
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca %struct.FTS*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._ftsent*, align 8
  store %struct.FTS* %0, %struct.FTS** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 1
  %12 = add i64 247, %11
  %13 = and i64 %12, -8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call noalias i8* @malloc(i64 noundef %14) #19
  %16 = bitcast i8* %15 to %struct._ftsent*
  store %struct._ftsent* %16, %struct._ftsent** %9, align 8
  %17 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %18 = icmp eq %struct._ftsent* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct._ftsent* null, %struct._ftsent** %4, align 8
  br label %54

20:                                               ; preds = %3
  %21 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %22 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %21, i32 0, i32 18
  %23 = getelementptr inbounds [0 x i8], [0 x i8]* %22, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 1 %24, i64 %25, i1 false)
  %26 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %26, i32 0, i32 18
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %27, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i64, i64* %7, align 8
  %31 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %32 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %31, i32 0, i32 13
  store i64 %30, i64* %32, align 8
  %33 = load %struct.FTS*, %struct.FTS** %5, align 8
  %34 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %34, i32 0, i32 11
  store %struct.FTS* %33, %struct.FTS** %35, align 8
  %36 = load %struct.FTS*, %struct.FTS** %5, align 8
  %37 = getelementptr inbounds %struct.FTS, %struct.FTS* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %40 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %42 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %41, i32 0, i32 8
  store i32 0, i32* %42, align 8
  %43 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %43, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %44, align 8
  %45 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %46 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %45, i32 0, i32 15
  store i16 0, i16* %46, align 2
  %47 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %48 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %47, i32 0, i32 16
  store i16 3, i16* %48, align 4
  %49 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %50 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %51, i32 0, i32 5
  store i8* null, i8** %52, align 8
  %53 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  store %struct._ftsent* %53, %struct._ftsent** %4, align 8
  br label %54

54:                                               ; preds = %20, %19
  %55 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  ret %struct._ftsent* %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_set_stat_required(%struct._ftsent* noundef %0, i1 noundef %1) #4 {
  %3 = alloca %struct._ftsent*, align 8
  %4 = alloca i8, align 1
  store %struct._ftsent* %0, %struct._ftsent** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  br label %6

6:                                                ; preds = %2
  %7 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %8 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i32 0, i32 14
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  call void @abort() #20
  unreachable

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  %15 = load i8, i8* %4, align 1
  %16 = trunc i8 %15 to i1
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  %19 = sext i32 %18 to i64
  %20 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %20, i32 0, i32 17
  %22 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %21, i64 0, i64 0
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 8
  store i64 %19, i64* %23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i16 @fts_stat(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i1 noundef %2) #4 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.FTS*, align 8
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %5, align 8
  store %struct._ftsent* %1, %struct._ftsent** %6, align 8
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  %11 = load %struct.FTS*, %struct.FTS** %5, align 8
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load %struct.FTS*, %struct.FTS** %5, align 8
  %18 = getelementptr inbounds %struct.FTS, %struct.FTS* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %24 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  store i8 1, i8* %7, align 1
  br label %28

28:                                               ; preds = %27, %22, %16
  %29 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %30 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %29, i32 0, i32 17
  %31 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %30, i64 0, i64 0
  store %struct.stat* %31, %struct.stat** %8, align 8
  %32 = load i8, i8* %7, align 1
  %33 = trunc i8 %32 to i1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 256
  store i32 %35, i32* %9, align 4
  %36 = load %struct.FTS*, %struct.FTS** %5, align 8
  %37 = getelementptr inbounds %struct.FTS, %struct.FTS* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %40 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %39, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.stat*, %struct.stat** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @fstatat(i32 noundef %38, i8* noundef %41, %struct.stat* noundef %42, i32 noundef %43) #19
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %28
  %47 = load i8, i8* %7, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = call i32* @__errno_location() #22
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.FTS*, %struct.FTS** %5, align 8
  %55 = getelementptr inbounds %struct.FTS, %struct.FTS* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %58 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.stat*, %struct.stat** %8, align 8
  %61 = call i32 @fstatat(i32 noundef %56, i8* noundef %59, %struct.stat* noundef %60, i32 noundef 256) #19
  %62 = icmp sle i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32* @__errno_location() #22
  store i32 0, i32* %64, align 4
  store i16 13, i16* %4, align 2
  br label %128

65:                                               ; preds = %53, %49, %46
  %66 = call i32* @__errno_location() #22
  %67 = load i32, i32* %66, align 4
  %68 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.stat*, %struct.stat** %8, align 8
  %71 = bitcast %struct.stat* %70 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %71, i8 0, i64 128, i1 false)
  store i16 10, i16* %4, align 2
  br label %128

72:                                               ; preds = %28
  %73 = load %struct.stat*, %struct.stat** %8, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 61440
  %77 = icmp eq i32 %76, 16384
  br i1 %77, label %78, label %113

78:                                               ; preds = %72
  %79 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %80 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %79, i32 0, i32 18
  %81 = getelementptr inbounds [0 x i8], [0 x i8]* %80, i64 0, i64 0
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %112

85:                                               ; preds = %78
  %86 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %87 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %86, i32 0, i32 18
  %88 = getelementptr inbounds [0 x i8], [0 x i8]* %87, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %93 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %92, i32 0, i32 18
  %94 = getelementptr inbounds [0 x i8], [0 x i8]* %93, i64 0, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %100 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %99, i32 0, i32 18
  %101 = getelementptr inbounds [0 x i8], [0 x i8]* %100, i64 0, i64 2
  %102 = load i8, i8* %101, align 2
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %98, %85
  %105 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %106 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %105, i32 0, i32 12
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 5
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %4, align 2
  br label %128

112:                                              ; preds = %98, %91, %78
  store i16 1, i16* %4, align 2
  br label %128

113:                                              ; preds = %72
  %114 = load %struct.stat*, %struct.stat** %8, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 61440
  %118 = icmp eq i32 %117, 40960
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i16 12, i16* %4, align 2
  br label %128

120:                                              ; preds = %113
  %121 = load %struct.stat*, %struct.stat** %8, align 8
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 61440
  %125 = icmp eq i32 %124, 32768
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i16 8, i16* %4, align 2
  br label %128

127:                                              ; preds = %120
  store i16 3, i16* %4, align 2
  br label %128

128:                                              ; preds = %127, %126, %119, %112, %104, %65, %63
  %129 = load i16, i16* %4, align 2
  ret i16 %129
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._ftsent* @fts_sort(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i64 noundef %2) #4 {
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca %struct.FTS*, align 8
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._ftsent**, align 8
  %9 = alloca %struct._ftsent*, align 8
  %10 = alloca %struct._ftsent*, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca %struct._ftsent**, align 8
  store %struct.FTS* %0, %struct.FTS** %5, align 8
  store %struct._ftsent* %1, %struct._ftsent** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = ptrtoint %struct._ftsent** %10 to i64
  %14 = bitcast %struct._ftsent** %10 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.FTS*, %struct.FTS** %5, align 8
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %18, i32 0, i32 9
  %20 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %19, align 8
  %21 = bitcast i32 (%struct._ftsent**, %struct._ftsent**)* %20 to i32 (i8*, i8*)*
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 (i8*, i8*)* [ %21, %17 ], [ @fts_compar, %22 ]
  store i32 (i8*, i8*)* %24, i32 (i8*, i8*)** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.FTS*, %struct.FTS** %5, align 8
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 40
  %33 = load %struct.FTS*, %struct.FTS** %5, align 8
  %34 = getelementptr inbounds %struct.FTS, %struct.FTS* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  %35 = load %struct.FTS*, %struct.FTS** %5, align 8
  %36 = getelementptr inbounds %struct.FTS, %struct.FTS* %35, i32 0, i32 2
  %37 = load %struct._ftsent**, %struct._ftsent*** %36, align 8
  %38 = bitcast %struct._ftsent** %37 to i8*
  %39 = load %struct.FTS*, %struct.FTS** %5, align 8
  %40 = getelementptr inbounds %struct.FTS, %struct.FTS* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @rpl_reallocarray(i8* noundef %38, i64 noundef %41, i64 noundef 8)
  %43 = bitcast i8* %42 to %struct._ftsent**
  store %struct._ftsent** %43, %struct._ftsent*** %12, align 8
  %44 = icmp ne %struct._ftsent** %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %30
  %46 = load %struct.FTS*, %struct.FTS** %5, align 8
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %46, i32 0, i32 2
  %48 = load %struct._ftsent**, %struct._ftsent*** %47, align 8
  %49 = bitcast %struct._ftsent** %48 to i8*
  call void @free(i8* noundef %49) #19
  %50 = load %struct.FTS*, %struct.FTS** %5, align 8
  %51 = getelementptr inbounds %struct.FTS, %struct.FTS* %50, i32 0, i32 2
  store %struct._ftsent** null, %struct._ftsent*** %51, align 8
  %52 = load %struct.FTS*, %struct.FTS** %5, align 8
  %53 = getelementptr inbounds %struct.FTS, %struct.FTS* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  store %struct._ftsent* %54, %struct._ftsent** %4, align 8
  br label %107

55:                                               ; preds = %30
  %56 = load %struct._ftsent**, %struct._ftsent*** %12, align 8
  %57 = load %struct.FTS*, %struct.FTS** %5, align 8
  %58 = getelementptr inbounds %struct.FTS, %struct.FTS* %57, i32 0, i32 2
  store %struct._ftsent** %56, %struct._ftsent*** %58, align 8
  br label %59

59:                                               ; preds = %55, %23
  %60 = load %struct.FTS*, %struct.FTS** %5, align 8
  %61 = getelementptr inbounds %struct.FTS, %struct.FTS* %60, i32 0, i32 2
  %62 = load %struct._ftsent**, %struct._ftsent*** %61, align 8
  store %struct._ftsent** %62, %struct._ftsent*** %8, align 8
  %63 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  store %struct._ftsent* %63, %struct._ftsent** %9, align 8
  br label %64

64:                                               ; preds = %71, %59
  %65 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %66 = icmp ne %struct._ftsent* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %69 = load %struct._ftsent**, %struct._ftsent*** %8, align 8
  %70 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %69, i32 1
  store %struct._ftsent** %70, %struct._ftsent*** %8, align 8
  store %struct._ftsent* %68, %struct._ftsent** %69, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %72, i32 0, i32 2
  %74 = load %struct._ftsent*, %struct._ftsent** %73, align 8
  store %struct._ftsent* %74, %struct._ftsent** %9, align 8
  br label %64, !llvm.loop !29

75:                                               ; preds = %64
  %76 = load %struct.FTS*, %struct.FTS** %5, align 8
  %77 = getelementptr inbounds %struct.FTS, %struct.FTS* %76, i32 0, i32 2
  %78 = load %struct._ftsent**, %struct._ftsent*** %77, align 8
  %79 = bitcast %struct._ftsent** %78 to i8*
  %80 = load i64, i64* %7, align 8
  %81 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  call void @qsort(i8* noundef %79, i64 noundef %80, i64 noundef 8, i32 (i8*, i8*)* noundef %81)
  %82 = load %struct.FTS*, %struct.FTS** %5, align 8
  %83 = getelementptr inbounds %struct.FTS, %struct.FTS* %82, i32 0, i32 2
  %84 = load %struct._ftsent**, %struct._ftsent*** %83, align 8
  store %struct._ftsent** %84, %struct._ftsent*** %8, align 8
  %85 = load %struct._ftsent*, %struct._ftsent** %84, align 8
  store %struct._ftsent* %85, %struct._ftsent** %6, align 8
  br label %86

86:                                               ; preds = %98, %75
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct._ftsent**, %struct._ftsent*** %8, align 8
  %92 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %91, i64 1
  %93 = load %struct._ftsent*, %struct._ftsent** %92, align 8
  %94 = load %struct._ftsent**, %struct._ftsent*** %8, align 8
  %95 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %94, i64 0
  %96 = load %struct._ftsent*, %struct._ftsent** %95, align 8
  %97 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %96, i32 0, i32 2
  store %struct._ftsent* %93, %struct._ftsent** %97, align 8
  br label %98

98:                                               ; preds = %90
  %99 = load %struct._ftsent**, %struct._ftsent*** %8, align 8
  %100 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %99, i32 1
  store %struct._ftsent** %100, %struct._ftsent*** %8, align 8
  br label %86, !llvm.loop !30

101:                                              ; preds = %86
  %102 = load %struct._ftsent**, %struct._ftsent*** %8, align 8
  %103 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %102, i64 0
  %104 = load %struct._ftsent*, %struct._ftsent** %103, align 8
  %105 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %104, i32 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %105, align 8
  %106 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  store %struct._ftsent* %106, %struct._ftsent** %4, align 8
  br label %107

107:                                              ; preds = %101, %45
  %108 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  ret %struct._ftsent* %108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @setup_dir(%struct.FTS* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.FTS*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  %4 = load %struct.FTS*, %struct.FTS** %3, align 8
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 258
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = call noalias %struct.hash_table* @hash_initialize(i64 noundef 31, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef @AD_hash, i1 (i8*, i8*)* noundef @AD_compare, void (i8*)* noundef @free)
  %11 = load %struct.FTS*, %struct.FTS** %3, align 8
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i32 0, i32 12
  %13 = bitcast %union.anon* %12 to %struct.hash_table**
  store %struct.hash_table* %10, %struct.hash_table** %13, align 8
  %14 = load %struct.FTS*, %struct.FTS** %3, align 8
  %15 = getelementptr inbounds %struct.FTS, %struct.FTS* %14, i32 0, i32 12
  %16 = bitcast %union.anon* %15 to %struct.hash_table**
  %17 = load %struct.hash_table*, %struct.hash_table** %16, align 8
  %18 = icmp ne %struct.hash_table* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  store i1 false, i1* %2, align 1
  br label %39

20:                                               ; preds = %9
  br label %38

21:                                               ; preds = %1
  %22 = call noalias i8* @malloc(i64 noundef 32) #19
  %23 = bitcast i8* %22 to %struct.cycle_check_state*
  %24 = load %struct.FTS*, %struct.FTS** %3, align 8
  %25 = getelementptr inbounds %struct.FTS, %struct.FTS* %24, i32 0, i32 12
  %26 = bitcast %union.anon* %25 to %struct.cycle_check_state**
  store %struct.cycle_check_state* %23, %struct.cycle_check_state** %26, align 8
  %27 = load %struct.FTS*, %struct.FTS** %3, align 8
  %28 = getelementptr inbounds %struct.FTS, %struct.FTS* %27, i32 0, i32 12
  %29 = bitcast %union.anon* %28 to %struct.cycle_check_state**
  %30 = load %struct.cycle_check_state*, %struct.cycle_check_state** %29, align 8
  %31 = icmp ne %struct.cycle_check_state* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i1 false, i1* %2, align 1
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.FTS*, %struct.FTS** %3, align 8
  %35 = getelementptr inbounds %struct.FTS, %struct.FTS* %34, i32 0, i32 12
  %36 = bitcast %union.anon* %35 to %struct.cycle_check_state**
  %37 = load %struct.cycle_check_state*, %struct.cycle_check_state** %36, align 8
  call void @cycle_check_init(%struct.cycle_check_state* noundef %37)
  br label %38

38:                                               ; preds = %33, %20
  store i1 true, i1* %2, align 1
  br label %39

39:                                               ; preds = %38, %32, %19
  %40 = load i1, i1* %2, align 1
  ret i1 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diropen(%struct.FTS* noundef %0, i8* noundef %1) #4 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.FTS*, %struct.FTS** %3, align 8
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 32768, i32 0
  %14 = or i32 542976, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.FTS*, %struct.FTS** %3, align 8
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.FTS*, %struct.FTS** %3, align 8
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %23, i8* noundef %24, i32 noundef %25)
  br label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @open_safer(i8* noundef %28, i32 noundef %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i32 [ %26, %20 ], [ %30, %27 ]
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_lfree(%struct._ftsent* noundef %0) #4 {
  %2 = alloca %struct._ftsent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._ftsent*, align 8
  store %struct._ftsent* %0, %struct._ftsent** %2, align 8
  %5 = call i32* @__errno_location() #22
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  store %struct._ftsent* %8, %struct._ftsent** %4, align 8
  %9 = icmp ne %struct._ftsent* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %11, i32 0, i32 2
  %13 = load %struct._ftsent*, %struct._ftsent** %12, align 8
  store %struct._ftsent* %13, %struct._ftsent** %2, align 8
  %14 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %14, i32 0, i32 3
  %16 = load %struct.__dirstream*, %struct.__dirstream** %15, align 8
  %17 = icmp ne %struct.__dirstream* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %19, i32 0, i32 3
  %21 = load %struct.__dirstream*, %struct.__dirstream** %20, align 8
  %22 = call i32 @closedir(%struct.__dirstream* noundef %21)
  br label %23

23:                                               ; preds = %18, %10
  %24 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %25 = bitcast %struct._ftsent* %24 to i8*
  call void @free(i8* noundef %25) #19
  br label %7, !llvm.loop !31

26:                                               ; preds = %7
  %27 = load i32, i32* %3, align 4
  %28 = call i32* @__errno_location() #22
  store i32 %27, i32* %28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AD_hash(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Active_dir*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.Active_dir*
  store %struct.Active_dir* %7, %struct.Active_dir** %5, align 8
  %8 = load %struct.Active_dir*, %struct.Active_dir** %5, align 8
  %9 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %10, %11
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @AD_compare(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Active_dir*, align 8
  %6 = alloca %struct.Active_dir*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.Active_dir*
  store %struct.Active_dir* %8, %struct.Active_dir** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.Active_dir*
  store %struct.Active_dir* %10, %struct.Active_dir** %6, align 8
  %11 = load %struct.Active_dir*, %struct.Active_dir** %5, align 8
  %12 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %15 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.Active_dir*, %struct.Active_dir** %5, align 8
  %20 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %23 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br label %26

26:                                               ; preds = %18, %2
  %27 = phi i1 [ false, %2 ], [ %25, %18 ]
  ret i1 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_compar(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._ftsent**, align 8
  %6 = alloca %struct._ftsent**, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct._ftsent**
  store %struct._ftsent** %8, %struct._ftsent*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct._ftsent**
  store %struct._ftsent** %10, %struct._ftsent*** %6, align 8
  %11 = load %struct._ftsent**, %struct._ftsent*** %5, align 8
  %12 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %11, i64 0
  %13 = load %struct._ftsent*, %struct._ftsent** %12, align 8
  %14 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %13, i32 0, i32 11
  %15 = load %struct.FTS*, %struct.FTS** %14, align 8
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %15, i32 0, i32 9
  %17 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %16, align 8
  %18 = load %struct._ftsent**, %struct._ftsent*** %5, align 8
  %19 = load %struct._ftsent**, %struct._ftsent*** %6, align 8
  %20 = call i32 %17(%struct._ftsent** noundef %18, %struct._ftsent** noundef %19)
  ret i32 %20
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fts_close(%struct.FTS* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca %struct._ftsent*, align 8
  %6 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  %7 = load %struct.FTS*, %struct.FTS** %3, align 8
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %7, i32 0, i32 0
  %9 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %10 = icmp ne %struct._ftsent* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.FTS*, %struct.FTS** %3, align 8
  %13 = getelementptr inbounds %struct.FTS, %struct.FTS* %12, i32 0, i32 0
  %14 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  store %struct._ftsent* %14, %struct._ftsent** %4, align 8
  br label %15

15:                                               ; preds = %34, %11
  %16 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %21, %struct._ftsent** %5, align 8
  %22 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %23 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i32 0, i32 2
  %24 = load %struct._ftsent*, %struct._ftsent** %23, align 8
  %25 = icmp ne %struct._ftsent* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %27, i32 0, i32 2
  %29 = load %struct._ftsent*, %struct._ftsent** %28, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %32 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %31, i32 0, i32 1
  %33 = load %struct._ftsent*, %struct._ftsent** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi %struct._ftsent* [ %29, %26 ], [ %33, %30 ]
  store %struct._ftsent* %35, %struct._ftsent** %4, align 8
  %36 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %37 = bitcast %struct._ftsent* %36 to i8*
  call void @free(i8* noundef %37) #19
  br label %15, !llvm.loop !32

38:                                               ; preds = %15
  %39 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %40 = bitcast %struct._ftsent* %39 to i8*
  call void @free(i8* noundef %40) #19
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.FTS*, %struct.FTS** %3, align 8
  %43 = getelementptr inbounds %struct.FTS, %struct.FTS* %42, i32 0, i32 1
  %44 = load %struct._ftsent*, %struct._ftsent** %43, align 8
  %45 = icmp ne %struct._ftsent* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.FTS*, %struct.FTS** %3, align 8
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %47, i32 0, i32 1
  %49 = load %struct._ftsent*, %struct._ftsent** %48, align 8
  call void @fts_lfree(%struct._ftsent* noundef %49)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.FTS*, %struct.FTS** %3, align 8
  %52 = getelementptr inbounds %struct.FTS, %struct.FTS* %51, i32 0, i32 2
  %53 = load %struct._ftsent**, %struct._ftsent*** %52, align 8
  %54 = bitcast %struct._ftsent** %53 to i8*
  call void @free(i8* noundef %54) #19
  %55 = load %struct.FTS*, %struct.FTS** %3, align 8
  %56 = getelementptr inbounds %struct.FTS, %struct.FTS* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  call void @free(i8* noundef %57) #19
  store i32 0, i32* %6, align 4
  %58 = load %struct.FTS*, %struct.FTS** %3, align 8
  %59 = getelementptr inbounds %struct.FTS, %struct.FTS* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 512
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %50
  %64 = load %struct.FTS*, %struct.FTS** %3, align 8
  %65 = getelementptr inbounds %struct.FTS, %struct.FTS* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 0, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.FTS*, %struct.FTS** %3, align 8
  %70 = getelementptr inbounds %struct.FTS, %struct.FTS* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @close(i32 noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call i32* @__errno_location() #22
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %63
  br label %109

79:                                               ; preds = %50
  %80 = load %struct.FTS*, %struct.FTS** %3, align 8
  %81 = getelementptr inbounds %struct.FTS, %struct.FTS* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %79
  %86 = load %struct.FTS*, %struct.FTS** %3, align 8
  %87 = getelementptr inbounds %struct.FTS, %struct.FTS* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @fchdir(i32 noundef %88) #19
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = call i32* @__errno_location() #22
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.FTS*, %struct.FTS** %3, align 8
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @close(i32 noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %94
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %78
  %110 = load %struct.FTS*, %struct.FTS** %3, align 8
  %111 = getelementptr inbounds %struct.FTS, %struct.FTS* %110, i32 0, i32 13
  call void @fd_ring_clear(%struct.I_ring* noundef %111)
  %112 = load %struct.FTS*, %struct.FTS** %3, align 8
  %113 = getelementptr inbounds %struct.FTS, %struct.FTS* %112, i32 0, i32 11
  %114 = load %struct.hash_table*, %struct.hash_table** %113, align 8
  %115 = icmp ne %struct.hash_table* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.FTS*, %struct.FTS** %3, align 8
  %118 = getelementptr inbounds %struct.FTS, %struct.FTS* %117, i32 0, i32 11
  %119 = load %struct.hash_table*, %struct.hash_table** %118, align 8
  call void @hash_free(%struct.hash_table* noundef %119)
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.FTS*, %struct.FTS** %3, align 8
  call void @free_dir(%struct.FTS* noundef %121)
  %122 = load %struct.FTS*, %struct.FTS** %3, align 8
  %123 = bitcast %struct.FTS* %122 to i8*
  call void @free(i8* noundef %123) #19
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = call i32* @__errno_location() #22
  store i32 %127, i32* %128, align 4
  store i32 -1, i32* %2, align 4
  br label %130

129:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_ring_clear(%struct.I_ring* noundef %0) #4 {
  %2 = alloca %struct.I_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.I_ring* %0, %struct.I_ring** %2, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %6 = call i1 @i_ring_empty(%struct.I_ring* noundef %5) #21
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %10 = call i32 @i_ring_pop(%struct.I_ring* noundef %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 0, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @close(i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %4, !llvm.loop !33

17:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dir(%struct.FTS* noundef %0) #4 {
  %2 = alloca %struct.FTS*, align 8
  store %struct.FTS* %0, %struct.FTS** %2, align 8
  %3 = load %struct.FTS*, %struct.FTS** %2, align 8
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 258
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.FTS*, %struct.FTS** %2, align 8
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %9, i32 0, i32 12
  %11 = bitcast %union.anon* %10 to %struct.hash_table**
  %12 = load %struct.hash_table*, %struct.hash_table** %11, align 8
  %13 = icmp ne %struct.hash_table* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.FTS*, %struct.FTS** %2, align 8
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %15, i32 0, i32 12
  %17 = bitcast %union.anon* %16 to %struct.hash_table**
  %18 = load %struct.hash_table*, %struct.hash_table** %17, align 8
  call void @hash_free(%struct.hash_table* noundef %18)
  br label %19

19:                                               ; preds = %14, %8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.FTS*, %struct.FTS** %2, align 8
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %21, i32 0, i32 12
  %23 = bitcast %union.anon* %22 to %struct.cycle_check_state**
  %24 = load %struct.cycle_check_state*, %struct.cycle_check_state** %23, align 8
  %25 = bitcast %struct.cycle_check_state* %24 to i8*
  call void @free(i8* noundef %25) #19
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %0) #4 {
  %2 = alloca %struct._ftsent*, align 8
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i8*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  %8 = load %struct.FTS*, %struct.FTS** %3, align 8
  %9 = getelementptr inbounds %struct.FTS, %struct.FTS* %8, i32 0, i32 0
  %10 = load %struct._ftsent*, %struct._ftsent** %9, align 8
  %11 = icmp eq %struct._ftsent* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.FTS*, %struct.FTS** %3, align 8
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 16384
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

19:                                               ; preds = %12
  %20 = load %struct.FTS*, %struct.FTS** %3, align 8
  %21 = getelementptr inbounds %struct.FTS, %struct.FTS* %20, i32 0, i32 0
  %22 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  store %struct._ftsent* %22, %struct._ftsent** %4, align 8
  %23 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %24 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %23, i32 0, i32 16
  %25 = load i16, i16* %24, align 4
  store i16 %25, i16* %5, align 2
  %26 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %26, i32 0, i32 16
  store i16 3, i16* %27, align 4
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.FTS*, %struct.FTS** %3, align 8
  %33 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %34 = call i16 @fts_stat(%struct.FTS* noundef %32, %struct._ftsent* noundef %33, i1 noundef false)
  %35 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %36 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %35, i32 0, i32 14
  store i16 %34, i16* %36, align 8
  %37 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %37, %struct._ftsent** %2, align 8
  br label %680

38:                                               ; preds = %19
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %93

42:                                               ; preds = %38
  %43 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %43, i32 0, i32 14
  %45 = load i16, i16* %44, align 8
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %50 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %49, i32 0, i32 14
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %93

54:                                               ; preds = %48, %42
  %55 = load %struct.FTS*, %struct.FTS** %3, align 8
  %56 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %57 = call i16 @fts_stat(%struct.FTS* noundef %55, %struct._ftsent* noundef %56, i1 noundef true)
  %58 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %58, i32 0, i32 14
  store i16 %57, i16* %59, align 8
  %60 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %60, i32 0, i32 14
  %62 = load i16, i16* %61, align 8
  %63 = zext i16 %62 to i32
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %92

65:                                               ; preds = %54
  %66 = load %struct.FTS*, %struct.FTS** %3, align 8
  %67 = getelementptr inbounds %struct.FTS, %struct.FTS* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %65
  %72 = load %struct.FTS*, %struct.FTS** %3, align 8
  %73 = call i32 @diropen(%struct.FTS* noundef %72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0))
  %74 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = icmp slt i32 %73, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = call i32* @__errno_location() #22
  %79 = load i32, i32* %78, align 4
  %80 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %81 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %83 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %82, i32 0, i32 14
  store i16 7, i16* %83, align 8
  br label %91

84:                                               ; preds = %71
  %85 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %86 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %85, i32 0, i32 15
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %88, 2
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %86, align 2
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %65, %54
  br label %430

93:                                               ; preds = %48, %38
  %94 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %95 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %94, i32 0, i32 14
  %96 = load i16, i16* %95, align 8
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %255

99:                                               ; preds = %93
  %100 = load i16, i16* %5, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %119, label %103

103:                                              ; preds = %99
  %104 = load %struct.FTS*, %struct.FTS** %3, align 8
  %105 = getelementptr inbounds %struct.FTS, %struct.FTS* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 64
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %103
  %110 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %111 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %110, i32 0, i32 17
  %112 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %111, i64 0, i64 0
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.FTS*, %struct.FTS** %3, align 8
  %116 = getelementptr inbounds %struct.FTS, %struct.FTS* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %109, %99
  %120 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %121 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %120, i32 0, i32 15
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %128 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 noundef %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load %struct.FTS*, %struct.FTS** %3, align 8
  %133 = getelementptr inbounds %struct.FTS, %struct.FTS* %132, i32 0, i32 1
  %134 = load %struct._ftsent*, %struct._ftsent** %133, align 8
  %135 = icmp ne %struct._ftsent* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.FTS*, %struct.FTS** %3, align 8
  %138 = getelementptr inbounds %struct.FTS, %struct.FTS* %137, i32 0, i32 1
  %139 = load %struct._ftsent*, %struct._ftsent** %138, align 8
  call void @fts_lfree(%struct._ftsent* noundef %139)
  %140 = load %struct.FTS*, %struct.FTS** %3, align 8
  %141 = getelementptr inbounds %struct.FTS, %struct.FTS* %140, i32 0, i32 1
  store %struct._ftsent* null, %struct._ftsent** %141, align 8
  br label %142

142:                                              ; preds = %136, %131
  %143 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %144 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %143, i32 0, i32 14
  store i16 6, i16* %144, align 8
  br label %145

145:                                              ; preds = %142
  %146 = load %struct.FTS*, %struct.FTS** %3, align 8
  %147 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  call void @leave_dir(%struct.FTS* noundef %146, %struct._ftsent* noundef %147)
  br label %148

148:                                              ; preds = %145
  %149 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %149, %struct._ftsent** %2, align 8
  br label %680

150:                                              ; preds = %109, %103
  %151 = load %struct.FTS*, %struct.FTS** %3, align 8
  %152 = getelementptr inbounds %struct.FTS, %struct.FTS* %151, i32 0, i32 1
  %153 = load %struct._ftsent*, %struct._ftsent** %152, align 8
  %154 = icmp ne %struct._ftsent* %153, null
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load %struct.FTS*, %struct.FTS** %3, align 8
  %157 = getelementptr inbounds %struct.FTS, %struct.FTS* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 8192
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load %struct.FTS*, %struct.FTS** %3, align 8
  %163 = getelementptr inbounds %struct.FTS, %struct.FTS* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, -8193
  store i32 %165, i32* %163, align 8
  %166 = load %struct.FTS*, %struct.FTS** %3, align 8
  %167 = getelementptr inbounds %struct.FTS, %struct.FTS* %166, i32 0, i32 1
  %168 = load %struct._ftsent*, %struct._ftsent** %167, align 8
  call void @fts_lfree(%struct._ftsent* noundef %168)
  %169 = load %struct.FTS*, %struct.FTS** %3, align 8
  %170 = getelementptr inbounds %struct.FTS, %struct.FTS* %169, i32 0, i32 1
  store %struct._ftsent* null, %struct._ftsent** %170, align 8
  br label %171

171:                                              ; preds = %161, %155, %150
  %172 = load %struct.FTS*, %struct.FTS** %3, align 8
  %173 = getelementptr inbounds %struct.FTS, %struct.FTS* %172, i32 0, i32 1
  %174 = load %struct._ftsent*, %struct._ftsent** %173, align 8
  %175 = icmp ne %struct._ftsent* %174, null
  br i1 %175, label %176, label %215

176:                                              ; preds = %171
  %177 = load %struct.FTS*, %struct.FTS** %3, align 8
  %178 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %179 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %180 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %179, i32 0, i32 6
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @fts_safe_changedir(%struct.FTS* noundef %177, %struct._ftsent* noundef %178, i32 noundef -1, i8* noundef %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %214

184:                                              ; preds = %176
  %185 = call i32* @__errno_location() #22
  %186 = load i32, i32* %185, align 4
  %187 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %188 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 8
  %189 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %190 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %189, i32 0, i32 15
  %191 = load i16, i16* %190, align 2
  %192 = zext i16 %191 to i32
  %193 = or i32 %192, 1
  %194 = trunc i32 %193 to i16
  store i16 %194, i16* %190, align 2
  %195 = load %struct.FTS*, %struct.FTS** %3, align 8
  %196 = getelementptr inbounds %struct.FTS, %struct.FTS* %195, i32 0, i32 1
  %197 = load %struct._ftsent*, %struct._ftsent** %196, align 8
  store %struct._ftsent* %197, %struct._ftsent** %4, align 8
  br label %198

198:                                              ; preds = %209, %184
  %199 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %200 = icmp ne %struct._ftsent* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %203 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %202, i32 0, i32 1
  %204 = load %struct._ftsent*, %struct._ftsent** %203, align 8
  %205 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %204, i32 0, i32 6
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %208 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %207, i32 0, i32 6
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %201
  %210 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %211 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %210, i32 0, i32 2
  %212 = load %struct._ftsent*, %struct._ftsent** %211, align 8
  store %struct._ftsent* %212, %struct._ftsent** %4, align 8
  br label %198, !llvm.loop !34

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %176
  br label %249

215:                                              ; preds = %171
  %216 = load %struct.FTS*, %struct.FTS** %3, align 8
  %217 = call %struct._ftsent* @fts_build(%struct.FTS* noundef %216, i32 noundef 3)
  %218 = load %struct.FTS*, %struct.FTS** %3, align 8
  %219 = getelementptr inbounds %struct.FTS, %struct.FTS* %218, i32 0, i32 1
  store %struct._ftsent* %217, %struct._ftsent** %219, align 8
  %220 = icmp eq %struct._ftsent* %217, null
  br i1 %220, label %221, label %248

221:                                              ; preds = %215
  %222 = load %struct.FTS*, %struct.FTS** %3, align 8
  %223 = getelementptr inbounds %struct.FTS, %struct.FTS* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, 16384
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

228:                                              ; preds = %221
  %229 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %230 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %235 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %234, i32 0, i32 14
  %236 = load i16, i16* %235, align 8
  %237 = zext i16 %236 to i32
  %238 = icmp ne i32 %237, 4
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %241 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %240, i32 0, i32 14
  store i16 7, i16* %241, align 8
  br label %242

242:                                              ; preds = %239, %233, %228
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.FTS*, %struct.FTS** %3, align 8
  %245 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  call void @leave_dir(%struct.FTS* noundef %244, %struct._ftsent* noundef %245)
  br label %246

246:                                              ; preds = %243
  %247 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %247, %struct._ftsent** %2, align 8
  br label %680

248:                                              ; preds = %215
  br label %249

249:                                              ; preds = %248, %214
  %250 = load %struct.FTS*, %struct.FTS** %3, align 8
  %251 = getelementptr inbounds %struct.FTS, %struct.FTS* %250, i32 0, i32 1
  %252 = load %struct._ftsent*, %struct._ftsent** %251, align 8
  store %struct._ftsent* %252, %struct._ftsent** %4, align 8
  %253 = load %struct.FTS*, %struct.FTS** %3, align 8
  %254 = getelementptr inbounds %struct.FTS, %struct.FTS* %253, i32 0, i32 1
  store %struct._ftsent* null, %struct._ftsent** %254, align 8
  br label %385

255:                                              ; preds = %93
  br label %256

256:                                              ; preds = %491, %336, %255
  %257 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %257, %struct._ftsent** %6, align 8
  %258 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %259 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %258, i32 0, i32 2
  %260 = load %struct._ftsent*, %struct._ftsent** %259, align 8
  %261 = icmp eq %struct._ftsent* %260, null
  br i1 %261, label %262, label %297

262:                                              ; preds = %256
  %263 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i32 0, i32 1
  %265 = load %struct._ftsent*, %struct._ftsent** %264, align 8
  %266 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %265, i32 0, i32 3
  %267 = load %struct.__dirstream*, %struct.__dirstream** %266, align 8
  %268 = icmp ne %struct.__dirstream* %267, null
  br i1 %268, label %269, label %297

269:                                              ; preds = %262
  %270 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %271 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %270, i32 0, i32 1
  %272 = load %struct._ftsent*, %struct._ftsent** %271, align 8
  store %struct._ftsent* %272, %struct._ftsent** %4, align 8
  %273 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %274 = load %struct.FTS*, %struct.FTS** %3, align 8
  %275 = getelementptr inbounds %struct.FTS, %struct.FTS* %274, i32 0, i32 0
  store %struct._ftsent* %273, %struct._ftsent** %275, align 8
  %276 = load %struct.FTS*, %struct.FTS** %3, align 8
  %277 = getelementptr inbounds %struct.FTS, %struct.FTS* %276, i32 0, i32 4
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %280 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %279, i32 0, i32 10
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i8, i8* %278, i64 %281
  store i8 0, i8* %282, align 1
  %283 = load %struct.FTS*, %struct.FTS** %3, align 8
  %284 = call %struct._ftsent* @fts_build(%struct.FTS* noundef %283, i32 noundef 3)
  store %struct._ftsent* %284, %struct._ftsent** %4, align 8
  %285 = icmp eq %struct._ftsent* %284, null
  br i1 %285, label %286, label %294

286:                                              ; preds = %269
  %287 = load %struct.FTS*, %struct.FTS** %3, align 8
  %288 = getelementptr inbounds %struct.FTS, %struct.FTS* %287, i32 0, i32 10
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, 16384
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

293:                                              ; preds = %286
  br label %520

294:                                              ; preds = %269
  %295 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %296 = bitcast %struct._ftsent* %295 to i8*
  call void @free(i8* noundef %296) #19
  br label %385

297:                                              ; preds = %262, %256
  %298 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %299 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %298, i32 0, i32 2
  %300 = load %struct._ftsent*, %struct._ftsent** %299, align 8
  store %struct._ftsent* %300, %struct._ftsent** %4, align 8
  %301 = icmp ne %struct._ftsent* %300, null
  br i1 %301, label %302, label %519

302:                                              ; preds = %297
  %303 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %304 = load %struct.FTS*, %struct.FTS** %3, align 8
  %305 = getelementptr inbounds %struct.FTS, %struct.FTS* %304, i32 0, i32 0
  store %struct._ftsent* %303, %struct._ftsent** %305, align 8
  %306 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %307 = bitcast %struct._ftsent* %306 to i8*
  call void @free(i8* noundef %307) #19
  %308 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %309 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %308, i32 0, i32 12
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %330

312:                                              ; preds = %302
  %313 = load %struct.FTS*, %struct.FTS** %3, align 8
  %314 = call i32 @restore_initial_cwd(%struct.FTS* noundef %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load %struct.FTS*, %struct.FTS** %3, align 8
  %318 = getelementptr inbounds %struct.FTS, %struct.FTS* %317, i32 0, i32 10
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, 16384
  store i32 %320, i32* %318, align 8
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

321:                                              ; preds = %312
  %322 = load %struct.FTS*, %struct.FTS** %3, align 8
  call void @free_dir(%struct.FTS* noundef %322)
  %323 = load %struct.FTS*, %struct.FTS** %3, align 8
  %324 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  call void @fts_load(%struct.FTS* noundef %323, %struct._ftsent* noundef %324)
  %325 = load %struct.FTS*, %struct.FTS** %3, align 8
  %326 = call i1 @setup_dir(%struct.FTS* noundef %325)
  br i1 %326, label %329, label %327

327:                                              ; preds = %321
  %328 = load %struct.FTS*, %struct.FTS** %3, align 8
  call void @free_dir(%struct.FTS* noundef %328)
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

329:                                              ; preds = %321
  br label %430

330:                                              ; preds = %302
  %331 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %332 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %331, i32 0, i32 16
  %333 = load i16, i16* %332, align 4
  %334 = zext i16 %333 to i32
  %335 = icmp eq i32 %334, 4
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %256

337:                                              ; preds = %330
  %338 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %339 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %338, i32 0, i32 16
  %340 = load i16, i16* %339, align 4
  %341 = zext i16 %340 to i32
  %342 = icmp eq i32 %341, 2
  br i1 %342, label %343, label %384

343:                                              ; preds = %337
  %344 = load %struct.FTS*, %struct.FTS** %3, align 8
  %345 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %346 = call i16 @fts_stat(%struct.FTS* noundef %344, %struct._ftsent* noundef %345, i1 noundef true)
  %347 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %348 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i32 0, i32 14
  store i16 %346, i16* %348, align 8
  %349 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %350 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %349, i32 0, i32 14
  %351 = load i16, i16* %350, align 8
  %352 = zext i16 %351 to i32
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %381

354:                                              ; preds = %343
  %355 = load %struct.FTS*, %struct.FTS** %3, align 8
  %356 = getelementptr inbounds %struct.FTS, %struct.FTS* %355, i32 0, i32 10
  %357 = load i32, i32* %356, align 8
  %358 = and i32 %357, 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %381, label %360

360:                                              ; preds = %354
  %361 = load %struct.FTS*, %struct.FTS** %3, align 8
  %362 = call i32 @diropen(%struct.FTS* noundef %361, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0))
  %363 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %364 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %363, i32 0, i32 9
  store i32 %362, i32* %364, align 4
  %365 = icmp slt i32 %362, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = call i32* @__errno_location() #22
  %368 = load i32, i32* %367, align 4
  %369 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %370 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %369, i32 0, i32 8
  store i32 %368, i32* %370, align 8
  %371 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %372 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %371, i32 0, i32 14
  store i16 7, i16* %372, align 8
  br label %380

373:                                              ; preds = %360
  %374 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %375 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %374, i32 0, i32 15
  %376 = load i16, i16* %375, align 2
  %377 = zext i16 %376 to i32
  %378 = or i32 %377, 2
  %379 = trunc i32 %378 to i16
  store i16 %379, i16* %375, align 2
  br label %380

380:                                              ; preds = %373, %366
  br label %381

381:                                              ; preds = %380, %354, %343
  %382 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %383 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %382, i32 0, i32 16
  store i16 3, i16* %383, align 4
  br label %384

384:                                              ; preds = %381, %337
  br label %385

385:                                              ; preds = %384, %294, %249
  %386 = load %struct.FTS*, %struct.FTS** %3, align 8
  %387 = getelementptr inbounds %struct.FTS, %struct.FTS* %386, i32 0, i32 4
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %390 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %389, i32 0, i32 1
  %391 = load %struct._ftsent*, %struct._ftsent** %390, align 8
  %392 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %391, i32 0, i32 7
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %395 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %394, i32 0, i32 1
  %396 = load %struct._ftsent*, %struct._ftsent** %395, align 8
  %397 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %396, i32 0, i32 10
  %398 = load i64, i64* %397, align 8
  %399 = sub i64 %398, 1
  %400 = getelementptr inbounds i8, i8* %393, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = icmp eq i32 %402, 47
  br i1 %403, label %404, label %411

404:                                              ; preds = %385
  %405 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %406 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %405, i32 0, i32 1
  %407 = load %struct._ftsent*, %struct._ftsent** %406, align 8
  %408 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %407, i32 0, i32 10
  %409 = load i64, i64* %408, align 8
  %410 = sub i64 %409, 1
  br label %417

411:                                              ; preds = %385
  %412 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %413 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %412, i32 0, i32 1
  %414 = load %struct._ftsent*, %struct._ftsent** %413, align 8
  %415 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %414, i32 0, i32 10
  %416 = load i64, i64* %415, align 8
  br label %417

417:                                              ; preds = %411, %404
  %418 = phi i64 [ %410, %404 ], [ %416, %411 ]
  %419 = getelementptr inbounds i8, i8* %388, i64 %418
  store i8* %419, i8** %7, align 8
  %420 = load i8*, i8** %7, align 8
  %421 = getelementptr inbounds i8, i8* %420, i32 1
  store i8* %421, i8** %7, align 8
  store i8 47, i8* %420, align 1
  %422 = load i8*, i8** %7, align 8
  %423 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %424 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %423, i32 0, i32 18
  %425 = getelementptr inbounds [0 x i8], [0 x i8]* %424, i64 0, i64 0
  %426 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %427 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i32 0, i32 13
  %428 = load i64, i64* %427, align 8
  %429 = add i64 %428, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %422, i8* align 8 %425, i64 %429, i1 false)
  br label %430

430:                                              ; preds = %417, %329, %92
  %431 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %432 = load %struct.FTS*, %struct.FTS** %3, align 8
  %433 = getelementptr inbounds %struct.FTS, %struct.FTS* %432, i32 0, i32 0
  store %struct._ftsent* %431, %struct._ftsent** %433, align 8
  %434 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %435 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %434, i32 0, i32 14
  %436 = load i16, i16* %435, align 8
  %437 = zext i16 %436 to i32
  %438 = icmp eq i32 %437, 11
  br i1 %438, label %439, label %464

439:                                              ; preds = %430
  %440 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %441 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %440, i32 0, i32 17
  %442 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %441, i64 0, i64 0
  %443 = getelementptr inbounds %struct.stat, %struct.stat* %442, i32 0, i32 8
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 2
  br i1 %445, label %446, label %452

446:                                              ; preds = %439
  %447 = load %struct.FTS*, %struct.FTS** %3, align 8
  %448 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %449 = call i16 @fts_stat(%struct.FTS* noundef %447, %struct._ftsent* noundef %448, i1 noundef false)
  %450 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %451 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %450, i32 0, i32 14
  store i16 %449, i16* %451, align 8
  br label %463

452:                                              ; preds = %439
  br label %453

453:                                              ; preds = %452
  %454 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %455 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %454, i32 0, i32 17
  %456 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %455, i64 0, i64 0
  %457 = getelementptr inbounds %struct.stat, %struct.stat* %456, i32 0, i32 8
  %458 = load i64, i64* %457, align 8
  %459 = icmp eq i64 %458, 1
  br i1 %459, label %461, label %460

460:                                              ; preds = %453
  call void @abort() #20
  unreachable

461:                                              ; preds = %453
  br label %462

462:                                              ; preds = %461
  br label %463

463:                                              ; preds = %462, %446
  br label %464

464:                                              ; preds = %463, %430
  %465 = load %struct.FTS*, %struct.FTS** %3, align 8
  %466 = getelementptr inbounds %struct.FTS, %struct.FTS* %465, i32 0, i32 10
  %467 = load i32, i32* %466, align 8
  %468 = and i32 %467, 4096
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %492

470:                                              ; preds = %464
  %471 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %472 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %471, i32 0, i32 14
  %473 = load i16, i16* %472, align 8
  %474 = zext i16 %473 to i32
  %475 = icmp ne i32 %474, 10
  br i1 %475, label %476, label %492

476:                                              ; preds = %470
  %477 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %478 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %477, i32 0, i32 12
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %492

481:                                              ; preds = %476
  %482 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %483 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %482, i32 0, i32 17
  %484 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %483, i64 0, i64 0
  %485 = getelementptr inbounds %struct.stat, %struct.stat* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.FTS*, %struct.FTS** %3, align 8
  %488 = getelementptr inbounds %struct.FTS, %struct.FTS* %487, i32 0, i32 3
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %486, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %481
  br label %256

492:                                              ; preds = %481, %476, %470, %464
  %493 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %494 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %493, i32 0, i32 14
  %495 = load i16, i16* %494, align 8
  %496 = zext i16 %495 to i32
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %498, label %517

498:                                              ; preds = %492
  %499 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %500 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %499, i32 0, i32 12
  %501 = load i64, i64* %500, align 8
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %511

503:                                              ; preds = %498
  %504 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %505 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %504, i32 0, i32 17
  %506 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %505, i64 0, i64 0
  %507 = getelementptr inbounds %struct.stat, %struct.stat* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = load %struct.FTS*, %struct.FTS** %3, align 8
  %510 = getelementptr inbounds %struct.FTS, %struct.FTS* %509, i32 0, i32 3
  store i64 %508, i64* %510, align 8
  br label %511

511:                                              ; preds = %503, %498
  %512 = load %struct.FTS*, %struct.FTS** %3, align 8
  %513 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %514 = call i1 @enter_dir(%struct.FTS* noundef %512, %struct._ftsent* noundef %513)
  br i1 %514, label %516, label %515

515:                                              ; preds = %511
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

516:                                              ; preds = %511
  br label %517

517:                                              ; preds = %516, %492
  %518 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %518, %struct._ftsent** %2, align 8
  br label %680

519:                                              ; preds = %297
  br label %520

520:                                              ; preds = %519, %293
  %521 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %522 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %521, i32 0, i32 1
  %523 = load %struct._ftsent*, %struct._ftsent** %522, align 8
  store %struct._ftsent* %523, %struct._ftsent** %4, align 8
  %524 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %525 = load %struct.FTS*, %struct.FTS** %3, align 8
  %526 = getelementptr inbounds %struct.FTS, %struct.FTS* %525, i32 0, i32 0
  store %struct._ftsent* %524, %struct._ftsent** %526, align 8
  %527 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %528 = bitcast %struct._ftsent* %527 to i8*
  call void @free(i8* noundef %528) #19
  %529 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %530 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %529, i32 0, i32 12
  %531 = load i64, i64* %530, align 8
  %532 = icmp eq i64 %531, -1
  br i1 %532, label %533, label %539

533:                                              ; preds = %520
  %534 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %535 = bitcast %struct._ftsent* %534 to i8*
  call void @free(i8* noundef %535) #19
  %536 = call i32* @__errno_location() #22
  store i32 0, i32* %536, align 4
  %537 = load %struct.FTS*, %struct.FTS** %3, align 8
  %538 = getelementptr inbounds %struct.FTS, %struct.FTS* %537, i32 0, i32 0
  store %struct._ftsent* null, %struct._ftsent** %538, align 8
  store %struct._ftsent* null, %struct._ftsent** %2, align 8
  br label %680

539:                                              ; preds = %520
  br label %540

540:                                              ; preds = %539
  %541 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %542 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %541, i32 0, i32 14
  %543 = load i16, i16* %542, align 8
  %544 = zext i16 %543 to i32
  %545 = icmp ne i32 %544, 11
  br i1 %545, label %547, label %546

546:                                              ; preds = %540
  call void @abort() #20
  unreachable

547:                                              ; preds = %540
  br label %548

548:                                              ; preds = %547
  %549 = load %struct.FTS*, %struct.FTS** %3, align 8
  %550 = getelementptr inbounds %struct.FTS, %struct.FTS* %549, i32 0, i32 4
  %551 = load i8*, i8** %550, align 8
  %552 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %553 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %552, i32 0, i32 10
  %554 = load i64, i64* %553, align 8
  %555 = getelementptr inbounds i8, i8* %551, i64 %554
  store i8 0, i8* %555, align 1
  %556 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %557 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %556, i32 0, i32 12
  %558 = load i64, i64* %557, align 8
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %574

560:                                              ; preds = %548
  %561 = load %struct.FTS*, %struct.FTS** %3, align 8
  %562 = call i32 @restore_initial_cwd(%struct.FTS* noundef %561)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %573

564:                                              ; preds = %560
  %565 = call i32* @__errno_location() #22
  %566 = load i32, i32* %565, align 4
  %567 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %568 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %567, i32 0, i32 8
  store i32 %566, i32* %568, align 8
  %569 = load %struct.FTS*, %struct.FTS** %3, align 8
  %570 = getelementptr inbounds %struct.FTS, %struct.FTS* %569, i32 0, i32 10
  %571 = load i32, i32* %570, align 8
  %572 = or i32 %571, 16384
  store i32 %572, i32* %570, align 8
  br label %573

573:                                              ; preds = %564, %560
  br label %643

574:                                              ; preds = %548
  %575 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %576 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %575, i32 0, i32 15
  %577 = load i16, i16* %576, align 2
  %578 = zext i16 %577 to i32
  %579 = and i32 %578, 2
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %618

581:                                              ; preds = %574
  %582 = load %struct.FTS*, %struct.FTS** %3, align 8
  %583 = getelementptr inbounds %struct.FTS, %struct.FTS* %582, i32 0, i32 10
  %584 = load i32, i32* %583, align 8
  %585 = and i32 %584, 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %613, label %587

587:                                              ; preds = %581
  %588 = load %struct.FTS*, %struct.FTS** %3, align 8
  %589 = getelementptr inbounds %struct.FTS, %struct.FTS* %588, i32 0, i32 10
  %590 = load i32, i32* %589, align 8
  %591 = and i32 %590, 512
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %587
  %594 = load %struct.FTS*, %struct.FTS** %3, align 8
  %595 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %596 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %595, i32 0, i32 9
  %597 = load i32, i32* %596, align 4
  call void @cwd_advance_fd(%struct.FTS* noundef %594, i32 noundef %597, i1 noundef true)
  br i1 false, label %604, label %613

598:                                              ; preds = %587
  %599 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %600 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %599, i32 0, i32 9
  %601 = load i32, i32* %600, align 4
  %602 = call i32 @fchdir(i32 noundef %601) #19
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %613

604:                                              ; preds = %598, %593
  %605 = call i32* @__errno_location() #22
  %606 = load i32, i32* %605, align 4
  %607 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %608 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %607, i32 0, i32 8
  store i32 %606, i32* %608, align 8
  %609 = load %struct.FTS*, %struct.FTS** %3, align 8
  %610 = getelementptr inbounds %struct.FTS, %struct.FTS* %609, i32 0, i32 10
  %611 = load i32, i32* %610, align 8
  %612 = or i32 %611, 16384
  store i32 %612, i32* %610, align 8
  br label %613

613:                                              ; preds = %604, %598, %593, %581
  %614 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %615 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %614, i32 0, i32 9
  %616 = load i32, i32* %615, align 4
  %617 = call i32 @close(i32 noundef %616)
  br label %642

618:                                              ; preds = %574
  %619 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %620 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %619, i32 0, i32 15
  %621 = load i16, i16* %620, align 2
  %622 = zext i16 %621 to i32
  %623 = and i32 %622, 1
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %641, label %625

625:                                              ; preds = %618
  %626 = load %struct.FTS*, %struct.FTS** %3, align 8
  %627 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %628 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %627, i32 0, i32 1
  %629 = load %struct._ftsent*, %struct._ftsent** %628, align 8
  %630 = call i32 @fts_safe_changedir(%struct.FTS* noundef %626, %struct._ftsent* noundef %629, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.179, i64 0, i64 0))
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %641

632:                                              ; preds = %625
  %633 = call i32* @__errno_location() #22
  %634 = load i32, i32* %633, align 4
  %635 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %636 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %635, i32 0, i32 8
  store i32 %634, i32* %636, align 8
  %637 = load %struct.FTS*, %struct.FTS** %3, align 8
  %638 = getelementptr inbounds %struct.FTS, %struct.FTS* %637, i32 0, i32 10
  %639 = load i32, i32* %638, align 8
  %640 = or i32 %639, 16384
  store i32 %640, i32* %638, align 8
  br label %641

641:                                              ; preds = %632, %625, %618
  br label %642

642:                                              ; preds = %641, %613
  br label %643

643:                                              ; preds = %642, %573
  %644 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %645 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %644, i32 0, i32 14
  %646 = load i16, i16* %645, align 8
  %647 = zext i16 %646 to i32
  %648 = icmp ne i32 %647, 2
  br i1 %648, label %649, label %669

649:                                              ; preds = %643
  %650 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %651 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %650, i32 0, i32 8
  %652 = load i32, i32* %651, align 8
  %653 = icmp ne i32 %652, 0
  %654 = zext i1 %653 to i64
  %655 = select i1 %653, i32 7, i32 6
  %656 = trunc i32 %655 to i16
  %657 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %658 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %657, i32 0, i32 14
  store i16 %656, i16* %658, align 8
  %659 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %660 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %659, i32 0, i32 8
  %661 = load i32, i32* %660, align 8
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %668

663:                                              ; preds = %649
  br label %664

664:                                              ; preds = %663
  %665 = load %struct.FTS*, %struct.FTS** %3, align 8
  %666 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  call void @leave_dir(%struct.FTS* noundef %665, %struct._ftsent* noundef %666)
  br label %667

667:                                              ; preds = %664
  br label %668

668:                                              ; preds = %667, %649
  br label %669

669:                                              ; preds = %668, %643
  %670 = load %struct.FTS*, %struct.FTS** %3, align 8
  %671 = getelementptr inbounds %struct.FTS, %struct.FTS* %670, i32 0, i32 10
  %672 = load i32, i32* %671, align 8
  %673 = and i32 %672, 16384
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %669
  br label %678

676:                                              ; preds = %669
  %677 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  br label %678

678:                                              ; preds = %676, %675
  %679 = phi %struct._ftsent* [ null, %675 ], [ %677, %676 ]
  store %struct._ftsent* %679, %struct._ftsent** %2, align 8
  br label %680

680:                                              ; preds = %678, %533, %517, %515, %327, %316, %292, %246, %227, %148, %31, %18
  %681 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  ret %struct._ftsent* %681
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leave_dir(%struct.FTS* noundef %0, %struct._ftsent* noundef %1) #4 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.Active_dir, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._ftsent*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store %struct._ftsent* %1, %struct._ftsent** %4, align 8
  %9 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %10 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i32 0, i32 17
  %11 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %10, i64 0, i64 0
  store %struct.stat* %11, %struct.stat** %5, align 8
  %12 = load %struct.FTS*, %struct.FTS** %3, align 8
  %13 = getelementptr inbounds %struct.FTS, %struct.FTS* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 258
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.stat*, %struct.stat** %5, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.stat*, %struct.stat** %5, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %6, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.FTS*, %struct.FTS** %3, align 8
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %26, i32 0, i32 12
  %28 = bitcast %union.anon* %27 to %struct.hash_table**
  %29 = load %struct.hash_table*, %struct.hash_table** %28, align 8
  %30 = bitcast %struct.Active_dir* %6 to i8*
  %31 = call i8* @hash_remove(%struct.hash_table* noundef %29, i8* noundef %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  call void @abort() #20
  unreachable

35:                                               ; preds = %17
  %36 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %36) #19
  br label %109

37:                                               ; preds = %2
  %38 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %38, i32 0, i32 1
  %40 = load %struct._ftsent*, %struct._ftsent** %39, align 8
  store %struct._ftsent* %40, %struct._ftsent** %8, align 8
  %41 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %42 = icmp ne %struct._ftsent* %41, null
  br i1 %42, label %43, label %108

43:                                               ; preds = %37
  %44 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %44, i32 0, i32 12
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 0, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.FTS*, %struct.FTS** %3, align 8
  %51 = getelementptr inbounds %struct.FTS, %struct.FTS* %50, i32 0, i32 12
  %52 = bitcast %union.anon* %51 to %struct.cycle_check_state**
  %53 = load %struct.cycle_check_state*, %struct.cycle_check_state** %52, align 8
  %54 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  call void @abort() #20
  unreachable

58:                                               ; preds = %49
  %59 = load %struct.FTS*, %struct.FTS** %3, align 8
  %60 = getelementptr inbounds %struct.FTS, %struct.FTS* %59, i32 0, i32 12
  %61 = bitcast %union.anon* %60 to %struct.cycle_check_state**
  %62 = load %struct.cycle_check_state*, %struct.cycle_check_state** %61, align 8
  %63 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.stat*, %struct.stat** %5, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = xor i64 %65, %68
  %70 = load %struct.FTS*, %struct.FTS** %3, align 8
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %70, i32 0, i32 12
  %72 = bitcast %union.anon* %71 to %struct.cycle_check_state**
  %73 = load %struct.cycle_check_state*, %struct.cycle_check_state** %72, align 8
  %74 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.stat*, %struct.stat** %5, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = xor i64 %76, %79
  %81 = or i64 %69, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %106, label %83

83:                                               ; preds = %58
  %84 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %85 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %84, i32 0, i32 17
  %86 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %85, i64 0, i64 0
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.FTS*, %struct.FTS** %3, align 8
  %90 = getelementptr inbounds %struct.FTS, %struct.FTS* %89, i32 0, i32 12
  %91 = bitcast %union.anon* %90 to %struct.cycle_check_state**
  %92 = load %struct.cycle_check_state*, %struct.cycle_check_state** %91, align 8
  %93 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %93, i32 0, i32 1
  store i64 %88, i64* %94, align 8
  %95 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %96 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %95, i32 0, i32 17
  %97 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %96, i64 0, i64 0
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.FTS*, %struct.FTS** %3, align 8
  %101 = getelementptr inbounds %struct.FTS, %struct.FTS* %100, i32 0, i32 12
  %102 = bitcast %union.anon* %101 to %struct.cycle_check_state**
  %103 = load %struct.cycle_check_state*, %struct.cycle_check_state** %102, align 8
  %104 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %104, i32 0, i32 0
  store i64 %99, i64* %105, align 8
  br label %106

106:                                              ; preds = %83, %58
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %43, %37
  br label %109

109:                                              ; preds = %108, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_safe_changedir(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i32 noundef %2, i8* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.FTS*, align 8
  %7 = alloca %struct._ftsent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 8
  %15 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %6, align 8
  store %struct._ftsent* %1, %struct._ftsent** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  br label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 0, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #20
  unreachable

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = call i1 @streq(i8* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.179, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %10, align 1
  %33 = load %struct.FTS*, %struct.FTS** %6, align 8
  %34 = getelementptr inbounds %struct.FTS, %struct.FTS* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.FTS*, %struct.FTS** %6, align 8
  %40 = getelementptr inbounds %struct.FTS, %struct.FTS* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 512
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 noundef %48)
  br label %50

50:                                               ; preds = %47, %44, %38
  store i32 0, i32* %5, align 4
  br label %152

51:                                               ; preds = %30
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i8, i8* %10, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.FTS*, %struct.FTS** %6, align 8
  %59 = getelementptr inbounds %struct.FTS, %struct.FTS* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 512
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.FTS*, %struct.FTS** %6, align 8
  %65 = getelementptr inbounds %struct.FTS, %struct.FTS* %64, i32 0, i32 13
  %66 = call i1 @i_ring_empty(%struct.I_ring* noundef %65) #21
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load %struct.FTS*, %struct.FTS** %6, align 8
  %69 = getelementptr inbounds %struct.FTS, %struct.FTS* %68, i32 0, i32 13
  %70 = call i32 @i_ring_pop(%struct.I_ring* noundef %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 0, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %57, %54, %51
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.FTS*, %struct.FTS** %6, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @diropen(%struct.FTS* noundef %82, i8* noundef %83)
  store i32 %84, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -1, i32* %5, align 4
  br label %152

87:                                               ; preds = %81, %77
  %88 = load %struct.FTS*, %struct.FTS** %6, align 8
  %89 = getelementptr inbounds %struct.FTS, %struct.FTS* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i1 @streq(i8* noundef %97, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.179, i64 0, i64 0))
  br i1 %98, label %99, label %125

99:                                               ; preds = %96, %87
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @fstat(i32 noundef %100, %struct.stat* noundef %14) #19
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 -1, i32* %13, align 4
  br label %140

104:                                              ; preds = %99
  %105 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %106 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %105, i32 0, i32 17
  %107 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %106, i64 0, i64 0
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %104
  %114 = load %struct._ftsent*, %struct._ftsent** %7, align 8
  %115 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %114, i32 0, i32 17
  %116 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %115, i64 0, i64 0
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %113, %104
  %123 = call i32* @__errno_location() #22
  store i32 2, i32* %123, align 4
  store i32 -1, i32* %13, align 4
  br label %140

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %96, %93
  %126 = load %struct.FTS*, %struct.FTS** %6, align 8
  %127 = getelementptr inbounds %struct.FTS, %struct.FTS* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 512
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.FTS*, %struct.FTS** %6, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i8, i8* %10, align 1
  %135 = trunc i8 %134 to i1
  %136 = xor i1 %135, true
  call void @cwd_advance_fd(%struct.FTS* noundef %132, i32 noundef %133, i1 noundef %136)
  store i32 0, i32* %5, align 4
  br label %152

137:                                              ; preds = %125
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @fchdir(i32 noundef %138) #19
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137, %122, %103
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = call i32* @__errno_location() #22
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @close(i32 noundef %146)
  %148 = load i32, i32* %15, align 4
  %149 = call i32* @__errno_location() #22
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %140
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %131, %86, %50
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._ftsent* @fts_build(%struct.FTS* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct._ftsent*, align 8
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.__dirstream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca %struct._ftsent*, align 8
  %22 = alloca %struct._ftsent*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca %struct.dirent*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct._ftsent*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i8, align 1
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store i32 %1, i32* %5, align 4
  %32 = load %struct.FTS*, %struct.FTS** %4, align 8
  %33 = getelementptr inbounds %struct.FTS, %struct.FTS* %32, i32 0, i32 0
  %34 = load %struct._ftsent*, %struct._ftsent** %33, align 8
  store %struct._ftsent* %34, %struct._ftsent** %6, align 8
  %35 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %36 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %35, i32 0, i32 3
  %37 = load %struct.__dirstream*, %struct.__dirstream** %36, align 8
  %38 = icmp ne %struct.__dirstream* %37, null
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* %7, align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %44, label %73

44:                                               ; preds = %2
  %45 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %46 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %45, i32 0, i32 3
  %47 = load %struct.__dirstream*, %struct.__dirstream** %46, align 8
  store %struct.__dirstream* %47, %struct.__dirstream** %9, align 8
  %48 = load %struct.__dirstream*, %struct.__dirstream** %9, align 8
  %49 = call i32 @dirfd(%struct.__dirstream* noundef %48) #19
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = call i32* @__errno_location() #22
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %57 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %56, i32 0, i32 3
  %58 = load %struct.__dirstream*, %struct.__dirstream** %57, align 8
  %59 = call i32 @closedir(%struct.__dirstream* noundef %58)
  %60 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %60, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %61, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %67 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %66, i32 0, i32 14
  store i16 4, i16* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %62
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

72:                                               ; preds = %44
  br label %211

73:                                               ; preds = %2
  %74 = load %struct.FTS*, %struct.FTS** %4, align 8
  %75 = getelementptr inbounds %struct.FTS, %struct.FTS* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = load %struct.FTS*, %struct.FTS** %4, align 8
  %81 = getelementptr inbounds %struct.FTS, %struct.FTS* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 512
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.FTS*, %struct.FTS** %4, align 8
  %87 = getelementptr inbounds %struct.FTS, %struct.FTS* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %79, %73
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %88, %85 ], [ -100, %89 ]
  %92 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %93 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %92, i32 0, i32 6
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.FTS*, %struct.FTS** %4, align 8
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %90
  %101 = load %struct.FTS*, %struct.FTS** %4, align 8
  %102 = getelementptr inbounds %struct.FTS, %struct.FTS* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %108 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %107, i32 0, i32 12
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br label %111

111:                                              ; preds = %106, %100
  %112 = phi i1 [ false, %100 ], [ %110, %106 ]
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %111, %90
  %115 = phi i1 [ false, %90 ], [ %113, %111 ]
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 32768, i32 0
  %118 = call noalias %struct.__dirstream* @opendirat(i32 noundef %91, i8* noundef %94, i32 noundef %117, i32* noundef %8)
  %119 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %120 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %119, i32 0, i32 3
  store %struct.__dirstream* %118, %struct.__dirstream** %120, align 8
  %121 = icmp eq %struct.__dirstream* %118, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %114
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %127 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %126, i32 0, i32 14
  store i16 4, i16* %127, align 8
  %128 = call i32* @__errno_location() #22
  %129 = load i32, i32* %128, align 4
  %130 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %131 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %122
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

133:                                              ; preds = %114
  %134 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %135 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %134, i32 0, i32 14
  %136 = load i16, i16* %135, align 8
  %137 = zext i16 %136 to i32
  %138 = icmp eq i32 %137, 11
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %11, align 1
  %140 = load i8, i8* %11, align 1
  %141 = trunc i8 %140 to i1
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load %struct.FTS*, %struct.FTS** %4, align 8
  %144 = getelementptr inbounds %struct.FTS, %struct.FTS* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 256
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %210

148:                                              ; preds = %142, %133
  %149 = load i8, i8* %11, align 1
  %150 = trunc i8 %149 to i1
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.FTS*, %struct.FTS** %4, align 8
  %154 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  call void @leave_dir(%struct.FTS* noundef %153, %struct._ftsent* noundef %154)
  br label %155

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %148
  %157 = load i32, i32* %8, align 4
  %158 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %159 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %158, i32 0, i32 17
  %160 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %159, i64 0, i64 0
  %161 = call i32 @fstat(i32 noundef %157, %struct.stat* noundef %160) #19
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %156
  %164 = call i32* @__errno_location() #22
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %168 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %167, i32 0, i32 3
  %169 = load %struct.__dirstream*, %struct.__dirstream** %168, align 8
  %170 = call i32 @closedir(%struct.__dirstream* noundef %169)
  %171 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %172 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %171, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %172, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, 3
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i32, i32* %12, align 4
  %178 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %179 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 8
  %180 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %181 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %180, i32 0, i32 14
  store i16 10, i16* %181, align 8
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, i32* %12, align 4
  %184 = call i32* @__errno_location() #22
  store i32 %183, i32* %184, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

185:                                              ; preds = %156
  %186 = load i8, i8* %11, align 1
  %187 = trunc i8 %186 to i1
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %190 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %189, i32 0, i32 14
  store i16 1, i16* %190, align 8
  br label %209

191:                                              ; preds = %185
  %192 = load %struct.FTS*, %struct.FTS** %4, align 8
  %193 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %194 = call i1 @enter_dir(%struct.FTS* noundef %192, %struct._ftsent* noundef %193)
  br i1 %194, label %208, label %195

195:                                              ; preds = %191
  %196 = call i32* @__errno_location() #22
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %195
  %199 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %200 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %199, i32 0, i32 3
  %201 = load %struct.__dirstream*, %struct.__dirstream** %200, align 8
  %202 = call i32 @closedir(%struct.__dirstream* noundef %201)
  %203 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %204 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %203, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %204, align 8
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %13, align 4
  %207 = call i32* @__errno_location() #22
  store i32 %206, i32* %207, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

208:                                              ; preds = %191
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %209, %142
  br label %211

211:                                              ; preds = %210, %72
  %212 = load %struct.FTS*, %struct.FTS** %4, align 8
  %213 = getelementptr inbounds %struct.FTS, %struct.FTS* %212, i32 0, i32 9
  %214 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %213, align 8
  %215 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %214, null
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i64 -1, i64 100000
  store i64 %217, i64* %14, align 8
  %218 = load i8, i8* %7, align 1
  %219 = trunc i8 %218 to i1
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  store i8 1, i8* %15, align 1
  br label %326

221:                                              ; preds = %211
  %222 = load i32, i32* %5, align 4
  %223 = icmp ne i32 %222, 2
  br i1 %223, label %224, label %257

224:                                              ; preds = %221
  %225 = load %struct.FTS*, %struct.FTS** %4, align 8
  %226 = getelementptr inbounds %struct.FTS, %struct.FTS* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %254

230:                                              ; preds = %224
  %231 = load %struct.FTS*, %struct.FTS** %4, align 8
  %232 = getelementptr inbounds %struct.FTS, %struct.FTS* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, 16
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %254

236:                                              ; preds = %230
  %237 = load %struct.FTS*, %struct.FTS** %4, align 8
  %238 = getelementptr inbounds %struct.FTS, %struct.FTS* %237, i32 0, i32 10
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %254, label %242

242:                                              ; preds = %236
  %243 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %244 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %243, i32 0, i32 17
  %245 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %244, i64 0, i64 0
  %246 = getelementptr inbounds %struct.stat, %struct.stat* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %254

249:                                              ; preds = %242
  %250 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @leaf_optimization(%struct._ftsent* noundef %250, i32 noundef %251)
  %253 = icmp ne i32 %252, 0
  br label %254

254:                                              ; preds = %249, %242, %236, %230, %224
  %255 = phi i1 [ false, %242 ], [ false, %236 ], [ false, %230 ], [ false, %224 ], [ %253, %249 ]
  %256 = xor i1 %255, true
  br label %257

257:                                              ; preds = %254, %221
  %258 = phi i1 [ false, %221 ], [ %256, %254 ]
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %15, align 1
  %260 = load i8, i8* %15, align 1
  %261 = trunc i8 %260 to i1
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %5, align 4
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %265, label %325

265:                                              ; preds = %262, %257
  %266 = load %struct.FTS*, %struct.FTS** %4, align 8
  %267 = getelementptr inbounds %struct.FTS, %struct.FTS* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 512
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load i32, i32* %8, align 4
  %273 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %272, i32 noundef 1030, i32 noundef 3)
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %271, %265
  %275 = load i32, i32* %8, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %274
  %278 = load %struct.FTS*, %struct.FTS** %4, align 8
  %279 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @fts_safe_changedir(%struct.FTS* noundef %278, %struct._ftsent* noundef %279, i32 noundef %280, i8* noundef null)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %323

283:                                              ; preds = %277, %274
  %284 = load i8, i8* %15, align 1
  %285 = trunc i8 %284 to i1
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load i32, i32* %5, align 4
  %288 = icmp eq i32 %287, 3
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = call i32* @__errno_location() #22
  %291 = load i32, i32* %290, align 4
  %292 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %293 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %292, i32 0, i32 8
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %289, %286, %283
  %295 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %296 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %295, i32 0, i32 15
  %297 = load i16, i16* %296, align 2
  %298 = zext i16 %297 to i32
  %299 = or i32 %298, 1
  %300 = trunc i32 %299 to i16
  store i16 %300, i16* %296, align 2
  store i8 0, i8* %15, align 1
  br label %301

301:                                              ; preds = %294
  %302 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %303 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %302, i32 0, i32 3
  %304 = load %struct.__dirstream*, %struct.__dirstream** %303, align 8
  %305 = call i32 @closedir(%struct.__dirstream* noundef %304)
  %306 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %307 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %307, align 8
  br label %308

308:                                              ; preds = %301
  %309 = load %struct.FTS*, %struct.FTS** %4, align 8
  %310 = getelementptr inbounds %struct.FTS, %struct.FTS* %309, i32 0, i32 10
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, 512
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i32, i32* %8, align 4
  %316 = icmp sle i32 0, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @close(i32 noundef %318)
  br label %320

320:                                              ; preds = %317, %314, %308
  %321 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %322 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %321, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %322, align 8
  br label %324

323:                                              ; preds = %277
  store i8 1, i8* %15, align 1
  br label %324

324:                                              ; preds = %323, %320
  br label %325

325:                                              ; preds = %324, %262
  br label %326

326:                                              ; preds = %325, %220
  %327 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %328 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i32 0, i32 7
  %329 = load i8*, i8** %328, align 8
  %330 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %331 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %330, i32 0, i32 10
  %332 = load i64, i64* %331, align 8
  %333 = sub i64 %332, 1
  %334 = getelementptr inbounds i8, i8* %329, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = icmp eq i32 %336, 47
  br i1 %337, label %338, label %343

338:                                              ; preds = %326
  %339 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %340 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %339, i32 0, i32 10
  %341 = load i64, i64* %340, align 8
  %342 = sub i64 %341, 1
  br label %347

343:                                              ; preds = %326
  %344 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %345 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %344, i32 0, i32 10
  %346 = load i64, i64* %345, align 8
  br label %347

347:                                              ; preds = %343, %338
  %348 = phi i64 [ %342, %338 ], [ %346, %343 ]
  store i64 %348, i64* %16, align 8
  %349 = load %struct.FTS*, %struct.FTS** %4, align 8
  %350 = getelementptr inbounds %struct.FTS, %struct.FTS* %349, i32 0, i32 10
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %347
  %355 = load %struct.FTS*, %struct.FTS** %4, align 8
  %356 = getelementptr inbounds %struct.FTS, %struct.FTS* %355, i32 0, i32 4
  %357 = load i8*, i8** %356, align 8
  %358 = load i64, i64* %16, align 8
  %359 = getelementptr inbounds i8, i8* %357, i64 %358
  store i8* %359, i8** %17, align 8
  %360 = load i8*, i8** %17, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %17, align 8
  store i8 47, i8* %360, align 1
  br label %363

362:                                              ; preds = %347
  store i8* null, i8** %17, align 8
  br label %363

363:                                              ; preds = %362, %354
  %364 = load i64, i64* %16, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* %16, align 8
  %366 = load %struct.FTS*, %struct.FTS** %4, align 8
  %367 = getelementptr inbounds %struct.FTS, %struct.FTS* %366, i32 0, i32 7
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* %16, align 8
  %370 = sub i64 %368, %369
  store i64 %370, i64* %18, align 8
  %371 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %372 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %371, i32 0, i32 12
  %373 = load i64, i64* %372, align 8
  %374 = add nsw i64 %373, 1
  store i64 %374, i64* %19, align 8
  store i8 0, i8* %20, align 1
  store %struct._ftsent* null, %struct._ftsent** %21, align 8
  store %struct._ftsent* null, %struct._ftsent** %22, align 8
  store i64 0, i64* %23, align 8
  store i8 0, i8* %24, align 1
  br label %375

375:                                              ; preds = %701, %450, %363
  %376 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %377 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %376, i32 0, i32 3
  %378 = load %struct.__dirstream*, %struct.__dirstream** %377, align 8
  %379 = icmp ne %struct.__dirstream* %378, null
  br i1 %379, label %380, label %702

380:                                              ; preds = %375
  %381 = call i32* @__errno_location() #22
  store i32 0, i32* %381, align 4
  %382 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %383 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %382, i32 0, i32 3
  %384 = load %struct.__dirstream*, %struct.__dirstream** %383, align 8
  %385 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %384)
  store %struct.dirent* %385, %struct.dirent** %25, align 8
  %386 = load %struct.dirent*, %struct.dirent** %25, align 8
  %387 = icmp eq %struct.dirent* %386, null
  br i1 %387, label %388, label %418

388:                                              ; preds = %380
  %389 = call i32* @__errno_location() #22
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %409

392:                                              ; preds = %388
  %393 = call i32* @__errno_location() #22
  %394 = load i32, i32* %393, align 4
  %395 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %396 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %395, i32 0, i32 8
  store i32 %394, i32* %396, align 8
  %397 = load i8, i8* %7, align 1
  %398 = trunc i8 %397 to i1
  br i1 %398, label %402, label %399

399:                                              ; preds = %392
  %400 = load i64, i64* %23, align 8
  %401 = icmp ne i64 %400, 0
  br label %402

402:                                              ; preds = %399, %392
  %403 = phi i1 [ true, %392 ], [ %401, %399 ]
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 7, i32 4
  %406 = trunc i32 %405 to i16
  %407 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %408 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %407, i32 0, i32 14
  store i16 %406, i16* %408, align 8
  br label %409

409:                                              ; preds = %402, %388
  br label %410

410:                                              ; preds = %409
  %411 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %412 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %411, i32 0, i32 3
  %413 = load %struct.__dirstream*, %struct.__dirstream** %412, align 8
  %414 = call i32 @closedir(%struct.__dirstream* noundef %413)
  %415 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %416 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %415, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %416, align 8
  br label %417

417:                                              ; preds = %410
  br label %702

418:                                              ; preds = %380
  %419 = load %struct.FTS*, %struct.FTS** %4, align 8
  %420 = getelementptr inbounds %struct.FTS, %struct.FTS* %419, i32 0, i32 10
  %421 = load i32, i32* %420, align 8
  %422 = and i32 %421, 32
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %451, label %424

424:                                              ; preds = %418
  %425 = load %struct.dirent*, %struct.dirent** %25, align 8
  %426 = getelementptr inbounds %struct.dirent, %struct.dirent* %425, i32 0, i32 4
  %427 = getelementptr inbounds [256 x i8], [256 x i8]* %426, i64 0, i64 0
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = icmp eq i32 %429, 46
  br i1 %430, label %431, label %451

431:                                              ; preds = %424
  %432 = load %struct.dirent*, %struct.dirent** %25, align 8
  %433 = getelementptr inbounds %struct.dirent, %struct.dirent* %432, i32 0, i32 4
  %434 = getelementptr inbounds [256 x i8], [256 x i8]* %433, i64 0, i64 1
  %435 = load i8, i8* %434, align 1
  %436 = icmp ne i8 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %431
  %438 = load %struct.dirent*, %struct.dirent** %25, align 8
  %439 = getelementptr inbounds %struct.dirent, %struct.dirent* %438, i32 0, i32 4
  %440 = getelementptr inbounds [256 x i8], [256 x i8]* %439, i64 0, i64 1
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 46
  br i1 %443, label %444, label %451

444:                                              ; preds = %437
  %445 = load %struct.dirent*, %struct.dirent** %25, align 8
  %446 = getelementptr inbounds %struct.dirent, %struct.dirent* %445, i32 0, i32 4
  %447 = getelementptr inbounds [256 x i8], [256 x i8]* %446, i64 0, i64 2
  %448 = load i8, i8* %447, align 1
  %449 = icmp ne i8 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %444, %431
  br label %375, !llvm.loop !35

451:                                              ; preds = %444, %437, %424, %418
  %452 = load %struct.dirent*, %struct.dirent** %25, align 8
  %453 = getelementptr inbounds %struct.dirent, %struct.dirent* %452, i32 0, i32 4
  %454 = getelementptr inbounds [256 x i8], [256 x i8]* %453, i64 0, i64 0
  %455 = call i64 @strlen(i8* noundef %454) #21
  store i64 %455, i64* %26, align 8
  %456 = load %struct.FTS*, %struct.FTS** %4, align 8
  %457 = load %struct.dirent*, %struct.dirent** %25, align 8
  %458 = getelementptr inbounds %struct.dirent, %struct.dirent* %457, i32 0, i32 4
  %459 = getelementptr inbounds [256 x i8], [256 x i8]* %458, i64 0, i64 0
  %460 = load i64, i64* %26, align 8
  %461 = call %struct._ftsent* @fts_alloc(%struct.FTS* noundef %456, i8* noundef %459, i64 noundef %460)
  store %struct._ftsent* %461, %struct._ftsent** %27, align 8
  %462 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %463 = icmp ne %struct._ftsent* %462, null
  br i1 %463, label %465, label %464

464:                                              ; preds = %451
  br label %481

465:                                              ; preds = %451
  %466 = load i64, i64* %26, align 8
  %467 = load i64, i64* %18, align 8
  %468 = icmp uge i64 %466, %467
  br i1 %468, label %469, label %529

469:                                              ; preds = %465
  %470 = load %struct.FTS*, %struct.FTS** %4, align 8
  %471 = getelementptr inbounds %struct.FTS, %struct.FTS* %470, i32 0, i32 4
  %472 = load i8*, i8** %471, align 8
  %473 = ptrtoint i8* %472 to i64
  store i64 %473, i64* %28, align 8
  %474 = load %struct.FTS*, %struct.FTS** %4, align 8
  %475 = load i64, i64* %26, align 8
  %476 = load i64, i64* %16, align 8
  %477 = add i64 %475, %476
  %478 = add i64 %477, 1
  %479 = call i1 @fts_palloc(%struct.FTS* noundef %474, i64 noundef %478)
  br i1 %479, label %503, label %480

480:                                              ; preds = %469
  br label %481

481:                                              ; preds = %480, %464
  %482 = call i32* @__errno_location() #22
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %29, align 4
  %484 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %485 = bitcast %struct._ftsent* %484 to i8*
  call void @free(i8* noundef %485) #19
  %486 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  call void @fts_lfree(%struct._ftsent* noundef %486)
  br label %487

487:                                              ; preds = %481
  %488 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %489 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %488, i32 0, i32 3
  %490 = load %struct.__dirstream*, %struct.__dirstream** %489, align 8
  %491 = call i32 @closedir(%struct.__dirstream* noundef %490)
  %492 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %493 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %492, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %493, align 8
  br label %494

494:                                              ; preds = %487
  %495 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %496 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %495, i32 0, i32 14
  store i16 7, i16* %496, align 8
  %497 = load %struct.FTS*, %struct.FTS** %4, align 8
  %498 = getelementptr inbounds %struct.FTS, %struct.FTS* %497, i32 0, i32 10
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, 16384
  store i32 %500, i32* %498, align 8
  %501 = load i32, i32* %29, align 4
  %502 = call i32* @__errno_location() #22
  store i32 %501, i32* %502, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

503:                                              ; preds = %469
  %504 = load i64, i64* %28, align 8
  %505 = load %struct.FTS*, %struct.FTS** %4, align 8
  %506 = getelementptr inbounds %struct.FTS, %struct.FTS* %505, i32 0, i32 4
  %507 = load i8*, i8** %506, align 8
  %508 = ptrtoint i8* %507 to i64
  %509 = icmp ne i64 %504, %508
  br i1 %509, label %510, label %523

510:                                              ; preds = %503
  store i8 1, i8* %20, align 1
  %511 = load %struct.FTS*, %struct.FTS** %4, align 8
  %512 = getelementptr inbounds %struct.FTS, %struct.FTS* %511, i32 0, i32 10
  %513 = load i32, i32* %512, align 8
  %514 = and i32 %513, 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %510
  %517 = load %struct.FTS*, %struct.FTS** %4, align 8
  %518 = getelementptr inbounds %struct.FTS, %struct.FTS* %517, i32 0, i32 4
  %519 = load i8*, i8** %518, align 8
  %520 = load i64, i64* %16, align 8
  %521 = getelementptr inbounds i8, i8* %519, i64 %520
  store i8* %521, i8** %17, align 8
  br label %522

522:                                              ; preds = %516, %510
  br label %523

523:                                              ; preds = %522, %503
  %524 = load %struct.FTS*, %struct.FTS** %4, align 8
  %525 = getelementptr inbounds %struct.FTS, %struct.FTS* %524, i32 0, i32 7
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* %16, align 8
  %528 = sub i64 %526, %527
  store i64 %528, i64* %18, align 8
  br label %529

529:                                              ; preds = %523, %465
  %530 = load i64, i64* %16, align 8
  %531 = load i64, i64* %26, align 8
  %532 = add i64 %530, %531
  store i64 %532, i64* %30, align 8
  %533 = load i64, i64* %30, align 8
  %534 = load i64, i64* %16, align 8
  %535 = icmp ult i64 %533, %534
  br i1 %535, label %536, label %555

536:                                              ; preds = %529
  %537 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %538 = bitcast %struct._ftsent* %537 to i8*
  call void @free(i8* noundef %538) #19
  %539 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  call void @fts_lfree(%struct._ftsent* noundef %539)
  br label %540

540:                                              ; preds = %536
  %541 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %542 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %541, i32 0, i32 3
  %543 = load %struct.__dirstream*, %struct.__dirstream** %542, align 8
  %544 = call i32 @closedir(%struct.__dirstream* noundef %543)
  %545 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %546 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %545, i32 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %546, align 8
  br label %547

547:                                              ; preds = %540
  %548 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %549 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %548, i32 0, i32 14
  store i16 7, i16* %549, align 8
  %550 = load %struct.FTS*, %struct.FTS** %4, align 8
  %551 = getelementptr inbounds %struct.FTS, %struct.FTS* %550, i32 0, i32 10
  %552 = load i32, i32* %551, align 8
  %553 = or i32 %552, 16384
  store i32 %553, i32* %551, align 8
  %554 = call i32* @__errno_location() #22
  store i32 36, i32* %554, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

555:                                              ; preds = %529
  %556 = load i64, i64* %19, align 8
  %557 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %558 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %557, i32 0, i32 12
  store i64 %556, i64* %558, align 8
  %559 = load %struct.FTS*, %struct.FTS** %4, align 8
  %560 = getelementptr inbounds %struct.FTS, %struct.FTS* %559, i32 0, i32 0
  %561 = load %struct._ftsent*, %struct._ftsent** %560, align 8
  %562 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %563 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %562, i32 0, i32 1
  store %struct._ftsent* %561, %struct._ftsent** %563, align 8
  %564 = load i64, i64* %30, align 8
  %565 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %566 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %565, i32 0, i32 10
  store i64 %564, i64* %566, align 8
  %567 = load %struct.dirent*, %struct.dirent** %25, align 8
  %568 = getelementptr inbounds %struct.dirent, %struct.dirent* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %571 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %570, i32 0, i32 17
  %572 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %571, i64 0, i64 0
  %573 = getelementptr inbounds %struct.stat, %struct.stat* %572, i32 0, i32 1
  store i64 %569, i64* %573, align 8
  %574 = load %struct.FTS*, %struct.FTS** %4, align 8
  %575 = getelementptr inbounds %struct.FTS, %struct.FTS* %574, i32 0, i32 10
  %576 = load i32, i32* %575, align 8
  %577 = and i32 %576, 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %593

579:                                              ; preds = %555
  %580 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %581 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %580, i32 0, i32 7
  %582 = load i8*, i8** %581, align 8
  %583 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %584 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %583, i32 0, i32 6
  store i8* %582, i8** %584, align 8
  %585 = load i8*, i8** %17, align 8
  %586 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %587 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %586, i32 0, i32 18
  %588 = getelementptr inbounds [0 x i8], [0 x i8]* %587, i64 0, i64 0
  %589 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %590 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %589, i32 0, i32 13
  %591 = load i64, i64* %590, align 8
  %592 = add i64 %591, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %585, i8* align 8 %588, i64 %592, i1 false)
  br label %599

593:                                              ; preds = %555
  %594 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %595 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %594, i32 0, i32 18
  %596 = getelementptr inbounds [0 x i8], [0 x i8]* %595, i64 0, i64 0
  %597 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %598 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %597, i32 0, i32 6
  store i8* %596, i8** %598, align 8
  br label %599

599:                                              ; preds = %593, %579
  %600 = load %struct.FTS*, %struct.FTS** %4, align 8
  %601 = getelementptr inbounds %struct.FTS, %struct.FTS* %600, i32 0, i32 9
  %602 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %601, align 8
  %603 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %602, null
  br i1 %603, label %610, label %604

604:                                              ; preds = %599
  %605 = load %struct.FTS*, %struct.FTS** %4, align 8
  %606 = getelementptr inbounds %struct.FTS, %struct.FTS* %605, i32 0, i32 10
  %607 = load i32, i32* %606, align 8
  %608 = and i32 %607, 1024
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %663

610:                                              ; preds = %604, %599
  %611 = load %struct.FTS*, %struct.FTS** %4, align 8
  %612 = getelementptr inbounds %struct.FTS, %struct.FTS* %611, i32 0, i32 10
  %613 = load i32, i32* %612, align 8
  %614 = and i32 %613, 8
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %647

616:                                              ; preds = %610
  %617 = load %struct.dirent*, %struct.dirent** %25, align 8
  %618 = getelementptr inbounds %struct.dirent, %struct.dirent* %617, i32 0, i32 3
  %619 = load i8, i8* %618, align 2
  %620 = zext i8 %619 to i32
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %647

622:                                              ; preds = %616
  %623 = load %struct.dirent*, %struct.dirent** %25, align 8
  %624 = getelementptr inbounds %struct.dirent, %struct.dirent* %623, i32 0, i32 3
  %625 = load i8, i8* %624, align 2
  %626 = zext i8 %625 to i32
  %627 = icmp eq i32 %626, 4
  br i1 %627, label %647, label %628

628:                                              ; preds = %622
  %629 = load %struct.FTS*, %struct.FTS** %4, align 8
  %630 = getelementptr inbounds %struct.FTS, %struct.FTS* %629, i32 0, i32 10
  %631 = load i32, i32* %630, align 8
  %632 = and i32 %631, 16
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %640, label %634

634:                                              ; preds = %628
  %635 = load %struct.dirent*, %struct.dirent** %25, align 8
  %636 = getelementptr inbounds %struct.dirent, %struct.dirent* %635, i32 0, i32 3
  %637 = load i8, i8* %636, align 2
  %638 = zext i8 %637 to i32
  %639 = icmp eq i32 %638, 10
  br i1 %639, label %647, label %640

640:                                              ; preds = %634, %628
  %641 = load %struct.FTS*, %struct.FTS** %4, align 8
  %642 = getelementptr inbounds %struct.FTS, %struct.FTS* %641, i32 0, i32 10
  %643 = load i32, i32* %642, align 8
  %644 = and i32 %643, 4096
  %645 = icmp ne i32 %644, 0
  %646 = xor i1 %645, true
  br label %647

647:                                              ; preds = %640, %634, %622, %616, %610
  %648 = phi i1 [ false, %634 ], [ false, %622 ], [ false, %616 ], [ false, %610 ], [ %646, %640 ]
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %31, align 1
  %650 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %651 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %650, i32 0, i32 14
  store i16 11, i16* %651, align 8
  %652 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %653 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %652, i32 0, i32 17
  %654 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %653, i64 0, i64 0
  %655 = load %struct.dirent*, %struct.dirent** %25, align 8
  %656 = getelementptr inbounds %struct.dirent, %struct.dirent* %655, i32 0, i32 3
  %657 = load i8, i8* %656, align 2
  %658 = zext i8 %657 to i32
  call void @set_stat_type(%struct.stat* noundef %654, i32 noundef %658)
  %659 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %660 = load i8, i8* %31, align 1
  %661 = trunc i8 %660 to i1
  %662 = xor i1 %661, true
  call void @fts_set_stat_required(%struct._ftsent* noundef %659, i1 noundef %662)
  br label %669

663:                                              ; preds = %604
  %664 = load %struct.FTS*, %struct.FTS** %4, align 8
  %665 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %666 = call i16 @fts_stat(%struct.FTS* noundef %664, %struct._ftsent* noundef %665, i1 noundef false)
  %667 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %668 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %667, i32 0, i32 14
  store i16 %666, i16* %668, align 8
  br label %669

669:                                              ; preds = %663, %647
  %670 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %671 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %670, i32 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %671, align 8
  %672 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  %673 = icmp eq %struct._ftsent* %672, null
  br i1 %673, label %674, label %676

674:                                              ; preds = %669
  %675 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  store %struct._ftsent* %675, %struct._ftsent** %22, align 8
  store %struct._ftsent* %675, %struct._ftsent** %21, align 8
  br label %681

676:                                              ; preds = %669
  %677 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %678 = load %struct._ftsent*, %struct._ftsent** %22, align 8
  %679 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %678, i32 0, i32 2
  store %struct._ftsent* %677, %struct._ftsent** %679, align 8
  %680 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  store %struct._ftsent* %680, %struct._ftsent** %22, align 8
  br label %681

681:                                              ; preds = %676, %674
  %682 = load i64, i64* %23, align 8
  %683 = icmp eq i64 %682, 10000
  br i1 %683, label %684, label %694

684:                                              ; preds = %681
  %685 = load %struct.FTS*, %struct.FTS** %4, align 8
  %686 = getelementptr inbounds %struct.FTS, %struct.FTS* %685, i32 0, i32 9
  %687 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %686, align 8
  %688 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %687, null
  br i1 %688, label %694, label %689

689:                                              ; preds = %684
  %690 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %691 = load i32, i32* %8, align 4
  %692 = call i1 @dirent_inode_sort_may_be_useful(%struct._ftsent* noundef %690, i32 noundef %691)
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %24, align 1
  br label %694

694:                                              ; preds = %689, %684, %681
  %695 = load i64, i64* %23, align 8
  %696 = add i64 %695, 1
  store i64 %696, i64* %23, align 8
  %697 = load i64, i64* %14, align 8
  %698 = load i64, i64* %23, align 8
  %699 = icmp ule i64 %697, %698
  br i1 %699, label %700, label %701

700:                                              ; preds = %694
  br label %702

701:                                              ; preds = %694
  br label %375, !llvm.loop !35

702:                                              ; preds = %700, %417, %375
  %703 = load i8, i8* %20, align 1
  %704 = trunc i8 %703 to i1
  br i1 %704, label %705, label %708

705:                                              ; preds = %702
  %706 = load %struct.FTS*, %struct.FTS** %4, align 8
  %707 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  call void @fts_padjust(%struct.FTS* noundef %706, %struct._ftsent* noundef %707)
  br label %708

708:                                              ; preds = %705, %702
  %709 = load %struct.FTS*, %struct.FTS** %4, align 8
  %710 = getelementptr inbounds %struct.FTS, %struct.FTS* %709, i32 0, i32 10
  %711 = load i32, i32* %710, align 8
  %712 = and i32 %711, 4
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %714, label %728

714:                                              ; preds = %708
  %715 = load i64, i64* %16, align 8
  %716 = load %struct.FTS*, %struct.FTS** %4, align 8
  %717 = getelementptr inbounds %struct.FTS, %struct.FTS* %716, i32 0, i32 7
  %718 = load i64, i64* %717, align 8
  %719 = icmp eq i64 %715, %718
  br i1 %719, label %723, label %720

720:                                              ; preds = %714
  %721 = load i64, i64* %23, align 8
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %720, %714
  %724 = load i8*, i8** %17, align 8
  %725 = getelementptr inbounds i8, i8* %724, i32 -1
  store i8* %725, i8** %17, align 8
  br label %726

726:                                              ; preds = %723, %720
  %727 = load i8*, i8** %17, align 8
  store i8 0, i8* %727, align 1
  br label %728

728:                                              ; preds = %726, %708
  %729 = load i8, i8* %7, align 1
  %730 = trunc i8 %729 to i1
  br i1 %730, label %764, label %731

731:                                              ; preds = %728
  %732 = load i8, i8* %15, align 1
  %733 = trunc i8 %732 to i1
  br i1 %733, label %734, label %764

734:                                              ; preds = %731
  %735 = load i32, i32* %5, align 4
  %736 = icmp eq i32 %735, 1
  br i1 %736, label %740, label %737

737:                                              ; preds = %734
  %738 = load i64, i64* %23, align 8
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %764, label %740

740:                                              ; preds = %737, %734
  %741 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %742 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %741, i32 0, i32 12
  %743 = load i64, i64* %742, align 8
  %744 = icmp eq i64 %743, 0
  br i1 %744, label %745, label %749

745:                                              ; preds = %740
  %746 = load %struct.FTS*, %struct.FTS** %4, align 8
  %747 = call i32 @restore_initial_cwd(%struct.FTS* noundef %746)
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %756, label %764

749:                                              ; preds = %740
  %750 = load %struct.FTS*, %struct.FTS** %4, align 8
  %751 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %752 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %751, i32 0, i32 1
  %753 = load %struct._ftsent*, %struct._ftsent** %752, align 8
  %754 = call i32 @fts_safe_changedir(%struct.FTS* noundef %750, %struct._ftsent* noundef %753, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.179, i64 0, i64 0))
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %764

756:                                              ; preds = %749, %745
  %757 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %758 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %757, i32 0, i32 14
  store i16 7, i16* %758, align 8
  %759 = load %struct.FTS*, %struct.FTS** %4, align 8
  %760 = getelementptr inbounds %struct.FTS, %struct.FTS* %759, i32 0, i32 10
  %761 = load i32, i32* %760, align 8
  %762 = or i32 %761, 16384
  store i32 %762, i32* %760, align 8
  %763 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  call void @fts_lfree(%struct._ftsent* noundef %763)
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

764:                                              ; preds = %749, %745, %737, %731, %728
  %765 = load i64, i64* %23, align 8
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %787, label %767

767:                                              ; preds = %764
  %768 = load i32, i32* %5, align 4
  %769 = icmp eq i32 %768, 3
  br i1 %769, label %770, label %785

770:                                              ; preds = %767
  %771 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %772 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %771, i32 0, i32 14
  %773 = load i16, i16* %772, align 8
  %774 = zext i16 %773 to i32
  %775 = icmp ne i32 %774, 4
  br i1 %775, label %776, label %785

776:                                              ; preds = %770
  %777 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %778 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %777, i32 0, i32 14
  %779 = load i16, i16* %778, align 8
  %780 = zext i16 %779 to i32
  %781 = icmp ne i32 %780, 7
  br i1 %781, label %782, label %785

782:                                              ; preds = %776
  %783 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %784 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %783, i32 0, i32 14
  store i16 6, i16* %784, align 8
  br label %785

785:                                              ; preds = %782, %776, %770, %767
  %786 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  call void @fts_lfree(%struct._ftsent* noundef %786)
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %814

787:                                              ; preds = %764
  %788 = load i8, i8* %24, align 1
  %789 = trunc i8 %788 to i1
  br i1 %789, label %790, label %799

790:                                              ; preds = %787
  %791 = load %struct.FTS*, %struct.FTS** %4, align 8
  %792 = getelementptr inbounds %struct.FTS, %struct.FTS* %791, i32 0, i32 9
  store i32 (%struct._ftsent**, %struct._ftsent**)* @fts_compare_ino, i32 (%struct._ftsent**, %struct._ftsent**)** %792, align 8
  %793 = load %struct.FTS*, %struct.FTS** %4, align 8
  %794 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  %795 = load i64, i64* %23, align 8
  %796 = call %struct._ftsent* @fts_sort(%struct.FTS* noundef %793, %struct._ftsent* noundef %794, i64 noundef %795)
  store %struct._ftsent* %796, %struct._ftsent** %21, align 8
  %797 = load %struct.FTS*, %struct.FTS** %4, align 8
  %798 = getelementptr inbounds %struct.FTS, %struct.FTS* %797, i32 0, i32 9
  store i32 (%struct._ftsent**, %struct._ftsent**)* null, i32 (%struct._ftsent**, %struct._ftsent**)** %798, align 8
  br label %799

799:                                              ; preds = %790, %787
  %800 = load %struct.FTS*, %struct.FTS** %4, align 8
  %801 = getelementptr inbounds %struct.FTS, %struct.FTS* %800, i32 0, i32 9
  %802 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %801, align 8
  %803 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %802, null
  br i1 %803, label %804, label %812

804:                                              ; preds = %799
  %805 = load i64, i64* %23, align 8
  %806 = icmp ugt i64 %805, 1
  br i1 %806, label %807, label %812

807:                                              ; preds = %804
  %808 = load %struct.FTS*, %struct.FTS** %4, align 8
  %809 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  %810 = load i64, i64* %23, align 8
  %811 = call %struct._ftsent* @fts_sort(%struct.FTS* noundef %808, %struct._ftsent* noundef %809, i64 noundef %810)
  store %struct._ftsent* %811, %struct._ftsent** %21, align 8
  br label %812

812:                                              ; preds = %807, %804, %799
  %813 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  store %struct._ftsent* %813, %struct._ftsent** %3, align 8
  br label %814

814:                                              ; preds = %812, %785, %756, %547, %494, %205, %182, %132, %71
  %815 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  ret %struct._ftsent* %815
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_initial_cwd(%struct.FTS* noundef %0) #4 {
  %2 = alloca %struct.FTS*, align 8
  %3 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %2, align 8
  %4 = load %struct.FTS*, %struct.FTS** %2, align 8
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %4, i32 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %1
  %10 = load %struct.FTS*, %struct.FTS** %2, align 8
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 512
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.FTS*, %struct.FTS** %2, align 8
  %17 = load %struct.FTS*, %struct.FTS** %2, align 8
  %18 = getelementptr inbounds %struct.FTS, %struct.FTS* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.FTS*, %struct.FTS** %2, align 8
  %25 = getelementptr inbounds %struct.FTS, %struct.FTS* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ -100, %22 ], [ %26, %23 ]
  call void @cwd_advance_fd(%struct.FTS* noundef %16, i32 noundef %28, i1 noundef true)
  br label %43

29:                                               ; preds = %9
  %30 = load %struct.FTS*, %struct.FTS** %2, align 8
  %31 = getelementptr inbounds %struct.FTS, %struct.FTS* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 512
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.FTS*, %struct.FTS** %2, align 8
  %38 = getelementptr inbounds %struct.FTS, %struct.FTS* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i32 [ -100, %35 ], [ %39, %36 ]
  %42 = call i32 @fchdir(i32 noundef %41) #19
  br label %43

43:                                               ; preds = %40, %27
  %44 = phi i32 [ 0, %27 ], [ %42, %40 ]
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %1
  %47 = phi i1 [ false, %1 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  %49 = load %struct.FTS*, %struct.FTS** %2, align 8
  %50 = getelementptr inbounds %struct.FTS, %struct.FTS* %49, i32 0, i32 13
  call void @fd_ring_clear(%struct.I_ring* noundef %50)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_load(%struct.FTS* noundef %0, %struct._ftsent* noundef %1) #4 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store %struct._ftsent* %1, %struct._ftsent** %4, align 8
  %7 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %8 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i32 0, i32 13
  %9 = load i64, i64* %8, align 8
  %10 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %10, i32 0, i32 10
  store i64 %9, i64* %11, align 8
  store i64 %9, i64* %5, align 8
  %12 = load %struct.FTS*, %struct.FTS** %3, align 8
  %13 = getelementptr inbounds %struct.FTS, %struct.FTS* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %15, i32 0, i32 18
  %17 = getelementptr inbounds [0 x i8], [0 x i8]* %16, i64 0, i64 0
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %14, i8* align 8 %17, i64 %19, i1 false)
  %20 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %20, i32 0, i32 18
  %22 = getelementptr inbounds [0 x i8], [0 x i8]* %21, i64 0, i64 0
  %23 = call i8* @strrchr(i8* noundef %22, i32 noundef 47) #21
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %29 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %28, i32 0, i32 18
  %30 = getelementptr inbounds [0 x i8], [0 x i8]* %29, i64 0, i64 0
  %31 = icmp ne i8* %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32, %26
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  %41 = call i64 @strlen(i8* noundef %40) #21
  store i64 %41, i64* %5, align 8
  %42 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %43 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %42, i32 0, i32 18
  %44 = getelementptr inbounds [0 x i8], [0 x i8]* %43, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %44, i8* align 1 %45, i64 %47, i1 false)
  %48 = load i64, i64* %5, align 8
  %49 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %50 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %49, i32 0, i32 13
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %38, %32, %2
  %52 = load %struct.FTS*, %struct.FTS** %3, align 8
  %53 = getelementptr inbounds %struct.FTS, %struct.FTS* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %58 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %57, i32 0, i32 6
  store i8* %54, i8** %58, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @enter_dir(%struct.FTS* noundef %0, %struct._ftsent* noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca %struct._ftsent*, align 8
  %6 = alloca %struct.Active_dir*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.Active_dir*, align 8
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store %struct._ftsent* %1, %struct._ftsent** %5, align 8
  %9 = load %struct.FTS*, %struct.FTS** %4, align 8
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 258
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = call noalias i8* @malloc(i64 noundef 24) #19
  %16 = bitcast i8* %15 to %struct.Active_dir*
  store %struct.Active_dir* %16, %struct.Active_dir** %6, align 8
  %17 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %18 = icmp ne %struct.Active_dir* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i1 false, i1* %3, align 1
  br label %80

20:                                               ; preds = %14
  %21 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %22 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %21, i32 0, i32 17
  %23 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %22, i64 0, i64 0
  store %struct.stat* %23, %struct.stat** %7, align 8
  %24 = load %struct.stat*, %struct.stat** %7, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %28 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.stat*, %struct.stat** %7, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %33 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %35 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %36 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %35, i32 0, i32 2
  store %struct._ftsent* %34, %struct._ftsent** %36, align 8
  %37 = load %struct.FTS*, %struct.FTS** %4, align 8
  %38 = getelementptr inbounds %struct.FTS, %struct.FTS* %37, i32 0, i32 12
  %39 = bitcast %union.anon* %38 to %struct.hash_table**
  %40 = load %struct.hash_table*, %struct.hash_table** %39, align 8
  %41 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %42 = bitcast %struct.Active_dir* %41 to i8*
  %43 = call i8* @hash_insert(%struct.hash_table* noundef %40, i8* noundef %42)
  %44 = bitcast i8* %43 to %struct.Active_dir*
  store %struct.Active_dir* %44, %struct.Active_dir** %8, align 8
  %45 = load %struct.Active_dir*, %struct.Active_dir** %8, align 8
  %46 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %47 = icmp ne %struct.Active_dir* %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %20
  %49 = load %struct.Active_dir*, %struct.Active_dir** %6, align 8
  %50 = bitcast %struct.Active_dir* %49 to i8*
  call void @free(i8* noundef %50) #19
  %51 = load %struct.Active_dir*, %struct.Active_dir** %8, align 8
  %52 = icmp ne %struct.Active_dir* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i1 false, i1* %3, align 1
  br label %80

54:                                               ; preds = %48
  %55 = load %struct.Active_dir*, %struct.Active_dir** %8, align 8
  %56 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %55, i32 0, i32 2
  %57 = load %struct._ftsent*, %struct._ftsent** %56, align 8
  %58 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %58, i32 0, i32 0
  store %struct._ftsent* %57, %struct._ftsent** %59, align 8
  %60 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %60, i32 0, i32 14
  store i16 2, i16* %61, align 8
  br label %62

62:                                               ; preds = %54, %20
  br label %79

63:                                               ; preds = %2
  %64 = load %struct.FTS*, %struct.FTS** %4, align 8
  %65 = getelementptr inbounds %struct.FTS, %struct.FTS* %64, i32 0, i32 12
  %66 = bitcast %union.anon* %65 to %struct.cycle_check_state**
  %67 = load %struct.cycle_check_state*, %struct.cycle_check_state** %66, align 8
  %68 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i32 0, i32 17
  %70 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %69, i64 0, i64 0
  %71 = call i1 @cycle_check(%struct.cycle_check_state* noundef %67, %struct.stat* noundef %70)
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %74 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %74, i32 0, i32 0
  store %struct._ftsent* %73, %struct._ftsent** %75, align 8
  %76 = load %struct._ftsent*, %struct._ftsent** %5, align 8
  %77 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %76, i32 0, i32 14
  store i16 2, i16* %77, align 8
  br label %78

78:                                               ; preds = %72, %63
  br label %79

79:                                               ; preds = %78, %62
  store i1 true, i1* %3, align 1
  br label %80

80:                                               ; preds = %79, %53, %19
  %81 = load i1, i1* %3, align 1
  ret i1 %81
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cwd_advance_fd(%struct.FTS* noundef %0, i32 noundef %1, i1 noundef %2) #4 {
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = zext i1 %2 to i8
  store i8 %9, i8* %6, align 1
  %10 = load %struct.FTS*, %struct.FTS** %4, align 8
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -100
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #20
  unreachable

21:                                               ; preds = %17, %13
  br label %22

22:                                               ; preds = %21
  %23 = load i8, i8* %6, align 1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.FTS*, %struct.FTS** %4, align 8
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %26, i32 0, i32 13
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @i_ring_push(%struct.I_ring* noundef %27, i32 noundef %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 0, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @close(i32 noundef %33)
  br label %35

35:                                               ; preds = %32, %25
  br label %50

36:                                               ; preds = %22
  %37 = load %struct.FTS*, %struct.FTS** %4, align 8
  %38 = getelementptr inbounds %struct.FTS, %struct.FTS* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 0, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @close(i32 noundef %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.FTS*, %struct.FTS** %4, align 8
  %53 = getelementptr inbounds %struct.FTS, %struct.FTS* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream* noundef) #2

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_optimization(%struct._ftsent* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i32, align 4
  store %struct._ftsent* %0, %struct._ftsent** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @filesystem_type(%struct._ftsent* noundef %6, i32 noundef %7)
  switch i64 %8, label %14 [
    i64 0, label %9
    i64 1397113167, label %10
    i64 4283649346, label %11
    i64 26985, label %12
    i64 40864, label %13
  ]

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %2, %9
  br label %11

11:                                               ; preds = %2, %10
  br label %12

12:                                               ; preds = %2, %11
  br label %13

13:                                               ; preds = %2, %12
  store i32 0, i32* %3, align 4
  br label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_stat_type(%struct.stat* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 6, label %7
    i32 2, label %8
    i32 4, label %9
    i32 1, label %10
    i32 10, label %11
    i32 8, label %12
    i32 12, label %13
  ]

7:                                                ; preds = %2
  store i32 24576, i32* %5, align 4
  br label %15

8:                                                ; preds = %2
  store i32 8192, i32* %5, align 4
  br label %15

9:                                                ; preds = %2
  store i32 16384, i32* %5, align 4
  br label %15

10:                                               ; preds = %2
  store i32 4096, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  store i32 40960, i32* %5, align 4
  br label %15

12:                                               ; preds = %2
  store i32 32768, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  store i32 49152, i32* %5, align 4
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.stat*, %struct.stat** %3, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @dirent_inode_sort_may_be_useful(%struct._ftsent* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i32, align 4
  store %struct._ftsent* %0, %struct._ftsent** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @filesystem_type(%struct._ftsent* noundef %6, i32 noundef %7)
  switch i64 %8, label %10 [
    i64 198183888, label %9
    i64 4283649346, label %9
    i64 26985, label %9
    i64 16914836, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2
  store i1 false, i1* %3, align 1
  br label %11

10:                                               ; preds = %2
  store i1 true, i1* %3, align 1
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i1, i1* %3, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts_padjust(%struct.FTS* noundef %0, %struct._ftsent* noundef %1) #4 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._ftsent*, align 8
  %9 = alloca i64, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store %struct._ftsent* %1, %struct._ftsent** %4, align 8
  %10 = load %struct.FTS*, %struct.FTS** %3, align 8
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.FTS*, %struct.FTS** %3, align 8
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %13, i32 0, i32 1
  %15 = load %struct._ftsent*, %struct._ftsent** %14, align 8
  store %struct._ftsent* %15, %struct._ftsent** %6, align 8
  br label %16

16:                                               ; preds = %47, %2
  %17 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %18 = icmp ne %struct._ftsent* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19
  %21 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %22 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %26, i32 0, i32 18
  %28 = getelementptr inbounds [0 x i8], [0 x i8]* %27, i64 0, i64 0
  %29 = ptrtoint i8* %28 to i64
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %34, i32 0, i32 7
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = sub i64 %33, %37
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %41 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %31, %20
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %48, i32 0, i32 2
  %50 = load %struct._ftsent*, %struct._ftsent** %49, align 8
  store %struct._ftsent* %50, %struct._ftsent** %6, align 8
  br label %16, !llvm.loop !36

51:                                               ; preds = %16
  %52 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  store %struct._ftsent* %52, %struct._ftsent** %8, align 8
  br label %53

53:                                               ; preds = %98, %51
  %54 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %66 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %65, i32 0, i32 18
  %67 = getelementptr inbounds [0 x i8], [0 x i8]* %66, i64 0, i64 0
  %68 = ptrtoint i8* %67 to i64
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %59
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %73, i32 0, i32 7
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = sub i64 %72, %76
  %78 = getelementptr inbounds i8, i8* %71, i64 %77
  %79 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %80 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %70, %59
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %84 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81
  %86 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %87 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %86, i32 0, i32 2
  %88 = load %struct._ftsent*, %struct._ftsent** %87, align 8
  %89 = icmp ne %struct._ftsent* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %92 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %91, i32 0, i32 2
  %93 = load %struct._ftsent*, %struct._ftsent** %92, align 8
  br label %98

94:                                               ; preds = %85
  %95 = load %struct._ftsent*, %struct._ftsent** %8, align 8
  %96 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %95, i32 0, i32 1
  %97 = load %struct._ftsent*, %struct._ftsent** %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi %struct._ftsent* [ %93, %90 ], [ %97, %94 ]
  store %struct._ftsent* %99, %struct._ftsent** %8, align 8
  br label %53, !llvm.loop !37

100:                                              ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_compare_ino(%struct._ftsent** noundef %0, %struct._ftsent** noundef %1) #4 {
  %3 = alloca %struct._ftsent**, align 8
  %4 = alloca %struct._ftsent**, align 8
  store %struct._ftsent** %0, %struct._ftsent*** %3, align 8
  store %struct._ftsent** %1, %struct._ftsent*** %4, align 8
  %5 = load %struct._ftsent**, %struct._ftsent*** %3, align 8
  %6 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %5, i64 0
  %7 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %8 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i32 0, i32 17
  %9 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct._ftsent**, %struct._ftsent*** %4, align 8
  %13 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %12, i64 0
  %14 = load %struct._ftsent*, %struct._ftsent** %13, align 8
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %14, i32 0, i32 17
  %16 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %15, i64 0, i64 0
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %11, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct._ftsent**, %struct._ftsent*** %3, align 8
  %22 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %21, i64 0
  %23 = load %struct._ftsent*, %struct._ftsent** %22, align 8
  %24 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %23, i32 0, i32 17
  %25 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %24, i64 0, i64 0
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct._ftsent**, %struct._ftsent*** %4, align 8
  %29 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %28, i64 0
  %30 = load %struct._ftsent*, %struct._ftsent** %29, align 8
  %31 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %30, i32 0, i32 17
  %32 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %31, i64 0, i64 0
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %27, %34
  %36 = zext i1 %35 to i32
  %37 = sub nsw i32 %20, %36
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filesystem_type(%struct._ftsent* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._ftsent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.FTS*, align 8
  %7 = alloca %struct.hash_table*, align 8
  %8 = alloca %struct.dev_ino, align 8
  %9 = alloca %struct.dev_ino*, align 8
  %10 = alloca %struct.statfs, align 8
  %11 = alloca %struct.dev_ino*, align 8
  %12 = alloca %struct.dev_ino*, align 8
  store %struct._ftsent* %0, %struct._ftsent** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %14 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %13, i32 0, i32 11
  %15 = load %struct.FTS*, %struct.FTS** %14, align 8
  store %struct.FTS* %15, %struct.FTS** %6, align 8
  %16 = load %struct.FTS*, %struct.FTS** %6, align 8
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.FTS*, %struct.FTS** %6, align 8
  %24 = getelementptr inbounds %struct.FTS, %struct.FTS* %23, i32 0, i32 11
  %25 = load %struct.hash_table*, %struct.hash_table** %24, align 8
  store %struct.hash_table* %25, %struct.hash_table** %7, align 8
  %26 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %27 = icmp ne %struct.hash_table* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = call noalias %struct.hash_table* @hash_initialize(i64 noundef 13, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef @dev_type_hash, i1 (i8*, i8*)* noundef @dev_type_compare, void (i8*)* noundef @free)
  %30 = load %struct.FTS*, %struct.FTS** %6, align 8
  %31 = getelementptr inbounds %struct.FTS, %struct.FTS* %30, i32 0, i32 11
  store %struct.hash_table* %29, %struct.hash_table** %31, align 8
  store %struct.hash_table* %29, %struct.hash_table** %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %34 = icmp ne %struct.hash_table* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %37 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %36, i32 0, i32 17
  %38 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %37, i64 0, i64 0
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %8, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %43 = bitcast %struct.dev_ino* %8 to i8*
  %44 = call i8* @hash_lookup(%struct.hash_table* noundef %42, i8* noundef %43)
  %45 = bitcast i8* %44 to %struct.dev_ino*
  store %struct.dev_ino* %45, %struct.dev_ino** %9, align 8
  %46 = load %struct.dev_ino*, %struct.dev_ino** %9, align 8
  %47 = icmp ne %struct.dev_ino* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.dev_ino*, %struct.dev_ino** %9, align 8
  %50 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %104

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @fstatfs(i32 noundef %57, %struct.statfs* noundef %10) #19
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53
  store i64 0, i64* %3, align 8
  br label %104

61:                                               ; preds = %56
  %62 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %63 = icmp ne %struct.hash_table* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = call noalias i8* @malloc(i64 noundef 16) #19
  %66 = bitcast i8* %65 to %struct.dev_ino*
  store %struct.dev_ino* %66, %struct.dev_ino** %11, align 8
  %67 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %68 = icmp ne %struct.dev_ino* %67, null
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %70, i32 0, i32 17
  %72 = getelementptr inbounds [1 x %struct.stat], [1 x %struct.stat]* %71, i64 0, i64 0
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %76 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %80 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.hash_table*, %struct.hash_table** %7, align 8
  %82 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %83 = bitcast %struct.dev_ino* %82 to i8*
  %84 = call i8* @hash_insert(%struct.hash_table* noundef %81, i8* noundef %83)
  %85 = bitcast i8* %84 to %struct.dev_ino*
  store %struct.dev_ino* %85, %struct.dev_ino** %12, align 8
  %86 = load %struct.dev_ino*, %struct.dev_ino** %12, align 8
  %87 = icmp ne %struct.dev_ino* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.dev_ino*, %struct.dev_ino** %12, align 8
  %91 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %92 = icmp eq %struct.dev_ino* %90, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @abort() #20
  unreachable

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  br label %99

96:                                               ; preds = %69
  %97 = load %struct.dev_ino*, %struct.dev_ino** %11, align 8
  %98 = bitcast %struct.dev_ino* %97 to i8*
  call void @free(i8* noundef %98) #19
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %61
  %102 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %101, %60, %48, %21
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dev_type_hash(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_ino*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dev_ino*
  store %struct.dev_ino* %8, %struct.dev_ino** %5, align 8
  %9 = load %struct.dev_ino*, %struct.dev_ino** %5, align 8
  %10 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = urem i64 %12, %13
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @dev_type_compare(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dev_ino*, align 8
  %6 = alloca %struct.dev_ino*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dev_ino*
  store %struct.dev_ino* %8, %struct.dev_ino** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dev_ino*
  store %struct.dev_ino* %10, %struct.dev_ino** %6, align 8
  %11 = load %struct.dev_ino*, %struct.dev_ino** %5, align 8
  %12 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dev_ino*, %struct.dev_ino** %6, align 8
  %15 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  ret i1 %17
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32 noundef, %struct.statfs* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fts_set(%struct.FTS* noundef %0, %struct._ftsent* noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FTS*, align 8
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %5, align 8
  store %struct._ftsent* %1, %struct._ftsent** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32* @__errno_location() #22
  store i32 22, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %29

24:                                               ; preds = %19, %16, %13, %10, %3
  %25 = load i32, i32* %7, align 4
  %26 = trunc i32 %25 to i16
  %27 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %27, i32 0, i32 16
  store i16 %26, i16* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._ftsent* @rpl_fts_children(%struct.FTS* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct._ftsent*, align 8
  %4 = alloca %struct.FTS*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ftsent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.FTS* %0, %struct.FTS** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 8192
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32* @__errno_location() #22
  store i32 22, i32* %15, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %127

16:                                               ; preds = %11, %2
  %17 = load %struct.FTS*, %struct.FTS** %4, align 8
  %18 = getelementptr inbounds %struct.FTS, %struct.FTS* %17, i32 0, i32 0
  %19 = load %struct._ftsent*, %struct._ftsent** %18, align 8
  store %struct._ftsent* %19, %struct._ftsent** %6, align 8
  %20 = call i32* @__errno_location() #22
  store i32 0, i32* %20, align 4
  %21 = load %struct.FTS*, %struct.FTS** %4, align 8
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 16384
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %127

27:                                               ; preds = %16
  %28 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %29 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %28, i32 0, i32 14
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %34, i32 0, i32 2
  %36 = load %struct._ftsent*, %struct._ftsent** %35, align 8
  store %struct._ftsent* %36, %struct._ftsent** %3, align 8
  br label %127

37:                                               ; preds = %27
  %38 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %38, i32 0, i32 14
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %127

44:                                               ; preds = %37
  %45 = load %struct.FTS*, %struct.FTS** %4, align 8
  %46 = getelementptr inbounds %struct.FTS, %struct.FTS* %45, i32 0, i32 1
  %47 = load %struct._ftsent*, %struct._ftsent** %46, align 8
  %48 = icmp ne %struct._ftsent* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.FTS*, %struct.FTS** %4, align 8
  %51 = getelementptr inbounds %struct.FTS, %struct.FTS* %50, i32 0, i32 1
  %52 = load %struct._ftsent*, %struct._ftsent** %51, align 8
  call void @fts_lfree(%struct._ftsent* noundef %52)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 8192
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.FTS*, %struct.FTS** %4, align 8
  %58 = getelementptr inbounds %struct.FTS, %struct.FTS* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 8192
  store i32 %60, i32* %58, align 8
  store i32 2, i32* %5, align 4
  br label %62

61:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %64 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load %struct.FTS*, %struct.FTS** %4, align 8
  %77 = getelementptr inbounds %struct.FTS, %struct.FTS* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75, %67, %62
  %82 = load %struct.FTS*, %struct.FTS** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call %struct._ftsent* @fts_build(%struct.FTS* noundef %82, i32 noundef %83)
  %85 = load %struct.FTS*, %struct.FTS** %4, align 8
  %86 = getelementptr inbounds %struct.FTS, %struct.FTS* %85, i32 0, i32 1
  store %struct._ftsent* %84, %struct._ftsent** %86, align 8
  store %struct._ftsent* %84, %struct._ftsent** %3, align 8
  br label %127

87:                                               ; preds = %75
  %88 = load %struct.FTS*, %struct.FTS** %4, align 8
  %89 = call i32 @diropen(%struct.FTS* noundef %88, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.173, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.FTS*, %struct.FTS** %4, align 8
  %94 = getelementptr inbounds %struct.FTS, %struct.FTS* %93, i32 0, i32 1
  store %struct._ftsent* null, %struct._ftsent** %94, align 8
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %127

95:                                               ; preds = %87
  %96 = load %struct.FTS*, %struct.FTS** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call %struct._ftsent* @fts_build(%struct.FTS* noundef %96, i32 noundef %97)
  %99 = load %struct.FTS*, %struct.FTS** %4, align 8
  %100 = getelementptr inbounds %struct.FTS, %struct.FTS* %99, i32 0, i32 1
  store %struct._ftsent* %98, %struct._ftsent** %100, align 8
  %101 = load %struct.FTS*, %struct.FTS** %4, align 8
  %102 = getelementptr inbounds %struct.FTS, %struct.FTS* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 512
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.FTS*, %struct.FTS** %4, align 8
  %108 = load i32, i32* %7, align 4
  call void @cwd_advance_fd(%struct.FTS* noundef %107, i32 noundef %108, i1 noundef true)
  br label %123

109:                                              ; preds = %95
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @fchdir(i32 noundef %110) #19
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = call i32* @__errno_location() #22
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @close(i32 noundef %116)
  %118 = load i32, i32* %8, align 4
  %119 = call i32* @__errno_location() #22
  store i32 %118, i32* %119, align 4
  store %struct._ftsent* null, %struct._ftsent** %3, align 8
  br label %127

120:                                              ; preds = %109
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @close(i32 noundef %121)
  br label %123

123:                                              ; preds = %120, %106
  %124 = load %struct.FTS*, %struct.FTS** %4, align 8
  %125 = getelementptr inbounds %struct.FTS, %struct.FTS* %124, i32 0, i32 1
  %126 = load %struct._ftsent*, %struct._ftsent** %125, align 8
  store %struct._ftsent* %126, %struct._ftsent** %3, align 8
  br label %127

127:                                              ; preds = %123, %113, %92, %81, %43, %33, %26, %14
  %128 = load %struct._ftsent*, %struct._ftsent** %3, align 8
  ret %struct._ftsent* %128
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* noundef %0) #9 {
  %2 = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* noundef %0) #9 {
  %2 = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @hash_get_n_entries(%struct.hash_table* noundef %0) #9 {
  %2 = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* noundef %0) #9 {
  %2 = alloca %struct.hash_table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hash_entry*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 0
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  store %struct.hash_entry* %9, %struct.hash_entry** %4, align 8
  br label %10

10:                                               ; preds = %40, %1
  %11 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %12 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 1
  %14 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %15 = icmp ult %struct.hash_entry* %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %10
  %17 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  store %struct.hash_entry* %22, %struct.hash_entry** %5, align 8
  store i64 1, i64* %6, align 8
  br label %23

23:                                               ; preds = %29, %21
  %24 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i32 0, i32 1
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8
  store %struct.hash_entry* %26, %struct.hash_entry** %5, align 8
  %27 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %28 = icmp ne %struct.hash_entry* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %23, !llvm.loop !38

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i32 1
  store %struct.hash_entry* %42, %struct.hash_entry** %4, align 8
  br label %10, !llvm.loop !39

43:                                               ; preds = %10
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i1 @hash_table_ok(%struct.hash_table* noundef %0) #9 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  store %struct.hash_entry* %10, %struct.hash_entry** %6, align 8
  br label %11

11:                                               ; preds = %39, %1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %13 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8
  %16 = icmp ult %struct.hash_entry* %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  store %struct.hash_entry* %23, %struct.hash_entry** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %34, %22
  %29 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i32 0, i32 1
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8
  store %struct.hash_entry* %31, %struct.hash_entry** %7, align 8
  %32 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %33 = icmp ne %struct.hash_entry* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %28, !llvm.loop !40

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 1
  store %struct.hash_entry* %41, %struct.hash_entry** %6, align 8
  br label %11, !llvm.loop !41

42:                                               ; preds = %11
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i1 true, i1* %2, align 1
  br label %56

55:                                               ; preds = %48, %42
  store i1 false, i1* %2, align 1
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i1, i1* %2, align 1
  ret i1 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_print_statistics(%struct.hash_table* noundef %0, %struct._IO_FILE* noundef %1) #4 {
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %9 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %10 = call i64 @hash_get_n_entries(%struct.hash_table* noundef %9) #21
  store i64 %10, i64* %5, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %12 = call i64 @hash_get_n_buckets(%struct.hash_table* noundef %11) #21
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %14 = call i64 @hash_get_n_buckets_used(%struct.hash_table* noundef %13) #21
  store i64 %14, i64* %7, align 8
  %15 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %16 = call i64 @hash_get_max_bucket_length(%struct.hash_table* noundef %15) #21
  store i64 %16, i64* %8, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.184, i64 0, i64 0), i64 noundef %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.185, i64 0, i64 0), i64 noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = uitofp i64 %25 to double
  %27 = fmul double 1.000000e+02, %26
  %28 = load i64, i64* %6, align 8
  %29 = uitofp i64 %28 to double
  %30 = fdiv double %27, %29
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.186, i64 0, i64 0), i64 noundef %24, double noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.187, i64 0, i64 0), i64 noundef %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %8, i8* noundef %9)
  store %struct.hash_entry* %10, %struct.hash_entry** %6, align 8
  %11 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  store %struct.hash_entry* %17, %struct.hash_entry** %7, align 8
  br label %18

18:                                               ; preds = %41, %16
  %19 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %20 = icmp ne %struct.hash_entry* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %22, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 7
  %30 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i1 %30(i8* noundef %31, i8* noundef %34)
  br i1 %35, label %36, label %40

36:                                               ; preds = %27, %21
  %37 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  br label %46

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i32 0, i32 1
  %44 = load %struct.hash_entry*, %struct.hash_entry** %43, align 8
  store %struct.hash_entry* %44, %struct.hash_entry** %7, align 8
  br label %18, !llvm.loop !42

45:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %46

46:                                               ; preds = %45, %36, %15
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %0, i8* noundef %1) #4 {
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i64 %8(i8* noundef %9, i64 noundef %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  call void @abort() #20
  unreachable

20:                                               ; preds = %2
  %21 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 0
  %23 = load %struct.hash_entry*, %struct.hash_entry** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i64 %24
  ret %struct.hash_entry* %25
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @hash_get_first(%struct.hash_table* noundef %0) #9 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  %5 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  store %struct.hash_entry* %13, %struct.hash_entry** %4, align 8
  br label %14

14:                                               ; preds = %32, %10
  %15 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %16 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 1
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %19 = icmp ult %struct.hash_entry* %15, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  call void @abort() #20
  unreachable

21:                                               ; preds = %14
  %22 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %35

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 1
  store %struct.hash_entry* %34, %struct.hash_entry** %4, align 8
  br label %14

35:                                               ; preds = %26, %9
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_get_next(%struct.hash_table* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %8, i8* noundef %9)
  store %struct.hash_entry* %10, %struct.hash_entry** %6, align 8
  %11 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  store %struct.hash_entry* %11, %struct.hash_entry** %7, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8
  %22 = icmp ne %struct.hash_entry* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i32 0, i32 1
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %55

29:                                               ; preds = %18, %12
  %30 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i32 0, i32 1
  %32 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8
  store %struct.hash_entry* %32, %struct.hash_entry** %7, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %35 = icmp ne %struct.hash_entry* %34, null
  br i1 %35, label %12, label %36, !llvm.loop !43

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %53, %36
  %38 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i32 1
  store %struct.hash_entry* %39, %struct.hash_entry** %6, align 8
  %40 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %41 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %40, i32 0, i32 1
  %42 = load %struct.hash_entry*, %struct.hash_entry** %41, align 8
  %43 = icmp ult %struct.hash_entry* %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %3, align 8
  br label %55

53:                                               ; preds = %44
  br label %37, !llvm.loop !44

54:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %55

55:                                               ; preds = %54, %49, %23
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* noundef %0, i8** noundef %1, i64 noundef %2) #4 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hash_entry*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  store %struct.hash_entry* %13, %struct.hash_entry** %9, align 8
  br label %14

14:                                               ; preds = %50, %3
  %15 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %16 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 1
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %19 = icmp ult %struct.hash_entry* %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  store %struct.hash_entry* %26, %struct.hash_entry** %10, align 8
  br label %27

27:                                               ; preds = %44, %25
  %28 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %29 = icmp ne %struct.hash_entry* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %55

36:                                               ; preds = %30
  %37 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i32 0, i32 1
  %47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8
  store %struct.hash_entry* %47, %struct.hash_entry** %10, align 8
  br label %27, !llvm.loop !45

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %20
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %52 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %51, i32 1
  store %struct.hash_entry* %52, %struct.hash_entry** %9, align 8
  br label %14, !llvm.loop !46

53:                                               ; preds = %14
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* noundef %0, i1 (i8*, i8*)* noundef %1, i8* noundef %2) #4 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i1 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hash_entry*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i1 (i8*, i8*)* %1, i1 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  store %struct.hash_entry* %13, %struct.hash_entry** %9, align 8
  br label %14

14:                                               ; preds = %48, %3
  %15 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %16 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 1
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %19 = icmp ult %struct.hash_entry* %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  store %struct.hash_entry* %26, %struct.hash_entry** %10, align 8
  br label %27

27:                                               ; preds = %42, %25
  %28 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %29 = icmp ne %struct.hash_entry* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %6, align 8
  %32 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i1 %31(i8* noundef %34, i8* noundef %35)
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %53

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 1
  %45 = load %struct.hash_entry*, %struct.hash_entry** %44, align 8
  store %struct.hash_entry* %45, %struct.hash_entry** %10, align 8
  br label %27, !llvm.loop !47

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %50 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %49, i32 1
  store %struct.hash_entry* %50, %struct.hash_entry** %9, align 8
  br label %14, !llvm.loop !48

51:                                               ; preds = %14
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %37
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_reset_tuning(%struct.hash_tuning* noundef %0) #4 {
  %2 = alloca %struct.hash_tuning*, align 8
  store %struct.hash_tuning* %0, %struct.hash_tuning** %2, align 8
  %3 = load %struct.hash_tuning*, %struct.hash_tuning** %2, align 8
  %4 = bitcast %struct.hash_tuning* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.hash_table* @hash_initialize(i64 noundef %0, %struct.hash_tuning* noundef %1, i64 (i8*, i64)* noundef %2, i1 (i8*, i8*)* noundef %3, void (i8*)* noundef %4) #4 {
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hash_tuning*, align 8
  %9 = alloca i64 (i8*, i64)*, align 8
  %10 = alloca i1 (i8*, i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %struct.hash_table*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.hash_tuning* %1, %struct.hash_tuning** %8, align 8
  store i64 (i8*, i64)* %2, i64 (i8*, i64)** %9, align 8
  store i1 (i8*, i8*)* %3, i1 (i8*, i8*)** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %13 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %14 = icmp eq i64 (i8*, i64)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)** %9, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %18 = icmp eq i1 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)** %10, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = call noalias i8* @malloc(i64 noundef 80) #19
  %22 = bitcast i8* %21 to %struct.hash_table*
  store %struct.hash_table* %22, %struct.hash_table** %12, align 8
  %23 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %24 = icmp eq %struct.hash_table* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.hash_table* null, %struct.hash_table** %6, align 8
  br label %91

26:                                               ; preds = %20
  %27 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %28 = icmp ne %struct.hash_tuning* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %8, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %32 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %33 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 5
  store %struct.hash_tuning* %31, %struct.hash_tuning** %33, align 8
  %34 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %35 = call i1 @check_tuning(%struct.hash_table* noundef %34)
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = call i32* @__errno_location() #22
  store i32 22, i32* %37, align 4
  br label %88

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %41 = call i64 @compute_bucket_size(i64 noundef %39, %struct.hash_tuning* noundef %40) #21
  %42 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %43 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %88

49:                                               ; preds = %38
  %50 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call noalias i8* @calloc(i64 noundef %52, i64 noundef 16) #19
  %54 = bitcast i8* %53 to %struct.hash_entry*
  %55 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %56 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %55, i32 0, i32 0
  store %struct.hash_entry* %54, %struct.hash_entry** %56, align 8
  %57 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %58 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %57, i32 0, i32 0
  %59 = load %struct.hash_entry*, %struct.hash_entry** %58, align 8
  %60 = icmp eq %struct.hash_entry* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %88

62:                                               ; preds = %49
  %63 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %63, i32 0, i32 0
  %65 = load %struct.hash_entry*, %struct.hash_entry** %64, align 8
  %66 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 %68
  %70 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %70, i32 0, i32 1
  store %struct.hash_entry* %69, %struct.hash_entry** %71, align 8
  %72 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load i64 (i8*, i64)*, i64 (i8*, i64)** %9, align 8
  %77 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %77, i32 0, i32 6
  store i64 (i8*, i64)* %76, i64 (i8*, i64)** %78, align 8
  %79 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8
  %80 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %81 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %80, i32 0, i32 7
  store i1 (i8*, i8*)* %79, i1 (i8*, i8*)** %81, align 8
  %82 = load void (i8*)*, void (i8*)** %11, align 8
  %83 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %84 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %83, i32 0, i32 8
  store void (i8*)* %82, void (i8*)** %84, align 8
  %85 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %86 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %85, i32 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %86, align 8
  %87 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  store %struct.hash_table* %87, %struct.hash_table** %6, align 8
  br label %91

88:                                               ; preds = %61, %48, %36
  %89 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  %90 = bitcast %struct.hash_table* %89 to i8*
  call void @free(i8* noundef %90) #19
  store %struct.hash_table* null, %struct.hash_table** %6, align 8
  br label %91

91:                                               ; preds = %88, %62, %25
  %92 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  ret %struct.hash_table* %92
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raw_hasher(i8* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call i64 @rotr_sz(i64 noundef %7, i32 noundef 3)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = urem i64 %9, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @raw_comparator(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %5, %6
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @check_tuning(%struct.hash_table* noundef %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca %struct.hash_tuning*, align 8
  %5 = alloca float, align 4
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  %6 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 5
  %8 = load %struct.hash_tuning*, %struct.hash_tuning** %7, align 8
  store %struct.hash_tuning* %8, %struct.hash_tuning** %4, align 8
  %9 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %10 = icmp eq %struct.hash_tuning* %9, @default_tuning
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i1 true, i1* %2, align 1
  br label %66

12:                                               ; preds = %1
  store float 0x3FB99999A0000000, float* %5, align 4
  %13 = load float, float* %5, align 4
  %14 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %15 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fcmp olt float %13, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %19, i32 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = load float, float* %5, align 4
  %23 = fsub float 1.000000e+00, %22
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %18
  %26 = load float, float* %5, align 4
  %27 = fadd float 1.000000e+00, %26
  %28 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %29 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %28, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fcmp olt float %27, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  %33 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %34 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fcmp ole float 0.000000e+00, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %39 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = fadd float %40, %41
  %43 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %44 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = fcmp olt float %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %49 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fcmp ole float %50, 1.000000e+00
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %54 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = load float, float* %5, align 4
  %57 = fadd float %55, %56
  %58 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8
  %59 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = fcmp olt float %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i1 true, i1* %2, align 1
  br label %66

63:                                               ; preds = %52, %47, %37, %32, %25, %18, %12
  %64 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %64, i32 0, i32 5
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %65, align 8
  store i1 false, i1* %2, align 1
  br label %66

66:                                               ; preds = %63, %62, %11
  %67 = load i1, i1* %2, align 1
  ret i1 %67
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i64 @compute_bucket_size(i64 noundef %0, %struct.hash_tuning* noundef %1) #9 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hash_tuning*, align 8
  %6 = alloca float, align 4
  store i64 %0, i64* %4, align 8
  store %struct.hash_tuning* %1, %struct.hash_tuning** %5, align 8
  %7 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8
  %8 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %7, i32 0, i32 4
  %9 = load i8, i8* %8, align 4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = uitofp i64 %12 to float
  %14 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8
  %15 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fdiv float %13, %16
  store float %17, float* %6, align 4
  %18 = load float, float* %6, align 4
  %19 = fcmp ole float 0x43F0000000000000, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %32

21:                                               ; preds = %11
  %22 = load float, float* %6, align 4
  %23 = fptoui float %22 to i64
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @next_prime(i64 noundef %25) #22
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ult i64 1152921504606846975, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %3, align 8
  br label %34

32:                                               ; preds = %29, %20
  %33 = call i32* @__errno_location() #22
  store i32 12, i32* %33, align 4
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_clear(%struct.hash_table* noundef %0) #4 {
  %2 = alloca %struct.hash_table*, align 8
  %3 = alloca %struct.hash_entry*, align 8
  %4 = alloca %struct.hash_entry*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %6 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 0
  %8 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  store %struct.hash_entry* %8, %struct.hash_entry** %3, align 8
  br label %9

9:                                                ; preds = %72, %1
  %10 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 1
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = icmp ult %struct.hash_entry* %10, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %9
  %16 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 1
  %23 = load %struct.hash_entry*, %struct.hash_entry** %22, align 8
  store %struct.hash_entry* %23, %struct.hash_entry** %4, align 8
  br label %24

24:                                               ; preds = %39, %20
  %25 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %26 = icmp ne %struct.hash_entry* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 8
  %30 = load void (i8*)*, void (i8*)** %29, align 8
  %31 = icmp ne void (i8*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %34 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %33, i32 0, i32 8
  %35 = load void (i8*)*, void (i8*)** %34, align 8
  %36 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  call void %35(i8* noundef %38)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i32 0, i32 1
  %44 = load %struct.hash_entry*, %struct.hash_entry** %43, align 8
  store %struct.hash_entry* %44, %struct.hash_entry** %5, align 8
  %45 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %46 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 9
  %47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8
  %48 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i32 0, i32 1
  store %struct.hash_entry* %47, %struct.hash_entry** %49, align 8
  %50 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %51 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %51, i32 0, i32 9
  store %struct.hash_entry* %50, %struct.hash_entry** %52, align 8
  %53 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  store %struct.hash_entry* %53, %struct.hash_entry** %4, align 8
  br label %24, !llvm.loop !49

54:                                               ; preds = %24
  %55 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %56 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %55, i32 0, i32 8
  %57 = load void (i8*)*, void (i8*)** %56, align 8
  %58 = icmp ne void (i8*)* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %60, i32 0, i32 8
  %62 = load void (i8*)*, void (i8*)** %61, align 8
  %63 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  call void %62(i8* noundef %65)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i32 0, i32 0
  store i8* null, i8** %68, align 8
  %69 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %69, i32 0, i32 1
  store %struct.hash_entry* null, %struct.hash_entry** %70, align 8
  br label %71

71:                                               ; preds = %66, %15
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %74 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %73, i32 1
  store %struct.hash_entry* %74, %struct.hash_entry** %3, align 8
  br label %9, !llvm.loop !50

75:                                               ; preds = %9
  %76 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_free(%struct.hash_table* noundef %0) #4 {
  %2 = alloca %struct.hash_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash_entry*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  %8 = alloca %struct.hash_entry*, align 8
  %9 = alloca %struct.hash_entry*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %11 = call i32* @__errno_location() #22
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 8
  %15 = load void (i8*)*, void (i8*)** %14, align 8
  %16 = icmp ne void (i8*)* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %19 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %24 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %23, i32 0, i32 0
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8
  store %struct.hash_entry* %25, %struct.hash_entry** %4, align 8
  br label %26

26:                                               ; preds = %55, %22
  %27 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %28 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8
  %31 = icmp ult %struct.hash_entry* %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  store %struct.hash_entry* %38, %struct.hash_entry** %5, align 8
  br label %39

39:                                               ; preds = %49, %37
  %40 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %41 = icmp ne %struct.hash_entry* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %44 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %43, i32 0, i32 8
  %45 = load void (i8*)*, void (i8*)** %44, align 8
  %46 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  call void %45(i8* noundef %48)
  br label %49

49:                                               ; preds = %42
  %50 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i32 0, i32 1
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8
  store %struct.hash_entry* %52, %struct.hash_entry** %5, align 8
  br label %39, !llvm.loop !51

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i32 1
  store %struct.hash_entry* %57, %struct.hash_entry** %4, align 8
  br label %26, !llvm.loop !52

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58, %17, %1
  %60 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %60, i32 0, i32 0
  %62 = load %struct.hash_entry*, %struct.hash_entry** %61, align 8
  store %struct.hash_entry* %62, %struct.hash_entry** %6, align 8
  br label %63

63:                                               ; preds = %84, %59
  %64 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %65 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %65, i32 0, i32 1
  %67 = load %struct.hash_entry*, %struct.hash_entry** %66, align 8
  %68 = icmp ult %struct.hash_entry* %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %71 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %70, i32 0, i32 1
  %72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8
  store %struct.hash_entry* %72, %struct.hash_entry** %7, align 8
  br label %73

73:                                               ; preds = %76, %69
  %74 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %75 = icmp ne %struct.hash_entry* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i32 0, i32 1
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8
  store %struct.hash_entry* %79, %struct.hash_entry** %8, align 8
  %80 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %81 = bitcast %struct.hash_entry* %80 to i8*
  call void @free(i8* noundef %81) #19
  %82 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  store %struct.hash_entry* %82, %struct.hash_entry** %7, align 8
  br label %73, !llvm.loop !53

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i32 1
  store %struct.hash_entry* %86, %struct.hash_entry** %6, align 8
  br label %63, !llvm.loop !54

87:                                               ; preds = %63
  %88 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %89 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %88, i32 0, i32 9
  %90 = load %struct.hash_entry*, %struct.hash_entry** %89, align 8
  store %struct.hash_entry* %90, %struct.hash_entry** %9, align 8
  br label %91

91:                                               ; preds = %94, %87
  %92 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %93 = icmp ne %struct.hash_entry* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %95, i32 0, i32 1
  %97 = load %struct.hash_entry*, %struct.hash_entry** %96, align 8
  store %struct.hash_entry* %97, %struct.hash_entry** %10, align 8
  %98 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %99 = bitcast %struct.hash_entry* %98 to i8*
  call void @free(i8* noundef %99) #19
  %100 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  store %struct.hash_entry* %100, %struct.hash_entry** %9, align 8
  br label %91, !llvm.loop !55

101:                                              ; preds = %91
  %102 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %103 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %102, i32 0, i32 0
  %104 = load %struct.hash_entry*, %struct.hash_entry** %103, align 8
  %105 = bitcast %struct.hash_entry* %104 to i8*
  call void @free(i8* noundef %105) #19
  %106 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %107 = bitcast %struct.hash_table* %106 to i8*
  call void @free(i8* noundef %107) #19
  %108 = load i32, i32* %3, align 4
  %109 = call i32* @__errno_location() #22
  store i32 %108, i32* %109, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hash_rehash(%struct.hash_table* noundef %0, i64 noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hash_table, align 8
  %8 = alloca %struct.hash_table*, align 8
  %9 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 5
  %13 = load %struct.hash_tuning*, %struct.hash_tuning** %12, align 8
  %14 = call i64 @compute_bucket_size(i64 noundef %10, %struct.hash_tuning* noundef %13) #21
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %132

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i1 true, i1* %3, align 1
  br label %132

25:                                               ; preds = %18
  store %struct.hash_table* %7, %struct.hash_table** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call noalias i8* @calloc(i64 noundef %26, i64 noundef 16) #19
  %28 = bitcast i8* %27 to %struct.hash_entry*
  %29 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %29, i32 0, i32 0
  store %struct.hash_entry* %28, %struct.hash_entry** %30, align 8
  %31 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %32 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %31, i32 0, i32 0
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i1 false, i1* %3, align 1
  br label %132

36:                                               ; preds = %25
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %41 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %40, i32 0, i32 0
  %42 = load %struct.hash_entry*, %struct.hash_entry** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 %43
  %45 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %46 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 1
  store %struct.hash_entry* %44, %struct.hash_entry** %46, align 8
  %47 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %48 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %50 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %51, i32 0, i32 5
  %53 = load %struct.hash_tuning*, %struct.hash_tuning** %52, align 8
  %54 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %55 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %54, i32 0, i32 5
  store %struct.hash_tuning* %53, %struct.hash_tuning** %55, align 8
  %56 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %57 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %56, i32 0, i32 6
  %58 = load i64 (i8*, i64)*, i64 (i8*, i64)** %57, align 8
  %59 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %60 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %59, i32 0, i32 6
  store i64 (i8*, i64)* %58, i64 (i8*, i64)** %60, align 8
  %61 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %61, i32 0, i32 7
  %63 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %62, align 8
  %64 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %64, i32 0, i32 7
  store i1 (i8*, i8*)* %63, i1 (i8*, i8*)** %65, align 8
  %66 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %66, i32 0, i32 8
  %68 = load void (i8*)*, void (i8*)** %67, align 8
  %69 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %69, i32 0, i32 8
  store void (i8*)* %68, void (i8*)** %70, align 8
  %71 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %71, i32 0, i32 9
  %73 = load %struct.hash_entry*, %struct.hash_entry** %72, align 8
  %74 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %74, i32 0, i32 9
  store %struct.hash_entry* %73, %struct.hash_entry** %75, align 8
  %76 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %77 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %78 = call i1 @transfer_entries(%struct.hash_table* noundef %76, %struct.hash_table* noundef %77, i1 noundef false)
  br i1 %78, label %79, label %109

79:                                               ; preds = %36
  %80 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %81 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %80, i32 0, i32 0
  %82 = load %struct.hash_entry*, %struct.hash_entry** %81, align 8
  %83 = bitcast %struct.hash_entry* %82 to i8*
  call void @free(i8* noundef %83) #19
  %84 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %85 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %84, i32 0, i32 0
  %86 = load %struct.hash_entry*, %struct.hash_entry** %85, align 8
  %87 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %88 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %87, i32 0, i32 0
  store %struct.hash_entry* %86, %struct.hash_entry** %88, align 8
  %89 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %90 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %89, i32 0, i32 1
  %91 = load %struct.hash_entry*, %struct.hash_entry** %90, align 8
  %92 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %93 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %92, i32 0, i32 1
  store %struct.hash_entry* %91, %struct.hash_entry** %93, align 8
  %94 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %95 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %98 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %100 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %103 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %105 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %104, i32 0, i32 9
  %106 = load %struct.hash_entry*, %struct.hash_entry** %105, align 8
  %107 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %108 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %107, i32 0, i32 9
  store %struct.hash_entry* %106, %struct.hash_entry** %108, align 8
  store i1 true, i1* %3, align 1
  br label %132

109:                                              ; preds = %36
  %110 = call i32* @__errno_location() #22
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %9, align 4
  %112 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %113 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %112, i32 0, i32 9
  %114 = load %struct.hash_entry*, %struct.hash_entry** %113, align 8
  %115 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %116 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %115, i32 0, i32 9
  store %struct.hash_entry* %114, %struct.hash_entry** %116, align 8
  %117 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %118 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %119 = call i1 @transfer_entries(%struct.hash_table* noundef %117, %struct.hash_table* noundef %118, i1 noundef true)
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %122 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %123 = call i1 @transfer_entries(%struct.hash_table* noundef %121, %struct.hash_table* noundef %122, i1 noundef false)
  br i1 %123, label %125, label %124

124:                                              ; preds = %120, %109
  call void @abort() #20
  unreachable

125:                                              ; preds = %120
  %126 = load %struct.hash_table*, %struct.hash_table** %8, align 8
  %127 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %126, i32 0, i32 0
  %128 = load %struct.hash_entry*, %struct.hash_entry** %127, align 8
  %129 = bitcast %struct.hash_entry* %128 to i8*
  call void @free(i8* noundef %129) #19
  %130 = load i32, i32* %9, align 4
  %131 = call i32* @__errno_location() #22
  store i32 %130, i32* %131, align 4
  store i1 false, i1* %3, align 1
  br label %132

132:                                              ; preds = %125, %79, %35, %24, %17
  %133 = load i1, i1* %3, align 1
  ret i1 %133
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @transfer_entries(%struct.hash_table* noundef %0, %struct.hash_table* noundef %1, i1 noundef %2) #4 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca %struct.hash_entry*, align 8
  %12 = alloca %struct.hash_entry*, align 8
  %13 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store %struct.hash_table* %1, %struct.hash_table** %6, align 8
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %7, align 1
  %15 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %15, i32 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  store %struct.hash_entry* %17, %struct.hash_entry** %8, align 8
  br label %18

18:                                               ; preds = %122, %3
  %19 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %20 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 1
  %22 = load %struct.hash_entry*, %struct.hash_entry** %21, align 8
  %23 = icmp ult %struct.hash_entry* %19, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %18
  %25 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %121

29:                                               ; preds = %24
  %30 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i32 0, i32 1
  %32 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8
  store %struct.hash_entry* %32, %struct.hash_entry** %11, align 8
  br label %33

33:                                               ; preds = %69, %29
  %34 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %35 = icmp ne %struct.hash_entry* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %40, i8* noundef %41)
  store %struct.hash_entry* %42, %struct.hash_entry** %10, align 8
  %43 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 1
  %45 = load %struct.hash_entry*, %struct.hash_entry** %44, align 8
  store %struct.hash_entry* %45, %struct.hash_entry** %12, align 8
  %46 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %52 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %51, i32 0, i32 1
  %53 = load %struct.hash_entry*, %struct.hash_entry** %52, align 8
  %54 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %55 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i32 0, i32 1
  store %struct.hash_entry* %53, %struct.hash_entry** %55, align 8
  %56 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %57 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %58 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %57, i32 0, i32 1
  store %struct.hash_entry* %56, %struct.hash_entry** %58, align 8
  br label %69

59:                                               ; preds = %36
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %68 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  call void @free_entry(%struct.hash_table* noundef %67, %struct.hash_entry* noundef %68)
  br label %69

69:                                               ; preds = %59, %50
  %70 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  store %struct.hash_entry* %70, %struct.hash_entry** %11, align 8
  br label %33, !llvm.loop !56

71:                                               ; preds = %33
  %72 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %73 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %76 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %75, i32 0, i32 1
  store %struct.hash_entry* null, %struct.hash_entry** %76, align 8
  %77 = load i8, i8* %7, align 1
  %78 = trunc i8 %77 to i1
  br i1 %78, label %120, label %79

79:                                               ; preds = %71
  %80 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %80, i8* noundef %81)
  store %struct.hash_entry* %82, %struct.hash_entry** %10, align 8
  %83 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %84 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %89 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* noundef %88)
  store %struct.hash_entry* %89, %struct.hash_entry** %13, align 8
  %90 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %91 = icmp eq %struct.hash_entry* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i1 false, i1* %4, align 1
  br label %126

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i32 0, i32 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %98, align 8
  %100 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %100, i32 0, i32 1
  store %struct.hash_entry* %99, %struct.hash_entry** %101, align 8
  %102 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %103 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %104 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %103, i32 0, i32 1
  store %struct.hash_entry* %102, %struct.hash_entry** %104, align 8
  br label %113

105:                                              ; preds = %79
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %108 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %110 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %105, %93
  %114 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %115 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i32 0, i32 0
  store i8* null, i8** %115, align 8
  %116 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %117 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %113, %71
  br label %121

121:                                              ; preds = %120, %24
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i32 1
  store %struct.hash_entry* %124, %struct.hash_entry** %8, align 8
  br label %18, !llvm.loop !57

125:                                              ; preds = %18
  store i1 true, i1* %4, align 1
  br label %126

126:                                              ; preds = %125, %92
  %127 = load i1, i1* %4, align 1
  ret i1 %127
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_entry(%struct.hash_table* noundef %0, %struct.hash_entry* noundef %1) #4 {
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store %struct.hash_entry* %1, %struct.hash_entry** %4, align 8
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 9
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %10 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i32 0, i32 1
  store %struct.hash_entry* %9, %struct.hash_entry** %11, align 8
  %12 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %13 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 9
  store %struct.hash_entry* %12, %struct.hash_entry** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_entry* @allocate_entry(%struct.hash_table* noundef %0) #4 {
  %2 = alloca %struct.hash_table*, align 8
  %3 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %2, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 9
  %6 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %7 = icmp ne %struct.hash_entry* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 9
  %11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  store %struct.hash_entry* %11, %struct.hash_entry** %3, align 8
  %12 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 0, i32 1
  %14 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %15 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %15, i32 0, i32 9
  store %struct.hash_entry* %14, %struct.hash_entry** %16, align 8
  br label %20

17:                                               ; preds = %1
  %18 = call noalias i8* @malloc(i64 noundef 16) #19
  %19 = bitcast i8* %18 to %struct.hash_entry*
  store %struct.hash_entry* %19, %struct.hash_entry** %3, align 8
  br label %20

20:                                               ; preds = %17, %8
  %21 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  ret %struct.hash_entry* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* noundef %0, i8* noundef %1, i8** noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.hash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hash_tuning*, align 8
  %11 = alloca float, align 4
  %12 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @abort() #20
  unreachable

16:                                               ; preds = %3
  %17 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @find_entry(%struct.hash_table* noundef %17, i8* noundef %18, %struct.hash_entry** noundef %8, i1 noundef false)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, i32* %4, align 4
  br label %152

29:                                               ; preds = %16
  %30 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = uitofp i64 %32 to float
  %34 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %34, i32 0, i32 5
  %36 = load %struct.hash_tuning*, %struct.hash_tuning** %35, align 8
  %37 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %36, i32 0, i32 2
  %38 = load float, float* %37, align 4
  %39 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = uitofp i64 %41 to float
  %43 = fmul float %38, %42
  %44 = fcmp ogt float %33, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %29
  %46 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %47 = call i1 @check_tuning(%struct.hash_table* noundef %46)
  %48 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %49 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = uitofp i64 %50 to float
  %52 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %52, i32 0, i32 5
  %54 = load %struct.hash_tuning*, %struct.hash_tuning** %53, align 8
  %55 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %54, i32 0, i32 2
  %56 = load float, float* %55, align 4
  %57 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %58 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = uitofp i64 %59 to float
  %61 = fmul float %56, %60
  %62 = fcmp ogt float %51, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %45
  %64 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %64, i32 0, i32 5
  %66 = load %struct.hash_tuning*, %struct.hash_tuning** %65, align 8
  store %struct.hash_tuning* %66, %struct.hash_tuning** %10, align 8
  %67 = load %struct.hash_tuning*, %struct.hash_tuning** %10, align 8
  %68 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %67, i32 0, i32 4
  %69 = load i8, i8* %68, align 4
  %70 = trunc i8 %69 to i1
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = uitofp i64 %74 to float
  %76 = load %struct.hash_tuning*, %struct.hash_tuning** %10, align 8
  %77 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %76, i32 0, i32 3
  %78 = load float, float* %77, align 4
  %79 = fmul float %75, %78
  br label %93

80:                                               ; preds = %63
  %81 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %82 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = uitofp i64 %83 to float
  %85 = load %struct.hash_tuning*, %struct.hash_tuning** %10, align 8
  %86 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %85, i32 0, i32 3
  %87 = load float, float* %86, align 4
  %88 = fmul float %84, %87
  %89 = load %struct.hash_tuning*, %struct.hash_tuning** %10, align 8
  %90 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %89, i32 0, i32 2
  %91 = load float, float* %90, align 4
  %92 = fmul float %88, %91
  br label %93

93:                                               ; preds = %80, %71
  %94 = phi float [ %79, %71 ], [ %92, %80 ]
  store float %94, float* %11, align 4
  %95 = load float, float* %11, align 4
  %96 = fcmp ole float 0x43F0000000000000, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32* @__errno_location() #22
  store i32 12, i32* %98, align 4
  store i32 -1, i32* %4, align 4
  br label %152

99:                                               ; preds = %93
  %100 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %101 = load float, float* %11, align 4
  %102 = fptoui float %101 to i64
  %103 = call i1 @hash_rehash(%struct.hash_table* noundef %100, i64 noundef %102)
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %152

105:                                              ; preds = %99
  %106 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @find_entry(%struct.hash_table* noundef %106, i8* noundef %107, %struct.hash_entry** noundef %8, i1 noundef false)
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  call void @abort() #20
  unreachable

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %45
  br label %113

113:                                              ; preds = %112, %29
  %114 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %115 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %120 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* noundef %119)
  store %struct.hash_entry* %120, %struct.hash_entry** %12, align 8
  %121 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %122 = icmp eq %struct.hash_entry* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %152

124:                                              ; preds = %118
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %127 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %129 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %128, i32 0, i32 1
  %130 = load %struct.hash_entry*, %struct.hash_entry** %129, align 8
  %131 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %132 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %131, i32 0, i32 1
  store %struct.hash_entry* %130, %struct.hash_entry** %132, align 8
  %133 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %134 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %135 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %134, i32 0, i32 1
  store %struct.hash_entry* %133, %struct.hash_entry** %135, align 8
  %136 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %137 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  store i32 1, i32* %4, align 4
  br label %152

140:                                              ; preds = %113
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %143 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %145 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %149 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  store i32 1, i32* %4, align 4
  br label %152

152:                                              ; preds = %140, %124, %123, %104, %97, %28
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_entry(%struct.hash_table* noundef %0, i8* noundef %1, %struct.hash_entry** noundef %2, i1 noundef %3) #4 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_entry**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hash_entry*, align 8
  %13 = alloca %struct.hash_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hash_entry** %2, %struct.hash_entry*** %8, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* noundef %17, i8* noundef %18)
  store %struct.hash_entry* %19, %struct.hash_entry** %10, align 8
  %20 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %21 = load %struct.hash_entry**, %struct.hash_entry*** %8, align 8
  store %struct.hash_entry* %20, %struct.hash_entry** %21, align 8
  %22 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %122

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %28, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %34, i32 0, i32 7
  %36 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i1 %36(i8* noundef %37, i8* noundef %40)
  br i1 %41, label %42, label %69

42:                                               ; preds = %33, %27
  %43 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8, i8* %9, align 1
  %47 = trunc i8 %46 to i1
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %50 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %49, i32 0, i32 1
  %51 = load %struct.hash_entry*, %struct.hash_entry** %50, align 8
  %52 = icmp ne %struct.hash_entry* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %55 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i32 0, i32 1
  %56 = load %struct.hash_entry*, %struct.hash_entry** %55, align 8
  store %struct.hash_entry* %56, %struct.hash_entry** %12, align 8
  %57 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %58 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %59 = bitcast %struct.hash_entry* %57 to i8*
  %60 = bitcast %struct.hash_entry* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %62 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  call void @free_entry(%struct.hash_table* noundef %61, %struct.hash_entry* noundef %62)
  br label %66

63:                                               ; preds = %48
  %64 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %64, i32 0, i32 0
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %53
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i8*, i8** %11, align 8
  store i8* %68, i8** %5, align 8
  br label %122

69:                                               ; preds = %33
  %70 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  store %struct.hash_entry* %70, %struct.hash_entry** %13, align 8
  br label %71

71:                                               ; preds = %117, %69
  %72 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %73 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %72, i32 0, i32 1
  %74 = load %struct.hash_entry*, %struct.hash_entry** %73, align 8
  %75 = icmp ne %struct.hash_entry* %74, null
  br i1 %75, label %76, label %121

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %79 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %78, i32 0, i32 1
  %80 = load %struct.hash_entry*, %struct.hash_entry** %79, align 8
  %81 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %77, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %76
  %85 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %86 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %85, i32 0, i32 7
  %87 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %86, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %90 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i32 0, i32 1
  %91 = load %struct.hash_entry*, %struct.hash_entry** %90, align 8
  %92 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i1 %87(i8* noundef %88, i8* noundef %93)
  br i1 %94, label %95, label %116

95:                                               ; preds = %84, %76
  %96 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %97 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %96, i32 0, i32 1
  %98 = load %struct.hash_entry*, %struct.hash_entry** %97, align 8
  %99 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %14, align 8
  %101 = load i8, i8* %9, align 1
  %102 = trunc i8 %101 to i1
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %105 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %104, i32 0, i32 1
  %106 = load %struct.hash_entry*, %struct.hash_entry** %105, align 8
  store %struct.hash_entry* %106, %struct.hash_entry** %15, align 8
  %107 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8
  %108 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %107, i32 0, i32 1
  %109 = load %struct.hash_entry*, %struct.hash_entry** %108, align 8
  %110 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %111 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %110, i32 0, i32 1
  store %struct.hash_entry* %109, %struct.hash_entry** %111, align 8
  %112 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %113 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8
  call void @free_entry(%struct.hash_table* noundef %112, %struct.hash_entry* noundef %113)
  br label %114

114:                                              ; preds = %103, %95
  %115 = load i8*, i8** %14, align 8
  store i8* %115, i8** %5, align 8
  br label %122

116:                                              ; preds = %84
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %118, i32 0, i32 1
  %120 = load %struct.hash_entry*, %struct.hash_entry** %119, align 8
  store %struct.hash_entry* %120, %struct.hash_entry** %13, align 8
  br label %71, !llvm.loop !58

121:                                              ; preds = %71
  store i8* null, i8** %5, align 8
  br label %122

122:                                              ; preds = %121, %114, %67, %26
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_insert(%struct.hash_table* noundef %0, i8* noundef %1) #4 {
  %3 = alloca %struct.hash_table*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @hash_insert_if_absent(%struct.hash_table* noundef %7, i8* noundef %8, i8** noundef %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  br label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i8* [ null, %12 ], [ %21, %20 ]
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_remove(%struct.hash_table* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_tuning*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hash_entry*, align 8
  %11 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @find_entry(%struct.hash_table* noundef %12, i8* noundef %13, %struct.hash_entry** noundef %6, i1 noundef true)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %20 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %121, label %27

27:                                               ; preds = %18
  %28 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %33 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = uitofp i64 %34 to float
  %36 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %37 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %36, i32 0, i32 5
  %38 = load %struct.hash_tuning*, %struct.hash_tuning** %37, align 8
  %39 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %42 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = uitofp i64 %43 to float
  %45 = fmul float %40, %44
  %46 = fcmp olt float %35, %45
  br i1 %46, label %47, label %120

47:                                               ; preds = %27
  %48 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %49 = call i1 @check_tuning(%struct.hash_table* noundef %48)
  %50 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = uitofp i64 %52 to float
  %54 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %55 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %54, i32 0, i32 5
  %56 = load %struct.hash_tuning*, %struct.hash_tuning** %55, align 8
  %57 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %56, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %60 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = uitofp i64 %61 to float
  %63 = fmul float %58, %62
  %64 = fcmp olt float %53, %63
  br i1 %64, label %65, label %119

65:                                               ; preds = %47
  %66 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %66, i32 0, i32 5
  %68 = load %struct.hash_tuning*, %struct.hash_tuning** %67, align 8
  store %struct.hash_tuning* %68, %struct.hash_tuning** %8, align 8
  %69 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %70 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %69, i32 0, i32 4
  %71 = load i8, i8* %70, align 4
  %72 = trunc i8 %71 to i1
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = uitofp i64 %76 to float
  %78 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %79 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %78, i32 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fmul float %77, %80
  br label %95

82:                                               ; preds = %65
  %83 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %84 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = uitofp i64 %85 to float
  %87 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %88 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = fmul float %86, %89
  %91 = load %struct.hash_tuning*, %struct.hash_tuning** %8, align 8
  %92 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %91, i32 0, i32 2
  %93 = load float, float* %92, align 4
  %94 = fmul float %90, %93
  br label %95

95:                                               ; preds = %82, %73
  %96 = phi float [ %81, %73 ], [ %94, %82 ]
  %97 = fptoui float %96 to i64
  store i64 %97, i64* %9, align 8
  %98 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i1 @hash_rehash(%struct.hash_table* noundef %98, i64 noundef %99)
  br i1 %100, label %118, label %101

101:                                              ; preds = %95
  %102 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %103 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %102, i32 0, i32 9
  %104 = load %struct.hash_entry*, %struct.hash_entry** %103, align 8
  store %struct.hash_entry* %104, %struct.hash_entry** %10, align 8
  br label %105

105:                                              ; preds = %108, %101
  %106 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %107 = icmp ne %struct.hash_entry* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %110 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %109, i32 0, i32 1
  %111 = load %struct.hash_entry*, %struct.hash_entry** %110, align 8
  store %struct.hash_entry* %111, %struct.hash_entry** %11, align 8
  %112 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %113 = bitcast %struct.hash_entry* %112 to i8*
  call void @free(i8* noundef %113) #19
  %114 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  store %struct.hash_entry* %114, %struct.hash_entry** %10, align 8
  br label %105, !llvm.loop !59

115:                                              ; preds = %105
  %116 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %117 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %116, i32 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %117, align 8
  br label %118

118:                                              ; preds = %115, %95
  br label %119

119:                                              ; preds = %118, %47
  br label %120

120:                                              ; preds = %119, %27
  br label %121

121:                                              ; preds = %120, %18
  %122 = load i8*, i8** %7, align 8
  store i8* %122, i8** %3, align 8
  br label %123

123:                                              ; preds = %121, %17
  %124 = load i8*, i8** %3, align 8
  ret i8* %124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_ring_init(%struct.I_ring* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.I_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.I_ring* %0, %struct.I_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %7 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %6, i32 0, i32 4
  store i8 1, i8* %7, align 4
  %8 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %11 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %10, i32 0, i32 3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %18 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %20
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %12, !llvm.loop !60

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %28 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i1 @i_ring_empty(%struct.I_ring* noundef %0) #9 {
  %2 = alloca %struct.I_ring*, align 8
  store %struct.I_ring* %0, %struct.I_ring** %2, align 8
  %3 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %4 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %3, i32 0, i32 4
  %5 = load i8, i8* %4, align 4
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_ring_push(%struct.I_ring* noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.I_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.I_ring* %0, %struct.I_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %8 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %11 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %10, i32 0, i32 4
  %12 = load i8, i8* %11, align 4
  %13 = trunc i8 %12 to i1
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = add i32 %9, %15
  %17 = urem i32 %16, 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %19 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %26 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %32 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %35 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %40 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %43 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 4
  %45 = trunc i8 %44 to i1
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = add i32 %41, %47
  %49 = urem i32 %48, 4
  %50 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %51 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %38, %2
  %53 = load %struct.I_ring*, %struct.I_ring** %3, align 8
  %54 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %53, i32 0, i32 4
  store i8 0, i8* %54, align 4
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_ring_pop(%struct.I_ring* noundef %0) #4 {
  %2 = alloca %struct.I_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.I_ring* %0, %struct.I_ring** %2, align 8
  %4 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %5 = call i1 @i_ring_empty(%struct.I_ring* noundef %4) #21
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @abort() #20
  unreachable

7:                                                ; preds = %1
  %8 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %8, i32 0, i32 0
  %10 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %11 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %17 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %20 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %19, i32 0, i32 0
  %21 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %22 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %27 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %30 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %35 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %34, i32 0, i32 4
  store i8 1, i8* %35, align 4
  br label %45

36:                                               ; preds = %7
  %37 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %38 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, 4
  %41 = sub i32 %40, 1
  %42 = urem i32 %41, 4
  %43 = load %struct.I_ring*, %struct.I_ring** %2, align 8
  %44 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
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
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  ret i1 %12
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define dso_local i64 @next_prime(i64 noundef %0) #14 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 10
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i64 10, i64* %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i64, i64* %2, align 8
  %8 = or i64 %7, 1
  store i64 %8, i64* %2, align 8
  br label %9

9:                                                ; preds = %18, %6
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 -1, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* %2, align 8
  %14 = call i1 @is_prime(i64 noundef %13) #22
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = add i64 %19, 2
  store i64 %20, i64* %2, align 8
  br label %9, !llvm.loop !61

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone readnone uwtable willreturn
define internal i1 @is_prime(i64 noundef %0) #14 {
  %2 = alloca i1, align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 3, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = mul i64 %6, %7
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i1 true, i1* %2, align 1
  br label %29

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = urem i64 %15, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i1 false, i1* %2, align 1
  br label %29

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 4, %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %9

29:                                               ; preds = %19, %13
  %30 = load i1, i1* %2, align 1
  ret i1 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openat_safer(i32 noundef %0, i8* noundef %1, i32 noundef %2, ...) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 64
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %8, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = add i32 %15, 8
  store i32 %18, i32* %14, align 8
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %8, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 %15
  %24 = bitcast i8* %23 to i32*
  br label %30

25:                                               ; preds = %17, %12
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %8, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 8
  store i8* %28, i8** %26, align 8
  %29 = bitcast i8* %27 to i32*
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ]
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = bitcast %"struct.std::__va_list"* %8 to i8*
  call void @llvm.va_end(i8* %33)
  br label %34

34:                                               ; preds = %30, %3
  %35 = load i32, i32* %4, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %35, i8* noundef %36, i32 noundef %37, i32 noundef %38)
  %40 = call i32 @fd_safer(i32 noundef %39)
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.__dirstream* @opendirat(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3) #4 {
  %5 = alloca %struct.__dirstream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__dirstream*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = or i32 542976, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %16, i8* noundef %17, i32 noundef %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.__dirstream* null, %struct.__dirstream** %5, align 8
  br label %40

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.__dirstream* @fdopendir(i32 noundef %24)
  store %struct.__dirstream* %25, %struct.__dirstream** %12, align 8
  %26 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8
  %27 = icmp ne %struct.__dirstream* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %38

31:                                               ; preds = %23
  %32 = call i32* @__errno_location() #22
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @close(i32 noundef %34)
  %36 = load i32, i32* %13, align 4
  %37 = call i32* @__errno_location() #22
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8
  store %struct.__dirstream* %39, %struct.__dirstream** %5, align 8
  br label %40

40:                                               ; preds = %38, %22
  %41 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8
  ret %struct.__dirstream* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_set_remove_linkdir() #4 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_set_restore_linkdir() #4 {
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21
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
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.220, i64 0, i64 0), i64 noundef 7)
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.221, i64 0, i64 0), i64 noundef 3) #21
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
  %10 = call i8* @gettext(i8* noundef %9) #19
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
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19
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
  %5 = call i32* @__errno_location() #22
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
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25
  %16 = bitcast i8* %15 to %struct.quoting_options*
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @__errno_location() #22
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
  call void @abort() #20
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
  %21 = call i32* @__errno_location() #22
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
  %44 = call i32* @__errno_location() #22
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
  %44 = call i64 @__ctype_get_mb_cur_max() #19
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.234, i64 0, i64 0), i8** %23, align 8
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
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.235, i64 0, i64 0), i32 noundef %76)
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.236, i64 0, i64 0), i32 noundef %78)
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
  br label %85, !llvm.loop !62

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1
  %109 = load i8*, i8** %19, align 8
  store i8* %109, i8** %23, align 8
  %110 = load i8*, i8** %23, align 8
  %111 = call i64 @strlen(i8* noundef %110) #21
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.236, i64 0, i64 0), i8** %23, align 8
  store i64 1, i64* %24, align 8
  br label %138

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1
  br label %138

137:                                              ; preds = %51
  call void @abort() #20
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
  %179 = call i64 @strlen(i8* noundef %178) #21
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
  %546 = call i16** @__ctype_b_loc() #22
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
  %562 = call i64 @strlen(i8* noundef %561) #21
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
  br label %587, !llvm.loop !63

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
  br label %615, !llvm.loop !64

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
  br label %139, !llvm.loop !65

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
  br label %1045, !llvm.loop !66

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
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.237, i64 0, i64 0), i8* noundef %9) #19
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
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.234, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.236, i64 0, i64 0)
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
  %21 = call i32* @__errno_location() #22
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
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26
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
  %69 = call i32* @__errno_location() #22
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
  call void @free(i8* noundef %14) #19
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4, !llvm.loop !67

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
  call void @free(i8* noundef %28) #19
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
  call void @free(i8* noundef %34) #19
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
  %18 = call i32* @__errno_location() #22
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
  call void @abort() #20
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
  call void @free(i8* noundef %122) #19
  br label %123

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26
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
  %151 = call i32* @__errno_location() #22
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
  call void @abort() #20
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
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19
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
  %104 = call i32* @__errno_location() #22
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
define dso_local %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull %0) #4 {
  %2 = alloca %struct.dev_ino*, align 8
  %3 = alloca %struct.dev_ino*, align 8
  %4 = alloca %struct.stat, align 8
  store %struct.dev_ino* %0, %struct.dev_ino** %3, align 8
  %5 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.256, i64 0, i64 0), %struct.stat* noundef %4) #19
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.dev_ino* null, %struct.dev_ino** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8
  %12 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8
  %16 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8
  store %struct.dev_ino* %17, %struct.dev_ino** %2, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load %struct.dev_ino*, %struct.dev_ino** %2, align 8
  ret %struct.dev_ino* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_safer(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @dup_safer(i32 noundef %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32* @__errno_location() #22
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @close(i32 noundef %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @__errno_location() #22
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %10, %7, %1
  %21 = load i32, i32* %2, align 4
  ret i32 %21
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
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.261, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19)
  br label %26

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.262, i64 0, i64 0), i8* noundef %23, i8* noundef %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.264, i64 0, i64 0)) #19
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.265, i64 0, i64 0), %struct._IO_FILE* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.266, i64 0, i64 0)) #19
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.267, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.265, i64 0, i64 0), %struct._IO_FILE* noundef %35)
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
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.268, i64 0, i64 0)) #19
  %42 = load i8**, i8*** %11, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44)
  br label %241

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.269, i64 0, i64 0)) #19
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
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.270, i64 0, i64 0)) #19
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
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.271, i64 0, i64 0)) #19
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
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.272, i64 0, i64 0)) #19
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
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.273, i64 0, i64 0)) #19
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
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.274, i64 0, i64 0)) #19
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
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.275, i64 0, i64 0)) #19
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
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.276, i64 0, i64 0)) #19
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
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.277, i64 0, i64 0)) #19
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
  br label %12, !llvm.loop !68

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
  br label %12, !llvm.loop !69

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
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.265, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.282, i64 0, i64 0)) #19
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.283, i64 0, i64 0))
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.284, i64 0, i64 0)) #19
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.286, i64 0, i64 0))
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.287, i64 0, i64 0)) #19
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.288, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @can_write_any_file() #4 {
  %1 = alloca i8, align 1
  %2 = load i8, i8* @can_write_any_file.initialized, align 1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  %5 = call i32 @geteuid() #19
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %1, align 1
  %8 = load i8, i8* %1, align 1
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i8
  store i8 %10, i8* @can_write_any_file.can_write, align 1
  store i8 1, i8* @can_write_any_file.initialized, align 1
  br label %11

11:                                               ; preds = %4, %0
  %12 = load i8, i8* @can_write_any_file.can_write, align 1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 {
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
  call void @xalloc_die() #23
  unreachable

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #19
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @imalloc(i64 noundef %3)
  %5 = call i8* @check_nonnull(i8* noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #17 {
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
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #17 {
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
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15 {
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
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #18 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #18 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27
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
  call void @xalloc_die() #23
  unreachable

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27
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
  call void @xalloc_die() #23
  unreachable

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8
  %258 = load i64, i64* %13, align 8
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25
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
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #18 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19
  %8 = call i8* @check_nonnull(i8* noundef %7)
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #18 {
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
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #17 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false)
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #17 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26
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
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26
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
  %5 = call i64 @strlen(i8* noundef %4) #21
  %6 = add i64 %5, 1
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25
  ret i8* %7
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, i32* @exit_failure, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.301, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.302, i64 0, i64 0)) #19
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.303, i64 0, i64 0), i8* noundef %4)
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
  call void @abort() #20
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.FTS* @xfts_open(i8** noundef nonnull %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) #4 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct._ftsent**, %struct._ftsent**)*, align 8
  %7 = alloca %struct.FTS*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %6, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, 512
  %11 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %6, align 8
  %12 = call %struct.FTS* @rpl_fts_open(i8** noundef %8, i32 noundef %10, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %11) #19
  store %struct.FTS* %12, %struct.FTS** %7, align 8
  %13 = load %struct.FTS*, %struct.FTS** %7, align 8
  %14 = icmp eq %struct.FTS* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = call i32* @__errno_location() #22
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 22
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %21

20:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.306, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.307, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #20
  unreachable

21:                                               ; preds = %19
  call void @xalloc_die() #23
  unreachable

22:                                               ; preds = %3
  %23 = load %struct.FTS*, %struct.FTS** %7, align 8
  ret %struct.FTS* %23
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i1 @cycle_warning_required(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %1) #9 {
  %3 = alloca %struct.FTS*, align 8
  %4 = alloca %struct._ftsent*, align 8
  store %struct.FTS* %0, %struct.FTS** %3, align 8
  store %struct._ftsent* %1, %struct._ftsent** %4, align 8
  %5 = load %struct.FTS*, %struct.FTS** %3, align 8
  %6 = getelementptr inbounds %struct.FTS, %struct.FTS* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.FTS*, %struct.FTS** %3, align 8
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %10, %2
  %17 = load %struct.FTS*, %struct.FTS** %3, align 8
  %18 = getelementptr inbounds %struct.FTS, %struct.FTS* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.FTS*, %struct.FTS** %3, align 8
  %24 = getelementptr inbounds %struct.FTS, %struct.FTS* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %30 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %29, i32 0, i32 12
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %22, %16
  %34 = phi i1 [ false, %22 ], [ false, %16 ], [ %32, %28 ]
  br label %35

35:                                               ; preds = %33, %10
  %36 = phi i1 [ true, %10 ], [ %34, %33 ]
  ret i1 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @yesno() #4 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* null, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %6 = call i64 @getline(i8** noundef %2, i64* noundef %3, %struct._IO_FILE* noundef %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  br label %28

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %18, %10
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @rpmatch(i8* noundef %24) #19
  %26 = icmp slt i32 0, %25
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %1, align 1
  br label %28

28:                                               ; preds = %23, %9
  %29 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %29) #19
  %30 = load i8, i8* %1, align 1
  %31 = trunc i8 %30 to i1
  ret i1 %31
}

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @rpmatch(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rotl64(i64 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 64, %10
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %9, %12
  %14 = or i64 %8, %13
  %15 = and i64 %14, -1
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rotr64(i64 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = lshr i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 64, %10
  %12 = zext i32 %11 to i64
  %13 = shl i64 %9, %12
  %14 = or i64 %8, %13
  %15 = and i64 %14, -1
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rotl32(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 32, %9
  %11 = lshr i32 %8, %10
  %12 = or i32 %7, %11
  %13 = and i32 %12, -1
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rotr32(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = lshr i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 32, %9
  %11 = shl i32 %8, %10
  %12 = or i32 %7, %11
  %13 = and i32 %12, -1
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rotl_sz(i64 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 64, %11
  %13 = lshr i64 %9, %12
  %14 = or i64 %8, %13
  %15 = and i64 %14, -1
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rotr_sz(i64 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = lshr i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 64, %11
  %13 = shl i64 %9, %12
  %14 = or i64 %8, %13
  %15 = and i64 %14, -1
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @rotl16(i16 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %6, %7
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 16, %11
  %13 = lshr i32 %10, %12
  %14 = or i32 %8, %13
  %15 = and i32 %14, 65535
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @rotr16(i16 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %6, %7
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 16, %11
  %13 = shl i32 %10, %12
  %14 = or i32 %8, %13
  %15 = and i32 %14, 65535
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8 @rotl8(i8 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 %6, %7
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 8, %11
  %13 = lshr i32 %10, %12
  %14 = or i32 %8, %13
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8 @rotr8(i8 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %6, %7
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 8, %11
  %13 = shl i32 %10, %12
  %14 = or i32 %8, %13
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @c_file_type(%struct.stat* noundef %0) #9 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  %4 = load %struct.stat*, %struct.stat** %3, align 8
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 32768
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.stat*, %struct.stat** %3, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.314, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.315, i64 0, i64 0)
  store i8* %15, i8** %2, align 8
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.stat*, %struct.stat** %3, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 16384
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.316, i64 0, i64 0), i8** %2, align 8
  br label %89

23:                                               ; preds = %16
  %24 = load %struct.stat*, %struct.stat** %3, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 61440
  %28 = icmp eq i32 %27, 40960
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.317, i64 0, i64 0), i8** %2, align 8
  br label %89

30:                                               ; preds = %23
  %31 = load %struct.stat*, %struct.stat** %3, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.stat*, %struct.stat** %3, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.318, i64 0, i64 0), i8** %2, align 8
  br label %89

40:                                               ; preds = %30
  %41 = load %struct.stat*, %struct.stat** %3, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.stat*, %struct.stat** %3, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.319, i64 0, i64 0), i8** %2, align 8
  br label %89

50:                                               ; preds = %40
  %51 = load %struct.stat*, %struct.stat** %3, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.stat*, %struct.stat** %3, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.320, i64 0, i64 0), i8** %2, align 8
  br label %89

60:                                               ; preds = %50
  %61 = load %struct.stat*, %struct.stat** %3, align 8
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 61440
  %65 = icmp eq i32 %64, 24576
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7.321, i64 0, i64 0), i8** %2, align 8
  br label %89

67:                                               ; preds = %60
  %68 = load %struct.stat*, %struct.stat** %3, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 61440
  %72 = icmp eq i32 %71, 8192
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.322, i64 0, i64 0), i8** %2, align 8
  br label %89

74:                                               ; preds = %67
  %75 = load %struct.stat*, %struct.stat** %3, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 61440
  %79 = icmp eq i32 %78, 4096
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.323, i64 0, i64 0), i8** %2, align 8
  br label %89

81:                                               ; preds = %74
  %82 = load %struct.stat*, %struct.stat** %3, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 61440
  %86 = icmp eq i32 %85, 49152
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.324, i64 0, i64 0), i8** %2, align 8
  br label %89

88:                                               ; preds = %81
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11.325, i64 0, i64 0), i8** %2, align 8
  br label %89

89:                                               ; preds = %88, %87, %80, %73, %66, %59, %49, %39, %29, %22, %9
  %90 = load i8*, i8** %2, align 8
  ret i8* %90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @iswprint(i32 noundef %3) #19
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
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19
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
  %28 = call i32* @__errno_location() #22
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22
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
define dso_local void @cycle_check_init(%struct.cycle_check_state* noundef %0) #4 {
  %2 = alloca %struct.cycle_check_state*, align 8
  store %struct.cycle_check_state* %0, %struct.cycle_check_state** %2, align 8
  %3 = load %struct.cycle_check_state*, %struct.cycle_check_state** %2, align 8
  %4 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.cycle_check_state*, %struct.cycle_check_state** %2, align 8
  %6 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %5, i32 0, i32 2
  store i32 9827862, i32* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @cycle_check(%struct.cycle_check_state* noundef %0, %struct.stat* noundef %1) #4 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.cycle_check_state*, align 8
  %5 = alloca %struct.stat*, align 8
  store %struct.cycle_check_state* %0, %struct.cycle_check_state** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %6 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %7 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 9827862
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.334, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.335, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #20
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %14 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.stat*, %struct.stat** %5, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %22 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = xor i64 %20, %24
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %30 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = xor i64 %28, %32
  %34 = or i64 %25, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %17
  store i1 true, i1* %3, align 1
  br label %63

37:                                               ; preds = %17, %12
  %38 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %39 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = call i1 @is_zero_or_power_of_two(i64 noundef %41)
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %45 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i1 true, i1* %3, align 1
  br label %63

49:                                               ; preds = %43
  %50 = load %struct.stat*, %struct.stat** %5, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %54 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %struct.stat*, %struct.stat** %5, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cycle_check_state*, %struct.cycle_check_state** %4, align 8
  %60 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %49, %37
  store i1 false, i1* %3, align 1
  br label %63

63:                                               ; preds = %62, %48, %36
  %64 = load i1, i1* %3, align 1
  ret i1 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @is_zero_or_power_of_two(i64 noundef %0) #4 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = sub i64 %4, 1
  %6 = and i64 %3, %5
  %7 = icmp eq i64 %6, 0
  ret i1 %7
}

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
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19
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
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22
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
  %37 = call i32* @__errno_location() #22
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

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.va_start(i8* %11)
  store i32 -1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %59 [
    i32 0, label %13
    i32 1030, label %36
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = add i32 %15, 8
  store i32 %18, i32* %14, align 8
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 %15
  %24 = bitcast i8* %23 to i32*
  br label %30

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 8
  store i8* %28, i8** %26, align 8
  %29 = bitcast i8* %27 to i32*
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32* [ %24, %20 ], [ %29, %25 ]
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @rpl_fcntl_DUPFD(i32 noundef %33, i32 noundef %34)
  store i32 %35, i32* %6, align 4
  br label %114

36:                                               ; preds = %2
  %37 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = add i32 %38, 8
  store i32 %41, i32* %37, align 8
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 %38
  %47 = bitcast i8* %46 to i32*
  br label %53

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  store i8* %51, i8** %49, align 8
  %52 = bitcast i8* %50 to i32*
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32* [ %47, %43 ], [ %52, %48 ]
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %56, i32 noundef %57)
  store i32 %58, i32* %6, align 4
  br label %114

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  switch i32 %60, label %89 [
    i32 1, label %61
    i32 3, label %61
    i32 1025, label %61
    i32 9, label %61
    i32 1032, label %61
    i32 1034, label %61
    i32 11, label %61
    i32 1033, label %65
    i32 0, label %65
    i32 1030, label %65
    i32 1026, label %65
    i32 2, label %65
    i32 4, label %65
    i32 1024, label %65
    i32 8, label %65
    i32 1031, label %65
    i32 10, label %65
  ]

61:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i32, i32, ...) @fcntl(i32 noundef %62, i32 noundef %63)
  store i32 %64, i32* %6, align 4
  br label %113

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  %66 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = add i32 %67, 8
  store i32 %70, i32* %66, align 8
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 %67
  %76 = bitcast i8* %75 to i32*
  br label %82

77:                                               ; preds = %69, %65
  %78 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  store i8* %80, i8** %78, align 8
  %81 = bitcast i8* %79 to i32*
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i32* [ %76, %72 ], [ %81, %77 ]
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i32, ...) @fcntl(i32 noundef %85, i32 noundef %86, i32 noundef %87)
  store i32 %88, i32* %6, align 4
  br label %113

89:                                               ; preds = %59
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = add i32 %91, 8
  store i32 %94, i32* %90, align 8
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 %91
  %100 = bitcast i8* %99 to i8**
  br label %106

101:                                              ; preds = %93, %89
  %102 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %5, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 8
  store i8* %104, i8** %102, align 8
  %105 = bitcast i8* %103 to i8**
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i8** [ %100, %96 ], [ %105, %101 ]
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %10, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (i32, i32, ...) @fcntl(i32 noundef %109, i32 noundef %110, i8* noundef %111)
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %82, %61
  br label %114

114:                                              ; preds = %113, %53, %30
  %115 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.va_end(i8* %115)
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i32, i32, ...) @fcntl(i32 noundef %6, i32 noundef 0, i32 noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %9 = icmp sle i32 0, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i32, i32, ...) @fcntl(i32 noundef %11, i32 noundef 1030, i32 noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 0, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #22
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 22
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %10
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rpl_fcntl_DUPFD(i32 noundef %22, i32 noundef %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  br label %34

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rpl_fcntl_DUPFD(i32 noundef %31, i32 noundef %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 0, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, i32, ...) @fcntl(i32 noundef %41, i32 noundef 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, 1
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %46, i32 noundef 2, i32 noundef %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %45, %40
  %52 = call i32* @__errno_location() #22
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @close(i32 noundef %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32* @__errno_location() #22
  store i32 %56, i32* %57, align 4
  store i32 -1, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %37, %34
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_safer(i8* noundef %0, i32 noundef %1, ...) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.std::__va_list", align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 64
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = add i32 %13, 8
  store i32 %16, i32* %12, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 %13
  %22 = bitcast i8* %21 to i32*
  br label %28

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %6, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  store i8* %26, i8** %24, align 8
  %27 = bitcast i8* %25 to i32*
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i32* [ %22, %18 ], [ %27, %23 ]
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.va_end(i8* %31)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, i32, ...) @open(i8* noundef %33, i32 noundef %34, i32 noundef %35)
  %37 = call i32 @fd_safer(i32 noundef %36)
  ret i32 %37
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 {
  %1 = call i32* @__errno_location() #22
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
  %7 = call noalias i8* @malloc(i64 noundef %6) #19
  br label %10

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24
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
  %12 = call i8* @_gl_alloc_nomem() #24
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
  %12 = call i8* @_gl_alloc_nomem() #24
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
  %21 = call i8* @_gl_alloc_nomem() #24
  store i8* %21, i8** %3, align 8
  br label %27

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19
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
  %18 = call i8* @_gl_alloc_nomem() #24
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.352, i64 0, i64 0), i8** %7, align 8
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
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, -3
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21
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
  call void @abort() #20
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
define dso_local i32 @dup_safer(i32 noundef %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %3, i32 noundef 0, i32 noundef 3)
  ret i32 %4
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
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.359, i64 0, i64 0))
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.360, i64 0, i64 0))
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
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19
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
  %23 = call i64 @strlen(i8* noundef %22) #21
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
attributes #14 = { noinline nounwind optnone readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noinline nounwind optnone uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noinline nounwind optnone uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noinline nounwind optnone uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noinline nounwind optnone uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
